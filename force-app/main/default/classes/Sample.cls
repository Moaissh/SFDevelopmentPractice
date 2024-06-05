public with sharing class Sample {
    
        public static String correctPassword = 'SALESFORCE_LEARNING';
        public static Integer attemptCounter = 1;
        
        public static void attemptedPassword(){
            String finalAnswer = '';
            finalAnswer = handlePasswordAttempt('Salesforce');
            System.debug(finalAnswer);
            finalAnswer = handlePasswordAttempt('Sa_lesforce_LEARNING');
            System.debug(finalAnswer);
            finalAnswer = handlePasswordAttempt('SALES_FORCE_learning');
            System.debug(finalAnswer);
            finalAnswer = handlePasswordAttempt('SALES__FORCE_learning');
            System.debug(finalAnswer);
        }
        
        
        public static String handlePasswordAttempt(String passwordInput){
            if(passwordInput != correctPassword){
                if(attemptCounter > 3){
                    return 'Maximum Limit Reached. Your account is locked';
                }
                attemptCounter++;
                return 'failure';
                
            } else {
                return 'success';
            }
        }
        
    }