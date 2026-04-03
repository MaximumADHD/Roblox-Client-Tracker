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
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R0 K4 ["listTools"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U3
       21 NAMECALL                         R2 R2 K5 ["andThen"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

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
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

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
       87 JUMPIFNOT                        R8 ; [+25]
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R8 R9 K4 ["useContext"]
       91 GETUPVAL                         R10 10
       92 GETTABLEKS                       R9 R10 K5 ["Context"]
       94 CALL                             R8 1 1
       95 MOVE                             R9 R8
       96 JUMPIFNOT                        R9 ; [+15]
       97 LOADB                            R9 1
       98 GETTABLEKS                       R10 R8 K6 ["selectedProvider"]
      100 JUMPIFEQKS                       R10 K7 ["Studio"] ; [+11]
      102 GETUPVAL                         R10 11
      103 CALL                             R10 0 1
      104 NOT                              R9 R10
      105 JUMPIFNOT                        R9 ; [+6]
      106 GETTABLEKS                       R10 R8 K6 ["selectedProvider"]
      108 JUMPIFEQKS                       R10 K8 ["OpenAI"] ; [+2]
      110 LOADB                            R9 0 +1
      111 LOADB                            R9 1
      112 MOVE                             R7 R9
      113 GETUPVAL                         R9 3
      114 GETTABLEKS                       R8 R9 K3 ["useEffect"]
      116 NEWCLOSURE                       R9 P3
      117 CAPTURE                          REF R1
      118 CAPTURE                          REF R7
      119 CAPTURE                          REF R6
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R3
      122 NEWTABLE                         R10 0 3
      124 MOVE                             R11 R1
      125 MOVE                             R12 R7
      126 MOVE                             R13 R6
      127 SETLIST                          R10 R11 3 [1]
      129 CALL                             R8 2 0
      130 GETUPVAL                         R9 3
      131 GETTABLEKS                       R8 R9 K1 ["useMemo"]
      133 NEWCLOSURE                       R9 P4
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          VAL R2
      136 CAPTURE                          REF R4
      137 CAPTURE                          REF R5
      138 NEWTABLE                         R10 0 3
      140 MOVE                             R11 R2
      141 MOVE                             R12 R4
      142 MOVE                             R13 R5
      143 SETLIST                          R10 R11 3 [1]
      145 CALL                             R8 2 1
      146 GETUPVAL                         R9 13
      147 GETUPVAL                         R13 14
      148 GETTABLEKS                       R12 R13 K9 ["Components"]
      150 GETTABLEKS                       R11 R12 K10 ["Contexts"]
      152 GETTABLEKS                       R10 R11 K11 ["OptionsContextProvider"]
      154 DUPTABLE                         R11 K13 [{"options"}]
      155 SETTABLEKS                       R8 R11 K12 ["options"]
      157 GETTABLEKS                       R12 R0 K14 ["children"]
      159 CALL                             R9 3 -1
      160 CLOSEUPVALS                      R1
      161 RETURN                           R9 -1

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
       46 GETTABLEKS                       R8 R1 K15 ["Components"]
       48 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       50 GETTABLEKS                       R6 R7 K16 ["useAssistantMode"]
       52 GETTABLEKS                       R9 R1 K15 ["Components"]
       54 GETTABLEKS                       R8 R9 K13 ["Hooks"]
       56 GETTABLEKS                       R7 R8 K17 ["useAssistantModeToolStates"]
       58 GETTABLEKS                       R10 R1 K15 ["Components"]
       60 GETTABLEKS                       R9 R10 K18 ["Contexts"]
       62 GETTABLEKS                       R8 R9 K19 ["LLMProviderSelectionContext"]
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R12 R0 K10 ["Src"]
       68 GETTABLEKS                       R11 R12 K20 ["Flags"]
       70 GETTABLEKS                       R10 R11 K21 ["FFlagAssistantDebugMode"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R12 R1 K20 ["Flags"]
       75 GETTABLEKS                       R11 R12 K22 ["Shared"]
       77 GETTABLEKS                       R10 R11 K23 ["FFlagAssistantTestAutomation"]
       79 GETTABLEKS                       R13 R1 K20 ["Flags"]
       81 GETTABLEKS                       R12 R13 K22 ["Shared"]
       83 GETTABLEKS                       R11 R12 K24 ["FFlagDisableScreenCaptureForDefaultModel"]
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R15 R0 K10 ["Src"]
       89 GETTABLEKS                       R14 R15 K20 ["Flags"]
       91 GETTABLEKS                       R13 R14 K25 ["FFlagMCPAssistantDeduplicateMcpClient"]
       93 CALL                             R12 1 1
       94 GETTABLEKS                       R15 R1 K20 ["Flags"]
       96 GETTABLEKS                       R14 R15 K22 ["Shared"]
       98 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantNewOpenAIAdapter"]
      100 GETTABLEKS                       R16 R1 K20 ["Flags"]
      102 GETTABLEKS                       R15 R16 K22 ["Shared"]
      104 GETTABLEKS                       R14 R15 K27 ["FFlagAssistantTestModeDropdown"]
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R18 R0 K10 ["Src"]
      110 GETTABLEKS                       R17 R18 K20 ["Flags"]
      112 GETTABLEKS                       R16 R17 K28 ["FFlagAssistantFixToolDisappear"]
      114 CALL                             R15 1 1
      115 GETTABLEKS                       R18 R1 K15 ["Components"]
      117 GETTABLEKS                       R17 R18 K13 ["Hooks"]
      119 GETTABLEKS                       R16 R17 K29 ["useWithClient"]
      121 GETTABLEKS                       R17 R2 K30 ["ToolRegistry"]
      123 GETTABLEKS                       R20 R1 K31 ["Resources"]
      125 GETTABLEKS                       R19 R20 K32 ["Localization"]
      127 GETTABLEKS                       R18 R19 K33 ["Translator"]
      129 GETTABLEKS                       R21 R1 K34 ["Tools"]
      131 GETTABLEKS                       R20 R21 K35 ["ToolTypes"]
      133 GETTABLEKS                       R19 R20 K36 ["ToolNames"]
      135 GETTABLEKS                       R20 R3 K37 ["createElement"]
      137 NEWTABLE                         R21 8 0
      139 GETTABLEKS                       R22 R19 K38 ["ExecuteLuau"]
      141 LOADK                            R23 K38 ["ExecuteLuau"]
      142 SETTABLE                         R23 R21 R22
      143 GETTABLEKS                       R22 R19 K39 ["MaterialGen"]
      145 LOADK                            R23 K40 ["GenerateMaterial"]
      146 SETTABLE                         R23 R21 R22
      147 GETTABLEKS                       R22 R19 K41 ["InsertFromMarketplace"]
      149 LOADK                            R23 K41 ["InsertFromMarketplace"]
      150 SETTABLE                         R23 R21 R22
      151 GETTABLEKS                       R22 R19 K42 ["MultiEdit"]
      153 LOADK                            R23 K43 ["MultiEditUpdated"]
      154 SETTABLE                         R23 R21 R22
      155 GETTABLEKS                       R22 R19 K44 ["ScreenCapture"]
      157 LOADK                            R23 K44 ["ScreenCapture"]
      158 SETTABLE                         R23 R21 R22
      159 GETTABLEKS                       R22 R19 K45 ["UploadImage"]
      161 LOADK                            R23 K45 ["UploadImage"]
      162 SETTABLE                         R23 R21 R22
      163 GETTABLEKS                       R22 R19 K46 ["PrimitiveGen"]
      165 LOADK                            R23 K46 ["PrimitiveGen"]
      166 SETTABLE                         R23 R21 R22
      167 MOVE                             R22 R9
      168 CALL                             R22 0 1
      169 JUMPIFNOT                        R22 ; [+7]
      170 MOVE                             R22 R10
      171 CALL                             R22 0 1
      172 JUMPIF                           R22 ; [+4]
      173 GETTABLEKS                       R22 R19 K47 ["TestGame"]
      175 LOADK                            R23 K47 ["TestGame"]
      176 SETTABLE                         R23 R21 R22
      177 MOVE                             R22 R10
      178 CALL                             R22 0 1
      179 JUMPIFNOT                        R22 ; [+20]
      180 GETTABLEKS                       R22 R19 K48 ["StartStopPlay"]
      182 LOADK                            R23 K48 ["StartStopPlay"]
      183 SETTABLE                         R23 R21 R22
      184 GETTABLEKS                       R22 R19 K49 ["GetConsoleOutput"]
      186 LOADK                            R23 K49 ["GetConsoleOutput"]
      187 SETTABLE                         R23 R21 R22
      188 GETTABLEKS                       R22 R19 K50 ["UserKeyboardInput"]
      190 LOADK                            R23 K50 ["UserKeyboardInput"]
      191 SETTABLE                         R23 R21 R22
      192 GETTABLEKS                       R22 R19 K51 ["UserMouseInput"]
      194 LOADK                            R23 K51 ["UserMouseInput"]
      195 SETTABLE                         R23 R21 R22
      196 GETTABLEKS                       R22 R19 K52 ["CharacterNavigation"]
      198 LOADK                            R23 K52 ["CharacterNavigation"]
      199 SETTABLE                         R23 R21 R22
      200 DUPCLOSURE                       R22 K53 [PROTO_2]
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R17
      205 DUPCLOSURE                       R23 K54 [PROTO_10]
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R20
      220 CAPTURE                          VAL R1
      221 RETURN                           R23 1
