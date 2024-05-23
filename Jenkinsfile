pipeline {
    agent{
        label "kubepods"
    }
    environment{
        LITMUS_DASHBOARD_ENDPOINT="http://192.168.58.4:31035"
        LITMUS_DASHBOARD_USER="jenkins"
        LITMUS_DASHBOARD_PASSWORD="jenkins"
        LITMUS_PROJECT_ID="bfe5d049-0ffc-4364-a134-168d6b935e30"
        LITMUS_CHAOS_DELEGATE_ID="6339d543-6d23-44f8-bca5-592e1bcfc924"
    }

    stages {
        stage('Prepare env') {
            steps{
                echo "Preparing env..."
                
                sh 'curl -O "https://raw.githubusercontent.com/AlvaroGG0/litmusChaos-jenkins-integration-dev/master/scripts/prepare_env.sh"'
                sh 'chmod +x ./prepare_env.sh'
                sh './prepare_env.sh "${LITMUS_DASHBOARD_ENDPOINT}" "${LITMUS_DASHBOARD_USER}" "${LITMUS_DASHBOARD_PASSWORD}"'
                
            }
        }
        stage('Deployment'){
            steps{
                withKubeConfig([credentialsId: 'mykubeconfig']) {
                    echo "Deploying nginx test..."
                    sh './kubectl apply -f https://k8s.io/examples/application/deployment.yaml'
                }
            }
        }
        
        stage('Chaos') {
            steps {
                withKubeConfig([credentialsId: 'mykubeconfig']) {
                    echo 'Injecting chaos..'
                    sh './litmusctl create chaos-scenario -f "./nginx-pod-delete-test.yaml" --project-id="${LITMUS_PROJECT_ID}" --chaos-delegate-id="${LITMUS_CHAOS_DELEGATE_ID}"'
                
                    sh './wait_chaos_finish.sh'
                }
            }
        }
    }
    
    post{
        cleanup{
            echo 'Cleaning up...'
            withKubeConfig([credentialsId: 'mykubeconfig']){
                sh './kubectl delete -f https://k8s.io/examples/application/deployment.yaml'
            }
        }
    }
}

