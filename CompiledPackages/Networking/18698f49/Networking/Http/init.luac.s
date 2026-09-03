MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Networking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["strict"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 DUPTABLE                         R3 K10 [{"HttpResponse", "Networking", "StatusCodes"}]
       16 GETIMPORT                        R4 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K8 ["HttpResponse"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K8 ["HttpResponse"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K2 ["Networking"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K2 ["Networking"]
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K9 ["StatusCodes"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K9 ["StatusCodes"]
       43 CALL                             R2 1 -1
       44 RETURN                           R2 -1
