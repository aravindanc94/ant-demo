pipeline{
    agent {
        node 'dit'
    }
    
    stages{
        stage('Preflight check'){
            steps{
                echo 'Chceking Ant'
                sh 'docker -v'
                echo 'Chceking docker'
                sh 'git --version'
                echo 'Checking node'
                sh 'node -v'
                echo 'Deleting previous code'                
            }
        }
        stage('Git cloning repo makkpsss/express-sample'){
            steps{
                sh 'echo \'pulling repo!\''
                sh 'sudo git clone https://github.com/aravindanc94/ant-demo.git'
            }
        }
        stage('Building war file'){
            steps{
                sh 'sudo ant -f /home/dit-user/workspace/Ant_Project/ant-demo/'
            }
        }
        
        stage('Testing Build'){
            steps{
                echo 'Testing build'
            }
        }
        stage('Deploy&Cleaning Repo'){
            steps{
                sh 'sudo rm -rf ant-demo'
            }
        }
    }   
}
