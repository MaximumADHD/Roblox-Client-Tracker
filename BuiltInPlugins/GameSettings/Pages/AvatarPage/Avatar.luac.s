PROTO_0:
        0 DUPTABLE                         R2 K10 [{"AvatarType", "AvatarAnimation", "AvatarCollision", "AvatarAssetOverrides", "AvatarScalingMin", "AvatarScalingMax", "CurrentAvatarType", "AssetOverrideErrors", "OwnerId", "OwnerType"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K11 ["universeAvatarType"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["AvatarType"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K12 ["universeAnimationType"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["AvatarAnimation"]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K13 ["universeCollisionType"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["AvatarCollision"]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K14 ["universeAvatarAssetOverrides"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["AvatarAssetOverrides"]
       21 MOVE                             R3 R0
       22 LOADK                            R4 K15 ["universeAvatarMinScales"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["AvatarScalingMin"]
       26 MOVE                             R3 R0
       27 LOADK                            R4 K16 ["universeAvatarMaxScales"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K5 ["AvatarScalingMax"]
       31 GETTABLEKS                       R3 R1 K17 ["Settings"]
       33 GETTABLEKS                       R3 R3 K18 ["Current"]
       35 GETTABLEKS                       R3 R3 K11 ["universeAvatarType"]
       37 SETTABLEKS                       R3 R2 K6 ["CurrentAvatarType"]
       39 GETTABLEKS                       R3 R1 K17 ["Settings"]
       41 GETTABLEKS                       R3 R3 K19 ["Errors"]
       43 GETTABLEKS                       R3 R3 K14 ["universeAvatarAssetOverrides"]
       45 SETTABLEKS                       R3 R2 K7 ["AssetOverrideErrors"]
       47 GETTABLEKS                       R3 R1 K20 ["GameOwnerMetadata"]
       49 GETTABLEKS                       R3 R3 K21 ["creatorId"]
       51 SETTABLEKS                       R3 R2 K8 ["OwnerId"]
       53 GETTABLEKS                       R3 R1 K20 ["GameOwnerMetadata"]
       55 GETTABLEKS                       R3 R3 K22 ["creatorType"]
       57 SETTABLEKS                       R3 R2 K9 ["OwnerType"]
       59 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 LOADK                            R4 K0 ["universeAvatarType"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 0
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 2
        9 LOADK                            R4 K0 ["universeAvatarType"]
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 0
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 3
       14 LOADK                            R4 K0 ["universeAvatarType"]
       15 MOVE                             R5 R0
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["universeAvatarAssetOverrides"]
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["getErrors"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 3
       14 DUPTABLE                         R4 K2 [{"universeAvatarAssetOverrides"}]
       15 SETTABLEKS                       R1 R4 K0 ["universeAvatarAssetOverrides"]
       17 CALL                             R3 1 -1
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"scales"}]
        3 SETTABLEKS                       R0 R3 K0 ["scales"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K7 [{"AvatarAnimationChanged", "AvatarCollisionChanged", "AvatarScalingMinChanged", "AvatarScalingMaxChanged", "AvatarTypeChanged", "AvatarAssetOverridesChanged", "SaveScaleBoundaries"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K8 ["universeAnimationType"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["AvatarAnimationChanged"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K9 ["universeCollisionType"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["AvatarCollisionChanged"]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K10 ["universeAvatarMinScales"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["AvatarScalingMinChanged"]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K11 ["universeAvatarMaxScales"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["AvatarScalingMaxChanged"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R3 R2 K4 ["AvatarTypeChanged"]
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 SETTABLEKS                       R3 R2 K5 ["AvatarAssetOverridesChanged"]
       35 NEWCLOSURE                       R3 P2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U5
       38 SETTABLEKS                       R3 R2 K6 ["SaveScaleBoundaries"]
       40 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_6:
        0 LOADB                            R2 0
        1 JUMPIFEQKS                       R0 K0 ["PlayerChoice"] ; [+5]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OwnerId"]
        4 GETTABLEKS                       R3 R1 K2 ["OwnerType"]
        6 LOADB                            R4 1
        7 GETIMPORT                        R5 K6 [Enum.CreatorType.Group]
        9 JUMPIFEQ                         R3 R5 ; [+9]
       11 GETUPVAL                         R5 0
       12 NAMECALL                         R5 R5 K7 ["GetUserId"]
       14 CALL                             R5 1 1
       15 JUMPIFEQ                         R2 R5 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [game]
        3 GETTABLEKS                       R3 R3 K2 ["GameId"]
        5 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 JUMPIFNOT                        R1 ; [+17]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["CurrentAvatarType"]
       13 LOADB                            R1 0
       14 JUMPIFEQKS                       R2 K5 ["PlayerChoice"] ; [+5]
       16 JUMPIFNOTEQ                      R0 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K6 ["AvatarTypeChanged"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K6 ["AvatarTypeChanged"]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Mouse"]
        6 DUPTABLE                         R4 K4 [{"Morpher"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K5 ["createElement"]
       10 GETUPVAL                         R6 1
       11 DUPTABLE                         R7 K24 [{["ThemeData"], ["IsEnabled"] = True, ["IsGameShutdownRequired"], ["AssetOverrideErrors"], ["Mouse"], ["IsPlacePublished"], ["AvatarType"], ["AvatarAnimation"], ["AvatarCollision"], ["AvatarAssetOverrides"], ["AvatarScalingMin"], ["AvatarScalingMax"], ["OnAvatarTypeChanged"], ["OnAvatarAnimationChanged"], ["OnAvatarCollisionChanged"], ["OnAvatarAssetOverridesChanged"], ["OnAvatarScalingMinChanged"], ["OnAvatarScalingMaxChanged"]}]
       12 SETTABLEKS                       R2 R7 K6 ["ThemeData"]
       14 GETTABLEKS                       R9 R1 K25 ["CurrentAvatarType"]
       16 GETTABLEKS                       R10 R1 K12 ["AvatarType"]
       18 LOADB                            R8 0
       19 JUMPIFEQKS                       R9 K26 ["PlayerChoice"] ; [+5]
       21 JUMPIFNOTEQ                      R10 R9 ; [+2]
       23 LOADB                            R8 0 +1
       24 LOADB                            R8 1
       25 SETTABLEKS                       R8 R7 K9 ["IsGameShutdownRequired"]
       27 GETTABLEKS                       R8 R1 K10 ["AssetOverrideErrors"]
       29 SETTABLEKS                       R8 R7 K10 ["AssetOverrideErrors"]
       31 NAMECALL                         R8 R3 K27 ["get"]
       33 CALL                             R8 1 1
       34 SETTABLEKS                       R8 R7 K2 ["Mouse"]
       36 GETIMPORT                        R9 K29 [game]
       38 GETTABLEKS                       R9 R9 K30 ["GameId"]
       40 JUMPIFNOTEQKN                    R9 K31 [0] ; [+2]
       42 LOADB                            R8 0 +1
       43 LOADB                            R8 1
       44 SETTABLEKS                       R8 R7 K11 ["IsPlacePublished"]
       46 GETTABLEKS                       R8 R1 K12 ["AvatarType"]
       48 SETTABLEKS                       R8 R7 K12 ["AvatarType"]
       50 GETTABLEKS                       R8 R1 K13 ["AvatarAnimation"]
       52 SETTABLEKS                       R8 R7 K13 ["AvatarAnimation"]
       54 GETTABLEKS                       R8 R1 K14 ["AvatarCollision"]
       56 SETTABLEKS                       R8 R7 K14 ["AvatarCollision"]
       58 GETTABLEKS                       R8 R1 K15 ["AvatarAssetOverrides"]
       60 SETTABLEKS                       R8 R7 K15 ["AvatarAssetOverrides"]
       62 GETTABLEKS                       R8 R1 K16 ["AvatarScalingMin"]
       64 SETTABLEKS                       R8 R7 K16 ["AvatarScalingMin"]
       66 GETTABLEKS                       R8 R1 K17 ["AvatarScalingMax"]
       68 SETTABLEKS                       R8 R7 K17 ["AvatarScalingMax"]
       70 NEWCLOSURE                       R8 P0
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R8 R7 K18 ["OnAvatarTypeChanged"]
       74 GETTABLEKS                       R8 R1 K32 ["AvatarAnimationChanged"]
       76 SETTABLEKS                       R8 R7 K19 ["OnAvatarAnimationChanged"]
       78 GETTABLEKS                       R8 R1 K33 ["AvatarCollisionChanged"]
       80 SETTABLEKS                       R8 R7 K20 ["OnAvatarCollisionChanged"]
       82 GETTABLEKS                       R8 R1 K34 ["AvatarAssetOverridesChanged"]
       84 SETTABLEKS                       R8 R7 K21 ["OnAvatarAssetOverridesChanged"]
       86 GETTABLEKS                       R8 R1 K35 ["AvatarScalingMinChanged"]
       88 SETTABLEKS                       R8 R7 K22 ["OnAvatarScalingMinChanged"]
       90 GETTABLEKS                       R8 R1 K36 ["AvatarScalingMaxChanged"]
       92 SETTABLEKS                       R8 R7 K23 ["OnAvatarScalingMaxChanged"]
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K3 ["Morpher"]
       97 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_12:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETIMPORT                        R2 K5 [script]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 GETIMPORT                        R3 K8 [require]
       21 GETTABLEKS                       R4 R2 K9 ["Packages"]
       23 GETTABLEKS                       R4 R4 K10 ["Roact"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K8 [require]
       28 GETTABLEKS                       R5 R2 K9 ["Packages"]
       30 GETTABLEKS                       R5 R5 K11 ["RoactRodux"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R6 R2 K9 ["Packages"]
       37 GETTABLEKS                       R6 R6 K12 ["Framework"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R5 R5 K13 ["ContextServices"]
       42 GETTABLEKS                       R6 R5 K14 ["withContext"]
       44 GETIMPORT                        R7 K8 [require]
       46 GETTABLEKS                       R8 R2 K15 ["Src"]
       48 GETTABLEKS                       R8 R8 K16 ["Actions"]
       50 GETTABLEKS                       R8 R8 K17 ["AddChange"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K8 [require]
       55 GETTABLEKS                       R9 R2 K15 ["Src"]
       57 GETTABLEKS                       R9 R9 K16 ["Actions"]
       59 GETTABLEKS                       R9 R9 K18 ["AddWarning"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K8 [require]
       64 GETTABLEKS                       R10 R2 K15 ["Src"]
       66 GETTABLEKS                       R10 R10 K16 ["Actions"]
       68 GETTABLEKS                       R10 R10 K19 ["DiscardWarning"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K8 [require]
       73 GETTABLEKS                       R11 R1 K16 ["Actions"]
       75 GETTABLEKS                       R11 R11 K20 ["SettingsSaveScaleBoundaries"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K8 [require]
       80 GETTABLEKS                       R12 R2 K15 ["Src"]
       82 GETTABLEKS                       R12 R12 K21 ["Util"]
       84 GETTABLEKS                       R12 R12 K22 ["AssetOverrides"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K8 [require]
       89 GETTABLEKS                       R13 R2 K15 ["Src"]
       91 GETTABLEKS                       R13 R13 K16 ["Actions"]
       93 GETTABLEKS                       R13 R13 K23 ["AddErrors"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K8 [require]
       98 GETTABLEKS                       R14 R1 K24 ["Components"]
      100 GETTABLEKS                       R14 R14 K25 ["RootPanelExternal"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K8 [require]
      105 GETTABLEKS                       R15 R1 K24 ["Components"]
      107 GETTABLEKS                       R15 R15 K26 ["RedirectToAvatarSettings"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [script]
      112 GETTABLEKS                       R15 R15 K27 ["Name"]
      114 DUPCLOSURE                       R16 K28 [PROTO_0]
      115 DUPCLOSURE                       R17 K29 [PROTO_4]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R10
      122 DUPCLOSURE                       R18 K30 [PROTO_5]
      123 DUPCLOSURE                       R19 K31 [PROTO_6]
      124 GETTABLEKS                       R20 R3 K32 ["PureComponent"]
      126 GETIMPORT                        R22 K5 [script]
      128 GETTABLEKS                       R22 R22 K27 ["Name"]
      130 NAMECALL                         R20 R20 K33 ["extend"]
      132 CALL                             R20 2 1
      133 DUPCLOSURE                       R21 K34 [PROTO_7]
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R21 R20 K35 ["hasPermissionToEdit"]
      137 DUPCLOSURE                       R21 K36 [PROTO_9]
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R13
      140 SETTABLEKS                       R21 R20 K37 ["createChildren"]
      142 DUPCLOSURE                       R21 K38 [PROTO_10]
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R14
      145 SETTABLEKS                       R21 R20 K39 ["render"]
      147 MOVE                             R21 R6
      148 DUPTABLE                         R22 K43 [{"Localization", "Stylizer", "Mouse"}]
      149 GETTABLEKS                       R23 R5 K40 ["Localization"]
      151 SETTABLEKS                       R23 R22 K40 ["Localization"]
      153 GETTABLEKS                       R23 R5 K41 ["Stylizer"]
      155 SETTABLEKS                       R23 R22 K41 ["Stylizer"]
      157 GETTABLEKS                       R23 R5 K42 ["Mouse"]
      159 SETTABLEKS                       R23 R22 K42 ["Mouse"]
      161 CALL                             R21 1 1
      162 MOVE                             R22 R20
      163 CALL                             R21 1 1
      164 MOVE                             R20 R21
      165 GETIMPORT                        R21 K8 [require]
      167 GETTABLEKS                       R22 R2 K15 ["Src"]
      169 GETTABLEKS                       R22 R22 K44 ["Networking"]
      171 GETTABLEKS                       R22 R22 K45 ["settingFromState"]
      173 CALL                             R21 1 1
      174 GETTABLEKS                       R22 R4 K46 ["connect"]
      176 DUPCLOSURE                       R23 K47 [PROTO_12]
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R16
      179 DUPCLOSURE                       R24 K48 [PROTO_15]
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R17
      182 CALL                             R22 2 1
      183 MOVE                             R23 R20
      184 CALL                             R22 1 1
      185 MOVE                             R20 R22
      186 SETTABLEKS                       R15 R20 K49 ["LocalizationId"]
      188 RETURN                           R20 1
