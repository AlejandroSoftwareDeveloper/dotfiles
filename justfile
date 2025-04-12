default:
   just --list

# Ajusta el volumen segun el nivel deseado
vol level:
   @pactl set-sink-volume 0 {{ level }}% 

# Adiciona los archivos locales 
sdot:
   stow --adopt .

# Inicializar los submodulos de mi configuracion de vim
# subinit: 
st:
    @git status

# Adicion de submodulos
gasm httproute pcroute: 
    git submodules add {{ httproute }} {{ pcroute }}

# Inicializa los submodulos
fetch-packs:
	git submodule init
	git submodule update

## make update-packs :: updates the plugins
update-packs:
	git submodule update --remote
