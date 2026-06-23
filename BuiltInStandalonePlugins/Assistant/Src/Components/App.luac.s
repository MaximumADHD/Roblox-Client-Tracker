PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ModelQuality"]
        4 GETTABLEKS                       R2 R2 K1 ["High"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+8]
        8 GETUPVAL                         R0 2
        9 LOADK                            R2 K2 ["Plugin"]
       10 LOADK                            R3 K3 ["NameAdvanced"]
       11 NAMECALL                         R0 R0 K4 ["getText"]
       13 CALL                             R0 3 1
       14 JUMP                             ; [+6]
       15 GETUPVAL                         R0 2
       16 LOADK                            R2 K2 ["Plugin"]
       17 LOADK                            R3 K5 ["Name"]
       18 NAMECALL                         R0 R0 K4 ["getText"]
       20 CALL                             R0 3 1
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K6 ["setDockWidgetTitle"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K2 ["modelQuality"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R2
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 0
       26 DUPTABLE                         R1 K5 [{"MainView"}]
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R3 5
       29 GETTABLEKS                       R3 R3 K6 ["WidgetTrackingMainView"]
       31 DUPTABLE                         R4 K8 [{"textBoxRef"}]
       32 GETTABLEKS                       R5 R0 K7 ["textBoxRef"]
       34 SETTABLEKS                       R5 R4 K7 ["textBoxRef"]
       36 CALL                             R2 2 1
       37 SETTABLEKS                       R2 R1 K4 ["MainView"]
       39 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 5
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Components"]
        6 GETTABLEKS                       R3 R3 K1 ["Contexts"]
        8 GETTABLEKS                       R3 R3 K2 ["ConversationContextProvider"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["Components"]
       15 GETTABLEKS                       R4 R4 K1 ["Contexts"]
       17 GETTABLEKS                       R4 R4 K3 ["ThreadIdContextProvider"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R5 2
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K4 ["Provider"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 0
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K4 ["Provider"]
       32 CALL                             R6 1 -1
       33 SETLIST                          R1 R2 -1 [1]
       35 GETUPVAL                         R2 5
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+8]
       38 MOVE                             R3 R1
       39 GETUPVAL                         R4 0
       40 GETUPVAL                         R5 6
       41 CALL                             R4 1 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R2 K7 [table.insert]
       45 CALL                             R2 -1 0
       46 MOVE                             R3 R1
       47 GETUPVAL                         R4 0
       48 GETUPVAL                         R5 7
       49 CALL                             R4 1 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R2 K7 [table.insert]
       53 CALL                             R2 -1 0
       54 MOVE                             R3 R1
       55 GETUPVAL                         R4 0
       56 GETUPVAL                         R5 8
       57 GETTABLEKS                       R5 R5 K4 ["Provider"]
       59 CALL                             R4 1 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R2 K7 [table.insert]
       63 CALL                             R2 -1 0
       64 MOVE                             R3 R1
       65 GETUPVAL                         R4 0
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R5 R5 K0 ["Components"]
       69 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       71 GETTABLEKS                       R5 R5 K8 ["SettingsContextProvider"]
       73 CALL                             R4 1 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R2 K7 [table.insert]
       77 CALL                             R2 -1 0
       78 GETUPVAL                         R2 9
       79 CALL                             R2 0 1
       80 JUMPIFNOT                        R2 ; [+14]
       81 MOVE                             R3 R1
       82 GETUPVAL                         R4 0
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R5 R5 K0 ["Components"]
       86 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       88 GETTABLEKS                       R5 R5 K9 ["EvalContextProvider"]
       90 CALL                             R4 1 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R2 K7 [table.insert]
       94 CALL                             R2 -1 0
       95 MOVE                             R3 R1
       96 GETUPVAL                         R4 0
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R5 R5 K0 ["Components"]
      100 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      102 GETTABLEKS                       R5 R5 K10 ["LLMProviderSelectionContextProvider"]
      104 CALL                             R4 1 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R2 K7 [table.insert]
      108 CALL                             R2 -1 0
      109 MOVE                             R3 R1
      110 GETUPVAL                         R4 0
      111 GETUPVAL                         R5 1
      112 GETTABLEKS                       R5 R5 K0 ["Components"]
      114 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      116 GETTABLEKS                       R5 R5 K11 ["PersistentPlanContext"]
      118 GETTABLEKS                       R5 R5 K4 ["Provider"]
      120 CALL                             R4 1 -1
      121 FASTCALL                         TABLE_INSERT ; [+2]
      122 GETIMPORT                        R2 K7 [table.insert]
      124 CALL                             R2 -1 0
      125 GETUPVAL                         R2 10
      126 CALL                             R2 0 1
      127 JUMPIFNOT                        R2 ; [+15]
      128 MOVE                             R3 R1
      129 GETUPVAL                         R4 0
      130 GETUPVAL                         R5 1
      131 GETTABLEKS                       R5 R5 K0 ["Components"]
      133 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      135 GETTABLEKS                       R5 R5 K12 ["TestLLMPackageContextProvider"]
      137 CALL                             R4 1 -1
      138 FASTCALL                         TABLE_INSERT ; [+2]
      139 GETIMPORT                        R2 K7 [table.insert]
      141 CALL                             R2 -1 0
      142 JUMP                             ; [+8]
      143 MOVE                             R3 R1
      144 GETUPVAL                         R4 0
      145 GETUPVAL                         R5 11
      146 CALL                             R4 1 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R2 K7 [table.insert]
      150 CALL                             R2 -1 0
      151 MOVE                             R3 R1
      152 GETUPVAL                         R4 0
      153 GETUPVAL                         R5 12
      154 CALL                             R4 1 -1
      155 FASTCALL                         TABLE_INSERT ; [+2]
      156 GETIMPORT                        R2 K7 [table.insert]
      158 CALL                             R2 -1 0
      159 MOVE                             R3 R1
      160 GETUPVAL                         R4 0
      161 GETUPVAL                         R5 13
      162 DUPTABLE                         R6 K14 [{"dataModel"}]
      163 GETIMPORT                        R7 K16 [game]
      165 SETTABLEKS                       R7 R6 K13 ["dataModel"]
      167 CALL                             R4 2 -1
      168 FASTCALL                         TABLE_INSERT ; [+2]
      169 GETIMPORT                        R2 K7 [table.insert]
      171 CALL                             R2 -1 0
      172 MOVE                             R3 R1
      173 GETUPVAL                         R4 0
      174 GETUPVAL                         R5 14
      175 GETTABLEKS                       R5 R5 K4 ["Provider"]
      177 DUPTABLE                         R6 K18 [{"dockWidget"}]
      178 GETTABLEKS                       R7 R0 K17 ["dockWidget"]
      180 SETTABLEKS                       R7 R6 K17 ["dockWidget"]
      182 CALL                             R4 2 -1
      183 FASTCALL                         TABLE_INSERT ; [+2]
      184 GETIMPORT                        R2 K7 [table.insert]
      186 CALL                             R2 -1 0
      187 MOVE                             R3 R1
      188 GETUPVAL                         R4 0
      189 GETUPVAL                         R5 15
      190 GETTABLEKS                       R5 R5 K4 ["Provider"]
      192 CALL                             R4 1 -1
      193 FASTCALL                         TABLE_INSERT ; [+2]
      194 GETIMPORT                        R2 K7 [table.insert]
      196 CALL                             R2 -1 0
      197 MOVE                             R3 R1
      198 GETUPVAL                         R4 0
      199 GETUPVAL                         R5 16
      200 CALL                             R4 1 -1
      201 FASTCALL                         TABLE_INSERT ; [+2]
      202 GETIMPORT                        R2 K7 [table.insert]
      204 CALL                             R2 -1 0
      205 GETUPVAL                         R2 17
      206 CALL                             R2 0 1
      207 JUMPIFNOT                        R2 ; [+10]
      208 MOVE                             R3 R1
      209 GETUPVAL                         R4 0
      210 GETUPVAL                         R5 18
      211 GETTABLEKS                       R5 R5 K4 ["Provider"]
      213 CALL                             R4 1 -1
      214 FASTCALL                         TABLE_INSERT ; [+2]
      215 GETIMPORT                        R2 K7 [table.insert]
      217 CALL                             R2 -1 0
      218 GETUPVAL                         R2 19
      219 CALL                             R2 0 1
      220 JUMPIFNOT                        R2 ; [+12]
      221 GETUPVAL                         R2 20
      222 GETTABLEKS                       R3 R0 K19 ["args"]
      224 GETTABLEKS                       R3 R3 K20 ["bridges"]
      226 CALL                             R2 1 1
      227 GETUPVAL                         R3 21
      228 GETTABLEKS                       R3 R3 K21 ["append"]
      230 MOVE                             R4 R1
      231 MOVE                             R5 R2
      232 CALL                             R3 2 0
      233 GETUPVAL                         R2 0
      234 GETUPVAL                         R3 22
      235 DUPTABLE                         R4 K23 [{"onStyleSheetChange"}]
      236 GETTABLEKS                       R5 R0 K24 ["onFoundationStyleSheetChange"]
      238 SETTABLEKS                       R5 R4 K22 ["onStyleSheetChange"]
      240 DUPTABLE                         R5 K26 [{"ContextStack"}]
      241 GETUPVAL                         R6 0
      242 GETUPVAL                         R7 23
      243 GETTABLEKS                       R7 R7 K25 ["ContextStack"]
      245 DUPTABLE                         R8 K28 [{"providers"}]
      246 SETTABLEKS                       R1 R8 K27 ["providers"]
      248 GETUPVAL                         R9 24
      249 MOVE                             R10 R0
      250 CALL                             R9 1 1
      251 CALL                             R6 3 1
      252 SETTABLEKS                       R6 R5 K25 ["ContextStack"]
      254 CALL                             R2 3 -1
      255 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K14 ["StudioExternalServerContextProvider"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R7 K15 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Src"]
       57 GETTABLEKS                       R8 R8 K12 ["Components"]
       59 GETTABLEKS                       R8 R8 K13 ["Contexts"]
       61 GETTABLEKS                       R8 R8 K16 ["StudioInputStateContextProvider"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Src"]
       68 GETTABLEKS                       R9 R9 K12 ["Components"]
       70 GETTABLEKS                       R9 R9 K13 ["Contexts"]
       72 GETTABLEKS                       R9 R9 K17 ["StudioLLM"]
       74 GETTABLEKS                       R9 R9 K18 ["StudioLLMPackageContextProvider"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K11 ["Src"]
       81 GETTABLEKS                       R10 R10 K12 ["Components"]
       83 GETTABLEKS                       R10 R10 K13 ["Contexts"]
       85 GETTABLEKS                       R10 R10 K19 ["StudioMcpClientContextProvider"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K11 ["Src"]
       92 GETTABLEKS                       R11 R11 K12 ["Components"]
       94 GETTABLEKS                       R11 R11 K13 ["Contexts"]
       96 GETTABLEKS                       R11 R11 K20 ["StudioOptionsContextProvider"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K11 ["Src"]
      103 GETTABLEKS                       R12 R12 K12 ["Components"]
      105 GETTABLEKS                       R12 R12 K13 ["Contexts"]
      107 GETTABLEKS                       R12 R12 K21 ["StudioPopoutWidgetContextProvider"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R13 R0 K11 ["Src"]
      114 GETTABLEKS                       R13 R13 K12 ["Components"]
      116 GETTABLEKS                       R13 R13 K13 ["Contexts"]
      118 GETTABLEKS                       R13 R13 K22 ["StudioSessionIdContextProvider"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R14 R0 K11 ["Src"]
      125 GETTABLEKS                       R14 R14 K23 ["Util"]
      127 GETTABLEKS                       R14 R14 K24 ["StudioWindowInput"]
      129 CALL                             R13 1 1
      130 GETIMPORT                        R14 K5 [require]
      132 GETTABLEKS                       R15 R0 K11 ["Src"]
      134 GETTABLEKS                       R15 R15 K12 ["Components"]
      136 GETTABLEKS                       R15 R15 K25 ["WidgetTrackingMainView"]
      138 CALL                             R14 1 1
      139 GETTABLEKS                       R15 R1 K26 ["Flags"]
      141 GETTABLEKS                       R15 R15 K27 ["Shared"]
      143 GETTABLEKS                       R15 R15 K28 ["FFlagAssistantFeedbackView"]
      145 GETIMPORT                        R16 K5 [require]
      147 GETTABLEKS                       R17 R0 K11 ["Src"]
      149 GETTABLEKS                       R17 R17 K26 ["Flags"]
      151 GETTABLEKS                       R17 R17 K29 ["FFlagAssistantQualityChangeWidgetTitle"]
      153 CALL                             R16 1 1
      154 GETTABLEKS                       R17 R1 K26 ["Flags"]
      156 GETTABLEKS                       R17 R17 K27 ["Shared"]
      158 GETTABLEKS                       R17 R17 K30 ["FFlagExternalMCPUI"]
      160 GETTABLEKS                       R18 R1 K26 ["Flags"]
      162 GETTABLEKS                       R18 R18 K27 ["Shared"]
      164 GETTABLEKS                       R18 R18 K31 ["FFlagAssistantEval"]
      166 GETTABLEKS                       R19 R1 K26 ["Flags"]
      168 GETTABLEKS                       R19 R19 K27 ["Shared"]
      170 GETTABLEKS                       R19 R19 K32 ["FFlagDebugEnableTestLLMAdapter"]
      172 GETTABLEKS                       R20 R1 K26 ["Flags"]
      174 GETTABLEKS                       R20 R20 K27 ["Shared"]
      176 GETTABLEKS                       R20 R20 K33 ["FFlagAssistantSplitToolsAndWidgets"]
      178 GETTABLEKS                       R21 R6 K12 ["Components"]
      180 GETTABLEKS                       R21 R21 K34 ["FoundationProviderAdapter"]
      182 GETTABLEKS                       R22 R1 K12 ["Components"]
      184 GETTABLEKS                       R22 R22 K13 ["Contexts"]
      186 GETTABLEKS                       R22 R22 K35 ["FeedbackContext"]
      188 GETTABLEKS                       R23 R1 K12 ["Components"]
      190 GETTABLEKS                       R23 R23 K13 ["Contexts"]
      192 GETTABLEKS                       R23 R23 K36 ["McpAuthorizerManagerContext"]
      194 GETTABLEKS                       R24 R1 K12 ["Components"]
      196 GETTABLEKS                       R24 R24 K13 ["Contexts"]
      198 GETTABLEKS                       R24 R24 K37 ["ModelQualityContext"]
      200 GETTABLEKS                       R25 R1 K12 ["Components"]
      202 GETTABLEKS                       R25 R25 K13 ["Contexts"]
      204 GETTABLEKS                       R25 R25 K38 ["PersistedIntegrationContext"]
      206 GETTABLEKS                       R26 R1 K12 ["Components"]
      208 GETTABLEKS                       R26 R26 K13 ["Contexts"]
      210 GETTABLEKS                       R26 R26 K39 ["PersistedSettingsContext"]
      212 GETTABLEKS                       R27 R1 K40 ["Resources"]
      214 GETTABLEKS                       R27 R27 K41 ["Localization"]
      216 GETTABLEKS                       R27 R27 K42 ["Translator"]
      218 GETTABLEKS                       R28 R1 K12 ["Components"]
      220 GETTABLEKS                       R28 R28 K43 ["Hooks"]
      222 GETTABLEKS                       R28 R28 K44 ["useBridges"]
      224 GETTABLEKS                       R29 R3 K45 ["createElement"]
      226 DUPCLOSURE                       R30 K46 [PROTO_1]
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R29
      232 CAPTURE                          VAL R14
      233 DUPCLOSURE                       R31 K47 [PROTO_2]
      234 CAPTURE                          VAL R29
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R10
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R13
      249 CAPTURE                          VAL R24
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R15
      252 CAPTURE                          VAL R22
      253 CAPTURE                          VAL R20
      254 CAPTURE                          VAL R28
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R21
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R30
      259 RETURN                           R31 1
