pipeline { 
    agent any 
    stages { 
        stage('Prueba') { 
            steps {
               echo 'Empecemos con el pipeline' 
            }
        }
        stage('Test Application') { 
            // agent {
            //     dockerfile true
            // }  
            steps {
               sh 'rails test' 
            }
        }
    }
}