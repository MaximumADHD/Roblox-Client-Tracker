PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CrossEnvironment"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K10 ["createContext"]
       28 DUPTABLE                         R5 K13 [{"useActionState", "trigger"}]
       29 DUPCLOSURE                       R6 K14 [PROTO_0]
       30 SETTABLEKS                       R6 R5 K11 ["useActionState"]
       32 GETTABLEKS                       R6 R2 K15 ["createUnimplemented"]
       34 LOADK                            R7 K12 ["trigger"]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K12 ["trigger"]
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1
