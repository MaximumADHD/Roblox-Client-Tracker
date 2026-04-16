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
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 MOVE                             R1 R2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K0 ["useState"]
       14 NEWTABLE                         R3 0 0
       16 CALL                             R2 1 2
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 GETUPVAL                         R7 4
       21 CALL                             R7 0 1
       22 JUMPIFNOT                        R7 ; [+36]
       23 GETUPVAL                         R7 5
       24 CALL                             R7 0 2
       25 GETUPVAL                         R9 6
       26 CALL                             R9 0 1
       27 MOVE                             R6 R9
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K1 ["useMemo"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          VAL R7
       33 CAPTURE                          REF R6
       34 NEWTABLE                         R11 0 2
       36 MOVE                             R12 R7
       37 MOVE                             R13 R6
       38 SETLIST                          R11 R12 2 [1]
       40 CALL                             R9 2 1
       41 MOVE                             R4 R9
       42 GETUPVAL                         R10 3
       43 GETTABLEKS                       R9 R10 K2 ["useCallback"]
       45 NEWCLOSURE                       R10 P1
       46 CAPTURE                          VAL R7
       47 CAPTURE                          REF R6
       48 CAPTURE                          VAL R8
       49 NEWTABLE                         R11 0 3
       51 MOVE                             R12 R7
       52 MOVE                             R13 R6
       53 MOVE                             R14 R8
       54 SETLIST                          R11 R12 3 [1]
       56 CALL                             R9 2 1
       57 MOVE                             R5 R9
       58 JUMP                             ; [+8]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R7 R8 K0 ["useState"]
       62 NEWTABLE                         R8 0 0
       64 CALL                             R7 1 2
       65 MOVE                             R4 R7
       66 MOVE                             R5 R8
       67 GETUPVAL                         R7 7
       68 CALL                             R7 0 1
       69 JUMPIFNOT                        R7 ; [+14]
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R7 R8 K3 ["useEffect"]
       73 NEWCLOSURE                       R8 P2
       74 CAPTURE                          REF R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          UPVAL U8
       77 NEWTABLE                         R9 0 2
       79 MOVE                             R10 R4
       80 MOVE                             R11 R2
       81 SETLIST                          R9 R10 2 [1]
       83 CALL                             R7 2 0
       84 LOADNIL                          R7
       85 GETUPVAL                         R8 9
       86 CALL                             R8 0 1
       87 JUMPIFNOT                        R8 ; [+35]
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R8 R9 K4 ["useContext"]
       91 GETUPVAL                         R10 10
       92 GETTABLEKS                       R9 R10 K5 ["Context"]
       94 CALL                             R8 1 1
       95 MOVE                             R9 R8
       96 JUMPIFNOT                        R9 ; [+25]
       97 LOADB                            R9 1
       98 GETTABLEKS                       R10 R8 K6 ["selectedProvider"]
      100 GETUPVAL                         R13 11
      101 GETTABLEKS                       R12 R13 K7 ["LLMProviderTypes"]
      103 GETTABLEKS                       R11 R12 K8 ["Studio"]
      105 JUMPIFEQ                         R10 R11 ; [+16]
      107 GETUPVAL                         R10 12
      108 CALL                             R10 0 1
      109 NOT                              R9 R10
      110 JUMPIFNOT                        R9 ; [+11]
      111 GETTABLEKS                       R10 R8 K6 ["selectedProvider"]
      113 GETUPVAL                         R13 11
      114 GETTABLEKS                       R12 R13 K7 ["LLMProviderTypes"]
      116 GETTABLEKS                       R11 R12 K9 ["OpenAI"]
      118 JUMPIFEQ                         R10 R11 ; [+2]
      120 LOADB                            R9 0 +1
      121 LOADB                            R9 1
      122 MOVE                             R7 R9
      123 GETUPVAL                         R9 3
      124 GETTABLEKS                       R8 R9 K3 ["useEffect"]
      126 NEWCLOSURE                       R9 P3
      127 CAPTURE                          REF R1
      128 CAPTURE                          REF R7
      129 CAPTURE                          REF R6
      130 CAPTURE                          UPVAL U7
      131 CAPTURE                          UPVAL U13
      132 CAPTURE                          VAL R3
      133 NEWTABLE                         R10 0 3
      135 MOVE                             R11 R1
      136 MOVE                             R12 R7
      137 MOVE                             R13 R6
      138 SETLIST                          R10 R11 3 [1]
      140 CALL                             R8 2 0
      141 GETUPVAL                         R9 3
      142 GETTABLEKS                       R8 R9 K1 ["useMemo"]
      144 NEWCLOSURE                       R9 P4
      145 CAPTURE                          UPVAL U14
      146 CAPTURE                          VAL R2
      147 CAPTURE                          REF R4
      148 CAPTURE                          REF R5
      149 NEWTABLE                         R10 0 3
      151 MOVE                             R11 R2
      152 MOVE                             R12 R4
      153 MOVE                             R13 R5
      154 SETLIST                          R10 R11 3 [1]
      156 CALL                             R8 2 1
      157 GETUPVAL                         R9 15
      158 GETUPVAL                         R13 16
      159 GETTABLEKS                       R12 R13 K10 ["Components"]
      161 GETTABLEKS                       R11 R12 K11 ["Contexts"]
      163 GETTABLEKS                       R10 R11 K12 ["OptionsContextProvider"]
      165 DUPTABLE                         R11 K14 [{"options"}]
      166 SETTABLEKS                       R8 R11 K13 ["options"]
      168 GETTABLEKS                       R12 R0 K15 ["children"]
      170 CALL                             R9 3 -1
      171 CLOSEUPVALS                      R1
      172 RETURN                           R9 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K14 ["useRunWithMcpClient_DEPRECATED"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["Types"]
       48 GETTABLEKS                       R9 R1 K16 ["Components"]
       50 GETTABLEKS                       R8 R9 K13 ["Hooks"]
       52 GETTABLEKS                       R7 R8 K17 ["useAssistantMode"]
       54 GETTABLEKS                       R10 R1 K16 ["Components"]
       56 GETTABLEKS                       R9 R10 K13 ["Hooks"]
       58 GETTABLEKS                       R8 R9 K18 ["useAssistantModeToolStates"]
       60 GETTABLEKS                       R11 R1 K16 ["Components"]
       62 GETTABLEKS                       R10 R11 K19 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K20 ["LLMProviderSelectionContext"]
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Src"]
       70 GETTABLEKS                       R12 R13 K21 ["Flags"]
       72 GETTABLEKS                       R11 R12 K22 ["FFlagAssistantDebugMode"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R14 R0 K10 ["Src"]
       79 GETTABLEKS                       R13 R14 K21 ["Flags"]
       81 GETTABLEKS                       R12 R13 K23 ["FFlagAssistantFixToolDisappear"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R15 R0 K10 ["Src"]
       88 GETTABLEKS                       R14 R15 K21 ["Flags"]
       90 GETTABLEKS                       R13 R14 K24 ["FFlagMCPAssistantDeduplicateMcpClient"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R15 R1 K21 ["Flags"]
       95 GETTABLEKS                       R14 R15 K25 ["Shared"]
       97 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantNewOpenAIAdapter"]
       99 GETTABLEKS                       R16 R1 K21 ["Flags"]
      101 GETTABLEKS                       R15 R16 K25 ["Shared"]
      103 GETTABLEKS                       R14 R15 K27 ["FFlagAssistantTestAutomation"]
      105 GETTABLEKS                       R17 R1 K21 ["Flags"]
      107 GETTABLEKS                       R16 R17 K25 ["Shared"]
      109 GETTABLEKS                       R15 R16 K28 ["getAssistantModeEnabled"]
      111 GETTABLEKS                       R18 R1 K21 ["Flags"]
      113 GETTABLEKS                       R17 R18 K25 ["Shared"]
      115 GETTABLEKS                       R16 R17 K29 ["FFlagAssistantUseNewCreatorStoreTools"]
      117 GETTABLEKS                       R19 R1 K21 ["Flags"]
      119 GETTABLEKS                       R18 R19 K25 ["Shared"]
      121 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantUseNewMeshGenTool"]
      123 GETTABLEKS                       R20 R1 K21 ["Flags"]
      125 GETTABLEKS                       R19 R20 K25 ["Shared"]
      127 GETTABLEKS                       R18 R19 K31 ["FFlagDisableScreenCaptureForDefaultModel"]
      129 GETTABLEKS                       R21 R1 K21 ["Flags"]
      131 GETTABLEKS                       R20 R21 K25 ["Shared"]
      133 GETTABLEKS                       R19 R20 K32 ["FFlagAssistantDynamicToolDescription"]
      135 GETTABLEKS                       R22 R1 K16 ["Components"]
      137 GETTABLEKS                       R21 R22 K13 ["Hooks"]
      139 GETTABLEKS                       R20 R21 K33 ["useWithClient"]
      141 GETTABLEKS                       R21 R2 K34 ["ToolRegistry"]
      143 GETTABLEKS                       R24 R1 K35 ["Resources"]
      145 GETTABLEKS                       R23 R24 K36 ["Localization"]
      147 GETTABLEKS                       R22 R23 K37 ["Translator"]
      149 GETTABLEKS                       R25 R1 K38 ["Tools"]
      151 GETTABLEKS                       R24 R25 K39 ["ToolTypes"]
      153 GETTABLEKS                       R23 R24 K40 ["ToolNames"]
      155 GETTABLEKS                       R24 R3 K41 ["createElement"]
      157 NEWTABLE                         R25 16 0
      159 GETTABLEKS                       R26 R23 K42 ["ExecuteLuau"]
      161 LOADK                            R27 K42 ["ExecuteLuau"]
      162 SETTABLE                         R27 R25 R26
      163 GETTABLEKS                       R26 R23 K43 ["MaterialGen"]
      165 LOADK                            R27 K44 ["GenerateMaterial"]
      166 SETTABLE                         R27 R25 R26
      167 GETTABLEKS                       R26 R23 K45 ["InsertFromMarketplace"]
      169 MOVE                             R28 R16
      170 CALL                             R28 0 1
      171 JUMPIFNOT                        R28 ; [+2]
      172 LOADNIL                          R27
      173 JUMP                             ; [+1]
      174 LOADK                            R27 K45 ["InsertFromMarketplace"]
      175 SETTABLE                         R27 R25 R26
      176 GETTABLEKS                       R26 R23 K46 ["CreatorStoreSearch"]
      178 MOVE                             R28 R16
      179 CALL                             R28 0 1
      180 JUMPIFNOT                        R28 ; [+2]
      181 LOADK                            R27 K46 ["CreatorStoreSearch"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R27
      184 SETTABLE                         R27 R25 R26
      185 GETTABLEKS                       R26 R23 K47 ["CreatorStoreInsert"]
      187 MOVE                             R28 R16
      188 CALL                             R28 0 1
      189 JUMPIFNOT                        R28 ; [+2]
      190 LOADK                            R27 K47 ["CreatorStoreInsert"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R27
      193 SETTABLE                         R27 R25 R26
      194 GETTABLEKS                       R26 R23 K48 ["MeshGen"]
      196 MOVE                             R28 R17
      197 CALL                             R28 0 1
      198 JUMPIFNOT                        R28 ; [+2]
      199 LOADK                            R27 K48 ["MeshGen"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R27
      202 SETTABLE                         R27 R25 R26
      203 GETTABLEKS                       R26 R23 K49 ["MultiEdit"]
      205 LOADK                            R27 K50 ["MultiEditUpdated"]
      206 SETTABLE                         R27 R25 R26
      207 GETTABLEKS                       R26 R23 K51 ["ScreenCapture"]
      209 LOADK                            R27 K51 ["ScreenCapture"]
      210 SETTABLE                         R27 R25 R26
      211 GETTABLEKS                       R26 R23 K52 ["UploadImage"]
      213 LOADK                            R27 K52 ["UploadImage"]
      214 SETTABLE                         R27 R25 R26
      215 GETTABLEKS                       R26 R23 K53 ["PrimitiveGen"]
      217 LOADK                            R27 K53 ["PrimitiveGen"]
      218 SETTABLE                         R27 R25 R26
      219 MOVE                             R26 R10
      220 CALL                             R26 0 1
      221 JUMPIFNOT                        R26 ; [+7]
      222 MOVE                             R26 R14
      223 CALL                             R26 0 1
      224 JUMPIF                           R26 ; [+4]
      225 GETTABLEKS                       R26 R23 K54 ["TestGame"]
      227 LOADK                            R27 K54 ["TestGame"]
      228 SETTABLE                         R27 R25 R26
      229 MOVE                             R26 R14
      230 CALL                             R26 0 1
      231 JUMPIFNOT                        R26 ; [+20]
      232 GETTABLEKS                       R26 R23 K55 ["StartStopPlay"]
      234 LOADK                            R27 K55 ["StartStopPlay"]
      235 SETTABLE                         R27 R25 R26
      236 GETTABLEKS                       R26 R23 K56 ["GetConsoleOutput"]
      238 LOADK                            R27 K56 ["GetConsoleOutput"]
      239 SETTABLE                         R27 R25 R26
      240 GETTABLEKS                       R26 R23 K57 ["UserKeyboardInput"]
      242 LOADK                            R27 K57 ["UserKeyboardInput"]
      243 SETTABLE                         R27 R25 R26
      244 GETTABLEKS                       R26 R23 K58 ["UserMouseInput"]
      246 LOADK                            R27 K58 ["UserMouseInput"]
      247 SETTABLE                         R27 R25 R26
      248 GETTABLEKS                       R26 R23 K59 ["CharacterNavigation"]
      250 LOADK                            R27 K59 ["CharacterNavigation"]
      251 SETTABLE                         R27 R25 R26
      252 DUPCLOSURE                       R26 K60 [PROTO_2]
      253 CAPTURE                          VAL R25
      254 CAPTURE                          VAL R22
      255 CAPTURE                          VAL R11
      256 CAPTURE                          VAL R21
      257 DUPCLOSURE                       R27 K61 [PROTO_10]
      258 CAPTURE                          VAL R12
      259 CAPTURE                          VAL R20
      260 CAPTURE                          VAL R5
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R15
      263 CAPTURE                          VAL R8
      264 CAPTURE                          VAL R7
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R18
      268 CAPTURE                          VAL R9
      269 CAPTURE                          VAL R6
      270 CAPTURE                          VAL R13
      271 CAPTURE                          VAL R19
      272 CAPTURE                          VAL R26
      273 CAPTURE                          VAL R24
      274 CAPTURE                          VAL R1
      275 RETURN                           R27 1
