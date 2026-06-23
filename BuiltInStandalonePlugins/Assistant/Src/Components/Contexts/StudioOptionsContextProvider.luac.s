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
       21 DUPTABLE                         R2 K7 [{"_meta"}]
       22 SETTABLEKS                       R1 R2 K6 ["_meta"]
       24 MOVE                             R1 R2
       25 MOVE                             R5 R1
       26 NAMECALL                         R3 R0 K8 ["listTools"]
       28 CALL                             R3 2 1
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U5
       31 NAMECALL                         R3 R3 K9 ["andThen"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

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
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+6]
       45 GETUPVAL                         R11 5
       46 CALL                             R11 0 1
       47 GETTABLEKS                       R9 R11 K3 ["isMultiPlayerClientAgent"]
       49 GETTABLEKS                       R10 R11 K4 ["isMultiPlayerClientAgentRunning"]
       51 GETUPVAL                         R11 6
       52 CALL                             R11 0 1
       53 JUMPIFNOT                        R11 ; [+14]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       57 NEWCLOSURE                       R12 P2
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U7
       61 NEWTABLE                         R13 0 2
       63 MOVE                             R14 R7
       64 MOVE                             R15 R2
       65 SETLIST                          R13 R14 2 [1]
       67 CALL                             R11 2 0
       68 LOADNIL                          R11
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R12 R12 K6 ["useContext"]
       72 GETUPVAL                         R13 8
       73 GETTABLEKS                       R13 R13 K7 ["Context"]
       75 CALL                             R12 1 1
       76 MOVE                             R13 R12
       77 JUMPIFNOT                        R13 ; [+11]
       78 GETTABLEKS                       R14 R12 K8 ["selectedProvider"]
       80 GETUPVAL                         R15 9
       81 GETTABLEKS                       R15 R15 K9 ["LLMProviderTypes"]
       83 GETTABLEKS                       R15 R15 K10 ["Studio"]
       85 JUMPIFEQ                         R14 R15 ; [+2]
       87 LOADB                            R13 0 +1
       88 LOADB                            R13 1
       89 MOVE                             R11 R13
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R13 R13 K5 ["useEffect"]
       93 NEWCLOSURE                       R14 P3
       94 CAPTURE                          VAL R1
       95 CAPTURE                          REF R11
       96 CAPTURE                          VAL R6
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          REF R9
       99 CAPTURE                          REF R10
      100 CAPTURE                          VAL R3
      101 NEWTABLE                         R15 0 5
      103 MOVE                             R16 R1
      104 MOVE                             R17 R11
      105 MOVE                             R18 R6
      106 MOVE                             R19 R9
      107 MOVE                             R20 R10
      108 SETLIST                          R15 R16 5 [1]
      110 CALL                             R13 2 0
      111 GETUPVAL                         R13 1
      112 GETTABLEKS                       R13 R13 K1 ["useMemo"]
      114 NEWCLOSURE                       R14 P4
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 NEWTABLE                         R15 0 3
      121 MOVE                             R16 R2
      122 MOVE                             R17 R7
      123 MOVE                             R18 R8
      124 SETLIST                          R15 R16 3 [1]
      126 CALL                             R13 2 1
      127 GETUPVAL                         R14 11
      128 GETUPVAL                         R15 12
      129 GETTABLEKS                       R15 R15 K11 ["Components"]
      131 GETTABLEKS                       R15 R15 K12 ["Contexts"]
      133 GETTABLEKS                       R15 R15 K13 ["OptionsContextProvider"]
      135 DUPTABLE                         R16 K15 [{"options"}]
      136 SETTABLEKS                       R13 R16 K14 ["options"]
      138 GETTABLEKS                       R17 R0 K16 ["children"]
      140 CALL                             R14 3 -1
      141 CLOSEUPVALS                      R9
      142 RETURN                           R14 -1

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
       76 GETTABLEKS                       R11 R11 K24 ["FFlagAssistantAssetSearchInsertTool"]
       78 GETTABLEKS                       R12 R1 K21 ["Flags"]
       80 GETTABLEKS                       R12 R12 K23 ["Shared"]
       82 GETTABLEKS                       R12 R12 K25 ["FFlagAssistantAssetSearchInsertToolABTest"]
       84 GETTABLEKS                       R13 R1 K21 ["Flags"]
       86 GETTABLEKS                       R13 R13 K23 ["Shared"]
       88 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantAnimationGenTool"]
       90 GETTABLEKS                       R14 R1 K21 ["Flags"]
       92 GETTABLEKS                       R14 R14 K23 ["Shared"]
       94 GETTABLEKS                       R14 R14 K27 ["FFlagAssistantMultiPlayerAgents"]
       96 GETTABLEKS                       R15 R1 K21 ["Flags"]
       98 GETTABLEKS                       R15 R15 K23 ["Shared"]
      100 GETTABLEKS                       R15 R15 K28 ["FFlagAssistantGetStudioState"]
      102 GETTABLEKS                       R16 R1 K14 ["Components"]
      104 GETTABLEKS                       R16 R16 K15 ["Hooks"]
      106 GETTABLEKS                       R16 R16 K29 ["useWithClient"]
      108 GETTABLEKS                       R17 R2 K30 ["ToolRegistry"]
      110 GETTABLEKS                       R18 R1 K31 ["Resources"]
      112 GETTABLEKS                       R18 R18 K32 ["Localization"]
      114 GETTABLEKS                       R18 R18 K33 ["Translator"]
      116 GETTABLEKS                       R19 R1 K34 ["Tools"]
      118 GETTABLEKS                       R19 R19 K35 ["ToolTypes"]
      120 GETTABLEKS                       R19 R19 K36 ["ToolNames"]
      122 GETTABLEKS                       R20 R3 K37 ["createElement"]
      124 NEWTABLE                         R21 32 0
      126 GETTABLEKS                       R22 R19 K38 ["ExecuteLuau"]
      128 LOADK                            R23 K38 ["ExecuteLuau"]
      129 SETTABLE                         R23 R21 R22
      130 GETTABLEKS                       R22 R19 K39 ["MaterialGen"]
      132 LOADK                            R23 K40 ["GenerateMaterial"]
      133 SETTABLE                         R23 R21 R22
      134 GETTABLEKS                       R22 R19 K41 ["CreatorStoreSearch"]
      136 LOADK                            R23 K41 ["CreatorStoreSearch"]
      137 SETTABLE                         R23 R21 R22
      138 GETTABLEKS                       R22 R19 K42 ["CreatorStoreInsert"]
      140 LOADK                            R23 K42 ["CreatorStoreInsert"]
      141 SETTABLE                         R23 R21 R22
      142 GETTABLEKS                       R22 R19 K43 ["MeshGen"]
      144 LOADK                            R23 K43 ["MeshGen"]
      145 SETTABLE                         R23 R21 R22
      146 GETTABLEKS                       R22 R19 K44 ["AnimationGen"]
      148 MOVE                             R24 R13
      149 CALL                             R24 0 1
      150 JUMPIFNOT                        R24 ; [+2]
      151 LOADK                            R23 K44 ["AnimationGen"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R23
      154 SETTABLE                         R23 R21 R22
      155 GETTABLEKS                       R22 R19 K45 ["MultiEdit"]
      157 LOADK                            R23 K46 ["MultiEditUpdated"]
      158 SETTABLE                         R23 R21 R22
      159 GETTABLEKS                       R22 R19 K47 ["ScreenCapture"]
      161 LOADK                            R23 K47 ["ScreenCapture"]
      162 SETTABLE                         R23 R21 R22
      163 GETTABLEKS                       R22 R19 K48 ["UploadImage"]
      165 LOADK                            R23 K48 ["UploadImage"]
      166 SETTABLE                         R23 R21 R22
      167 GETTABLEKS                       R22 R19 K49 ["PrimitiveGen"]
      169 LOADK                            R23 K49 ["PrimitiveGen"]
      170 SETTABLE                         R23 R21 R22
      171 GETTABLEKS                       R22 R19 K50 ["AssetInsert"]
      173 MOVE                             R24 R11
      174 CALL                             R24 0 1
      175 JUMPIF                           R24 ; [+3]
      176 MOVE                             R24 R12
      177 CALL                             R24 0 1
      178 JUMPIFNOT                        R24 ; [+2]
      179 LOADK                            R23 K50 ["AssetInsert"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R23
      182 SETTABLE                         R23 R21 R22
      183 GETTABLEKS                       R22 R19 K51 ["AssetSearch"]
      185 MOVE                             R24 R11
      186 CALL                             R24 0 1
      187 JUMPIF                           R24 ; [+3]
      188 MOVE                             R24 R12
      189 CALL                             R24 0 1
      190 JUMPIFNOT                        R24 ; [+2]
      191 LOADK                            R23 K51 ["AssetSearch"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R23
      194 SETTABLE                         R23 R21 R22
      195 GETTABLEKS                       R22 R19 K52 ["StartStopPlay"]
      197 LOADK                            R23 K52 ["StartStopPlay"]
      198 SETTABLE                         R23 R21 R22
      199 GETTABLEKS                       R22 R19 K53 ["GetConsoleOutput"]
      201 LOADK                            R23 K53 ["GetConsoleOutput"]
      202 SETTABLE                         R23 R21 R22
      203 GETTABLEKS                       R22 R19 K54 ["UserKeyboardInput"]
      205 LOADK                            R23 K54 ["UserKeyboardInput"]
      206 SETTABLE                         R23 R21 R22
      207 GETTABLEKS                       R22 R19 K55 ["UserMouseInput"]
      209 LOADK                            R23 K55 ["UserMouseInput"]
      210 SETTABLE                         R23 R21 R22
      211 GETTABLEKS                       R22 R19 K56 ["CharacterNavigation"]
      213 LOADK                            R23 K56 ["CharacterNavigation"]
      214 SETTABLE                         R23 R21 R22
      215 MOVE                             R22 R15
      216 CALL                             R22 0 1
      217 JUMPIFNOT                        R22 ; [+4]
      218 GETTABLEKS                       R22 R19 K57 ["GetStudioState"]
      220 LOADK                            R23 K57 ["GetStudioState"]
      221 SETTABLE                         R23 R21 R22
      222 MOVE                             R22 R14
      223 CALL                             R22 0 1
      224 JUMPIFNOT                        R22 ; [+16]
      225 GETTABLEKS                       R22 R19 K58 ["StartMultiPlayerAgents"]
      227 LOADK                            R23 K58 ["StartMultiPlayerAgents"]
      228 SETTABLE                         R23 R21 R22
      229 GETTABLEKS                       R22 R19 K59 ["StopMultiPlayerAgents"]
      231 LOADK                            R23 K59 ["StopMultiPlayerAgents"]
      232 SETTABLE                         R23 R21 R22
      233 GETTABLEKS                       R22 R19 K60 ["MultiPlayerAgentsCommunication"]
      235 LOADK                            R23 K60 ["MultiPlayerAgentsCommunication"]
      236 SETTABLE                         R23 R21 R22
      237 GETTABLEKS                       R22 R19 K61 ["WaitForMultiPlayerAgentsCommunication"]
      239 LOADK                            R23 K61 ["WaitForMultiPlayerAgentsCommunication"]
      240 SETTABLE                         R23 R21 R22
      241 DUPCLOSURE                       R22 K62 [PROTO_2]
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R17
      246 DUPCLOSURE                       R23 K63 [PROTO_10]
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R3
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R14
      252 CAPTURE                          VAL R7
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R9
      256 CAPTURE                          VAL R5
      257 CAPTURE                          VAL R22
      258 CAPTURE                          VAL R20
      259 CAPTURE                          VAL R1
      260 RETURN                           R23 1
