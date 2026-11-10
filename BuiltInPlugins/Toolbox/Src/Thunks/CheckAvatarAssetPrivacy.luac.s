PROTO_0:
        0 LENGTH                           R3 R2
        1 LOADN                            R4 0
        2 JUMPIFNOTLT                      R4 R3 ; [+10]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R5 1
        6 LOADNIL                          R6
        7 LOADB                            R7 0
        8 CALL                             R5 2 -1
        9 NAMECALL                         R3 R3 K0 ["dispatch"]
       11 CALL                             R3 -1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R5 1
       15 MOVE                             R6 R0
       16 LOADB                            R7 1
       17 CALL                             R5 2 -1
       18 NAMECALL                         R3 R3 K0 ["dispatch"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 LOADB                            R4 0
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 MOVE                             R3 R1
        7 JUMPIFNOT                        R3 ; [+8]
        8 MOVE                             R3 R2
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["isAllowedAssetType"]
       13 GETTABLEKS                       R4 R2 K3 ["assetType"]
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+7]
       17 GETUPVAL                         R5 2
       18 GETUPVAL                         R6 3
       19 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       21 GETIMPORT                        R4 K6 [table.insert]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        4 GETTABLEKS                       R2 R2 K1 ["results"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K2 ["value"]
       11 GETTABLEKS                       R7 R7 K3 ["isOpenUse"]
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADNIL                          R4
        3 LOADB                            R5 0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 GETIMPORT                        R1 K3 [Instance.new]
        7 LOADK                            R2 K4 ["Folder"]
        8 CALL                             R1 1 1
        9 LOADK                            R2 K5 ["TemporaryInstances"]
       10 SETTABLEKS                       R2 R1 K6 ["Name"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K7 ["pluginGuiService"]
       15 SETTABLEKS                       R2 R1 K8 ["Parent"]
       17 GETUPVAL                         R2 2
       18 SETTABLEKS                       R1 R2 K8 ["Parent"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K9 ["publishService"]
       23 GETUPVAL                         R4 2
       24 NAMECALL                         R2 R2 K10 ["PublishDescendantAssetsAsync"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 2
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K8 ["Parent"]
       31 NAMECALL                         R2 R1 K11 ["Destroy"]
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K12 ["getAssetIdsFromInstance"]
       37 GETUPVAL                         R3 2
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K13 ["contentProvider"]
       41 CALL                             R2 2 1
       42 GETUPVAL                         R3 4
       43 CALL                             R3 0 1
       44 JUMPIFNOT                        R3 ; [+15]
       45 GETUPVAL                         R3 5
       46 GETUPVAL                         R4 6
       47 MOVE                             R5 R2
       48 CALL                             R3 2 1
       49 NEWCLOSURE                       R5 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U7
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U7
       55 NAMECALL                         R3 R3 K14 ["andThen"]
       57 CALL                             R3 3 -1
       58 CLOSEUPVALS                      R2
       59 RETURN                           R3 -1
       60 NEWTABLE                         R3 0 0
       62 NEWTABLE                         R4 0 0
       64 MOVE                             R5 R2
       65 LOADNIL                          R6
       66 LOADNIL                          R7
       67 FORGPREP                         R5
       68 MOVE                             R11 R4
       69 GETUPVAL                         R12 6
       70 MOVE                             R14 R9
       71 NAMECALL                         R12 R12 K15 ["getAsset"]
       73 CALL                             R12 2 1
       74 NEWCLOSURE                       R14 P2
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R9
       79 NAMECALL                         R12 R12 K14 ["andThen"]
       81 CALL                             R12 2 1
       82 DUPCLOSURE                       R14 K16 [PROTO_4]
       83 NAMECALL                         R12 R12 K17 ["catch"]
       85 CALL                             R12 2 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R10 K20 [table.insert]
       89 CALL                             R10 -1 0
       90 FORGLOOP                         R5 2 ; [-23]
       92 GETUPVAL                         R5 9
       93 GETTABLEKS                       R5 R5 K21 ["all"]
       95 MOVE                             R6 R4
       96 CALL                             R5 1 1
       97 NAMECALL                         R5 R5 K22 ["await"]
       99 CALL                             R5 1 0
      100 LENGTH                           R5 R3
      101 JUMPIFNOTEQKN                    R5 K23 [0] ; [+11]
      103 GETUPVAL                         R7 7
      104 NEWTABLE                         R8 0 0
      106 LOADB                            R9 1
      107 CALL                             R7 2 -1
      108 NAMECALL                         R5 R0 K0 ["dispatch"]
      110 CALL                             R5 -1 0
      111 CLOSEUPVALS                      R2
      112 RETURN                           R0 0
      113 MOVE                             R2 R3
      114 GETUPVAL                         R5 6
      115 MOVE                             R7 R2
      116 NAMECALL                         R5 R5 K24 ["getAvatarAssetsPrivacy"]
      118 CALL                             R5 2 1
      119 NEWCLOSURE                       R7 P4
      120 CAPTURE                          REF R2
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U7
      123 NEWCLOSURE                       R8 P5
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U7
      126 NAMECALL                         R5 R5 K14 ["andThen"]
      128 CALL                             R5 3 -1
      129 CLOSEUPVALS                      R2
      130 RETURN                           R5 -1

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarAssetPrivacyCheckStarted"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarAssetPrivacyCheckReceived"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["AssetConfigUtil"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Util"]
       40 GETTABLEKS                       R5 R5 K12 ["Publishing"]
       42 GETTABLEKS                       R5 R5 K13 ["getPrivateAvatarAssetIds"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K14 ["Flags"]
       51 GETTABLEKS                       R6 R6 K15 ["getFFlagToolboxAvatarItemPublishDraftDependencies"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K16 ["Packages"]
       58 GETTABLEKS                       R7 R7 K17 ["Framework"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R6 K10 ["Util"]
       63 GETTABLEKS                       R7 R7 K18 ["Promise"]
       65 GETIMPORT                        R8 K20 [game]
       67 LOADK                            R10 K21 ["HttpService"]
       68 NAMECALL                         R8 R8 K22 ["GetService"]
       70 CALL                             R8 2 1
       71 DUPCLOSURE                       R9 K23 [PROTO_8]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R7
       79 RETURN                           R9 1
