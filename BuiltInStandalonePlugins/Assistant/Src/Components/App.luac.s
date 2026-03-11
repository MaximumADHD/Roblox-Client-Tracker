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
       54 MOVE                             R3 R1
       55 GETUPVAL                         R4 0
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R7 R8 K0 ["Components"]
       59 GETTABLEKS                       R6 R7 K1 ["Contexts"]
       61 GETTABLEKS                       R5 R6 K8 ["SettingsContextProvider"]
       63 CALL                             R4 1 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R2 K7 [table.insert]
       67 CALL                             R2 -1 0
       68 MOVE                             R3 R1
       69 GETUPVAL                         R4 0
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R7 R8 K0 ["Components"]
       73 GETTABLEKS                       R6 R7 K1 ["Contexts"]
       75 GETTABLEKS                       R5 R6 K9 ["LLMProviderSelectionContextProvider"]
       77 CALL                             R4 1 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R2 K7 [table.insert]
       81 CALL                             R2 -1 0
       82 MOVE                             R3 R1
       83 GETUPVAL                         R4 0
       84 GETUPVAL                         R5 8
       85 CALL                             R4 1 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R2 K7 [table.insert]
       89 CALL                             R2 -1 0
       90 MOVE                             R3 R1
       91 GETUPVAL                         R4 0
       92 GETUPVAL                         R5 9
       93 CALL                             R4 1 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R2 K7 [table.insert]
       97 CALL                             R2 -1 0
       98 MOVE                             R3 R1
       99 GETUPVAL                         R4 0
      100 GETUPVAL                         R5 10
      101 DUPTABLE                         R6 K11 [{"dataModel"}]
      102 GETIMPORT                        R7 K13 [game]
      104 SETTABLEKS                       R7 R6 K10 ["dataModel"]
      106 CALL                             R4 2 -1
      107 FASTCALL                         TABLE_INSERT ; [+2]
      108 GETIMPORT                        R2 K7 [table.insert]
      110 CALL                             R2 -1 0
      111 MOVE                             R3 R1
      112 GETUPVAL                         R4 0
      113 GETUPVAL                         R6 11
      114 GETTABLEKS                       R5 R6 K4 ["Provider"]
      116 DUPTABLE                         R6 K15 [{"dockWidget"}]
      117 GETTABLEKS                       R7 R0 K14 ["dockWidget"]
      119 SETTABLEKS                       R7 R6 K14 ["dockWidget"]
      121 CALL                             R4 2 -1
      122 FASTCALL                         TABLE_INSERT ; [+2]
      123 GETIMPORT                        R2 K7 [table.insert]
      125 CALL                             R2 -1 0
      126 MOVE                             R3 R1
      127 GETUPVAL                         R4 0
      128 GETUPVAL                         R6 12
      129 GETTABLEKS                       R5 R6 K4 ["Provider"]
      131 CALL                             R4 1 -1
      132 FASTCALL                         TABLE_INSERT ; [+2]
      133 GETIMPORT                        R2 K7 [table.insert]
      135 CALL                             R2 -1 0
      136 MOVE                             R3 R1
      137 GETUPVAL                         R4 0
      138 GETUPVAL                         R5 13
      139 CALL                             R4 1 -1
      140 FASTCALL                         TABLE_INSERT ; [+2]
      141 GETIMPORT                        R2 K7 [table.insert]
      143 CALL                             R2 -1 0
      144 GETUPVAL                         R2 0
      145 GETUPVAL                         R3 14
      146 DUPTABLE                         R4 K17 [{"onStyleSheetChange"}]
      147 GETTABLEKS                       R5 R0 K18 ["onFoundationStyleSheetChange"]
      149 SETTABLEKS                       R5 R4 K16 ["onStyleSheetChange"]
      151 DUPTABLE                         R5 K20 [{"ContextStack"}]
      152 GETUPVAL                         R6 0
      153 GETUPVAL                         R8 15
      154 GETTABLEKS                       R7 R8 K19 ["ContextStack"]
      156 DUPTABLE                         R8 K22 [{"providers"}]
      157 SETTABLEKS                       R1 R8 K21 ["providers"]
      159 GETUPVAL                         R9 16
      160 MOVE                             R10 R0
      161 CALL                             R9 1 1
      162 CALL                             R6 3 1
      163 SETTABLEKS                       R6 R5 K19 ["ContextStack"]
      165 CALL                             R2 3 -1
      166 RETURN                           R2 -1

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
      147 GETTABLEKS                       R17 R5 K11 ["Components"]
      149 GETTABLEKS                       R16 R17 K29 ["FoundationProviderAdapter"]
      151 GETTABLEKS                       R19 R1 K11 ["Components"]
      153 GETTABLEKS                       R18 R19 K12 ["Contexts"]
      155 GETTABLEKS                       R17 R18 K30 ["ModelQualityContext"]
      157 GETTABLEKS                       R20 R1 K11 ["Components"]
      159 GETTABLEKS                       R19 R20 K12 ["Contexts"]
      161 GETTABLEKS                       R18 R19 K31 ["McpAuthorizerManagerContext"]
      163 GETTABLEKS                       R21 R1 K11 ["Components"]
      165 GETTABLEKS                       R20 R21 K12 ["Contexts"]
      167 GETTABLEKS                       R19 R20 K32 ["PersistedIntegrationContext"]
      169 GETTABLEKS                       R22 R1 K33 ["Resources"]
      171 GETTABLEKS                       R21 R22 K34 ["Localization"]
      173 GETTABLEKS                       R20 R21 K35 ["Translator"]
      175 GETTABLEKS                       R21 R2 K36 ["createElement"]
      177 DUPCLOSURE                       R22 K37 [PROTO_1]
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R13
      184 DUPCLOSURE                       R23 K38 [PROTO_2]
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R17
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R22
      202 RETURN                           R23 1
