default:
   just --list

# Ajusta el volumen segun el nivel deseado
vol level:
   @pactl set-sink-volume 0 {{ level }}% 

# Adiciona los archivos locales 
sdot:
   stow --adopt .

# Agrega al archivos al local ignore de stow (ejemplo)
#add-tl:
#    echo "justfile"  >> .stow-local-ignore
#    echo "wezterm" >> .stow-local-ignore
#    echo "tags" >> .stow-local-ignore

# Genera los dotfiles
# stow-all: sdot
#    stow --adopt .config



