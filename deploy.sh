# /bin/bash

##
# echo -e "\033[32m РАЗВОРАЧИВАЕМ ВИРТУШКУ ЯНДЕКС ОБЛАКЕ"
# tput sgr0

## Убираем всё из known_hosts, потому что не получилось сделать так,
## чтобы при выполнении ansible-playbook known_hosts не проверялся 
echo "" > ~/.ssh/known_hosts 

# ## Создаём инфраструктуру с помощью Terraform
# echo "[##    (1/3)] Создаём инфраструктуру с помощью Terraform... "
# cd terraform
# terraform apply --auto-approve > /dev/null
# sleep 60 

# ## Формируем inventory для ansible
# echo "[####  (2/3)] Формируем inventory для ansible..."
# terraform output -json > output.json 
# sleep 1 && 
# ./fill_temlates.sh 

## Создаём массив
# echo "[######(3/3)] Создаём массив..."
ansible-playbook ansible/playbooks/manage_lvm.yaml -i ansible/inventory/hosts -b  -v #> /dev/null