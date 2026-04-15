PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["name"]
        7 GETUPVAL                         R3 1
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["setToolDisabled"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["name"]
        9 NOT                              R3 R0
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 3
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R11 R8 K0 ["name"]
        8 GETTABLE                         R10 R1 R11
        9 JUMPIFNOTEQKB                    R10 FALSE ; [+2]
       11 LOADB                            R9 0 +1
       12 LOADB                            R9 1
       13 GETUPVAL                         R11 0
       14 GETTABLEKS                       R12 R8 K0 ["name"]
       16 GETTABLE                         R10 R11 R12
       17 JUMPIFNOT                        R10 ; [+29]
       18 GETUPVAL                         R11 1
       19 LOADK                            R13 K1 ["Tools"]
       20 MOVE                             R14 R10
       21 NAMECALL                         R11 R11 K2 ["getText"]
       23 CALL                             R11 3 1
       24 DUPTABLE                         R12 K7 [{"label", "displayLabel", "isChecked", "onChange"}]
       25 GETTABLEKS                       R13 R8 K0 ["name"]
       27 SETTABLEKS                       R13 R12 K3 ["label"]
       29 SETTABLEKS                       R11 R12 K4 ["displayLabel"]
       31 SETTABLEKS                       R9 R12 K5 ["isChecked"]
       33 NEWCLOSURE                       R13 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R13 R12 K6 ["onChange"]
       40 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       42 MOVE                             R14 R3
       43 MOVE                             R15 R12
       44 GETIMPORT                        R13 K10 [table.insert]
       46 CALL                             R13 2 0
       47 FORGLOOP                         R4 2 ; [-42]
       49 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIF                           R0 ; [+2]
        4 NEWTABLE                         R0 0 0
        6 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R1 R3
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R3 R0
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 SETTABLE                         R3 R1 R4
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R1
       16 CALL                             R4 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R7 R5 K3 ["name"]
       10 GETTABLE                         R6 R0 R7
       11 JUMPIFEQKB                       R6 FALSE ; [+5]
       13 GETTABLEKS                       R6 R5 K3 ["name"]
       15 LOADB                            R7 1
       16 SETTABLE                         R7 R0 R6
       17 FORGLOOP                         R1 2 ; [-10]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K4 ["setToolEnabledStates"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R2 R0 K0 ["result"]
        3 GETTABLEKS                       R1 R2 K1 ["tools"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R3 R0 K0 ["result"]
       10 GETTABLEKS                       R2 R3 K1 ["tools"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"disableScreenCapture", "assistantMode", "includeDisabledTools"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["disableScreenCapture"]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["assistantMode"]
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADB                            R2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K2 ["includeDisabledTools"]
       15 GETUPVAL                         R2 3
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 DUPTABLE                         R2 K5 [{"_meta"}]
       19 SETTABLEKS                       R1 R2 K4 ["_meta"]
       21 MOVE                             R1 R2
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R0 K6 ["listTools"]
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U4
       28 NAMECALL                         R2 R2 K7 ["andThen"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 GETUPVAL                         R7 2
       12 CALL                             R7 0 1
       13 JUMPIFNOT                        R7 ; [+36]
       14 GETUPVAL                         R7 3
       15 CALL                             R7 0 2
       16 GETUPVAL                         R9 4
       17 CALL                             R9 0 1
       18 MOVE                             R6 R9
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R9 R10 K1 ["useMemo"]
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          VAL R7
       24 CAPTURE                          REF R6
       25 NEWTABLE                         R11 0 2
       27 MOVE                             R12 R7
       28 MOVE                             R13 R6
       29 SETLIST                          R11 R12 2 [1]
       31 CALL                             R9 2 1
       32 MOVE                             R4 R9
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R9 R10 K2 ["useCallback"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R7
       38 CAPTURE                          REF R6
       39 CAPTURE                          VAL R8
       40 NEWTABLE                         R11 0 3
       42 MOVE                             R12 R7
       43 MOVE                             R13 R6
       44 MOVE                             R14 R8
       45 SETLIST                          R11 R12 3 [1]
       47 CALL                             R9 2 1
       48 MOVE                             R5 R9
       49 JUMP                             ; [+8]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K0 ["useState"]
       53 NEWTABLE                         R8 0 0
       55 CALL                             R7 1 2
       56 MOVE                             R4 R7
       57 MOVE                             R5 R8
       58 GETUPVAL                         R7 5
       59 CALL                             R7 0 1
       60 JUMPIFNOT                        R7 ; [+14]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R7 R8 K3 ["useEffect"]
       64 NEWCLOSURE                       R8 P2
       65 CAPTURE                          REF R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U6
       68 NEWTABLE                         R9 0 2
       70 MOVE                             R10 R4
       71 MOVE                             R11 R2
       72 SETLIST                          R9 R10 2 [1]
       74 CALL                             R7 2 0
       75 LOADNIL                          R7
       76 GETUPVAL                         R8 7
       77 CALL                             R8 0 1
       78 JUMPIFNOT                        R8 ; [+35]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R8 R9 K4 ["useContext"]
       82 GETUPVAL                         R10 8
       83 GETTABLEKS                       R9 R10 K5 ["Context"]
       85 CALL                             R8 1 1
       86 MOVE                             R9 R8
       87 JUMPIFNOT                        R9 ; [+25]
       88 LOADB                            R9 1
       89 GETTABLEKS                       R10 R8 K6 ["selectedProvider"]
       91 GETUPVAL                         R13 9
       92 GETTABLEKS                       R12 R13 K7 ["LLMProviderTypes"]
       94 GETTABLEKS                       R11 R12 K8 ["Studio"]
       96 JUMPIFEQ                         R10 R11 ; [+16]
       98 GETUPVAL                         R10 10
       99 CALL                             R10 0 1
      100 NOT                              R9 R10
      101 JUMPIFNOT                        R9 ; [+11]
      102 GETTABLEKS                       R10 R8 K6 ["selectedProvider"]
      104 GETUPVAL                         R13 9
      105 GETTABLEKS                       R12 R13 K7 ["LLMProviderTypes"]
      107 GETTABLEKS                       R11 R12 K9 ["OpenAI"]
      109 JUMPIFEQ                         R10 R11 ; [+2]
      111 LOADB                            R9 0 +1
      112 LOADB                            R9 1
      113 MOVE                             R7 R9
      114 GETUPVAL                         R9 1
      115 GETTABLEKS                       R8 R9 K3 ["useEffect"]
      117 NEWCLOSURE                       R9 P3
      118 CAPTURE                          VAL R1
      119 CAPTURE                          REF R7
      120 CAPTURE                          REF R6
      121 CAPTURE                          UPVAL U5
      122 CAPTURE                          UPVAL U11
      123 CAPTURE                          VAL R3
      124 NEWTABLE                         R10 0 3
      126 MOVE                             R11 R1
      127 MOVE                             R12 R7
      128 MOVE                             R13 R6
      129 SETLIST                          R10 R11 3 [1]
      131 CALL                             R8 2 0
      132 GETUPVAL                         R9 1
      133 GETTABLEKS                       R8 R9 K1 ["useMemo"]
      135 NEWCLOSURE                       R9 P4
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          VAL R2
      138 CAPTURE                          REF R4
      139 CAPTURE                          REF R5
      140 NEWTABLE                         R10 0 3
      142 MOVE                             R11 R2
      143 MOVE                             R12 R4
      144 MOVE                             R13 R5
      145 SETLIST                          R10 R11 3 [1]
      147 CALL                             R8 2 1
      148 GETUPVAL                         R9 13
      149 GETUPVAL                         R13 14
      150 GETTABLEKS                       R12 R13 K10 ["Components"]
      152 GETTABLEKS                       R11 R12 K11 ["Contexts"]
      154 GETTABLEKS                       R10 R11 K12 ["OptionsContextProvider"]
      156 DUPTABLE                         R11 K14 [{"options"}]
      157 SETTABLEKS                       R8 R11 K13 ["options"]
      159 GETTABLEKS                       R12 R0 K15 ["children"]
      161 CALL                             R9 3 -1
      162 CLOSEUPVALS                      R4
      163 RETURN                           R9 -1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Host"]
       34 GETTABLEKS                       R5 R6 K12 ["startMcpHost"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Types"]
       39 GETTABLEKS                       R8 R1 K14 ["Components"]
       41 GETTABLEKS                       R7 R8 K15 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K16 ["useAssistantMode"]
       45 GETTABLEKS                       R9 R1 K14 ["Components"]
       47 GETTABLEKS                       R8 R9 K15 ["Hooks"]
       49 GETTABLEKS                       R7 R8 K17 ["useAssistantModeToolStates"]
       51 GETTABLEKS                       R10 R1 K14 ["Components"]
       53 GETTABLEKS                       R9 R10 K18 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K19 ["LLMProviderSelectionContext"]
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R12 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R12 K20 ["Flags"]
       63 GETTABLEKS                       R10 R11 K21 ["FFlagAssistantDebugMode"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Src"]
       70 GETTABLEKS                       R12 R13 K20 ["Flags"]
       72 GETTABLEKS                       R11 R12 K22 ["FFlagAssistantFixToolDisappear"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R13 R1 K20 ["Flags"]
       77 GETTABLEKS                       R12 R13 K23 ["Shared"]
       79 GETTABLEKS                       R11 R12 K24 ["FFlagAssistantNewOpenAIAdapter"]
       81 GETTABLEKS                       R14 R1 K20 ["Flags"]
       83 GETTABLEKS                       R13 R14 K23 ["Shared"]
       85 GETTABLEKS                       R12 R13 K25 ["FFlagAssistantTestAutomation"]
       87 GETTABLEKS                       R15 R1 K20 ["Flags"]
       89 GETTABLEKS                       R14 R15 K23 ["Shared"]
       91 GETTABLEKS                       R13 R14 K26 ["getAssistantModeEnabled"]
       93 GETTABLEKS                       R16 R1 K20 ["Flags"]
       95 GETTABLEKS                       R15 R16 K23 ["Shared"]
       97 GETTABLEKS                       R14 R15 K27 ["FFlagAssistantUseNewCreatorStoreTools"]
       99 GETTABLEKS                       R17 R1 K20 ["Flags"]
      101 GETTABLEKS                       R16 R17 K23 ["Shared"]
      103 GETTABLEKS                       R15 R16 K28 ["FFlagAssistantUseNewMeshGenTool"]
      105 GETTABLEKS                       R18 R1 K20 ["Flags"]
      107 GETTABLEKS                       R17 R18 K23 ["Shared"]
      109 GETTABLEKS                       R16 R17 K29 ["FFlagDisableScreenCaptureForDefaultModel"]
      111 GETTABLEKS                       R19 R1 K20 ["Flags"]
      113 GETTABLEKS                       R18 R19 K23 ["Shared"]
      115 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantDynamicToolDescription"]
      117 GETTABLEKS                       R20 R1 K14 ["Components"]
      119 GETTABLEKS                       R19 R20 K15 ["Hooks"]
      121 GETTABLEKS                       R18 R19 K31 ["useWithClient"]
      123 GETTABLEKS                       R19 R2 K32 ["ToolRegistry"]
      125 GETTABLEKS                       R22 R1 K33 ["Resources"]
      127 GETTABLEKS                       R21 R22 K34 ["Localization"]
      129 GETTABLEKS                       R20 R21 K35 ["Translator"]
      131 GETTABLEKS                       R23 R1 K36 ["Tools"]
      133 GETTABLEKS                       R22 R23 K37 ["ToolTypes"]
      135 GETTABLEKS                       R21 R22 K38 ["ToolNames"]
      137 GETTABLEKS                       R22 R3 K39 ["createElement"]
      139 NEWTABLE                         R23 16 0
      141 GETTABLEKS                       R24 R21 K40 ["ExecuteLuau"]
      143 LOADK                            R25 K40 ["ExecuteLuau"]
      144 SETTABLE                         R25 R23 R24
      145 GETTABLEKS                       R24 R21 K41 ["MaterialGen"]
      147 LOADK                            R25 K42 ["GenerateMaterial"]
      148 SETTABLE                         R25 R23 R24
      149 GETTABLEKS                       R24 R21 K43 ["InsertFromMarketplace"]
      151 MOVE                             R26 R14
      152 CALL                             R26 0 1
      153 JUMPIFNOT                        R26 ; [+2]
      154 LOADNIL                          R25
      155 JUMP                             ; [+1]
      156 LOADK                            R25 K43 ["InsertFromMarketplace"]
      157 SETTABLE                         R25 R23 R24
      158 GETTABLEKS                       R24 R21 K44 ["CreatorStoreSearch"]
      160 MOVE                             R26 R14
      161 CALL                             R26 0 1
      162 JUMPIFNOT                        R26 ; [+2]
      163 LOADK                            R25 K44 ["CreatorStoreSearch"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R25
      166 SETTABLE                         R25 R23 R24
      167 GETTABLEKS                       R24 R21 K45 ["CreatorStoreInsert"]
      169 MOVE                             R26 R14
      170 CALL                             R26 0 1
      171 JUMPIFNOT                        R26 ; [+2]
      172 LOADK                            R25 K45 ["CreatorStoreInsert"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R25
      175 SETTABLE                         R25 R23 R24
      176 GETTABLEKS                       R24 R21 K46 ["MeshGen"]
      178 MOVE                             R26 R15
      179 CALL                             R26 0 1
      180 JUMPIFNOT                        R26 ; [+2]
      181 LOADK                            R25 K46 ["MeshGen"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R25
      184 SETTABLE                         R25 R23 R24
      185 GETTABLEKS                       R24 R21 K47 ["MultiEdit"]
      187 LOADK                            R25 K48 ["MultiEditUpdated"]
      188 SETTABLE                         R25 R23 R24
      189 GETTABLEKS                       R24 R21 K49 ["ScreenCapture"]
      191 LOADK                            R25 K49 ["ScreenCapture"]
      192 SETTABLE                         R25 R23 R24
      193 GETTABLEKS                       R24 R21 K50 ["UploadImage"]
      195 LOADK                            R25 K50 ["UploadImage"]
      196 SETTABLE                         R25 R23 R24
      197 GETTABLEKS                       R24 R21 K51 ["PrimitiveGen"]
      199 LOADK                            R25 K51 ["PrimitiveGen"]
      200 SETTABLE                         R25 R23 R24
      201 MOVE                             R24 R9
      202 CALL                             R24 0 1
      203 JUMPIFNOT                        R24 ; [+7]
      204 MOVE                             R24 R12
      205 CALL                             R24 0 1
      206 JUMPIF                           R24 ; [+4]
      207 GETTABLEKS                       R24 R21 K52 ["TestGame"]
      209 LOADK                            R25 K52 ["TestGame"]
      210 SETTABLE                         R25 R23 R24
      211 MOVE                             R24 R12
      212 CALL                             R24 0 1
      213 JUMPIFNOT                        R24 ; [+20]
      214 GETTABLEKS                       R24 R21 K53 ["StartStopPlay"]
      216 LOADK                            R25 K53 ["StartStopPlay"]
      217 SETTABLE                         R25 R23 R24
      218 GETTABLEKS                       R24 R21 K54 ["GetConsoleOutput"]
      220 LOADK                            R25 K54 ["GetConsoleOutput"]
      221 SETTABLE                         R25 R23 R24
      222 GETTABLEKS                       R24 R21 K55 ["UserKeyboardInput"]
      224 LOADK                            R25 K55 ["UserKeyboardInput"]
      225 SETTABLE                         R25 R23 R24
      226 GETTABLEKS                       R24 R21 K56 ["UserMouseInput"]
      228 LOADK                            R25 K56 ["UserMouseInput"]
      229 SETTABLE                         R25 R23 R24
      230 GETTABLEKS                       R24 R21 K57 ["CharacterNavigation"]
      232 LOADK                            R25 K57 ["CharacterNavigation"]
      233 SETTABLE                         R25 R23 R24
      234 DUPCLOSURE                       R24 K58 [PROTO_2]
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R20
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R19
      239 DUPCLOSURE                       R25 K59 [PROTO_10]
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R13
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R1
      255 RETURN                           R25 1
