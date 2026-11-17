PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 GETIMPORT                        R2 K2 [game]
        7 LOADK                            R4 K3 ["RunService"]
        8 NAMECALL                         R2 R2 K4 ["GetService"]
       10 CALL                             R2 2 1
       11 NAMECALL                         R2 R2 K5 ["IsEdit"]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 MOVE                             R2 R1
       17 MOVE                             R3 R0
       18 GETIMPORT                        R4 K2 [game]
       20 LOADK                            R6 K6 ["TeamCreateService"]
       21 NAMECALL                         R4 R4 K4 ["GetService"]
       23 CALL                             R4 2 1
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R2 1
