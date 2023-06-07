pipeline {
        agent any
        stages {
            stage('Gitsync_TEST_2') {
                steps {
                    script {
                            build job: 'Gitsync_TEST_2'
                        }
                    }
               }  
            stage('Gitsync_TEST_2.1') {
                steps {
                    script {
                            build job: 'Gitsync_TEST_2.1'
                        }
                    }
               }    
            }
       }
