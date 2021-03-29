![laravel-iac](./github/img/laravel-iac.png)

____

### Prerequisites

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu)
- Digital Ocean configuration:
  - [Personal Access Token](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/)
  - [SSH key](https://www.digitalocean.com/docs/droplets/how-to/add-ssh-keys/to-account/)

### Usage

- After the install and configure the prerequisites, just give the *builder* script execution permission:

```bash
$ chmod +x builder 
```

- Create a `.env` based on .env.example file and fulfill the variables with the right value

- Run the command to up the infrastructure:

```bash
$ ./builder up
```
