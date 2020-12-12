# install_asterisk13_on_centos7
Spend 10 minutes for your tea and you will have vanilla Asterisk 13 + CDRViewer.

# Hot to run it
ansible-playbook -i hosts deploy_aster.yaml

# How to change host
All config settings You have to change in files in project's directory:
1) hosts
2) deploy_aster.yaml

host:
- [example.com] - change to your local hostname, for example  asterisk.home.kz
- ansible_host - change to ip address or real DNS name, which resolves from server with your Ansible.
- ansible_port - available ssh port 

deploy_aster.yaml:
- mysql_root_password: "Mysql_Pa$$w0rd" - change password to your real, what you Do want.
- mysql_asterisk_password: "Asterisk_Pa$$w0rd" - change password for Asterisk, for access to write CDR.

# P.S.
All Asterisk-13 packages have been installed from my repository, so you can change it in 
- '89.218.71.190 repo.575111.kz', just change address and all is OK, if you have the same names of packages in your own repository.
