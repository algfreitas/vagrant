### Vagrant ###

Site do projeto:
https://www.vagrantup.com/

Vagrant cloud:
https://app.vagrantup.com/boxes/search


# Instalação Vagrant (Debian):
$ sudo apt-get install vagrant

# Para utilização do provider VB, instalar virtual box.

# Teste:
$ vagrant -v

# Projeto simples (Ubuntu Focal - 20.04 LTS).
$ mkdir projeto
$ cd projeto

$ vagrant init ubuntu/focal64

# Acesso por SSH.
$ vagrant ssh

# Para utilizar os exemplos do repositório:

Criar diretorio do projeto

$ mkdir -p projeto_dir

$ cd projeto_dir

$ cp Vagrantfile projeto_dir

$ vagrant up

# Comandos basicos:

$ vagrant init: Este comando cria o arquivo Vagrantfile na pasta em que o comando foi executado.

$ vagrant up: Este comando inicia a máquina virtual e instala todas as dependências configuradas no Vagrantfile. 

Quando este comando é executado a primeira vez, a box é baixada, a máquina virtual é instalada e todas as dependências configuradas são instaladas. 

Nas execuções seguintes de vagrant up, apenas as novas dependências são instaladas.

$ vagrant suspend: Este comando suspende a execução da máquina virtual, liberando memória. É como se desligasse a VM, mas mantendo o estado da máquina.

$ vagrant resume: Este comando restaura a execução de uma VM suspensa.

$ vagrant halt: Este comando desliga a VM.

$ vagrant reload: Este comando reinicia a VM e reavalia o Vagrantfile para instalação de novas dependências. É o mesmo que vagrant halt + vagrant up.

$ vagrant ssh: Este comando faz uma conexão via ssh com a máquina virtual. Funciona nativamente no Linux.

$ vagrant destroy: Este comando remove a vm do seu computador. Ou seja, quando você executar vagrant up novamente a VM será instalada do zero novamente.

$ vagrant provision: Força a execução dos scripts.

# Obs:

Copia de arquivos entre VM e host: 
$ cp nginx.conf /vagrant/conf.d/

Executar o comando: vagrant plugin install vagrant-vbguest, para erro: mount VirtualBox shared folders 

#### Criação do projeto python:
$ cd /home/vagrant/python_project

$ virtualenv nome_do_projeto

$ source nome_do_projeto/bin/activate

Intalar pacotes:
$ pip install django


