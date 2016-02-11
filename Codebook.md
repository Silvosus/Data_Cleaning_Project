Data Set Information:

A series of experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist. Using its embedded accelerometer and gyroscope, the scientist captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The data were on the WEB in 6 files:

subject_test.txt
subject_train.txt
x_test.txt
y_test.txt
x_train.txt
y_train.txt
features.txt
activity_labels.txt

Transformation:

It was binded the "training set" and the "test set" to create one data set.

There were the same number of observations in x_test, y_test and subject_test, so they merged.
There were the same number of observations in x_train, y_train and subject_train, so they merged.

The features were added to each 561 variables.

Were of interest only the variables with mean or standard deviation, so the remaining were deleted from the data set.

The activity labels were added to each activity.

The resultant data set variables were appropriately labeled with descriptive names.

The 88 variables of the final data set are:
 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
 [3] "time_Body_acceleration__mean_X"                                        
 [4] "time_Body_acceleration__mean_Y"                                        
 [5] "time_Body_acceleration__mean_Z"                                        
 [6] "time_Body_acceleration__std_X"                                         
 [7] "time_Body_acceleration__std_Y"                                         
 [8] "time_Body_acceleration__std_Z"                                         
 
 [9] "time_Gravity_acceleration_mean_X"                                      
[10] "time_Gravity_acceleration_mean_Y"                                      
[11] "time_Gravity_acceleration_mean_Z"                                      
[12] "time_Gravity_acceleration_std_X"                                       
[13] "time_Gravity_acceleration_std_Y"                                       
[14] "time_Gravity_acceleration_std_Z"                                       
[15] "time_Body_acceleration_Jerk_mean_X"                                    
[16] "time_Body_acceleration_Jerk_mean_Y"                                    
[17] "time_Body_acceleration_Jerk_mean_Z"                                    
[18] "time_Body_acceleration_Jerk_std_X"                                     
[19] "time_Body_acceleration_Jerk_std_Y"                                     
[20] "time_Body_acceleration_Jerk_std_Z"                                     

[33] "time_Body_acceleration_Magnitude_mean"                                 
[34] "time_Body_acceleration_Magnitude_std"                                  
[35] "time_Gravity_acceleration_Magnitude_mean"                              
[36] "time_Gravity_acceleration_Magnitude_std"                               
[37] "time_Body_acceleration_Jerk_Magnitude_mean"                            
[38] "time_Body_acceleration_Jerk_Magnitude_std"                             

[82] "angletime_Body_acceleration_Mean_gravity"                              
[83] "angletime_Body_acceleration_JerkMean_Gravity_Mean"                     

- Triaxial Angular velocity from the gyroscope. 
[21] "time_Body_Gyroscope__mean_X"                                           
[22] "time_Body_Gyroscope__mean_Y"                                           
[23] "time_Body_Gyroscope__mean_Z"                                           
[24] "time_Body_Gyroscope__std_X"                                            
[25] "time_Body_Gyroscope__std_Y"                                            
[26] "time_Body_Gyroscope__std_Z"                                            

[27] "time_Body_Gyroscope_Jerk_mean_X"                                       
[28] "time_Body_Gyroscope_Jerk_mean_Y"                                       
[29] "time_Body_Gyroscope_Jerk_mean_Z"                                       
[30] "time_Body_Gyroscope_Jerk_std_X"                                        
[31] "time_Body_Gyroscope_Jerk_std_Y"                                        
[32] "time_Body_Gyroscope_Jerk_std_Z"                                        

[39] "time_Body_Gyroscope_Magnitude_mean"                                    
[40] "time_Body_Gyroscope_Magnitude_std"                                     
[41] "time_Body_Gyroscope_Jerk_Magnitude_mean"                               
[42] "time_Body_Gyroscope_Jerk_Magnitude_std"                                

