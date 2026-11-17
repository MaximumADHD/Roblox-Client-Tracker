MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./MatchmakingAttributeValueDataType"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["./MatchmakingAttributeValuePlayerAttributeValueOrigin"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R1 K6 ["object"]
       17 DUPTABLE                         R5 K10 [{"DataType", "Value", "PlayerAttributeValueOrigin"}]
       18 SETTABLEKS                       R2 R5 K7 ["DataType"]
       20 GETTABLEKS                       R6 R1 K11 ["String"]
       22 SETTABLEKS                       R6 R5 K8 ["Value"]
       24 SETTABLEKS                       R3 R5 K9 ["PlayerAttributeValueOrigin"]
       26 CALL                             R4 1 -1
       27 RETURN                           R4 -1
