PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["captureCompletedLoad"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+17]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["refreshPluginState"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 NAMECALL                         R2 R2 K2 ["Invoke"]
       17 CALL                             R2 4 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 2
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K1 ["refreshPluginState"]
       23 NAMECALL                         R0 R0 K2 ["Invoke"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RefreshPluginState"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["InvokeKeys"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["BridgingFiles"]
       33 GETTABLEKS                       R4 R4 K12 ["AssetDmFiles"]
       35 GETTABLEKS                       R4 R4 K13 ["assetDmSettingsSnapshot"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K15 [game]
       40 LOADK                            R6 K2 ["AvatarSettings"]
       41 NAMECALL                         R4 R4 K16 ["GetService"]
       43 CALL                             R4 2 1
       44 DUPCLOSURE                       R5 K17 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 RETURN                           R5 1
