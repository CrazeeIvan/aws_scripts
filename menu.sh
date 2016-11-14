#menu.sh
#curl -O https://raw.githubusercontent.com/CrazeeIvan/aws_scripts/master/menu.sh
#written by Ciarán Maher 14th/November/2016
#simple menu for pulling and starting other startup scripts

echo '############################################'
echo '##            CIARÁN'S SCRIPTS            ##'
echo '############################################'
echo '#  Select a script to download an execute  #'
echo '############################################'
PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "you chose choice 1"
            echo "test.test.test"
            sudo yum update -y
            ;;
        "Option 2")
            echo "you chose choice 2"
            sudo yum update -y
            ;;
        "Option 3")
            echo "you chose choice 3"
            curl -O https://raw.githubusercontent.com/CrazeeIvan/aws_scripts/master/html_startup.sh
            chmod 777 html_startup.sh
            ./html_startup.sh
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
