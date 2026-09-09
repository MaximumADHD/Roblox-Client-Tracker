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
       78 GETUPVAL                         R13 8
       79 CALL                             R13 0 1
       80 JUMPIF                           R13 ; [+13]
       81 MOVE                             R13 R12
       82 JUMPIFNOT                        R13 ; [+11]
       83 GETTABLEKS                       R14 R12 K10 ["selectedProvider"]
       85 GETUPVAL                         R15 9
       86 GETTABLEKS                       R15 R15 K11 ["LLMProviderTypes"]
       88 GETTABLEKS                       R15 R15 K12 ["Studio"]
       90 JUMPIFEQ                         R14 R15 ; [+2]
       92 LOADB                            R13 0 +1
       93 LOADB                            R13 1
       94 MOVE                             R11 R13
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R13 R13 K7 ["useEffect"]
       98 NEWCLOSURE                       R14 P3
       99 CAPTURE                          VAL R1
      100 CAPTURE                          REF R11
      101 CAPTURE                          VAL R6
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          REF R9
      104 CAPTURE                          REF R10
      105 CAPTURE                          VAL R3
      106 NEWTABLE                         R15 0 5
      108 MOVE                             R16 R1
      109 MOVE                             R17 R11
      110 MOVE                             R18 R6
      111 MOVE                             R19 R9
      112 MOVE                             R20 R10
      113 SETLIST                          R15 R16 5 [1]
      115 CALL                             R13 2 0
      116 GETUPVAL                         R13 1
      117 GETTABLEKS                       R13 R13 K1 ["useMemo"]
      119 NEWCLOSURE                       R14 P4
      120 CAPTURE                          UPVAL U10
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R8
      124 NEWTABLE                         R15 0 3
      126 MOVE                             R16 R2
      127 MOVE                             R17 R7
      128 MOVE                             R18 R8
      129 SETLIST                          R15 R16 3 [1]
      131 CALL                             R13 2 1
      132 GETUPVAL                         R14 11
      133 GETUPVAL                         R15 12
      134 GETTABLEKS                       R15 R15 K13 ["Components"]
      136 GETTABLEKS                       R15 R15 K14 ["Contexts"]
      138 GETTABLEKS                       R15 R15 K15 ["OptionsContextProvider"]
      140 DUPTABLE                         R16 K17 [{"options"}]
      141 SETTABLEKS                       R13 R16 K16 ["options"]
      143 GETTABLEKS                       R17 R0 K18 ["children"]
      145 CALL                             R14 3 -1
      146 CLOSEUPVALS                      R9
      147 RETURN                           R14 -1

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
       90 GETTABLEKS                       R15 R1 K30 ["FlagUtils"]
       92 GETTABLEKS                       R15 R15 K31 ["getIsAssistantUseRemoteService"]
       94 GETTABLEKS                       R15 R15 K32 ["get"]
       96 GETTABLEKS                       R16 R3 K33 ["createElement"]
       98 NEWTABLE                         R17 32 0
      100 GETTABLEKS                       R18 R14 K34 ["ExecuteLuau"]
      102 LOADK                            R19 K34 ["ExecuteLuau"]
      103 SETTABLE                         R19 R17 R18
      104 GETTABLEKS                       R18 R14 K35 ["MaterialGen"]
      106 LOADK                            R19 K36 ["GenerateMaterial"]
      107 SETTABLE                         R19 R17 R18
      108 GETTABLEKS                       R18 R14 K37 ["CreatorStoreSearch"]
      110 LOADK                            R19 K37 ["CreatorStoreSearch"]
      111 SETTABLE                         R19 R17 R18
      112 GETTABLEKS                       R18 R14 K38 ["CreatorStoreInsert"]
      114 LOADK                            R19 K38 ["CreatorStoreInsert"]
      115 SETTABLE                         R19 R17 R18
      116 GETTABLEKS                       R18 R14 K39 ["MeshGen"]
      118 LOADK                            R19 K39 ["MeshGen"]
      119 SETTABLE                         R19 R17 R18
      120 GETTABLEKS                       R18 R14 K40 ["AnimationGen"]
      122 GETTABLEKS                       R20 R10 K41 ["FFlagAssistantAnimationGenTool"]
      124 JUMPIFNOT                        R20 ; [+2]
      125 LOADK                            R19 K40 ["AnimationGen"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R19
      128 SETTABLE                         R19 R17 R18
      129 GETTABLEKS                       R18 R14 K42 ["AvatarAutoSetup"]
      131 GETTABLEKS                       R20 R10 K43 ["FFlagAssistantAvatarAutoSetupTool"]
      133 JUMPIFNOT                        R20 ; [+2]
      134 LOADK                            R19 K42 ["AvatarAutoSetup"]
      135 JUMP                             ; [+1]
      136 LOADNIL                          R19
      137 SETTABLE                         R19 R17 R18
      138 GETTABLEKS                       R18 R14 K44 ["MultiEdit"]
      140 LOADK                            R19 K45 ["MultiEditUpdated"]
      141 SETTABLE                         R19 R17 R18
      142 GETTABLEKS                       R18 R14 K46 ["ScreenCapture"]
      144 LOADK                            R19 K46 ["ScreenCapture"]
      145 SETTABLE                         R19 R17 R18
      146 GETTABLEKS                       R18 R14 K47 ["UploadImage"]
      148 LOADK                            R19 K47 ["UploadImage"]
      149 SETTABLE                         R19 R17 R18
      150 GETTABLEKS                       R18 R14 K48 ["PrimitiveGen"]
      152 LOADK                            R19 K48 ["PrimitiveGen"]
      153 SETTABLE                         R19 R17 R18
      154 GETTABLEKS                       R18 R14 K49 ["AssetInsert"]
      156 GETTABLEKS                       R20 R10 K50 ["FFlagAssistantAssetSearchInsertTool"]
      158 JUMPIF                           R20 ; [+3]
      159 GETTABLEKS                       R20 R10 K51 ["FFlagAssistantAssetSearchInsertToolABTest"]
      161 JUMPIFNOT                        R20 ; [+2]
      162 LOADK                            R19 K49 ["AssetInsert"]
      163 JUMP                             ; [+1]
      164 LOADNIL                          R19
      165 SETTABLE                         R19 R17 R18
      166 GETTABLEKS                       R18 R14 K52 ["AssetSearch"]
      168 GETTABLEKS                       R20 R10 K50 ["FFlagAssistantAssetSearchInsertTool"]
      170 JUMPIF                           R20 ; [+3]
      171 GETTABLEKS                       R20 R10 K51 ["FFlagAssistantAssetSearchInsertToolABTest"]
      173 JUMPIFNOT                        R20 ; [+2]
      174 LOADK                            R19 K52 ["AssetSearch"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R19
      177 SETTABLE                         R19 R17 R18
      178 GETTABLEKS                       R18 R14 K53 ["StartStopPlay"]
      180 LOADK                            R19 K53 ["StartStopPlay"]
      181 SETTABLE                         R19 R17 R18
      182 GETTABLEKS                       R18 R14 K54 ["GetConsoleOutput"]
      184 LOADK                            R19 K54 ["GetConsoleOutput"]
      185 SETTABLE                         R19 R17 R18
      186 GETTABLEKS                       R18 R14 K55 ["UserKeyboardInput"]
      188 LOADK                            R19 K55 ["UserKeyboardInput"]
      189 SETTABLE                         R19 R17 R18
      190 GETTABLEKS                       R18 R14 K56 ["UserMouseInput"]
      192 LOADK                            R19 K56 ["UserMouseInput"]
      193 SETTABLE                         R19 R17 R18
      194 GETTABLEKS                       R18 R14 K57 ["CharacterNavigation"]
      196 LOADK                            R19 K57 ["CharacterNavigation"]
      197 SETTABLE                         R19 R17 R18
      198 GETTABLEKS                       R18 R14 K58 ["GetStudioState"]
      200 LOADK                            R19 K58 ["GetStudioState"]
      201 SETTABLE                         R19 R17 R18
      202 GETTABLEKS                       R18 R10 K59 ["FFlagAssistantMultiPlayerAgents"]
      204 JUMPIFNOT                        R18 ; [+16]
      205 GETTABLEKS                       R18 R14 K60 ["StartMultiPlayerAgents"]
      207 LOADK                            R19 K60 ["StartMultiPlayerAgents"]
      208 SETTABLE                         R19 R17 R18
      209 GETTABLEKS                       R18 R14 K61 ["StopMultiPlayerAgents"]
      211 LOADK                            R19 K61 ["StopMultiPlayerAgents"]
      212 SETTABLE                         R19 R17 R18
      213 GETTABLEKS                       R18 R14 K62 ["MultiPlayerAgentsCommunication"]
      215 LOADK                            R19 K62 ["MultiPlayerAgentsCommunication"]
      216 SETTABLE                         R19 R17 R18
      217 GETTABLEKS                       R18 R14 K63 ["WaitForMultiPlayerAgentsCommunication"]
      219 LOADK                            R19 K63 ["WaitForMultiPlayerAgentsCommunication"]
      220 SETTABLE                         R19 R17 R18
      221 DUPCLOSURE                       R18 K64 [PROTO_2]
      222 CAPTURE                          VAL R17
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R12
      226 DUPCLOSURE                       R19 K65 [PROTO_10]
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R6
      231 CAPTURE                          VAL R10
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R5
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R16
      239 CAPTURE                          VAL R1
      240 RETURN                           R19 1
