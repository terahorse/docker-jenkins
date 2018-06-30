# Docker Image for Maintenance Page
## What is this
Sometimes you just need a generic maintenance message while you are replacing one Docker image with another.
Or you just want to **undeploy** a docker from AWS Elastic Beanstalk and this seems to be not possible.

To solve this kind of problem we created a generic Docker Maintenance page.

## How to use it
### To test locally
* Install Docker
* Run `$  sudo docker run -p 80:5000 terahorse/maintenance` 
* Access http://localhost
* If you want to customize the message just add `-e` parameter, like this:
  * `$ docker run -p 80:5000 -e MESSAGE="My custom maintenance message" terahorse/maintenance`

### To deploy on AWS using Elasic Beanstalk
* Just copy the file `Dockerrun.aws.json` to your repository and run `eb cli` tool.


