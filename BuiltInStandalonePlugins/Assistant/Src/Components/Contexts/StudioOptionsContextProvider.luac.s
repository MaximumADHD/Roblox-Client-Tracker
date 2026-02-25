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
        0 NAMECALL                         R1 R0 K0 ["listTools"]
        2 CALL                             R1 1 1
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R1 R1 K1 ["andThen"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

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
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K1 ["useEffect"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          REF R1
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R1
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 0
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R6 R7 K2 ["useMemo"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 2
       45 MOVE                             R9 R2
       46 MOVE                             R10 R4
       47 SETLIST                          R8 R9 2 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 5
       51 GETUPVAL                         R11 6
       52 GETTABLEKS                       R10 R11 K3 ["Components"]
       54 GETTABLEKS                       R9 R10 K4 ["Contexts"]
       56 GETTABLEKS                       R8 R9 K5 ["OptionsContextProvider"]
       58 DUPTABLE                         R9 K7 [{"options"}]
       59 SETTABLEKS                       R6 R9 K6 ["options"]
       61 GETTABLEKS                       R10 R0 K8 ["children"]
       63 CALL                             R7 3 -1
       64 CLOSEUPVALS                      R1
       65 RETURN                           R7 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Flags"]
       43 GETTABLEKS                       R6 R7 K14 ["FFlagAssistantDebugMode"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R8 R1 K13 ["Flags"]
       48 GETTABLEKS                       R7 R8 K15 ["Shared"]
       50 GETTABLEKS                       R6 R7 K16 ["FFlagAssistantTestAutomation"]
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Src"]
       56 GETTABLEKS                       R9 R10 K13 ["Flags"]
       58 GETTABLEKS                       R8 R9 K17 ["FFlagMCPAssistantDeduplicateMcpClient"]
       60 CALL                             R7 1 1
       61 GETTABLEKS                       R10 R1 K18 ["Components"]
       63 GETTABLEKS                       R9 R10 K11 ["Hooks"]
       65 GETTABLEKS                       R8 R9 K19 ["useWithClient"]
       67 GETTABLEKS                       R9 R2 K20 ["ToolRegistry"]
       69 GETTABLEKS                       R12 R1 K21 ["Resources"]
       71 GETTABLEKS                       R11 R12 K22 ["Localization"]
       73 GETTABLEKS                       R10 R11 K23 ["Translator"]
       75 GETTABLEKS                       R13 R1 K24 ["Tools"]
       77 GETTABLEKS                       R12 R13 K25 ["ToolTypes"]
       79 GETTABLEKS                       R11 R12 K26 ["ToolNames"]
       81 GETTABLEKS                       R12 R3 K27 ["createElement"]
       83 NEWTABLE                         R13 8 0
       85 GETTABLEKS                       R14 R11 K28 ["ExecuteLuau"]
       87 LOADK                            R15 K28 ["ExecuteLuau"]
       88 SETTABLE                         R15 R13 R14
       89 GETTABLEKS                       R14 R11 K29 ["MaterialGen"]
       91 LOADK                            R15 K30 ["GenerateMaterial"]
       92 SETTABLE                         R15 R13 R14
       93 GETTABLEKS                       R14 R11 K31 ["InsertFromMarketplace"]
       95 LOADK                            R15 K31 ["InsertFromMarketplace"]
       96 SETTABLE                         R15 R13 R14
       97 GETTABLEKS                       R14 R11 K32 ["MultiEdit"]
       99 LOADK                            R15 K33 ["MultiEditUpdated"]
      100 SETTABLE                         R15 R13 R14
      101 GETTABLEKS                       R14 R11 K34 ["ScreenCapture"]
      103 LOADK                            R15 K34 ["ScreenCapture"]
      104 SETTABLE                         R15 R13 R14
      105 GETTABLEKS                       R14 R11 K35 ["UploadImage"]
      107 LOADK                            R15 K35 ["UploadImage"]
      108 SETTABLE                         R15 R13 R14
      109 GETTABLEKS                       R14 R11 K36 ["PrimitiveGen"]
      111 LOADK                            R15 K36 ["PrimitiveGen"]
      112 SETTABLE                         R15 R13 R14
      113 MOVE                             R14 R5
      114 CALL                             R14 0 1
      115 JUMPIFNOT                        R14 ; [+7]
      116 MOVE                             R14 R6
      117 CALL                             R14 0 1
      118 JUMPIF                           R14 ; [+4]
      119 GETTABLEKS                       R14 R11 K37 ["TestGame"]
      121 LOADK                            R15 K37 ["TestGame"]
      122 SETTABLE                         R15 R13 R14
      123 MOVE                             R14 R6
      124 CALL                             R14 0 1
      125 JUMPIFNOT                        R14 ; [+20]
      126 GETTABLEKS                       R14 R11 K38 ["StartStopPlay"]
      128 LOADK                            R15 K38 ["StartStopPlay"]
      129 SETTABLE                         R15 R13 R14
      130 GETTABLEKS                       R14 R11 K39 ["GetConsoleOutput"]
      132 LOADK                            R15 K39 ["GetConsoleOutput"]
      133 SETTABLE                         R15 R13 R14
      134 GETTABLEKS                       R14 R11 K40 ["UserKeyboardInput"]
      136 LOADK                            R15 K40 ["UserKeyboardInput"]
      137 SETTABLE                         R15 R13 R14
      138 GETTABLEKS                       R14 R11 K41 ["UserMouseInput"]
      140 LOADK                            R15 K41 ["UserMouseInput"]
      141 SETTABLE                         R15 R13 R14
      142 GETTABLEKS                       R14 R11 K42 ["CharacterNavigation"]
      144 LOADK                            R15 K42 ["CharacterNavigation"]
      145 SETTABLE                         R15 R13 R14
      146 DUPCLOSURE                       R14 K43 [PROTO_2]
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R9
      150 DUPCLOSURE                       R15 K44 [PROTO_7]
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R1
      158 RETURN                           R15 1
