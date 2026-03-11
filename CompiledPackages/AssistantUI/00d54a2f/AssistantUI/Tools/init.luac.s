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
      160 GETTABLEKS                       R23 R24 K33 ["StartStopPlayTool"]
      162 CALL                             R22 1 1
      163 GETIMPORT                        R23 K5 [require]
      165 GETIMPORT                        R25 K1 [script]
      167 GETTABLEKS                       R24 R25 K34 ["SubagentTool"]
      169 CALL                             R23 1 1
      170 GETIMPORT                        R24 K5 [require]
      172 GETIMPORT                        R26 K1 [script]
      174 GETTABLEKS                       R25 R26 K35 ["TestGameTool"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K5 [require]
      179 GETIMPORT                        R27 K1 [script]
      181 GETTABLEKS                       R26 R27 K36 ["UploadImageTool"]
      183 CALL                             R25 1 1
      184 GETIMPORT                        R26 K5 [require]
      186 GETIMPORT                        R28 K1 [script]
      188 GETTABLEKS                       R27 R28 K37 ["UserKeyboardInputTool"]
      190 CALL                             R26 1 1
      191 GETIMPORT                        R27 K5 [require]
      193 GETIMPORT                        R29 K1 [script]
      195 GETTABLEKS                       R28 R29 K38 ["UserMouseInputTool"]
      197 CALL                             R27 1 1
      198 GETIMPORT                        R28 K5 [require]
      200 GETTABLEKS                       R29 R0 K39 ["Flags"]
      202 CALL                             R28 1 1
      203 GETTABLEKS                       R30 R28 K40 ["Shared"]
      205 GETTABLEKS                       R29 R30 K41 ["FFlagEnableSubagents"]
      207 GETTABLEKS                       R31 R28 K40 ["Shared"]
      209 GETTABLEKS                       R30 R31 K42 ["FFlagAssistantDebugMode"]
      211 GETTABLEKS                       R32 R28 K40 ["Shared"]
      213 GETTABLEKS                       R31 R32 K43 ["FFlagAssistantTestAutomation"]
      215 GETTABLEKS                       R33 R28 K40 ["Shared"]
      217 GETTABLEKS                       R32 R33 K44 ["FFlagAssistantUseNewMeshGenTool"]
      219 GETTABLEKS                       R34 R28 K40 ["Shared"]
      221 GETTABLEKS                       R33 R34 K45 ["FFlagEnablePrimitiveGenTool"]
      223 GETTABLEKS                       R34 R4 K46 ["ToolNames"]
      225 NEWTABLE                         R35 16 0
      227 GETTABLEKS                       R36 R34 K47 ["ExecuteLuau"]
      229 SETTABLE                         R8 R35 R36
      230 GETTABLEKS                       R36 R34 K48 ["FileSearch"]
      232 SETTABLE                         R9 R35 R36
      233 GETTABLEKS                       R36 R34 K49 ["GameTree"]
      235 SETTABLE                         R10 R35 R36
      236 GETTABLEKS                       R36 R34 K50 ["Grep"]
      238 SETTABLE                         R13 R35 R36
      239 GETTABLEKS                       R36 R34 K51 ["GrepSearch"]
      241 SETTABLE                         R12 R35 R36
      242 GETTABLEKS                       R36 R34 K52 ["InsertFromMarketplace"]
      244 SETTABLE                         R15 R35 R36
      245 GETTABLEKS                       R36 R34 K53 ["InspectInstance"]
      247 SETTABLE                         R14 R35 R36
      248 GETTABLEKS                       R36 R34 K54 ["MaterialGen"]
      250 SETTABLE                         R16 R35 R36
      251 GETTABLEKS                       R36 R34 K27 ["MeshGen"]
      253 MOVE                             R38 R32
      254 CALL                             R38 0 1
      255 JUMPIFNOT                        R38 ; [+2]
      256 MOVE                             R37 R17
      257 JUMP                             ; [+1]
      258 MOVE                             R37 R7
      259 SETTABLE                         R37 R35 R36
      260 GETTABLEKS                       R36 R34 K55 ["MultiEdit"]
      262 SETTABLE                         R18 R35 R36
      263 GETTABLEKS                       R36 R34 K56 ["ReadFile"]
      265 SETTABLE                         R20 R35 R36
      266 GETTABLEKS                       R36 R34 K57 ["ScreenCapture"]
      268 SETTABLE                         R21 R35 R36
      269 GETTABLEKS                       R36 R34 K58 ["UploadImage"]
      271 SETTABLE                         R25 R35 R36
      272 MOVE                             R36 R30
      273 CALL                             R36 0 1
      274 JUMPIFNOT                        R36 ; [+6]
      275 MOVE                             R36 R31
      276 CALL                             R36 0 1
      277 JUMPIF                           R36 ; [+3]
      278 GETTABLEKS                       R36 R34 K59 ["TestGame"]
      280 SETTABLE                         R24 R35 R36
      281 MOVE                             R36 R31
      282 CALL                             R36 0 1
      283 JUMPIFNOT                        R36 ; [+15]
      284 GETTABLEKS                       R36 R34 K60 ["StartStopPlay"]
      286 SETTABLE                         R22 R35 R36
      287 GETTABLEKS                       R36 R34 K61 ["GetConsoleOutput"]
      289 SETTABLE                         R11 R35 R36
      290 GETTABLEKS                       R36 R34 K62 ["UserKeyboardInput"]
      292 SETTABLE                         R26 R35 R36
      293 GETTABLEKS                       R36 R34 K63 ["UserMouseInput"]
      295 SETTABLE                         R27 R35 R36
      296 GETTABLEKS                       R36 R34 K64 ["CharacterNavigation"]
      298 SETTABLE                         R6 R35 R36
      299 MOVE                             R36 R33
      300 CALL                             R36 0 1
      301 JUMPIFNOT                        R36 ; [+3]
      302 GETTABLEKS                       R36 R34 K65 ["PrimitiveGen"]
      304 SETTABLE                         R19 R35 R36
      305 MOVE                             R36 R29
      306 CALL                             R36 0 1
      307 JUMPIFNOT                        R36 ; [+3]
      308 GETTABLEKS                       R36 R34 K66 ["Subagent"]
      310 SETTABLE                         R23 R35 R36
      311 DUPCLOSURE                       R36 K67 [PROTO_0]
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R3
      314 DUPCLOSURE                       R37 K68 [PROTO_1]
      315 CAPTURE                          VAL R5
      316 DUPTABLE                         R38 K72 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      317 SETTABLEKS                       R4 R38 K12 ["ToolTypes"]
      319 SETTABLEKS                       R35 R38 K69 ["BuiltinTools"]
      321 SETTABLEKS                       R36 R38 K70 ["createTools"]
      323 SETTABLEKS                       R37 R38 K71 ["registerTools"]
      325 RETURN                           R38 1
