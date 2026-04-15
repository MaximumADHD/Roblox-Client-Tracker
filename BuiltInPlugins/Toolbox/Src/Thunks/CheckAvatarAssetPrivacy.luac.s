PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 MOVE                             R3 R1
        7 JUMPIFNOT                        R3 ; [+8]
        8 MOVE                             R3 R2
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["isAllowedAssetType"]
       13 GETTABLEKS                       R4 R2 K3 ["assetType"]
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+7]
       17 GETUPVAL                         R5 2
       18 GETUPVAL                         R6 3
       19 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       21 GETIMPORT                        R4 K6 [table.insert]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R5 R0 K0 ["responseBody"]
        4 GETTABLEKS                       R2 R5 K1 ["results"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R8 R6 K2 ["value"]
       11 GETTABLEKS                       R7 R8 K3 ["isOpenUse"]
       13 JUMPIF                           R7 ; [+9]
       14 GETUPVAL                         R8 0
       15 GETTABLE                         R7 R8 R5
       16 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R7
       20 GETIMPORT                        R8 K6 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R2 2 ; [-15]
       25 GETUPVAL                         R2 1
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R1
       28 LOADB                            R6 1
       29 CALL                             R4 2 -1
       30 NAMECALL                         R2 R2 K7 ["dispatch"]
       32 CALL                             R2 -1 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADNIL                          R4
        3 LOADB                            R5 0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 GETIMPORT                        R1 K3 [Instance.new]
        7 LOADK                            R2 K4 ["Folder"]
        8 CALL                             R1 1 1
        9 LOADK                            R2 K5 ["TemporaryInstances"]
       10 SETTABLEKS                       R2 R1 K6 ["Name"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K7 ["pluginGuiService"]
       15 SETTABLEKS                       R2 R1 K8 ["Parent"]
       17 GETUPVAL                         R2 2
       18 SETTABLEKS                       R1 R2 K8 ["Parent"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K9 ["publishService"]
       23 GETUPVAL                         R4 2
       24 NAMECALL                         R2 R2 K10 ["PublishDescendantAssetsAsync"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 2
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K8 ["Parent"]
       31 NAMECALL                         R2 R1 K11 ["Destroy"]
       33 CALL                             R2 1 0
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R2 R3 K12 ["getAssetIdsFromInstance"]
       37 GETUPVAL                         R3 2
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K13 ["contentProvider"]
       41 CALL                             R2 2 1
       42 NEWTABLE                         R3 0 0
       44 NEWTABLE                         R4 0 0
       46 MOVE                             R5 R2
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 MOVE                             R11 R4
       51 GETUPVAL                         R12 4
       52 MOVE                             R14 R9
       53 NAMECALL                         R12 R12 K14 ["getAsset"]
       55 CALL                             R12 2 1
       56 NEWCLOSURE                       R14 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R9
       61 NAMECALL                         R12 R12 K15 ["andThen"]
       63 CALL                             R12 2 1
       64 DUPCLOSURE                       R14 K16 [PROTO_2]
       65 NAMECALL                         R12 R12 K17 ["catch"]
       67 CALL                             R12 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R10 K20 [table.insert]
       71 CALL                             R10 -1 0
       72 FORGLOOP                         R5 2 ; [-23]
       74 GETUPVAL                         R6 6
       75 GETTABLEKS                       R5 R6 K21 ["all"]
       77 MOVE                             R6 R4
       78 CALL                             R5 1 1
       79 NAMECALL                         R5 R5 K22 ["await"]
       81 CALL                             R5 1 0
       82 LENGTH                           R5 R3
       83 JUMPIFNOTEQKN                    R5 K23 [0] ; [+11]
       85 GETUPVAL                         R7 7
       86 NEWTABLE                         R8 0 0
       88 LOADB                            R9 1
       89 CALL                             R7 2 -1
       90 NAMECALL                         R5 R0 K0 ["dispatch"]
       92 CALL                             R5 -1 0
       93 CLOSEUPVALS                      R2
       94 RETURN                           R0 0
       95 MOVE                             R2 R3
       96 GETUPVAL                         R5 4
       97 MOVE                             R7 R2
       98 NAMECALL                         R5 R5 K24 ["getAvatarAssetsPrivacy"]
      100 CALL                             R5 2 1
      101 NEWCLOSURE                       R7 P2
      102 CAPTURE                          REF R2
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U7
      105 NEWCLOSURE                       R8 P3
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U7
      108 NAMECALL                         R5 R5 K15 ["andThen"]
      110 CALL                             R5 3 -1
      111 CLOSEUPVALS                      R2
      112 RETURN                           R5 -1

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarAssetPrivacyCheckStarted"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Actions"]
       22 GETTABLEKS                       R3 R4 K9 ["AvatarAssetPrivacyCheckReceived"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["AssetConfigUtil"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Packages"]
       38 GETTABLEKS                       R5 R6 K13 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R6 R4 K10 ["Util"]
       43 GETTABLEKS                       R5 R6 K14 ["Promise"]
       45 GETIMPORT                        R6 K16 [game]
       47 LOADK                            R8 K17 ["HttpService"]
       48 NAMECALL                         R6 R6 K18 ["GetService"]
       50 CALL                             R6 2 1
       51 DUPCLOSURE                       R7 K19 [PROTO_6]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R2
       57 RETURN                           R7 1
