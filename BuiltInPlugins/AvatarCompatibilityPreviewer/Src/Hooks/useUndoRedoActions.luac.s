PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["SetEnabled"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["SetEnabled"]
        4 CALL                             R0 2 0
        5 DUPCLOSURE                       R0 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U0
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 DUPCLOSURE                       R3 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R4 0 0
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 2
        9 LOADK                            R3 K2 ["Undo"]
       10 MOVE                             R4 R0
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 2
       13 LOADK                            R3 K3 ["Redo"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Hooks"]
       26 GETTABLEKS                       R4 R4 K14 ["usePluginAction"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
