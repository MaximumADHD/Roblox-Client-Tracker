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
       18 GETTABLEKS                       R2 R3 K10 ["FFlagAssistantDebugMode"]
       20 GETTABLEKS                       R5 R1 K8 ["Flags"]
       22 GETTABLEKS                       R4 R5 K9 ["Shared"]
       24 GETTABLEKS                       R3 R4 K11 ["FFlagAssistantTestAutomation"]
       26 GETTABLEKS                       R6 R1 K8 ["Flags"]
       28 GETTABLEKS                       R5 R6 K9 ["Shared"]
       30 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantUseNewMeshGenTool"]
       32 GETTABLEKS                       R7 R1 K8 ["Flags"]
       34 GETTABLEKS                       R6 R7 K9 ["Shared"]
       36 GETTABLEKS                       R5 R6 K13 ["FFlagConvAIMeshGen"]
       38 GETTABLEKS                       R8 R1 K8 ["Flags"]
       40 GETTABLEKS                       R7 R8 K9 ["Shared"]
       42 GETTABLEKS                       R6 R7 K14 ["FFlagEnableAssistantImageUpload"]
       44 GETTABLEKS                       R9 R1 K8 ["Flags"]
       46 GETTABLEKS                       R8 R9 K9 ["Shared"]
       48 GETTABLEKS                       R7 R8 K15 ["FFlagEnableAssistantScreenCapture"]
       50 GETTABLEKS                       R10 R1 K8 ["Flags"]
       52 GETTABLEKS                       R9 R10 K9 ["Shared"]
       54 GETTABLEKS                       R8 R9 K16 ["FFlagEnableGrepTool"]
       56 GETTABLEKS                       R11 R1 K8 ["Flags"]
       58 GETTABLEKS                       R10 R11 K9 ["Shared"]
       60 GETTABLEKS                       R9 R10 K17 ["FFlagEnablePrimitiveGenTool"]
       62 GETTABLEKS                       R12 R1 K8 ["Flags"]
       64 GETTABLEKS                       R11 R12 K9 ["Shared"]
       66 GETTABLEKS                       R10 R11 K18 ["FFlagEnableSkills"]
       68 GETTABLEKS                       R13 R1 K8 ["Flags"]
       70 GETTABLEKS                       R12 R13 K9 ["Shared"]
       72 GETTABLEKS                       R11 R12 K19 ["FFlagEnableSubagents"]
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R15 R0 K20 ["Src"]
       78 GETTABLEKS                       R14 R15 K21 ["Util"]
       80 GETTABLEKS                       R13 R14 K22 ["ExperimentFeature"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETTABLEKS                       R16 R0 K20 ["Src"]
       87 GETTABLEKS                       R15 R16 K8 ["Flags"]
       89 GETTABLEKS                       R14 R15 K23 ["FFlagAssistantForceDebugMode"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R15 R1 K24 ["Types"]
       94 GETTABLEKS                       R14 R15 K25 ["AssistantMode"]
       96 GETTABLEKS                       R17 R1 K26 ["Tools"]
       98 GETTABLEKS                       R16 R17 K27 ["ToolTypes"]
      100 GETTABLEKS                       R15 R16 K28 ["ToolNames"]
      102 GETTABLEKS                       R17 R1 K26 ["Tools"]
      104 GETTABLEKS                       R16 R17 K29 ["BuiltinTools"]
      106 NEWTABLE                         R17 16 0
      108 GETTABLEKS                       R18 R15 K30 ["ExecuteLuau"]
      110 GETTABLEKS                       R20 R15 K30 ["ExecuteLuau"]
      112 GETTABLE                         R19 R16 R20
      113 SETTABLE                         R19 R17 R18
      114 GETTABLEKS                       R18 R15 K31 ["FileSearch"]
      116 GETTABLEKS                       R20 R15 K31 ["FileSearch"]
      118 GETTABLE                         R19 R16 R20
      119 SETTABLE                         R19 R17 R18
      120 GETTABLEKS                       R18 R15 K32 ["GameTree"]
      122 GETTABLEKS                       R20 R15 K32 ["GameTree"]
      124 GETTABLE                         R19 R16 R20
      125 SETTABLE                         R19 R17 R18
      126 GETTABLEKS                       R18 R15 K33 ["GrepSearch"]
      128 GETTABLEKS                       R20 R15 K33 ["GrepSearch"]
      130 GETTABLE                         R19 R16 R20
      131 SETTABLE                         R19 R17 R18
      132 GETTABLEKS                       R18 R15 K34 ["Grep"]
      134 MOVE                             R20 R8
      135 CALL                             R20 0 1
      136 JUMPIFNOT                        R20 ; [+4]
      137 GETTABLEKS                       R20 R15 K34 ["Grep"]
      139 GETTABLE                         R19 R16 R20
      140 JUMP                             ; [+1]
      141 LOADNIL                          R19
      142 SETTABLE                         R19 R17 R18
      143 GETTABLEKS                       R18 R15 K35 ["InsertFromMarketplace"]
      145 GETTABLEKS                       R20 R15 K35 ["InsertFromMarketplace"]
      147 GETTABLE                         R19 R16 R20
      148 SETTABLE                         R19 R17 R18
      149 GETTABLEKS                       R18 R15 K36 ["InspectInstance"]
      151 GETTABLEKS                       R20 R15 K36 ["InspectInstance"]
      153 GETTABLE                         R19 R16 R20
      154 SETTABLE                         R19 R17 R18
      155 GETTABLEKS                       R18 R15 K37 ["MaterialGen"]
      157 GETTABLEKS                       R20 R15 K37 ["MaterialGen"]
      159 GETTABLE                         R19 R16 R20
      160 SETTABLE                         R19 R17 R18
      161 GETTABLEKS                       R18 R15 K38 ["MeshGen"]
      163 MOVE                             R20 R5
      164 CALL                             R20 0 1
      165 JUMPIF                           R20 ; [+3]
      166 MOVE                             R20 R4
      167 CALL                             R20 0 1
      168 JUMPIFNOT                        R20 ; [+4]
      169 GETTABLEKS                       R20 R15 K38 ["MeshGen"]
      171 GETTABLE                         R19 R16 R20
      172 JUMP                             ; [+1]
      173 LOADNIL                          R19
      174 SETTABLE                         R19 R17 R18
      175 GETTABLEKS                       R18 R15 K39 ["MultiEdit"]
      177 GETTABLEKS                       R20 R15 K39 ["MultiEdit"]
      179 GETTABLE                         R19 R16 R20
      180 SETTABLE                         R19 R17 R18
      181 GETTABLEKS                       R18 R15 K40 ["ReadFile"]
      183 GETTABLEKS                       R20 R15 K40 ["ReadFile"]
      185 GETTABLE                         R19 R16 R20
      186 SETTABLE                         R19 R17 R18
      187 GETTABLEKS                       R18 R15 K41 ["TestGame"]
      189 MOVE                             R20 R3
      190 CALL                             R20 0 1
      191 JUMPIF                           R20 ; [+10]
      192 MOVE                             R20 R2
      193 CALL                             R20 0 1
      194 JUMPIFNOT                        R20 ; [+7]
      195 MOVE                             R20 R13
      196 CALL                             R20 0 1
      197 JUMPIFNOT                        R20 ; [+4]
      198 GETTABLEKS                       R20 R15 K41 ["TestGame"]
      200 GETTABLE                         R19 R16 R20
      201 JUMP                             ; [+1]
      202 LOADNIL                          R19
      203 SETTABLE                         R19 R17 R18
      204 GETTABLEKS                       R18 R15 K42 ["PrimitiveGen"]
      206 MOVE                             R20 R9
      207 CALL                             R20 0 1
      208 JUMPIFNOT                        R20 ; [+4]
      209 GETTABLEKS                       R20 R15 K42 ["PrimitiveGen"]
      211 GETTABLE                         R19 R16 R20
      212 JUMP                             ; [+1]
      213 LOADNIL                          R19
      214 SETTABLE                         R19 R17 R18
      215 GETTABLEKS                       R18 R15 K43 ["Skill"]
      217 MOVE                             R20 R10
      218 CALL                             R20 0 1
      219 JUMPIFNOT                        R20 ; [+4]
      220 GETTABLEKS                       R20 R15 K43 ["Skill"]
      222 GETTABLE                         R19 R16 R20
      223 JUMP                             ; [+1]
      224 LOADNIL                          R19
      225 SETTABLE                         R19 R17 R18
      226 NEWTABLE                         R18 4 0
      228 GETTABLEKS                       R19 R15 K44 ["ScreenCapture"]
      230 MOVE                             R21 R7
      231 CALL                             R21 0 1
      232 JUMPIFNOT                        R21 ; [+4]
      233 GETTABLEKS                       R21 R15 K44 ["ScreenCapture"]
      235 GETTABLE                         R20 R16 R21
      236 JUMP                             ; [+1]
      237 LOADNIL                          R20
      238 SETTABLE                         R20 R18 R19
      239 GETTABLEKS                       R19 R15 K45 ["UploadImage"]
      241 MOVE                             R21 R6
      242 CALL                             R21 0 1
      243 JUMPIFNOT                        R21 ; [+4]
      244 GETTABLEKS                       R21 R15 K45 ["UploadImage"]
      246 GETTABLE                         R20 R16 R21
      247 JUMP                             ; [+1]
      248 LOADNIL                          R20
      249 SETTABLE                         R20 R18 R19
      250 GETTABLEKS                       R19 R15 K41 ["TestGame"]
      252 MOVE                             R21 R3
      253 CALL                             R21 0 1
      254 JUMPIF                           R21 ; [+10]
      255 MOVE                             R21 R2
      256 CALL                             R21 0 1
      257 JUMPIFNOT                        R21 ; [+7]
      258 MOVE                             R21 R13
      259 CALL                             R21 0 1
      260 JUMPIF                           R21 ; [+4]
      261 GETTABLEKS                       R21 R15 K41 ["TestGame"]
      263 GETTABLE                         R20 R16 R21
      264 JUMP                             ; [+1]
      265 LOADNIL                          R20
      266 SETTABLE                         R20 R18 R19
      267 GETTABLEKS                       R19 R15 K46 ["Subagent"]
      269 MOVE                             R21 R11
      270 CALL                             R21 0 1
      271 JUMPIFNOT                        R21 ; [+4]
      272 GETTABLEKS                       R21 R15 K46 ["Subagent"]
      274 GETTABLE                         R20 R16 R21
      275 JUMP                             ; [+1]
      276 LOADNIL                          R20
      277 SETTABLE                         R20 R18 R19
      278 NEWTABLE                         R19 1 0
      280 GETTABLEKS                       R21 R12 K47 ["FeatureNames"]
      282 GETTABLEKS                       R20 R21 K48 ["TestAutomation"]
      284 NEWTABLE                         R21 8 0
      286 GETTABLEKS                       R22 R15 K49 ["StartStopPlay"]
      288 GETTABLEKS                       R24 R15 K49 ["StartStopPlay"]
      290 GETTABLE                         R23 R16 R24
      291 SETTABLE                         R23 R21 R22
      292 GETTABLEKS                       R22 R15 K50 ["GetConsoleOutput"]
      294 GETTABLEKS                       R24 R15 K50 ["GetConsoleOutput"]
      296 GETTABLE                         R23 R16 R24
      297 SETTABLE                         R23 R21 R22
      298 GETTABLEKS                       R22 R15 K51 ["UserKeyboardInput"]
      300 GETTABLEKS                       R24 R15 K51 ["UserKeyboardInput"]
      302 GETTABLE                         R23 R16 R24
      303 SETTABLE                         R23 R21 R22
      304 GETTABLEKS                       R22 R15 K52 ["UserMouseInput"]
      306 GETTABLEKS                       R24 R15 K52 ["UserMouseInput"]
      308 GETTABLE                         R23 R16 R24
      309 SETTABLE                         R23 R21 R22
      310 GETTABLEKS                       R22 R15 K53 ["CharacterNavigation"]
      312 GETTABLEKS                       R24 R15 K53 ["CharacterNavigation"]
      314 GETTABLE                         R23 R16 R24
      315 SETTABLE                         R23 R21 R22
      316 SETTABLE                         R21 R19 R20
      317 NEWTABLE                         R20 2 0
      319 GETTABLEKS                       R21 R14 K54 ["Agent"]
      321 NEWTABLE                         R22 0 16
      323 GETTABLEKS                       R23 R15 K30 ["ExecuteLuau"]
      325 GETTABLEKS                       R24 R15 K31 ["FileSearch"]
      327 GETTABLEKS                       R25 R15 K32 ["GameTree"]
      329 GETTABLEKS                       R26 R15 K33 ["GrepSearch"]
      331 GETTABLEKS                       R27 R15 K34 ["Grep"]
      333 GETTABLEKS                       R28 R15 K35 ["InsertFromMarketplace"]
      335 GETTABLEKS                       R29 R15 K36 ["InspectInstance"]
      337 GETTABLEKS                       R30 R15 K37 ["MaterialGen"]
      339 GETTABLEKS                       R31 R15 K38 ["MeshGen"]
      341 GETTABLEKS                       R32 R15 K39 ["MultiEdit"]
      343 GETTABLEKS                       R33 R15 K40 ["ReadFile"]
      345 GETTABLEKS                       R34 R15 K42 ["PrimitiveGen"]
      347 GETTABLEKS                       R35 R15 K43 ["Skill"]
      349 GETTABLEKS                       R36 R15 K46 ["Subagent"]
      351 GETTABLEKS                       R37 R15 K44 ["ScreenCapture"]
      353 GETTABLEKS                       R38 R15 K45 ["UploadImage"]
      355 SETLIST                          R22 R23 16 [1]
      357 SETTABLE                         R22 R20 R21
      358 GETTABLEKS                       R21 R14 K55 ["Test"]
      360 NEWTABLE                         R22 0 21
      362 GETTABLEKS                       R23 R15 K30 ["ExecuteLuau"]
      364 GETTABLEKS                       R24 R15 K31 ["FileSearch"]
      366 GETTABLEKS                       R25 R15 K32 ["GameTree"]
      368 GETTABLEKS                       R26 R15 K33 ["GrepSearch"]
      370 GETTABLEKS                       R27 R15 K34 ["Grep"]
      372 GETTABLEKS                       R28 R15 K35 ["InsertFromMarketplace"]
      374 GETTABLEKS                       R29 R15 K36 ["InspectInstance"]
      376 GETTABLEKS                       R30 R15 K37 ["MaterialGen"]
      378 GETTABLEKS                       R31 R15 K38 ["MeshGen"]
      380 GETTABLEKS                       R32 R15 K39 ["MultiEdit"]
      382 GETTABLEKS                       R33 R15 K40 ["ReadFile"]
      384 GETTABLEKS                       R34 R15 K42 ["PrimitiveGen"]
      386 GETTABLEKS                       R35 R15 K43 ["Skill"]
      388 GETTABLEKS                       R36 R15 K46 ["Subagent"]
      390 GETTABLEKS                       R37 R15 K44 ["ScreenCapture"]
      392 GETTABLEKS                       R38 R15 K45 ["UploadImage"]
      394 SETLIST                          R22 R23 16 [1]
      396 GETTABLEKS                       R23 R15 K49 ["StartStopPlay"]
      398 GETTABLEKS                       R24 R15 K50 ["GetConsoleOutput"]
      400 GETTABLEKS                       R25 R15 K51 ["UserKeyboardInput"]
      402 GETTABLEKS                       R26 R15 K52 ["UserMouseInput"]
      404 GETTABLEKS                       R27 R15 K53 ["CharacterNavigation"]
      406 SETLIST                          R22 R23 5 [17]
      408 SETTABLE                         R22 R20 R21
      409 DUPTABLE                         R21 K60 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      410 SETTABLEKS                       R17 R21 K56 ["DefaultTools"]
      412 SETTABLEKS                       R18 R21 K57 ["ExperimentalTools"]
      414 SETTABLEKS                       R19 R21 K58 ["ExperimentFeatureTools"]
      416 SETTABLEKS                       R20 R21 K59 ["AssistantModeToolsAllowlist"]
      418 RETURN                           R21 1
