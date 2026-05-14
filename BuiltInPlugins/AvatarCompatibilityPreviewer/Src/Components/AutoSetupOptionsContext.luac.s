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
       16 GETUPVAL                         R5 3
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETUPVAL                         R4 2
       19 LOADK                            R5 K5 ["AvatarPreviewer_EnableAdditionalHeadProcessing2"]
       20 LOADB                            R6 1
       21 CALL                             R4 2 1
       22 JUMP                             ; [+4]
       23 GETUPVAL                         R4 2
       24 LOADK                            R5 K6 ["AvatarPreviewer_EnableAdditionalHeadProcessing"]
       25 LOADB                            R6 0
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 2
       28 LOADK                            R6 K7 ["AvatarPreviewer_CustomHumanoid"]
       29 LOADB                            R7 0
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 2
       32 LOADK                            R7 K8 ["AvatarPreviewer_ReduceTriangles"]
       33 LOADB                            R8 0
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 2
       36 LOADK                            R8 K9 ["AvatarPreviewer_DecalToDynamicHead"]
       37 LOADB                            R9 0
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 4
       40 CALL                             R8 0 1
       41 GETUPVAL                         R9 4
       42 CALL                             R9 0 1
       43 GETUPVAL                         R10 4
       44 CALL                             R10 0 1
       45 GETUPVAL                         R11 4
       46 CALL                             R11 0 1
       47 GETUPVAL                         R12 4
       48 CALL                             R12 0 1
       49 GETUPVAL                         R13 4
       50 CALL                             R13 0 1
       51 GETUPVAL                         R14 5
       52 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       54 NEWCLOSURE                       R15 P0
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R12
       58 CAPTURE                          VAL R13
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 NEWTABLE                         R16 0 5
       63 GETTABLEKS                       R17 R10 K11 ["increment"]
       65 GETTABLEKS                       R18 R11 K11 ["increment"]
       67 GETTABLEKS                       R19 R12 K11 ["increment"]
       69 GETTABLEKS                       R20 R13 K11 ["increment"]
       71 GETTABLEKS                       R21 R8 K11 ["increment"]
       73 SETLIST                          R16 R17 5 [1]
       75 CALL                             R14 2 1
       76 GETUPVAL                         R15 5
       77 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       79 NEWCLOSURE                       R16 P1
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R8
       86 NEWTABLE                         R17 0 5
       88 GETTABLEKS                       R18 R10 K12 ["decrement"]
       90 GETTABLEKS                       R19 R11 K12 ["decrement"]
       92 GETTABLEKS                       R20 R12 K12 ["decrement"]
       94 GETTABLEKS                       R21 R13 K12 ["decrement"]
       96 GETTABLEKS                       R22 R8 K12 ["decrement"]
       98 SETLIST                          R17 R18 5 [1]
      100 CALL                             R15 2 1
      101 LOADB                            R16 0
      102 GETTABLEKS                       R17 R10 K13 ["amount"]
      104 JUMPIFNOTEQKN                    R17 K14 [0] ; [+14]
      106 GETTABLEKS                       R19 R11 K13 ["amount"]
      108 GETTABLEKS                       R20 R12 K13 ["amount"]
      110 ADD                              R18 R19 R20
      111 GETTABLEKS                       R19 R13 K13 ["amount"]
      113 ADD                              R17 R18 R19
      114 LOADN                            R18 0
      115 JUMPIFLT                         R18 R17 ; [+2]
      117 LOADB                            R16 0 +1
      118 LOADB                            R16 1
      119 MOVE                             R17 R16
      120 JUMPIFNOT                        R17 ; [+6]
      121 GETTABLEKS                       R18 R9 K13 ["amount"]
      123 JUMPIFEQKN                       R18 K14 [0] ; [+2]
      125 LOADB                            R17 0 +1
      126 LOADB                            R17 1
      127 GETUPVAL                         R18 6
      128 CALL                             R18 0 1
      129 JUMPIFNOT                        R18 ; [+27]
      130 LOADB                            R18 0
      131 GETTABLEKS                       R19 R10 K13 ["amount"]
      133 JUMPIFNOTEQKN                    R19 K14 [0] ; [+23]
      135 LOADB                            R18 0
      136 GETTABLEKS                       R19 R9 K13 ["amount"]
      138 JUMPIFNOTEQKN                    R19 K14 [0] ; [+18]
      140 LOADB                            R18 0
      141 GETTABLEKS                       R19 R11 K13 ["amount"]
      143 JUMPIFNOTEQKN                    R19 K14 [0] ; [+13]
      145 LOADB                            R18 0
      146 GETTABLEKS                       R19 R12 K13 ["amount"]
      148 JUMPIFNOTEQKN                    R19 K14 [0] ; [+8]
      150 GETTABLEKS                       R19 R13 K13 ["amount"]
      152 LOADN                            R20 0
      153 JUMPIFLT                         R20 R19 ; [+2]
      155 LOADB                            R18 0 +1
      156 LOADB                            R18 1
      157 DUPTABLE                         R19 K18 [{"shouldCreateTemplateBody", "shouldProcessAttachmentPoint", "assetClassification"}]
      158 SETTABLEKS                       R17 R19 K15 ["shouldCreateTemplateBody"]
      160 GETUPVAL                         R21 6
      161 CALL                             R21 0 1
      162 JUMPIFNOT                        R21 ; [+2]
      163 MOVE                             R20 R18
      164 JUMP                             ; [+1]
      165 LOADNIL                          R20
      166 SETTABLEKS                       R20 R19 K16 ["shouldProcessAttachmentPoint"]
      168 DUPTABLE                         R20 K25 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      169 GETTABLEKS                       R21 R10 K13 ["amount"]
      171 SETTABLEKS                       R21 R20 K19 ["bodyCount"]
      173 GETTABLEKS                       R21 R11 K13 ["amount"]
      175 SETTABLEKS                       R21 R20 K20 ["layeredCount"]
      177 GETTABLEKS                       R21 R12 K13 ["amount"]
      179 SETTABLEKS                       R21 R20 K21 ["eyeLayeredCount"]
      181 GETTABLEKS                       R21 R13 K13 ["amount"]
      183 SETTABLEKS                       R21 R20 K22 ["rigidCount"]
      185 GETTABLEKS                       R21 R9 K13 ["amount"]
      187 SETTABLEKS                       R21 R20 K23 ["avatarCount"]
      189 GETTABLEKS                       R21 R8 K13 ["amount"]
      191 SETTABLEKS                       R21 R20 K24 ["unselectedCount"]
      193 SETTABLEKS                       R20 R19 K17 ["assetClassification"]
      195 JUMPIFNOTEQKN                    R1 K26 [1] ; [+26]
      197 DUPTABLE                         R20 K33 [{"SetupType", "AlignFrontAngle", "R15Plus", "ClothingOnly", "EnableAdditionalHeadProcessing", "DecalToDynamicHead", "shouldCreateTemplateBody"}]
      198 LOADK                            R21 K34 ["Platform"]
      199 SETTABLEKS                       R21 R20 K27 ["SetupType"]
      201 GETTABLEKS                       R21 R3 K35 ["enabled"]
      203 SETTABLEKS                       R21 R20 K28 ["AlignFrontAngle"]
      205 GETTABLEKS                       R21 R5 K35 ["enabled"]
      207 SETTABLEKS                       R21 R20 K29 ["R15Plus"]
      209 SETTABLEKS                       R16 R20 K30 ["ClothingOnly"]
      211 GETTABLEKS                       R21 R4 K35 ["enabled"]
      213 SETTABLEKS                       R21 R20 K31 ["EnableAdditionalHeadProcessing"]
      215 GETTABLEKS                       R21 R7 K35 ["enabled"]
      217 SETTABLEKS                       R21 R20 K32 ["DecalToDynamicHead"]
      219 SETTABLEKS                       R17 R20 K15 ["shouldCreateTemplateBody"]
      221 JUMP                             ; [+39]
      222 JUMPIFNOTEQKN                    R1 K36 [2] ; [+34]
      224 DUPTABLE                         R20 K38 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "DecalToDynamicHead", "shouldCreateTemplateBody"}]
      225 LOADK                            R21 K39 ["Development"]
      226 SETTABLEKS                       R21 R20 K27 ["SetupType"]
      228 GETTABLEKS                       R21 R3 K35 ["enabled"]
      230 SETTABLEKS                       R21 R20 K28 ["AlignFrontAngle"]
      232 GETTABLEKS                       R21 R5 K35 ["enabled"]
      234 SETTABLEKS                       R21 R20 K29 ["R15Plus"]
      236 GETTABLEKS                       R22 R6 K35 ["enabled"]
      238 JUMPIFNOT                        R22 ; [+2]
      239 LOADK                            R21 K40 ["EverythingEnabled"]
      240 JUMP                             ; [+1]
      241 LOADK                            R21 K41 ["Unspecified"]
      242 SETTABLEKS                       R21 R20 K37 ["DecimationOptions"]
      244 SETTABLEKS                       R16 R20 K30 ["ClothingOnly"]
      246 GETTABLEKS                       R21 R4 K35 ["enabled"]
      248 SETTABLEKS                       R21 R20 K31 ["EnableAdditionalHeadProcessing"]
      250 GETTABLEKS                       R21 R7 K35 ["enabled"]
      252 SETTABLEKS                       R21 R20 K32 ["DecalToDynamicHead"]
      254 SETTABLEKS                       R17 R20 K15 ["shouldCreateTemplateBody"]
      256 JUMP                             ; [+4]
      257 DUPTABLE                         R20 K42 [{"SetupType"}]
      258 LOADK                            R21 K41 ["Unspecified"]
      259 SETTABLEKS                       R21 R20 K27 ["SetupType"]
      261 DUPTABLE                         R21 K49 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
      262 DUPTABLE                         R22 K56 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      263 SETTABLEKS                       R1 R22 K50 ["setupType"]
      265 GETTABLEKS                       R23 R3 K35 ["enabled"]
      267 SETTABLEKS                       R23 R22 K51 ["alignFrontAngle"]
      269 GETTABLEKS                       R23 R4 K35 ["enabled"]
      271 SETTABLEKS                       R23 R22 K52 ["enableAdditionalHeadProcessing"]
      273 GETTABLEKS                       R23 R5 K35 ["enabled"]
      275 SETTABLEKS                       R23 R22 K53 ["customHumanoid"]
      277 GETTABLEKS                       R23 R6 K35 ["enabled"]
      279 SETTABLEKS                       R23 R22 K54 ["reduceTriangles"]
      281 GETTABLEKS                       R23 R7 K35 ["enabled"]
      283 SETTABLEKS                       R23 R22 K55 ["decalToDynamicHead"]
      285 SETTABLEKS                       R22 R21 K43 ["value"]
      287 DUPTABLE                         R22 K57 [{"setupType"}]
      288 SETTABLEKS                       R2 R22 K50 ["setupType"]
      290 SETTABLEKS                       R22 R21 K44 ["set"]
      292 DUPTABLE                         R22 K58 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      293 GETTABLEKS                       R23 R3 K45 ["toggle"]
      295 SETTABLEKS                       R23 R22 K51 ["alignFrontAngle"]
      297 GETTABLEKS                       R23 R4 K45 ["toggle"]
      299 SETTABLEKS                       R23 R22 K52 ["enableAdditionalHeadProcessing"]
      301 GETTABLEKS                       R23 R5 K45 ["toggle"]
      303 SETTABLEKS                       R23 R22 K53 ["customHumanoid"]
      305 GETTABLEKS                       R23 R6 K45 ["toggle"]
      307 SETTABLEKS                       R23 R22 K54 ["reduceTriangles"]
      309 GETTABLEKS                       R23 R7 K45 ["toggle"]
      311 SETTABLEKS                       R23 R22 K55 ["decalToDynamicHead"]
      313 SETTABLEKS                       R22 R21 K45 ["toggle"]
      315 DUPTABLE                         R22 K61 [{"settings", "info"}]
      316 SETTABLEKS                       R20 R22 K59 ["settings"]
      318 SETTABLEKS                       R19 R22 K60 ["info"]
      320 SETTABLEKS                       R22 R21 K46 ["options"]
      322 SETTABLEKS                       R14 R21 K47 ["incrementCount"]
      324 SETTABLEKS                       R15 R21 K48 ["decrementCount"]
      326 GETUPVAL                         R22 5
      327 GETTABLEKS                       R22 R22 K62 ["createElement"]
      329 GETUPVAL                         R23 7
      330 GETTABLEKS                       R23 R23 K63 ["Provider"]
      332 DUPTABLE                         R24 K64 [{"value"}]
      333 SETTABLEKS                       R21 R24 K43 ["value"]
      335 GETTABLEKS                       R25 R0 K65 ["children"]
      337 CALL                             R22 3 -1
      338 RETURN                           R22 -1

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
       84 GETIMPORT                        R10 K21 [game]
       86 LOADK                            R12 K22 ["AvatarPreviewerDefaultHeadProcessingSetting"]
       87 LOADB                            R13 0
       88 NAMECALL                         R10 R10 K23 ["DefineFastFlag"]
       90 CALL                             R10 3 1
       91 DUPTABLE                         R11 K30 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
       92 DUPTABLE                         R12 K32 [{"setupType"}]
       93 LOADN                            R13 0
       94 SETTABLEKS                       R13 R12 K31 ["setupType"]
       96 SETTABLEKS                       R12 R11 K24 ["value"]
       98 DUPTABLE                         R12 K32 [{"setupType"}]
       99 MOVE                             R13 R4
      100 LOADK                            R14 K33 ["setSetupType"]
      101 CALL                             R13 1 1
      102 SETTABLEKS                       R13 R12 K31 ["setupType"]
      104 SETTABLEKS                       R12 R11 K25 ["set"]
      106 DUPTABLE                         R12 K39 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      107 MOVE                             R13 R4
      108 LOADK                            R14 K34 ["alignFrontAngle"]
      109 CALL                             R13 1 1
      110 SETTABLEKS                       R13 R12 K34 ["alignFrontAngle"]
      112 MOVE                             R13 R4
      113 LOADK                            R14 K35 ["enableAdditionalHeadProcessing"]
      114 CALL                             R13 1 1
      115 SETTABLEKS                       R13 R12 K35 ["enableAdditionalHeadProcessing"]
      117 MOVE                             R13 R4
      118 LOADK                            R14 K40 ["toggleCustomHumanoid"]
      119 CALL                             R13 1 1
      120 SETTABLEKS                       R13 R12 K36 ["customHumanoid"]
      122 MOVE                             R13 R4
      123 LOADK                            R14 K41 ["toggleReduceTriangles"]
      124 CALL                             R13 1 1
      125 SETTABLEKS                       R13 R12 K37 ["reduceTriangles"]
      127 MOVE                             R13 R4
      128 LOADK                            R14 K38 ["decalToDynamicHead"]
      129 CALL                             R13 1 1
      130 SETTABLEKS                       R13 R12 K38 ["decalToDynamicHead"]
      132 SETTABLEKS                       R12 R11 K26 ["toggle"]
      134 DUPTABLE                         R12 K44 [{"settings", "info"}]
      135 DUPTABLE                         R13 K46 [{"SetupType"}]
      136 LOADK                            R14 K47 ["Unspecified"]
      137 SETTABLEKS                       R14 R13 K45 ["SetupType"]
      139 SETTABLEKS                       R13 R12 K42 ["settings"]
      141 DUPTABLE                         R13 K49 [{"assetClassification"}]
      142 DUPTABLE                         R14 K56 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      143 LOADN                            R15 0
      144 SETTABLEKS                       R15 R14 K50 ["bodyCount"]
      146 LOADN                            R15 0
      147 SETTABLEKS                       R15 R14 K51 ["layeredCount"]
      149 LOADN                            R15 0
      150 SETTABLEKS                       R15 R14 K52 ["eyeLayeredCount"]
      152 LOADN                            R15 0
      153 SETTABLEKS                       R15 R14 K53 ["rigidCount"]
      155 LOADN                            R15 0
      156 SETTABLEKS                       R15 R14 K54 ["avatarCount"]
      158 LOADN                            R15 0
      159 SETTABLEKS                       R15 R14 K55 ["unselectedCount"]
      161 SETTABLEKS                       R14 R13 K48 ["assetClassification"]
      163 SETTABLEKS                       R13 R12 K43 ["info"]
      165 SETTABLEKS                       R12 R11 K27 ["options"]
      167 MOVE                             R12 R4
      168 LOADK                            R13 K28 ["incrementCount"]
      169 CALL                             R12 1 1
      170 SETTABLEKS                       R12 R11 K28 ["incrementCount"]
      172 MOVE                             R12 R4
      173 LOADK                            R13 K29 ["decrementCount"]
      174 CALL                             R12 1 1
      175 SETTABLEKS                       R12 R11 K29 ["decrementCount"]
      177 GETTABLEKS                       R12 R1 K57 ["createContext"]
      179 MOVE                             R13 R11
      180 CALL                             R12 1 1
      181 DUPCLOSURE                       R13 K58 [PROTO_2]
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R12
      190 DUPTABLE                         R14 K61 [{"Context", "Provider"}]
      191 SETTABLEKS                       R12 R14 K59 ["Context"]
      193 SETTABLEKS                       R13 R14 K60 ["Provider"]
      195 RETURN                           R14 1
