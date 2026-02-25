PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Body"] ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["increment"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Layered"] ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["increment"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R0 K3 ["Rigid"] ; [+6]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K1 ["increment"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R0 K4 ["Avatar"] ; [+6]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R1 R2 K1 ["increment"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R1 R2 K1 ["increment"]
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["Body"] ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["decrement"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Layered"] ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["decrement"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R0 K3 ["Rigid"] ; [+6]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K1 ["decrement"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R0 K4 ["Avatar"] ; [+6]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R1 R2 K1 ["decrement"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R1 R2 K1 ["decrement"]
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

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
       35 GETUPVAL                         R7 4
       36 CALL                             R7 0 1
       37 GETUPVAL                         R8 4
       38 CALL                             R8 0 1
       39 GETUPVAL                         R9 4
       40 CALL                             R9 0 1
       41 GETUPVAL                         R10 4
       42 CALL                             R10 0 1
       43 GETUPVAL                         R11 4
       44 CALL                             R11 0 1
       45 GETUPVAL                         R13 5
       46 GETTABLEKS                       R12 R13 K9 ["useCallback"]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R11
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R14 0 4
       56 GETTABLEKS                       R15 R9 K10 ["increment"]
       58 GETTABLEKS                       R16 R10 K10 ["increment"]
       60 GETTABLEKS                       R17 R11 K10 ["increment"]
       62 GETTABLEKS                       R18 R7 K10 ["increment"]
       64 SETLIST                          R14 R15 4 [1]
       66 CALL                             R12 2 1
       67 GETUPVAL                         R14 5
       68 GETTABLEKS                       R13 R14 K9 ["useCallback"]
       70 NEWCLOSURE                       R14 P1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 NEWTABLE                         R15 0 4
       78 GETTABLEKS                       R16 R9 K11 ["decrement"]
       80 GETTABLEKS                       R17 R10 K11 ["decrement"]
       82 GETTABLEKS                       R18 R11 K11 ["decrement"]
       84 GETTABLEKS                       R19 R7 K11 ["decrement"]
       86 SETLIST                          R15 R16 4 [1]
       88 CALL                             R13 2 1
       89 LOADB                            R14 0
       90 GETTABLEKS                       R15 R9 K12 ["amount"]
       92 JUMPIFNOTEQKN                    R15 K13 [0] ; [+11]
       94 GETTABLEKS                       R16 R10 K12 ["amount"]
       96 GETTABLEKS                       R17 R11 K12 ["amount"]
       98 ADD                              R15 R16 R17
       99 LOADN                            R16 0
      100 JUMPIFLT                         R16 R15 ; [+2]
      102 LOADB                            R14 0 +1
      103 LOADB                            R14 1
      104 MOVE                             R15 R14
      105 JUMPIFNOT                        R15 ; [+6]
      106 GETTABLEKS                       R16 R8 K12 ["amount"]
      108 JUMPIFEQKN                       R16 K13 [0] ; [+2]
      110 LOADB                            R15 0 +1
      111 LOADB                            R15 1
      112 DUPTABLE                         R16 K16 [{"shouldCreateTemplateBody", "assetClassification"}]
      113 SETTABLEKS                       R15 R16 K14 ["shouldCreateTemplateBody"]
      115 DUPTABLE                         R17 K22 [{"bodyCount", "layeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      116 GETTABLEKS                       R18 R9 K12 ["amount"]
      118 SETTABLEKS                       R18 R17 K17 ["bodyCount"]
      120 GETTABLEKS                       R18 R10 K12 ["amount"]
      122 SETTABLEKS                       R18 R17 K18 ["layeredCount"]
      124 GETTABLEKS                       R18 R11 K12 ["amount"]
      126 SETTABLEKS                       R18 R17 K19 ["rigidCount"]
      128 GETTABLEKS                       R18 R8 K12 ["amount"]
      130 SETTABLEKS                       R18 R17 K20 ["avatarCount"]
      132 GETTABLEKS                       R18 R7 K12 ["amount"]
      134 SETTABLEKS                       R18 R17 K21 ["unselectedCount"]
      136 SETTABLEKS                       R17 R16 K15 ["assetClassification"]
      138 JUMPIFNOTEQKN                    R1 K23 [1] ; [+18]
      140 DUPTABLE                         R17 K28 [{"SetupType", "AlignFrontAngle", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
      141 LOADK                            R18 K29 ["Platform"]
      142 SETTABLEKS                       R18 R17 K24 ["SetupType"]
      144 GETTABLEKS                       R18 R3 K30 ["enabled"]
      146 SETTABLEKS                       R18 R17 K25 ["AlignFrontAngle"]
      148 SETTABLEKS                       R14 R17 K26 ["ClothingOnly"]
      150 GETTABLEKS                       R18 R4 K30 ["enabled"]
      152 SETTABLEKS                       R18 R17 K27 ["EnableAdditionalHeadProcessing"]
      154 SETTABLEKS                       R15 R17 K14 ["shouldCreateTemplateBody"]
      156 JUMP                             ; [+35]
      157 JUMPIFNOTEQKN                    R1 K31 [2] ; [+30]
      159 DUPTABLE                         R17 K34 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
      160 LOADK                            R18 K35 ["Development"]
      161 SETTABLEKS                       R18 R17 K24 ["SetupType"]
      163 GETTABLEKS                       R18 R3 K30 ["enabled"]
      165 SETTABLEKS                       R18 R17 K25 ["AlignFrontAngle"]
      167 GETTABLEKS                       R18 R5 K30 ["enabled"]
      169 SETTABLEKS                       R18 R17 K32 ["R15Plus"]
      171 GETTABLEKS                       R19 R6 K30 ["enabled"]
      173 JUMPIFNOT                        R19 ; [+2]
      174 LOADK                            R18 K36 ["EverythingEnabled"]
      175 JUMP                             ; [+1]
      176 LOADK                            R18 K37 ["Unspecified"]
      177 SETTABLEKS                       R18 R17 K33 ["DecimationOptions"]
      179 SETTABLEKS                       R14 R17 K26 ["ClothingOnly"]
      181 GETTABLEKS                       R18 R4 K30 ["enabled"]
      183 SETTABLEKS                       R18 R17 K27 ["EnableAdditionalHeadProcessing"]
      185 SETTABLEKS                       R15 R17 K14 ["shouldCreateTemplateBody"]
      187 JUMP                             ; [+4]
      188 DUPTABLE                         R17 K38 [{"SetupType"}]
      189 LOADK                            R18 K37 ["Unspecified"]
      190 SETTABLEKS                       R18 R17 K24 ["SetupType"]
      192 DUPTABLE                         R18 K45 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
      193 DUPTABLE                         R19 K51 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles"}]
      194 SETTABLEKS                       R1 R19 K46 ["setupType"]
      196 GETTABLEKS                       R20 R3 K30 ["enabled"]
      198 SETTABLEKS                       R20 R19 K47 ["alignFrontAngle"]
      200 GETTABLEKS                       R20 R4 K30 ["enabled"]
      202 SETTABLEKS                       R20 R19 K48 ["enableAdditionalHeadProcessing"]
      204 GETTABLEKS                       R20 R5 K30 ["enabled"]
      206 SETTABLEKS                       R20 R19 K49 ["customHumanoid"]
      208 GETTABLEKS                       R20 R6 K30 ["enabled"]
      210 SETTABLEKS                       R20 R19 K50 ["reduceTriangles"]
      212 SETTABLEKS                       R19 R18 K39 ["value"]
      214 DUPTABLE                         R19 K52 [{"setupType"}]
      215 SETTABLEKS                       R2 R19 K46 ["setupType"]
      217 SETTABLEKS                       R19 R18 K40 ["set"]
      219 DUPTABLE                         R19 K53 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles"}]
      220 GETTABLEKS                       R20 R3 K41 ["toggle"]
      222 SETTABLEKS                       R20 R19 K47 ["alignFrontAngle"]
      224 GETTABLEKS                       R20 R4 K41 ["toggle"]
      226 SETTABLEKS                       R20 R19 K48 ["enableAdditionalHeadProcessing"]
      228 GETTABLEKS                       R20 R5 K41 ["toggle"]
      230 SETTABLEKS                       R20 R19 K49 ["customHumanoid"]
      232 GETTABLEKS                       R20 R6 K41 ["toggle"]
      234 SETTABLEKS                       R20 R19 K50 ["reduceTriangles"]
      236 SETTABLEKS                       R19 R18 K41 ["toggle"]
      238 DUPTABLE                         R19 K56 [{"settings", "info"}]
      239 SETTABLEKS                       R17 R19 K54 ["settings"]
      241 SETTABLEKS                       R16 R19 K55 ["info"]
      243 SETTABLEKS                       R19 R18 K42 ["options"]
      245 SETTABLEKS                       R12 R18 K43 ["incrementCount"]
      247 SETTABLEKS                       R13 R18 K44 ["decrementCount"]
      249 GETUPVAL                         R20 5
      250 GETTABLEKS                       R19 R20 K57 ["createElement"]
      252 GETUPVAL                         R21 6
      253 GETTABLEKS                       R20 R21 K58 ["Provider"]
      255 DUPTABLE                         R21 K59 [{"value"}]
      256 SETTABLEKS                       R18 R21 K39 ["value"]
      258 GETTABLEKS                       R22 R0 K60 ["children"]
      260 CALL                             R19 3 -1
      261 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["AssetClassificationUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["createUnimplemented"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Flags"]
       45 GETTABLEKS                       R6 R7 K14 ["getFFlagAvatarAutosetupOptionsInput"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R9 K15 ["Hooks"]
       54 GETTABLEKS                       R7 R8 K16 ["useIncrementedState"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K8 ["Src"]
       61 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       63 GETTABLEKS                       R8 R9 K17 ["usePluginSetting"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K8 ["Src"]
       70 GETTABLEKS                       R10 R11 K15 ["Hooks"]
       72 GETTABLEKS                       R9 R10 K18 ["useTogglePluginSetting"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K20 [game]
       77 LOADK                            R11 K21 ["AvatarPreviewerDefaultHeadProcessingSetting"]
       78 LOADB                            R12 0
       79 NAMECALL                         R9 R9 K22 ["DefineFastFlag"]
       81 CALL                             R9 3 1
       82 DUPTABLE                         R10 K29 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
       83 DUPTABLE                         R11 K31 [{"setupType"}]
       84 LOADN                            R12 0
       85 SETTABLEKS                       R12 R11 K30 ["setupType"]
       87 SETTABLEKS                       R11 R10 K23 ["value"]
       89 DUPTABLE                         R11 K31 [{"setupType"}]
       90 MOVE                             R12 R4
       91 LOADK                            R13 K32 ["setSetupType"]
       92 CALL                             R12 1 1
       93 SETTABLEKS                       R12 R11 K30 ["setupType"]
       95 SETTABLEKS                       R11 R10 K24 ["set"]
       97 DUPTABLE                         R11 K37 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles"}]
       98 MOVE                             R12 R4
       99 LOADK                            R13 K33 ["alignFrontAngle"]
      100 CALL                             R12 1 1
      101 SETTABLEKS                       R12 R11 K33 ["alignFrontAngle"]
      103 MOVE                             R12 R4
      104 LOADK                            R13 K34 ["enableAdditionalHeadProcessing"]
      105 CALL                             R12 1 1
      106 SETTABLEKS                       R12 R11 K34 ["enableAdditionalHeadProcessing"]
      108 MOVE                             R12 R4
      109 LOADK                            R13 K38 ["toggleCustomHumanoid"]
      110 CALL                             R12 1 1
      111 SETTABLEKS                       R12 R11 K35 ["customHumanoid"]
      113 MOVE                             R12 R4
      114 LOADK                            R13 K39 ["toggleReduceTriangles"]
      115 CALL                             R12 1 1
      116 SETTABLEKS                       R12 R11 K36 ["reduceTriangles"]
      118 SETTABLEKS                       R11 R10 K25 ["toggle"]
      120 DUPTABLE                         R11 K42 [{"settings", "info"}]
      121 DUPTABLE                         R12 K44 [{"SetupType"}]
      122 LOADK                            R13 K45 ["Unspecified"]
      123 SETTABLEKS                       R13 R12 K43 ["SetupType"]
      125 SETTABLEKS                       R12 R11 K40 ["settings"]
      127 DUPTABLE                         R12 K47 [{"assetClassification"}]
      128 DUPTABLE                         R13 K53 [{"bodyCount", "layeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      129 LOADN                            R14 0
      130 SETTABLEKS                       R14 R13 K48 ["bodyCount"]
      132 LOADN                            R14 0
      133 SETTABLEKS                       R14 R13 K49 ["layeredCount"]
      135 LOADN                            R14 0
      136 SETTABLEKS                       R14 R13 K50 ["rigidCount"]
      138 LOADN                            R14 0
      139 SETTABLEKS                       R14 R13 K51 ["avatarCount"]
      141 LOADN                            R14 0
      142 SETTABLEKS                       R14 R13 K52 ["unselectedCount"]
      144 SETTABLEKS                       R13 R12 K46 ["assetClassification"]
      146 SETTABLEKS                       R12 R11 K41 ["info"]
      148 SETTABLEKS                       R11 R10 K26 ["options"]
      150 MOVE                             R11 R4
      151 LOADK                            R12 K27 ["incrementCount"]
      152 CALL                             R11 1 1
      153 SETTABLEKS                       R11 R10 K27 ["incrementCount"]
      155 MOVE                             R11 R4
      156 LOADK                            R12 K28 ["decrementCount"]
      157 CALL                             R11 1 1
      158 SETTABLEKS                       R11 R10 K28 ["decrementCount"]
      160 GETTABLEKS                       R11 R1 K54 ["createContext"]
      162 MOVE                             R12 R10
      163 CALL                             R11 1 1
      164 DUPCLOSURE                       R12 K55 [PROTO_2]
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R11
      172 DUPTABLE                         R13 K58 [{"Context", "Provider"}]
      173 SETTABLEKS                       R11 R13 K56 ["Context"]
      175 SETTABLEKS                       R12 R13 K57 ["Provider"]
      177 RETURN                           R13 1
