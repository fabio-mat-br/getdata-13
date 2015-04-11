= CODE BOOK
== Data columns

Columns result:

* tBodyAcc-mean()-X          
* tBodyAcc-mean()-Y          
* tBodyAcc-mean()-Z          
* tBodyAcc-std()-X           
* tBodyAcc-std()-Y           
* tBodyAcc-std()-Z           
* tGravityAcc-mean()-X       
* tGravityAcc-mean()-Y       
* tGravityAcc-mean()-Z       
* tGravityAcc-std()-X        
* tGravityAcc-std()-Y        
* tGravityAcc-std()-Z        
* tBodyAccJerk-mean()-X      
* tBodyAccJerk-mean()-Y      
* tBodyAccJerk-mean()-Z      
* tBodyAccJerk-std()-X       
* tBodyAccJerk-std()-Y       
* tBodyAccJerk-std()-Z       
* tBodyGyro-mean()-X         
* tBodyGyro-mean()-Y         
* tBodyGyro-mean()-Z         
* tBodyGyro-std()-X          
* tBodyGyro-std()-Y          
* tBodyGyro-std()-Z          
* tBodyGyroJerk-mean()-X     
* tBodyGyroJerk-mean()-Y     
* tBodyGyroJerk-mean()-Z     
* tBodyGyroJerk-std()-X      
* tBodyGyroJerk-std()-Y      
* tBodyGyroJerk-std()-Z      
* tBodyAccMag-mean()         
* tBodyAccMag-std()          
* tGravityAccMag-mean()      
* tGravityAccMag-std()       
* tBodyAccJerkMag-mean()     
* tBodyAccJerkMag-std()      
* tBodyGyroMag-mean()        
* tBodyGyroMag-std()         
* tBodyGyroJerkMag-mean()    
* tBodyGyroJerkMag-std()     
* fBodyAcc-mean()-X          
* fBodyAcc-mean()-Y          
* fBodyAcc-mean()-Z          
* fBodyAcc-std()-X           
* fBodyAcc-std()-Y           
* fBodyAcc-std()-Z           
* fBodyAccJerk-mean()-X      
* fBodyAccJerk-mean()-Y      
* fBodyAccJerk-mean()-Z      
* fBodyAccJerk-std()-X       
* fBodyAccJerk-std()-Y       
* fBodyAccJerk-std()-Z       
* fBodyGyro-mean()-X         
* fBodyGyro-mean()-Y         
* fBodyGyro-mean()-Z         
* fBodyGyro-std()-X          
* fBodyGyro-std()-Y          
* fBodyGyro-std()-Z          
* fBodyAccMag-mean()         
* fBodyAccMag-std()          
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyAccJerkMag-std()  
* fBodyBodyGyroMag-mean()    
* fBodyBodyGyroMag-std()     
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std() 
* activity                   
* subject                    

The variable names means [K][P][G][J]-[S]

K in {t, f}, which:

* t = time
* f = frequence

P in {gravity, body}, which:

* gravity = gravity aceleration 
* body = body aceleration

G in {Acc, Gyro}, which:

* acc = accelerometer
* gyro = gyroscope

J in {Jerk, {}}, which:

* Jerk = Jerk signals

Note that J is optional

S in {std, mean}, which:

* mean: Mean value
* std: Standard deviation