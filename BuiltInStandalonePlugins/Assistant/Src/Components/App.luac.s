PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["signal"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["showIntegrations"]
        6 NAMECALL                         R0 R0 K2 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["useSettingsDialog is required to open MCP settings"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useEffect"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R4 0 2
       17 GETTABLEKS                       R5 R0 K4 ["signal"]
       19 GETTABLEKS                       R6 R1 K5 ["showIntegrations"]
       21 SETLIST                          R4 R5 2 [1]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K6 ["root"]
       26 RETURN                           R2 1

PROTO_3:
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
       34 GETTABLEKS                       R1 R1 K9 ["current"]
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantQualityChangeWidgetTitle"]
        3 JUMPIFNOT                        R1 ; [+34]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useContext"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Context"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R1 K3 ["modelQuality"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["useRef"]
       16 GETTABLEKS                       R4 R0 K5 ["setDockWidgetTitle"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K5 ["setDockWidgetTitle"]
       21 SETTABLEKS                       R4 R3 K6 ["current"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R6 0 1
       34 MOVE                             R7 R2
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 0
       38 DUPTABLE                         R1 K10 [{"McpSettingsAction", "MainView"}]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K11 ["FFlagMCPClientCountAsASetting"]
       42 JUMPIFNOT                        R3 ; [+12]
       43 GETTABLEKS                       R3 R0 K12 ["openMcpSettingsSignal"]
       45 JUMPIFNOT                        R3 ; [+9]
       46 GETUPVAL                         R2 4
       47 GETUPVAL                         R3 5
       48 DUPTABLE                         R4 K14 [{"signal"}]
       49 GETTABLEKS                       R5 R0 K12 ["openMcpSettingsSignal"]
       51 SETTABLEKS                       R5 R4 K13 ["signal"]
       53 CALL                             R2 2 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R2
       56 SETTABLEKS                       R2 R1 K8 ["McpSettingsAction"]
       58 GETUPVAL                         R2 4
       59 GETUPVAL                         R3 6
       60 GETTABLEKS                       R3 R3 K15 ["WidgetTrackingMainView"]
       62 DUPTABLE                         R4 K18 [{"textBoxRef", "externalInterfaceRef"}]
       63 GETTABLEKS                       R5 R0 K16 ["textBoxRef"]
       65 SETTABLEKS                       R5 R4 K16 ["textBoxRef"]
       67 GETTABLEKS                       R5 R0 K17 ["externalInterfaceRef"]
       69 SETTABLEKS                       R5 R4 K17 ["externalInterfaceRef"]
       71 CALL                             R2 2 1
       72 SETTABLEKS                       R2 R1 K9 ["MainView"]
       74 RETURN                           R1 1

PROTO_5:
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
       83 GETTABLEKS                       R2 R2 K12 ["FFlagDebugAssistantEval"]
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
      274 MOVE                             R3 R1
      275 GETUPVAL                         R4 0
      276 GETUPVAL                         R5 20
      277 GETTABLEKS                       R5 R5 K4 ["Provider"]
      279 DUPTABLE                         R6 K25 [{"net"}]
      280 GETTABLEKS                       R7 R0 K7 ["args"]
      282 GETTABLEKS                       R7 R7 K24 ["net"]
      284 SETTABLEKS                       R7 R6 K24 ["net"]
      286 CALL                             R4 2 -1
      287 FASTCALL                         TABLE_INSERT ; [+2]
      288 GETIMPORT                        R2 K10 [table.insert]
      290 CALL                             R2 -1 0
      291 GETUPVAL                         R2 0
      292 GETUPVAL                         R3 21
      293 DUPTABLE                         R4 K27 [{"onStyleSheetChange"}]
      294 GETTABLEKS                       R5 R0 K28 ["onFoundationStyleSheetChange"]
      296 SETTABLEKS                       R5 R4 K26 ["onStyleSheetChange"]
      298 DUPTABLE                         R5 K30 [{"ContextStack"}]
      299 GETUPVAL                         R6 0
      300 GETUPVAL                         R7 22
      301 GETTABLEKS                       R7 R7 K29 ["ContextStack"]
      303 DUPTABLE                         R8 K32 [{"providers"}]
      304 SETTABLEKS                       R1 R8 K31 ["providers"]
      306 GETUPVAL                         R9 23
      307 MOVE                             R10 R0
      308 CALL                             R9 1 1
      309 CALL                             R6 3 1
      310 SETTABLEKS                       R6 R5 K29 ["ContextStack"]
      312 CALL                             R2 3 -1
      313 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantUI"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["StudioFoundation"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Src"]
       38 GETTABLEKS                       R8 R8 K13 ["Host"]
       40 GETTABLEKS                       R8 R8 K14 ["ExternalServerController"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K12 ["Src"]
       47 GETTABLEKS                       R9 R9 K15 ["Flags"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R10 K16 ["Components"]
       56 GETTABLEKS                       R10 R10 K17 ["Contexts"]
       58 GETTABLEKS                       R10 R10 K18 ["StudioCreditMeteringContextProvider"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K12 ["Src"]
       65 GETTABLEKS                       R11 R11 K16 ["Components"]
       67 GETTABLEKS                       R11 R11 K17 ["Contexts"]
       69 GETTABLEKS                       R11 R11 K19 ["StudioExternalServerContextProvider"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K12 ["Src"]
       76 GETTABLEKS                       R12 R12 K16 ["Components"]
       78 GETTABLEKS                       R12 R12 K17 ["Contexts"]
       80 GETTABLEKS                       R12 R12 K20 ["StudioHarnessDepsContextProvider"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K12 ["Src"]
       87 GETTABLEKS                       R13 R13 K16 ["Components"]
       89 GETTABLEKS                       R13 R13 K17 ["Contexts"]
       91 GETTABLEKS                       R13 R13 K21 ["StudioInputStateContextProvider"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K12 ["Src"]
       98 GETTABLEKS                       R14 R14 K16 ["Components"]
      100 GETTABLEKS                       R14 R14 K17 ["Contexts"]
      102 GETTABLEKS                       R14 R14 K22 ["StudioLLM"]
      104 GETTABLEKS                       R14 R14 K23 ["StudioLLMPackageContextProvider"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K6 [require]
      109 GETTABLEKS                       R15 R0 K12 ["Src"]
      111 GETTABLEKS                       R15 R15 K16 ["Components"]
      113 GETTABLEKS                       R15 R15 K17 ["Contexts"]
      115 GETTABLEKS                       R15 R15 K24 ["StudioMcpClientContextProvider"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K6 [require]
      120 GETTABLEKS                       R16 R0 K12 ["Src"]
      122 GETTABLEKS                       R16 R16 K16 ["Components"]
      124 GETTABLEKS                       R16 R16 K17 ["Contexts"]
      126 GETTABLEKS                       R16 R16 K25 ["StudioOptionsContextProvider"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K6 [require]
      131 GETTABLEKS                       R17 R0 K12 ["Src"]
      133 GETTABLEKS                       R17 R17 K16 ["Components"]
      135 GETTABLEKS                       R17 R17 K17 ["Contexts"]
      137 GETTABLEKS                       R17 R17 K26 ["StudioPopoutWidgetContextProvider"]
      139 CALL                             R16 1 1
      140 GETIMPORT                        R17 K6 [require]
      142 GETTABLEKS                       R18 R0 K12 ["Src"]
      144 GETTABLEKS                       R18 R18 K16 ["Components"]
      146 GETTABLEKS                       R18 R18 K17 ["Contexts"]
      148 GETTABLEKS                       R18 R18 K27 ["StudioSessionIdContextProvider"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K6 [require]
      153 GETTABLEKS                       R19 R0 K12 ["Src"]
      155 GETTABLEKS                       R19 R19 K16 ["Components"]
      157 GETTABLEKS                       R19 R19 K17 ["Contexts"]
      159 GETTABLEKS                       R19 R19 K28 ["StudioWidgetVisibilityContextProvider"]
      161 CALL                             R18 1 1
      162 GETIMPORT                        R19 K6 [require]
      164 GETTABLEKS                       R20 R0 K12 ["Src"]
      166 GETTABLEKS                       R20 R20 K29 ["Util"]
      168 GETTABLEKS                       R20 R20 K30 ["StudioWindowInput"]
      170 CALL                             R19 1 1
      171 GETIMPORT                        R20 K6 [require]
      173 GETTABLEKS                       R21 R0 K12 ["Src"]
      175 GETTABLEKS                       R21 R21 K16 ["Components"]
      177 GETTABLEKS                       R21 R21 K31 ["WidgetTrackingMainView"]
      179 CALL                             R20 1 1
      180 GETTABLEKS                       R21 R6 K16 ["Components"]
      182 GETTABLEKS                       R21 R21 K32 ["FoundationProviderAdapter"]
      184 GETTABLEKS                       R22 R2 K16 ["Components"]
      186 GETTABLEKS                       R22 R22 K17 ["Contexts"]
      188 GETTABLEKS                       R22 R22 K33 ["FeedbackContext"]
      190 GETTABLEKS                       R23 R2 K16 ["Components"]
      192 GETTABLEKS                       R23 R23 K17 ["Contexts"]
      194 GETTABLEKS                       R23 R23 K34 ["McpAuthorizerManagerContext"]
      196 GETTABLEKS                       R24 R2 K16 ["Components"]
      198 GETTABLEKS                       R24 R24 K17 ["Contexts"]
      200 GETTABLEKS                       R24 R24 K35 ["ModelQualityContext"]
      202 GETTABLEKS                       R25 R2 K16 ["Components"]
      204 GETTABLEKS                       R25 R25 K17 ["Contexts"]
      206 GETTABLEKS                       R25 R25 K36 ["NetworkingContext"]
      208 GETTABLEKS                       R26 R2 K16 ["Components"]
      210 GETTABLEKS                       R26 R26 K17 ["Contexts"]
      212 GETTABLEKS                       R26 R26 K37 ["PersistedIntegrationContext"]
      214 GETTABLEKS                       R27 R2 K16 ["Components"]
      216 GETTABLEKS                       R27 R27 K17 ["Contexts"]
      218 GETTABLEKS                       R27 R27 K38 ["PersistedSettingsContext"]
      220 GETTABLEKS                       R28 R2 K39 ["Resources"]
      222 GETTABLEKS                       R28 R28 K40 ["Localization"]
      224 GETTABLEKS                       R28 R28 K41 ["Translator"]
      226 GETTABLEKS                       R29 R2 K42 ["FlagUtils"]
      228 GETTABLEKS                       R29 R29 K43 ["getIsCreditMeteringEnabled"]
      230 GETTABLEKS                       R30 R2 K16 ["Components"]
      232 GETTABLEKS                       R30 R30 K44 ["Hooks"]
      234 GETTABLEKS                       R30 R30 K45 ["useSettingsDialog"]
      236 GETTABLEKS                       R31 R4 K46 ["createElement"]
      238 DUPCLOSURE                       R32 K47 [PROTO_2]
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R4
      241 DUPCLOSURE                       R33 K48 [PROTO_4]
      242 CAPTURE                          VAL R8
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R28
      246 CAPTURE                          VAL R31
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R20
      249 DUPCLOSURE                       R34 K49 [PROTO_5]
      250 CAPTURE                          VAL R31
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R17
      253 CAPTURE                          VAL R23
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R29
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R13
      262 CAPTURE                          VAL R11
      263 CAPTURE                          VAL R15
      264 CAPTURE                          VAL R12
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R18
      267 CAPTURE                          VAL R24
      268 CAPTURE                          VAL R16
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R33
      274 RETURN                           R34 1
