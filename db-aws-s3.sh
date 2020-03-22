#!/bin/bash

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET_ACCESS_KEY=$4
BUCKET_NAME=$5
DATE=$(date +%F-%H-%M-%S-%Z)
BACKUP=db-$DB_NAME-$DATE.sql

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP &&
    export AWS_ACCESS_KEY_ID=AKIA5F2J2ESSDSXMVX5Y &&
    export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY &&
    echo "Uploading the db backup ($BACKUP) on S3" &&
    aws s3 cp /tmp/$BACKUP s3://$BUCKET_NAME/$BACKUP
