PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["ModelQuality"]
        4 GETTABLEKS                       R2 R3 K1 ["High"]
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
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R1 R2 K6 ["setDockWidgetTitle"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["useContext"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["Context"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K2 ["modelQuality"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["useEffect"]
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
       28 GETUPVAL                         R4 5
       29 GETTABLEKS                       R3 R4 K6 ["WidgetTrackingMainView"]
       31 DUPTABLE                         R4 K8 [{"textBoxRef"}]
       32 GETTABLEKS                       R5 R0 K7 ["textBoxRef"]
       34 SETTABLEKS                       R5 R4 K7 ["textBoxRef"]
       36 CALL                             R2 2 1
       37 SETTABLEKS                       R2 R1 K4 ["MainView"]
       39 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 5
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K0 ["Components"]
        6 GETTABLEKS                       R4 R5 K1 ["Contexts"]
        8 GETTABLEKS                       R3 R4 K2 ["ConversationContextProvider"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K0 ["Components"]
       15 GETTABLEKS                       R5 R6 K1 ["Contexts"]
       17 GETTABLEKS                       R4 R5 K3 ["ThreadIdContextProvider"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETUPVAL                         R5 2
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K4 ["Provider"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 0
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R7 R8 K4 ["Provider"]
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
       59 GETUPVAL                         R6 9
       60 GETTABLEKS                       R5 R6 K4 ["Provider"]
       62 CALL                             R4 1 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R2 K7 [table.insert]
       66 CALL                             R2 -1 0
       67 MOVE                             R3 R1
       68 GETUPVAL                         R4 0
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R7 R8 K0 ["Components"]
       72 GETTABLEKS                       R6 R7 K1 ["Contexts"]
       74 GETTABLEKS                       R5 R6 K8 ["SettingsContextProvider"]
       76 CALL                             R4 1 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R2 K7 [table.insert]
       80 CALL                             R2 -1 0
       81 MOVE                             R3 R1
       82 GETUPVAL                         R4 0
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R7 R8 K0 ["Components"]
       86 GETTABLEKS                       R6 R7 K1 ["Contexts"]
       88 GETTABLEKS                       R5 R6 K9 ["LLMProviderSelectionContextProvider"]
       90 CALL                             R4 1 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R2 K7 [table.insert]
       94 CALL                             R2 -1 0
       95 GETUPVAL                         R2 10
       96 CALL                             R2 0 1
       97 JUMPIFNOT                        R2 ; [+29]
       98 GETUPVAL                         R6 1
       99 GETTABLEKS                       R5 R6 K0 ["Components"]
      101 GETTABLEKS                       R4 R5 K1 ["Contexts"]
      103 GETTABLEKS                       R3 R4 K10 ["PersistentPlanContext"]
      105 FASTCALL2K                       ASSERT R3 K11 ; [+4]
      107 LOADK                            R4 K11 ["PersistentPlanContext is not defined"]
      108 GETIMPORT                        R2 K13 [assert]
      110 CALL                             R2 2 0
      111 MOVE                             R3 R1
      112 GETUPVAL                         R4 0
      113 GETUPVAL                         R9 1
      114 GETTABLEKS                       R8 R9 K0 ["Components"]
      116 GETTABLEKS                       R7 R8 K1 ["Contexts"]
      118 GETTABLEKS                       R6 R7 K10 ["PersistentPlanContext"]
      120 GETTABLEKS                       R5 R6 K4 ["Provider"]
      122 CALL                             R4 1 -1
      123 FASTCALL                         TABLE_INSERT ; [+2]
      124 GETIMPORT                        R2 K7 [table.insert]
      126 CALL                             R2 -1 0
      127 MOVE                             R3 R1
      128 GETUPVAL                         R4 0
      129 GETUPVAL                         R5 11
      130 CALL                             R4 1 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R2 K7 [table.insert]
      134 CALL                             R2 -1 0
      135 MOVE                             R3 R1
      136 GETUPVAL                         R4 0
      137 GETUPVAL                         R5 12
      138 CALL                             R4 1 -1
      139 FASTCALL                         TABLE_INSERT ; [+2]
      140 GETIMPORT                        R2 K7 [table.insert]
      142 CALL                             R2 -1 0
      143 MOVE                             R3 R1
      144 GETUPVAL                         R4 0
      145 GETUPVAL                         R5 13
      146 DUPTABLE                         R6 K15 [{"dataModel"}]
      147 GETIMPORT                        R7 K17 [game]
      149 SETTABLEKS                       R7 R6 K14 ["dataModel"]
      151 CALL                             R4 2 -1
      152 FASTCALL                         TABLE_INSERT ; [+2]
      153 GETIMPORT                        R2 K7 [table.insert]
      155 CALL                             R2 -1 0
      156 MOVE                             R3 R1
      157 GETUPVAL                         R4 0
      158 GETUPVAL                         R6 14
      159 GETTABLEKS                       R5 R6 K4 ["Provider"]
      161 DUPTABLE                         R6 K19 [{"dockWidget"}]
      162 GETTABLEKS                       R7 R0 K18 ["dockWidget"]
      164 SETTABLEKS                       R7 R6 K18 ["dockWidget"]
      166 CALL                             R4 2 -1
      167 FASTCALL                         TABLE_INSERT ; [+2]
      168 GETIMPORT                        R2 K7 [table.insert]
      170 CALL                             R2 -1 0
      171 MOVE                             R3 R1
      172 GETUPVAL                         R4 0
      173 GETUPVAL                         R6 15
      174 GETTABLEKS                       R5 R6 K4 ["Provider"]
      176 CALL                             R4 1 -1
      177 FASTCALL                         TABLE_INSERT ; [+2]
      178 GETIMPORT                        R2 K7 [table.insert]
      180 CALL                             R2 -1 0
      181 MOVE                             R3 R1
      182 GETUPVAL                         R4 0
      183 GETUPVAL                         R5 16
      184 CALL                             R4 1 -1
      185 FASTCALL                         TABLE_INSERT ; [+2]
      186 GETIMPORT                        R2 K7 [table.insert]
      188 CALL                             R2 -1 0
      189 GETUPVAL                         R2 17
      190 CALL                             R2 0 1
      191 JUMPIFNOT                        R2 ; [+10]
      192 MOVE                             R3 R1
      193 GETUPVAL                         R4 0
      194 GETUPVAL                         R6 18
      195 GETTABLEKS                       R5 R6 K4 ["Provider"]
      197 CALL                             R4 1 -1
      198 FASTCALL                         TABLE_INSERT ; [+2]
      199 GETIMPORT                        R2 K7 [table.insert]
      201 CALL                             R2 -1 0
      202 GETUPVAL                         R2 0
      203 GETUPVAL                         R3 19
      204 DUPTABLE                         R4 K21 [{"onStyleSheetChange"}]
      205 GETTABLEKS                       R5 R0 K22 ["onFoundationStyleSheetChange"]
      207 SETTABLEKS                       R5 R4 K20 ["onStyleSheetChange"]
      209 DUPTABLE                         R5 K24 [{"ContextStack"}]
      210 GETUPVAL                         R6 0
      211 GETUPVAL                         R8 20
      212 GETTABLEKS                       R7 R8 K23 ["ContextStack"]
      214 DUPTABLE                         R8 K26 [{"providers"}]
      215 SETTABLEKS                       R1 R8 K25 ["providers"]
      217 GETUPVAL                         R9 21
      218 MOVE                             R10 R0
      219 CALL                             R9 1 1
      220 CALL                             R6 3 1
      221 SETTABLEKS                       R6 R5 K23 ["ContextStack"]
      223 CALL                             R2 3 -1
      224 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K10 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Components"]
       34 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K13 ["StudioExternalServerContextProvider"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R7 K14 ["StudioFoundation"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K10 ["Src"]
       50 GETTABLEKS                       R9 R10 K11 ["Components"]
       52 GETTABLEKS                       R8 R9 K12 ["Contexts"]
       54 GETTABLEKS                       R7 R8 K15 ["StudioInputStateContextProvider"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R12 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R12 K11 ["Components"]
       63 GETTABLEKS                       R10 R11 K12 ["Contexts"]
       65 GETTABLEKS                       R9 R10 K16 ["StudioLLM"]
       67 GETTABLEKS                       R8 R9 K17 ["StudioLLMPackageContextProvider"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R12 R0 K10 ["Src"]
       74 GETTABLEKS                       R11 R12 K11 ["Components"]
       76 GETTABLEKS                       R10 R11 K12 ["Contexts"]
       78 GETTABLEKS                       R9 R10 K18 ["StudioMcpClientContextProvider"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Src"]
       85 GETTABLEKS                       R12 R13 K11 ["Components"]
       87 GETTABLEKS                       R11 R12 K12 ["Contexts"]
       89 GETTABLEKS                       R10 R11 K19 ["StudioOptionsContextProvider"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R14 R0 K10 ["Src"]
       96 GETTABLEKS                       R13 R14 K11 ["Components"]
       98 GETTABLEKS                       R12 R13 K12 ["Contexts"]
      100 GETTABLEKS                       R11 R12 K20 ["StudioPopoutWidgetContextProvider"]
      102 CALL                             R10 1 1
      103 GETIMPORT                        R11 K5 [require]
      105 GETTABLEKS                       R15 R0 K10 ["Src"]
      107 GETTABLEKS                       R14 R15 K11 ["Components"]
      109 GETTABLEKS                       R13 R14 K12 ["Contexts"]
      111 GETTABLEKS                       R12 R13 K21 ["StudioSessionIdContextProvider"]
      113 CALL                             R11 1 1
      114 GETIMPORT                        R12 K5 [require]
      116 GETTABLEKS                       R15 R0 K10 ["Src"]
      118 GETTABLEKS                       R14 R15 K22 ["Util"]
      120 GETTABLEKS                       R13 R14 K23 ["StudioWindowInput"]
      122 CALL                             R12 1 1
      123 GETIMPORT                        R13 K5 [require]
      125 GETTABLEKS                       R16 R0 K10 ["Src"]
      127 GETTABLEKS                       R15 R16 K11 ["Components"]
      129 GETTABLEKS                       R14 R15 K24 ["WidgetTrackingMainView"]
      131 CALL                             R13 1 1
      132 GETTABLEKS                       R16 R1 K25 ["Flags"]
      134 GETTABLEKS                       R15 R16 K26 ["Shared"]
      136 GETTABLEKS                       R14 R15 K27 ["FFlagAssistantFeedbackView"]
      138 GETIMPORT                        R15 K5 [require]
      140 GETTABLEKS                       R18 R0 K10 ["Src"]
      142 GETTABLEKS                       R17 R18 K25 ["Flags"]
      144 GETTABLEKS                       R16 R17 K28 ["FFlagAssistantQualityChangeWidgetTitle"]
      146 CALL                             R15 1 1
      147 GETTABLEKS                       R18 R1 K25 ["Flags"]
      149 GETTABLEKS                       R17 R18 K26 ["Shared"]
      151 GETTABLEKS                       R16 R17 K29 ["FFlagAssistantPlanMode"]
      153 GETTABLEKS                       R19 R1 K25 ["Flags"]
      155 GETTABLEKS                       R18 R19 K26 ["Shared"]
      157 GETTABLEKS                       R17 R18 K30 ["FFlagExternalMCPUI"]
      159 GETTABLEKS                       R20 R1 K25 ["Flags"]
      161 GETTABLEKS                       R19 R20 K26 ["Shared"]
      163 GETTABLEKS                       R18 R19 K31 ["getAssistantModeEnabled"]
      165 GETTABLEKS                       R20 R5 K11 ["Components"]
      167 GETTABLEKS                       R19 R20 K32 ["FoundationProviderAdapter"]
      169 GETTABLEKS                       R22 R1 K11 ["Components"]
      171 GETTABLEKS                       R21 R22 K12 ["Contexts"]
      173 GETTABLEKS                       R20 R21 K33 ["FeedbackContext"]
      175 GETTABLEKS                       R23 R1 K11 ["Components"]
      177 GETTABLEKS                       R22 R23 K12 ["Contexts"]
      179 GETTABLEKS                       R21 R22 K34 ["ModelQualityContext"]
      181 GETTABLEKS                       R24 R1 K11 ["Components"]
      183 GETTABLEKS                       R23 R24 K12 ["Contexts"]
      185 GETTABLEKS                       R22 R23 K35 ["McpAuthorizerManagerContext"]
      187 GETTABLEKS                       R25 R1 K11 ["Components"]
      189 GETTABLEKS                       R24 R25 K12 ["Contexts"]
      191 GETTABLEKS                       R23 R24 K36 ["PersistedIntegrationContext"]
      193 GETTABLEKS                       R26 R1 K11 ["Components"]
      195 GETTABLEKS                       R25 R26 K12 ["Contexts"]
      197 GETTABLEKS                       R24 R25 K37 ["PersistedSettingsContext"]
      199 GETTABLEKS                       R27 R1 K38 ["Resources"]
      201 GETTABLEKS                       R26 R27 K39 ["Localization"]
      203 GETTABLEKS                       R25 R26 K40 ["Translator"]
      205 GETTABLEKS                       R26 R2 K41 ["createElement"]
      207 DUPCLOSURE                       R27 K42 [PROTO_1]
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R26
      213 CAPTURE                          VAL R13
      214 DUPCLOSURE                       R28 K43 [PROTO_2]
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R12
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R10
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R27
      237 RETURN                           R28 1
