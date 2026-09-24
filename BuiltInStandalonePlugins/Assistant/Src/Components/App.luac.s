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
       38 DUPTABLE                         R6 K6 [{"externalServerController"}]
       39 GETTABLEKS                       R7 R0 K7 ["args"]
       41 GETTABLEKS                       R7 R7 K5 ["externalServerController"]
       43 SETTABLEKS                       R7 R6 K5 ["externalServerController"]
       45 CALL                             R4 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R2 K10 [table.insert]
       49 CALL                             R2 -1 0
       50 MOVE                             R3 R1
       51 GETUPVAL                         R4 0
       52 GETUPVAL                         R5 6
       53 CALL                             R4 1 -1
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R2 K10 [table.insert]
       57 CALL                             R2 -1 0
       58 MOVE                             R3 R1
       59 GETUPVAL                         R4 0
       60 GETUPVAL                         R5 7
       61 GETTABLEKS                       R5 R5 K4 ["Provider"]
       63 CALL                             R4 1 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R2 K10 [table.insert]
       67 CALL                             R2 -1 0
       68 MOVE                             R3 R1
       69 GETUPVAL                         R4 0
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K0 ["Components"]
       73 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       75 GETTABLEKS                       R5 R5 K11 ["SettingsContextProvider"]
       77 CALL                             R4 1 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R2 K10 [table.insert]
       81 CALL                             R2 -1 0
       82 GETUPVAL                         R2 8
       83 GETTABLEKS                       R2 R2 K12 ["FFlagAssistantEval"]
       85 JUMPIFNOT                        R2 ; [+14]
       86 MOVE                             R3 R1
       87 GETUPVAL                         R4 0
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R5 R5 K0 ["Components"]
       91 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       93 GETTABLEKS                       R5 R5 K13 ["EvalContextProvider"]
       95 CALL                             R4 1 -1
       96 FASTCALL                         TABLE_INSERT ; [+2]
       97 GETIMPORT                        R2 K10 [table.insert]
       99 CALL                             R2 -1 0
      100 MOVE                             R3 R1
      101 GETUPVAL                         R4 0
      102 GETUPVAL                         R5 1
      103 GETTABLEKS                       R5 R5 K0 ["Components"]
      105 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      107 GETTABLEKS                       R5 R5 K14 ["LLMProviderSelectionContextProvider"]
      109 CALL                             R4 1 -1
      110 FASTCALL                         TABLE_INSERT ; [+2]
      111 GETIMPORT                        R2 K10 [table.insert]
      113 CALL                             R2 -1 0
      114 MOVE                             R3 R1
      115 GETUPVAL                         R4 0
      116 GETUPVAL                         R5 1
      117 GETTABLEKS                       R5 R5 K0 ["Components"]
      119 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      121 GETTABLEKS                       R5 R5 K15 ["PersistentPlanContext"]
      123 GETTABLEKS                       R5 R5 K4 ["Provider"]
      125 CALL                             R4 1 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R2 K10 [table.insert]
      129 CALL                             R2 -1 0
      130 GETUPVAL                         R2 9
      131 CALL                             R2 0 1
      132 JUMPIFNOT                        R2 ; [+8]
      133 MOVE                             R3 R1
      134 GETUPVAL                         R4 0
      135 GETUPVAL                         R5 10
      136 CALL                             R4 1 -1
      137 FASTCALL                         TABLE_INSERT ; [+2]
      138 GETIMPORT                        R2 K10 [table.insert]
      140 CALL                             R2 -1 0
      141 GETUPVAL                         R2 8
      142 GETTABLEKS                       R2 R2 K16 ["FFlagDebugEnableTestLLMAdapter"]
      144 JUMPIFNOT                        R2 ; [+15]
      145 MOVE                             R3 R1
      146 GETUPVAL                         R4 0
      147 GETUPVAL                         R5 1
      148 GETTABLEKS                       R5 R5 K0 ["Components"]
      150 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      152 GETTABLEKS                       R5 R5 K17 ["TestLLMPackageContextProvider"]
      154 CALL                             R4 1 -1
      155 FASTCALL                         TABLE_INSERT ; [+2]
      156 GETIMPORT                        R2 K10 [table.insert]
      158 CALL                             R2 -1 0
      159 JUMP                             ; [+8]
      160 MOVE                             R3 R1
      161 GETUPVAL                         R4 0
      162 GETUPVAL                         R5 11
      163 CALL                             R4 1 -1
      164 FASTCALL                         TABLE_INSERT ; [+2]
      165 GETIMPORT                        R2 K10 [table.insert]
      167 CALL                             R2 -1 0
      168 MOVE                             R3 R1
      169 GETUPVAL                         R4 0
      170 GETUPVAL                         R5 12
      171 CALL                             R4 1 -1
      172 FASTCALL                         TABLE_INSERT ; [+2]
      173 GETIMPORT                        R2 K10 [table.insert]
      175 CALL                             R2 -1 0
      176 MOVE                             R3 R1
      177 GETUPVAL                         R4 0
      178 GETUPVAL                         R5 13
      179 CALL                             R4 1 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R2 K10 [table.insert]
      183 CALL                             R2 -1 0
      184 MOVE                             R3 R1
      185 GETUPVAL                         R4 0
      186 GETUPVAL                         R5 14
      187 CALL                             R4 1 -1
      188 FASTCALL                         TABLE_INSERT ; [+2]
      189 GETIMPORT                        R2 K10 [table.insert]
      191 CALL                             R2 -1 0
      192 MOVE                             R3 R1
      193 GETUPVAL                         R4 0
      194 GETUPVAL                         R5 15
      195 GETTABLEKS                       R5 R5 K4 ["Provider"]
      197 DUPTABLE                         R6 K19 [{"dockWidget"}]
      198 GETTABLEKS                       R7 R0 K18 ["dockWidget"]
      200 SETTABLEKS                       R7 R6 K18 ["dockWidget"]
      202 CALL                             R4 2 -1
      203 FASTCALL                         TABLE_INSERT ; [+2]
      204 GETIMPORT                        R2 K10 [table.insert]
      206 CALL                             R2 -1 0
      207 GETUPVAL                         R2 8
      208 GETTABLEKS                       R2 R2 K20 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
      210 JUMPIFNOT                        R2 ; [+13]
      211 MOVE                             R3 R1
      212 GETUPVAL                         R4 0
      213 GETUPVAL                         R5 16
      214 DUPTABLE                         R6 K19 [{"dockWidget"}]
      215 GETTABLEKS                       R7 R0 K18 ["dockWidget"]
      217 SETTABLEKS                       R7 R6 K18 ["dockWidget"]
      219 CALL                             R4 2 -1
      220 FASTCALL                         TABLE_INSERT ; [+2]
      221 GETIMPORT                        R2 K10 [table.insert]
      223 CALL                             R2 -1 0
      224 MOVE                             R3 R1
      225 GETUPVAL                         R4 0
      226 GETUPVAL                         R5 17
      227 GETTABLEKS                       R5 R5 K4 ["Provider"]
      229 CALL                             R4 1 -1
      230 FASTCALL                         TABLE_INSERT ; [+2]
      231 GETIMPORT                        R2 K10 [table.insert]
      233 CALL                             R2 -1 0
      234 MOVE                             R3 R1
      235 GETUPVAL                         R4 0
      236 GETUPVAL                         R5 18
      237 CALL                             R4 1 -1
      238 FASTCALL                         TABLE_INSERT ; [+2]
      239 GETIMPORT                        R2 K10 [table.insert]
      241 CALL                             R2 -1 0
      242 GETUPVAL                         R2 8
      243 GETTABLEKS                       R2 R2 K21 ["FFlagPropertiesExposeContentView"]
      245 JUMPIFNOT                        R2 ; [+14]
      246 MOVE                             R3 R1
      247 GETUPVAL                         R4 0
      248 GETUPVAL                         R5 1
      249 GETTABLEKS                       R5 R5 K0 ["Components"]
      251 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      253 GETTABLEKS                       R5 R5 K22 ["PropertiesContextProvider"]
      255 CALL                             R4 1 -1
      256 FASTCALL                         TABLE_INSERT ; [+2]
      257 GETIMPORT                        R2 K10 [table.insert]
      259 CALL                             R2 -1 0
      260 GETUPVAL                         R2 8
      261 GETTABLEKS                       R2 R2 K23 ["FFlagAssistantFeedbackView"]
      263 JUMPIFNOT                        R2 ; [+10]
      264 MOVE                             R3 R1
      265 GETUPVAL                         R4 0
      266 GETUPVAL                         R5 19
      267 GETTABLEKS                       R5 R5 K4 ["Provider"]
      269 CALL                             R4 1 -1
      270 FASTCALL                         TABLE_INSERT ; [+2]
      271 GETIMPORT                        R2 K10 [table.insert]
      273 CALL                             R2 -1 0
      274 GETUPVAL                         R2 20
      275 GETTABLEKS                       R3 R0 K7 ["args"]
      277 GETTABLEKS                       R3 R3 K24 ["bridges"]
      279 CALL                             R2 1 1
      280 GETUPVAL                         R3 21
      281 GETTABLEKS                       R3 R3 K25 ["append"]
      283 MOVE                             R4 R1
      284 MOVE                             R5 R2
      285 CALL                             R3 2 0
      286 GETUPVAL                         R3 0
      287 GETUPVAL                         R4 22
      288 DUPTABLE                         R5 K27 [{"onStyleSheetChange"}]
      289 GETTABLEKS                       R6 R0 K28 ["onFoundationStyleSheetChange"]
      291 SETTABLEKS                       R6 R5 K26 ["onStyleSheetChange"]
      293 DUPTABLE                         R6 K30 [{"ContextStack"}]
      294 GETUPVAL                         R7 0
      295 GETUPVAL                         R8 23
      296 GETTABLEKS                       R8 R8 K29 ["ContextStack"]
      298 DUPTABLE                         R9 K32 [{"providers"}]
      299 SETTABLEKS                       R1 R9 K31 ["providers"]
      301 GETUPVAL                         R10 24
      302 MOVE                             R11 R0
      303 CALL                             R10 1 1
      304 CALL                             R7 3 1
      305 SETTABLEKS                       R7 R6 K29 ["ContextStack"]
      307 CALL                             R3 3 -1
      308 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Host"]
       27 GETTABLEKS                       R4 R4 K11 ["ExternalServerController"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Components"]
       50 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K16 ["StudioCreditMeteringContextProvider"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K14 ["Components"]
       61 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       63 GETTABLEKS                       R8 R8 K17 ["StudioExternalServerContextProvider"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Packages"]
       70 GETTABLEKS                       R9 R9 K18 ["StudioFoundation"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K9 ["Src"]
       77 GETTABLEKS                       R10 R10 K14 ["Components"]
       79 GETTABLEKS                       R10 R10 K15 ["Contexts"]
       81 GETTABLEKS                       R10 R10 K19 ["StudioHarnessDepsContextProvider"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K9 ["Src"]
       88 GETTABLEKS                       R11 R11 K14 ["Components"]
       90 GETTABLEKS                       R11 R11 K15 ["Contexts"]
       92 GETTABLEKS                       R11 R11 K20 ["StudioInputStateContextProvider"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K9 ["Src"]
       99 GETTABLEKS                       R12 R12 K14 ["Components"]
      101 GETTABLEKS                       R12 R12 K15 ["Contexts"]
      103 GETTABLEKS                       R12 R12 K21 ["StudioLLM"]
      105 GETTABLEKS                       R12 R12 K22 ["StudioLLMPackageContextProvider"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K9 ["Src"]
      112 GETTABLEKS                       R13 R13 K14 ["Components"]
      114 GETTABLEKS                       R13 R13 K15 ["Contexts"]
      116 GETTABLEKS                       R13 R13 K23 ["StudioMcpClientContextProvider"]
      118 CALL                             R12 1 1
      119 GETIMPORT                        R13 K5 [require]
      121 GETTABLEKS                       R14 R0 K9 ["Src"]
      123 GETTABLEKS                       R14 R14 K14 ["Components"]
      125 GETTABLEKS                       R14 R14 K15 ["Contexts"]
      127 GETTABLEKS                       R14 R14 K24 ["StudioOptionsContextProvider"]
      129 CALL                             R13 1 1
      130 GETIMPORT                        R14 K5 [require]
      132 GETTABLEKS                       R15 R0 K9 ["Src"]
      134 GETTABLEKS                       R15 R15 K14 ["Components"]
      136 GETTABLEKS                       R15 R15 K15 ["Contexts"]
      138 GETTABLEKS                       R15 R15 K25 ["StudioPopoutWidgetContextProvider"]
      140 CALL                             R14 1 1
      141 GETIMPORT                        R15 K5 [require]
      143 GETTABLEKS                       R16 R0 K9 ["Src"]
      145 GETTABLEKS                       R16 R16 K14 ["Components"]
      147 GETTABLEKS                       R16 R16 K15 ["Contexts"]
      149 GETTABLEKS                       R16 R16 K26 ["StudioSessionIdContextProvider"]
      151 CALL                             R15 1 1
      152 GETIMPORT                        R16 K5 [require]
      154 GETTABLEKS                       R17 R0 K9 ["Src"]
      156 GETTABLEKS                       R17 R17 K14 ["Components"]
      158 GETTABLEKS                       R17 R17 K15 ["Contexts"]
      160 GETTABLEKS                       R17 R17 K27 ["StudioWidgetVisibilityContextProvider"]
      162 CALL                             R16 1 1
      163 GETIMPORT                        R17 K5 [require]
      165 GETTABLEKS                       R18 R0 K9 ["Src"]
      167 GETTABLEKS                       R18 R18 K28 ["Util"]
      169 GETTABLEKS                       R18 R18 K29 ["StudioWindowInput"]
      171 CALL                             R17 1 1
      172 GETIMPORT                        R18 K5 [require]
      174 GETTABLEKS                       R19 R0 K9 ["Src"]
      176 GETTABLEKS                       R19 R19 K14 ["Components"]
      178 GETTABLEKS                       R19 R19 K30 ["WidgetTrackingMainView"]
      180 CALL                             R18 1 1
      181 GETIMPORT                        R19 K5 [require]
      183 GETTABLEKS                       R20 R0 K9 ["Src"]
      185 GETTABLEKS                       R20 R20 K31 ["Flags"]
      187 CALL                             R19 1 1
      188 GETTABLEKS                       R20 R8 K14 ["Components"]
      190 GETTABLEKS                       R20 R20 K32 ["FoundationProviderAdapter"]
      192 GETTABLEKS                       R21 R1 K14 ["Components"]
      194 GETTABLEKS                       R21 R21 K15 ["Contexts"]
      196 GETTABLEKS                       R21 R21 K33 ["FeedbackContext"]
      198 GETTABLEKS                       R22 R1 K14 ["Components"]
      200 GETTABLEKS                       R22 R22 K15 ["Contexts"]
      202 GETTABLEKS                       R22 R22 K34 ["McpAuthorizerManagerContext"]
      204 GETTABLEKS                       R23 R1 K14 ["Components"]
      206 GETTABLEKS                       R23 R23 K15 ["Contexts"]
      208 GETTABLEKS                       R23 R23 K35 ["ModelQualityContext"]
      210 GETTABLEKS                       R24 R1 K14 ["Components"]
      212 GETTABLEKS                       R24 R24 K15 ["Contexts"]
      214 GETTABLEKS                       R24 R24 K36 ["PersistedIntegrationContext"]
      216 GETTABLEKS                       R25 R1 K14 ["Components"]
      218 GETTABLEKS                       R25 R25 K15 ["Contexts"]
      220 GETTABLEKS                       R25 R25 K37 ["PersistedSettingsContext"]
      222 GETTABLEKS                       R26 R1 K38 ["Resources"]
      224 GETTABLEKS                       R26 R26 K39 ["Localization"]
      226 GETTABLEKS                       R26 R26 K40 ["Translator"]
      228 GETTABLEKS                       R27 R1 K41 ["FlagUtils"]
      230 GETTABLEKS                       R27 R27 K42 ["getIsCreditMeteringEnabled"]
      232 GETTABLEKS                       R28 R1 K14 ["Components"]
      234 GETTABLEKS                       R28 R28 K43 ["Hooks"]
      236 GETTABLEKS                       R28 R28 K44 ["useBridges"]
      238 GETTABLEKS                       R29 R4 K45 ["createElement"]
      240 DUPCLOSURE                       R30 K46 [PROTO_1]
      241 CAPTURE                          VAL R19
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R18
      247 DUPCLOSURE                       R31 K47 [PROTO_2]
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R1
      250 CAPTURE                          VAL R15
      251 CAPTURE                          VAL R22
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R7
      254 CAPTURE                          VAL R12
      255 CAPTURE                          VAL R25
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R6
      259 CAPTURE                          VAL R11
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R13
      262 CAPTURE                          VAL R10
      263 CAPTURE                          VAL R17
      264 CAPTURE                          VAL R16
      265 CAPTURE                          VAL R23
      266 CAPTURE                          VAL R14
      267 CAPTURE                          VAL R21
      268 CAPTURE                          VAL R28
      269 CAPTURE                          VAL R2
      270 CAPTURE                          VAL R20
      271 CAPTURE                          VAL R5
      272 CAPTURE                          VAL R30
      273 RETURN                           R31 1
