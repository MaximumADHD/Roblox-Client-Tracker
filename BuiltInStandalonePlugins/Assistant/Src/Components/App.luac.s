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
      124 GETTABLEKS                       R2 R2 K13 ["FFlagAssistantCreditMetering"]
      126 JUMPIFNOT                        R2 ; [+8]
      127 MOVE                             R3 R1
      128 GETUPVAL                         R4 0
      129 GETUPVAL                         R5 9
      130 CALL                             R4 1 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R2 K7 [table.insert]
      134 CALL                             R2 -1 0
      135 GETUPVAL                         R2 8
      136 GETTABLEKS                       R2 R2 K14 ["FFlagDebugEnableTestLLMAdapter"]
      138 JUMPIFNOT                        R2 ; [+15]
      139 MOVE                             R3 R1
      140 GETUPVAL                         R4 0
      141 GETUPVAL                         R5 1
      142 GETTABLEKS                       R5 R5 K0 ["Components"]
      144 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      146 GETTABLEKS                       R5 R5 K15 ["TestLLMPackageContextProvider"]
      148 CALL                             R4 1 -1
      149 FASTCALL                         TABLE_INSERT ; [+2]
      150 GETIMPORT                        R2 K7 [table.insert]
      152 CALL                             R2 -1 0
      153 JUMP                             ; [+8]
      154 MOVE                             R3 R1
      155 GETUPVAL                         R4 0
      156 GETUPVAL                         R5 10
      157 CALL                             R4 1 -1
      158 FASTCALL                         TABLE_INSERT ; [+2]
      159 GETIMPORT                        R2 K7 [table.insert]
      161 CALL                             R2 -1 0
      162 GETUPVAL                         R2 11
      163 CALL                             R2 0 1
      164 JUMPIFNOT                        R2 ; [+8]
      165 MOVE                             R3 R1
      166 GETUPVAL                         R4 0
      167 GETUPVAL                         R5 12
      168 CALL                             R4 1 -1
      169 FASTCALL                         TABLE_INSERT ; [+2]
      170 GETIMPORT                        R2 K7 [table.insert]
      172 CALL                             R2 -1 0
      173 MOVE                             R3 R1
      174 GETUPVAL                         R4 0
      175 GETUPVAL                         R5 13
      176 CALL                             R4 1 -1
      177 FASTCALL                         TABLE_INSERT ; [+2]
      178 GETIMPORT                        R2 K7 [table.insert]
      180 CALL                             R2 -1 0
      181 MOVE                             R3 R1
      182 GETUPVAL                         R4 0
      183 GETUPVAL                         R5 14
      184 DUPTABLE                         R6 K17 [{"dataModel"}]
      185 GETIMPORT                        R7 K19 [game]
      187 SETTABLEKS                       R7 R6 K16 ["dataModel"]
      189 CALL                             R4 2 -1
      190 FASTCALL                         TABLE_INSERT ; [+2]
      191 GETIMPORT                        R2 K7 [table.insert]
      193 CALL                             R2 -1 0
      194 MOVE                             R3 R1
      195 GETUPVAL                         R4 0
      196 GETUPVAL                         R5 15
      197 GETTABLEKS                       R5 R5 K4 ["Provider"]
      199 DUPTABLE                         R6 K21 [{"dockWidget"}]
      200 GETTABLEKS                       R7 R0 K20 ["dockWidget"]
      202 SETTABLEKS                       R7 R6 K20 ["dockWidget"]
      204 CALL                             R4 2 -1
      205 FASTCALL                         TABLE_INSERT ; [+2]
      206 GETIMPORT                        R2 K7 [table.insert]
      208 CALL                             R2 -1 0
      209 GETUPVAL                         R2 8
      210 GETTABLEKS                       R2 R2 K22 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      212 JUMPIFNOT                        R2 ; [+13]
      213 MOVE                             R3 R1
      214 GETUPVAL                         R4 0
      215 GETUPVAL                         R5 16
      216 DUPTABLE                         R6 K21 [{"dockWidget"}]
      217 GETTABLEKS                       R7 R0 K20 ["dockWidget"]
      219 SETTABLEKS                       R7 R6 K20 ["dockWidget"]
      221 CALL                             R4 2 -1
      222 FASTCALL                         TABLE_INSERT ; [+2]
      223 GETIMPORT                        R2 K7 [table.insert]
      225 CALL                             R2 -1 0
      226 MOVE                             R3 R1
      227 GETUPVAL                         R4 0
      228 GETUPVAL                         R5 17
      229 GETTABLEKS                       R5 R5 K4 ["Provider"]
      231 CALL                             R4 1 -1
      232 FASTCALL                         TABLE_INSERT ; [+2]
      233 GETIMPORT                        R2 K7 [table.insert]
      235 CALL                             R2 -1 0
      236 MOVE                             R3 R1
      237 GETUPVAL                         R4 0
      238 GETUPVAL                         R5 18
      239 CALL                             R4 1 -1
      240 FASTCALL                         TABLE_INSERT ; [+2]
      241 GETIMPORT                        R2 K7 [table.insert]
      243 CALL                             R2 -1 0
      244 GETUPVAL                         R2 8
      245 GETTABLEKS                       R2 R2 K23 ["FFlagPropertiesExposeContentView"]
      247 JUMPIFNOT                        R2 ; [+14]
      248 MOVE                             R3 R1
      249 GETUPVAL                         R4 0
      250 GETUPVAL                         R5 1
      251 GETTABLEKS                       R5 R5 K0 ["Components"]
      253 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      255 GETTABLEKS                       R5 R5 K24 ["PropertiesContextProvider"]
      257 CALL                             R4 1 -1
      258 FASTCALL                         TABLE_INSERT ; [+2]
      259 GETIMPORT                        R2 K7 [table.insert]
      261 CALL                             R2 -1 0
      262 GETUPVAL                         R2 8
      263 GETTABLEKS                       R2 R2 K25 ["FFlagAssistantFeedbackView"]
      265 JUMPIFNOT                        R2 ; [+10]
      266 MOVE                             R3 R1
      267 GETUPVAL                         R4 0
      268 GETUPVAL                         R5 19
      269 GETTABLEKS                       R5 R5 K4 ["Provider"]
      271 CALL                             R4 1 -1
      272 FASTCALL                         TABLE_INSERT ; [+2]
      273 GETIMPORT                        R2 K7 [table.insert]
      275 CALL                             R2 -1 0
      276 GETUPVAL                         R2 8
      277 GETTABLEKS                       R2 R2 K26 ["FFlagAssistantSplitToolsAndWidgets"]
      279 JUMPIFNOT                        R2 ; [+12]
      280 GETUPVAL                         R2 20
      281 GETTABLEKS                       R3 R0 K27 ["args"]
      283 GETTABLEKS                       R3 R3 K28 ["bridges"]
      285 CALL                             R2 1 1
      286 GETUPVAL                         R3 21
      287 GETTABLEKS                       R3 R3 K29 ["append"]
      289 MOVE                             R4 R1
      290 MOVE                             R5 R2
      291 CALL                             R3 2 0
      292 GETUPVAL                         R2 0
      293 GETUPVAL                         R3 22
      294 DUPTABLE                         R4 K31 [{"onStyleSheetChange"}]
      295 GETTABLEKS                       R5 R0 K32 ["onFoundationStyleSheetChange"]
      297 SETTABLEKS                       R5 R4 K30 ["onStyleSheetChange"]
      299 DUPTABLE                         R5 K34 [{"ContextStack"}]
      300 GETUPVAL                         R6 0
      301 GETUPVAL                         R7 23
      302 GETTABLEKS                       R7 R7 K33 ["ContextStack"]
      304 DUPTABLE                         R8 K36 [{"providers"}]
      305 SETTABLEKS                       R1 R8 K35 ["providers"]
      307 GETUPVAL                         R9 24
      308 MOVE                             R10 R0
      309 CALL                             R9 1 1
      310 CALL                             R6 3 1
      311 SETTABLEKS                       R6 R5 K33 ["ContextStack"]
      313 CALL                             R2 3 -1
      314 RETURN                           R2 -1

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
       43 GETTABLEKS                       R6 R6 K14 ["StudioCreditMeteringContextProvider"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Src"]
       50 GETTABLEKS                       R7 R7 K12 ["Components"]
       52 GETTABLEKS                       R7 R7 K13 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K15 ["StudioExternalServerContextProvider"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Packages"]
       61 GETTABLEKS                       R8 R8 K16 ["StudioFoundation"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Src"]
       68 GETTABLEKS                       R9 R9 K12 ["Components"]
       70 GETTABLEKS                       R9 R9 K13 ["Contexts"]
       72 GETTABLEKS                       R9 R9 K17 ["StudioHarnessDepsContextProvider"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Src"]
       79 GETTABLEKS                       R10 R10 K12 ["Components"]
       81 GETTABLEKS                       R10 R10 K13 ["Contexts"]
       83 GETTABLEKS                       R10 R10 K18 ["StudioInputStateContextProvider"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K11 ["Src"]
       90 GETTABLEKS                       R11 R11 K12 ["Components"]
       92 GETTABLEKS                       R11 R11 K13 ["Contexts"]
       94 GETTABLEKS                       R11 R11 K19 ["StudioLLM"]
       96 GETTABLEKS                       R11 R11 K20 ["StudioLLMPackageContextProvider"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K11 ["Src"]
      103 GETTABLEKS                       R12 R12 K12 ["Components"]
      105 GETTABLEKS                       R12 R12 K13 ["Contexts"]
      107 GETTABLEKS                       R12 R12 K21 ["StudioMcpClientContextProvider"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R13 R0 K11 ["Src"]
      114 GETTABLEKS                       R13 R13 K12 ["Components"]
      116 GETTABLEKS                       R13 R13 K13 ["Contexts"]
      118 GETTABLEKS                       R13 R13 K22 ["StudioOptionsContextProvider"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R14 R0 K11 ["Src"]
      125 GETTABLEKS                       R14 R14 K12 ["Components"]
      127 GETTABLEKS                       R14 R14 K13 ["Contexts"]
      129 GETTABLEKS                       R14 R14 K23 ["StudioPopoutWidgetContextProvider"]
      131 CALL                             R13 1 1
      132 GETIMPORT                        R14 K5 [require]
      134 GETTABLEKS                       R15 R0 K11 ["Src"]
      136 GETTABLEKS                       R15 R15 K12 ["Components"]
      138 GETTABLEKS                       R15 R15 K13 ["Contexts"]
      140 GETTABLEKS                       R15 R15 K24 ["StudioSessionIdContextProvider"]
      142 CALL                             R14 1 1
      143 GETIMPORT                        R15 K5 [require]
      145 GETTABLEKS                       R16 R0 K11 ["Src"]
      147 GETTABLEKS                       R16 R16 K12 ["Components"]
      149 GETTABLEKS                       R16 R16 K13 ["Contexts"]
      151 GETTABLEKS                       R16 R16 K25 ["StudioWidgetVisibilityContextProvider"]
      153 CALL                             R15 1 1
      154 GETIMPORT                        R16 K5 [require]
      156 GETTABLEKS                       R17 R0 K11 ["Src"]
      158 GETTABLEKS                       R17 R17 K26 ["Util"]
      160 GETTABLEKS                       R17 R17 K27 ["StudioWindowInput"]
      162 CALL                             R16 1 1
      163 GETIMPORT                        R17 K5 [require]
      165 GETTABLEKS                       R18 R0 K11 ["Src"]
      167 GETTABLEKS                       R18 R18 K12 ["Components"]
      169 GETTABLEKS                       R18 R18 K28 ["WidgetTrackingMainView"]
      171 CALL                             R17 1 1
      172 GETIMPORT                        R18 K5 [require]
      174 GETTABLEKS                       R19 R0 K11 ["Src"]
      176 GETTABLEKS                       R19 R19 K29 ["Flags"]
      178 CALL                             R18 1 1
      179 GETTABLEKS                       R19 R1 K30 ["FlagUtils"]
      181 GETTABLEKS                       R19 R19 K31 ["getIsAssistantHarnessSplit"]
      183 GETTABLEKS                       R20 R7 K12 ["Components"]
      185 GETTABLEKS                       R20 R20 K32 ["FoundationProviderAdapter"]
      187 GETTABLEKS                       R21 R1 K12 ["Components"]
      189 GETTABLEKS                       R21 R21 K13 ["Contexts"]
      191 GETTABLEKS                       R21 R21 K33 ["FeedbackContext"]
      193 GETTABLEKS                       R22 R1 K12 ["Components"]
      195 GETTABLEKS                       R22 R22 K13 ["Contexts"]
      197 GETTABLEKS                       R22 R22 K34 ["McpAuthorizerManagerContext"]
      199 GETTABLEKS                       R23 R1 K12 ["Components"]
      201 GETTABLEKS                       R23 R23 K13 ["Contexts"]
      203 GETTABLEKS                       R23 R23 K35 ["ModelQualityContext"]
      205 GETTABLEKS                       R24 R1 K12 ["Components"]
      207 GETTABLEKS                       R24 R24 K13 ["Contexts"]
      209 GETTABLEKS                       R24 R24 K36 ["PersistedIntegrationContext"]
      211 GETTABLEKS                       R25 R1 K12 ["Components"]
      213 GETTABLEKS                       R25 R25 K13 ["Contexts"]
      215 GETTABLEKS                       R25 R25 K37 ["PersistedSettingsContext"]
      217 GETTABLEKS                       R26 R1 K38 ["Resources"]
      219 GETTABLEKS                       R26 R26 K39 ["Localization"]
      221 GETTABLEKS                       R26 R26 K40 ["Translator"]
      223 GETTABLEKS                       R27 R1 K12 ["Components"]
      225 GETTABLEKS                       R27 R27 K41 ["Hooks"]
      227 GETTABLEKS                       R27 R27 K42 ["useBridges"]
      229 GETTABLEKS                       R28 R3 K43 ["createElement"]
      231 DUPCLOSURE                       R29 K44 [PROTO_1]
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R23
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R28
      237 CAPTURE                          VAL R17
      238 DUPCLOSURE                       R30 K45 [PROTO_2]
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R1
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R22
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R5
      249 CAPTURE                          VAL R10
      250 CAPTURE                          VAL R19
      251 CAPTURE                          VAL R8
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R23
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R27
      260 CAPTURE                          VAL R2
      261 CAPTURE                          VAL R20
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R29
      264 RETURN                           R30 1
