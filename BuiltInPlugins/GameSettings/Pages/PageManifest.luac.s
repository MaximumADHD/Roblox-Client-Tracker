MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["BasicInfoPage"]
        9 GETTABLEKS                       R1 R1 K6 ["BasicInfo"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K7 ["SecurityPage"]
       20 GETTABLEKS                       R2 R2 K8 ["Security"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K9 ["CommunicationPage"]
       31 GETTABLEKS                       R3 R3 K10 ["Communication"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K11 ["CreatorHubPage"]
       42 GETTABLEKS                       R4 R4 K12 ["CreatorHub"]
       44 CALL                             R3 1 1
       45 NEWTABLE                         R4 0 4
       47 MOVE                             R5 R0
       48 MOVE                             R6 R2
       49 MOVE                             R7 R1
       50 MOVE                             R8 R3
       51 SETLIST                          R4 R5 4 [1]
       53 RETURN                           R4 1
