PROTO_0:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 JUMPIFEQKB                       R0 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 SETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K1 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+4]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 RETURN                           R3 3
       17 GETUPVAL                         R3 0
       18 JUMPIF                           R3 ; [+12]
       19 GETUPVAL                         R3 2
       20 JUMPIFEQKNIL                     R3 ; [+10]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K2 ["Util"]
       25 GETTABLEKS                       R3 R3 K3 ["deepEqual"]
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 JUMPIF                           R3 ; [+4]
       31 GETUPVAL                         R3 4
       32 ADDK                             R3 R3 K4 [1]
       33 SETUPVAL                         R3 4
       34 SETUPVAL                         R2 2
       35 GETUPVAL                         R3 0
       36 LOADB                            R4 0
       37 SETUPVAL                         R4 0
       38 MOVE                             R4 R2
       39 GETUPVAL                         R5 4
       40 MOVE                             R6 R3
       41 RETURN                           R4 3

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["capture"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+15]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["databaseLoaded"]
        9 LOADB                            R6 0
       10 NAMECALL                         R3 R0 K2 ["Invoke"]
       12 CALL                             R3 3 0
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["CreateAvatarRules"]
       16 GETTABLEKS                       R5 R5 K4 ["fromAssetDm"]
       18 NAMECALL                         R3 R0 K2 ["Invoke"]
       20 CALL                             R3 2 0
       21 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsSyncTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["BridgingFiles"]
       31 GETTABLEKS                       R4 R4 K12 ["AssetDmFiles"]
       33 GETTABLEKS                       R4 R4 K13 ["getPropertiesTable"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K7 ["Util"]
       42 GETTABLEKS                       R5 R5 K14 ["InvokeKeys"]
       44 CALL                             R4 1 1
       45 LOADN                            R5 0
       46 LOADNIL                          R6
       47 LOADB                            R7 0
       48 NEWTABLE                         R8 4 0
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          REF R7
       52 SETTABLEKS                       R9 R8 K15 ["cancelPendingLoad"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          REF R7
       56 CAPTURE                          VAL R3
       57 CAPTURE                          REF R6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          REF R5
       60 SETTABLEKS                       R9 R8 K16 ["capture"]
       62 DUPCLOSURE                       R9 K17 [PROTO_2]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R9 R8 K18 ["captureCompletedLoad"]
       67 CLOSEUPVALS                      R5
       68 RETURN                           R8 1
