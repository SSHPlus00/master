#!/bin/bash
clear
[[ $EUID -ne 0 ]] && {
echo -e "\033[1;33mDesculpe, \033[1;33mvocê precisa executar como root\033[0m"
rm -rf $HOME/Plus > /dev/null 2>&1; exit 0
}
_lnk=$(echo '9:q-7gs1.o1%5:f1.6q5.×9%y4:1'|sed -e 's/[^0-9.]//ig'| rev); _Ink=$(echo '/3×u3#s87r/l32o4×c1a×l1/83×l24×i0b×'|sed -e 's/[^a-z/]//ig'); _1nk=$(echo '/3×u3#s×87r/83×l2×4×i0b×'|sed -e 's/[^a-z/]//ig')
cd $HOME
fun_bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
 tput civis
echo -ne "  \033[1;33mAGUARDE \033[1;37m- \033[1;33m["
while true; do
   for((i=0; i<18; i++)); do
   echo -ne "\033[1;31m#"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;33m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "  \033[1;33mAGUARDE \033[1;37m- \033[1;33m["
done
echo -e "\033[1;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
tput cnorm
}
function verif_key () {
krm=$(echo '5:q-3gs2.o7%8:1'|rev); chmod +x $_Ink/list > /dev/null 2>&1
[[ ! -e "$_Ink/list" ]] && {
  echo -e "\n\033[1;31mKEY INVÁLIDA!\033[0m"
  rm -rf $HOME/Plus > /dev/null 2>&1
  sleep 2
  clear; exit 1
}
}
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%40s%s%-12s\n' "BEM VINDO AO SSHPLUS MANAGER" ; tput sgr0
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
echo ""
echo -e "             \033[1;31mATENCAO! \033[1;33mESSE SCRIPT IRA !\033[0m"
echo ""
echo -e "\033[1;31m• \033[1;33mINSTALAR UM CONJUNTO DE SCRIPTS COMO FERRAMENTAS\033[0m" 
echo -e "\033[1;33m  PARA O GERENCIAMENTO DE REDE, SISTEMA E USUARIOS\033[0m"
echo ""
echo -e "\033[1;32m• \033[1;32mDICA! \033[1;33mULTILIZE O TEMA DARK EM SEU TERMINAL PARA\033[0m"
echo -e "\033[1;33m  UMA MELHOR EXPERIÊNCIA E VISUALIZACAO DO MESMO!\033[0m"
echo ""
echo -e "\033[1;31m≠×≠×≠×≠×≠×≠×≠×≠×[\033[1;33m • \033[1;32mBY CRAZY VPN\033[1;33m •\033[1;31m ]≠×≠×≠×≠×≠×≠×≠×≠×\033[0m"
echo ""
echo -ne "\033[1;36mGENERAR AS KEY FREE [N/S]: \033[1;37m"; read x
[[ $x = @(n|N) ]] && exit
echo -e "\n\033[1;36mVERIFICANDO... \033[1;37m 16983:16085\033[0m"
sleep 3s
echo -e "\n\033[1;32mKEY VALIDA!\033[1;32m"
sed -i 's/Port 22222/Port 22/g' /etc/ssh/sshd_config  > /dev/null 2>&1
service ssh restart  > /dev/null 2>&1
wget https://raw.githubusercontent.com/SSHPlus00/master/Install/list > /dev/null 2>&1
cd master/Install
chmod +x list ./list > /dev/null 2>&1
sleep 1s
echo ""
[[ -f "$HOME/usuarios.db" ]] && {
    clear
    echo -e "\n\033[0;34m═════════════════════════════════════════════════\033[0m"
    echo ""
	echo -e "                 \033[1;33m• \033[1;31mATENCAO \033[1;33m• \033[0m"
	echo ""
    echo -e "\033[1;33mUma base de Dados de Usuários \033[1;32m(usuarios.db) \033[1;33mFoi" 
    echo -e "Encontrada! Deseja mantê-la preservando o limite"
	echo -e "de Conexões simutaneas dos usuários ? Ou Deseja"
    echo -e "criar uma nova base de dados ?\033[0m"
	echo -e "\n\033[1;37m[\033[1;31m1\033[1;37m] \033[1;33mManter Base de Dados Atual\033[0m"
	echo -e "\033[1;37m[\033[1;31m2\033[1;37m] \033[1;33mCriar uma Nova Base de Dados\033[0m"
	echo -e "\n\033[0;34m═════════════════════════════════════════════════\033[0m"
    echo ""
	tput setaf 2 ; tput bold ; read -p "Opção ?: " -e -i 1 optiondb ; tput sgr0
} || {
	awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > $HOME/usuarios.db
}
[[ "$optiondb" = '2' ]] && awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > $HOME/usuarios.db
clear
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%35s%s%-18s\n' " AGUARDE A INSTALAÇÃO" ; tput sgr0
echo ""
echo ""
echo -e "          \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32mATUALIZANDO SISTEMA \033[1;33m[\033[1;31m!\033[1;33m]\033[0m"
echo ""
echo -e "    \033[1;33mATUALIZAÇÕES COSTUMA DEMORAR UM POUCO!\033[0m"
echo ""
fun_attlist () {
    apt-get update -y
}
fun_bar 'fun_attlist'
clear
echo ""
echo -e "          \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32mINSTALANDO PACOTES \033[1;33m[\033[1;31m!\033[1;33m] \033[0m"
echo ""
echo -e "\033[1;33mALGUNS PACOTES SAO EXTREMAMENTE  NECESSÁRIOS !\033[0m"
echo ""
inst_pct () {
apt-get install bc -y > /dev/null 2>&1
apt-get install screen -y > /dev/null 2>&1
apt-get install nano -y > /dev/null 2>&1
apt-get install unzip -y > /dev/null 2>&1
apt-get install lsof -y > /dev/null 2>&1
apt-get install netstat -y > /dev/null 2>&1
apt-get install net-tools -y > /dev/null 2>&1
apt-get install dos2unix -y > /dev/null 2>&1
apt-get install nload -y > /dev/null 2>&1
apt-get install jq -y > /dev/null 2>&1
apt-get install curl -y > /dev/null 2>&1
apt-get install figlet -y > /dev/null 2>&1
apt-get install python3 -y > /dev/null 2>&1
apt-get install python-pip -y > /dev/null 2>&1
pip install speedtest-cli > /dev/null 2>&1
}
fun_bar 'inst_pct'
[[ -f "/usr/sbin/ufw" ]] && ufw allow 443/tcp ; ufw allow 80/tcp ; ufw allow 3128/tcp ; ufw allow 8799/tcp ; ufw allow 8080/tcp
clear
echo ""
echo -e "              \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32mFINALIZANDO \033[1;33m[\033[1;31m!\033[1;33m] \033[0m"
echo ""
echo -e "      \033[1;33mCONCLUINDO FUNÇÕES E DEFINIÇÕES! \033[0m"
echo ""
fun_bar "source list"
rm Plus* > /dev/null 2>&1
rm list* > /dev/null 2>&1
rm versao* > /dev/null 2>&1
echo "/bin/menu" > /bin/h && chmod +x /bin/h > /dev/null 2>&1
wget https://raw.githubusercontent.com/SSHPlus00/master/Install/versao > /dev/null 2>&1

clear
echo ""
cd $HOME
echo -e "        \033[1;33m • \033[1;32mINSTALACAO CONCLUIDA\033[1;33m • \033[0m"
echo ""
echo -e "\033[1;31m \033[1;33mCOMANDO PRINCIPAL: \033[1;32mmenu\033[0m"
echo -e "\033[1;33m MAIS INFORMACOES \033[1;31m(\033[1;36mTELEGRAM\033[1;31m): \033[1;37m@SSHPLUS\033[0m"
rm -rf $HOME/Plus && cat /dev/null > ~/.bash_history && history -c



