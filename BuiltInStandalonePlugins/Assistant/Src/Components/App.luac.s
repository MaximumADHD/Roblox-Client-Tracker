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
       95 MOVE                             R3 R1
       96 GETUPVAL                         R4 0
       97 GETUPVAL                         R5 10
       98 CALL                             R4 1 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R2 K7 [table.insert]
      102 CALL                             R2 -1 0
      103 MOVE                             R3 R1
      104 GETUPVAL                         R4 0
      105 GETUPVAL                         R5 11
      106 CALL                             R4 1 -1
      107 FASTCALL                         TABLE_INSERT ; [+2]
      108 GETIMPORT                        R2 K7 [table.insert]
      110 CALL                             R2 -1 0
      111 MOVE                             R3 R1
      112 GETUPVAL                         R4 0
      113 GETUPVAL                         R5 12
      114 DUPTABLE                         R6 K11 [{"dataModel"}]
      115 GETIMPORT                        R7 K13 [game]
      117 SETTABLEKS                       R7 R6 K10 ["dataModel"]
      119 CALL                             R4 2 -1
      120 FASTCALL                         TABLE_INSERT ; [+2]
      121 GETIMPORT                        R2 K7 [table.insert]
      123 CALL                             R2 -1 0
      124 MOVE                             R3 R1
      125 GETUPVAL                         R4 0
      126 GETUPVAL                         R6 13
      127 GETTABLEKS                       R5 R6 K4 ["Provider"]
      129 DUPTABLE                         R6 K15 [{"dockWidget"}]
      130 GETTABLEKS                       R7 R0 K14 ["dockWidget"]
      132 SETTABLEKS                       R7 R6 K14 ["dockWidget"]
      134 CALL                             R4 2 -1
      135 FASTCALL                         TABLE_INSERT ; [+2]
      136 GETIMPORT                        R2 K7 [table.insert]
      138 CALL                             R2 -1 0
      139 MOVE                             R3 R1
      140 GETUPVAL                         R4 0
      141 GETUPVAL                         R6 14
      142 GETTABLEKS                       R5 R6 K4 ["Provider"]
      144 CALL                             R4 1 -1
      145 FASTCALL                         TABLE_INSERT ; [+2]
      146 GETIMPORT                        R2 K7 [table.insert]
      148 CALL                             R2 -1 0
      149 MOVE                             R3 R1
      150 GETUPVAL                         R4 0
      151 GETUPVAL                         R5 15
      152 CALL                             R4 1 -1
      153 FASTCALL                         TABLE_INSERT ; [+2]
      154 GETIMPORT                        R2 K7 [table.insert]
      156 CALL                             R2 -1 0
      157 GETUPVAL                         R2 0
      158 GETUPVAL                         R3 16
      159 DUPTABLE                         R4 K17 [{"onStyleSheetChange"}]
      160 GETTABLEKS                       R5 R0 K18 ["onFoundationStyleSheetChange"]
      162 SETTABLEKS                       R5 R4 K16 ["onStyleSheetChange"]
      164 DUPTABLE                         R5 K20 [{"ContextStack"}]
      165 GETUPVAL                         R6 0
      166 GETUPVAL                         R8 17
      167 GETTABLEKS                       R7 R8 K19 ["ContextStack"]
      169 DUPTABLE                         R8 K22 [{"providers"}]
      170 SETTABLEKS                       R1 R8 K21 ["providers"]
      172 GETUPVAL                         R9 18
      173 MOVE                             R10 R0
      174 CALL                             R9 1 1
      175 CALL                             R6 3 1
      176 SETTABLEKS                       R6 R5 K19 ["ContextStack"]
      178 CALL                             R2 3 -1
      179 RETURN                           R2 -1

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
      145 GETTABLEKS                       R15 R16 K28 ["FFlagExternalMCPUI"]
      147 GETTABLEKS                       R18 R1 K25 ["Flags"]
      149 GETTABLEKS                       R17 R18 K27 ["Shared"]
      151 GETTABLEKS                       R16 R17 K29 ["FFlagAssistantTestModeDropdown"]
      153 GETTABLEKS                       R18 R5 K11 ["Components"]
      155 GETTABLEKS                       R17 R18 K30 ["FoundationProviderAdapter"]
      157 GETTABLEKS                       R20 R1 K11 ["Components"]
      159 GETTABLEKS                       R19 R20 K12 ["Contexts"]
      161 GETTABLEKS                       R18 R19 K31 ["ModelQualityContext"]
      163 GETTABLEKS                       R21 R1 K11 ["Components"]
      165 GETTABLEKS                       R20 R21 K12 ["Contexts"]
      167 GETTABLEKS                       R19 R20 K32 ["McpAuthorizerManagerContext"]
      169 GETTABLEKS                       R22 R1 K11 ["Components"]
      171 GETTABLEKS                       R21 R22 K12 ["Contexts"]
      173 GETTABLEKS                       R20 R21 K33 ["PersistedIntegrationContext"]
      175 GETTABLEKS                       R23 R1 K11 ["Components"]
      177 GETTABLEKS                       R22 R23 K12 ["Contexts"]
      179 GETTABLEKS                       R21 R22 K34 ["PersistedSettingsContext"]
      181 GETTABLEKS                       R24 R1 K35 ["Resources"]
      183 GETTABLEKS                       R23 R24 K36 ["Localization"]
      185 GETTABLEKS                       R22 R23 K37 ["Translator"]
      187 GETTABLEKS                       R23 R2 K38 ["createElement"]
      189 DUPCLOSURE                       R24 K39 [PROTO_1]
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R13
      196 DUPCLOSURE                       R25 K40 [PROTO_2]
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R24
      216 RETURN                           R25 1
