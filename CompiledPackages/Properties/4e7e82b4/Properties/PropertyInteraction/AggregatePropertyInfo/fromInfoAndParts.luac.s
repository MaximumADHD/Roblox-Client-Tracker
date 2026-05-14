PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K6 [{"parts", "modified", "warningText", "errorText"}]
        7 SETTABLEKS                       R1 R4 K2 ["parts"]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K3 ["modified"]
       12 LOADNIL                          R5
       13 SETTABLEKS                       R5 R4 K4 ["warningText"]
       15 LOADNIL                          R5
       16 SETTABLEKS                       R5 R4 K5 ["errorText"]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K9 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R4 1
