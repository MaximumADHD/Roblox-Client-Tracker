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
       26 DUPTABLE                         R1 K6 [{"UIListLayout", "MainView"}]
       27 GETUPVAL                         R2 4
       28 CALL                             R2 0 1
       29 JUMPIF                           R2 ; [+11]
       30 GETUPVAL                         R2 5
       31 CALL                             R2 0 1
       32 JUMPIF                           R2 ; [+8]
       33 GETUPVAL                         R2 6
       34 LOADK                            R3 K4 ["UIListLayout"]
       35 DUPTABLE                         R4 K8 [{"FillDirection"}]
       36 GETIMPORT                        R5 K11 [Enum.FillDirection.Vertical]
       38 SETTABLEKS                       R5 R4 K7 ["FillDirection"]
       40 CALL                             R2 2 1
       41 SETTABLEKS                       R2 R1 K4 ["UIListLayout"]
       43 GETUPVAL                         R3 4
       44 CALL                             R3 0 1
       45 JUMPIF                           R3 ; [+3]
       46 GETUPVAL                         R3 5
       47 CALL                             R3 0 1
       48 JUMPIFNOT                        R3 ; [+11]
       49 GETUPVAL                         R2 6
       50 GETUPVAL                         R4 7
       51 GETTABLEKS                       R3 R4 K12 ["WidgetTrackingMainView"]
       53 DUPTABLE                         R4 K14 [{"textBoxRef"}]
       54 GETTABLEKS                       R5 R0 K13 ["textBoxRef"]
       56 SETTABLEKS                       R5 R4 K13 ["textBoxRef"]
       58 CALL                             R2 2 1
       59 JUMP                             ; [+8]
       60 GETUPVAL                         R2 6
       61 GETUPVAL                         R3 8
       62 DUPTABLE                         R4 K14 [{"textBoxRef"}]
       63 GETTABLEKS                       R5 R0 K13 ["textBoxRef"]
       65 SETTABLEKS                       R5 R4 K13 ["textBoxRef"]
       67 CALL                             R2 2 1
       68 SETTABLEKS                       R2 R1 K5 ["MainView"]
       70 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 3
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
       22 CALL                             R4 1 -1
       23 SETLIST                          R1 R2 -1 [1]
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 1
       27 JUMPIF                           R2 ; [+3]
       28 GETUPVAL                         R2 4
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+20]
       31 MOVE                             R3 R1
       32 GETUPVAL                         R4 0
       33 GETUPVAL                         R6 5
       34 GETTABLEKS                       R5 R6 K4 ["Provider"]
       36 CALL                             R4 1 -1
       37 FASTCALL                         TABLE_INSERT ; [+2]
       38 GETIMPORT                        R2 K7 [table.insert]
       40 CALL                             R2 -1 0
       41 MOVE                             R3 R1
       42 GETUPVAL                         R4 0
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R5 R6 K4 ["Provider"]
       46 CALL                             R4 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R2 K7 [table.insert]
       50 CALL                             R2 -1 0
       51 GETUPVAL                         R2 7
       52 CALL                             R2 0 1
       53 JUMPIFNOT                        R2 ; [+8]
       54 MOVE                             R3 R1
       55 GETUPVAL                         R4 0
       56 GETUPVAL                         R5 8
       57 CALL                             R4 1 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R2 K7 [table.insert]
       61 CALL                             R2 -1 0
       62 MOVE                             R3 R1
       63 GETUPVAL                         R4 0
       64 GETUPVAL                         R5 9
       65 CALL                             R4 1 -1
       66 FASTCALL                         TABLE_INSERT ; [+2]
       67 GETIMPORT                        R2 K7 [table.insert]
       69 CALL                             R2 -1 0
       70 GETUPVAL                         R2 4
       71 CALL                             R2 0 1
       72 JUMPIFNOT                        R2 ; [+28]
       73 MOVE                             R3 R1
       74 GETUPVAL                         R4 0
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R7 R8 K0 ["Components"]
       78 GETTABLEKS                       R6 R7 K1 ["Contexts"]
       80 GETTABLEKS                       R5 R6 K8 ["SettingsContextProvider"]
       82 CALL                             R4 1 -1
       83 FASTCALL                         TABLE_INSERT ; [+2]
       84 GETIMPORT                        R2 K7 [table.insert]
       86 CALL                             R2 -1 0
       87 MOVE                             R3 R1
       88 GETUPVAL                         R4 0
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R7 R8 K0 ["Components"]
       92 GETTABLEKS                       R6 R7 K1 ["Contexts"]
       94 GETTABLEKS                       R5 R6 K9 ["LLMProviderSelectionContextProvider"]
       96 CALL                             R4 1 -1
       97 FASTCALL                         TABLE_INSERT ; [+2]
       98 GETIMPORT                        R2 K7 [table.insert]
      100 CALL                             R2 -1 0
      101 MOVE                             R3 R1
      102 GETUPVAL                         R4 0
      103 GETUPVAL                         R5 10
      104 CALL                             R4 1 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R2 K7 [table.insert]
      108 CALL                             R2 -1 0
      109 MOVE                             R3 R1
      110 GETUPVAL                         R4 0
      111 GETUPVAL                         R5 11
      112 CALL                             R4 1 -1
      113 FASTCALL                         TABLE_INSERT ; [+2]
      114 GETIMPORT                        R2 K7 [table.insert]
      116 CALL                             R2 -1 0
      117 MOVE                             R3 R1
      118 GETUPVAL                         R4 0
      119 GETUPVAL                         R5 12
      120 DUPTABLE                         R6 K11 [{"dataModel"}]
      121 GETIMPORT                        R7 K13 [game]
      123 SETTABLEKS                       R7 R6 K10 ["dataModel"]
      125 CALL                             R4 2 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R2 K7 [table.insert]
      129 CALL                             R2 -1 0
      130 MOVE                             R3 R1
      131 GETUPVAL                         R4 0
      132 GETUPVAL                         R6 13
      133 GETTABLEKS                       R5 R6 K4 ["Provider"]
      135 DUPTABLE                         R6 K15 [{"dockWidget"}]
      136 GETTABLEKS                       R7 R0 K14 ["dockWidget"]
      138 SETTABLEKS                       R7 R6 K14 ["dockWidget"]
      140 CALL                             R4 2 -1
      141 FASTCALL                         TABLE_INSERT ; [+2]
      142 GETIMPORT                        R2 K7 [table.insert]
      144 CALL                             R2 -1 0
      145 MOVE                             R3 R1
      146 GETUPVAL                         R4 0
      147 GETUPVAL                         R6 14
      148 GETTABLEKS                       R5 R6 K4 ["Provider"]
      150 CALL                             R4 1 -1
      151 FASTCALL                         TABLE_INSERT ; [+2]
      152 GETIMPORT                        R2 K7 [table.insert]
      154 CALL                             R2 -1 0
      155 GETUPVAL                         R2 3
      156 CALL                             R2 0 1
      157 JUMPIF                           R2 ; [+6]
      158 GETUPVAL                         R2 4
      159 CALL                             R2 0 1
      160 JUMPIF                           R2 ; [+3]
      161 GETUPVAL                         R2 15
      162 CALL                             R2 0 1
      163 JUMPIFNOT                        R2 ; [+8]
      164 MOVE                             R3 R1
      165 GETUPVAL                         R4 0
      166 GETUPVAL                         R5 16
      167 CALL                             R4 1 -1
      168 FASTCALL                         TABLE_INSERT ; [+2]
      169 GETIMPORT                        R2 K7 [table.insert]
      171 CALL                             R2 -1 0
      172 GETUPVAL                         R2 0
      173 GETUPVAL                         R3 17
      174 DUPTABLE                         R4 K17 [{"onStyleSheetChange"}]
      175 GETTABLEKS                       R5 R0 K18 ["onFoundationStyleSheetChange"]
      177 SETTABLEKS                       R5 R4 K16 ["onStyleSheetChange"]
      179 DUPTABLE                         R5 K20 [{"ContextStack"}]
      180 GETUPVAL                         R6 0
      181 GETUPVAL                         R8 18
      182 GETTABLEKS                       R7 R8 K19 ["ContextStack"]
      184 DUPTABLE                         R8 K22 [{"providers"}]
      185 SETTABLEKS                       R1 R8 K21 ["providers"]
      187 GETUPVAL                         R9 19
      188 MOVE                             R10 R0
      189 CALL                             R9 1 1
      190 CALL                             R6 3 1
      191 SETTABLEKS                       R6 R5 K19 ["ContextStack"]
      193 CALL                             R2 3 -1
      194 RETURN                           R2 -1

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
      132 GETIMPORT                        R14 K5 [require]
      134 GETTABLEKS                       R17 R0 K10 ["Src"]
      136 GETTABLEKS                       R16 R17 K25 ["Flags"]
      138 GETTABLEKS                       R15 R16 K26 ["FFlagAssistantQualityChangeWidgetTitle"]
      140 CALL                             R14 1 1
      141 GETTABLEKS                       R17 R1 K25 ["Flags"]
      143 GETTABLEKS                       R16 R17 K27 ["Shared"]
      145 GETTABLEKS                       R15 R16 K28 ["FFlagMCPAssistantExternalAPIKey"]
      147 GETTABLEKS                       R18 R1 K25 ["Flags"]
      149 GETTABLEKS                       R17 R18 K27 ["Shared"]
      151 GETTABLEKS                       R16 R17 K29 ["FFlagMCPAssistantManagementMenu"]
      153 GETTABLEKS                       R19 R1 K25 ["Flags"]
      155 GETTABLEKS                       R18 R19 K27 ["Shared"]
      157 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantMultipleChatSupport"]
      159 GETTABLEKS                       R20 R1 K25 ["Flags"]
      161 GETTABLEKS                       R19 R20 K27 ["Shared"]
      163 GETTABLEKS                       R18 R19 K31 ["FFlagCAP2592"]
      165 GETTABLEKS                       R20 R5 K11 ["Components"]
      167 GETTABLEKS                       R19 R20 K32 ["FoundationProviderAdapter"]
      169 GETTABLEKS                       R21 R1 K11 ["Components"]
      171 GETTABLEKS                       R20 R21 K33 ["MainView"]
      173 GETTABLEKS                       R23 R1 K11 ["Components"]
      175 GETTABLEKS                       R22 R23 K12 ["Contexts"]
      177 GETTABLEKS                       R21 R22 K34 ["ModelQualityContext"]
      179 GETTABLEKS                       R24 R1 K11 ["Components"]
      181 GETTABLEKS                       R23 R24 K12 ["Contexts"]
      183 GETTABLEKS                       R22 R23 K35 ["McpAuthorizerManagerContext"]
      185 GETTABLEKS                       R25 R1 K11 ["Components"]
      187 GETTABLEKS                       R24 R25 K12 ["Contexts"]
      189 GETTABLEKS                       R23 R24 K36 ["PersistedIntegrationContext"]
      191 GETTABLEKS                       R26 R1 K37 ["Resources"]
      193 GETTABLEKS                       R25 R26 K38 ["Localization"]
      195 GETTABLEKS                       R24 R25 K39 ["Translator"]
      197 GETTABLEKS                       R25 R2 K40 ["createElement"]
      199 DUPCLOSURE                       R26 K41 [PROTO_1]
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R20
      209 DUPCLOSURE                       R27 K42 [PROTO_2]
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R26
      230 RETURN                           R27 1
