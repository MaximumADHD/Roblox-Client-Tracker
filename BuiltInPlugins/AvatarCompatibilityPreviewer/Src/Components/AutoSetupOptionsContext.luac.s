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
       14 JUMPIFNOTEQKS                    R0 K3 ["EyeLayered"] ; [+6]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K1 ["increment"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R0 K4 ["Rigid"] ; [+6]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R1 R2 K1 ["increment"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 JUMPIFNOTEQKS                    R0 K5 ["Avatar"] ; [+6]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R1 R2 K1 ["increment"]
       33 CALL                             R1 0 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 5
       36 GETTABLEKS                       R1 R2 K1 ["increment"]
       38 CALL                             R1 0 0
       39 RETURN                           R0 0

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
       14 JUMPIFNOTEQKS                    R0 K3 ["EyeLayered"] ; [+6]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K1 ["decrement"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R0 K4 ["Rigid"] ; [+6]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R1 R2 K1 ["decrement"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 JUMPIFNOTEQKS                    R0 K5 ["Avatar"] ; [+6]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R1 R2 K1 ["decrement"]
       33 CALL                             R1 0 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 5
       36 GETTABLEKS                       R1 R2 K1 ["decrement"]
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
       45 GETUPVAL                         R12 4
       46 CALL                             R12 0 1
       47 GETUPVAL                         R14 5
       48 GETTABLEKS                       R13 R14 K9 ["useCallback"]
       50 NEWCLOSURE                       R14 P0
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R12
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 NEWTABLE                         R15 0 5
       59 GETTABLEKS                       R16 R9 K10 ["increment"]
       61 GETTABLEKS                       R17 R10 K10 ["increment"]
       63 GETTABLEKS                       R18 R11 K10 ["increment"]
       65 GETTABLEKS                       R19 R12 K10 ["increment"]
       67 GETTABLEKS                       R20 R7 K10 ["increment"]
       69 SETLIST                          R15 R16 5 [1]
       71 CALL                             R13 2 1
       72 GETUPVAL                         R15 5
       73 GETTABLEKS                       R14 R15 K9 ["useCallback"]
       75 NEWCLOSURE                       R15 P1
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 NEWTABLE                         R16 0 5
       84 GETTABLEKS                       R17 R9 K11 ["decrement"]
       86 GETTABLEKS                       R18 R10 K11 ["decrement"]
       88 GETTABLEKS                       R19 R11 K11 ["decrement"]
       90 GETTABLEKS                       R20 R12 K11 ["decrement"]
       92 GETTABLEKS                       R21 R7 K11 ["decrement"]
       94 SETLIST                          R16 R17 5 [1]
       96 CALL                             R14 2 1
       97 LOADB                            R15 0
       98 GETTABLEKS                       R16 R9 K12 ["amount"]
      100 JUMPIFNOTEQKN                    R16 K13 [0] ; [+14]
      102 GETTABLEKS                       R18 R10 K12 ["amount"]
      104 GETTABLEKS                       R19 R11 K12 ["amount"]
      106 ADD                              R17 R18 R19
      107 GETTABLEKS                       R18 R12 K12 ["amount"]
      109 ADD                              R16 R17 R18
      110 LOADN                            R17 0
      111 JUMPIFLT                         R17 R16 ; [+2]
      113 LOADB                            R15 0 +1
      114 LOADB                            R15 1
      115 MOVE                             R16 R15
      116 JUMPIFNOT                        R16 ; [+6]
      117 GETTABLEKS                       R17 R8 K12 ["amount"]
      119 JUMPIFEQKN                       R17 K13 [0] ; [+2]
      121 LOADB                            R16 0 +1
      122 LOADB                            R16 1
      123 GETUPVAL                         R17 6
      124 CALL                             R17 0 1
      125 JUMPIFNOT                        R17 ; [+27]
      126 LOADB                            R17 0
      127 GETTABLEKS                       R18 R9 K12 ["amount"]
      129 JUMPIFNOTEQKN                    R18 K13 [0] ; [+23]
      131 LOADB                            R17 0
      132 GETTABLEKS                       R18 R8 K12 ["amount"]
      134 JUMPIFNOTEQKN                    R18 K13 [0] ; [+18]
      136 LOADB                            R17 0
      137 GETTABLEKS                       R18 R10 K12 ["amount"]
      139 JUMPIFNOTEQKN                    R18 K13 [0] ; [+13]
      141 LOADB                            R17 0
      142 GETTABLEKS                       R18 R11 K12 ["amount"]
      144 JUMPIFNOTEQKN                    R18 K13 [0] ; [+8]
      146 GETTABLEKS                       R18 R12 K12 ["amount"]
      148 LOADN                            R19 0
      149 JUMPIFLT                         R19 R18 ; [+2]
      151 LOADB                            R17 0 +1
      152 LOADB                            R17 1
      153 DUPTABLE                         R18 K17 [{"shouldCreateTemplateBody", "shouldProcessAttachmentPoint", "assetClassification"}]
      154 SETTABLEKS                       R16 R18 K14 ["shouldCreateTemplateBody"]
      156 GETUPVAL                         R20 6
      157 CALL                             R20 0 1
      158 JUMPIFNOT                        R20 ; [+2]
      159 MOVE                             R19 R17
      160 JUMP                             ; [+1]
      161 LOADNIL                          R19
      162 SETTABLEKS                       R19 R18 K15 ["shouldProcessAttachmentPoint"]
      164 DUPTABLE                         R19 K24 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      165 GETTABLEKS                       R20 R9 K12 ["amount"]
      167 SETTABLEKS                       R20 R19 K18 ["bodyCount"]
      169 GETTABLEKS                       R20 R10 K12 ["amount"]
      171 SETTABLEKS                       R20 R19 K19 ["layeredCount"]
      173 GETTABLEKS                       R20 R11 K12 ["amount"]
      175 SETTABLEKS                       R20 R19 K20 ["eyeLayeredCount"]
      177 GETTABLEKS                       R20 R12 K12 ["amount"]
      179 SETTABLEKS                       R20 R19 K21 ["rigidCount"]
      181 GETTABLEKS                       R20 R8 K12 ["amount"]
      183 SETTABLEKS                       R20 R19 K22 ["avatarCount"]
      185 GETTABLEKS                       R20 R7 K12 ["amount"]
      187 SETTABLEKS                       R20 R19 K23 ["unselectedCount"]
      189 SETTABLEKS                       R19 R18 K16 ["assetClassification"]
      191 JUMPIFNOTEQKN                    R1 K25 [1] ; [+22]
      193 DUPTABLE                         R19 K31 [{"SetupType", "AlignFrontAngle", "R15Plus", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
      194 LOADK                            R20 K32 ["Platform"]
      195 SETTABLEKS                       R20 R19 K26 ["SetupType"]
      197 GETTABLEKS                       R20 R3 K33 ["enabled"]
      199 SETTABLEKS                       R20 R19 K27 ["AlignFrontAngle"]
      201 GETTABLEKS                       R20 R5 K33 ["enabled"]
      203 SETTABLEKS                       R20 R19 K28 ["R15Plus"]
      205 SETTABLEKS                       R15 R19 K29 ["ClothingOnly"]
      207 GETTABLEKS                       R20 R4 K33 ["enabled"]
      209 SETTABLEKS                       R20 R19 K30 ["EnableAdditionalHeadProcessing"]
      211 SETTABLEKS                       R16 R19 K14 ["shouldCreateTemplateBody"]
      213 JUMP                             ; [+35]
      214 JUMPIFNOTEQKN                    R1 K34 [2] ; [+30]
      216 DUPTABLE                         R19 K36 [{"SetupType", "AlignFrontAngle", "R15Plus", "DecimationOptions", "ClothingOnly", "EnableAdditionalHeadProcessing", "shouldCreateTemplateBody"}]
      217 LOADK                            R20 K37 ["Development"]
      218 SETTABLEKS                       R20 R19 K26 ["SetupType"]
      220 GETTABLEKS                       R20 R3 K33 ["enabled"]
      222 SETTABLEKS                       R20 R19 K27 ["AlignFrontAngle"]
      224 GETTABLEKS                       R20 R5 K33 ["enabled"]
      226 SETTABLEKS                       R20 R19 K28 ["R15Plus"]
      228 GETTABLEKS                       R21 R6 K33 ["enabled"]
      230 JUMPIFNOT                        R21 ; [+2]
      231 LOADK                            R20 K38 ["EverythingEnabled"]
      232 JUMP                             ; [+1]
      233 LOADK                            R20 K39 ["Unspecified"]
      234 SETTABLEKS                       R20 R19 K35 ["DecimationOptions"]
      236 SETTABLEKS                       R15 R19 K29 ["ClothingOnly"]
      238 GETTABLEKS                       R20 R4 K33 ["enabled"]
      240 SETTABLEKS                       R20 R19 K30 ["EnableAdditionalHeadProcessing"]
      242 SETTABLEKS                       R16 R19 K14 ["shouldCreateTemplateBody"]
      244 JUMP                             ; [+4]
      245 DUPTABLE                         R19 K40 [{"SetupType"}]
      246 LOADK                            R20 K39 ["Unspecified"]
      247 SETTABLEKS                       R20 R19 K26 ["SetupType"]
      249 DUPTABLE                         R20 K47 [{"value", "set", "toggle", "options", "incrementCount", "decrementCount"}]
      250 DUPTABLE                         R21 K53 [{"setupType", "alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles"}]
      251 SETTABLEKS                       R1 R21 K48 ["setupType"]
      253 GETTABLEKS                       R22 R3 K33 ["enabled"]
      255 SETTABLEKS                       R22 R21 K49 ["alignFrontAngle"]
      257 GETTABLEKS                       R22 R4 K33 ["enabled"]
      259 SETTABLEKS                       R22 R21 K50 ["enableAdditionalHeadProcessing"]
      261 GETTABLEKS                       R22 R5 K33 ["enabled"]
      263 SETTABLEKS                       R22 R21 K51 ["customHumanoid"]
      265 GETTABLEKS                       R22 R6 K33 ["enabled"]
      267 SETTABLEKS                       R22 R21 K52 ["reduceTriangles"]
      269 SETTABLEKS                       R21 R20 K41 ["value"]
      271 DUPTABLE                         R21 K54 [{"setupType"}]
      272 SETTABLEKS                       R2 R21 K48 ["setupType"]
      274 SETTABLEKS                       R21 R20 K42 ["set"]
      276 DUPTABLE                         R21 K55 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles"}]
      277 GETTABLEKS                       R22 R3 K43 ["toggle"]
      279 SETTABLEKS                       R22 R21 K49 ["alignFrontAngle"]
      281 GETTABLEKS                       R22 R4 K43 ["toggle"]
      283 SETTABLEKS                       R22 R21 K50 ["enableAdditionalHeadProcessing"]
      285 GETTABLEKS                       R22 R5 K43 ["toggle"]
      287 SETTABLEKS                       R22 R21 K51 ["customHumanoid"]
      289 GETTABLEKS                       R22 R6 K43 ["toggle"]
      291 SETTABLEKS                       R22 R21 K52 ["reduceTriangles"]
      293 SETTABLEKS                       R21 R20 K43 ["toggle"]
      295 DUPTABLE                         R21 K58 [{"settings", "info"}]
      296 SETTABLEKS                       R19 R21 K56 ["settings"]
      298 SETTABLEKS                       R18 R21 K57 ["info"]
      300 SETTABLEKS                       R21 R20 K44 ["options"]
      302 SETTABLEKS                       R13 R20 K45 ["incrementCount"]
      304 SETTABLEKS                       R14 R20 K46 ["decrementCount"]
      306 GETUPVAL                         R22 5
      307 GETTABLEKS                       R21 R22 K59 ["createElement"]
      309 GETUPVAL                         R23 7
      310 GETTABLEKS                       R22 R23 K60 ["Provider"]
      312 DUPTABLE                         R23 K61 [{"value"}]
      313 SETTABLEKS                       R20 R23 K41 ["value"]
      315 GETTABLEKS                       R24 R0 K62 ["children"]
      317 CALL                             R21 3 -1
      318 RETURN                           R21 -1

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
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Src"]
       79 GETTABLEKS                       R11 R12 K13 ["Flags"]
       81 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerProcessRigidOnly"]
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
      106 DUPTABLE                         R12 K38 [{"alignFrontAngle", "enableAdditionalHeadProcessing", "customHumanoid", "reduceTriangles"}]
      107 MOVE                             R13 R4
      108 LOADK                            R14 K34 ["alignFrontAngle"]
      109 CALL                             R13 1 1
      110 SETTABLEKS                       R13 R12 K34 ["alignFrontAngle"]
      112 MOVE                             R13 R4
      113 LOADK                            R14 K35 ["enableAdditionalHeadProcessing"]
      114 CALL                             R13 1 1
      115 SETTABLEKS                       R13 R12 K35 ["enableAdditionalHeadProcessing"]
      117 MOVE                             R13 R4
      118 LOADK                            R14 K39 ["toggleCustomHumanoid"]
      119 CALL                             R13 1 1
      120 SETTABLEKS                       R13 R12 K36 ["customHumanoid"]
      122 MOVE                             R13 R4
      123 LOADK                            R14 K40 ["toggleReduceTriangles"]
      124 CALL                             R13 1 1
      125 SETTABLEKS                       R13 R12 K37 ["reduceTriangles"]
      127 SETTABLEKS                       R12 R11 K26 ["toggle"]
      129 DUPTABLE                         R12 K43 [{"settings", "info"}]
      130 DUPTABLE                         R13 K45 [{"SetupType"}]
      131 LOADK                            R14 K46 ["Unspecified"]
      132 SETTABLEKS                       R14 R13 K44 ["SetupType"]
      134 SETTABLEKS                       R13 R12 K41 ["settings"]
      136 DUPTABLE                         R13 K48 [{"assetClassification"}]
      137 DUPTABLE                         R14 K55 [{"bodyCount", "layeredCount", "eyeLayeredCount", "rigidCount", "avatarCount", "unselectedCount"}]
      138 LOADN                            R15 0
      139 SETTABLEKS                       R15 R14 K49 ["bodyCount"]
      141 LOADN                            R15 0
      142 SETTABLEKS                       R15 R14 K50 ["layeredCount"]
      144 LOADN                            R15 0
      145 SETTABLEKS                       R15 R14 K51 ["eyeLayeredCount"]
      147 LOADN                            R15 0
      148 SETTABLEKS                       R15 R14 K52 ["rigidCount"]
      150 LOADN                            R15 0
      151 SETTABLEKS                       R15 R14 K53 ["avatarCount"]
      153 LOADN                            R15 0
      154 SETTABLEKS                       R15 R14 K54 ["unselectedCount"]
      156 SETTABLEKS                       R14 R13 K47 ["assetClassification"]
      158 SETTABLEKS                       R13 R12 K42 ["info"]
      160 SETTABLEKS                       R12 R11 K27 ["options"]
      162 MOVE                             R12 R4
      163 LOADK                            R13 K28 ["incrementCount"]
      164 CALL                             R12 1 1
      165 SETTABLEKS                       R12 R11 K28 ["incrementCount"]
      167 MOVE                             R12 R4
      168 LOADK                            R13 K29 ["decrementCount"]
      169 CALL                             R12 1 1
      170 SETTABLEKS                       R12 R11 K29 ["decrementCount"]
      172 GETTABLEKS                       R12 R1 K56 ["createContext"]
      174 MOVE                             R13 R11
      175 CALL                             R12 1 1
      176 DUPCLOSURE                       R13 K57 [PROTO_2]
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R12
      185 DUPTABLE                         R14 K60 [{"Context", "Provider"}]
      186 SETTABLEKS                       R12 R14 K58 ["Context"]
      188 SETTABLEKS                       R13 R14 K59 ["Provider"]
      190 RETURN                           R14 1
