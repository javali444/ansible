# ansible

--SSH Password issue while running ansible playbook command in jenkins -
     check for the default path for the jenkins user using cat /etc/passwd | grep jenkins
     navigate ot the path using cd
     create a file - .ssh/config with the following content
          Host *
          UserKnownHostsFile /dev/null
          StrictHostKeyChecking no

