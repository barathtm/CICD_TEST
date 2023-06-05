pipeline {
        agent any
        stages {
            stage('Test_dsnames') {
                steps {
                    script {
                            build job: 'Test_dsnames'
                        }
                    }
               }  
            stage('Test_gitsync_3') {
                steps {
                    script {
                            build job: 'Test_gitsync_3'
                        }
                    }
               }  
            stage('Test_gitsync_3.1') {
                steps {
                    script {
                            build job: 'Test_gitsync_3.1'
                        }
                    }
               }    
            }
       }
