MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Types"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K9 [{"DocParser", "PropParser", "FunctionParser", "Enums"}]
        9 GETIMPORT                        R2 K1 [require]
       11 GETIMPORT                        R3 K3 [script]
       13 GETTABLEKS                       R3 R3 K5 ["DocParser"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K5 ["DocParser"]
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R3 K3 [script]
       22 GETTABLEKS                       R3 R3 K6 ["PropParser"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K6 ["PropParser"]
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R3 K3 [script]
       31 GETTABLEKS                       R3 R3 K7 ["FunctionParser"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K7 ["FunctionParser"]
       36 DUPTABLE                         R2 K12 [{"PropTypeQualifiers", "Typecheckers"}]
       37 GETTABLEKS                       R3 R0 K10 ["PropTypeQualifiers"]
       39 SETTABLEKS                       R3 R2 K10 ["PropTypeQualifiers"]
       41 GETTABLEKS                       R3 R0 K11 ["Typecheckers"]
       43 SETTABLEKS                       R3 R2 K11 ["Typecheckers"]
       45 SETTABLEKS                       R2 R1 K8 ["Enums"]
       47 RETURN                           R1 1
