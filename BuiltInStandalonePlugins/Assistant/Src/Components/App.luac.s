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
      274 GETUPVAL                         R2 8
      275 GETTABLEKS                       R2 R2 K24 ["FFlagAssistantUseNewDMNetworking"]
      277 JUMPIFNOT                        R2 ; [+18]
      278 MOVE                             R3 R1
      279 GETUPVAL                         R4 0
      280 GETUPVAL                         R5 20
      281 GETTABLEKS                       R5 R5 K4 ["Provider"]
      283 DUPTABLE                         R6 K26 [{"net"}]
      284 GETTABLEKS                       R7 R0 K7 ["args"]
      286 GETTABLEKS                       R7 R7 K25 ["net"]
      288 SETTABLEKS                       R7 R6 K25 ["net"]
      290 CALL                             R4 2 -1
      291 FASTCALL                         TABLE_INSERT ; [+2]
      292 GETIMPORT                        R2 K10 [table.insert]
      294 CALL                             R2 -1 0
      295 JUMP                             ; [+20]
      296 GETTABLEKS                       R2 R0 K7 ["args"]
      298 GETTABLEKS                       R2 R2 K27 ["bridges"]
      300 FASTCALL2K                       ASSERT R2 K28 ; [+5]
      302 MOVE                             R4 R2
      303 LOADK                            R5 K28 ["App requires bridges"]
      304 GETIMPORT                        R3 K30 [assert]
      306 CALL                             R3 2 0
      307 GETUPVAL                         R3 21
      308 MOVE                             R4 R2
      309 CALL                             R3 1 1
      310 GETUPVAL                         R4 22
      311 GETTABLEKS                       R4 R4 K31 ["append"]
      313 MOVE                             R5 R1
      314 MOVE                             R6 R3
      315 CALL                             R4 2 0
      316 GETUPVAL                         R2 0
      317 GETUPVAL                         R3 23
      318 DUPTABLE                         R4 K33 [{"onStyleSheetChange"}]
      319 GETTABLEKS                       R5 R0 K34 ["onFoundationStyleSheetChange"]
      321 SETTABLEKS                       R5 R4 K32 ["onStyleSheetChange"]
      323 DUPTABLE                         R5 K36 [{"ContextStack"}]
      324 GETUPVAL                         R6 0
      325 GETUPVAL                         R7 24
      326 GETTABLEKS                       R7 R7 K35 ["ContextStack"]
      328 DUPTABLE                         R8 K38 [{"providers"}]
      329 SETTABLEKS                       R1 R8 K37 ["providers"]
      331 GETUPVAL                         R9 25
      332 MOVE                             R10 R0
      333 CALL                             R9 1 1
      334 CALL                             R6 3 1
      335 SETTABLEKS                       R6 R5 K35 ["ContextStack"]
      337 CALL                             R2 3 -1
      338 RETURN                           R2 -1

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
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["React"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ReactUtils"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["StudioFoundation"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Src"]
       43 GETTABLEKS                       R9 R9 K14 ["Host"]
       45 GETTABLEKS                       R9 R9 K15 ["ExternalServerController"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K13 ["Src"]
       52 GETTABLEKS                       R10 R10 K16 ["Flags"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K13 ["Src"]
       59 GETTABLEKS                       R11 R11 K17 ["Components"]
       61 GETTABLEKS                       R11 R11 K18 ["Contexts"]
       63 GETTABLEKS                       R11 R11 K19 ["StudioCreditMeteringContextProvider"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K13 ["Src"]
       70 GETTABLEKS                       R12 R12 K17 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["Contexts"]
       74 GETTABLEKS                       R12 R12 K20 ["StudioExternalServerContextProvider"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K13 ["Src"]
       81 GETTABLEKS                       R13 R13 K17 ["Components"]
       83 GETTABLEKS                       R13 R13 K18 ["Contexts"]
       85 GETTABLEKS                       R13 R13 K21 ["StudioHarnessDepsContextProvider"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K13 ["Src"]
       92 GETTABLEKS                       R14 R14 K17 ["Components"]
       94 GETTABLEKS                       R14 R14 K18 ["Contexts"]
       96 GETTABLEKS                       R14 R14 K22 ["StudioInputStateContextProvider"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R15 R0 K13 ["Src"]
      103 GETTABLEKS                       R15 R15 K17 ["Components"]
      105 GETTABLEKS                       R15 R15 K18 ["Contexts"]
      107 GETTABLEKS                       R15 R15 K23 ["StudioLLM"]
      109 GETTABLEKS                       R15 R15 K24 ["StudioLLMPackageContextProvider"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K6 [require]
      114 GETTABLEKS                       R16 R0 K13 ["Src"]
      116 GETTABLEKS                       R16 R16 K17 ["Components"]
      118 GETTABLEKS                       R16 R16 K18 ["Contexts"]
      120 GETTABLEKS                       R16 R16 K25 ["StudioMcpClientContextProvider"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K6 [require]
      125 GETTABLEKS                       R17 R0 K13 ["Src"]
      127 GETTABLEKS                       R17 R17 K17 ["Components"]
      129 GETTABLEKS                       R17 R17 K18 ["Contexts"]
      131 GETTABLEKS                       R17 R17 K26 ["StudioOptionsContextProvider"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K6 [require]
      136 GETTABLEKS                       R18 R0 K13 ["Src"]
      138 GETTABLEKS                       R18 R18 K17 ["Components"]
      140 GETTABLEKS                       R18 R18 K18 ["Contexts"]
      142 GETTABLEKS                       R18 R18 K27 ["StudioPopoutWidgetContextProvider"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K6 [require]
      147 GETTABLEKS                       R19 R0 K13 ["Src"]
      149 GETTABLEKS                       R19 R19 K17 ["Components"]
      151 GETTABLEKS                       R19 R19 K18 ["Contexts"]
      153 GETTABLEKS                       R19 R19 K28 ["StudioSessionIdContextProvider"]
      155 CALL                             R18 1 1
      156 GETIMPORT                        R19 K6 [require]
      158 GETTABLEKS                       R20 R0 K13 ["Src"]
      160 GETTABLEKS                       R20 R20 K17 ["Components"]
      162 GETTABLEKS                       R20 R20 K18 ["Contexts"]
      164 GETTABLEKS                       R20 R20 K29 ["StudioWidgetVisibilityContextProvider"]
      166 CALL                             R19 1 1
      167 GETIMPORT                        R20 K6 [require]
      169 GETTABLEKS                       R21 R0 K13 ["Src"]
      171 GETTABLEKS                       R21 R21 K30 ["Util"]
      173 GETTABLEKS                       R21 R21 K31 ["StudioWindowInput"]
      175 CALL                             R20 1 1
      176 GETIMPORT                        R21 K6 [require]
      178 GETTABLEKS                       R22 R0 K13 ["Src"]
      180 GETTABLEKS                       R22 R22 K17 ["Components"]
      182 GETTABLEKS                       R22 R22 K32 ["WidgetTrackingMainView"]
      184 CALL                             R21 1 1
      185 GETTABLEKS                       R22 R7 K17 ["Components"]
      187 GETTABLEKS                       R22 R22 K33 ["FoundationProviderAdapter"]
      189 GETTABLEKS                       R23 R2 K17 ["Components"]
      191 GETTABLEKS                       R23 R23 K18 ["Contexts"]
      193 GETTABLEKS                       R23 R23 K34 ["FeedbackContext"]
      195 GETTABLEKS                       R24 R2 K17 ["Components"]
      197 GETTABLEKS                       R24 R24 K18 ["Contexts"]
      199 GETTABLEKS                       R24 R24 K35 ["McpAuthorizerManagerContext"]
      201 GETTABLEKS                       R25 R2 K17 ["Components"]
      203 GETTABLEKS                       R25 R25 K18 ["Contexts"]
      205 GETTABLEKS                       R25 R25 K36 ["ModelQualityContext"]
      207 GETTABLEKS                       R26 R2 K17 ["Components"]
      209 GETTABLEKS                       R26 R26 K18 ["Contexts"]
      211 GETTABLEKS                       R26 R26 K37 ["NetworkingContext"]
      213 GETTABLEKS                       R27 R2 K17 ["Components"]
      215 GETTABLEKS                       R27 R27 K18 ["Contexts"]
      217 GETTABLEKS                       R27 R27 K38 ["PersistedIntegrationContext"]
      219 GETTABLEKS                       R28 R2 K17 ["Components"]
      221 GETTABLEKS                       R28 R28 K18 ["Contexts"]
      223 GETTABLEKS                       R28 R28 K39 ["PersistedSettingsContext"]
      225 GETTABLEKS                       R29 R2 K40 ["Resources"]
      227 GETTABLEKS                       R29 R29 K41 ["Localization"]
      229 GETTABLEKS                       R29 R29 K42 ["Translator"]
      231 GETTABLEKS                       R30 R2 K43 ["FlagUtils"]
      233 GETTABLEKS                       R30 R30 K44 ["getIsCreditMeteringEnabled"]
      235 GETTABLEKS                       R31 R2 K17 ["Components"]
      237 GETTABLEKS                       R31 R31 K45 ["Hooks"]
      239 GETTABLEKS                       R31 R31 K46 ["useBridges"]
      241 GETTABLEKS                       R32 R2 K17 ["Components"]
      243 GETTABLEKS                       R32 R32 K45 ["Hooks"]
      245 GETTABLEKS                       R32 R32 K47 ["useSettingsDialog"]
      247 GETTABLEKS                       R33 R5 K48 ["createElement"]
      249 DUPCLOSURE                       R34 K49 [PROTO_2]
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R5
      252 DUPCLOSURE                       R35 K50 [PROTO_4]
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R25
      256 CAPTURE                          VAL R29
      257 CAPTURE                          VAL R33
      258 CAPTURE                          VAL R34
      259 CAPTURE                          VAL R21
      260 DUPCLOSURE                       R36 K51 [PROTO_5]
      261 CAPTURE                          VAL R33
      262 CAPTURE                          VAL R2
      263 CAPTURE                          VAL R18
      264 CAPTURE                          VAL R24
      265 CAPTURE                          VAL R27
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R28
      269 CAPTURE                          VAL R9
      270 CAPTURE                          VAL R30
      271 CAPTURE                          VAL R10
      272 CAPTURE                          VAL R14
      273 CAPTURE                          VAL R12
      274 CAPTURE                          VAL R16
      275 CAPTURE                          VAL R13
      276 CAPTURE                          VAL R20
      277 CAPTURE                          VAL R19
      278 CAPTURE                          VAL R25
      279 CAPTURE                          VAL R17
      280 CAPTURE                          VAL R23
      281 CAPTURE                          VAL R26
      282 CAPTURE                          VAL R31
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R22
      285 CAPTURE                          VAL R6
      286 CAPTURE                          VAL R35
      287 RETURN                           R36 1
