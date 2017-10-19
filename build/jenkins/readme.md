# Jenkins for this project

Create a Jenkins S2I build with this GitHub repository:
```
oc new-build --context-dir="build/jenkins" jenkins:2~https://github.com/laat/openshift-test.git --name=laat-jenkins
```

Then you can deploy the Jenkins templates with the customized image:

```
oc new-app jenkins-ephemeral \
    -p NAMESPACE=$(oc project -q)\
    -p JENKINS_IMAGE_STREAM_TAG=laat-jenkins:latest \
    -p MEMORY_LIMIT=2Gi
```