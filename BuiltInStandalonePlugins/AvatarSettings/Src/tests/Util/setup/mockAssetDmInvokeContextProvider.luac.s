PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 GETVARARGS                       R3 -1
        4 CALL                             R1 -1 1
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R2 K2 [table.insert]
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["clearConnections"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R1 3
       15 SETTABLEKS                       R1 R0 K2 ["OnInvoke"]
       17 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["OnInvoke"]
        5 GETUPVAL                         R2 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K0 ["OnInvoke"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 0
       13 CALL                             R2 1 0
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useLayoutEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R1
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R3 R3 K3 ["Provider"]
       24 DUPTABLE                         R4 K5 [{"value"}]
       25 NEWTABLE                         R5 0 0
       27 SETTABLEKS                       R5 R4 K4 ["value"]
       29 GETTABLEKS                       R5 R0 K6 ["children"]
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R2 K10 ["assetDmConnectionManager"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K11 ["Packages"]
       24 GETTABLEKS                       R3 R3 K12 ["Framework"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K11 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["React"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["tests"]
       40 GETTABLEKS                       R5 R5 K7 ["Util"]
       42 GETTABLEKS                       R5 R5 K15 ["setup"]
       44 GETTABLEKS                       R5 R5 K16 ["mockAssetDmInvokeContext"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K7 ["Util"]
       53 GETTABLEKS                       R6 R6 K8 ["BridgingFiles"]
       55 GETTABLEKS                       R6 R6 K9 ["AssetDmFiles"]
       57 GETTABLEKS                       R6 R6 K17 ["assetDmSetup"]
       59 CALL                             R5 1 1
       60 GETTABLEKS                       R6 R2 K18 ["ContextServices"]
       62 GETTABLEKS                       R7 R6 K19 ["Plugin"]
       64 GETTABLEKS                       R8 R3 K20 ["createElement"]
       66 DUPCLOSURE                       R9 K21 [PROTO_3]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R4
       73 RETURN                           R9 1
