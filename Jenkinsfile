pipeline { 
    agent {
        dockerfile true
    }  
    stages { 
        stage('Prueba') { 
            steps {
               echo 'Empecemos con el pipeline' 
            }
        }
        stage('Test Application') { 
            steps {
               sh 'rails test' 
            }
        }
    }
}