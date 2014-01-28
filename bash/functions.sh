# Liste un répertoire en entrant dedans
# cd() { 
#	if [ $1 ]; then builtin cd $1 && ls; 
#   else builtin cd $HOME;
#	fi;
# }

# Affiche la librairie ruby dans Textmate
# matr() { if [ $1 ]; then mate ~/.rvm/rubies/default/lib/ruby/1.8/$1.rb; fi; }

# Affiche la commande cheat dans TextMate
ccm() { if [ $1 ]; then cheat $1 | mate; fi; }

# Affiche la commande cheat search | grep dans TextMate
ccs() { if [ $1 ]; then cheat sheets | grep $1 | mate; fi; }
