eval (carapace _carapace|slurp)
eval (zoxide init elvish | slurp)
use readline-binding

set edit:rprompt = (constantly (styled ""))
set edit:prompt = {
#	tilde-abbr $pwd
 styled "└─[" green;
# styled (whoami) green;
# styled "@" ;
# styled (hostname) cyan;
 styled (tilde-abbr $pwd) white;
 styled "]▷ " green;
}

edit:add-var source~ {|@_args|  eval (slurp < $@_args)  }
edit:add-var clear~ {|@_arg| edit:clear  }
