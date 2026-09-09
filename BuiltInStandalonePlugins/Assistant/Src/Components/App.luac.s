PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ModelQuality"]
        4 GETTABLEKS                       R2 R2 K1 ["High"]
        6 JUMPIFNOTEQ                      R1 R2 ; [+14]
        8 GETUPVAL                         R0 2
        9 LOADK                            R2 K2 ["Plugin"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantBuildName"]
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADK                            R3 K4 ["NameBuildAdvanced"]
       15 JUMP                             ; [+1]
       16 LOADK                            R3 K5 ["NameAdvanced"]
       17 NAMECALL                         R0 R0 K6 ["getText"]
       19 CALL                             R0 3 1
       20 JUMP                             ; [+12]
       21 GETUPVAL                         R0 2
       22 LOADK                            R2 K2 ["Plugin"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantBuildName"]
       26 JUMPIFNOT                        R4 ; [+2]
       27 LOADK                            R3 K7 ["NameBuild"]
       28 JUMP                             ; [+1]
       29 LOADK                            R3 K8 ["Name"]
       30 NAMECALL                         R0 R0 K6 ["getText"]
       32 CALL                             R0 3 1
       33 GETUPVAL                         R1 4
       34 GETTABLEKS                       R1 R1 K9 ["setDockWidgetTitle"]
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantQualityChangeWidgetTitle"]
        3 JUMPIFNOT                        R1 ; [+24]
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
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R2
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 0
       28 DUPTABLE                         R1 K6 [{"MainView"}]
       29 GETUPVAL                         R2 4
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R3 R3 K7 ["WidgetTrackingMainView"]
       33 DUPTABLE                         R4 K10 [{"textBoxRef", "externalInterfaceRef"}]
       34 GETTABLEKS                       R5 R0 K8 ["textBoxRef"]
       36 SETTABLEKS                       R5 R4 K8 ["textBoxRef"]
       38 GETTABLEKS                       R5 R0 K9 ["externalInterfaceRef"]
       40 SETTABLEKS                       R5 R4 K9 ["externalInterfaceRef"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K5 ["MainView"]
       45 RETURN                           R1 1

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
      123 GETUPVAL                         R2 9
      124 CALL                             R2 0 1
      125 JUMPIFNOT                        R2 ; [+8]
      126 MOVE                             R3 R1
      127 GETUPVAL                         R4 0
      128 GETUPVAL                         R5 10
      129 CALL                             R4 1 -1
      130 FASTCALL                         TABLE_INSERT ; [+2]
      131 GETIMPORT                        R2 K7 [table.insert]
      133 CALL                             R2 -1 0
      134 GETUPVAL                         R2 8
      135 GETTABLEKS                       R2 R2 K13 ["FFlagDebugEnableTestLLMAdapter"]
      137 JUMPIFNOT                        R2 ; [+15]
      138 MOVE                             R3 R1
      139 GETUPVAL                         R4 0
      140 GETUPVAL                         R5 1
      141 GETTABLEKS                       R5 R5 K0 ["Components"]
      143 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      145 GETTABLEKS                       R5 R5 K14 ["TestLLMPackageContextProvider"]
      147 CALL                             R4 1 -1
      148 FASTCALL                         TABLE_INSERT ; [+2]
      149 GETIMPORT                        R2 K7 [table.insert]
      151 CALL                             R2 -1 0
      152 JUMP                             ; [+8]
      153 MOVE                             R3 R1
      154 GETUPVAL                         R4 0
      155 GETUPVAL                         R5 11
      156 CALL                             R4 1 -1
      157 FASTCALL                         TABLE_INSERT ; [+2]
      158 GETIMPORT                        R2 K7 [table.insert]
      160 CALL                             R2 -1 0
      161 MOVE                             R3 R1
      162 GETUPVAL                         R4 0
      163 GETUPVAL                         R5 12
      164 CALL                             R4 1 -1
      165 FASTCALL                         TABLE_INSERT ; [+2]
      166 GETIMPORT                        R2 K7 [table.insert]
      168 CALL                             R2 -1 0
      169 MOVE                             R3 R1
      170 GETUPVAL                         R4 0
      171 GETUPVAL                         R5 13
      172 CALL                             R4 1 -1
      173 FASTCALL                         TABLE_INSERT ; [+2]
      174 GETIMPORT                        R2 K7 [table.insert]
      176 CALL                             R2 -1 0
      177 MOVE                             R3 R1
      178 GETUPVAL                         R4 0
      179 GETUPVAL                         R5 14
      180 DUPTABLE                         R6 K16 [{"dataModel"}]
      181 GETIMPORT                        R7 K18 [game]
      183 SETTABLEKS                       R7 R6 K15 ["dataModel"]
      185 CALL                             R4 2 -1
      186 FASTCALL                         TABLE_INSERT ; [+2]
      187 GETIMPORT                        R2 K7 [table.insert]
      189 CALL                             R2 -1 0
      190 MOVE                             R3 R1
      191 GETUPVAL                         R4 0
      192 GETUPVAL                         R5 15
      193 GETTABLEKS                       R5 R5 K4 ["Provider"]
      195 DUPTABLE                         R6 K20 [{"dockWidget"}]
      196 GETTABLEKS                       R7 R0 K19 ["dockWidget"]
      198 SETTABLEKS                       R7 R6 K19 ["dockWidget"]
      200 CALL                             R4 2 -1
      201 FASTCALL                         TABLE_INSERT ; [+2]
      202 GETIMPORT                        R2 K7 [table.insert]
      204 CALL                             R2 -1 0
      205 GETUPVAL                         R2 8
      206 GETTABLEKS                       R2 R2 K21 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      208 JUMPIFNOT                        R2 ; [+13]
      209 MOVE                             R3 R1
      210 GETUPVAL                         R4 0
      211 GETUPVAL                         R5 16
      212 DUPTABLE                         R6 K20 [{"dockWidget"}]
      213 GETTABLEKS                       R7 R0 K19 ["dockWidget"]
      215 SETTABLEKS                       R7 R6 K19 ["dockWidget"]
      217 CALL                             R4 2 -1
      218 FASTCALL                         TABLE_INSERT ; [+2]
      219 GETIMPORT                        R2 K7 [table.insert]
      221 CALL                             R2 -1 0
      222 MOVE                             R3 R1
      223 GETUPVAL                         R4 0
      224 GETUPVAL                         R5 17
      225 GETTABLEKS                       R5 R5 K4 ["Provider"]
      227 CALL                             R4 1 -1
      228 FASTCALL                         TABLE_INSERT ; [+2]
      229 GETIMPORT                        R2 K7 [table.insert]
      231 CALL                             R2 -1 0
      232 MOVE                             R3 R1
      233 GETUPVAL                         R4 0
      234 GETUPVAL                         R5 18
      235 CALL                             R4 1 -1
      236 FASTCALL                         TABLE_INSERT ; [+2]
      237 GETIMPORT                        R2 K7 [table.insert]
      239 CALL                             R2 -1 0
      240 GETUPVAL                         R2 8
      241 GETTABLEKS                       R2 R2 K22 ["FFlagPropertiesExposeContentView"]
      243 JUMPIFNOT                        R2 ; [+14]
      244 MOVE                             R3 R1
      245 GETUPVAL                         R4 0
      246 GETUPVAL                         R5 1
      247 GETTABLEKS                       R5 R5 K0 ["Components"]
      249 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      251 GETTABLEKS                       R5 R5 K23 ["PropertiesContextProvider"]
      253 CALL                             R4 1 -1
      254 FASTCALL                         TABLE_INSERT ; [+2]
      255 GETIMPORT                        R2 K7 [table.insert]
      257 CALL                             R2 -1 0
      258 GETUPVAL                         R2 8
      259 GETTABLEKS                       R2 R2 K24 ["FFlagAssistantFeedbackView"]
      261 JUMPIFNOT                        R2 ; [+10]
      262 MOVE                             R3 R1
      263 GETUPVAL                         R4 0
      264 GETUPVAL                         R5 19
      265 GETTABLEKS                       R5 R5 K4 ["Provider"]
      267 CALL                             R4 1 -1
      268 FASTCALL                         TABLE_INSERT ; [+2]
      269 GETIMPORT                        R2 K7 [table.insert]
      271 CALL                             R2 -1 0
      272 GETUPVAL                         R2 20
      273 GETTABLEKS                       R3 R0 K25 ["args"]
      275 GETTABLEKS                       R3 R3 K26 ["bridges"]
      277 CALL                             R2 1 1
      278 GETUPVAL                         R3 21
      279 GETTABLEKS                       R3 R3 K27 ["append"]
      281 MOVE                             R4 R1
      282 MOVE                             R5 R2
      283 CALL                             R3 2 0
      284 GETUPVAL                         R3 0
      285 GETUPVAL                         R4 22
      286 DUPTABLE                         R5 K29 [{"onStyleSheetChange"}]
      287 GETTABLEKS                       R6 R0 K30 ["onFoundationStyleSheetChange"]
      289 SETTABLEKS                       R6 R5 K28 ["onStyleSheetChange"]
      291 DUPTABLE                         R6 K32 [{"ContextStack"}]
      292 GETUPVAL                         R7 0
      293 GETUPVAL                         R8 23
      294 GETTABLEKS                       R8 R8 K31 ["ContextStack"]
      296 DUPTABLE                         R9 K34 [{"providers"}]
      297 SETTABLEKS                       R1 R9 K33 ["providers"]
      299 GETUPVAL                         R10 24
      300 MOVE                             R11 R0
      301 CALL                             R10 1 1
      302 CALL                             R7 3 1
      303 SETTABLEKS                       R7 R6 K31 ["ContextStack"]
      305 CALL                             R3 3 -1
      306 RETURN                           R3 -1

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
      179 GETTABLEKS                       R19 R7 K12 ["Components"]
      181 GETTABLEKS                       R19 R19 K30 ["FoundationProviderAdapter"]
      183 GETTABLEKS                       R20 R1 K12 ["Components"]
      185 GETTABLEKS                       R20 R20 K13 ["Contexts"]
      187 GETTABLEKS                       R20 R20 K31 ["FeedbackContext"]
      189 GETTABLEKS                       R21 R1 K12 ["Components"]
      191 GETTABLEKS                       R21 R21 K13 ["Contexts"]
      193 GETTABLEKS                       R21 R21 K32 ["McpAuthorizerManagerContext"]
      195 GETTABLEKS                       R22 R1 K12 ["Components"]
      197 GETTABLEKS                       R22 R22 K13 ["Contexts"]
      199 GETTABLEKS                       R22 R22 K33 ["ModelQualityContext"]
      201 GETTABLEKS                       R23 R1 K12 ["Components"]
      203 GETTABLEKS                       R23 R23 K13 ["Contexts"]
      205 GETTABLEKS                       R23 R23 K34 ["PersistedIntegrationContext"]
      207 GETTABLEKS                       R24 R1 K12 ["Components"]
      209 GETTABLEKS                       R24 R24 K13 ["Contexts"]
      211 GETTABLEKS                       R24 R24 K35 ["PersistedSettingsContext"]
      213 GETTABLEKS                       R25 R1 K36 ["Resources"]
      215 GETTABLEKS                       R25 R25 K37 ["Localization"]
      217 GETTABLEKS                       R25 R25 K38 ["Translator"]
      219 GETTABLEKS                       R26 R1 K39 ["FlagUtils"]
      221 GETTABLEKS                       R26 R26 K40 ["getIsCreditMeteringEnabled"]
      223 GETTABLEKS                       R27 R1 K12 ["Components"]
      225 GETTABLEKS                       R27 R27 K41 ["Hooks"]
      227 GETTABLEKS                       R27 R27 K42 ["useBridges"]
      229 GETTABLEKS                       R28 R3 K43 ["createElement"]
      231 DUPCLOSURE                       R29 K44 [PROTO_1]
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R28
      237 CAPTURE                          VAL R17
      238 DUPCLOSURE                       R30 K45 [PROTO_2]
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R1
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R26
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R8
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R22
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R20
      259 CAPTURE                          VAL R27
      260 CAPTURE                          VAL R2
      261 CAPTURE                          VAL R19
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R29
      264 RETURN                           R30 1
