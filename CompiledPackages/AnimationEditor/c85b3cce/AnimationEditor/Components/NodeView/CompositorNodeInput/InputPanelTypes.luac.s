MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Symbol"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K11 [{"DISCONNECTED_INPUT", "NEW_INPUT"}]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K12 ["DisconnectedInput"]
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K9 ["DISCONNECTED_INPUT"]
       27 MOVE                             R4 R2
       28 LOADK                            R5 K13 ["NewInput"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K10 ["NEW_INPUT"]
       32 RETURN                           R3 1
