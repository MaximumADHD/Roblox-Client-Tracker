PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R1 R0 K0 ["IsDescendantOf"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADK                            R1 K1 ["designAssist"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 LOADK                            R3 K2 ["DesignAssistStories"]
       11 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+7]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R0 K0 ["IsDescendantOf"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+2]
       20 LOADK                            R2 K1 ["designAssist"]
       21 RETURN                           R2 1
       22 LOADK                            R2 K4 ["external"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["DesignAssist"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K8 [PROTO_0]
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 DUPTABLE                         R3 K10 [{"classify"}]
       17 SETTABLEKS                       R2 R3 K9 ["classify"]
       19 RETURN                           R3 1
