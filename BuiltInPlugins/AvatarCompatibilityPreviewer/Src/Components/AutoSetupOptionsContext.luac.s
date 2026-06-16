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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getFFlagAvatarAutosetupOptionsInput is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 LOADK                            R2 K3 ["AvatarPreviewer_SetupType"]
       10 LOADN                            R3 1
       11 CALL                             R1 2 2
       12 GETUPVAL                         R3 2
       13 LOADK                            R4 K4 ["AvatarPreviewer_AlignFrontAngle"]
       14 LOADB                            R5 0
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 2
       17 LOADK                            R5 K5 ["AvatarPreviewer_EnableAdditionalHeadProcessing2"]
       18 LOADB                            R6 1
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 2
       21 LOADK                            R6 K6 ["AvatarPreviewer_CustomHumanoid"]
       22 LOADB                            R7 0
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 2
       25 LOADK                            R7 K7 ["AvatarPreviewer_ReduceTriangles"]
       26 LOADB                            R8 0
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 2
       29 LOADK                            R8 K8 ["AvatarPreviewer_DecalToDynamicHead"]
       30 LOADB                            R9 0
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 3
       33 CALL                             R8 0 1
       34 GETUPVAL                         R9 3
       35 CALL                             R9 0 1
       36 GETUPVAL                         R10 3
       37 CALL                             R10 0 1
       38 GETUPVAL                         R11 3
       39 CALL                             R11 0 1
       40 GETUPVAL                         R12 3
       41 CALL                             R12 0 1
       42 GETUPVAL                         R13 3
       43 CALL                             R13 0 1
       44 GETUPVAL                         R14 4
       45 GETTABLEKS                       R14 R14 K9 ["useCallback"]
       47 NEWCLOSURE                       R15 P0
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R11
       50 CAPTURE                          VAL R12
       51 CAPTURE                          VAL R13
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R8
       54 NEWTABLE                         R16 0 5
       56 GETTABLEKS                       R17 R10 K10 ["increment"]
       58 GETTABLEKS                       R18 R11 K10 ["increment"]
       60 GETTABLEKS                       R19 R12 K10 ["increment"]
       62 GETTABLEKS                       R20 R13 K10 ["increment"]
       64 GETTABLEKS                       R21 R8 K10 ["increment"]
       66 SETLIST                          R16 R17 5 [1]
       68 CALL                             R14 2 1
       69 GETUPVAL                         R15 4
       70 GETTABLEKS                       R15 R15 K9 ["useCallback"]
       72 NEWCLOSURE                       R16 P1
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R8
       79 NEWTABLE                         R17 0 5
       81 GETTABLEKS                       R18 R10 K11 ["decrement"]
       83 GETTABLEKS                       R19 R11 K11 ["decrement"]
       85 GETTABLEKS                       R20 R12 K11 ["decrement"]
       87 GETTABLEKS                       R21 R13 K11 ["decrement"]
       89 GETTABLEKS                       R22 R8 K11 ["decrement"]
       91 SETLIST                          R17 R18 5 [1]
       93 CALL                             R15 2 1
       94 LOADB                            R16 0
       95 GETTABLEKS                       R17 R10 K12 ["amount"]
       97 JUMPIFNOTEQKN                    R17 K13 [0] ; [+14]
       99 GETTABLEKS                       R19 R11 K12 ["amount"]
      101 GETTABLEKS                       R20 R12 K12 ["amount"]
      103 ADD                              R18 R19 R20
      104 GETTABLEKS                       R19 R13 K12 ["amount"]
      106 ADD                              R17 R18 R19
      107 LOADN                            R18 0
      108 JUMPIFLT                         R18 R17 ; [+2]
      110 LOADB                            R16 0 +1
      111 LOADB                            R16 1
      112 MOVE                             R17 R16
      113 JUMPIFNOT                        R17 ; [+6]
      114 GETTABLEKS                       R18 R9 K12 ["amount"]
      116 JUMPIFEQKN                       R18 K13 [0] ; [+2]
      118 LOADB                            R17 0 +1
      119 LOADB                            R17 1
      120 GETUPVAL                         R18 5
      121 CALL                             R18 0 1
      122 JUMPIFNOT                        R18 ; [+27]
      123 LOADB                            R18 0
      124 GETTABLEKS                       R19 R10 K12 ["amount"]
      126 JUMPIFNOTEQKN                    R19 K13 [0] ; [+23]
      128 LOADB                            R18 0
      129 GETTABLEKS                       R19 R9 K12 ["amount"]
      131 JUMPIFNOTEQKN                    R19 K13 [0] ; [+18]
      133 LOADB                            R18 0
      134 GETTABLEKS                       R19 R11 K12 ["amount"]
      136 JUMPIFNOTEQKN                    R19 K13 [0] ; [+13]
      138 LOADB                            R18 0
      139 GETTABLEKS                       R19 R12 K12 ["amount"]
      141 JUMPIFNOTEQKN                    R19 K13 [0] ; [+8]
      143 GETTABLEKS                       R19 R13 K12 ["amount"]
      145 LOADN                            R20 0
      146 JUMPIFLT                         R20 R19 ; [+2]
      148 LOADB                            R18 0 +1
      149 LOADB                            R18 1
      150 DUPTABLE                         R19 K17 [{"shouldCreateTemplateBody", "shouldProcessAttachmentPoint", "assetClassification"}]
      151 SETTABLEKS                       R17 R19 K14 ["shouldCreateTemplateBody"]
      153 GETUPVAL                         R21 5
      154 CALL                             R21 0 1
      155 JUMPIFNOT                        R21 ; [+2]
      156 MOVE                             R20 R18
      157 JUMP                             ; [+1]
      158 LOADNIL                          R20
      159 SETTABLEKS                       R20 R19 K15 ["shouldProcessAttachmentPoint"]
      161 DUPTABLE                         R20 K24 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      162 GETTABLEKS                       R21 R10 K12 ["amount"]
      164 SETTABLEKS                       R21 R20 K18 ["bodyCount"]
      166 GETTABLEKS                       R21 R11 K12 ["amount"]
      168 SETTABLEKS                       R21 R20 K19 ["layeredCount"]
      170 GETTABLEKS                       R21 R12 K12 ["amount"]
      172 SETTABLEKS                       R21 R20 K20 ["eyeLayeredCount"]
      174 GETTABLEKS                       R21 R13 K12 ["amount"]
      176 SETTABLEKS                       R21 R20 K21 ["rigidCount"]
      178 GETTABLEKS                       R21 R9 K12 ["amount"]
      180 SETTABLEKS                       R21 R20 K22 ["avatarCount"]
      182 GETTABLEKS                       R21 R8 K12 ["amount"]
      184 SETTABLEKS                       R21 R20 K23 ["unselectedCount"]
      186 SETTABLEKS                       R20 R19 K16 ["assetClassification"]
      188 JUMPIFNOTEQKN                    R1 K25 [1] ; [+26]
      190 DUPTABLE                         R20 K32 [{"SetupType", "AlignFrontAngle", "R15Plus", "ClothingOnly", "EnableAdditionalHeadProcessing", "DecalToDynamicHead", "shouldCreateTemplateBody"}]
      191 LOADK                            R21 K33 ["Platform"]
      192 SETTABLEKS                       R21 R20 K26 ["SetupType"]
      194 GETTABLEKS                       R21 R3 K34 ["enabled"]
      196 SETTABLEKS                       R21 R20 K27 ["AlignFrontAngle"]
      198 GETTABLEKS                       R21 R5 K34 ["enabled"]
      200 SETTABLEKS                       R21 R20 K28 ["R15Plus"]
      202 SETTABLEKS                       R16 R20 K29 ["ClothingOnly"]
      204 GETTABLEKS                       R21 R4 K34 ["enabled"]
      206 SETTABLEKS                       R21 R20 K30 ["EnableAdditionalHeadProcessing"]
      208 GETTABLEKS                       R21 R7 K34 ["enabled"]
      210 SETTABLEKS                       R21 R20 K31 ["DecalToDynamicHead"]
      212 SETTABLEKS                       R17 R20 K14 ["shouldCreateTemplateBody"]
      214 JUMP                             ; [+39]
      215 JUMPIFNOTEQKN                    R1 K35 [2] ; [+34]
      217 DUPTABLE                         R20 K37 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "DecalToDynamicHead", "shouldCreateTemplateBody"}]
      218 LOADK                            R21 K38 ["Development"]
      219 SETTABLEKS                       R21 R20 K26 ["SetupType"]
      221 GETTABLEKS                       R21 R3 K34 ["enabled"]
      223 SETTABLEKS                       R21 R20 K27 ["AlignFrontAngle"]
      225 GETTABLEKS                       R21 R5 K34 ["enabled"]
      227 SETTABLEKS                       R21 R20 K28 ["R15Plus"]
      229 GETTABLEKS                       R22 R6 K34 ["enabled"]
      231 JUMPIFNOT                        R22 ; [+2]
      232 LOADK                            R21 K39 ["EverythingEnabled"]
      233 JUMP                             ; [+1]
      234 LOADK                            R21 K40 ["Unspecified"]
      235 SETTABLEKS                       R21 R20 K36 ["DecimationOptions"]
      237 SETTABLEKS                       R16 R20 K29 ["ClothingOnly"]
      239 GETTABLEKS                       R21 R4 K34 ["enabled"]
      241 SETTABLEKS                       R21 R20 K30 ["EnableAdditionalHeadProcessing"]
      243 GETTABLEKS                       R21 R7 K34 ["enabled"]
      245 SETTABLEKS                       R21 R20 K31 ["DecalToDynamicHead"]
      247 SETTABLEKS                       R17 R20 K14 ["shouldCreateTemplateBody"]
      249 JUMP                             ; [+4]
      250 DUPTABLE                         R20 K41 [{"SetupType"}]
      251 LOADK                            R21 K40 ["Unspecified"]
      252 SETTABLEKS                       R21 R20 K26 ["SetupType"]
      254 DUPTABLE                         R21 K48 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
      255 DUPTABLE                         R22 K55 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      256 SETTABLEKS                       R1 R22 K49 ["setupType"]
      258 GETTABLEKS                       R23 R3 K34 ["enabled"]
      260 SETTABLEKS                       R23 R22 K50 ["alignFrontAngle"]
      262 GETTABLEKS                       R23 R4 K34 ["enabled"]
      264 SETTABLEKS                       R23 R22 K51 ["enableAdditionalHeadProcessing"]
      266 GETTABLEKS                       R23 R5 K34 ["enabled"]
      268 SETTABLEKS                       R23 R22 K52 ["customHumanoid"]
      270 GETTABLEKS                       R23 R6 K34 ["enabled"]
      272 SETTABLEKS                       R23 R22 K53 ["reduceTriangles"]
      274 GETTABLEKS                       R23 R7 K34 ["enabled"]
      276 SETTABLEKS                       R23 R22 K54 ["decalToDynamicHead"]
      278 SETTABLEKS                       R22 R21 K42 ["value"]
      280 DUPTABLE                         R22 K56 [{"setupType"}]
      281 SETTABLEKS                       R2 R22 K49 ["setupType"]
      283 SETTABLEKS                       R22 R21 K43 ["set"]
      285 DUPTABLE                         R22 K57 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      286 GETTABLEKS                       R23 R3 K44 ["toggle"]
      288 SETTABLEKS                       R23 R22 K50 ["alignFrontAngle"]
      290 GETTABLEKS                       R23 R4 K44 ["toggle"]
      292 SETTABLEKS                       R23 R22 K51 ["enableAdditionalHeadProcessing"]
      294 GETTABLEKS                       R23 R5 K44 ["toggle"]
      296 SETTABLEKS                       R23 R22 K52 ["customHumanoid"]
      298 GETTABLEKS                       R23 R6 K44 ["toggle"]
      300 SETTABLEKS                       R23 R22 K53 ["reduceTriangles"]
      302 GETTABLEKS                       R23 R7 K44 ["toggle"]
      304 SETTABLEKS                       R23 R22 K54 ["decalToDynamicHead"]
      306 SETTABLEKS                       R22 R21 K44 ["toggle"]
      308 DUPTABLE                         R22 K60 [{"settings", "info"}]
      309 SETTABLEKS                       R20 R22 K58 ["settings"]
      311 SETTABLEKS                       R19 R22 K59 ["info"]
      313 SETTABLEKS                       R22 R21 K45 ["options"]
      315 SETTABLEKS                       R14 R21 K46 ["incrementCount"]
      317 SETTABLEKS                       R15 R21 K47 ["decrementCount"]
      319 GETUPVAL                         R22 4
      320 GETTABLEKS                       R22 R22 K61 ["createElement"]
      322 GETUPVAL                         R23 6
      323 GETTABLEKS                       R23 R23 K62 ["Provider"]
      325 DUPTABLE                         R24 K63 [{"value"}]
      326 SETTABLEKS                       R21 R24 K42 ["value"]
      328 GETTABLEKS                       R25 R0 K64 ["children"]
      330 CALL                             R22 3 -1
      331 RETURN                           R22 -1

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
       43 GETTABLEKS                       R6 R6 K13 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarAutosetupOptionsInput"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       54 GETTABLEKS                       R7 R7 K16 ["useIncrementedState"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Src"]
       61 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K17 ["usePluginSetting"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K8 ["Src"]
       70 GETTABLEKS                       R9 R9 K15 ["Hooks"]
       72 GETTABLEKS                       R9 R9 K18 ["useTogglePluginSetting"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K8 ["Src"]
       79 GETTABLEKS                       R10 R10 K13 ["Flags"]
       81 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarPreviewerProcessRigidOnly"]
       83 CALL                             R9 1 1
       84 DUPTABLE                         R10 K26 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
       85 DUPTABLE                         R11 K28 [{"setupType"}]
       86 LOADN                            R12 0
       87 SETTABLEKS                       R12 R11 K27 ["setupType"]
       89 SETTABLEKS                       R11 R10 K20 ["value"]
       91 DUPTABLE                         R11 K28 [{"setupType"}]
       92 MOVE                             R12 R4
       93 LOADK                            R13 K29 ["setSetupType"]
       94 CALL                             R12 1 1
       95 SETTABLEKS                       R12 R11 K27 ["setupType"]
       97 SETTABLEKS                       R11 R10 K21 ["set"]
       99 DUPTABLE                         R11 K35 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      100 MOVE                             R12 R4
      101 LOADK                            R13 K30 ["alignFrontAngle"]
      102 CALL                             R12 1 1
      103 SETTABLEKS                       R12 R11 K30 ["alignFrontAngle"]
      105 MOVE                             R12 R4
      106 LOADK                            R13 K31 ["enableAdditionalHeadProcessing"]
      107 CALL                             R12 1 1
      108 SETTABLEKS                       R12 R11 K31 ["enableAdditionalHeadProcessing"]
      110 MOVE                             R12 R4
      111 LOADK                            R13 K36 ["toggleCustomHumanoid"]
      112 CALL                             R12 1 1
      113 SETTABLEKS                       R12 R11 K32 ["customHumanoid"]
      115 MOVE                             R12 R4
      116 LOADK                            R13 K37 ["toggleReduceTriangles"]
      117 CALL                             R12 1 1
      118 SETTABLEKS                       R12 R11 K33 ["reduceTriangles"]
      120 MOVE                             R12 R4
      121 LOADK                            R13 K34 ["decalToDynamicHead"]
      122 CALL                             R12 1 1
      123 SETTABLEKS                       R12 R11 K34 ["decalToDynamicHead"]
      125 SETTABLEKS                       R11 R10 K22 ["toggle"]
      127 DUPTABLE                         R11 K40 [{"settings", "info"}]
      128 DUPTABLE                         R12 K42 [{"SetupType"}]
      129 LOADK                            R13 K43 ["Unspecified"]
      130 SETTABLEKS                       R13 R12 K41 ["SetupType"]
      132 SETTABLEKS                       R12 R11 K38 ["settings"]
      134 DUPTABLE                         R12 K45 [{"assetClassification"}]
      135 DUPTABLE                         R13 K52 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      136 LOADN                            R14 0
      137 SETTABLEKS                       R14 R13 K46 ["bodyCount"]
      139 LOADN                            R14 0
      140 SETTABLEKS                       R14 R13 K47 ["layeredCount"]
      142 LOADN                            R14 0
      143 SETTABLEKS                       R14 R13 K48 ["eyeLayeredCount"]
      145 LOADN                            R14 0
      146 SETTABLEKS                       R14 R13 K49 ["rigidCount"]
      148 LOADN                            R14 0
      149 SETTABLEKS                       R14 R13 K50 ["avatarCount"]
      151 LOADN                            R14 0
      152 SETTABLEKS                       R14 R13 K51 ["unselectedCount"]
      154 SETTABLEKS                       R13 R12 K44 ["assetClassification"]
      156 SETTABLEKS                       R12 R11 K39 ["info"]
      158 SETTABLEKS                       R11 R10 K23 ["options"]
      160 MOVE                             R11 R4
      161 LOADK                            R12 K24 ["incrementCount"]
      162 CALL                             R11 1 1
      163 SETTABLEKS                       R11 R10 K24 ["incrementCount"]
      165 MOVE                             R11 R4
      166 LOADK                            R12 K25 ["decrementCount"]
      167 CALL                             R11 1 1
      168 SETTABLEKS                       R11 R10 K25 ["decrementCount"]
      170 GETTABLEKS                       R11 R1 K53 ["createContext"]
      172 MOVE                             R12 R10
      173 CALL                             R11 1 1
      174 DUPCLOSURE                       R12 K54 [PROTO_2]
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R11
      182 DUPTABLE                         R13 K57 [{"Context", "Provider"}]
      183 SETTABLEKS                       R11 R13 K55 ["Context"]
      185 SETTABLEKS                       R12 R13 K56 ["Provider"]
      187 RETURN                           R13 1
