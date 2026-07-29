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
       35 MOVE                             R3 R1
       36 GETUPVAL                         R4 0
       37 GETUPVAL                         R5 5
       38 CALL                             R4 1 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R2 K7 [table.insert]
       42 CALL                             R2 -1 0
       43 MOVE                             R3 R1
       44 GETUPVAL                         R4 0
       45 GETUPVAL                         R5 6
       46 CALL                             R4 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R2 K7 [table.insert]
       50 CALL                             R2 -1 0
       51 MOVE                             R3 R1
       52 GETUPVAL                         R4 0
       53 GETUPVAL                         R5 7
       54 GETTABLEKS                       R5 R5 K4 ["Provider"]
       56 CALL                             R4 1 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R2 K7 [table.insert]
       60 CALL                             R2 -1 0
       61 MOVE                             R3 R1
       62 GETUPVAL                         R4 0
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K0 ["Components"]
       66 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       68 GETTABLEKS                       R5 R5 K8 ["SettingsContextProvider"]
       70 CALL                             R4 1 -1
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R2 K7 [table.insert]
       74 CALL                             R2 -1 0
       75 GETUPVAL                         R2 8
       76 GETTABLEKS                       R2 R2 K9 ["FFlagAssistantEval"]
       78 JUMPIFNOT                        R2 ; [+14]
       79 MOVE                             R3 R1
       80 GETUPVAL                         R4 0
       81 GETUPVAL                         R5 1
       82 GETTABLEKS                       R5 R5 K0 ["Components"]
       84 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       86 GETTABLEKS                       R5 R5 K10 ["EvalContextProvider"]
       88 CALL                             R4 1 -1
       89 FASTCALL                         TABLE_INSERT ; [+2]
       90 GETIMPORT                        R2 K7 [table.insert]
       92 CALL                             R2 -1 0
       93 MOVE                             R3 R1
       94 GETUPVAL                         R4 0
       95 GETUPVAL                         R5 1
       96 GETTABLEKS                       R5 R5 K0 ["Components"]
       98 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      100 GETTABLEKS                       R5 R5 K11 ["LLMProviderSelectionContextProvider"]
      102 CALL                             R4 1 -1
      103 FASTCALL                         TABLE_INSERT ; [+2]
      104 GETIMPORT                        R2 K7 [table.insert]
      106 CALL                             R2 -1 0
      107 MOVE                             R3 R1
      108 GETUPVAL                         R4 0
      109 GETUPVAL                         R5 1
      110 GETTABLEKS                       R5 R5 K0 ["Components"]
      112 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      114 GETTABLEKS                       R5 R5 K12 ["PersistentPlanContext"]
      116 GETTABLEKS                       R5 R5 K4 ["Provider"]
      118 CALL                             R4 1 -1
      119 FASTCALL                         TABLE_INSERT ; [+2]
      120 GETIMPORT                        R2 K7 [table.insert]
      122 CALL                             R2 -1 0
      123 GETUPVAL                         R2 8
      124 GETTABLEKS                       R2 R2 K13 ["FFlagDebugEnableTestLLMAdapter"]
      126 JUMPIFNOT                        R2 ; [+15]
      127 MOVE                             R3 R1
      128 GETUPVAL                         R4 0
      129 GETUPVAL                         R5 1
      130 GETTABLEKS                       R5 R5 K0 ["Components"]
      132 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      134 GETTABLEKS                       R5 R5 K14 ["TestLLMPackageContextProvider"]
      136 CALL                             R4 1 -1
      137 FASTCALL                         TABLE_INSERT ; [+2]
      138 GETIMPORT                        R2 K7 [table.insert]
      140 CALL                             R2 -1 0
      141 JUMP                             ; [+8]
      142 MOVE                             R3 R1
      143 GETUPVAL                         R4 0
      144 GETUPVAL                         R5 9
      145 CALL                             R4 1 -1
      146 FASTCALL                         TABLE_INSERT ; [+2]
      147 GETIMPORT                        R2 K7 [table.insert]
      149 CALL                             R2 -1 0
      150 GETUPVAL                         R2 8
      151 GETTABLEKS                       R2 R2 K15 ["FFlagAssistantHarnessSplit"]
      153 JUMPIFNOT                        R2 ; [+8]
      154 MOVE                             R3 R1
      155 GETUPVAL                         R4 0
      156 GETUPVAL                         R5 10
      157 CALL                             R4 1 -1
      158 FASTCALL                         TABLE_INSERT ; [+2]
      159 GETIMPORT                        R2 K7 [table.insert]
      161 CALL                             R2 -1 0
      162 MOVE                             R3 R1
      163 GETUPVAL                         R4 0
      164 GETUPVAL                         R5 11
      165 CALL                             R4 1 -1
      166 FASTCALL                         TABLE_INSERT ; [+2]
      167 GETIMPORT                        R2 K7 [table.insert]
      169 CALL                             R2 -1 0
      170 MOVE                             R3 R1
      171 GETUPVAL                         R4 0
      172 GETUPVAL                         R5 12
      173 DUPTABLE                         R6 K17 [{"dataModel"}]
      174 GETIMPORT                        R7 K19 [game]
      176 SETTABLEKS                       R7 R6 K16 ["dataModel"]
      178 CALL                             R4 2 -1
      179 FASTCALL                         TABLE_INSERT ; [+2]
      180 GETIMPORT                        R2 K7 [table.insert]
      182 CALL                             R2 -1 0
      183 MOVE                             R3 R1
      184 GETUPVAL                         R4 0
      185 GETUPVAL                         R5 13
      186 GETTABLEKS                       R5 R5 K4 ["Provider"]
      188 DUPTABLE                         R6 K21 [{"dockWidget"}]
      189 GETTABLEKS                       R7 R0 K20 ["dockWidget"]
      191 SETTABLEKS                       R7 R6 K20 ["dockWidget"]
      193 CALL                             R4 2 -1
      194 FASTCALL                         TABLE_INSERT ; [+2]
      195 GETIMPORT                        R2 K7 [table.insert]
      197 CALL                             R2 -1 0
      198 MOVE                             R3 R1
      199 GETUPVAL                         R4 0
      200 GETUPVAL                         R5 14
      201 GETTABLEKS                       R5 R5 K4 ["Provider"]
      203 CALL                             R4 1 -1
      204 FASTCALL                         TABLE_INSERT ; [+2]
      205 GETIMPORT                        R2 K7 [table.insert]
      207 CALL                             R2 -1 0
      208 MOVE                             R3 R1
      209 GETUPVAL                         R4 0
      210 GETUPVAL                         R5 15
      211 CALL                             R4 1 -1
      212 FASTCALL                         TABLE_INSERT ; [+2]
      213 GETIMPORT                        R2 K7 [table.insert]
      215 CALL                             R2 -1 0
      216 GETUPVAL                         R2 8
      217 GETTABLEKS                       R2 R2 K22 ["FFlagAssistantFeedbackView"]
      219 JUMPIFNOT                        R2 ; [+10]
      220 MOVE                             R3 R1
      221 GETUPVAL                         R4 0
      222 GETUPVAL                         R5 16
      223 GETTABLEKS                       R5 R5 K4 ["Provider"]
      225 CALL                             R4 1 -1
      226 FASTCALL                         TABLE_INSERT ; [+2]
      227 GETIMPORT                        R2 K7 [table.insert]
      229 CALL                             R2 -1 0
      230 GETUPVAL                         R2 8
      231 GETTABLEKS                       R2 R2 K23 ["FFlagAssistantSplitToolsAndWidgets"]
      233 JUMPIFNOT                        R2 ; [+12]
      234 GETUPVAL                         R2 17
      235 GETTABLEKS                       R3 R0 K24 ["args"]
      237 GETTABLEKS                       R3 R3 K25 ["bridges"]
      239 CALL                             R2 1 1
      240 GETUPVAL                         R3 18
      241 GETTABLEKS                       R3 R3 K26 ["append"]
      243 MOVE                             R4 R1
      244 MOVE                             R5 R2
      245 CALL                             R3 2 0
      246 GETUPVAL                         R2 0
      247 GETUPVAL                         R3 19
      248 DUPTABLE                         R4 K28 [{"onStyleSheetChange"}]
      249 GETTABLEKS                       R5 R0 K29 ["onFoundationStyleSheetChange"]
      251 SETTABLEKS                       R5 R4 K27 ["onStyleSheetChange"]
      253 DUPTABLE                         R5 K31 [{"ContextStack"}]
      254 GETUPVAL                         R6 0
      255 GETUPVAL                         R7 20
      256 GETTABLEKS                       R7 R7 K30 ["ContextStack"]
      258 DUPTABLE                         R8 K33 [{"providers"}]
      259 SETTABLEKS                       R1 R8 K32 ["providers"]
      261 GETUPVAL                         R9 21
      262 MOVE                             R10 R0
      263 CALL                             R9 1 1
      264 CALL                             R6 3 1
      265 SETTABLEKS                       R6 R5 K30 ["ContextStack"]
      267 CALL                             R2 3 -1
      268 RETURN                           R2 -1

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
       61 GETTABLEKS                       R8 R8 K16 ["StudioHarnessDepsContextProvider"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Src"]
       68 GETTABLEKS                       R9 R9 K12 ["Components"]
       70 GETTABLEKS                       R9 R9 K13 ["Contexts"]
       72 GETTABLEKS                       R9 R9 K17 ["StudioInputStateContextProvider"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Src"]
       79 GETTABLEKS                       R10 R10 K12 ["Components"]
       81 GETTABLEKS                       R10 R10 K13 ["Contexts"]
       83 GETTABLEKS                       R10 R10 K18 ["StudioLLM"]
       85 GETTABLEKS                       R10 R10 K19 ["StudioLLMPackageContextProvider"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K11 ["Src"]
       92 GETTABLEKS                       R11 R11 K12 ["Components"]
       94 GETTABLEKS                       R11 R11 K13 ["Contexts"]
       96 GETTABLEKS                       R11 R11 K20 ["StudioMcpClientContextProvider"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K11 ["Src"]
      103 GETTABLEKS                       R12 R12 K12 ["Components"]
      105 GETTABLEKS                       R12 R12 K13 ["Contexts"]
      107 GETTABLEKS                       R12 R12 K21 ["StudioOptionsContextProvider"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R13 R0 K11 ["Src"]
      114 GETTABLEKS                       R13 R13 K12 ["Components"]
      116 GETTABLEKS                       R13 R13 K13 ["Contexts"]
      118 GETTABLEKS                       R13 R13 K22 ["StudioPopoutWidgetContextProvider"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R14 R0 K11 ["Src"]
      125 GETTABLEKS                       R14 R14 K12 ["Components"]
      127 GETTABLEKS                       R14 R14 K13 ["Contexts"]
      129 GETTABLEKS                       R14 R14 K23 ["StudioSessionIdContextProvider"]
      131 CALL                             R13 1 1
      132 GETIMPORT                        R14 K5 [require]
      134 GETTABLEKS                       R15 R0 K11 ["Src"]
      136 GETTABLEKS                       R15 R15 K24 ["Util"]
      138 GETTABLEKS                       R15 R15 K25 ["StudioWindowInput"]
      140 CALL                             R14 1 1
      141 GETIMPORT                        R15 K5 [require]
      143 GETTABLEKS                       R16 R0 K11 ["Src"]
      145 GETTABLEKS                       R16 R16 K12 ["Components"]
      147 GETTABLEKS                       R16 R16 K26 ["WidgetTrackingMainView"]
      149 CALL                             R15 1 1
      150 GETIMPORT                        R16 K5 [require]
      152 GETTABLEKS                       R17 R0 K11 ["Src"]
      154 GETTABLEKS                       R17 R17 K27 ["Flags"]
      156 CALL                             R16 1 1
      157 GETTABLEKS                       R17 R6 K12 ["Components"]
      159 GETTABLEKS                       R17 R17 K28 ["FoundationProviderAdapter"]
      161 GETTABLEKS                       R18 R1 K12 ["Components"]
      163 GETTABLEKS                       R18 R18 K13 ["Contexts"]
      165 GETTABLEKS                       R18 R18 K29 ["FeedbackContext"]
      167 GETTABLEKS                       R19 R1 K12 ["Components"]
      169 GETTABLEKS                       R19 R19 K13 ["Contexts"]
      171 GETTABLEKS                       R19 R19 K30 ["McpAuthorizerManagerContext"]
      173 GETTABLEKS                       R20 R1 K12 ["Components"]
      175 GETTABLEKS                       R20 R20 K13 ["Contexts"]
      177 GETTABLEKS                       R20 R20 K31 ["ModelQualityContext"]
      179 GETTABLEKS                       R21 R1 K12 ["Components"]
      181 GETTABLEKS                       R21 R21 K13 ["Contexts"]
      183 GETTABLEKS                       R21 R21 K32 ["PersistedIntegrationContext"]
      185 GETTABLEKS                       R22 R1 K12 ["Components"]
      187 GETTABLEKS                       R22 R22 K13 ["Contexts"]
      189 GETTABLEKS                       R22 R22 K33 ["PersistedSettingsContext"]
      191 GETTABLEKS                       R23 R1 K34 ["Resources"]
      193 GETTABLEKS                       R23 R23 K35 ["Localization"]
      195 GETTABLEKS                       R23 R23 K36 ["Translator"]
      197 GETTABLEKS                       R24 R1 K12 ["Components"]
      199 GETTABLEKS                       R24 R24 K37 ["Hooks"]
      201 GETTABLEKS                       R24 R24 K38 ["useBridges"]
      203 GETTABLEKS                       R25 R3 K39 ["createElement"]
      205 DUPCLOSURE                       R26 K40 [PROTO_1]
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R15
      212 DUPCLOSURE                       R27 K41 [PROTO_2]
      213 CAPTURE                          VAL R25
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R21
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R26
      235 RETURN                           R27 1
