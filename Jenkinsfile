node('centos6') {
    git credentialsId: 'fbf00a52-dccb-4100-a4c9-b895a163a960', url: 'git@bitbucket.org:rb-training/laver.git'
    stage('build') {
        sh 'make build'
        archiveArtifacts 'output.json'
        sh 'rm output.json'
    }
    stage('check'){
        sh 'make check'  
    }
    stage('test'){
        unarchiveArtifacts 'output.json'
        sh 'make test'
    }
}