[84] "angletime_Body_Gyroscope_Mean_Gravity_Mean"                            
[85] "angletime_Body_Gyroscope_JerkMean_Gravity_Mean"                        

[86] "angleX_Gravity_Mean"                                                   
[87] "angleY_Gravity_Mean"                                                   
[88] "angleZ_Gravity_Mean"

- A vector with frequency domain variables. 

[43] "frequency_domain_signals_Body_acceleration__mean_X"                    
[44] "frequency_domain_signals_Body_acceleration__mean_Y"                    
[45] "frequency_domain_signals_Body_acceleration__mean_Z"                    
[46] "frequency_domain_signals_Body_acceleration__std_X"                     
[47] "frequency_domain_signals_Body_acceleration__std_Y"                     
[48] "frequency_domain_signals_Body_acceleration__std_Z"                     
[49] "frequency_domain_signals_Body_acceleration__meanFreq_X"                
[50] "frequency_domain_signals_Body_acceleration__meanFreq_Y"                
[51] "frequency_domain_signals_Body_acceleration__meanFreq_Z"                
[52] "frequency_domain_signals_Body_acceleration_Jerk_mean_X"                
[53] "frequency_domain_signals_Body_acceleration_Jerk_mean_Y"                
[54] "frequency_domain_signals_Body_acceleration_Jerk_mean_Z"                
[55] "frequency_domain_signals_Body_acceleration_Jerk_std_X"                 
[56] "frequency_domain_signals_Body_acceleration_Jerk_std_Y"                 
[57] "frequency_domain_signals_Body_acceleration_Jerk_std_Z"                 
[58] "frequency_domain_signals_Body_acceleration_Jerk_meanFreq_X"            
[59] "frequency_domain_signals_Body_acceleration_Jerk_meanFreq_Y"            
[60] "frequency_domain_signals_Body_acceleration_Jerk_meanFreq_Z"            
[61] "frequency_domain_signals_Body_Gyroscope__mean_X"                       
[62] "frequency_domain_signals_Body_Gyroscope__mean_Y"                       
[63] "frequency_domain_signals_Body_Gyroscope__mean_Z"                       
[64] "frequency_domain_signals_Body_Gyroscope__std_X"                        
[65] "frequency_domain_signals_Body_Gyroscope__std_Y"                        
[66] "frequency_domain_signals_Body_Gyroscope__std_Z"                        
[67] "frequency_domain_signals_Body_Gyroscope__meanFreq_X"                   
[68] "frequency_domain_signals_Body_Gyroscope__meanFreq_Y"                   
[69] "frequency_domain_signals_Body_Gyroscope__meanFreq_Z"                   
[70] "frequency_domain_signals_Body_acceleration_Magnitude_mean"             
[71] "frequency_domain_signals_Body_acceleration_Magnitude_std"              
[72] "frequency_domain_signals_Body_acceleration_Magnitude_meanFreq"         
[73] "frequency_domain_signals_BodyBody_acceleration_Jerk_Magnitude_mean"    
[74] "frequency_domain_signals_BodyBody_acceleration_Jerk_Magnitude_std"     
[75] "frequency_domain_signals_BodyBody_acceleration_Jerk_Magnitude_meanFreq"
[76] "frequency_domain_signals_BodyBody_Gyroscope_Magnitude_mean"            
[77] "frequency_domain_signals_BodyBody_Gyroscope_Magnitude_std"             
[78] "frequency_domain_signals_BodyBody_Gyroscope_Magnitude_meanFreq"        
[79] "frequency_domain_signals_BodyBody_Gyroscope_Jerk_Magnitude_mean"       
[80] "frequency_domain_signals_BodyBody_Gyroscope_Jerk_Magnitude_std"        
[81] "frequency_domain_signals_BodyBody_Gyroscope_Jerk_Magnitude_meanFreq"   

- activity label. 
 [1] "activity"                                                              
 
- An identifier of the subject who carried out the experiment.
[2] "subject"                                                               

