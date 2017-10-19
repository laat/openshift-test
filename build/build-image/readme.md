# Build Image

Create a build:
```
oc new-build --context-dir="build/build-image" jenkins:2~https://github.com/laat/openshift-test.git --name=laat-jenkins
```