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

## make update-packs :: updates the plugins
[linux]
update-packs:
	git submodule update --remote

## make update-packs :: updates the plugins
[linux]
clean-cache:
	rm -rf ~/.cache/
