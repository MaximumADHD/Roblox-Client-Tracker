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
      180 JUMPIFNOTEQKN                    R1 K22 [1] ; [+23]
      182 DUPTABLE                         R20 K30 [{["SetupType"] = "Platform", ["AlignFrontAngle"], ["R15Plus"], ["ClothingOnly"], ["EnableAdditionalHeadProcessing"], ["DecalToDynamicHead"], ["shouldCreateTemplateBody"]}]
      183 GETTABLEKS                       R21 R3 K31 ["enabled"]
      185 SETTABLEKS                       R21 R20 K25 ["AlignFrontAngle"]
      187 GETTABLEKS                       R21 R5 K31 ["enabled"]
      189 SETTABLEKS                       R21 R20 K26 ["R15Plus"]
      191 SETTABLEKS                       R16 R20 K27 ["ClothingOnly"]
      193 GETTABLEKS                       R21 R4 K31 ["enabled"]
      195 SETTABLEKS                       R21 R20 K28 ["EnableAdditionalHeadProcessing"]
      197 GETTABLEKS                       R21 R7 K31 ["enabled"]
      199 SETTABLEKS                       R21 R20 K29 ["DecalToDynamicHead"]
      201 SETTABLEKS                       R17 R20 K11 ["shouldCreateTemplateBody"]
      203 JUMP                             ; [+33]
      204 JUMPIFNOTEQKN                    R1 K32 [2] ; [+31]
      206 DUPTABLE                         R20 K35 [{["SetupType"] = "Development", ["AlignFrontAngle"], ["R15Plus"], ["DecimationOptions"], ["ClothingOnly"], ["EnableAdditionalHeadProcessing"], ["DecalToDynamicHead"], ["shouldCreateTemplateBody"]}]
      207 GETTABLEKS                       R21 R3 K31 ["enabled"]
      209 SETTABLEKS                       R21 R20 K25 ["AlignFrontAngle"]
      211 GETTABLEKS                       R21 R5 K31 ["enabled"]
      213 SETTABLEKS                       R21 R20 K26 ["R15Plus"]
      215 GETTABLEKS                       R22 R6 K31 ["enabled"]
      217 JUMPIFNOT                        R22 ; [+2]
      218 LOADK                            R21 K36 ["EverythingEnabled"]
      219 JUMP                             ; [+1]
      220 LOADK                            R21 K37 ["Unspecified"]
      221 SETTABLEKS                       R21 R20 K34 ["DecimationOptions"]
      223 SETTABLEKS                       R16 R20 K27 ["ClothingOnly"]
      225 GETTABLEKS                       R21 R4 K31 ["enabled"]
      227 SETTABLEKS                       R21 R20 K28 ["EnableAdditionalHeadProcessing"]
      229 GETTABLEKS                       R21 R7 K31 ["enabled"]
      231 SETTABLEKS                       R21 R20 K29 ["DecalToDynamicHead"]
      233 SETTABLEKS                       R17 R20 K11 ["shouldCreateTemplateBody"]
      235 JUMP                             ; [+1]
      236 DUPTABLE                         R20 K38 [{["SetupType"] = "Unspecified"}]
      237 DUPTABLE                         R21 K45 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
      238 DUPTABLE                         R22 K52 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      239 SETTABLEKS                       R1 R22 K46 ["setupType"]
      241 GETTABLEKS                       R23 R3 K31 ["enabled"]
      243 SETTABLEKS                       R23 R22 K47 ["alignFrontAngle"]
      245 GETTABLEKS                       R23 R4 K31 ["enabled"]
      247 SETTABLEKS                       R23 R22 K48 ["enableAdditionalHeadProcessing"]
      249 GETTABLEKS                       R23 R5 K31 ["enabled"]
      251 SETTABLEKS                       R23 R22 K49 ["customHumanoid"]
      253 GETTABLEKS                       R23 R6 K31 ["enabled"]
      255 SETTABLEKS                       R23 R22 K50 ["reduceTriangles"]
      257 GETTABLEKS                       R23 R7 K31 ["enabled"]
      259 SETTABLEKS                       R23 R22 K51 ["decalToDynamicHead"]
      261 SETTABLEKS                       R22 R21 K39 ["value"]
      263 DUPTABLE                         R22 K53 [{"setupType"}]
      264 SETTABLEKS                       R2 R22 K46 ["setupType"]
      266 SETTABLEKS                       R22 R21 K40 ["set"]
      268 DUPTABLE                         R22 K54 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      269 GETTABLEKS                       R23 R3 K41 ["toggle"]
      271 SETTABLEKS                       R23 R22 K47 ["alignFrontAngle"]
      273 GETTABLEKS                       R23 R4 K41 ["toggle"]
      275 SETTABLEKS                       R23 R22 K48 ["enableAdditionalHeadProcessing"]
      277 GETTABLEKS                       R23 R5 K41 ["toggle"]
      279 SETTABLEKS                       R23 R22 K49 ["customHumanoid"]
      281 GETTABLEKS                       R23 R6 K41 ["toggle"]
      283 SETTABLEKS                       R23 R22 K50 ["reduceTriangles"]
      285 GETTABLEKS                       R23 R7 K41 ["toggle"]
      287 SETTABLEKS                       R23 R22 K51 ["decalToDynamicHead"]
      289 SETTABLEKS                       R22 R21 K41 ["toggle"]
      291 DUPTABLE                         R22 K57 [{"settings", "info"}]
      292 SETTABLEKS                       R20 R22 K55 ["settings"]
      294 SETTABLEKS                       R19 R22 K56 ["info"]
      296 SETTABLEKS                       R22 R21 K42 ["options"]
      298 SETTABLEKS                       R14 R21 K43 ["incrementCount"]
      300 SETTABLEKS                       R15 R21 K44 ["decrementCount"]
      302 GETUPVAL                         R22 3
      303 GETTABLEKS                       R22 R22 K58 ["createElement"]
      305 GETUPVAL                         R23 5
      306 GETTABLEKS                       R23 R23 K59 ["Provider"]
      308 DUPTABLE                         R24 K60 [{"value"}]
      309 SETTABLEKS                       R21 R24 K39 ["value"]
      311 GETTABLEKS                       R25 R0 K61 ["children"]
      313 CALL                             R22 3 -1
      314 RETURN                           R22 -1

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
       76 DUPTABLE                         R10 K28 [{["setupType"] = 0}]
       77 SETTABLEKS                       R10 R9 K19 ["value"]
       79 DUPTABLE                         R10 K29 [{"setupType"}]
       80 MOVE                             R11 R4
       81 LOADK                            R12 K30 ["setSetupType"]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K26 ["setupType"]
       85 SETTABLEKS                       R10 R9 K20 ["set"]
       87 DUPTABLE                         R10 K36 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
       88 MOVE                             R11 R4
       89 LOADK                            R12 K31 ["alignFrontAngle"]
       90 CALL                             R11 1 1
       91 SETTABLEKS                       R11 R10 K31 ["alignFrontAngle"]
       93 MOVE                             R11 R4
       94 LOADK                            R12 K32 ["enableAdditionalHeadProcessing"]
       95 CALL                             R11 1 1
       96 SETTABLEKS                       R11 R10 K32 ["enableAdditionalHeadProcessing"]
       98 MOVE                             R11 R4
       99 LOADK                            R12 K37 ["toggleCustomHumanoid"]
      100 CALL                             R11 1 1
      101 SETTABLEKS                       R11 R10 K33 ["customHumanoid"]
      103 MOVE                             R11 R4
      104 LOADK                            R12 K38 ["toggleReduceTriangles"]
      105 CALL                             R11 1 1
      106 SETTABLEKS                       R11 R10 K34 ["reduceTriangles"]
      108 MOVE                             R11 R4
      109 LOADK                            R12 K35 ["decalToDynamicHead"]
      110 CALL                             R11 1 1
      111 SETTABLEKS                       R11 R10 K35 ["decalToDynamicHead"]
      113 SETTABLEKS                       R10 R9 K21 ["toggle"]
      115 DUPTABLE                         R10 K41 [{"settings", "info"}]
      116 DUPTABLE                         R11 K44 [{["SetupType"] = "Unspecified"}]
      117 SETTABLEKS                       R11 R10 K39 ["settings"]
      119 DUPTABLE                         R11 K46 [{"assetClassification"}]
      120 DUPTABLE                         R12 K53 [{["bodyCount"] = 0, ["layeredCount"] = 0, ["eyeLayeredCount"] = 0, ["rigidCount"] = 0, ["avatarCount"] = 0, ["unselectedCount"] = 0}]
      121 SETTABLEKS                       R12 R11 K45 ["assetClassification"]
      123 SETTABLEKS                       R11 R10 K40 ["info"]
      125 SETTABLEKS                       R10 R9 K22 ["options"]
      127 MOVE                             R10 R4
      128 LOADK                            R11 K23 ["incrementCount"]
      129 CALL                             R10 1 1
      130 SETTABLEKS                       R10 R9 K23 ["incrementCount"]
      132 MOVE                             R10 R4
      133 LOADK                            R11 K24 ["decrementCount"]
      134 CALL                             R10 1 1
      135 SETTABLEKS                       R10 R9 K24 ["decrementCount"]
      137 GETTABLEKS                       R10 R1 K54 ["createContext"]
      139 MOVE                             R11 R9
      140 CALL                             R10 1 1
      141 DUPCLOSURE                       R11 K55 [PROTO_2]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R10
      148 DUPTABLE                         R12 K58 [{"Context", "Provider"}]
      149 SETTABLEKS                       R10 R12 K56 ["Context"]
      151 SETTABLEKS                       R11 R12 K57 ["Provider"]
      153 RETURN                           R12 1
