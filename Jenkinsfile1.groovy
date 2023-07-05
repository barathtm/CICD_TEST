pipeline {
        agent any
        stages {
            stage('Gitsync_dsnames') {
                steps {
                    script {
                            build job: 'Gitsync_dsnames'
                        }
                    }
               }  
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
