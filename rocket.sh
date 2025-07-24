frames=(
    "\n\n\n\n\n     |\n     |\n    / \\ \n   /___\\ \n   |   |  \n   |HELLO|  \n   |WORLD|  \n  /|___|\\ \n /_|___|_\\ \n"
    "\n\n\n\n     |\n     |\n    / \\ \n   /___\\ \n   |   |  \n   |HELLO|  \n   |WORLD|  \n  /|___|\\ \n /_|___|_\\ \n"
    "\n\n\n     |\n     |\n    / \\ \n   /___\\ \n   |   |  \n   |HELLO|  \n   |WORLD|  \n  /|___|\\ \n /_|___|_\\ \n"
    "\n\n     |\n     |\n    / \\ \n   /___\\ \n   |   |  \n   |HELLO|  \n   |WORLD|  \n  /|___|\\ \n /_|___|_\\ \n"
    "\n     |\n     |\n    / \\ \n   /___\\ \n   |   |  \n   |HELLO|  \n   |WORLD|  \n  /|___|\\ \n /_|___|_\\ \n"
    "     |\n     |\n    / \\ \n   /___\\ \n   |   |  \n   |HELLO|  \n   |WORLD|  \n  /|___|\\ \n /_|___|_\\ \n"
    "\n\n\n\n\n   BLAST OFF! 🚀\n"
    )

function clear_screen() {
clear
}

for frame in "${frames[@]}"
do
    clear_screen
    echo -e "$frame"
    sleep 0.5
clear_screen
done