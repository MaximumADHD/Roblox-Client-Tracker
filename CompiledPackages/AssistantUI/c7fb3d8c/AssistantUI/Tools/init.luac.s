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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R3 R1 K7 ["Shared"]
       14 GETTABLEKS                       R2 R3 K8 ["FFlagAssistantDebugMode"]
       16 GETTABLEKS                       R4 R1 K7 ["Shared"]
       18 GETTABLEKS                       R3 R4 K9 ["FFlagAssistantTestAutomation"]
       20 GETTABLEKS                       R5 R1 K7 ["Shared"]
       22 GETTABLEKS                       R4 R5 K10 ["FFlagEnablePrimitiveGenTool"]
       24 GETIMPORT                        R5 K5 [require]
       26 GETTABLEKS                       R7 R0 K11 ["Parent"]
       28 GETTABLEKS                       R6 R7 K12 ["DMNetworking"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R8 R0 K13 ["Guest"]
       35 GETTABLEKS                       R7 R8 K14 ["Environment"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Hooks"]
       42 GETTABLEKS                       R8 R9 K16 ["ExternalHooks"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R9 R10 K17 ["ToolTypes"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R11 R0 K18 ["Components"]
       56 GETTABLEKS                       R10 R11 K19 ["UIToolRegistry"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETIMPORT                        R12 K1 [script]
       63 GETTABLEKS                       R11 R12 K20 ["CharacterNavigationTool"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETIMPORT                        R13 K1 [script]
       70 GETTABLEKS                       R12 R13 K21 ["ExecuteLuauTool"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETIMPORT                        R14 K1 [script]
       77 GETTABLEKS                       R13 R14 K22 ["FileSearchTool"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K5 [require]
       82 GETIMPORT                        R15 K1 [script]
       84 GETTABLEKS                       R14 R15 K23 ["GameTreeTool"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETIMPORT                        R16 K1 [script]
       91 GETTABLEKS                       R15 R16 K24 ["GetConsoleOutputTool"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETIMPORT                        R17 K1 [script]
       98 GETTABLEKS                       R16 R17 K25 ["GrepSearchTool"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K5 [require]
      103 GETIMPORT                        R18 K1 [script]
      105 GETTABLEKS                       R17 R18 K26 ["GrepTool"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K5 [require]
      110 GETIMPORT                        R19 K1 [script]
      112 GETTABLEKS                       R18 R19 K27 ["InspectInstanceTool"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K5 [require]
      117 GETIMPORT                        R20 K1 [script]
      119 GETTABLEKS                       R19 R20 K28 ["MarketplaceInsertionTool"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K5 [require]
      124 GETIMPORT                        R21 K1 [script]
      126 GETTABLEKS                       R20 R21 K29 ["MaterialGenTool"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K5 [require]
      131 GETIMPORT                        R22 K1 [script]
      133 GETTABLEKS                       R21 R22 K30 ["MeshGenTool"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K5 [require]
      138 GETIMPORT                        R23 K1 [script]
      140 GETTABLEKS                       R22 R23 K31 ["MultiEditTool"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K5 [require]
      145 GETIMPORT                        R24 K1 [script]
      147 GETTABLEKS                       R23 R24 K32 ["PrimitiveGenTool"]
      149 CALL                             R22 1 1
      150 GETIMPORT                        R23 K5 [require]
      152 GETIMPORT                        R25 K1 [script]
      154 GETTABLEKS                       R24 R25 K33 ["ReadFileTool"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K5 [require]
      159 GETIMPORT                        R26 K1 [script]
      161 GETTABLEKS                       R25 R26 K34 ["ScreenCaptureTool"]
      163 CALL                             R24 1 1
      164 GETIMPORT                        R25 K5 [require]
      166 GETIMPORT                        R27 K1 [script]
      168 GETTABLEKS                       R26 R27 K35 ["StartStopPlayTool"]
      170 CALL                             R25 1 1
      171 GETIMPORT                        R26 K5 [require]
      173 GETIMPORT                        R28 K1 [script]
      175 GETTABLEKS                       R27 R28 K36 ["TestGameTool"]
      177 CALL                             R26 1 1
      178 GETIMPORT                        R27 K5 [require]
      180 GETIMPORT                        R29 K1 [script]
      182 GETTABLEKS                       R28 R29 K37 ["UploadImageTool"]
      184 CALL                             R27 1 1
      185 GETIMPORT                        R28 K5 [require]
      187 GETIMPORT                        R30 K1 [script]
      189 GETTABLEKS                       R29 R30 K38 ["UserKeyboardInputTool"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETIMPORT                        R31 K1 [script]
      196 GETTABLEKS                       R30 R31 K39 ["UserMouseInputTool"]
      198 CALL                             R29 1 1
      199 GETTABLEKS                       R30 R8 K40 ["ToolNames"]
      201 NEWTABLE                         R31 16 0
      203 GETTABLEKS                       R32 R30 K41 ["ExecuteLuau"]
      205 SETTABLE                         R11 R31 R32
      206 GETTABLEKS                       R32 R30 K42 ["FileSearch"]
      208 SETTABLE                         R12 R31 R32
      209 GETTABLEKS                       R32 R30 K43 ["GameTree"]
      211 SETTABLE                         R13 R31 R32
      212 GETTABLEKS                       R32 R30 K44 ["Grep"]
      214 SETTABLE                         R16 R31 R32
      215 GETTABLEKS                       R32 R30 K45 ["GrepSearch"]
      217 SETTABLE                         R15 R31 R32
      218 GETTABLEKS                       R32 R30 K46 ["InsertFromMarketplace"]
      220 SETTABLE                         R18 R31 R32
      221 GETTABLEKS                       R32 R30 K47 ["InspectInstance"]
      223 SETTABLE                         R17 R31 R32
      224 GETTABLEKS                       R32 R30 K48 ["MaterialGen"]
      226 SETTABLE                         R19 R31 R32
      227 GETTABLEKS                       R32 R30 K49 ["MeshGen"]
      229 SETTABLE                         R20 R31 R32
      230 GETTABLEKS                       R32 R30 K50 ["MultiEdit"]
      232 SETTABLE                         R21 R31 R32
      233 GETTABLEKS                       R32 R30 K51 ["ReadFile"]
      235 SETTABLE                         R23 R31 R32
      236 GETTABLEKS                       R32 R30 K52 ["ScreenCapture"]
      238 SETTABLE                         R24 R31 R32
      239 GETTABLEKS                       R32 R30 K53 ["UploadImage"]
      241 SETTABLE                         R27 R31 R32
      242 MOVE                             R32 R2
      243 CALL                             R32 0 1
      244 JUMPIFNOT                        R32 ; [+6]
      245 MOVE                             R32 R3
      246 CALL                             R32 0 1
      247 JUMPIF                           R32 ; [+3]
      248 GETTABLEKS                       R32 R30 K54 ["TestGame"]
      250 SETTABLE                         R26 R31 R32
      251 MOVE                             R32 R3
      252 CALL                             R32 0 1
      253 JUMPIFNOT                        R32 ; [+15]
      254 GETTABLEKS                       R32 R30 K55 ["StartStopPlay"]
      256 SETTABLE                         R25 R31 R32
      257 GETTABLEKS                       R32 R30 K56 ["GetConsoleOutput"]
      259 SETTABLE                         R14 R31 R32
      260 GETTABLEKS                       R32 R30 K57 ["UserKeyboardInput"]
      262 SETTABLE                         R28 R31 R32
      263 GETTABLEKS                       R32 R30 K58 ["UserMouseInput"]
      265 SETTABLE                         R29 R31 R32
      266 GETTABLEKS                       R32 R30 K59 ["CharacterNavigation"]
      268 SETTABLE                         R10 R31 R32
      269 MOVE                             R32 R4
      270 CALL                             R32 0 1
      271 JUMPIFNOT                        R32 ; [+3]
      272 GETTABLEKS                       R32 R30 K60 ["PrimitiveGen"]
      274 SETTABLE                         R22 R31 R32
      275 DUPCLOSURE                       R32 K61 [PROTO_0]
      276 CAPTURE                          VAL R6
      277 CAPTURE                          VAL R7
      278 DUPCLOSURE                       R33 K62 [PROTO_1]
      279 CAPTURE                          VAL R9
      280 DUPTABLE                         R34 K66 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      281 SETTABLEKS                       R8 R34 K17 ["ToolTypes"]
      283 SETTABLEKS                       R31 R34 K63 ["BuiltinTools"]
      285 SETTABLEKS                       R32 R34 K64 ["createTools"]
      287 SETTABLEKS                       R33 R34 K65 ["registerTools"]
      289 RETURN                           R34 1
