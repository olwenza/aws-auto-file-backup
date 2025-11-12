# Project Title

AWS - Auto File Backup

## Description

Project automatically upload important files to S3 every night at 2:00am and send
email notification upon completion. Older files will be moved to cheaper storage in 30 days.

# Outline 
1. Create S3 buckets for different data types to be stored (Documents, photos, videos)
2. Write script to identify important files and auto upload to S3 nightly at 2:00am
3. Configure S3 with versioning to be able to revert back to any version of file
4. Create S3 livecycle policies to move older files to cheaper storage after 30 days
5. Send SNS email confirmation to notify users of backup post completion

## Getting Started

### Dependencies
 
* Install Homebrew if not already installed
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
 
 * Update Homebrew
 ```
 brew update
 ```

* Install AWS CLI
```
brew install awscli
```

* Verify installation.
```
awscli --version
```
 
* Configure awscli with account credentials
```
awscli configure
```

### Installing

* TBD/NA

### Executing program
### 1- Create S3 buckets for different data types to be stored (Documents, photos, videos)
**- Using AWS CLI**
```
chmod +x script/s3_create_buckets.sh
```
```
. script/s3_create_buckets.sh
```

**- Or using Terraform**
```
cd terraform
```
```
terraform init
```
```
terraform plan
```
```
terraform apply
```
**- Destroy created buckets** 
```
terraform destroy
```

### 2- Write script to identify important files and auto upload to S3 nightly at 2:00am
* Run script to upload to S3 (Execute previous step first)
```
chmod +x script/s3_upload.sh
```
```
. script/s3_upload.sh
``` 
**- Run script nightly at 2:00**
* Move script file to user home directory
```
cp /script/s3_upload.sh /home/ec2-user1/s3_upload.sh 
```
* Edit cron tab for user (e.g., ec2-user1):)
```
crontab -e
```
* Add line to run job nightly at 2:00am and log results
```
0 2 * * * /home/ec2-user1/s3_upload.sh >> /home/ec2-user1/s3_upload.log 2>&1
```

### 3- Configure S3 with versioning to be able to revert back to any version of file
* Run script to turn on version on buckets created on step 1 above
```
chmod +x script/s3_turn_on_versioning.sh
```
```
. script/s3_turn_on_versioning.sh
``` 

### 4- Create S3 livecycle policies to move older files to cheaper storage after 30 days
* Run script to set livecycle policies on buckets created on step 1 above
```
chmod +x script/s3_set_policy.sh
```
```
. script/s3_set_policy.sh
``` 

### 5- Send SNS email confirmation to notify users of backup post completion
* TBD
```
TBD
``` 

## Authors

Contributors names and contact info

Ivan Augustino
[@ivanaugustino](https://www.linkedin.com/in/ivanaugustino/)

## Version History

* 0.2
    * Various bug fixes and optimizations
    * See [commit change]() or See [release history]()
* 0.1
    * Initial Release

## License

This project is licensed under the [General Public License (GPL) - see the LICENSE.md file for details

## Acknowledgments

Inspiration, code snippets, etc.
* [awesome-readme](https://github.com/matiassingers/awesome-readme)