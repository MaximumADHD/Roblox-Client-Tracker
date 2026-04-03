PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["get"]
        7 CALL                             R3 0 1
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R1
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 MOVE                             R10 R9
       15 DUPTABLE                         R11 K4 [{"networking", "environment", "externalHooks"}]
       16 SETTABLEKS                       R0 R11 K1 ["networking"]
       18 SETTABLEKS                       R2 R11 K2 ["environment"]
       20 SETTABLEKS                       R3 R11 K3 ["externalHooks"]
       22 CALL                             R10 1 1
       23 GETTABLE                         R13 R4 R8
       24 NOT                              R12 R13
       25 LOADK                            R14 K5 ["Tool with name %* already exists"]
       26 MOVE                             R16 R8
       27 NAMECALL                         R14 R14 K6 ["format"]
       29 CALL                             R14 2 1
       30 MOVE                             R13 R14
       31 FASTCALL2                        ASSERT R12 R13 ; [+3]
       33 GETIMPORT                        R11 K8 [assert]
       35 CALL                             R11 2 0
       36 SETTABLE                         R10 R4 R8
       37 FORGLOOP                         R5 2 ; [-24]
       39 RETURN                           R4 1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["registerTool"]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-6]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K11 ["ExternalHooks"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R7 K14 ["UIToolRegistry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R7 R8 K15 ["CharacterNavigationTool"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R9 K1 [script]
       53 GETTABLEKS                       R8 R9 K16 ["DEPRECATED_MeshGenTool"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R10 K1 [script]
       60 GETTABLEKS                       R9 R10 K17 ["ExecuteLuauTool"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R11 K1 [script]
       67 GETTABLEKS                       R10 R11 K18 ["FileSearchTool"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R12 K1 [script]
       74 GETTABLEKS                       R11 R12 K19 ["GameTreeTool"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETIMPORT                        R13 K1 [script]
       81 GETTABLEKS                       R12 R13 K20 ["GetConsoleOutputTool"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETIMPORT                        R14 K1 [script]
       88 GETTABLEKS                       R13 R14 K21 ["GrepSearchTool"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETIMPORT                        R15 K1 [script]
       95 GETTABLEKS                       R14 R15 K22 ["GrepTool"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETIMPORT                        R16 K1 [script]
      102 GETTABLEKS                       R15 R16 K23 ["InspectInstanceTool"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETIMPORT                        R17 K1 [script]
      109 GETTABLEKS                       R16 R17 K24 ["MarketplaceInsertionTool"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETIMPORT                        R18 K1 [script]
      116 GETTABLEKS                       R17 R18 K25 ["MaterialGenTool"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R20 R0 K26 ["Features"]
      123 GETTABLEKS                       R19 R20 K27 ["MeshGen"]
      125 GETTABLEKS                       R18 R19 K28 ["MeshGenTool"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETIMPORT                        R20 K1 [script]
      132 GETTABLEKS                       R19 R20 K29 ["MultiEditTool"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETIMPORT                        R21 K1 [script]
      139 GETTABLEKS                       R20 R21 K30 ["PrimitiveGenTool"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETIMPORT                        R22 K1 [script]
      146 GETTABLEKS                       R21 R22 K31 ["ReadFileTool"]
      148 CALL                             R20 1 1
      149 GETIMPORT                        R21 K5 [require]
      151 GETIMPORT                        R23 K1 [script]
      153 GETTABLEKS                       R22 R23 K32 ["ScreenCaptureTool"]
      155 CALL                             R21 1 1
      156 GETIMPORT                        R22 K5 [require]
      158 GETIMPORT                        R24 K1 [script]
      160 GETTABLEKS                       R23 R24 K33 ["SkillTool"]
      162 CALL                             R22 1 1
      163 GETIMPORT                        R23 K5 [require]
      165 GETIMPORT                        R25 K1 [script]
      167 GETTABLEKS                       R24 R25 K34 ["StartStopPlayTool"]
      169 CALL                             R23 1 1
      170 GETIMPORT                        R24 K5 [require]
      172 GETIMPORT                        R26 K1 [script]
      174 GETTABLEKS                       R25 R26 K35 ["SubagentTool"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K5 [require]
      179 GETIMPORT                        R27 K1 [script]
      181 GETTABLEKS                       R26 R27 K36 ["TestGameTool"]
      183 CALL                             R25 1 1
      184 GETIMPORT                        R26 K5 [require]
      186 GETIMPORT                        R28 K1 [script]
      188 GETTABLEKS                       R27 R28 K37 ["UploadImageTool"]
      190 CALL                             R26 1 1
      191 GETIMPORT                        R27 K5 [require]
      193 GETIMPORT                        R29 K1 [script]
      195 GETTABLEKS                       R28 R29 K38 ["UserKeyboardInputTool"]
      197 CALL                             R27 1 1
      198 GETIMPORT                        R28 K5 [require]
      200 GETIMPORT                        R30 K1 [script]
      202 GETTABLEKS                       R29 R30 K39 ["UserMouseInputTool"]
      204 CALL                             R28 1 1
      205 GETIMPORT                        R29 K5 [require]
      207 GETTABLEKS                       R30 R0 K40 ["Flags"]
      209 CALL                             R29 1 1
      210 GETTABLEKS                       R31 R29 K41 ["Shared"]
      212 GETTABLEKS                       R30 R31 K42 ["FFlagEnableSkills"]
      214 GETTABLEKS                       R32 R29 K41 ["Shared"]
      216 GETTABLEKS                       R31 R32 K43 ["FFlagEnableSubagents"]
      218 GETTABLEKS                       R33 R29 K41 ["Shared"]
      220 GETTABLEKS                       R32 R33 K44 ["FFlagAssistantDebugMode"]
      222 GETTABLEKS                       R34 R29 K41 ["Shared"]
      224 GETTABLEKS                       R33 R34 K45 ["FFlagAssistantTestAutomation"]
      226 GETTABLEKS                       R35 R29 K41 ["Shared"]
      228 GETTABLEKS                       R34 R35 K46 ["FFlagAssistantUseNewMeshGenTool"]
      230 GETTABLEKS                       R36 R29 K41 ["Shared"]
      232 GETTABLEKS                       R35 R36 K47 ["FFlagEnablePrimitiveGenTool"]
      234 GETTABLEKS                       R36 R4 K48 ["ToolNames"]
      236 NEWTABLE                         R37 16 0
      238 GETTABLEKS                       R38 R36 K49 ["ExecuteLuau"]
      240 SETTABLE                         R8 R37 R38
      241 GETTABLEKS                       R38 R36 K50 ["FileSearch"]
      243 SETTABLE                         R9 R37 R38
      244 GETTABLEKS                       R38 R36 K51 ["GameTree"]
      246 SETTABLE                         R10 R37 R38
      247 GETTABLEKS                       R38 R36 K52 ["Grep"]
      249 SETTABLE                         R13 R37 R38
      250 GETTABLEKS                       R38 R36 K53 ["GrepSearch"]
      252 SETTABLE                         R12 R37 R38
      253 GETTABLEKS                       R38 R36 K54 ["InsertFromMarketplace"]
      255 SETTABLE                         R15 R37 R38
      256 GETTABLEKS                       R38 R36 K55 ["InspectInstance"]
      258 SETTABLE                         R14 R37 R38
      259 GETTABLEKS                       R38 R36 K56 ["MaterialGen"]
      261 SETTABLE                         R16 R37 R38
      262 GETTABLEKS                       R38 R36 K27 ["MeshGen"]
      264 MOVE                             R40 R34
      265 CALL                             R40 0 1
      266 JUMPIFNOT                        R40 ; [+2]
      267 MOVE                             R39 R17
      268 JUMP                             ; [+1]
      269 MOVE                             R39 R7
      270 SETTABLE                         R39 R37 R38
      271 GETTABLEKS                       R38 R36 K57 ["MultiEdit"]
      273 SETTABLE                         R18 R37 R38
      274 GETTABLEKS                       R38 R36 K58 ["ReadFile"]
      276 SETTABLE                         R20 R37 R38
      277 GETTABLEKS                       R38 R36 K59 ["ScreenCapture"]
      279 SETTABLE                         R21 R37 R38
      280 GETTABLEKS                       R38 R36 K60 ["UploadImage"]
      282 SETTABLE                         R26 R37 R38
      283 MOVE                             R38 R32
      284 CALL                             R38 0 1
      285 JUMPIFNOT                        R38 ; [+6]
      286 MOVE                             R38 R33
      287 CALL                             R38 0 1
      288 JUMPIF                           R38 ; [+3]
      289 GETTABLEKS                       R38 R36 K61 ["TestGame"]
      291 SETTABLE                         R25 R37 R38
      292 MOVE                             R38 R33
      293 CALL                             R38 0 1
      294 JUMPIFNOT                        R38 ; [+15]
      295 GETTABLEKS                       R38 R36 K62 ["StartStopPlay"]
      297 SETTABLE                         R23 R37 R38
      298 GETTABLEKS                       R38 R36 K63 ["GetConsoleOutput"]
      300 SETTABLE                         R11 R37 R38
      301 GETTABLEKS                       R38 R36 K64 ["UserKeyboardInput"]
      303 SETTABLE                         R27 R37 R38
      304 GETTABLEKS                       R38 R36 K65 ["UserMouseInput"]
      306 SETTABLE                         R28 R37 R38
      307 GETTABLEKS                       R38 R36 K66 ["CharacterNavigation"]
      309 SETTABLE                         R6 R37 R38
      310 MOVE                             R38 R35
      311 CALL                             R38 0 1
      312 JUMPIFNOT                        R38 ; [+3]
      313 GETTABLEKS                       R38 R36 K67 ["PrimitiveGen"]
      315 SETTABLE                         R19 R37 R38
      316 MOVE                             R38 R30
      317 CALL                             R38 0 1
      318 JUMPIFNOT                        R38 ; [+3]
      319 GETTABLEKS                       R38 R36 K68 ["Skill"]
      321 SETTABLE                         R22 R37 R38
      322 MOVE                             R38 R31
      323 CALL                             R38 0 1
      324 JUMPIFNOT                        R38 ; [+3]
      325 GETTABLEKS                       R38 R36 K69 ["Subagent"]
      327 SETTABLE                         R24 R37 R38
      328 DUPCLOSURE                       R38 K70 [PROTO_0]
      329 CAPTURE                          VAL R2
      330 CAPTURE                          VAL R3
      331 DUPCLOSURE                       R39 K71 [PROTO_1]
      332 CAPTURE                          VAL R5
      333 DUPTABLE                         R40 K75 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      334 SETTABLEKS                       R4 R40 K12 ["ToolTypes"]
      336 SETTABLEKS                       R37 R40 K72 ["BuiltinTools"]
      338 SETTABLEKS                       R38 R40 K73 ["createTools"]
      340 SETTABLEKS                       R39 R40 K74 ["registerTools"]
      342 RETURN                           R40 1
