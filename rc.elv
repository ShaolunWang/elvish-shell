eval (carapace _carapace|slurp)
eval (zoxide init elvish | slurp)
use readline-binding

set edit:rprompt = (constantly (styled ""))
set edit:prompt = {
 styled "└─[" green;
 styled (tilde-abbr $pwd) white;
 styled "]▷ " green;
}

edit:add-var source~ {|@_args|  eval (slurp < $@_args)  }
edit:add-var clear~ { edit:clear } # this is for windows
edit:add-var ls~ {|@_args| eza $@_args }


set E:EDITOR = "nvim"
