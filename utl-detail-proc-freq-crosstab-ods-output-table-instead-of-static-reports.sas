Detail proc freq crosstab ods output table instead of static reports                                                        
                                                                                                                            
github                                                                                                                      
https://tinyurl.com/y8fdlork                                                                                                
https://github.com/rogerjdeangelis/utl-detail-proc-freq-crosstab-ods-output-table-instead-of-static-reports                 
                                                                                                                            
https://tinyurl.com/ydfth8a4                                                                                                
https://communities.sas.com/t5/SAS-Programming/Group-rows-in-PROC-TABULATE/m-p/646132                                       
                                                                                                                            
macros                                                                                                                      
https://tinyurl.com/y9nfugth                                                                                                
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                  
                                                                                                                            
                                                                                                                            
*_                   _                                                                                                      
(_)_ __  _ __  _   _| |_                                                                                                    
| | '_ \| '_ \| | | | __|                                                                                                   
| | | | | |_) | |_| | |_                                                                                                    
|_|_| |_| .__/ \__,_|\__|                                                                                                   
        |_|                                                                                                                 
;                                                                                                                           
                                                                                                                            
DATA have;                                                                                                                  
format Sex $1.;                                                                                                             
INPUT id crime Sex count @@;                                                                                                
cards4;                                                                                                                     
1 110 f 3 2 32 f 1 3 31 m 1 4 113 m 1 5 110 m 1 6 31 m 1 7 31 m 1 8 110                                                     
f 2 9 113 m 1 10 31 m 1 11 113 m 1 12 110 f 1 13 32 m 1 14 31 m                                                             
1 15 31 m 1 16 31 m 1 17 110 f 2 18 113 m 2 19 31 m 1 20 31 m 1 21 110                                                      
m 4 22 32 f 1 23 31 m 1 24 31 m 1 25 110 f 4 26 110 m 1 27 110 m                                                            
1 28 110 m 2 29 32 m 1 30 113 f 1 31 32 m 1 32 31 f 1 33 110 m 1 34 32                                                      
f 1 35 113 m 2 36 31 m 1 37 113 m 1 38 110 f 1 39 113 u 2                                                                   
;;;;                                                                                                                        
run;quit;                                                                                                                   
                                                                                                                            
proc format;                                                                                                                
 value crimes                                                                                                               
 110 = 'Theft'                                                                                                              
 113 = 'Robbery'                                                                                                            
 32  = 'Assault'                                                                                                            
 31  = 'Minor assault';                                                                                                     
run;                                                                                                                        
                                                                                                                            
WORK.HAVE total obs=39                                                                                                      
                                                                                                                            
  SEX    ID    CRIME    COUNT                                                                                               
                                                                                                                            
   f      1     110       3                                                                                                 
   f      2      32       1                                                                                                 
   m      3      31       1                                                                                                 
   m      4     113       1                                                                                                 
   m      5     110       1                                                                                                 
   m      6      31       1                                                                                                 
   m      7      31       1                                                                                                 
   f      8     110       2                                                                                                 
   m      9     113       1                                                                                                 
   m     10      31       1                                                                                                 
  ...                                                                                                                       
                                                                                                                            
*            _               _                                                                                              
  ___  _   _| |_ _ __  _   _| |_                                                                                            
 / _ \| | | | __| '_ \| | | | __|                                                                                           
| (_) | |_| | |_| |_) | |_| | |_                                                                                            
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                           
                |_|                                                                                                         
;                                                                                                                           
                                                                                                                            
                                                                                                                            
WORK.WANT total obs=16                                                                                                      
                                                                                                                            
  ROWNAM     LEVEL              F        M           U    TOTAL                                                             
                                                                                                                            
  COUNT      Minor assault     1.00    12.00      0.00    13.00                                                             
  PERCENT    Minor assault     1.89    22.64      0.00    24.53                                                             
  ROW PCT    Minor assault     7.69    92.31      0.00      .                                                               
  COL PCT    Minor assault     5.56    36.36      0.00      .                                                               
  COUNT      Assault           3.00     3.00      0.00     6.00                                                             
  PERCENT    Assault           5.66     5.66      0.00    11.32                                                             
  ROW PCT    Assault          50.00    50.00      0.00      .                                                               
  COL PCT    Assault          16.67     9.09      0.00      .                                                               
  COUNT      Theft            13.00    10.00      0.00    23.00                                                             
  PERCENT    Theft            24.53    18.87      0.00    43.40                                                             
  ROW PCT    Theft            56.52    43.48      0.00      .                                                               
  COL PCT    Theft            72.22    30.30      0.00      .                                                               
  COUNT      Robbery           1.00     8.00      2.00    11.00                                                             
  PERCENT    Robbery           1.89    15.09      3.77    20.75                                                             
  ROW PCT    Robbery           9.09    72.73     18.18      .                                                               
  COL PCT    Robbery           5.56    24.24    100.00      .                                                               
                                                                                                                            
and                                                                                                                         
                                                                                                                            
  ROWNAM    LEVEL             F     M    U    TOTAL                                                                         
                                                                                                                            
  COUNT     Minor assault     1    12    0     13                                                                           
  COUNT     Assault           3     3    0      6                                                                           
  COUNT     Theft            13    10    0     23                                                                           
  COUNT     Robbery           1     8    2     11                                                                           
                                                                                                                            
                                                                                                                            
*                                                                                                                           
 _ __  _ __ ___   ___ ___  ___ ___                                                                                          
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                         
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                         
| .__/|_|  \___/ \___\___||___/___/                                                                                         
|_|                                                                                                                         
;                                                                                                                           
                                                                                                                            
%utl_odsfrq(setup);                                                                                                         
proc freq data=have formchar='|';                                                                                           
format crime crimes.;                                                                                                       
tables crime*sex;                                                                                                           
weight count;                                                                                                               
run;quit;                                                                                                                   
%utl_odsfrq(outdsn=want);                                                                                                   
                                                                                                                            
                                                                                                                            
                                                                                                                            
