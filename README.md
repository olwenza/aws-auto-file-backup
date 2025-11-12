# Project Title

AWS - Auto File Backup

## Description

Project automatically upload important files to S3 every night at 2:00am and sends
email notification upon completion. Older file will be

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
* TBD
```
TBD
```

### 2- Write script to identify important files and auto upload to S3 nightly at 2:00am
* TBD
```
TBD
``` 

### 3- Configure S3 with versioning to be able to revert back to any version of file
* TBD
```
TBD
``` 

### 4- Create S3 livecycle policies to move older files to cheaper storage after 30 days
* TBD
```
TBD
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