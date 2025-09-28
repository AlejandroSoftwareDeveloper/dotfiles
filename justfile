# Muestra la lista de comandos
default:
   just --list

# Ajusta el volumen segun el nivel deseado
[linux]
vol level:
   @pactl set-sink-volume 0 {{ level }}% 

# Adiciona los archivos locales 
[linux]
sdot:
   stow --adopt .

# Inicializar los submodulos de mi configuracion de vim
# subinit: 
[linux]
st:
    @git status

# Adicion de submodulos
[linux]
gasm httproute pcroute: 
    git submodule add {{ httproute }} {{ pcroute }}

# Inicializa los submodulos
[linux]
fetch-packs:
	git submodule init
	git submodule update

# Make update-packs :: updates the plugins
[linux]
update-packs:
	git submodule update --remote

# Limpia la cache del sistema operativo
[linux]
clean-cache:
	rm -rf ~/.cache/

# Inicializa el servicio de postgresql
[linux]
start-postgresql:
	@sudo systemctl start postgresql.service

# Habilita el servicio de postgresql
[linux]
enable-postgresql:
	@sudo systemctl enable postgresql.service

# Muestra el estado del servicio de postgresql
[linux]
status-postgresql:
	@sudo systemctl status postgresql.service

# Detiene el servicio de postgresql
[linux]
stop-postgresql:
	@sudo systemctl stop postgresql.service


# Lista los paquetes a instalar en el sistema operativo al instalar la  distro
[linux]
untar file:
	@tar -xvf {{file}}

# Lista los paquetes a instalar en el sistema operativo al instalar la  distro
# [linux]
# pack-list:
# 	@echo "-- Package 1"
# 	@echo "-- Package 3"
# 	@echo "-- Package 4"
# 	@echo "-- Package 5"

# Comando para inicializar el reparador de disco de gnome
[linux]
gd:
	@sudo gnome-disks

# Limpia la cache de npm 
[linux]
clean-npm:
	rm -rf ~/.npm/

