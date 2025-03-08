# Requirement

- Docker latest version (https://docs.docker.com/engine/install/ubuntu/)
- docker compose 2.9.0 :

*- sudo curl -L "https://github.com/docker/compose/releases/download/v2.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose*

*- sudo chmod +x /usr/local/bin/docker-compose*

**Then Verify by:**
*- docker-compose --version* (correct if output return version 2.9.)

# Installation
	Everything about the configuration is available in env/env.magento such as domain, magento 2 key pair, admin user....

**- From magento scratch**
- make sure appdata is empty ( sudo  rm -rf appdata/* ; sudo  rm -rf appdata/.*)
- **sudo chown -R 1001 appdata**
- **bin/composer-setup 2.4.3** (this step require some input such as magento keypair, or approval for non-allow plugin)
- **bin/setup**

Then you can access magento via web browser: https://magento.test and admin page is in the output of bin/setup.

**- From exsting magento**
- make sure appdata is empty (sudo  rm -rf appdata/* ; sudo  rm -rf appdata/.*)
- **sudo chown -R 1001 appdata**
- **git clone $GIT_REPO appdata** (replace $GIT_REPO with git repo that you have setup)
   Note: some project is not working with composer so you have to download data like vendor,env.php,config.php,sql file from running server
- **bin/composer-authen** (this step allow you to bypass input at step authen magento)
- **bin/mysql < file.sql** (import db, you have to correct permission first - **sed 's/\sDEFINER=`[^`]*`@`[^`]*`//g' -i file.sql**)
- **bin/setup**
Then you can access magento via web browser: https://magento.test and admin page is in the output of bin/setup.

IF ANY ISSUE, PLEASE CONTACT TO DEVOPS TEAM (slack - **Long Tran**)
