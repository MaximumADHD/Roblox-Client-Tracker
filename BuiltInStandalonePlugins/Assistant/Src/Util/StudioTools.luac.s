MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R4 R1 K8 ["Flags"]
       16 GETTABLEKS                       R3 R4 K9 ["Shared"]
       18 GETTABLEKS                       R2 R3 K10 ["FFlagConvAIMeshGen"]
       20 GETTABLEKS                       R5 R1 K8 ["Flags"]
       22 GETTABLEKS                       R4 R5 K9 ["Shared"]
       24 GETTABLEKS                       R3 R4 K11 ["FFlagEnableAssistantImageUpload"]
       26 GETTABLEKS                       R6 R1 K8 ["Flags"]
       28 GETTABLEKS                       R5 R6 K9 ["Shared"]
       30 GETTABLEKS                       R4 R5 K12 ["FFlagEnableAssistantScreenCapture"]
       32 GETTABLEKS                       R7 R1 K8 ["Flags"]
       34 GETTABLEKS                       R6 R7 K9 ["Shared"]
       36 GETTABLEKS                       R5 R6 K13 ["FFlagEnableGrepTool"]
       38 GETTABLEKS                       R8 R1 K8 ["Flags"]
       40 GETTABLEKS                       R7 R8 K9 ["Shared"]
       42 GETTABLEKS                       R6 R7 K14 ["FFlagEnablePrimitiveGenTool"]
       44 GETTABLEKS                       R9 R1 K8 ["Flags"]
       46 GETTABLEKS                       R8 R9 K9 ["Shared"]
       48 GETTABLEKS                       R7 R8 K15 ["FFlagEnableSubagents"]
       50 GETTABLEKS                       R10 R1 K8 ["Flags"]
       52 GETTABLEKS                       R9 R10 K9 ["Shared"]
       54 GETTABLEKS                       R8 R9 K16 ["FFlagAssistantDebugMode"]
       56 GETTABLEKS                       R11 R1 K8 ["Flags"]
       58 GETTABLEKS                       R10 R11 K9 ["Shared"]
       60 GETTABLEKS                       R9 R10 K17 ["FFlagAssistantTestAutomation"]
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R13 R0 K18 ["Src"]
       66 GETTABLEKS                       R12 R13 K19 ["Util"]
       68 GETTABLEKS                       R11 R12 K20 ["ExperimentFeature"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R14 R0 K18 ["Src"]
       75 GETTABLEKS                       R13 R14 K8 ["Flags"]
       77 GETTABLEKS                       R12 R13 K21 ["FFlagAssistantForceDebugMode"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R14 R1 K22 ["Tools"]
       82 GETTABLEKS                       R13 R14 K23 ["ToolTypes"]
       84 GETTABLEKS                       R12 R13 K24 ["ToolNames"]
       86 GETTABLEKS                       R14 R1 K22 ["Tools"]
       88 GETTABLEKS                       R13 R14 K25 ["BuiltinTools"]
       90 NEWTABLE                         R14 16 0
       92 GETTABLEKS                       R15 R12 K26 ["ExecuteLuau"]
       94 GETTABLEKS                       R17 R12 K26 ["ExecuteLuau"]
       96 GETTABLE                         R16 R13 R17
       97 SETTABLE                         R16 R14 R15
       98 GETTABLEKS                       R15 R12 K27 ["FileSearch"]
      100 GETTABLEKS                       R17 R12 K27 ["FileSearch"]
      102 GETTABLE                         R16 R13 R17
      103 SETTABLE                         R16 R14 R15
      104 GETTABLEKS                       R15 R12 K28 ["GameTree"]
      106 GETTABLEKS                       R17 R12 K28 ["GameTree"]
      108 GETTABLE                         R16 R13 R17
      109 SETTABLE                         R16 R14 R15
      110 GETTABLEKS                       R15 R12 K29 ["GrepSearch"]
      112 GETTABLEKS                       R17 R12 K29 ["GrepSearch"]
      114 GETTABLE                         R16 R13 R17
      115 SETTABLE                         R16 R14 R15
      116 GETTABLEKS                       R15 R12 K30 ["Grep"]
      118 MOVE                             R17 R5
      119 CALL                             R17 0 1
      120 JUMPIFNOT                        R17 ; [+4]
      121 GETTABLEKS                       R17 R12 K30 ["Grep"]
      123 GETTABLE                         R16 R13 R17
      124 JUMP                             ; [+1]
      125 LOADNIL                          R16
      126 SETTABLE                         R16 R14 R15
      127 GETTABLEKS                       R15 R12 K31 ["InsertFromMarketplace"]
      129 GETTABLEKS                       R17 R12 K31 ["InsertFromMarketplace"]
      131 GETTABLE                         R16 R13 R17
      132 SETTABLE                         R16 R14 R15
      133 GETTABLEKS                       R15 R12 K32 ["InspectInstance"]
      135 GETTABLEKS                       R17 R12 K32 ["InspectInstance"]
      137 GETTABLE                         R16 R13 R17
      138 SETTABLE                         R16 R14 R15
      139 GETTABLEKS                       R15 R12 K33 ["MaterialGen"]
      141 GETTABLEKS                       R17 R12 K33 ["MaterialGen"]
      143 GETTABLE                         R16 R13 R17
      144 SETTABLE                         R16 R14 R15
      145 GETTABLEKS                       R15 R12 K34 ["MeshGen"]
      147 MOVE                             R17 R2
      148 CALL                             R17 0 1
      149 JUMPIFNOT                        R17 ; [+4]
      150 GETTABLEKS                       R17 R12 K34 ["MeshGen"]
      152 GETTABLE                         R16 R13 R17
      153 JUMP                             ; [+1]
      154 LOADNIL                          R16
      155 SETTABLE                         R16 R14 R15
      156 GETTABLEKS                       R15 R12 K35 ["MultiEdit"]
      158 GETTABLEKS                       R17 R12 K35 ["MultiEdit"]
      160 GETTABLE                         R16 R13 R17
      161 SETTABLE                         R16 R14 R15
      162 GETTABLEKS                       R15 R12 K36 ["ReadFile"]
      164 GETTABLEKS                       R17 R12 K36 ["ReadFile"]
      166 GETTABLE                         R16 R13 R17
      167 SETTABLE                         R16 R14 R15
      168 GETTABLEKS                       R15 R12 K37 ["TestGame"]
      170 MOVE                             R17 R9
      171 CALL                             R17 0 1
      172 JUMPIF                           R17 ; [+10]
      173 MOVE                             R17 R8
      174 CALL                             R17 0 1
      175 JUMPIFNOT                        R17 ; [+7]
      176 MOVE                             R17 R11
      177 CALL                             R17 0 1
      178 JUMPIFNOT                        R17 ; [+4]
      179 GETTABLEKS                       R17 R12 K37 ["TestGame"]
      181 GETTABLE                         R16 R13 R17
      182 JUMP                             ; [+1]
      183 LOADNIL                          R16
      184 SETTABLE                         R16 R14 R15
      185 GETTABLEKS                       R15 R12 K38 ["PrimitiveGen"]
      187 MOVE                             R17 R6
      188 CALL                             R17 0 1
      189 JUMPIFNOT                        R17 ; [+4]
      190 GETTABLEKS                       R17 R12 K38 ["PrimitiveGen"]
      192 GETTABLE                         R16 R13 R17
      193 JUMP                             ; [+1]
      194 LOADNIL                          R16
      195 SETTABLE                         R16 R14 R15
      196 GETTABLEKS                       R15 R12 K39 ["Subagent"]
      198 MOVE                             R17 R7
      199 CALL                             R17 0 1
      200 JUMPIFNOT                        R17 ; [+4]
      201 GETTABLEKS                       R17 R12 K39 ["Subagent"]
      203 GETTABLE                         R16 R13 R17
      204 JUMP                             ; [+1]
      205 LOADNIL                          R16
      206 SETTABLE                         R16 R14 R15
      207 NEWTABLE                         R15 4 0
      209 GETTABLEKS                       R16 R12 K40 ["ScreenCapture"]
      211 MOVE                             R18 R4
      212 CALL                             R18 0 1
      213 JUMPIFNOT                        R18 ; [+4]
      214 GETTABLEKS                       R18 R12 K40 ["ScreenCapture"]
      216 GETTABLE                         R17 R13 R18
      217 JUMP                             ; [+1]
      218 LOADNIL                          R17
      219 SETTABLE                         R17 R15 R16
      220 GETTABLEKS                       R16 R12 K41 ["UploadImage"]
      222 MOVE                             R18 R3
      223 CALL                             R18 0 1
      224 JUMPIFNOT                        R18 ; [+4]
      225 GETTABLEKS                       R18 R12 K41 ["UploadImage"]
      227 GETTABLE                         R17 R13 R18
      228 JUMP                             ; [+1]
      229 LOADNIL                          R17
      230 SETTABLE                         R17 R15 R16
      231 GETTABLEKS                       R16 R12 K37 ["TestGame"]
      233 MOVE                             R18 R9
      234 CALL                             R18 0 1
      235 JUMPIF                           R18 ; [+10]
      236 MOVE                             R18 R8
      237 CALL                             R18 0 1
      238 JUMPIFNOT                        R18 ; [+7]
      239 MOVE                             R18 R11
      240 CALL                             R18 0 1
      241 JUMPIF                           R18 ; [+4]
      242 GETTABLEKS                       R18 R12 K37 ["TestGame"]
      244 GETTABLE                         R17 R13 R18
      245 JUMP                             ; [+1]
      246 LOADNIL                          R17
      247 SETTABLE                         R17 R15 R16
      248 NEWTABLE                         R16 1 0
      250 GETTABLEKS                       R18 R10 K42 ["FeatureNames"]
      252 GETTABLEKS                       R17 R18 K43 ["TestAutomation"]
      254 NEWTABLE                         R18 8 0
      256 GETTABLEKS                       R19 R12 K44 ["StartStopPlay"]
      258 GETTABLEKS                       R21 R12 K44 ["StartStopPlay"]
      260 GETTABLE                         R20 R13 R21
      261 SETTABLE                         R20 R18 R19
      262 GETTABLEKS                       R19 R12 K45 ["GetConsoleOutput"]
      264 GETTABLEKS                       R21 R12 K45 ["GetConsoleOutput"]
      266 GETTABLE                         R20 R13 R21
      267 SETTABLE                         R20 R18 R19
      268 GETTABLEKS                       R19 R12 K46 ["UserKeyboardInput"]
      270 GETTABLEKS                       R21 R12 K46 ["UserKeyboardInput"]
      272 GETTABLE                         R20 R13 R21
      273 SETTABLE                         R20 R18 R19
      274 GETTABLEKS                       R19 R12 K47 ["UserMouseInput"]
      276 GETTABLEKS                       R21 R12 K47 ["UserMouseInput"]
      278 GETTABLE                         R20 R13 R21
      279 SETTABLE                         R20 R18 R19
      280 GETTABLEKS                       R19 R12 K48 ["CharacterNavigation"]
      282 GETTABLEKS                       R21 R12 K48 ["CharacterNavigation"]
      284 GETTABLE                         R20 R13 R21
      285 SETTABLE                         R20 R18 R19
      286 SETTABLE                         R18 R16 R17
      287 DUPTABLE                         R17 K52 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools"}]
      288 SETTABLEKS                       R14 R17 K49 ["DefaultTools"]
      290 SETTABLEKS                       R15 R17 K50 ["ExperimentalTools"]
      292 SETTABLEKS                       R16 R17 K51 ["ExperimentFeatureTools"]
      294 RETURN                           R17 1
