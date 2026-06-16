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
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setToolDisabled"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["name"]
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
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADB                            R2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K2 ["includeDisabledTools"]
       15 GETUPVAL                         R2 3
       16 SETTABLEKS                       R2 R1 K3 ["isMultiPlayerClientAgent"]
       18 GETUPVAL                         R2 4
       19 SETTABLEKS                       R2 R1 K4 ["isMultiPlayerClientAgentRunning"]
       21 GETUPVAL                         R2 5
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+4]
       24 DUPTABLE                         R2 K7 [{"_meta"}]
       25 SETTABLEKS                       R1 R2 K6 ["_meta"]
       27 MOVE                             R1 R2
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R0 K8 ["listTools"]
       31 CALL                             R2 2 1
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U6
       34 NAMECALL                         R2 R2 K9 ["andThen"]
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

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
       12 CAPTURE                          UPVAL U7
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

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
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K1 ["useMemo"]
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          VAL R7
       24 CAPTURE                          REF R6
       25 NEWTABLE                         R11 0 2
       27 MOVE                             R12 R7
       28 MOVE                             R13 R6
       29 SETLIST                          R11 R12 2 [1]
       31 CALL                             R9 2 1
       32 MOVE                             R4 R9
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K2 ["useCallback"]
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
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K0 ["useState"]
       53 NEWTABLE                         R8 0 0
       55 CALL                             R7 1 2
       56 MOVE                             R4 R7
       57 MOVE                             R5 R8
       58 LOADNIL                          R7
       59 LOADNIL                          R8
       60 GETUPVAL                         R9 5
       61 CALL                             R9 0 1
       62 JUMPIFNOT                        R9 ; [+6]
       63 GETUPVAL                         R9 6
       64 CALL                             R9 0 1
       65 GETTABLEKS                       R7 R9 K3 ["isMultiPlayerClientAgent"]
       67 GETTABLEKS                       R8 R9 K4 ["isMultiPlayerClientAgentRunning"]
       69 GETUPVAL                         R9 7
       70 CALL                             R9 0 1
       71 JUMPIFNOT                        R9 ; [+14]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       75 NEWCLOSURE                       R10 P2
       76 CAPTURE                          REF R4
       77 CAPTURE                          VAL R2
       78 CAPTURE                          UPVAL U8
       79 NEWTABLE                         R11 0 2
       81 MOVE                             R12 R4
       82 MOVE                             R13 R2
       83 SETLIST                          R11 R12 2 [1]
       85 CALL                             R9 2 0
       86 LOADNIL                          R9
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K6 ["useContext"]
       90 GETUPVAL                         R11 9
       91 GETTABLEKS                       R11 R11 K7 ["Context"]
       93 CALL                             R10 1 1
       94 MOVE                             R11 R10
       95 JUMPIFNOT                        R11 ; [+11]
       96 GETTABLEKS                       R12 R10 K8 ["selectedProvider"]
       98 GETUPVAL                         R13 10
       99 GETTABLEKS                       R13 R13 K9 ["LLMProviderTypes"]
      101 GETTABLEKS                       R13 R13 K10 ["Studio"]
      103 JUMPIFEQ                         R12 R13 ; [+2]
      105 LOADB                            R11 0 +1
      106 LOADB                            R11 1
      107 MOVE                             R9 R11
      108 GETUPVAL                         R11 1
      109 GETTABLEKS                       R11 R11 K5 ["useEffect"]
      111 NEWCLOSURE                       R12 P3
      112 CAPTURE                          VAL R1
      113 CAPTURE                          REF R9
      114 CAPTURE                          REF R6
      115 CAPTURE                          UPVAL U7
      116 CAPTURE                          REF R7
      117 CAPTURE                          REF R8
      118 CAPTURE                          UPVAL U11
      119 CAPTURE                          VAL R3
      120 NEWTABLE                         R13 0 5
      122 MOVE                             R14 R1
      123 MOVE                             R15 R9
      124 MOVE                             R16 R6
      125 MOVE                             R17 R7
      126 MOVE                             R18 R8
      127 SETLIST                          R13 R14 5 [1]
      129 CALL                             R11 2 0
      130 GETUPVAL                         R11 1
      131 GETTABLEKS                       R11 R11 K1 ["useMemo"]
      133 NEWCLOSURE                       R12 P4
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          VAL R2
      136 CAPTURE                          REF R4
      137 CAPTURE                          REF R5
      138 NEWTABLE                         R13 0 3
      140 MOVE                             R14 R2
      141 MOVE                             R15 R4
      142 MOVE                             R16 R5
      143 SETLIST                          R13 R14 3 [1]
      145 CALL                             R11 2 1
      146 GETUPVAL                         R12 13
      147 GETUPVAL                         R13 14
      148 GETTABLEKS                       R13 R13 K11 ["Components"]
      150 GETTABLEKS                       R13 R13 K12 ["Contexts"]
      152 GETTABLEKS                       R13 R13 K13 ["OptionsContextProvider"]
      154 DUPTABLE                         R14 K15 [{"options"}]
      155 SETTABLEKS                       R11 R14 K14 ["options"]
      157 GETTABLEKS                       R15 R0 K16 ["children"]
      159 CALL                             R12 3 -1
      160 CLOSEUPVALS                      R4
      161 RETURN                           R12 -1

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
       69 GETTABLEKS                       R11 R11 K22 ["FFlagAssistantFixToolDisappear"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R1 K21 ["Flags"]
       74 GETTABLEKS                       R11 R11 K23 ["Shared"]
       76 GETTABLEKS                       R11 R11 K24 ["getAssistantModeEnabled"]
       78 GETTABLEKS                       R12 R1 K21 ["Flags"]
       80 GETTABLEKS                       R12 R12 K23 ["Shared"]
       82 GETTABLEKS                       R12 R12 K25 ["FFlagAssistantAssetSearchInsertTool"]
       84 GETTABLEKS                       R13 R1 K21 ["Flags"]
       86 GETTABLEKS                       R13 R13 K23 ["Shared"]
       88 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantAssetSearchInsertToolABTest"]
       90 GETTABLEKS                       R14 R1 K21 ["Flags"]
       92 GETTABLEKS                       R14 R14 K23 ["Shared"]
       94 GETTABLEKS                       R14 R14 K27 ["FFlagAssistantDynamicToolDescription"]
       96 GETTABLEKS                       R15 R1 K21 ["Flags"]
       98 GETTABLEKS                       R15 R15 K23 ["Shared"]
      100 GETTABLEKS                       R15 R15 K28 ["FFlagAssistantAnimationGenTool"]
      102 GETTABLEKS                       R16 R1 K21 ["Flags"]
      104 GETTABLEKS                       R16 R16 K23 ["Shared"]
      106 GETTABLEKS                       R16 R16 K29 ["FFlagAssistantMultiPlayerAgents"]
      108 GETTABLEKS                       R17 R1 K21 ["Flags"]
      110 GETTABLEKS                       R17 R17 K23 ["Shared"]
      112 GETTABLEKS                       R17 R17 K30 ["FFlagAssistantGetStudioState"]
      114 GETTABLEKS                       R18 R1 K14 ["Components"]
      116 GETTABLEKS                       R18 R18 K15 ["Hooks"]
      118 GETTABLEKS                       R18 R18 K31 ["useWithClient"]
      120 GETTABLEKS                       R19 R2 K32 ["ToolRegistry"]
      122 GETTABLEKS                       R20 R1 K33 ["Resources"]
      124 GETTABLEKS                       R20 R20 K34 ["Localization"]
      126 GETTABLEKS                       R20 R20 K35 ["Translator"]
      128 GETTABLEKS                       R21 R1 K36 ["Tools"]
      130 GETTABLEKS                       R21 R21 K37 ["ToolTypes"]
      132 GETTABLEKS                       R21 R21 K38 ["ToolNames"]
      134 GETTABLEKS                       R22 R3 K39 ["createElement"]
      136 NEWTABLE                         R23 16 0
      138 GETTABLEKS                       R24 R21 K40 ["ExecuteLuau"]
      140 LOADK                            R25 K40 ["ExecuteLuau"]
      141 SETTABLE                         R25 R23 R24
      142 GETTABLEKS                       R24 R21 K41 ["MaterialGen"]
      144 LOADK                            R25 K42 ["GenerateMaterial"]
      145 SETTABLE                         R25 R23 R24
      146 GETTABLEKS                       R24 R21 K43 ["CreatorStoreSearch"]
      148 LOADK                            R25 K43 ["CreatorStoreSearch"]
      149 SETTABLE                         R25 R23 R24
      150 GETTABLEKS                       R24 R21 K44 ["CreatorStoreInsert"]
      152 LOADK                            R25 K44 ["CreatorStoreInsert"]
      153 SETTABLE                         R25 R23 R24
      154 GETTABLEKS                       R24 R21 K45 ["MeshGen"]
      156 LOADK                            R25 K45 ["MeshGen"]
      157 SETTABLE                         R25 R23 R24
      158 GETTABLEKS                       R24 R21 K46 ["AnimationGen"]
      160 MOVE                             R26 R15
      161 CALL                             R26 0 1
      162 JUMPIFNOT                        R26 ; [+2]
      163 LOADK                            R25 K46 ["AnimationGen"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R25
      166 SETTABLE                         R25 R23 R24
      167 GETTABLEKS                       R24 R21 K47 ["MultiEdit"]
      169 LOADK                            R25 K48 ["MultiEditUpdated"]
      170 SETTABLE                         R25 R23 R24
      171 GETTABLEKS                       R24 R21 K49 ["ScreenCapture"]
      173 LOADK                            R25 K49 ["ScreenCapture"]
      174 SETTABLE                         R25 R23 R24
      175 GETTABLEKS                       R24 R21 K50 ["UploadImage"]
      177 LOADK                            R25 K50 ["UploadImage"]
      178 SETTABLE                         R25 R23 R24
      179 GETTABLEKS                       R24 R21 K51 ["PrimitiveGen"]
      181 LOADK                            R25 K51 ["PrimitiveGen"]
      182 SETTABLE                         R25 R23 R24
      183 GETTABLEKS                       R24 R21 K52 ["AssetInsert"]
      185 MOVE                             R26 R12
      186 CALL                             R26 0 1
      187 JUMPIF                           R26 ; [+3]
      188 MOVE                             R26 R13
      189 CALL                             R26 0 1
      190 JUMPIFNOT                        R26 ; [+2]
      191 LOADK                            R25 K52 ["AssetInsert"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R25
      194 SETTABLE                         R25 R23 R24
      195 GETTABLEKS                       R24 R21 K53 ["AssetSearch"]
      197 MOVE                             R26 R12
      198 CALL                             R26 0 1
      199 JUMPIF                           R26 ; [+3]
      200 MOVE                             R26 R13
      201 CALL                             R26 0 1
      202 JUMPIFNOT                        R26 ; [+2]
      203 LOADK                            R25 K53 ["AssetSearch"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R25
      206 SETTABLE                         R25 R23 R24
      207 GETTABLEKS                       R24 R21 K54 ["StartStopPlay"]
      209 LOADK                            R25 K54 ["StartStopPlay"]
      210 SETTABLE                         R25 R23 R24
      211 GETTABLEKS                       R24 R21 K55 ["GetConsoleOutput"]
      213 LOADK                            R25 K55 ["GetConsoleOutput"]
      214 SETTABLE                         R25 R23 R24
      215 GETTABLEKS                       R24 R21 K56 ["UserKeyboardInput"]
      217 LOADK                            R25 K56 ["UserKeyboardInput"]
      218 SETTABLE                         R25 R23 R24
      219 GETTABLEKS                       R24 R21 K57 ["UserMouseInput"]
      221 LOADK                            R25 K57 ["UserMouseInput"]
      222 SETTABLE                         R25 R23 R24
      223 GETTABLEKS                       R24 R21 K58 ["CharacterNavigation"]
      225 LOADK                            R25 K58 ["CharacterNavigation"]
      226 SETTABLE                         R25 R23 R24
      227 MOVE                             R24 R17
      228 CALL                             R24 0 1
      229 JUMPIFNOT                        R24 ; [+4]
      230 GETTABLEKS                       R24 R21 K59 ["GetStudioState"]
      232 LOADK                            R25 K59 ["GetStudioState"]
      233 SETTABLE                         R25 R23 R24
      234 MOVE                             R24 R16
      235 CALL                             R24 0 1
      236 JUMPIFNOT                        R24 ; [+16]
      237 GETTABLEKS                       R24 R21 K60 ["StartMultiPlayerAgents"]
      239 LOADK                            R25 K60 ["StartMultiPlayerAgents"]
      240 SETTABLE                         R25 R23 R24
      241 GETTABLEKS                       R24 R21 K61 ["StopMultiPlayerAgents"]
      243 LOADK                            R25 K61 ["StopMultiPlayerAgents"]
      244 SETTABLE                         R25 R23 R24
      245 GETTABLEKS                       R24 R21 K62 ["MultiPlayerAgentsCommunication"]
      247 LOADK                            R25 K62 ["MultiPlayerAgentsCommunication"]
      248 SETTABLE                         R25 R23 R24
      249 GETTABLEKS                       R24 R21 K63 ["WaitForMultiPlayerAgentsCommunication"]
      251 LOADK                            R25 K63 ["WaitForMultiPlayerAgentsCommunication"]
      252 SETTABLE                         R25 R23 R24
      253 DUPCLOSURE                       R24 K64 [PROTO_2]
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R20
      256 CAPTURE                          VAL R10
      257 CAPTURE                          VAL R19
      258 DUPCLOSURE                       R25 K65 [PROTO_10]
      259 CAPTURE                          VAL R18
      260 CAPTURE                          VAL R3
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R8
      263 CAPTURE                          VAL R6
      264 CAPTURE                          VAL R16
      265 CAPTURE                          VAL R7
      266 CAPTURE                          VAL R10
      267 CAPTURE                          VAL R4
      268 CAPTURE                          VAL R9
      269 CAPTURE                          VAL R5
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R22
      273 CAPTURE                          VAL R1
      274 RETURN                           R25 1
