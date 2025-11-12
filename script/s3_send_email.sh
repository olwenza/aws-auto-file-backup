#!/bin/bash
####### 5- Send SNS email confirmation to notify users of backup post completion #####
## copy returned ARN e.g: arn:aws:sns:us-east-1:123456789012:FileBackupCompletedTopic

## Subscribe your desired email to the topic
aws sns subscribe \
    --topic-arn arn:aws:sns:us-east-1:123456789012:FileBackupCompletedTopic \
    --protocol email \
    --notification-endpoint olwenza@yahoo.com

# Send notification email
aws sns publish \
    --topic-arn arn:aws:sns:us-east-1:123456789012:FileBackupCompletedTopic \
    --subject "Backup completed" \
    --message "Backup of your files has been successfully completed!"

################################### END SEGMENT ####################################