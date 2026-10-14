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
      112 LOADB                            R18 0
      113 GETTABLEKS                       R19 R10 K9 ["amount"]
      115 JUMPIFNOTEQKN                    R19 K10 [0] ; [+23]
      117 LOADB                            R18 0
      118 GETTABLEKS                       R19 R9 K9 ["amount"]
      120 JUMPIFNOTEQKN                    R19 K10 [0] ; [+18]
      122 LOADB                            R18 0
      123 GETTABLEKS                       R19 R11 K9 ["amount"]
      125 JUMPIFNOTEQKN                    R19 K10 [0] ; [+13]
      127 LOADB                            R18 0
      128 GETTABLEKS                       R19 R12 K9 ["amount"]
      130 JUMPIFNOTEQKN                    R19 K10 [0] ; [+8]
      132 GETTABLEKS                       R19 R13 K9 ["amount"]
      134 LOADN                            R20 0
      135 JUMPIFLT                         R20 R19 ; [+2]
      137 LOADB                            R18 0 +1
      138 LOADB                            R18 1
      139 DUPTABLE                         R19 K14 [{"shouldCreateTemplateBody", "shouldProcessAttachmentPoint", "assetClassification"}]
      140 SETTABLEKS                       R17 R19 K11 ["shouldCreateTemplateBody"]
      142 SETTABLEKS                       R18 R19 K12 ["shouldProcessAttachmentPoint"]
      144 DUPTABLE                         R20 K21 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      145 GETTABLEKS                       R21 R10 K9 ["amount"]
      147 SETTABLEKS                       R21 R20 K15 ["bodyCount"]
      149 GETTABLEKS                       R21 R11 K9 ["amount"]
      151 SETTABLEKS                       R21 R20 K16 ["layeredCount"]
      153 GETTABLEKS                       R21 R12 K9 ["amount"]
      155 SETTABLEKS                       R21 R20 K17 ["eyeLayeredCount"]
      157 GETTABLEKS                       R21 R13 K9 ["amount"]
      159 SETTABLEKS                       R21 R20 K18 ["rigidCount"]
      161 GETTABLEKS                       R21 R9 K9 ["amount"]
      163 SETTABLEKS                       R21 R20 K19 ["avatarCount"]
      165 GETTABLEKS                       R21 R8 K9 ["amount"]
      167 SETTABLEKS                       R21 R20 K20 ["unselectedCount"]
      169 SETTABLEKS                       R20 R19 K13 ["assetClassification"]
      171 JUMPIFNOTEQKN                    R1 K22 [1] ; [+23]
      173 DUPTABLE                         R20 K30 [{["SetupType"] = "Platform", ["AlignFrontAngle"], ["R15Plus"], ["ClothingOnly"], ["EnableAdditionalHeadProcessing"], ["DecalToDynamicHead"], ["shouldCreateTemplateBody"]}]
      174 GETTABLEKS                       R21 R3 K31 ["enabled"]
      176 SETTABLEKS                       R21 R20 K25 ["AlignFrontAngle"]
      178 GETTABLEKS                       R21 R5 K31 ["enabled"]
      180 SETTABLEKS                       R21 R20 K26 ["R15Plus"]
      182 SETTABLEKS                       R16 R20 K27 ["ClothingOnly"]
      184 GETTABLEKS                       R21 R4 K31 ["enabled"]
      186 SETTABLEKS                       R21 R20 K28 ["EnableAdditionalHeadProcessing"]
      188 GETTABLEKS                       R21 R7 K31 ["enabled"]
      190 SETTABLEKS                       R21 R20 K29 ["DecalToDynamicHead"]
      192 SETTABLEKS                       R17 R20 K11 ["shouldCreateTemplateBody"]
      194 JUMP                             ; [+33]
      195 JUMPIFNOTEQKN                    R1 K32 [2] ; [+31]
      197 DUPTABLE                         R20 K35 [{["SetupType"] = "Development", ["AlignFrontAngle"], ["R15Plus"], ["DecimationOptions"], ["ClothingOnly"], ["EnableAdditionalHeadProcessing"], ["DecalToDynamicHead"], ["shouldCreateTemplateBody"]}]
      198 GETTABLEKS                       R21 R3 K31 ["enabled"]
      200 SETTABLEKS                       R21 R20 K25 ["AlignFrontAngle"]
      202 GETTABLEKS                       R21 R5 K31 ["enabled"]
      204 SETTABLEKS                       R21 R20 K26 ["R15Plus"]
      206 GETTABLEKS                       R22 R6 K31 ["enabled"]
      208 JUMPIFNOT                        R22 ; [+2]
      209 LOADK                            R21 K36 ["EverythingEnabled"]
      210 JUMP                             ; [+1]
      211 LOADK                            R21 K37 ["Unspecified"]
      212 SETTABLEKS                       R21 R20 K34 ["DecimationOptions"]
      214 SETTABLEKS                       R16 R20 K27 ["ClothingOnly"]
      216 GETTABLEKS                       R21 R4 K31 ["enabled"]
      218 SETTABLEKS                       R21 R20 K28 ["EnableAdditionalHeadProcessing"]
      220 GETTABLEKS                       R21 R7 K31 ["enabled"]
      222 SETTABLEKS                       R21 R20 K29 ["DecalToDynamicHead"]
      224 SETTABLEKS                       R17 R20 K11 ["shouldCreateTemplateBody"]
      226 JUMP                             ; [+1]
      227 DUPTABLE                         R20 K38 [{["SetupType"] = "Unspecified"}]
      228 DUPTABLE                         R21 K45 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
      229 DUPTABLE                         R22 K52 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      230 SETTABLEKS                       R1 R22 K46 ["setupType"]
      232 GETTABLEKS                       R23 R3 K31 ["enabled"]
      234 SETTABLEKS                       R23 R22 K47 ["alignFrontAngle"]
      236 GETTABLEKS                       R23 R4 K31 ["enabled"]
      238 SETTABLEKS                       R23 R22 K48 ["enableAdditionalHeadProcessing"]
      240 GETTABLEKS                       R23 R5 K31 ["enabled"]
      242 SETTABLEKS                       R23 R22 K49 ["customHumanoid"]
      244 GETTABLEKS                       R23 R6 K31 ["enabled"]
      246 SETTABLEKS                       R23 R22 K50 ["reduceTriangles"]
      248 GETTABLEKS                       R23 R7 K31 ["enabled"]
      250 SETTABLEKS                       R23 R22 K51 ["decalToDynamicHead"]
      252 SETTABLEKS                       R22 R21 K39 ["value"]
      254 DUPTABLE                         R22 K53 [{"setupType"}]
      255 SETTABLEKS                       R2 R22 K46 ["setupType"]
      257 SETTABLEKS                       R22 R21 K40 ["set"]
      259 DUPTABLE                         R22 K54 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
      260 GETTABLEKS                       R23 R3 K41 ["toggle"]
      262 SETTABLEKS                       R23 R22 K47 ["alignFrontAngle"]
      264 GETTABLEKS                       R23 R4 K41 ["toggle"]
      266 SETTABLEKS                       R23 R22 K48 ["enableAdditionalHeadProcessing"]
      268 GETTABLEKS                       R23 R5 K41 ["toggle"]
      270 SETTABLEKS                       R23 R22 K49 ["customHumanoid"]
      272 GETTABLEKS                       R23 R6 K41 ["toggle"]
      274 SETTABLEKS                       R23 R22 K50 ["reduceTriangles"]
      276 GETTABLEKS                       R23 R7 K41 ["toggle"]
      278 SETTABLEKS                       R23 R22 K51 ["decalToDynamicHead"]
      280 SETTABLEKS                       R22 R21 K41 ["toggle"]
      282 DUPTABLE                         R22 K57 [{"settings", "info"}]
      283 SETTABLEKS                       R20 R22 K55 ["settings"]
      285 SETTABLEKS                       R19 R22 K56 ["info"]
      287 SETTABLEKS                       R22 R21 K42 ["options"]
      289 SETTABLEKS                       R14 R21 K43 ["incrementCount"]
      291 SETTABLEKS                       R15 R21 K44 ["decrementCount"]
      293 GETUPVAL                         R22 3
      294 GETTABLEKS                       R22 R22 K58 ["createElement"]
      296 GETUPVAL                         R23 4
      297 GETTABLEKS                       R23 R23 K59 ["Provider"]
      299 DUPTABLE                         R24 K60 [{"value"}]
      300 SETTABLEKS                       R21 R24 K39 ["value"]
      302 GETTABLEKS                       R25 R0 K61 ["children"]
      304 CALL                             R22 3 -1
      305 RETURN                           R22 -1

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
       66 DUPTABLE                         R8 K23 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
       67 DUPTABLE                         R9 K26 [{["setupType"] = 0}]
       68 SETTABLEKS                       R9 R8 K17 ["value"]
       70 DUPTABLE                         R9 K27 [{"setupType"}]
       71 MOVE                             R10 R4
       72 LOADK                            R11 K28 ["setSetupType"]
       73 CALL                             R10 1 1
       74 SETTABLEKS                       R10 R9 K24 ["setupType"]
       76 SETTABLEKS                       R9 R8 K18 ["set"]
       78 DUPTABLE                         R9 K34 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles", "decalToDynamicHead"}]
       79 MOVE                             R10 R4
       80 LOADK                            R11 K29 ["alignFrontAngle"]
       81 CALL                             R10 1 1
       82 SETTABLEKS                       R10 R9 K29 ["alignFrontAngle"]
       84 MOVE                             R10 R4
       85 LOADK                            R11 K30 ["enableAdditionalHeadProcessing"]
       86 CALL                             R10 1 1
       87 SETTABLEKS                       R10 R9 K30 ["enableAdditionalHeadProcessing"]
       89 MOVE                             R10 R4
       90 LOADK                            R11 K35 ["toggleCustomHumanoid"]
       91 CALL                             R10 1 1
       92 SETTABLEKS                       R10 R9 K31 ["customHumanoid"]
       94 MOVE                             R10 R4
       95 LOADK                            R11 K36 ["toggleReduceTriangles"]
       96 CALL                             R10 1 1
       97 SETTABLEKS                       R10 R9 K32 ["reduceTriangles"]
       99 MOVE                             R10 R4
      100 LOADK                            R11 K33 ["decalToDynamicHead"]
      101 CALL                             R10 1 1
      102 SETTABLEKS                       R10 R9 K33 ["decalToDynamicHead"]
      104 SETTABLEKS                       R9 R8 K19 ["toggle"]
      106 DUPTABLE                         R9 K39 [{"settings", "info"}]
      107 DUPTABLE                         R10 K42 [{["SetupType"] = "Unspecified"}]
      108 SETTABLEKS                       R10 R9 K37 ["settings"]
      110 DUPTABLE                         R10 K44 [{"assetClassification"}]
      111 DUPTABLE                         R11 K51 [{["bodyCount"] = 0, ["layeredCount"] = 0, ["eyeLayeredCount"] = 0, ["rigidCount"] = 0, ["avatarCount"] = 0, ["unselectedCount"] = 0}]
      112 SETTABLEKS                       R11 R10 K43 ["assetClassification"]
      114 SETTABLEKS                       R10 R9 K38 ["info"]
      116 SETTABLEKS                       R9 R8 K20 ["options"]
      118 MOVE                             R9 R4
      119 LOADK                            R10 K21 ["incrementCount"]
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K21 ["incrementCount"]
      123 MOVE                             R9 R4
      124 LOADK                            R10 K22 ["decrementCount"]
      125 CALL                             R9 1 1
      126 SETTABLEKS                       R9 R8 K22 ["decrementCount"]
      128 GETTABLEKS                       R9 R1 K52 ["createContext"]
      130 MOVE                             R10 R8
      131 CALL                             R9 1 1
      132 DUPCLOSURE                       R10 K53 [PROTO_2]
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R9
      138 DUPTABLE                         R11 K56 [{"Context", "Provider"}]
      139 SETTABLEKS                       R9 R11 K54 ["Context"]
      141 SETTABLEKS                       R10 R11 K55 ["Provider"]
      143 RETURN                           R11 1
