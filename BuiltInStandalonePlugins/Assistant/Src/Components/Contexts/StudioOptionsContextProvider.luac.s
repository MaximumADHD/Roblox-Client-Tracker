PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["name"]
        7 GETUPVAL                         R3 1
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantFixToolDisappear"]
        3 JUMPIF                           R1 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setToolDisabled"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["name"]
       10 NOT                              R3 R0
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 3
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

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
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K4 ["setToolEnabledStates"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["result"]
        3 GETTABLEKS                       R1 R1 K1 ["tools"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R2 R0 K0 ["result"]
       10 GETTABLEKS                       R2 R2 K1 ["tools"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K5 [{"useInternalToolDefinitions", "assistantMode", "includeDisabledTools", "isMultiPlayerClientAgent", "isMultiPlayerClientAgentRunning"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["useInternalToolDefinitions"]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["assistantMode"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantFixToolDisappear"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 LOADB                            R2 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K2 ["includeDisabledTools"]
       16 GETUPVAL                         R2 3
       17 SETTABLEKS                       R2 R1 K3 ["isMultiPlayerClientAgent"]
       19 GETUPVAL                         R2 4
       20 SETTABLEKS                       R2 R1 K4 ["isMultiPlayerClientAgentRunning"]
       22 DUPTABLE                         R2 K8 [{"_meta"}]
       23 SETTABLEKS                       R1 R2 K7 ["_meta"]
       25 MOVE                             R1 R2
       26 MOVE                             R5 R1
       27 NAMECALL                         R3 R0 K9 ["listTools"]
       29 CALL                             R3 2 1
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U5
       32 NAMECALL                         R3 R3 K10 ["andThen"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

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
       11 CAPTURE                          UPVAL U6
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 2
        9 CALL                             R4 0 2
       10 GETUPVAL                         R6 3
       11 CALL                             R6 0 1
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K1 ["useMemo"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R6
       18 NEWTABLE                         R9 0 2
       20 MOVE                             R10 R4
       21 MOVE                             R11 R6
       22 SETLIST                          R9 R10 2 [1]
       24 CALL                             R7 2 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R5
       32 NEWTABLE                         R10 0 3
       34 MOVE                             R11 R4
       35 MOVE                             R12 R6
       36 MOVE                             R13 R5
       37 SETLIST                          R10 R11 3 [1]
       39 CALL                             R8 2 1
       40 LOADNIL                          R9
       41 LOADNIL                          R10
       42 GETUPVAL                         R11 4
       43 GETTABLEKS                       R11 R11 K3 ["FFlagAssistantMultiPlayerAgents"]
       45 JUMPIFNOT                        R11 ; [+6]
       46 GETUPVAL                         R11 5
       47 CALL                             R11 0 1
       48 GETTABLEKS                       R9 R11 K4 ["isMultiPlayerClientAgent"]
       50 GETTABLEKS                       R10 R11 K5 ["isMultiPlayerClientAgentRunning"]
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R11 R11 K6 ["FFlagAssistantFixToolDisappear"]
       55 JUMPIFNOT                        R11 ; [+14]
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K7 ["useEffect"]
       59 NEWCLOSURE                       R12 P2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U6
       63 NEWTABLE                         R13 0 2
       65 MOVE                             R14 R7
       66 MOVE                             R15 R2
       67 SETLIST                          R13 R14 2 [1]
       69 CALL                             R11 2 0
       70 LOADNIL                          R11
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R12 R12 K8 ["useContext"]
       74 GETUPVAL                         R13 7
       75 GETTABLEKS                       R13 R13 K9 ["Context"]
       77 CALL                             R12 1 1
       78 MOVE                             R13 R12
       79 JUMPIFNOT                        R13 ; [+11]
       80 GETTABLEKS                       R14 R12 K10 ["selectedProvider"]
       82 GETUPVAL                         R15 8
       83 GETTABLEKS                       R15 R15 K11 ["LLMProviderTypes"]
       85 GETTABLEKS                       R15 R15 K12 ["Studio"]
       87 JUMPIFEQ                         R14 R15 ; [+2]
       89 LOADB                            R13 0 +1
       90 LOADB                            R13 1
       91 MOVE                             R11 R13
       92 GETUPVAL                         R13 1
       93 GETTABLEKS                       R13 R13 K7 ["useEffect"]
       95 NEWCLOSURE                       R14 P3
       96 CAPTURE                          VAL R1
       97 CAPTURE                          REF R11
       98 CAPTURE                          VAL R6
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          REF R9
      101 CAPTURE                          REF R10
      102 CAPTURE                          VAL R3
      103 NEWTABLE                         R15 0 5
      105 MOVE                             R16 R1
      106 MOVE                             R17 R11
      107 MOVE                             R18 R6
      108 MOVE                             R19 R9
      109 MOVE                             R20 R10
      110 SETLIST                          R15 R16 5 [1]
      112 CALL                             R13 2 0
      113 GETUPVAL                         R13 1
      114 GETTABLEKS                       R13 R13 K1 ["useMemo"]
      116 NEWCLOSURE                       R14 P4
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 NEWTABLE                         R15 0 3
      123 MOVE                             R16 R2
      124 MOVE                             R17 R7
      125 MOVE                             R18 R8
      126 SETLIST                          R15 R16 3 [1]
      128 CALL                             R13 2 1
      129 GETUPVAL                         R14 10
      130 GETUPVAL                         R15 11
      131 GETTABLEKS                       R15 R15 K13 ["Components"]
      133 GETTABLEKS                       R15 R15 K14 ["Contexts"]
      135 GETTABLEKS                       R15 R15 K15 ["OptionsContextProvider"]
      137 DUPTABLE                         R16 K17 [{"options"}]
      138 SETTABLEKS                       R13 R16 K16 ["options"]
      140 GETTABLEKS                       R17 R0 K18 ["children"]
      142 CALL                             R14 3 -1
      143 CLOSEUPVALS                      R9
      144 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Host"]
       34 GETTABLEKS                       R5 R5 K12 ["startMcpHost"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Types"]
       39 GETTABLEKS                       R6 R1 K14 ["Components"]
       41 GETTABLEKS                       R6 R6 K15 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K16 ["useAssistantMode"]
       45 GETTABLEKS                       R7 R1 K14 ["Components"]
       47 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       49 GETTABLEKS                       R7 R7 K17 ["useMultiPlayerClientAgentStates"]
       51 GETTABLEKS                       R8 R1 K14 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K18 ["useAssistantModeToolStates"]
       57 GETTABLEKS                       R9 R1 K14 ["Components"]
       59 GETTABLEKS                       R9 R9 K19 ["Contexts"]
       61 GETTABLEKS                       R9 R9 K20 ["LLMProviderSelectionContext"]
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Src"]
       67 GETTABLEKS                       R11 R11 K21 ["Flags"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R1 K14 ["Components"]
       72 GETTABLEKS                       R11 R11 K15 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K22 ["useWithClient"]
       76 GETTABLEKS                       R12 R2 K23 ["ToolRegistry"]
       78 GETTABLEKS                       R13 R1 K24 ["Resources"]
       80 GETTABLEKS                       R13 R13 K25 ["Localization"]
       82 GETTABLEKS                       R13 R13 K26 ["Translator"]
       84 GETTABLEKS                       R14 R1 K27 ["Tools"]
       86 GETTABLEKS                       R14 R14 K28 ["ToolTypes"]
       88 GETTABLEKS                       R14 R14 K29 ["ToolNames"]
       90 GETTABLEKS                       R15 R3 K30 ["createElement"]
       92 NEWTABLE                         R16 32 0
       94 GETTABLEKS                       R17 R14 K31 ["ExecuteLuau"]
       96 LOADK                            R18 K31 ["ExecuteLuau"]
       97 SETTABLE                         R18 R16 R17
       98 GETTABLEKS                       R17 R14 K32 ["MaterialGen"]
      100 LOADK                            R18 K33 ["GenerateMaterial"]
      101 SETTABLE                         R18 R16 R17
      102 GETTABLEKS                       R17 R14 K34 ["CreatorStoreSearch"]
      104 LOADK                            R18 K34 ["CreatorStoreSearch"]
      105 SETTABLE                         R18 R16 R17
      106 GETTABLEKS                       R17 R14 K35 ["CreatorStoreInsert"]
      108 LOADK                            R18 K35 ["CreatorStoreInsert"]
      109 SETTABLE                         R18 R16 R17
      110 GETTABLEKS                       R17 R14 K36 ["MeshGen"]
      112 LOADK                            R18 K36 ["MeshGen"]
      113 SETTABLE                         R18 R16 R17
      114 GETTABLEKS                       R17 R14 K37 ["AnimationGen"]
      116 GETTABLEKS                       R19 R10 K38 ["FFlagAssistantAnimationGenTool"]
      118 JUMPIFNOT                        R19 ; [+2]
      119 LOADK                            R18 K37 ["AnimationGen"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R18
      122 SETTABLE                         R18 R16 R17
      123 GETTABLEKS                       R17 R14 K39 ["MultiEdit"]
      125 LOADK                            R18 K40 ["MultiEditUpdated"]
      126 SETTABLE                         R18 R16 R17
      127 GETTABLEKS                       R17 R14 K41 ["ScreenCapture"]
      129 LOADK                            R18 K41 ["ScreenCapture"]
      130 SETTABLE                         R18 R16 R17
      131 GETTABLEKS                       R17 R14 K42 ["UploadImage"]
      133 LOADK                            R18 K42 ["UploadImage"]
      134 SETTABLE                         R18 R16 R17
      135 GETTABLEKS                       R17 R14 K43 ["PrimitiveGen"]
      137 LOADK                            R18 K43 ["PrimitiveGen"]
      138 SETTABLE                         R18 R16 R17
      139 GETTABLEKS                       R17 R14 K44 ["AssetInsert"]
      141 GETTABLEKS                       R19 R10 K45 ["FFlagAssistantAssetSearchInsertTool"]
      143 JUMPIF                           R19 ; [+3]
      144 GETTABLEKS                       R19 R10 K46 ["FFlagAssistantAssetSearchInsertToolABTest"]
      146 JUMPIFNOT                        R19 ; [+2]
      147 LOADK                            R18 K44 ["AssetInsert"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R18
      150 SETTABLE                         R18 R16 R17
      151 GETTABLEKS                       R17 R14 K47 ["AssetSearch"]
      153 GETTABLEKS                       R19 R10 K45 ["FFlagAssistantAssetSearchInsertTool"]
      155 JUMPIF                           R19 ; [+3]
      156 GETTABLEKS                       R19 R10 K46 ["FFlagAssistantAssetSearchInsertToolABTest"]
      158 JUMPIFNOT                        R19 ; [+2]
      159 LOADK                            R18 K47 ["AssetSearch"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R18
      162 SETTABLE                         R18 R16 R17
      163 GETTABLEKS                       R17 R14 K48 ["StartStopPlay"]
      165 LOADK                            R18 K48 ["StartStopPlay"]
      166 SETTABLE                         R18 R16 R17
      167 GETTABLEKS                       R17 R14 K49 ["GetConsoleOutput"]
      169 LOADK                            R18 K49 ["GetConsoleOutput"]
      170 SETTABLE                         R18 R16 R17
      171 GETTABLEKS                       R17 R14 K50 ["UserKeyboardInput"]
      173 LOADK                            R18 K50 ["UserKeyboardInput"]
      174 SETTABLE                         R18 R16 R17
      175 GETTABLEKS                       R17 R14 K51 ["UserMouseInput"]
      177 LOADK                            R18 K51 ["UserMouseInput"]
      178 SETTABLE                         R18 R16 R17
      179 GETTABLEKS                       R17 R14 K52 ["CharacterNavigation"]
      181 LOADK                            R18 K52 ["CharacterNavigation"]
      182 SETTABLE                         R18 R16 R17
      183 GETTABLEKS                       R17 R10 K53 ["FFlagAssistantGetStudioState"]
      185 JUMPIFNOT                        R17 ; [+4]
      186 GETTABLEKS                       R17 R14 K54 ["GetStudioState"]
      188 LOADK                            R18 K54 ["GetStudioState"]
      189 SETTABLE                         R18 R16 R17
      190 GETTABLEKS                       R17 R10 K55 ["FFlagAssistantMultiPlayerAgents"]
      192 JUMPIFNOT                        R17 ; [+16]
      193 GETTABLEKS                       R17 R14 K56 ["StartMultiPlayerAgents"]
      195 LOADK                            R18 K56 ["StartMultiPlayerAgents"]
      196 SETTABLE                         R18 R16 R17
      197 GETTABLEKS                       R17 R14 K57 ["StopMultiPlayerAgents"]
      199 LOADK                            R18 K57 ["StopMultiPlayerAgents"]
      200 SETTABLE                         R18 R16 R17
      201 GETTABLEKS                       R17 R14 K58 ["MultiPlayerAgentsCommunication"]
      203 LOADK                            R18 K58 ["MultiPlayerAgentsCommunication"]
      204 SETTABLE                         R18 R16 R17
      205 GETTABLEKS                       R17 R14 K59 ["WaitForMultiPlayerAgentsCommunication"]
      207 LOADK                            R18 K59 ["WaitForMultiPlayerAgentsCommunication"]
      208 SETTABLE                         R18 R16 R17
      209 DUPCLOSURE                       R17 K60 [PROTO_2]
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R12
      214 DUPCLOSURE                       R18 K61 [PROTO_10]
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R1
      227 RETURN                           R18 1
