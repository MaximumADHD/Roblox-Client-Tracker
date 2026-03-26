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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setToolDisabled"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["name"]
        6 NOT                              R3 R0
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 2
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
       17 JUMPIFNOT                        R10 ; [+28]
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
       35 CAPTURE                          VAL R8
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R13 R12 K6 ["onChange"]
       39 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       41 MOVE                             R14 R3
       42 MOVE                             R15 R12
       43 GETIMPORT                        R13 K10 [table.insert]
       45 CALL                             R13 2 0
       46 FORGLOOP                         R4 2 ; [-41]
       48 RETURN                           R3 1

PROTO_3:
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

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"disableScreenCapture"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["disableScreenCapture"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K2 ["listTools"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R2 R2 K3 ["andThen"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 RETURN                           R0 1

PROTO_7:
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
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K0 ["useState"]
       20 NEWTABLE                         R5 0 0
       22 CALL                             R4 1 2
       23 LOADNIL                          R6
       24 GETUPVAL                         R7 4
       25 CALL                             R7 0 1
       26 JUMPIFNOT                        R7 ; [+21]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K1 ["useContext"]
       30 GETUPVAL                         R9 5
       31 GETTABLEKS                       R8 R9 K2 ["Context"]
       33 CALL                             R7 1 1
       34 MOVE                             R8 R7
       35 JUMPIFNOT                        R8 ; [+11]
       36 LOADB                            R8 1
       37 GETTABLEKS                       R9 R7 K3 ["selectedProvider"]
       39 JUMPIFEQKS                       R9 K4 ["Studio"] ; [+7]
       41 GETTABLEKS                       R9 R7 K3 ["selectedProvider"]
       43 JUMPIFEQKS                       R9 K5 ["OpenAI"] ; [+2]
       45 LOADB                            R8 0 +1
       46 LOADB                            R8 1
       47 MOVE                             R6 R8
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R7 R8 K6 ["useEffect"]
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          REF R1
       53 CAPTURE                          REF R6
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R9 0 2
       57 MOVE                             R10 R1
       58 MOVE                             R11 R6
       59 SETLIST                          R9 R10 2 [1]
       61 CALL                             R7 2 0
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R7 R8 K7 ["useMemo"]
       65 NEWCLOSURE                       R8 P1
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R9 0 2
       72 MOVE                             R10 R2
       73 MOVE                             R11 R4
       74 SETLIST                          R9 R10 2 [1]
       76 CALL                             R7 2 1
       77 GETUPVAL                         R8 7
       78 GETUPVAL                         R12 8
       79 GETTABLEKS                       R11 R12 K8 ["Components"]
       81 GETTABLEKS                       R10 R11 K9 ["Contexts"]
       83 GETTABLEKS                       R9 R10 K10 ["OptionsContextProvider"]
       85 DUPTABLE                         R10 K12 [{"options"}]
       86 SETTABLEKS                       R7 R10 K11 ["options"]
       88 GETTABLEKS                       R11 R0 K13 ["children"]
       90 CALL                             R8 3 -1
       91 CLOSEUPVALS                      R1
       92 RETURN                           R8 -1

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
       32 GETTABLEKS                       R6 R7 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R6 K12 ["useRunWithMcpClient_DEPRECATED"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R7 R1 K13 ["Components"]
       39 GETTABLEKS                       R6 R7 K14 ["Contexts"]
       41 GETTABLEKS                       R5 R6 K15 ["LLMProviderSelectionContext"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R9 R0 K10 ["Src"]
       47 GETTABLEKS                       R8 R9 K16 ["Flags"]
       49 GETTABLEKS                       R7 R8 K17 ["FFlagAssistantDebugMode"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R9 R1 K16 ["Flags"]
       54 GETTABLEKS                       R8 R9 K18 ["Shared"]
       56 GETTABLEKS                       R7 R8 K19 ["FFlagAssistantTestAutomation"]
       58 GETTABLEKS                       R10 R1 K16 ["Flags"]
       60 GETTABLEKS                       R9 R10 K18 ["Shared"]
       62 GETTABLEKS                       R8 R9 K20 ["FFlagDisableScreenCaptureForDefaultModel"]
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R12 R0 K10 ["Src"]
       68 GETTABLEKS                       R11 R12 K16 ["Flags"]
       70 GETTABLEKS                       R10 R11 K21 ["FFlagMCPAssistantDeduplicateMcpClient"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R12 R1 K13 ["Components"]
       75 GETTABLEKS                       R11 R12 K11 ["Hooks"]
       77 GETTABLEKS                       R10 R11 K22 ["useWithClient"]
       79 GETTABLEKS                       R11 R2 K23 ["ToolRegistry"]
       81 GETTABLEKS                       R14 R1 K24 ["Resources"]
       83 GETTABLEKS                       R13 R14 K25 ["Localization"]
       85 GETTABLEKS                       R12 R13 K26 ["Translator"]
       87 GETTABLEKS                       R15 R1 K27 ["Tools"]
       89 GETTABLEKS                       R14 R15 K28 ["ToolTypes"]
       91 GETTABLEKS                       R13 R14 K29 ["ToolNames"]
       93 GETTABLEKS                       R14 R3 K30 ["createElement"]
       95 NEWTABLE                         R15 8 0
       97 GETTABLEKS                       R16 R13 K31 ["ExecuteLuau"]
       99 LOADK                            R17 K31 ["ExecuteLuau"]
      100 SETTABLE                         R17 R15 R16
      101 GETTABLEKS                       R16 R13 K32 ["MaterialGen"]
      103 LOADK                            R17 K33 ["GenerateMaterial"]
      104 SETTABLE                         R17 R15 R16
      105 GETTABLEKS                       R16 R13 K34 ["InsertFromMarketplace"]
      107 LOADK                            R17 K34 ["InsertFromMarketplace"]
      108 SETTABLE                         R17 R15 R16
      109 GETTABLEKS                       R16 R13 K35 ["MultiEdit"]
      111 LOADK                            R17 K36 ["MultiEditUpdated"]
      112 SETTABLE                         R17 R15 R16
      113 GETTABLEKS                       R16 R13 K37 ["ScreenCapture"]
      115 LOADK                            R17 K37 ["ScreenCapture"]
      116 SETTABLE                         R17 R15 R16
      117 GETTABLEKS                       R16 R13 K38 ["UploadImage"]
      119 LOADK                            R17 K38 ["UploadImage"]
      120 SETTABLE                         R17 R15 R16
      121 GETTABLEKS                       R16 R13 K39 ["PrimitiveGen"]
      123 LOADK                            R17 K39 ["PrimitiveGen"]
      124 SETTABLE                         R17 R15 R16
      125 MOVE                             R16 R6
      126 CALL                             R16 0 1
      127 JUMPIFNOT                        R16 ; [+7]
      128 MOVE                             R16 R7
      129 CALL                             R16 0 1
      130 JUMPIF                           R16 ; [+4]
      131 GETTABLEKS                       R16 R13 K40 ["TestGame"]
      133 LOADK                            R17 K40 ["TestGame"]
      134 SETTABLE                         R17 R15 R16
      135 MOVE                             R16 R7
      136 CALL                             R16 0 1
      137 JUMPIFNOT                        R16 ; [+20]
      138 GETTABLEKS                       R16 R13 K41 ["StartStopPlay"]
      140 LOADK                            R17 K41 ["StartStopPlay"]
      141 SETTABLE                         R17 R15 R16
      142 GETTABLEKS                       R16 R13 K42 ["GetConsoleOutput"]
      144 LOADK                            R17 K42 ["GetConsoleOutput"]
      145 SETTABLE                         R17 R15 R16
      146 GETTABLEKS                       R16 R13 K43 ["UserKeyboardInput"]
      148 LOADK                            R17 K43 ["UserKeyboardInput"]
      149 SETTABLE                         R17 R15 R16
      150 GETTABLEKS                       R16 R13 K44 ["UserMouseInput"]
      152 LOADK                            R17 K44 ["UserMouseInput"]
      153 SETTABLE                         R17 R15 R16
      154 GETTABLEKS                       R16 R13 K45 ["CharacterNavigation"]
      156 LOADK                            R17 K45 ["CharacterNavigation"]
      157 SETTABLE                         R17 R15 R16
      158 DUPCLOSURE                       R16 K46 [PROTO_2]
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R11
      162 DUPCLOSURE                       R17 K47 [PROTO_7]
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R1
      172 RETURN                           R17 1
