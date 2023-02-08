pipeline {
        agent any
            stages {
                stage('Clone Repository') {
                /* Cloning the repository to our workspace */
                steps {
                checkout scm
                        
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
                sh 'docker run -d -p 8501:8501 --name streamlitdemo streamlit:v1'
                }
           }
           stage('Testing'){
                steps {
                    echo 'Process Complete..'

                    }
           }
    }
}
