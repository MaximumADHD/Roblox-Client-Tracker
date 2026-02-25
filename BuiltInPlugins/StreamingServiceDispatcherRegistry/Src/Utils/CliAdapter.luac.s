PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetService"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [script]
        2 LOADK                            R3 K2 ["Plugin"]
        3 NAMECALL                         R1 R1 K3 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K4 ["GetPluginComponent"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["listeners"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R6 R5
        7 GETVARARGS                       R7 -1
        8 CALL                             R6 -1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["listeners"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["listeners"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R0 K0 ["listeners"]
       10 LENGTH                           R2 R3
       11 DUPTABLE                         R3 K5 [{"Disconnect"}]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 SETTABLEKS                       R4 R3 K4 ["Disconnect"]
       18 RETURN                           R3 1

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"listeners"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["listeners"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_10:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R1 0
        7 SETTABLEN                        R1 R0 1
        8 GETUPVAL                         R1 1
        9 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [unpack]
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_11:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R1 0
        7 SETTABLEN                        R1 R0 1
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R1 R2 R3
       11 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K1 [unpack]
       15 CALL                             R2 1 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

PROTO_12:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        RAWGET R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K1 [rawget]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+15]
       12 GETUPVAL                         R3 2
       13 JUMPIFNOT                        R3 ; [+11]
       14 GETIMPORT                        R3 K3 [pcall]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 CALL                             R3 1 2
       20 JUMPIFNOT                        R3 ; [+4]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R4
       24 RETURN                           R5 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1
       27 GETUPVAL                         R3 2
       28 JUMPIFNOT                        R3 ; [+7]
       29 GETUPVAL                         R4 2
       30 GETTABLE                         R3 R4 R1
       31 JUMPIFNOT                        R3 ; [+4]
       32 NEWCLOSURE                       R3 P2
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R1
       35 RETURN                           R3 1
       36 DUPCLOSURE                       R3 K4 [PROTO_12]
       37 RETURN                           R3 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R4 K1 [{"__index"}]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R5 R4 K0 ["__index"]
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K3 [setmetatable]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R2 1
        7 LOADNIL                          R3
        8 RETURN                           R3 1

PROTO_17:
        0 GETIMPORT                        R2 K1 [game]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K2 ["GetEngineFeature"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_18:
        0 MOVE                             R3 R2
        1 CALL                             R3 0 1
        2 SETTABLEKS                       R3 R1 K0 ["Source"]
        4 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R0 R0 K2 ["GetService"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RunningEval"]
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R2 1
        8 GETTABLE                         R1 R2 R0
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 GETIMPORT                        R2 K2 [pcall]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          REF R1
       15 CAPTURE                          VAL R0
       16 CALL                             R2 1 0
       17 JUMPIF                           R1 ; [+15]
       18 GETUPVAL                         R2 1
       19 GETTABLE                         R1 R2 R0
       20 JUMPIFNOT                        R1 ; [+3]
       21 SETTABLEKS                       R0 R1 K3 ["Name"]
       23 JUMP                             ; [+9]
       24 GETIMPORT                        R2 K5 [print]
       26 LOADK                            R4 K6 ["ERROR: Service %* is not available and not mocked"]
       27 MOVE                             R6 R0
       28 NAMECALL                         R4 R4 K7 ["format"]
       30 CALL                             R4 2 1
       31 MOVE                             R3 R4
       32 CALL                             R2 1 0
       33 CLOSEUPVALS                      R1
       34 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R0 K1 [script]
        2 LOADK                            R2 K2 ["Plugin"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R1 R0 K4 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 SETUPVAL                         R1 0
       12 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RunningEval"]
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R2 1
        8 GETTABLE                         R1 R2 R0
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 GETIMPORT                        R2 K2 [pcall]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          REF R1
       15 CAPTURE                          VAL R0
       16 CALL                             R2 1 0
       17 JUMPIF                           R1 ; [+15]
       18 GETUPVAL                         R2 1
       19 GETTABLE                         R1 R2 R0
       20 JUMPIFNOT                        R1 ; [+3]
       21 SETTABLEKS                       R0 R1 K3 ["Name"]
       23 JUMP                             ; [+9]
       24 GETIMPORT                        R2 K5 [print]
       26 LOADK                            R4 K6 ["ERROR: Component %* is not available and not mocked"]
       27 MOVE                             R6 R0
       28 NAMECALL                         R4 R4 K7 ["format"]
       30 CALL                             R4 2 1
       31 MOVE                             R3 R4
       32 CALL                             R2 1 0
       33 CLOSEUPVALS                      R1
       34 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"RunningEval"}]
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R2 K8 ["RunningEval"]
       18 DUPTABLE                         R3 K11 [{"game"}]
       19 GETIMPORT                        R4 K12 [game]
       21 SETTABLEKS                       R4 R3 K10 ["game"]
       23 SETTABLEKS                       R3 R2 K13 ["Globals"]
       25 GETIMPORT                        R3 K12 [game]
       27 LOADK                            R5 K14 ["LoadedCode"]
       28 NAMECALL                         R3 R3 K15 ["FindFirstChild"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+36]
       32 LOADK                            R6 K16 ["EvalUtils"]
       33 NAMECALL                         R4 R3 K15 ["FindFirstChild"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+31]
       37 LOADK                            R7 K17 ["lib"]
       38 NAMECALL                         R5 R4 K15 ["FindFirstChild"]
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+26]
       42 GETIMPORT                        R6 K19 [pcall]
       44 DUPCLOSURE                       R7 K20 [PROTO_0]
       45 CAPTURE                          VAL R5
       46 CALL                             R6 1 2
       47 JUMPIFNOT                        R6 ; [+20]
       48 JUMPIFNOT                        R7 ; [+19]
       49 GETTABLEKS                       R8 R7 K21 ["thisIsEvalFramework"]
       51 JUMPIFNOT                        R8 ; [+16]
       52 LOADB                            R8 1
       53 SETTABLEKS                       R8 R2 K8 ["RunningEval"]
       55 GETIMPORT                        R8 K24 [Instance.new]
       57 LOADK                            R9 K25 ["ObjectValue"]
       58 CALL                             R8 1 1
       59 LOADK                            R9 K26 ["CliAdapter"]
       60 SETTABLEKS                       R9 R8 K27 ["Name"]
       62 GETIMPORT                        R9 K1 [script]
       64 SETTABLEKS                       R9 R8 K28 ["Value"]
       66 SETTABLEKS                       R3 R8 K29 ["Parent"]
       68 GETTABLEKS                       R4 R1 K30 ["isCli"]
       70 CALL                             R4 0 1
       71 JUMPIF                           R4 ; [+7]
       72 DUPCLOSURE                       R4 K31 [PROTO_1]
       73 SETTABLEKS                       R4 R2 K32 ["GetService"]
       75 DUPCLOSURE                       R4 K33 [PROTO_2]
       76 SETTABLEKS                       R4 R2 K34 ["GetPluginComponent"]
       78 RETURN                           R2 1
       79 GETIMPORT                        R5 K5 [require]
       81 GETTABLEKS                       R8 R0 K35 ["Src"]
       83 GETTABLEKS                       R7 R8 K36 ["Flags"]
       85 GETTABLEKS                       R6 R7 K37 ["FFlagConvAIMeshGen"]
       87 CALL                             R5 1 1
       88 GETTABLEKS                       R4 R5 K38 ["Get"]
       90 DUPTABLE                         R5 K40 [{"__call"}]
       91 DUPCLOSURE                       R6 K41 [PROTO_3]
       92 SETTABLEKS                       R6 R5 K39 ["__call"]
       94 SETTABLEKS                       R5 R5 K42 ["__index"]
       96 DUPCLOSURE                       R6 K43 [PROTO_4]
       97 DUPCLOSURE                       R7 K44 [PROTO_6]
       98 CAPTURE                          VAL R6
       99 SETTABLEKS                       R7 R5 K45 ["Connect"]
      101 DUPCLOSURE                       R7 K46 [PROTO_7]
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R7 R5 K23 ["new"]
      105 DUPTABLE                         R7 K47 [{"__index"}]
      106 DUPCLOSURE                       R8 K48 [PROTO_8]
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R8 R7 K42 ["__index"]
      110 NEWTABLE                         R8 1 0
      112 DUPCLOSURE                       R9 K49 [PROTO_14]
      113 CAPTURE                          VAL R4
      114 SETTABLEKS                       R9 R8 K23 ["new"]
      116 DUPCLOSURE                       R9 K50 [PROTO_16]
      117 GETIMPORT                        R10 K5 [require]
      119 GETTABLEKS                       R13 R0 K35 ["Src"]
      121 GETTABLEKS                       R12 R13 K51 ["Mocks"]
      123 GETTABLEKS                       R11 R12 K52 ["MockChangeHistoryService"]
      125 CALL                             R10 1 1
      126 GETIMPORT                        R11 K5 [require]
      128 GETTABLEKS                       R14 R0 K35 ["Src"]
      130 GETTABLEKS                       R13 R14 K51 ["Mocks"]
      132 GETTABLEKS                       R12 R13 K53 ["MockChatbotUIService"]
      134 CALL                             R11 1 1
      135 GETIMPORT                        R12 K5 [require]
      137 GETTABLEKS                       R15 R0 K35 ["Src"]
      139 GETTABLEKS                       R14 R15 K51 ["Mocks"]
      141 GETTABLEKS                       R13 R14 K54 ["MockMaterialGenerationService"]
      143 CALL                             R12 1 1
      144 GETIMPORT                        R13 K5 [require]
      146 GETTABLEKS                       R16 R0 K35 ["Src"]
      148 GETTABLEKS                       R15 R16 K51 ["Mocks"]
      150 GETTABLEKS                       R14 R15 K55 ["MockStreamingService"]
      152 CALL                             R13 1 1
      153 NEWTABLE                         R15 0 0
      155 FASTCALL2                        SETMETATABLE R15 R7 ; [+4]
      157 MOVE                             R16 R7
      158 GETIMPORT                        R14 K57 [setmetatable]
      160 CALL                             R14 2 1
      161 NEWTABLE                         R16 0 0
      163 FASTCALL2                        SETMETATABLE R16 R7 ; [+4]
      165 MOVE                             R17 R7
      166 GETIMPORT                        R15 K57 [setmetatable]
      168 CALL                             R15 2 1
      169 NEWTABLE                         R17 0 0
      171 FASTCALL2                        SETMETATABLE R17 R7 ; [+4]
      173 MOVE                             R18 R7
      174 GETIMPORT                        R16 K57 [setmetatable]
      176 CALL                             R16 2 1
      177 NEWTABLE                         R18 0 0
      179 FASTCALL2                        SETMETATABLE R18 R7 ; [+4]
      181 MOVE                             R19 R7
      182 GETIMPORT                        R17 K57 [setmetatable]
      184 CALL                             R17 2 1
      185 NEWTABLE                         R19 0 0
      187 FASTCALL2                        SETMETATABLE R19 R7 ; [+4]
      189 MOVE                             R20 R7
      190 GETIMPORT                        R18 K57 [setmetatable]
      192 CALL                             R18 2 1
      193 NEWTABLE                         R20 0 0
      195 FASTCALL2                        SETMETATABLE R20 R7 ; [+4]
      197 MOVE                             R21 R7
      198 GETIMPORT                        R19 K57 [setmetatable]
      200 CALL                             R19 2 1
      201 NEWTABLE                         R21 0 0
      203 FASTCALL2                        SETMETATABLE R21 R7 ; [+4]
      205 MOVE                             R22 R7
      206 GETIMPORT                        R20 K57 [setmetatable]
      208 CALL                             R20 2 1
      209 GETTABLEKS                       R21 R2 K13 ["Globals"]
      211 DUPTABLE                         R23 K59 [{"GetEngineFeature"}]
      212 DUPCLOSURE                       R24 K60 [PROTO_17]
      213 SETTABLEKS                       R24 R23 K58 ["GetEngineFeature"]
      215 FASTCALL2                        SETMETATABLE R23 R7 ; [+4]
      217 MOVE                             R24 R7
      218 GETIMPORT                        R22 K57 [setmetatable]
      220 CALL                             R22 2 1
      221 SETTABLEKS                       R22 R21 K10 ["game"]
      223 DUPTABLE                         R21 K62 [{"UpdateSourceAsync"}]
      224 DUPCLOSURE                       R22 K63 [PROTO_18]
      225 SETTABLEKS                       R22 R21 K61 ["UpdateSourceAsync"]
      227 DUPTABLE                         R22 K78 [{"StreamingService", "ChatbotUIService", "MarketplaceService", "ConversationalAIAcceptanceService", "MaterialGenerationService", "MemStorageService", "StudioAssetService", "ScriptEditorService", "PublishService", "RunService", "ChangeHistoryService", "InsertService", "GenerationService", "AssetService"}]
      228 GETTABLEKS                       R23 R13 K23 ["new"]
      230 MOVE                             R24 R2
      231 CALL                             R23 1 1
      232 SETTABLEKS                       R23 R22 K64 ["StreamingService"]
      234 GETTABLEKS                       R23 R11 K23 ["new"]
      236 CALL                             R23 0 1
      237 SETTABLEKS                       R23 R22 K65 ["ChatbotUIService"]
      239 SETTABLEKS                       R14 R22 K66 ["MarketplaceService"]
      241 SETTABLEKS                       R16 R22 K67 ["ConversationalAIAcceptanceService"]
      243 GETTABLEKS                       R23 R12 K23 ["new"]
      245 CALL                             R23 0 1
      246 SETTABLEKS                       R23 R22 K68 ["MaterialGenerationService"]
      248 SETTABLEKS                       R15 R22 K69 ["MemStorageService"]
      250 SETTABLEKS                       R17 R22 K70 ["StudioAssetService"]
      252 SETTABLEKS                       R21 R22 K71 ["ScriptEditorService"]
      254 SETTABLEKS                       R18 R22 K72 ["PublishService"]
      256 SETTABLEKS                       R19 R22 K73 ["RunService"]
      258 GETTABLEKS                       R23 R10 K23 ["new"]
      260 CALL                             R23 0 1
      261 SETTABLEKS                       R23 R22 K74 ["ChangeHistoryService"]
      263 GETTABLEKS                       R23 R8 K23 ["new"]
      265 GETIMPORT                        R25 K19 [pcall]
      267 LOADK                            R27 K75 ["InsertService"]
      268 NEWCLOSURE                       R26 P12
      269 CAPTURE                          VAL R27
      270 CALL                             R25 1 2
      271 JUMPIFNOT                        R25 ; [+2]
      272 MOVE                             R24 R26
      273 JUMP                             ; [+1]
      274 LOADNIL                          R24
      275 CALL                             R23 1 1
      276 SETTABLEKS                       R23 R22 K75 ["InsertService"]
      278 MOVE                             R24 R4
      279 CALL                             R24 0 1
      280 JUMPIFNOT                        R24 ; [+2]
      281 MOVE                             R23 R20
      282 JUMP                             ; [+1]
      283 LOADNIL                          R23
      284 SETTABLEKS                       R23 R22 K76 ["GenerationService"]
      286 MOVE                             R24 R4
      287 CALL                             R24 0 1
      288 JUMPIFNOT                        R24 ; [+14]
      289 GETTABLEKS                       R23 R8 K23 ["new"]
      291 GETIMPORT                        R25 K19 [pcall]
      293 LOADK                            R27 K77 ["AssetService"]
      294 NEWCLOSURE                       R26 P12
      295 CAPTURE                          VAL R27
      296 CALL                             R25 1 2
      297 JUMPIFNOT                        R25 ; [+2]
      298 MOVE                             R24 R26
      299 JUMP                             ; [+1]
      300 LOADNIL                          R24
      301 CALL                             R23 1 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R23
      304 SETTABLEKS                       R23 R22 K77 ["AssetService"]
      306 DUPCLOSURE                       R23 K79 [PROTO_20]
      307 CAPTURE                          VAL R2
      308 CAPTURE                          VAL R22
      309 SETTABLEKS                       R23 R2 K32 ["GetService"]
      311 DUPTABLE                         R23 K81 [{"MaterialGenerator"}]
      312 NEWTABLE                         R25 0 0
      314 FASTCALL2                        SETMETATABLE R25 R7 ; [+4]
      316 MOVE                             R26 R7
      317 GETIMPORT                        R24 K57 [setmetatable]
      319 CALL                             R24 2 1
      320 SETTABLEKS                       R24 R23 K80 ["MaterialGenerator"]
      322 DUPCLOSURE                       R24 K82 [PROTO_22]
      323 CAPTURE                          VAL R2
      324 CAPTURE                          VAL R23
      325 SETTABLEKS                       R24 R2 K34 ["GetPluginComponent"]
      327 RETURN                           R2 1
