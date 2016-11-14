#menu.sh
#curl -O https://raw.githubusercontent.com/CrazeeIvan/aws_scripts/master/menu.sh
#written by Ciarán Maher 14th/November/2016
#simple menu for pulling and starting other startup scripts
clear
echo '############################################'
echo '##            CIARÁN'S SCRIPTS            ##'
echo '############################################'
echo '#  Select a script to download an execute  #'
echo '############################################'
PS3='Please enter your choice: '
options=("html" "vpn" "gradle" "docker" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "html")
            echo "you chose choice 1"
            curl -O https://raw.githubusercontent.com/CrazeeIvan/aws_scripts/master/html_startup.sh
            chmod 777 html_startup.sh
            ./html_startup.sh
            ;;
        "vpn")
            echo "you chose choice 2"
            curl -O https://raw.githubusercontent.com/CrazeeIvan/aws_scripts/master/vpn_startup.sh
            chmod 777 vpn_startup.sh
            ./vpn_startup.sh
            ;;
        "gradle")
            echo "you chose choice 3"
            curl -O https://raw.githubusercontent.com/CrazeeIvan/aws_scripts/master/gradle_startup.sh
            chmod 777 gradle_startup.sh
            ./gradle_startup.sh
            ;;
        "docker")
            echo "you chose choice 3"
            curl -O https://raw.githubusercontent.com/CrazeeIvan/aws_scripts/master/docker_startup.sh
            chmod 777 docker_startup.sh
            ./docker_startup.sh
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
