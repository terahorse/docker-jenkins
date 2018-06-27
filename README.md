# Docker Image for Maintenance Page
## Why ?
We need a workaround to deploy docker on AWS Elastic Beanstalk.
We are not able to deploy using AWS CLI tools. We receive this error:
`Error response from daemon: You cannot remove a running container`

Stackoverflow discussion:
https://stackoverflow.com/questions/50848662/how-can-i-stop-a-docker-container-in-aws-elastic-beanstalk

So the idea is to deploy image A(v1) → image B (maintenance page) → image A(v2)

## How ?
### To test locally
* Install Docker
* Run `$  sudo docker run -p 80:5000 --name test terahorse/maintenance` 
* Access http://localhost

### To deploy on AWS
* Just copy the file `Dockerrun.aws.json` to your repository and run eb cli tool.


