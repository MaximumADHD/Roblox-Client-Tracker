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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantQualityChangeWidgetTitle"]
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useContext"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Context"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R1 K3 ["modelQuality"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["useEffect"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R2
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 0
       27 DUPTABLE                         R1 K6 [{"MainView"}]
       28 GETUPVAL                         R2 4
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R3 R3 K7 ["WidgetTrackingMainView"]
       32 DUPTABLE                         R4 K9 [{"textBoxRef"}]
       33 GETTABLEKS                       R5 R0 K8 ["textBoxRef"]
       35 SETTABLEKS                       R5 R4 K8 ["textBoxRef"]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R1 K5 ["MainView"]
       40 RETURN                           R1 1

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
       36 GETTABLEKS                       R2 R2 K5 ["FFlagExternalMCPUI"]
       38 JUMPIFNOT                        R2 ; [+8]
       39 MOVE                             R3 R1
       40 GETUPVAL                         R4 0
       41 GETUPVAL                         R5 6
       42 CALL                             R4 1 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R2 K8 [table.insert]
       46 CALL                             R2 -1 0
       47 MOVE                             R3 R1
       48 GETUPVAL                         R4 0
       49 GETUPVAL                         R5 7
       50 CALL                             R4 1 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R2 K8 [table.insert]
       54 CALL                             R2 -1 0
       55 MOVE                             R3 R1
       56 GETUPVAL                         R4 0
       57 GETUPVAL                         R5 8
       58 GETTABLEKS                       R5 R5 K4 ["Provider"]
       60 CALL                             R4 1 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R2 K8 [table.insert]
       64 CALL                             R2 -1 0
       65 MOVE                             R3 R1
       66 GETUPVAL                         R4 0
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K0 ["Components"]
       70 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       72 GETTABLEKS                       R5 R5 K9 ["SettingsContextProvider"]
       74 CALL                             R4 1 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R2 K8 [table.insert]
       78 CALL                             R2 -1 0
       79 GETUPVAL                         R2 5
       80 GETTABLEKS                       R2 R2 K10 ["FFlagAssistantEval"]
       82 JUMPIFNOT                        R2 ; [+14]
       83 MOVE                             R3 R1
       84 GETUPVAL                         R4 0
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K0 ["Components"]
       88 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       90 GETTABLEKS                       R5 R5 K11 ["EvalContextProvider"]
       92 CALL                             R4 1 -1
       93 FASTCALL                         TABLE_INSERT ; [+2]
       94 GETIMPORT                        R2 K8 [table.insert]
       96 CALL                             R2 -1 0
       97 MOVE                             R3 R1
       98 GETUPVAL                         R4 0
       99 GETUPVAL                         R5 1
      100 GETTABLEKS                       R5 R5 K0 ["Components"]
      102 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      104 GETTABLEKS                       R5 R5 K12 ["LLMProviderSelectionContextProvider"]
      106 CALL                             R4 1 -1
      107 FASTCALL                         TABLE_INSERT ; [+2]
      108 GETIMPORT                        R2 K8 [table.insert]
      110 CALL                             R2 -1 0
      111 MOVE                             R3 R1
      112 GETUPVAL                         R4 0
      113 GETUPVAL                         R5 1
      114 GETTABLEKS                       R5 R5 K0 ["Components"]
      116 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      118 GETTABLEKS                       R5 R5 K13 ["PersistentPlanContext"]
      120 GETTABLEKS                       R5 R5 K4 ["Provider"]
      122 CALL                             R4 1 -1
      123 FASTCALL                         TABLE_INSERT ; [+2]
      124 GETIMPORT                        R2 K8 [table.insert]
      126 CALL                             R2 -1 0
      127 GETUPVAL                         R2 5
      128 GETTABLEKS                       R2 R2 K14 ["FFlagDebugEnableTestLLMAdapter"]
      130 JUMPIFNOT                        R2 ; [+15]
      131 MOVE                             R3 R1
      132 GETUPVAL                         R4 0
      133 GETUPVAL                         R5 1
      134 GETTABLEKS                       R5 R5 K0 ["Components"]
      136 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      138 GETTABLEKS                       R5 R5 K15 ["TestLLMPackageContextProvider"]
      140 CALL                             R4 1 -1
      141 FASTCALL                         TABLE_INSERT ; [+2]
      142 GETIMPORT                        R2 K8 [table.insert]
      144 CALL                             R2 -1 0
      145 JUMP                             ; [+8]
      146 MOVE                             R3 R1
      147 GETUPVAL                         R4 0
      148 GETUPVAL                         R5 9
      149 CALL                             R4 1 -1
      150 FASTCALL                         TABLE_INSERT ; [+2]
      151 GETIMPORT                        R2 K8 [table.insert]
      153 CALL                             R2 -1 0
      154 MOVE                             R3 R1
      155 GETUPVAL                         R4 0
      156 GETUPVAL                         R5 10
      157 CALL                             R4 1 -1
      158 FASTCALL                         TABLE_INSERT ; [+2]
      159 GETIMPORT                        R2 K8 [table.insert]
      161 CALL                             R2 -1 0
      162 MOVE                             R3 R1
      163 GETUPVAL                         R4 0
      164 GETUPVAL                         R5 11
      165 DUPTABLE                         R6 K17 [{"dataModel"}]
      166 GETIMPORT                        R7 K19 [game]
      168 SETTABLEKS                       R7 R6 K16 ["dataModel"]
      170 CALL                             R4 2 -1
      171 FASTCALL                         TABLE_INSERT ; [+2]
      172 GETIMPORT                        R2 K8 [table.insert]
      174 CALL                             R2 -1 0
      175 MOVE                             R3 R1
      176 GETUPVAL                         R4 0
      177 GETUPVAL                         R5 12
      178 GETTABLEKS                       R5 R5 K4 ["Provider"]
      180 DUPTABLE                         R6 K21 [{"dockWidget"}]
      181 GETTABLEKS                       R7 R0 K20 ["dockWidget"]
      183 SETTABLEKS                       R7 R6 K20 ["dockWidget"]
      185 CALL                             R4 2 -1
      186 FASTCALL                         TABLE_INSERT ; [+2]
      187 GETIMPORT                        R2 K8 [table.insert]
      189 CALL                             R2 -1 0
      190 MOVE                             R3 R1
      191 GETUPVAL                         R4 0
      192 GETUPVAL                         R5 13
      193 GETTABLEKS                       R5 R5 K4 ["Provider"]
      195 CALL                             R4 1 -1
      196 FASTCALL                         TABLE_INSERT ; [+2]
      197 GETIMPORT                        R2 K8 [table.insert]
      199 CALL                             R2 -1 0
      200 MOVE                             R3 R1
      201 GETUPVAL                         R4 0
      202 GETUPVAL                         R5 14
      203 CALL                             R4 1 -1
      204 FASTCALL                         TABLE_INSERT ; [+2]
      205 GETIMPORT                        R2 K8 [table.insert]
      207 CALL                             R2 -1 0
      208 GETUPVAL                         R2 5
      209 GETTABLEKS                       R2 R2 K22 ["FFlagAssistantFeedbackView"]
      211 JUMPIFNOT                        R2 ; [+10]
      212 MOVE                             R3 R1
      213 GETUPVAL                         R4 0
      214 GETUPVAL                         R5 15
      215 GETTABLEKS                       R5 R5 K4 ["Provider"]
      217 CALL                             R4 1 -1
      218 FASTCALL                         TABLE_INSERT ; [+2]
      219 GETIMPORT                        R2 K8 [table.insert]
      221 CALL                             R2 -1 0
      222 GETUPVAL                         R2 5
      223 GETTABLEKS                       R2 R2 K23 ["FFlagAssistantSplitToolsAndWidgets"]
      225 JUMPIFNOT                        R2 ; [+12]
      226 GETUPVAL                         R2 16
      227 GETTABLEKS                       R3 R0 K24 ["args"]
      229 GETTABLEKS                       R3 R3 K25 ["bridges"]
      231 CALL                             R2 1 1
      232 GETUPVAL                         R3 17
      233 GETTABLEKS                       R3 R3 K26 ["append"]
      235 MOVE                             R4 R1
      236 MOVE                             R5 R2
      237 CALL                             R3 2 0
      238 GETUPVAL                         R2 0
      239 GETUPVAL                         R3 18
      240 DUPTABLE                         R4 K28 [{"onStyleSheetChange"}]
      241 GETTABLEKS                       R5 R0 K29 ["onFoundationStyleSheetChange"]
      243 SETTABLEKS                       R5 R4 K27 ["onStyleSheetChange"]
      245 DUPTABLE                         R5 K31 [{"ContextStack"}]
      246 GETUPVAL                         R6 0
      247 GETUPVAL                         R7 19
      248 GETTABLEKS                       R7 R7 K30 ["ContextStack"]
      250 DUPTABLE                         R8 K33 [{"providers"}]
      251 SETTABLEKS                       R1 R8 K32 ["providers"]
      253 GETUPVAL                         R9 20
      254 MOVE                             R10 R0
      255 CALL                             R9 1 1
      256 CALL                             R6 3 1
      257 SETTABLEKS                       R6 R5 K30 ["ContextStack"]
      259 CALL                             R2 3 -1
      260 RETURN                           R2 -1

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
      139 GETIMPORT                        R15 K5 [require]
      141 GETTABLEKS                       R16 R0 K11 ["Src"]
      143 GETTABLEKS                       R16 R16 K26 ["Flags"]
      145 CALL                             R15 1 1
      146 GETTABLEKS                       R16 R6 K12 ["Components"]
      148 GETTABLEKS                       R16 R16 K27 ["FoundationProviderAdapter"]
      150 GETTABLEKS                       R17 R1 K12 ["Components"]
      152 GETTABLEKS                       R17 R17 K13 ["Contexts"]
      154 GETTABLEKS                       R17 R17 K28 ["FeedbackContext"]
      156 GETTABLEKS                       R18 R1 K12 ["Components"]
      158 GETTABLEKS                       R18 R18 K13 ["Contexts"]
      160 GETTABLEKS                       R18 R18 K29 ["McpAuthorizerManagerContext"]
      162 GETTABLEKS                       R19 R1 K12 ["Components"]
      164 GETTABLEKS                       R19 R19 K13 ["Contexts"]
      166 GETTABLEKS                       R19 R19 K30 ["ModelQualityContext"]
      168 GETTABLEKS                       R20 R1 K12 ["Components"]
      170 GETTABLEKS                       R20 R20 K13 ["Contexts"]
      172 GETTABLEKS                       R20 R20 K31 ["PersistedIntegrationContext"]
      174 GETTABLEKS                       R21 R1 K12 ["Components"]
      176 GETTABLEKS                       R21 R21 K13 ["Contexts"]
      178 GETTABLEKS                       R21 R21 K32 ["PersistedSettingsContext"]
      180 GETTABLEKS                       R22 R1 K33 ["Resources"]
      182 GETTABLEKS                       R22 R22 K34 ["Localization"]
      184 GETTABLEKS                       R22 R22 K35 ["Translator"]
      186 GETTABLEKS                       R23 R1 K12 ["Components"]
      188 GETTABLEKS                       R23 R23 K36 ["Hooks"]
      190 GETTABLEKS                       R23 R23 K37 ["useBridges"]
      192 GETTABLEKS                       R24 R3 K38 ["createElement"]
      194 DUPCLOSURE                       R25 K39 [PROTO_1]
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R14
      201 DUPCLOSURE                       R26 K40 [PROTO_2]
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R25
      223 RETURN                           R26 1
