<div align="center">
	<img  width="600" height="350" src="./.github/img/laravel-iac.png" alt="Awesome Beer & Code">
</div>
____

This repository uses Terraform to provisioning resources and Ansible to configure the instances in the Digital Ocean cloud. These techs combined allow me to versioning my host infrstructure and build a server fully configured for Laravel apps with just a couple of terminal commands and no manual installations (after the prerequisites step). The repo also allows me to create multiple using the same command.

### Prerequisites
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu)
- Digital Ocean configuration:
  - [Personal Access Token](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/)
  - [SSH key](https://www.digitalocean.com/docs/droplets/how-to/add-ssh-keys/to-account/)

### Usage

#### Prepare the configuration
- After the install and configure the prerequisites, just give the *builder* script execution permission:
```bash
$ chmod +x builder 
```
- Create a `.env` based on .env.example file and fulfill the variables with the right value

#### View the plan
- To see the steps that terraform+ansible will follow to built the server, run the command:
```bash
$ ./builder plan
```

#### Build the server/servers
- Run the command to up the infrastructure + server:
```bash
$ ./builder up
```

#### Undo the infrastructure
- To undo the built infrastructure, simply run the command:
```bash
$ ./builder down
```
