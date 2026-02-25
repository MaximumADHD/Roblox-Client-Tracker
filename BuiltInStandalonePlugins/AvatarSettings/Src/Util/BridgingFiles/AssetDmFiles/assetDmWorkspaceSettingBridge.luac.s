PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["workspaceGravitySetting"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["Gravity"]
        7 NAMECALL                         R0 R0 K2 ["Invoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Gravity"]
        2 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K3 ["addRBXScriptConnection"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R7 R0 K10 ["Src"]
       17 GETTABLEKS                       R6 R7 K11 ["Util"]
       19 GETTABLEKS                       R5 R6 K12 ["BridgingFiles"]
       21 GETTABLEKS                       R4 R5 K13 ["AssetDmFiles"]
       23 GETTABLEKS                       R3 R4 K14 ["assetDmConnectionManager"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R6 R0 K10 ["Src"]
       30 GETTABLEKS                       R5 R6 K11 ["Util"]
       32 GETTABLEKS                       R4 R5 K15 ["InvokeKeys"]
       34 CALL                             R3 1 1
       35 DUPCLOSURE                       R4 K16 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 RETURN                           R4 1
