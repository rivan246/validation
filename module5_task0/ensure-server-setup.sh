docker -H ssh://ubuntu@ec2-108-136-223-84.ap-southeast-3.compute.amazonaws.com info >/dev/null 2>&1 && echo OK || echo FAILED
docker context create production --docker host='ssh://ubuntu@ec2-108-136-223-84.ap-southeast-3.compute.amazonaws.com' >/dev/null 2>&1 && docker context use production >/dev/null 2>&1 && docker info >/dev/null 2>&1 && echo OK || echo FAILED
