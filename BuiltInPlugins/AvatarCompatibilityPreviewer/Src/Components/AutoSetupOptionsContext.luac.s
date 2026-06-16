PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Body"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["increment"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Layered"] ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["increment"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R0 K3 ["EyeLayered"] ; [+6]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K1 ["increment"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R0 K4 ["Rigid"] ; [+6]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K1 ["increment"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 JUMPIFNOTEQKS                    R0 K5 ["Avatar"] ; [+6]
       30 GETUPVAL                         R1 4
       31 GETTABLEKS                       R1 R1 K1 ["increment"]
       33 CALL                             R1 0 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 5
       36 GETTABLEKS                       R1 R1 K1 ["increment"]
       38 CALL                             R1 0 0
       39 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["Body"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["decrement"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Layered"] ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["decrement"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R0 K3 ["EyeLayered"] ; [+6]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K1 ["decrement"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R0 K4 ["Rigid"] ; [+6]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K1 ["decrement"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 JUMPIFNOTEQKS                    R0 K5 ["Avatar"] ; [+6]
       30 GETUPVAL                         R1 4
       31 GETTABLEKS                       R1 R1 K1 ["decrement"]
       33 CALL                             R1 0 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 5
       36 GETTABLEKS                       R1 R1 K1 ["decrement"]
       38 CALL                             R1 0 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["AvatarPreviewer_SetupType"]
        2 LOADN                            R3 1
        3 CALL                             R1 2 2
        4 GETUPVAL                         R3 1
        5 LOADK                            R4 K1 ["AvatarPreviewer_AlignFrontAngle"]
        6 LOADB                            R5 0
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 LOADK                            R5 K2 ["AvatarPreviewer_EnableAdditionalHeadProcessing2"]
       10 LOADB                            R6 1
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 1
       13 LOADK                            R6 K3 ["AvatarPreviewer_CustomHumanoid"]
       14 LOADB                            R7 0
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 1
       17 LOADK                            R7 K4 ["AvatarPreviewer_ReduceTriangles"]
       18 LOADB                            R8 0
       19 CALL                             R6 2 1
       20 GETUPVAL                         R7 1
       21 LOADK                            R8 K5 ["AvatarPreviewer_DecalToDynamicHead"]
       22 LOADB                            R9 0
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 2
       25 CALL                             R8 0 1
       26 GETUPVAL                         R9 2
       27 CALL                             R9 0 1
       28 GETUPVAL                         R10 2
       29 CALL                             R10 0 1
       30 GETUPVAL                         R11 2
       31 CALL                             R11 0 1
       32 GETUPVAL                         R12 2
       33 CALL                             R12 0 1
       34 GETUPVAL                         R13 2
       35 CALL                             R13 0 1
       36 GETUPVAL                         R14 3
       37 GETTABLEKS                       R14 R14 K6 ["useCallback"]
       39 NEWCLOSURE                       R15 P0
       40 CAPTURE                          VAL R10
       41 CAPTURE                          VAL R11
       42 CAPTURE                          VAL R12
       43 CAPTURE                          VAL R13
       44 CAPTURE                          VAL R9
       45 CAPTURE                          VAL R8
       46 NEWTABLE                         R16 0 5
       48 GETTABLEKS                       R17 R10 K7 ["increment"]
       50 GETTABLEKS                       R18 R11 K7 ["increment"]
       52 GETTABLEKS                       R19 R12 K7 ["increment"]
       54 GETTABLEKS                       R20 R13 K7 ["increment"]
       56 GETTABLEKS                       R21 R8 K7 ["increment"]
       58 SETLIST                          R16 R17 5 [1]
       60 CALL                             R14 2 1
       61 GETUPVAL                         R15 3
       62 GETTABLEKS                       R15 R15 K6 ["useCallback"]
       64 NEWCLOSURE                       R16 P1
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 NEWTABLE                         R17 0 5
       73 GETTABLEKS                       R18 R10 K8 ["decrement"]
       75 GETTABLEKS                       R19 R11 K8 ["decrement"]
       77 GETTABLEKS                       R20 R12 K8 ["decrement"]
       79 GETTABLEKS                       R21 R13 K8 ["decrement"]
       81 GETTABLEKS                       R22 R8 K8 ["decrement"]
       83 SETLIST                          R17 R18 5 [1]
       85 CALL                             R15 2 1
       86 LOADB                            R16 0
       87 GETTABLEKS                       R17 R10 K9 ["amount"]
       89 JUMPIFNOTEQKN                    R17 K10 [0] ; [+14]
       91 GETTABLEKS                       R19 R11 K9 ["amount"]
       93 GETTABLEKS                       R20 R12 K9 ["amount"]
       95 ADD                              R18 R19 R20
       96 GETTABLEKS                       R19 R13 K9 ["amount"]
       98 ADD                              R17 R18 R19
       99 LOADN                            R18 0
      100 JUMPIFLT                         R18 R17 ; [+2]
      102 LOADB                            R16 0 +1
      103 LOADB                            R16 1
      104 MOVE                             R17 R16
      105 JUMPIFNOT                        R17 ; [+6]
      106 GETTABLEKS                       R18 R9 K9 ["amount"]
      108 JUMPIFEQKN                       R18 K10 [0] ; [+2]
      110 LOADB                            R17 0 +1
      111 LOADB                            R17 1
      112 GETUPVAL                         R18 4
      113 CALL                             R18 0 1
      114 JUMPIFNOT                        R18 ; [+27]
      115 LOADB                            R18 0
      116 GETTABLEKS                       R19 R10 K9 ["amount"]
      118 JUMPIFNOTEQKN                    R19 K10 [0] ; [+23]
      120 LOADB                            R18 0
      121 GETTABLEKS                       R19 R9 K9 ["amount"]
      123 JUMPIFNOTEQKN                    R19 K10 [0] ; [+18]
      125 LOADB                            R18 0
      126 GETTABLEKS                       R19 R11 K9 ["amount"]
      128 JUMPIFNOTEQKN                    R19 K10 [0] ; [+13]
      130 LOADB                            R18 0
      131 GETTABLEKS                       R19 R12 K9 ["amount"]
      133 JUMPIFNOTEQKN                    R19 K10 [0] ; [+8]
      135 GETTABLEKS                       R19 R13 K9 ["amount"]
      137 LOADN                            R20 0
      138 JUMPIFLT                         R20 R19 ; [+2]
      140 LOADB                            R18 0 +1
      141 LOADB                            R18 1
      142 DUPTABLE                         R19 K14 [{"shouldCreateTemplateBody", "shouldProcessAttachmentPoint", "assetClassification"}]
      143 SETTABLEKS                       R17 R19 K11 ["shouldCreateTemplateBody"]
      145 GETUPVAL                         R21 4
      146 CALL                             R21 0 1
      147 JUMPIFNOT                        R21 ; [+2]
      148 MOVE                             R20 R18
      149 JUMP                             ; [+1]
      150 LOADNIL                          R20
      151 SETTABLEKS                       R20 R19 K12 ["shouldProcessAttachmentPoint"]
      153 DUPTABLE                         R20 K21 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      154 GETTABLEKS                       R21 R10 K9 ["amount"]
      156 SETTABLEKS                       R21 R20 K15 ["bodyCount"]
      158 GETTABLEKS                       R21 R11 K9 ["amount"]
      160 SETTABLEKS                       R21 R20 K16 ["layeredCount"]
      162 GETTABLEKS                       R21 R12 K9 ["amount"]
      164 SETTABLEKS                       R21 R20 K17 ["eyeLayeredCount"]
      166 GETTABLEKS                       R21 R13 K9 ["amount"]
      168 SETTABLEKS                       R21 R20 K18 ["rigidCount"]
      170 GETTABLEKS                       R21 R9 K9 ["amount"]
      172 SETTABLEKS                       R21 R20 K19 ["avatarCount"]
      174 GETTABLEKS                       R21 R8 K9 ["amount"]
      176 SETTABLEKS                       R21 R20 K20 ["unselectedCount"]
      178 SETTABLEKS                       R20 R19 K13 ["assetClassification"]
      180 JUMPIFNOTEQKN                    R1 K22 [1] ; [+26]
      182 DUPTABLE                         R20 K29 [{"SetupType", "AlignFrontAngle", "R15Plus", "ClothingOnly", "EnableAdditionalHeadProcessing", "DecalToDynamicHead", "shouldCreateTemplateBody"}]
      183 LOADK                            R21 K30 ["Platform"]
      184 SETTABLEKS                       R21 R20 K23 ["SetupType"]
      186 GETTABLEKS                       R21 R3 K31 ["enabled"]
      188 SETTABLEKS                       R21 R20 K24 ["AlignFrontAngle"]
      190 GETTABLEKS                       R21 R5 K31 ["enabled"]
      192 SETTABLEKS                       R21 R20 K25 ["R15Plus"]
      194 SETTABLEKS                       R16 R20 K26 ["ClothingOnly"]
      196 GETTABLEKS                       R21 R4 K31 ["enabled"]
      198 SETTABLEKS                       R21 R20 K27 ["EnableAdditionalHeadProcessing"]
      200 GETTABLEKS                       R21 R7 K31 ["enabled"]
      202 SETTABLEKS                       R21 R20 K28 ["DecalToDynamicHead"]
      204 SETTABLEKS                       R17 R20 K11 ["shouldCreateTemplateBody"]
      206 JUMP                             ; [+39]
      207 JUMPIFNOTEQKN                    R1 K32 [2] ; [+34]
      209 DUPTABLE                         R20 K34 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "DecalToDynamicHead", "shouldCreateTemplateBody"}]
      210 LOADK                            R21 K35 ["Development"]
      211 SETTABLEKS                       R21 R20 K23 ["SetupType"]
      213 GETTABLEKS                       R21 R3 K31 ["enabled"]
      215 SETTABLEKS                       R21 R20 K24 ["AlignFrontAngle"]
      217 GETTABLEKS                       R21 R5 K31 ["enabled"]
      219 SETTABLEKS                       R21 R20 K25 ["R15Plus"]
      221 GETTABLEKS                       R22 R6 K31 ["enabled"]
      223 JUMPIFNOT                        R22 ; [+2]
      224 LOADK                            R21 K36 ["EverythingEnabled"]
      225 JUMP                             ; [+1]
      226 LOADK                            R21 K37 ["Unspecified"]
      227 SETTABLEKS                       R21 R20 K33 ["DecimationOptions"]
      229 SETTABLEKS                       R16 R20 K26 ["ClothingOnly"]
      231 GETTABLEKS                       R21 R4 K31 ["enabled"]
      233 SETTABLEKS                       R21 R20 K27 ["EnableAdditionalHeadProcessing"]
      235 GETTABLEKS                       R21 R7 K31 ["enabled"]
      237 SETTABLEKS                       R21 R20 K28 ["DecalToDynamicHead"]
      239 SETTABLEKS                       R17 R20 K11 ["shouldCreateTemplateBody"]
      241 JUMP                             ; [+4]
      242 DUPTABLE                         R20 K38 [{"SetupType"}]
      243 LOADK                            R21 K37 ["Unspecified"]
      244 SETTABLEKS                       R21 R20 K23 ["SetupType"]
      246 DUPTABLE                         R21 K45 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
      247 DUPTABLE                         R22 K52 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      248 SETTABLEKS                       R1 R22 K46 ["setupType"]
      250 GETTABLEKS                       R23 R3 K31 ["enabled"]
      252 SETTABLEKS                       R23 R22 K47 ["alignFrontAngle"]
      254 GETTABLEKS                       R23 R4 K31 ["enabled"]
      256 SETTABLEKS                       R23 R22 K48 ["enableAdditionalHeadProcessing"]
      258 GETTABLEKS                       R23 R5 K31 ["enabled"]
      260 SETTABLEKS                       R23 R22 K49 ["customHumanoid"]
      262 GETTABLEKS                       R23 R6 K31 ["enabled"]
      264 SETTABLEKS                       R23 R22 K50 ["reduceTriangles"]
      266 GETTABLEKS                       R23 R7 K31 ["enabled"]
      268 SETTABLEKS                       R23 R22 K51 ["decalToDynamicHead"]
      270 SETTABLEKS                       R22 R21 K39 ["value"]
      272 DUPTABLE                         R22 K53 [{"setupType"}]
      273 SETTABLEKS                       R2 R22 K46 ["setupType"]
      275 SETTABLEKS                       R22 R21 K40 ["set"]
      277 DUPTABLE                         R22 K54 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      278 GETTABLEKS                       R23 R3 K41 ["toggle"]
      280 SETTABLEKS                       R23 R22 K47 ["alignFrontAngle"]
      282 GETTABLEKS                       R23 R4 K41 ["toggle"]
      284 SETTABLEKS                       R23 R22 K48 ["enableAdditionalHeadProcessing"]
      286 GETTABLEKS                       R23 R5 K41 ["toggle"]
      288 SETTABLEKS                       R23 R22 K49 ["customHumanoid"]
      290 GETTABLEKS                       R23 R6 K41 ["toggle"]
      292 SETTABLEKS                       R23 R22 K50 ["reduceTriangles"]
      294 GETTABLEKS                       R23 R7 K41 ["toggle"]
      296 SETTABLEKS                       R23 R22 K51 ["decalToDynamicHead"]
      298 SETTABLEKS                       R22 R21 K41 ["toggle"]
      300 DUPTABLE                         R22 K57 [{"settings", "info"}]
      301 SETTABLEKS                       R20 R22 K55 ["settings"]
      303 SETTABLEKS                       R19 R22 K56 ["info"]
      305 SETTABLEKS                       R22 R21 K42 ["options"]
      307 SETTABLEKS                       R14 R21 K43 ["incrementCount"]
      309 SETTABLEKS                       R15 R21 K44 ["decrementCount"]
      311 GETUPVAL                         R22 3
      312 GETTABLEKS                       R22 R22 K58 ["createElement"]
      314 GETUPVAL                         R23 5
      315 GETTABLEKS                       R23 R23 K59 ["Provider"]
      317 DUPTABLE                         R24 K60 [{"value"}]
      318 SETTABLEKS                       R21 R24 K39 ["value"]
      320 GETTABLEKS                       R25 R0 K61 ["children"]
      322 CALL                             R22 3 -1
      323 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["AssetClassificationUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["createUnimplemented"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K14 ["useIncrementedState"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       54 GETTABLEKS                       R7 R7 K15 ["usePluginSetting"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Src"]
       61 GETTABLEKS                       R8 R8 K13 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K16 ["useTogglePluginSetting"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K8 ["Src"]
       70 GETTABLEKS                       R9 R9 K17 ["Flags"]
       72 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarPreviewerProcessRigidOnly"]
       74 CALL                             R8 1 1
       75 DUPTABLE                         R9 K25 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
       76 DUPTABLE                         R10 K27 [{"setupType"}]
       77 LOADN                            R11 0
       78 SETTABLEKS                       R11 R10 K26 ["setupType"]
       80 SETTABLEKS                       R10 R9 K19 ["value"]
       82 DUPTABLE                         R10 K27 [{"setupType"}]
       83 MOVE                             R11 R4
       84 LOADK                            R12 K28 ["setSetupType"]
       85 CALL                             R11 1 1
       86 SETTABLEKS                       R11 R10 K26 ["setupType"]
       88 SETTABLEKS                       R10 R9 K20 ["set"]
       90 DUPTABLE                         R10 K34 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
       91 MOVE                             R11 R4
       92 LOADK                            R12 K29 ["alignFrontAngle"]
       93 CALL                             R11 1 1
       94 SETTABLEKS                       R11 R10 K29 ["alignFrontAngle"]
       96 MOVE                             R11 R4
       97 LOADK                            R12 K30 ["enableAdditionalHeadProcessing"]
       98 CALL                             R11 1 1
       99 SETTABLEKS                       R11 R10 K30 ["enableAdditionalHeadProcessing"]
      101 MOVE                             R11 R4
      102 LOADK                            R12 K35 ["toggleCustomHumanoid"]
      103 CALL                             R11 1 1
      104 SETTABLEKS                       R11 R10 K31 ["customHumanoid"]
      106 MOVE                             R11 R4
      107 LOADK                            R12 K36 ["toggleReduceTriangles"]
      108 CALL                             R11 1 1
      109 SETTABLEKS                       R11 R10 K32 ["reduceTriangles"]
      111 MOVE                             R11 R4
      112 LOADK                            R12 K33 ["decalToDynamicHead"]
      113 CALL                             R11 1 1
      114 SETTABLEKS                       R11 R10 K33 ["decalToDynamicHead"]
      116 SETTABLEKS                       R10 R9 K21 ["toggle"]
      118 DUPTABLE                         R10 K39 [{"settings", "info"}]
      119 DUPTABLE                         R11 K41 [{"SetupType"}]
      120 LOADK                            R12 K42 ["Unspecified"]
      121 SETTABLEKS                       R12 R11 K40 ["SetupType"]
      123 SETTABLEKS                       R11 R10 K37 ["settings"]
      125 DUPTABLE                         R11 K44 [{"assetClassification"}]
      126 DUPTABLE                         R12 K51 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      127 LOADN                            R13 0
      128 SETTABLEKS                       R13 R12 K45 ["bodyCount"]
      130 LOADN                            R13 0
      131 SETTABLEKS                       R13 R12 K46 ["layeredCount"]
      133 LOADN                            R13 0
      134 SETTABLEKS                       R13 R12 K47 ["eyeLayeredCount"]
      136 LOADN                            R13 0
      137 SETTABLEKS                       R13 R12 K48 ["rigidCount"]
      139 LOADN                            R13 0
      140 SETTABLEKS                       R13 R12 K49 ["avatarCount"]
      142 LOADN                            R13 0
      143 SETTABLEKS                       R13 R12 K50 ["unselectedCount"]
      145 SETTABLEKS                       R12 R11 K43 ["assetClassification"]
      147 SETTABLEKS                       R11 R10 K38 ["info"]
      149 SETTABLEKS                       R10 R9 K22 ["options"]
      151 MOVE                             R10 R4
      152 LOADK                            R11 K23 ["incrementCount"]
      153 CALL                             R10 1 1
      154 SETTABLEKS                       R10 R9 K23 ["incrementCount"]
      156 MOVE                             R10 R4
      157 LOADK                            R11 K24 ["decrementCount"]
      158 CALL                             R10 1 1
      159 SETTABLEKS                       R10 R9 K24 ["decrementCount"]
      161 GETTABLEKS                       R10 R1 K52 ["createContext"]
      163 MOVE                             R11 R9
      164 CALL                             R10 1 1
      165 DUPCLOSURE                       R11 K53 [PROTO_2]
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R10
      172 DUPTABLE                         R12 K56 [{"Context", "Provider"}]
      173 SETTABLEKS                       R10 R12 K54 ["Context"]
      175 SETTABLEKS                       R11 R12 K55 ["Provider"]
      177 RETURN                           R12 1
