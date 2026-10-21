MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Util"]
        9 GETTABLEKS                       R1 R1 K6 ["strict"]
       11 CALL                             R0 1 1
       12 MOVE                             R1 R0
       13 DUPTABLE                         R2 K10 [{"HttpResponse", "Networking", "StatusCodes"}]
       14 GETIMPORT                        R3 K1 [require]
       16 GETIMPORT                        R4 K3 [script]
       18 GETTABLEKS                       R4 R4 K7 ["HttpResponse"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K7 ["HttpResponse"]
       23 GETIMPORT                        R3 K1 [require]
       25 GETIMPORT                        R4 K3 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Networking"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K8 ["Networking"]
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K9 ["StatusCodes"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K9 ["StatusCodes"]
       41 CALL                             R1 1 -1
       42 RETURN                           R1 -1
