BACKUP_DIR="/tmp/mysql-backup"
mkdir -p $BACKUP_DIR

mysqldump --defaults-file=/home/ubuntu/ansible/Solvavtive-Task/myconf --all-databases > $BACKUP_DIR/db_backup_$(date +%F_%H-%M-%S).sql

echo "Backup stored in $BACKUP_DIR"
