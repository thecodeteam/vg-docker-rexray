echo 'REXRAY_STORAGEDRIVERS=ec2' >> /etc/environment
echo 'AWS_ACCESSKEY='$1 >> /etc/environment
echo 'AWS_SECRETKEY='$2 >> /etc/environment
echo 'REXRAY_VOLUME_MOUNT_PREEMPT=true' >> /etc/environment
curl -sSL https://dl.bintray.com/emccode/rexray/install | sh -
#cp /vagrant/scripts/conf_templates/rexray.conf /etc/init/rexray.conf
service rexray start
#/bin/rexray --daemon --host=unix:///run/docker/plugins/rexray.sock > /dev/null 2>&1
