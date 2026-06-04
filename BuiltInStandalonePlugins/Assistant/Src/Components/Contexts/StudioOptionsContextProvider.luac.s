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
        0 DUPTABLE                         R1 K3 [{"useInternalToolDefinitions", "assistantMode", "includeDisabledTools"}]
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
       58 GETUPVAL                         R7 5
       59 CALL                             R7 0 1
       60 JUMPIFNOT                        R7 ; [+14]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K3 ["useEffect"]
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
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K4 ["useContext"]
       79 GETUPVAL                         R9 7
       80 GETTABLEKS                       R9 R9 K5 ["Context"]
       82 CALL                             R8 1 1
       83 MOVE                             R9 R8
       84 JUMPIFNOT                        R9 ; [+11]
       85 GETTABLEKS                       R10 R8 K6 ["selectedProvider"]
       87 GETUPVAL                         R11 8
       88 GETTABLEKS                       R11 R11 K7 ["LLMProviderTypes"]
       90 GETTABLEKS                       R11 R11 K8 ["Studio"]
       92 JUMPIFEQ                         R10 R11 ; [+2]
       94 LOADB                            R9 0 +1
       95 LOADB                            R9 1
       96 MOVE                             R7 R9
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K3 ["useEffect"]
      100 NEWCLOSURE                       R10 P3
      101 CAPTURE                          VAL R1
      102 CAPTURE                          REF R7
      103 CAPTURE                          REF R6
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R11 0 3
      109 MOVE                             R12 R1
      110 MOVE                             R13 R7
      111 MOVE                             R14 R6
      112 SETLIST                          R11 R12 3 [1]
      114 CALL                             R9 2 0
      115 GETUPVAL                         R9 1
      116 GETTABLEKS                       R9 R9 K1 ["useMemo"]
      118 NEWCLOSURE                       R10 P4
      119 CAPTURE                          UPVAL U10
      120 CAPTURE                          VAL R2
      121 CAPTURE                          REF R4
      122 CAPTURE                          REF R5
      123 NEWTABLE                         R11 0 3
      125 MOVE                             R12 R2
      126 MOVE                             R13 R4
      127 MOVE                             R14 R5
      128 SETLIST                          R11 R12 3 [1]
      130 CALL                             R9 2 1
      131 GETUPVAL                         R10 11
      132 GETUPVAL                         R11 12
      133 GETTABLEKS                       R11 R11 K9 ["Components"]
      135 GETTABLEKS                       R11 R11 K10 ["Contexts"]
      137 GETTABLEKS                       R11 R11 K11 ["OptionsContextProvider"]
      139 DUPTABLE                         R12 K13 [{"options"}]
      140 SETTABLEKS                       R9 R12 K12 ["options"]
      142 GETTABLEKS                       R13 R0 K14 ["children"]
      144 CALL                             R10 3 -1
      145 CLOSEUPVALS                      R4
      146 RETURN                           R10 -1

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
       49 GETTABLEKS                       R7 R7 K17 ["useAssistantModeToolStates"]
       51 GETTABLEKS                       R8 R1 K14 ["Components"]
       53 GETTABLEKS                       R8 R8 K18 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K19 ["LLMProviderSelectionContext"]
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R10 K20 ["Flags"]
       63 GETTABLEKS                       R10 R10 K21 ["FFlagAssistantFixToolDisappear"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R1 K20 ["Flags"]
       68 GETTABLEKS                       R10 R10 K22 ["Shared"]
       70 GETTABLEKS                       R10 R10 K23 ["getAssistantModeEnabled"]
       72 GETTABLEKS                       R11 R1 K20 ["Flags"]
       74 GETTABLEKS                       R11 R11 K22 ["Shared"]
       76 GETTABLEKS                       R11 R11 K24 ["FFlagAssistantAssetSearchInsertTool"]
       78 GETTABLEKS                       R12 R1 K20 ["Flags"]
       80 GETTABLEKS                       R12 R12 K22 ["Shared"]
       82 GETTABLEKS                       R12 R12 K25 ["FFlagAssistantAssetSearchInsertToolABTest"]
       84 GETTABLEKS                       R13 R1 K20 ["Flags"]
       86 GETTABLEKS                       R13 R13 K22 ["Shared"]
       88 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantDynamicToolDescription"]
       90 GETTABLEKS                       R14 R1 K20 ["Flags"]
       92 GETTABLEKS                       R14 R14 K22 ["Shared"]
       94 GETTABLEKS                       R14 R14 K27 ["FFlagAssistantAnimationGenTool"]
       96 GETTABLEKS                       R15 R1 K14 ["Components"]
       98 GETTABLEKS                       R15 R15 K15 ["Hooks"]
      100 GETTABLEKS                       R15 R15 K28 ["useWithClient"]
      102 GETTABLEKS                       R16 R2 K29 ["ToolRegistry"]
      104 GETTABLEKS                       R17 R1 K30 ["Resources"]
      106 GETTABLEKS                       R17 R17 K31 ["Localization"]
      108 GETTABLEKS                       R17 R17 K32 ["Translator"]
      110 GETTABLEKS                       R18 R1 K33 ["Tools"]
      112 GETTABLEKS                       R18 R18 K34 ["ToolTypes"]
      114 GETTABLEKS                       R18 R18 K35 ["ToolNames"]
      116 GETTABLEKS                       R19 R3 K36 ["createElement"]
      118 NEWTABLE                         R20 16 0
      120 GETTABLEKS                       R21 R18 K37 ["ExecuteLuau"]
      122 LOADK                            R22 K37 ["ExecuteLuau"]
      123 SETTABLE                         R22 R20 R21
      124 GETTABLEKS                       R21 R18 K38 ["MaterialGen"]
      126 LOADK                            R22 K39 ["GenerateMaterial"]
      127 SETTABLE                         R22 R20 R21
      128 GETTABLEKS                       R21 R18 K40 ["CreatorStoreSearch"]
      130 LOADK                            R22 K40 ["CreatorStoreSearch"]
      131 SETTABLE                         R22 R20 R21
      132 GETTABLEKS                       R21 R18 K41 ["CreatorStoreInsert"]
      134 LOADK                            R22 K41 ["CreatorStoreInsert"]
      135 SETTABLE                         R22 R20 R21
      136 GETTABLEKS                       R21 R18 K42 ["MeshGen"]
      138 LOADK                            R22 K42 ["MeshGen"]
      139 SETTABLE                         R22 R20 R21
      140 GETTABLEKS                       R21 R18 K43 ["AnimationGen"]
      142 MOVE                             R23 R14
      143 CALL                             R23 0 1
      144 JUMPIFNOT                        R23 ; [+2]
      145 LOADK                            R22 K43 ["AnimationGen"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R22
      148 SETTABLE                         R22 R20 R21
      149 GETTABLEKS                       R21 R18 K44 ["MultiEdit"]
      151 LOADK                            R22 K45 ["MultiEditUpdated"]
      152 SETTABLE                         R22 R20 R21
      153 GETTABLEKS                       R21 R18 K46 ["ScreenCapture"]
      155 LOADK                            R22 K46 ["ScreenCapture"]
      156 SETTABLE                         R22 R20 R21
      157 GETTABLEKS                       R21 R18 K47 ["UploadImage"]
      159 LOADK                            R22 K47 ["UploadImage"]
      160 SETTABLE                         R22 R20 R21
      161 GETTABLEKS                       R21 R18 K48 ["PrimitiveGen"]
      163 LOADK                            R22 K48 ["PrimitiveGen"]
      164 SETTABLE                         R22 R20 R21
      165 GETTABLEKS                       R21 R18 K49 ["AssetInsert"]
      167 MOVE                             R23 R11
      168 CALL                             R23 0 1
      169 JUMPIF                           R23 ; [+3]
      170 MOVE                             R23 R12
      171 CALL                             R23 0 1
      172 JUMPIFNOT                        R23 ; [+2]
      173 LOADK                            R22 K49 ["AssetInsert"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R22
      176 SETTABLE                         R22 R20 R21
      177 GETTABLEKS                       R21 R18 K50 ["AssetSearch"]
      179 MOVE                             R23 R11
      180 CALL                             R23 0 1
      181 JUMPIF                           R23 ; [+3]
      182 MOVE                             R23 R12
      183 CALL                             R23 0 1
      184 JUMPIFNOT                        R23 ; [+2]
      185 LOADK                            R22 K50 ["AssetSearch"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R22
      188 SETTABLE                         R22 R20 R21
      189 GETTABLEKS                       R21 R18 K51 ["StartStopPlay"]
      191 LOADK                            R22 K51 ["StartStopPlay"]
      192 SETTABLE                         R22 R20 R21
      193 GETTABLEKS                       R21 R18 K52 ["GetConsoleOutput"]
      195 LOADK                            R22 K52 ["GetConsoleOutput"]
      196 SETTABLE                         R22 R20 R21
      197 GETTABLEKS                       R21 R18 K53 ["UserKeyboardInput"]
      199 LOADK                            R22 K53 ["UserKeyboardInput"]
      200 SETTABLE                         R22 R20 R21
      201 GETTABLEKS                       R21 R18 K54 ["UserMouseInput"]
      203 LOADK                            R22 K54 ["UserMouseInput"]
      204 SETTABLE                         R22 R20 R21
      205 GETTABLEKS                       R21 R18 K55 ["CharacterNavigation"]
      207 LOADK                            R22 K55 ["CharacterNavigation"]
      208 SETTABLE                         R22 R20 R21
      209 DUPCLOSURE                       R21 K56 [PROTO_2]
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R16
      214 DUPCLOSURE                       R22 K57 [PROTO_10]
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R1
      228 RETURN                           R22 1
