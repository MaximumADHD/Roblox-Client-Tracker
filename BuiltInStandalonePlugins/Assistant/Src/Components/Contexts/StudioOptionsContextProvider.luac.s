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
      117 GETTABLEKS                       R20 R1 K20 ["Flags"]
      119 GETTABLEKS                       R19 R20 K23 ["Shared"]
      121 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantAnimationGenTool"]
      123 GETTABLEKS                       R21 R1 K14 ["Components"]
      125 GETTABLEKS                       R20 R21 K15 ["Hooks"]
      127 GETTABLEKS                       R19 R20 K32 ["useWithClient"]
      129 GETTABLEKS                       R20 R2 K33 ["ToolRegistry"]
      131 GETTABLEKS                       R23 R1 K34 ["Resources"]
      133 GETTABLEKS                       R22 R23 K35 ["Localization"]
      135 GETTABLEKS                       R21 R22 K36 ["Translator"]
      137 GETTABLEKS                       R24 R1 K37 ["Tools"]
      139 GETTABLEKS                       R23 R24 K38 ["ToolTypes"]
      141 GETTABLEKS                       R22 R23 K39 ["ToolNames"]
      143 GETTABLEKS                       R23 R3 K40 ["createElement"]
      145 NEWTABLE                         R24 16 0
      147 GETTABLEKS                       R25 R22 K41 ["ExecuteLuau"]
      149 LOADK                            R26 K41 ["ExecuteLuau"]
      150 SETTABLE                         R26 R24 R25
      151 GETTABLEKS                       R25 R22 K42 ["MaterialGen"]
      153 LOADK                            R26 K43 ["GenerateMaterial"]
      154 SETTABLE                         R26 R24 R25
      155 GETTABLEKS                       R25 R22 K44 ["InsertFromMarketplace"]
      157 MOVE                             R27 R14
      158 CALL                             R27 0 1
      159 JUMPIFNOT                        R27 ; [+2]
      160 LOADNIL                          R26
      161 JUMP                             ; [+1]
      162 LOADK                            R26 K44 ["InsertFromMarketplace"]
      163 SETTABLE                         R26 R24 R25
      164 GETTABLEKS                       R25 R22 K45 ["CreatorStoreSearch"]
      166 MOVE                             R27 R14
      167 CALL                             R27 0 1
      168 JUMPIFNOT                        R27 ; [+2]
      169 LOADK                            R26 K45 ["CreatorStoreSearch"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R26
      172 SETTABLE                         R26 R24 R25
      173 GETTABLEKS                       R25 R22 K46 ["CreatorStoreInsert"]
      175 MOVE                             R27 R14
      176 CALL                             R27 0 1
      177 JUMPIFNOT                        R27 ; [+2]
      178 LOADK                            R26 K46 ["CreatorStoreInsert"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R26
      181 SETTABLE                         R26 R24 R25
      182 GETTABLEKS                       R25 R22 K47 ["MeshGen"]
      184 MOVE                             R27 R15
      185 CALL                             R27 0 1
      186 JUMPIFNOT                        R27 ; [+2]
      187 LOADK                            R26 K47 ["MeshGen"]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R26
      190 SETTABLE                         R26 R24 R25
      191 GETTABLEKS                       R25 R22 K48 ["AnimationGen"]
      193 MOVE                             R27 R18
      194 CALL                             R27 0 1
      195 JUMPIFNOT                        R27 ; [+2]
      196 LOADK                            R26 K48 ["AnimationGen"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R26
      199 SETTABLE                         R26 R24 R25
      200 GETTABLEKS                       R25 R22 K49 ["MultiEdit"]
      202 LOADK                            R26 K50 ["MultiEditUpdated"]
      203 SETTABLE                         R26 R24 R25
      204 GETTABLEKS                       R25 R22 K51 ["ScreenCapture"]
      206 LOADK                            R26 K51 ["ScreenCapture"]
      207 SETTABLE                         R26 R24 R25
      208 GETTABLEKS                       R25 R22 K52 ["UploadImage"]
      210 LOADK                            R26 K52 ["UploadImage"]
      211 SETTABLE                         R26 R24 R25
      212 GETTABLEKS                       R25 R22 K53 ["PrimitiveGen"]
      214 LOADK                            R26 K53 ["PrimitiveGen"]
      215 SETTABLE                         R26 R24 R25
      216 MOVE                             R25 R9
      217 CALL                             R25 0 1
      218 JUMPIFNOT                        R25 ; [+7]
      219 MOVE                             R25 R12
      220 CALL                             R25 0 1
      221 JUMPIF                           R25 ; [+4]
      222 GETTABLEKS                       R25 R22 K54 ["TestGame"]
      224 LOADK                            R26 K54 ["TestGame"]
      225 SETTABLE                         R26 R24 R25
      226 MOVE                             R25 R12
      227 CALL                             R25 0 1
      228 JUMPIFNOT                        R25 ; [+20]
      229 GETTABLEKS                       R25 R22 K55 ["StartStopPlay"]
      231 LOADK                            R26 K55 ["StartStopPlay"]
      232 SETTABLE                         R26 R24 R25
      233 GETTABLEKS                       R25 R22 K56 ["GetConsoleOutput"]
      235 LOADK                            R26 K56 ["GetConsoleOutput"]
      236 SETTABLE                         R26 R24 R25
      237 GETTABLEKS                       R25 R22 K57 ["UserKeyboardInput"]
      239 LOADK                            R26 K57 ["UserKeyboardInput"]
      240 SETTABLE                         R26 R24 R25
      241 GETTABLEKS                       R25 R22 K58 ["UserMouseInput"]
      243 LOADK                            R26 K58 ["UserMouseInput"]
      244 SETTABLE                         R26 R24 R25
      245 GETTABLEKS                       R25 R22 K59 ["CharacterNavigation"]
      247 LOADK                            R26 K59 ["CharacterNavigation"]
      248 SETTABLE                         R26 R24 R25
      249 DUPCLOSURE                       R25 K60 [PROTO_2]
      250 CAPTURE                          VAL R24
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R10
      253 CAPTURE                          VAL R20
      254 DUPCLOSURE                       R26 K61 [PROTO_10]
      255 CAPTURE                          VAL R19
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R7
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R16
      263 CAPTURE                          VAL R8
      264 CAPTURE                          VAL R5
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R17
      267 CAPTURE                          VAL R25
      268 CAPTURE                          VAL R23
      269 CAPTURE                          VAL R1
      270 RETURN                           R26 1
