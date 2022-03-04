echo "Bash_Profile is Working // bashpro"

alias bashpro="subl .bash_profile"
alias sublime="subl; cd sublime_exe"
alias gkill="ps -ax | grep guake"

kil(){
  kill -9 $1;
}

comp(){
  g++ -std=c++17 -O2 -Wall -Wextra -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -Wno-unused-result -Wno-sign-conversion -o "${1%.*}" $1;
}

run(){
	comp $1 && ./${1%.*} & fg; 
}

fullchk(){
 g++ -std=c++17 -O2 -Wall -Wextra -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -Wno-unused-result -Wno-sign-conversion -fsanitize=address -fsanitize=undefined -fsanitize=float-divide-by-zero -fsanitize=float-cast-overflow -fno-sanitize-recover=all -fstack-protector-all -D_FORTIFY_SOURCE=2 -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -o "${1%.*}" $1 && ./${1%.*};
  
}
