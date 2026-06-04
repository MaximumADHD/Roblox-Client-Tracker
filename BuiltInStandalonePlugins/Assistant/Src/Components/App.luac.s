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
       54 GETUPVAL                         R2 8
       55 CALL                             R2 0 1
       56 JUMPIFNOT                        R2 ; [+10]
       57 MOVE                             R3 R1
       58 GETUPVAL                         R4 0
       59 GETUPVAL                         R5 9
       60 GETTABLEKS                       R5 R5 K4 ["Provider"]
       62 CALL                             R4 1 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R2 K7 [table.insert]
       66 CALL                             R2 -1 0
       67 MOVE                             R3 R1
       68 GETUPVAL                         R4 0
       69 GETUPVAL                         R5 1
       70 GETTABLEKS                       R5 R5 K0 ["Components"]
       72 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       74 GETTABLEKS                       R5 R5 K8 ["SettingsContextProvider"]
       76 CALL                             R4 1 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R2 K7 [table.insert]
       80 CALL                             R2 -1 0
       81 GETUPVAL                         R2 10
       82 CALL                             R2 0 1
       83 JUMPIFNOT                        R2 ; [+14]
       84 MOVE                             R3 R1
       85 GETUPVAL                         R4 0
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K0 ["Components"]
       89 GETTABLEKS                       R5 R5 K1 ["Contexts"]
       91 GETTABLEKS                       R5 R5 K9 ["EvalContextProvider"]
       93 CALL                             R4 1 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R2 K7 [table.insert]
       97 CALL                             R2 -1 0
       98 MOVE                             R3 R1
       99 GETUPVAL                         R4 0
      100 GETUPVAL                         R5 1
      101 GETTABLEKS                       R5 R5 K0 ["Components"]
      103 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      105 GETTABLEKS                       R5 R5 K10 ["LLMProviderSelectionContextProvider"]
      107 CALL                             R4 1 -1
      108 FASTCALL                         TABLE_INSERT ; [+2]
      109 GETIMPORT                        R2 K7 [table.insert]
      111 CALL                             R2 -1 0
      112 GETUPVAL                         R2 11
      113 CALL                             R2 0 1
      114 JUMPIFNOT                        R2 ; [+29]
      115 GETUPVAL                         R3 1
      116 GETTABLEKS                       R3 R3 K0 ["Components"]
      118 GETTABLEKS                       R3 R3 K1 ["Contexts"]
      120 GETTABLEKS                       R3 R3 K11 ["PersistentPlanContext"]
      122 FASTCALL2K                       ASSERT R3 K12 ; [+4]
      124 LOADK                            R4 K12 ["PersistentPlanContext is not defined"]
      125 GETIMPORT                        R2 K14 [assert]
      127 CALL                             R2 2 0
      128 MOVE                             R3 R1
      129 GETUPVAL                         R4 0
      130 GETUPVAL                         R5 1
      131 GETTABLEKS                       R5 R5 K0 ["Components"]
      133 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      135 GETTABLEKS                       R5 R5 K11 ["PersistentPlanContext"]
      137 GETTABLEKS                       R5 R5 K4 ["Provider"]
      139 CALL                             R4 1 -1
      140 FASTCALL                         TABLE_INSERT ; [+2]
      141 GETIMPORT                        R2 K7 [table.insert]
      143 CALL                             R2 -1 0
      144 GETUPVAL                         R2 12
      145 CALL                             R2 0 1
      146 JUMPIFNOT                        R2 ; [+15]
      147 MOVE                             R3 R1
      148 GETUPVAL                         R4 0
      149 GETUPVAL                         R5 1
      150 GETTABLEKS                       R5 R5 K0 ["Components"]
      152 GETTABLEKS                       R5 R5 K1 ["Contexts"]
      154 GETTABLEKS                       R5 R5 K15 ["TestLLMPackageContextProvider"]
      156 CALL                             R4 1 -1
      157 FASTCALL                         TABLE_INSERT ; [+2]
      158 GETIMPORT                        R2 K7 [table.insert]
      160 CALL                             R2 -1 0
      161 JUMP                             ; [+8]
      162 MOVE                             R3 R1
      163 GETUPVAL                         R4 0
      164 GETUPVAL                         R5 13
      165 CALL                             R4 1 -1
      166 FASTCALL                         TABLE_INSERT ; [+2]
      167 GETIMPORT                        R2 K7 [table.insert]
      169 CALL                             R2 -1 0
      170 MOVE                             R3 R1
      171 GETUPVAL                         R4 0
      172 GETUPVAL                         R5 14
      173 CALL                             R4 1 -1
      174 FASTCALL                         TABLE_INSERT ; [+2]
      175 GETIMPORT                        R2 K7 [table.insert]
      177 CALL                             R2 -1 0
      178 MOVE                             R3 R1
      179 GETUPVAL                         R4 0
      180 GETUPVAL                         R5 15
      181 DUPTABLE                         R6 K17 [{"dataModel"}]
      182 GETIMPORT                        R7 K19 [game]
      184 SETTABLEKS                       R7 R6 K16 ["dataModel"]
      186 CALL                             R4 2 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R2 K7 [table.insert]
      190 CALL                             R2 -1 0
      191 MOVE                             R3 R1
      192 GETUPVAL                         R4 0
      193 GETUPVAL                         R5 16
      194 GETTABLEKS                       R5 R5 K4 ["Provider"]
      196 DUPTABLE                         R6 K21 [{"dockWidget"}]
      197 GETTABLEKS                       R7 R0 K20 ["dockWidget"]
      199 SETTABLEKS                       R7 R6 K20 ["dockWidget"]
      201 CALL                             R4 2 -1
      202 FASTCALL                         TABLE_INSERT ; [+2]
      203 GETIMPORT                        R2 K7 [table.insert]
      205 CALL                             R2 -1 0
      206 MOVE                             R3 R1
      207 GETUPVAL                         R4 0
      208 GETUPVAL                         R5 17
      209 GETTABLEKS                       R5 R5 K4 ["Provider"]
      211 CALL                             R4 1 -1
      212 FASTCALL                         TABLE_INSERT ; [+2]
      213 GETIMPORT                        R2 K7 [table.insert]
      215 CALL                             R2 -1 0
      216 MOVE                             R3 R1
      217 GETUPVAL                         R4 0
      218 GETUPVAL                         R5 18
      219 CALL                             R4 1 -1
      220 FASTCALL                         TABLE_INSERT ; [+2]
      221 GETIMPORT                        R2 K7 [table.insert]
      223 CALL                             R2 -1 0
      224 GETUPVAL                         R2 19
      225 CALL                             R2 0 1
      226 JUMPIFNOT                        R2 ; [+10]
      227 MOVE                             R3 R1
      228 GETUPVAL                         R4 0
      229 GETUPVAL                         R5 20
      230 GETTABLEKS                       R5 R5 K4 ["Provider"]
      232 CALL                             R4 1 -1
      233 FASTCALL                         TABLE_INSERT ; [+2]
      234 GETIMPORT                        R2 K7 [table.insert]
      236 CALL                             R2 -1 0
      237 GETUPVAL                         R2 0
      238 GETUPVAL                         R3 21
      239 DUPTABLE                         R4 K23 [{"onStyleSheetChange"}]
      240 GETTABLEKS                       R5 R0 K24 ["onFoundationStyleSheetChange"]
      242 SETTABLEKS                       R5 R4 K22 ["onStyleSheetChange"]
      244 DUPTABLE                         R5 K26 [{"ContextStack"}]
      245 GETUPVAL                         R6 0
      246 GETUPVAL                         R7 22
      247 GETTABLEKS                       R7 R7 K25 ["ContextStack"]
      249 DUPTABLE                         R8 K28 [{"providers"}]
      250 SETTABLEKS                       R1 R8 K27 ["providers"]
      252 GETUPVAL                         R9 23
      253 MOVE                             R10 R0
      254 CALL                             R9 1 1
      255 CALL                             R6 3 1
      256 SETTABLEKS                       R6 R5 K25 ["ContextStack"]
      258 CALL                             R2 3 -1
      259 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["StudioExternalServerContextProvider"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["StudioFoundation"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Components"]
       52 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K15 ["StudioInputStateContextProvider"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K11 ["Components"]
       63 GETTABLEKS                       R8 R8 K12 ["Contexts"]
       65 GETTABLEKS                       R8 R8 K16 ["StudioLLM"]
       67 GETTABLEKS                       R8 R8 K17 ["StudioLLMPackageContextProvider"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K10 ["Src"]
       74 GETTABLEKS                       R9 R9 K11 ["Components"]
       76 GETTABLEKS                       R9 R9 K12 ["Contexts"]
       78 GETTABLEKS                       R9 R9 K18 ["StudioMcpClientContextProvider"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K10 ["Src"]
       85 GETTABLEKS                       R10 R10 K11 ["Components"]
       87 GETTABLEKS                       R10 R10 K12 ["Contexts"]
       89 GETTABLEKS                       R10 R10 K19 ["StudioOptionsContextProvider"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R11 R0 K10 ["Src"]
       96 GETTABLEKS                       R11 R11 K11 ["Components"]
       98 GETTABLEKS                       R11 R11 K12 ["Contexts"]
      100 GETTABLEKS                       R11 R11 K20 ["StudioPopoutWidgetContextProvider"]
      102 CALL                             R10 1 1
      103 GETIMPORT                        R11 K5 [require]
      105 GETTABLEKS                       R12 R0 K10 ["Src"]
      107 GETTABLEKS                       R12 R12 K11 ["Components"]
      109 GETTABLEKS                       R12 R12 K12 ["Contexts"]
      111 GETTABLEKS                       R12 R12 K21 ["StudioSessionIdContextProvider"]
      113 CALL                             R11 1 1
      114 GETIMPORT                        R12 K5 [require]
      116 GETTABLEKS                       R13 R0 K10 ["Src"]
      118 GETTABLEKS                       R13 R13 K22 ["Util"]
      120 GETTABLEKS                       R13 R13 K23 ["StudioWindowInput"]
      122 CALL                             R12 1 1
      123 GETIMPORT                        R13 K5 [require]
      125 GETTABLEKS                       R14 R0 K10 ["Src"]
      127 GETTABLEKS                       R14 R14 K11 ["Components"]
      129 GETTABLEKS                       R14 R14 K24 ["WidgetTrackingMainView"]
      131 CALL                             R13 1 1
      132 GETTABLEKS                       R14 R1 K25 ["Flags"]
      134 GETTABLEKS                       R14 R14 K26 ["Shared"]
      136 GETTABLEKS                       R14 R14 K27 ["FFlagAssistantFeedbackView"]
      138 GETIMPORT                        R15 K5 [require]
      140 GETTABLEKS                       R16 R0 K10 ["Src"]
      142 GETTABLEKS                       R16 R16 K25 ["Flags"]
      144 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantQualityChangeWidgetTitle"]
      146 CALL                             R15 1 1
      147 GETTABLEKS                       R16 R1 K25 ["Flags"]
      149 GETTABLEKS                       R16 R16 K26 ["Shared"]
      151 GETTABLEKS                       R16 R16 K29 ["FFlagAssistantPlanMode"]
      153 GETTABLEKS                       R17 R1 K25 ["Flags"]
      155 GETTABLEKS                       R17 R17 K26 ["Shared"]
      157 GETTABLEKS                       R17 R17 K30 ["FFlagExternalMCPUI"]
      159 GETTABLEKS                       R18 R1 K25 ["Flags"]
      161 GETTABLEKS                       R18 R18 K26 ["Shared"]
      163 GETTABLEKS                       R18 R18 K31 ["FFlagAssistantEval"]
      165 GETTABLEKS                       R19 R1 K25 ["Flags"]
      167 GETTABLEKS                       R19 R19 K26 ["Shared"]
      169 GETTABLEKS                       R19 R19 K32 ["getAssistantModeEnabled"]
      171 GETTABLEKS                       R20 R1 K25 ["Flags"]
      173 GETTABLEKS                       R20 R20 K26 ["Shared"]
      175 GETTABLEKS                       R20 R20 K33 ["FFlagDebugEnableTestLLMAdapter"]
      177 GETTABLEKS                       R21 R5 K11 ["Components"]
      179 GETTABLEKS                       R21 R21 K34 ["FoundationProviderAdapter"]
      181 GETTABLEKS                       R22 R1 K11 ["Components"]
      183 GETTABLEKS                       R22 R22 K12 ["Contexts"]
      185 GETTABLEKS                       R22 R22 K35 ["FeedbackContext"]
      187 GETTABLEKS                       R23 R1 K11 ["Components"]
      189 GETTABLEKS                       R23 R23 K12 ["Contexts"]
      191 GETTABLEKS                       R23 R23 K36 ["ModelQualityContext"]
      193 GETTABLEKS                       R24 R1 K11 ["Components"]
      195 GETTABLEKS                       R24 R24 K12 ["Contexts"]
      197 GETTABLEKS                       R24 R24 K37 ["McpAuthorizerManagerContext"]
      199 GETTABLEKS                       R25 R1 K11 ["Components"]
      201 GETTABLEKS                       R25 R25 K12 ["Contexts"]
      203 GETTABLEKS                       R25 R25 K38 ["PersistedIntegrationContext"]
      205 GETTABLEKS                       R26 R1 K11 ["Components"]
      207 GETTABLEKS                       R26 R26 K12 ["Contexts"]
      209 GETTABLEKS                       R26 R26 K39 ["PersistedSettingsContext"]
      211 GETTABLEKS                       R27 R1 K40 ["Resources"]
      213 GETTABLEKS                       R27 R27 K41 ["Localization"]
      215 GETTABLEKS                       R27 R27 K42 ["Translator"]
      217 GETTABLEKS                       R28 R2 K43 ["createElement"]
      219 DUPCLOSURE                       R29 K44 [PROTO_1]
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R13
      226 DUPCLOSURE                       R30 K45 [PROTO_2]
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R11
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R16
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R7
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R12
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R14
      247 CAPTURE                          VAL R22
      248 CAPTURE                          VAL R21
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R29
      251 RETURN                           R30 1
