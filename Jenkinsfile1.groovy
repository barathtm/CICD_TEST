pipeline {
        agent any
        stages {
            stage('Gitsync_Script2') {
                steps {
                    script {
                            build job: 'Gitsync_Script2'
                        }
                    }
               }  
            stage('Gitsync_Script2.1') {
                steps {
                    script {
                            build job: 'Gitsync_Script2.1'
                        }
                    }
               }    
            }
       }
