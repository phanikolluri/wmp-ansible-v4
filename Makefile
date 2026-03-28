default:
	git pull
	ansible-playbook -i ${COMPONENT}-dev.mydevops88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321  -e COMPONENT=${COMPONENT} main.yml

database: postgresql

apps: frontend portfolio-service auth-service analytics-service

all: frontend postgresql  auth-service portfolio-service analytics-service

frontend:
	ansible-playbook -i frontend-dev.mydevops88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321  -e COMPONENT=frontend main.yml -e env=dev

portfolio-service:
	ansible-playbook -i postgresql-dev.mydevops88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321  -e COMPONENT=postgresql main.yml -e env=dev

auth-service:
	ansible-playbook -i auth-service-dev.mydevops88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321  -e COMPONENT=auth-service main.yml -e env=dev

analytics-service:
	ansible-playbook -i analytics-service-dev.mydevops88.online, -e ansible_user=ec2-user -e ansible_password=DevOps321  -e COMPONENT=analytics-service main.yml -e env=dev

		



