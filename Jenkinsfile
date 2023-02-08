pipeline {
        agent any
            stages {
                stage('Clone Repository') {
                /* Cloning the repository to our workspace */
                steps {
                checkout scm
                     git branch: 'main', url: 'https://github.com/kuruvasubhashini/Stock_Data_Fetcher.git'   
                }
           }
           stage('Build Image') {
                   steps { 
                           sh 'chmod +x app.py'
                sh 'docker build -t streamlit:v1 .'
                }
           }
           stage('Run Image') {
                steps {
                sh 'docker run -d -p 8000:8000 --name streamlitdemo1 streamlit:v1'
                }
           }
           stage('Testing'){
                steps {
                    echo 'Process Complete..'

                    }
           }
    }
}
