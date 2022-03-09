#!/bin/bash

DATE=`date +%m.%d.%Y`
#rsync -avz ec2-user@15.207.32.135:/home/script/*.sh /home/bhasker/Desktop/script_$DATE
echo "######################################### WIND-SOLAR scripts download #########################################"

echo "##################WIND3 script download##########################"
rsync -avz root@205.147.98.133:/root/script/* /DATA/Server_Config-Project_Name/WIND-SOLAR/WIND3/script/script_`date +%m.%d.%Y`/
cd /DATA/Server_Config-Project_Name/WIND-SOLAR/WIND3/script/script_`date +%m.%d.%Y`/
chown specs:root *
chmod 777 *


echo "##################WIND3 crontab download##########################"
rsync -avz root@205.147.98.133:/var/spool/cron/root  /DATA/Server_Config-Project_Name/WIND-SOLAR/WIND3/crontab/crontab_`date +%m.%d.%Y`.txt
cd /DATA/Server_Config-Project_Name/WIND-SOLAR/WIND3/crontab/
chown specs:root *
chmod 777 *

echo "##################WIND3 passwd download##########################"
rsync -avz root@205.147.98.133:/etc/passwd  /DATA/Server_Config-Project_Name/WIND-SOLAR/WIND3/passwd/passwd_`date +%m.%d.%Y`.txt
cd /DATA/Server_Config-Project_Name/WIND-SOLAR/WIND3/passwd/
chown -R specs:root *
chmod  -R 777 *

echo "################## Wind-DB download##########################"
rsync -avz root@101.53.136.30:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/WIND_DB_30/script/script_$DATE

echo "################## Gamesa FTP download##########################"
rsync -avz root@101.53.139.233:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/GAMESA_FTP/script/script_$DATE

echo "################## NewRE_mongodb_Router##########################"
rsync -avz root@164.52.195.60:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/NewRE_mongodb_Router/script/script_$DATE

echo "################## NEWRE_MongoDb_Data-Node-1##########################"
rsync -avz root@164.52.195.5:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/NEWRE_MongoDb_Data-Node-1/script/script_$DATE

echo "################## MongoDb_Data-Node-2##########################"

rsync -avz root@164.52.195.20:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/MongoDb_Data-Node-2/script/script_$DATE

echo "################## NEWRE_KAFKA_C1##########################"
rsync -avz root@164.52.195.22:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/NEWRE_KAFKA_C1/script/script_$DATE

echo "################## NEWRE_Web_Service##########################"
rsync -avz root@164.52.195.25:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/NEWRE_Web_Service/script/script_$DATE

echo "################## NEWRE_Docker_1##########################"
rsync -avz root@164.52.195.49:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/NEWRE_Docker_1/script/script_$DATE

echo "################## NEWRE_Docker_2 ##########################"
rsync -avz root@164.52.195.52:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/NEWRE_Docker_2/script/script_$DATE

echo "################## NewRE_Logger ##########################"
rsync -avz root@164.52.195.63:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/NewRE_Logger/script/script_$DATE

echo "################## TEST1 ##########################"
rsync -avz root@172.16.0.65:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/TEST1/Script/script_$DATE

echo "################## TEST2 ##########################"
rsync -avz root@172.16.0.66:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/Test2/script/script_$DATE


echo "************************AWS FTP script download *************************************************************"
rsync -avz ec2-user@15.207.32.135:/home/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/AWSFTP/script_$DATE
echo "*********************** AWS-DB-Master Scripts ***************************************************************"
rsync -avz ec2-user@3.6.48.236:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/AWS-DB-Master/script_$DATE
echo "*********************** AWS POC Docker 1 *********************************************************************"
rsync -avz ec2-user@15.207.225.44:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/AWS_POC_Docker1/script_$DATE
echo "This is AWS POC Docker 2 "
rsync -avz ec2-user@65.0.153.125:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/AWS_POC_Docker2/script_$DATE
echo "This is AWS POC Docker 3 "
rsync -avz ec2-user@65.0.65.226:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/AWS_POC_Docker3/script_$DATE
echo "This is AWS-DB-Scada "
rsync -avz ec2-user@65.1.19.50:/root/script/*.sh /DATA/Server_Config-Project_Name/WIND-SOLAR/AWS-DB-Scada/script_$DATE

echo "############################# ASSET Script Download #####################################"

echo "############################ MonGo-DB-Config-Asset #######################################"
rsync -avz root@164.52.202.13:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MonGoDB_Config_Asset/script/script_$DATE
echo "############################ MonGo-DB-Router-Asset   #######################################"
rsync -avz root@164.52.202.12:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MonGo_DB_Router_Asset/script/script_$DATE
echo "############################ MonGo-DB-Node1-Asset   #######################################"
rsync -avz root@164.52.202.17:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MonGo-DB-Node1-Asset/script/script_$DATE
echo "############################ MonGo-DB-Node2-Asset   #######################################"
rsync -avz root@164.52.202.19:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MonGo-DB-Node2-Asset/script/script_$DATE
echo "############################ MonGo-DB-Node3-Asset   #######################################"
rsync -avz root@164.52.202.33:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MonGo-DB-Node3-Asset/script/script_$DATE

echo "################################ASSET KAFKA ###############################################"
rsync -avz root@164.52.195.61:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/ASSET_KAFKA/script/script_$DATE
echo "################################ASSET KAFKA ###############################################"
rsync -avz root@164.52.195.62:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/ASSET_MONGO_NODE4/script/script_$DATE


rsync -avz root@164.52.201.254:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/DOCKER1_ASSET/script_$DATE
rsync -avz root@164.52.202.31:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/DOCKER2_ASSET/script_$DATE
rsync -avz root@164.52.201.203:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/DOCKER3_ASSET/script_$DATE
echo "############********** KAFKA_C1_ASSET **************################################"
rsync -avz root@101.53.156.195:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/KAFKA_C1_ASSET/script/script_$DATE
echo "############********** KAFKA_C2_ASSET **********************################################"
rsync -avz root@101.53.155.73:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/KAFKA_C2_ASSET/script/script_$DATE
echo "############**************************** KAFKA_C3_ASSET ********************################################"
rsync -avz root@101.53.155.78:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/KAFKA_C3_ASSET/script/script_$DATE
echo "########################### MONGO_DB_CONFIG_ASSET ###############################################################"
rsync -avz root@164.52.202.13:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MONGO_DB_CONFIG_ASSET/script/script_$DATE
echo "########################### MONGO_DB_Node1_ASSET ##########################################################################"
rsync -avz root@164.52.202.17:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MONGO_DB_Node1_ASSET/script/script_$DATE
rsync -avz root@164.52.202.19:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MONGO_DB_Node2_ASSET/script/script_$DATE
echo "########################### MONGO_DB_Node3_ASSET ##########################################################################"
rsync -avz root@164.52.202.33:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MONGO_DB_Node3_ASSET/script/script_$DATE
echo "########################### MONGO_DB_Node4_ASSET ##########################################################################"
rsync -avz root@164.52.202.46:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MONGO_DB_Node4_ASSET/script/script_$DATE
echo "####################################### MONGO_DB_ROUTER_ASSET ############################################################"
rsync -avz root@164.52.202.12:/root/script/*.sh /DATA/Server_Config-Project_Name/ASSET/MONGO_DB_Node4_ASSET/script/script_$DATE


echo "************NVKN script download*********************************************************************"
echo "***********************************kafka1_nvkn script download***************************************************************************"
rsync -avz ec2-user@13.127.115.148:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/kafka1_nvkn/script_$DATE
echo "kafka2_nvkn script download"
rsync -avz ec2-user@13.232.194.131:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/kafka2_nvkn/script_$DATE
echo "kafka3_nvkn script download"
rsync -avz ec2-user@13.234.50.170:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/kafka3_nvkn/script_$DATE
echo "Mongodb-nvkn-router1 script download"
rsync -avz ec2-user@3.6.233.10:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/Mongodb_nvkn_router1/script_$DATE
echo "Mongodb-nvkn-router2 script download"
rsync -avz ec2-user@15.206.190.121:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/Mongodb_nvkn_router2/script_$DATE
echo "Mongodb-nvkn-config script download"
rsync -avz ec2-user@3.108.77.241:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/Mongodb_nvkn_config/script_$DATE
echo "Mongodb-nvkn-node-p1 script download"
rsync -avz ec2-user@65.1.239.64:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/Mongodb_nvkn_nodep1/script_$DATE
echo "Mongodb-nvkn-node-p2 script download"
rsync -avz ec2-user@3.108.75.174:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/Mongodb_nvkn_nodep2/script_$DATE
echo "Mongodb-nvkn-repl1 script download"
rsync -avz ec2-user@65.1.121.79:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/Mongodb_nvkn_repl1/script_$DATE
echo "Mongodb-nvkn-repl2 script download"
rsync -avz ec2-user@3.108.9.178:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/Mongodb_nvkn_repl2/script_$DATE
echo "NVKN-Docker-1 script download"
rsync -avz ec2-user@3.108.85.174:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/NVKN_DOCKER1/script_$DATE
echo "NVKN-Docker-2 script download"
rsync -avz ec2-user@3.108.31.87:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/NVKN_DOCKER2/script_$DATE
echo "NVKN-Docker-3 script download"
rsync -avz ec2-user@13.235.47.187:/root/script/*.sh /DATA/Server_Config-Project_Name/NVKN/NVKN_DOCKER3/script_$DATE

echo "##############################EPM Script download###########################################################"

echo "##############################AWS EMP Prod download###########################################################"
rsync -avz ec2-user@13.126.148.5:/root/script/*.sh /DATA/Server_Config-Project_Name/EPM-HEA/AWS-EPM_PROD/script/script_$DATE
echo "##############################EPM_DB-prod Script download###########################################################"
rsync -avz ec2-user@13.232.82.175:/root/script/*.sh /DATA/Server_Config-Project_Name/EPM-HEA/EPM_DB-prod/script/script_$DATE
echo "################### EPM DOCKER 1 ###############################################################"
rsync -avz ec2-user@35.154.19.217:/root/script/*.sh /DATA/Server_Config-Project_Name/EPM-HEA/EPM_DOCKER1/script/script_$DATE
echo "################### EPM DOCKER 2 ###############################################################"
rsync -avz ec2-user@13.127.156.228:/root/script/*.sh /DATA/Server_Config-Project_Name/EPM-HEA/EPM_DOCKER2/script/script_$DATE
echo "################################### EPM_QA_Docker1 ########################################"
rsync -avz root@101.53.142.42:/root/script/*.sh /DATA/Server_Config-Project_Name/EPM-HEA/EPM_QA_Docker1/script/script_$DATE
echo "################################### EPM_QA_Docker1 ########################################"
rsync -avz root@101.53.142.177:/root/script/*.sh /DATA/Server_Config-Project_Name/EPM-HEA/EPM_QA_Docker2/script/script_$DATE




