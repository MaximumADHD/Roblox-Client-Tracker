PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["Loaded"]
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["getChangedProperties"]
        5 CALL                             R2 0 -1
        6 CALL                             R1 -1 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hasPlaceOverridableChanges"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["hasPlaceOverridableChanges"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K1 ["Invoke"]
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["publishIfChanged"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETIMPORT                        R1 K2 [task.defer]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["capture"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["markChanged"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 1
        8 JUMPIFEQKNIL                     R2 ; [+3]
       10 GETUPVAL                         R1 1
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["Loaded"]
       15 JUMPIF                           R1 ; [+2]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K2 ["captureBaseline"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ensureBaseline"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+14]
        6 GETIMPORT                        R2 K2 [warn]
        8 LOADK                            R3 K3 ["AvatarSettings: Create Place Settings ignored because AvatarSettings has not loaded yet"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["createPlaceAvatarRules"]
       13 GETTABLEKS                       R4 R4 K5 ["fromAssetDm"]
       15 LOADK                            R5 K6 ["NoBaseline"]
       16 NAMECALL                         R2 R0 K7 ["Invoke"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0
       20 JUMPIF                           R1 ; [+15]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K8 ["findExisting"]
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+10]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K4 ["createPlaceAvatarRules"]
       29 GETTABLEKS                       R4 R4 K5 ["fromAssetDm"]
       31 LOADK                            R5 K9 ["ExistingTree"]
       32 NAMECALL                         R2 R0 K7 ["Invoke"]
       34 CALL                             R2 3 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K10 ["get"]
       39 CALL                             R2 0 1
       40 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       42 MOVE                             R4 R2
       43 LOADK                            R5 K11 ["ensureBaseline succeeded without storing a baseline"]
       44 GETIMPORT                        R3 K13 [assert]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 4
       48 CALL                             R3 0 1
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K14 ["create"]
       52 GETUPVAL                         R5 5
       53 MOVE                             R6 R2
       54 MOVE                             R7 R3
       55 CALL                             R5 2 1
       56 MOVE                             R6 R3
       57 CALL                             R4 2 3
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K4 ["createPlaceAvatarRules"]
       61 GETTABLEKS                       R9 R9 K5 ["fromAssetDm"]
       63 MOVE                             R10 R4
       64 MOVE                             R11 R6
       65 NAMECALL                         R7 R0 K7 ["Invoke"]
       67 CALL                             R7 4 0
       68 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["publishIfChanged"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Loaded"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["captureBaseline"]
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["captureBaseline"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Loaded"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.defer]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["captureBaseline"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["requestPlaceOverridableChangesStatus"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 NAMECALL                         R1 R0 K1 ["OnInvoke"]
       14 CALL                             R1 3 0
       15 GETIMPORT                        R1 K4 [task.defer]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 4
       23 LOADK                            R3 K5 ["Loaded"]
       24 NAMECALL                         R1 R1 K6 ["GetPropertyChangedSignal"]
       26 CALL                             R1 2 1
       27 NEWCLOSURE                       R3 P2
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R1 R1 K7 ["Connect"]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R1 4
       35 GETTABLEKS                       R1 R1 K8 ["RefreshPluginState"]
       37 NEWCLOSURE                       R3 P3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R1 R1 K7 ["Connect"]
       42 CALL                             R1 2 0
       43 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Src"]
       17 GETTABLEKS                       R3 R3 K10 ["Util"]
       19 GETTABLEKS                       R3 R3 K11 ["BridgingFiles"]
       21 GETTABLEKS                       R3 R3 K12 ["AssetDmFiles"]
       23 GETTABLEKS                       R3 R3 K13 ["assetDmPropertiesBaseline"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R0 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K10 ["Util"]
       32 GETTABLEKS                       R4 R4 K11 ["BridgingFiles"]
       34 GETTABLEKS                       R4 R4 K12 ["AssetDmFiles"]
       36 GETTABLEKS                       R4 R4 K14 ["assetDmTypes"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K8 [require]
       41 GETTABLEKS                       R5 R0 K9 ["Src"]
       43 GETTABLEKS                       R5 R5 K10 ["Util"]
       45 GETTABLEKS                       R5 R5 K11 ["BridgingFiles"]
       47 GETTABLEKS                       R5 R5 K12 ["AssetDmFiles"]
       49 GETTABLEKS                       R5 R5 K15 ["diffAvatarRulesProperties"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K8 [require]
       54 GETTABLEKS                       R6 R0 K9 ["Src"]
       56 GETTABLEKS                       R6 R6 K10 ["Util"]
       58 GETTABLEKS                       R6 R6 K11 ["BridgingFiles"]
       60 GETTABLEKS                       R6 R6 K12 ["AssetDmFiles"]
       62 GETTABLEKS                       R6 R6 K16 ["getPropertiesTable"]
       64 CALL                             R5 1 1
       65 GETIMPORT                        R6 K8 [require]
       67 GETTABLEKS                       R7 R0 K9 ["Src"]
       69 GETTABLEKS                       R7 R7 K10 ["Util"]
       71 GETTABLEKS                       R7 R7 K17 ["InvokeKeys"]
       73 CALL                             R6 1 1
       74 GETIMPORT                        R7 K8 [require]
       76 GETTABLEKS                       R8 R0 K9 ["Src"]
       78 GETTABLEKS                       R8 R8 K10 ["Util"]
       80 GETTABLEKS                       R8 R8 K11 ["BridgingFiles"]
       82 GETTABLEKS                       R8 R8 K12 ["AssetDmFiles"]
       84 GETTABLEKS                       R8 R8 K18 ["placeAvatarRulesUtil"]
       86 CALL                             R7 1 1
       87 LOADNIL                          R8
       88 LOADB                            R9 0
       89 LOADB                            R10 0
       90 LOADNIL                          R11
       91 NEWTABLE                         R12 16 0
       93 NEWCLOSURE                       R13 P0
       94 CAPTURE                          REF R11
       95 SETTABLEKS                       R13 R12 K19 ["setLoadedOverride"]
       97 NEWCLOSURE                       R13 P1
       98 CAPTURE                          REF R11
       99 CAPTURE                          VAL R1
      100 DUPCLOSURE                       R14 K20 [PROTO_2]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R5
      104 SETTABLEKS                       R14 R12 K21 ["getChangedProperties"]
      106 DUPCLOSURE                       R14 K22 [PROTO_3]
      107 CAPTURE                          VAL R12
      108 SETTABLEKS                       R14 R12 K23 ["hasPlaceOverridableChanges"]
      110 NEWCLOSURE                       R14 P4
      111 CAPTURE                          VAL R12
      112 CAPTURE                          REF R8
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R14 R12 K24 ["publishIfChanged"]
      116 NEWCLOSURE                       R14 P5
      117 CAPTURE                          REF R9
      118 CAPTURE                          VAL R12
      119 SETTABLEKS                       R14 R12 K25 ["markChanged"]
      121 DUPCLOSURE                       R14 K26 [PROTO_7]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R12
      124 SETTABLEKS                       R14 R12 K27 ["captureBaseline"]
      126 NEWCLOSURE                       R14 P7
      127 CAPTURE                          VAL R2
      128 CAPTURE                          REF R11
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R12
      131 SETTABLEKS                       R14 R12 K28 ["ensureBaseline"]
      133 DUPCLOSURE                       R14 K29 [PROTO_9]
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R14 R12 K30 ["createPlaceAvatarRules"]
      142 NEWCLOSURE                       R14 P9
      143 CAPTURE                          REF R10
      144 CAPTURE                          VAL R6
      145 CAPTURE                          REF R8
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R1
      148 SETTABLEKS                       R14 R12 K31 ["connect"]
      150 CLOSEUPVALS                      R8
      151 RETURN                           R12 1
