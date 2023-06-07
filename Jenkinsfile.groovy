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
            stage('Gitsync_Script1') {
                steps {
                    script {
                            build job: 'Gitsync_Script1'
                        }
                    }
               }  
            stage('Gitsync_Script1.1') {
                steps {
                    script {
                            build job: 'Gitsync_Script1.1'
                        }
                    }
               }    
            }
       }
