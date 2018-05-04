Pre-conditions
 - ensure you can connect to the kubernetes cascade1 clusters
 > k get nodes

Build the docker instance

> cd <SEED REPO HOME>/BlackCascade/dockerfiles
> docker build -t karate_docker .

Run the docker instance

> docker run -it --mount type=bind,source=<SEED REPO HOME>/BlackCascade/tests,target=/usr/src/app  karate_docker


Check the Test Results in your Browser

file://<SEED REPO HOME>/BlackCascade/tests/target/surefire-reports/TEST-demo.features.call.html#test_1


Notes
-----

1) you can log into the docker instance by appending /bin/bash to the "docker run" command above, you should be able to run the test manually by ....
