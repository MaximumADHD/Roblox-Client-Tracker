PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setVersionMismatch"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETIMPORT                        R2 K1 [warn]
        8 LOADK                            R4 K2 ["Assistant plugin version changed from %* to %*. This may cause instability when using Assistant or the MCP server. Please restart Roblox Studio to fix."]
        9 MOVE                             R6 R0
       10 GETUPVAL                         R7 0
       11 NAMECALL                         R4 R4 K3 ["format"]
       13 CALL                             R4 3 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 1
       17 LOADK                            R4 K4 ["AssistantVersionMismatch"]
       18 MOVE                             R5 R1
       19 NAMECALL                         R2 R2 K5 ["SetItem"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsGuest"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+27]
        5 DUPCLOSURE                       R0 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U1
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K2 ["AssistantVersionMismatch"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K3 ["OnSetItem"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 LOADK                            R3 K2 ["AssistantVersionMismatch"]
       15 LOADB                            R4 0
       16 NAMECALL                         R1 R1 K4 ["GetItem"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K5 ["setVersionMismatch"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R1 2
       25 LOADK                            R3 K6 ["AssistantVersion"]
       26 GETUPVAL                         R4 3
       27 NAMECALL                         R1 R1 K7 ["SetItem"]
       29 CALL                             R1 3 0
       30 LOADNIL                          R1
       31 RETURN                           R1 1
       32 NEWCLOSURE                       R0 P1
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U2
       35 GETUPVAL                         R1 2
       36 LOADK                            R3 K6 ["AssistantVersion"]
       37 MOVE                             R4 R0
       38 NAMECALL                         R1 R1 K3 ["OnSetItem"]
       40 CALL                             R1 3 0
       41 GETUPVAL                         R1 2
       42 LOADK                            R3 K6 ["AssistantVersion"]
       43 LOADNIL                          R4
       44 NAMECALL                         R1 R1 K4 ["GetItem"]
       46 CALL                             R1 3 1
       47 GETUPVAL                         R3 3
       48 JUMPIFNOTEQ                      R1 R3 ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 JUMPIFNOT                        R2 ; [+10]
       53 GETIMPORT                        R3 K9 [warn]
       55 LOADK                            R5 K10 ["Assistant plugin version changed from %* to %*. This may cause instability when using Assistant or the MCP server. Please restart Roblox Studio to fix."]
       56 MOVE                             R7 R1
       57 GETUPVAL                         R8 3
       58 NAMECALL                         R5 R5 K11 ["format"]
       60 CALL                             R5 3 1
       61 MOVE                             R4 R5
       62 CALL                             R3 1 0
       63 GETUPVAL                         R3 2
       64 LOADK                            R5 K2 ["AssistantVersionMismatch"]
       65 MOVE                             R6 R2
       66 NAMECALL                         R3 R3 K7 ["SetItem"]
       68 CALL                             R3 3 0
       69 LOADNIL                          R1
       70 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+9]
        9 GETIMPORT                        R5 K3 [warn]
       11 LOADK                            R7 K4 ["Failed to track Assistant plugin version mismatch: %*"]
       12 MOVE                             R9 R4
       13 NAMECALL                         R7 R7 K5 ["format"]
       15 CALL                             R7 2 1
       16 MOVE                             R6 R7
       17 CALL                             R5 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R5 K1 ["%*Mode"]
        3 MOVE                             R7 R0
        4 NAMECALL                         R5 R5 K2 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R4 R5
        8 NAMECALL                         R1 R1 K3 ["getText"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["IsHost"]
        7 CALL                             R0 1 1
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["EditDataModelAvailabilityChangedEventKey"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["Types"]
       16 GETTABLEKS                       R3 R3 K4 ["Standalone"]
       18 LOADB                            R4 0
       19 NAMECALL                         R0 R0 K5 ["FireGuest"]
       21 CALL                             R0 4 0
       22 GETUPVAL                         R0 4
       23 GETTABLEKS                       R0 R0 K6 ["Destroy"]
       25 CALL                             R0 0 0
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K7 ["FFlagAssistantNotificationManager"]
       29 JUMPIFNOT                        R0 ; [+4]
       30 GETUPVAL                         R0 5
       31 GETTABLEKS                       R0 R0 K8 ["destroy"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["printToStudioLogAsync"]
        3 LOADK                            R2 K1 ["AssistantVersion: %*"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["getVersion"]
        7 CALL                             R4 0 1
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 2 1
       11 MOVE                             R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKS                       R2 K0 ["<dev>"] ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["setVersionOverride"]
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["FFlagAssistantNotificationManager"]
       11 JUMPIFNOT                        R2 ; [+14]
       12 NAMECALL                         R2 R1 K3 ["IsGuest"]
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K4 ["create"]
       19 GETUPVAL                         R3 4
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R3 R3 K5 ["set"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETUPVAL                         R2 6
       27 MOVE                             R3 R0
       28 MOVE                             R4 R1
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantVersionMismatchWarning"]
       33 JUMPIFNOT                        R3 ; [+22]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K7 ["getVersion"]
       37 CALL                             R3 0 1
       38 GETIMPORT                        R4 K9 [pcall]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CALL                             R4 1 2
       46 JUMPIF                           R4 ; [+9]
       47 GETIMPORT                        R6 K11 [warn]
       49 LOADK                            R8 K12 ["Failed to track Assistant plugin version mismatch: %*"]
       50 MOVE                             R10 R5
       51 NAMECALL                         R8 R8 K13 ["format"]
       53 CALL                             R8 2 1
       54 MOVE                             R7 R8
       55 CALL                             R6 1 0
       56 GETUPVAL                         R3 7
       57 MOVE                             R4 R1
       58 CALL                             R3 1 1
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K14 ["FFlagAssistantUseRemoteService"]
       62 JUMPIFNOT                        R4 ; [+23]
       63 GETUPVAL                         R4 8
       64 GETTABLEKS                       R4 R4 K15 ["getDataModelType"]
       66 CALL                             R4 0 1
       67 GETUPVAL                         R5 8
       68 GETTABLEKS                       R5 R5 K16 ["Types"]
       70 GETTABLEKS                       R5 R5 K17 ["Edit"]
       72 JUMPIFNOTEQ                      R4 R5 ; [+13]
       74 GETUPVAL                         R6 9
       75 GETTABLEKS                       R6 R6 K18 ["EditDataModelAvailabilityChangedEventKey"]
       77 GETUPVAL                         R7 8
       78 GETTABLEKS                       R7 R7 K16 ["Types"]
       80 GETTABLEKS                       R7 R7 K19 ["Standalone"]
       82 LOADB                            R8 1
       83 NAMECALL                         R4 R1 K20 ["FireGuest"]
       85 CALL                             R4 4 0
       86 GETUPVAL                         R4 10
       87 GETTABLEKS                       R4 R4 K21 ["initialize"]
       89 MOVE                             R5 R1
       90 MOVE                             R6 R0
       91 CALL                             R4 2 0
       92 GETUPVAL                         R4 11
       93 GETTABLEKS                       R4 R4 K21 ["initialize"]
       95 MOVE                             R5 R1
       96 CALL                             R4 1 0
       97 GETUPVAL                         R4 2
       98 GETTABLEKS                       R4 R4 K22 ["FFlagAssistantUseLocalCas"]
      100 JUMPIF                           R4 ; [+4]
      101 GETUPVAL                         R4 2
      102 GETTABLEKS                       R4 R4 K14 ["FFlagAssistantUseRemoteService"]
      104 JUMPIFNOT                        R4 ; [+5]
      105 GETUPVAL                         R4 12
      106 GETTABLEKS                       R4 R4 K21 ["initialize"]
      108 MOVE                             R5 R1
      109 CALL                             R4 1 0
      110 GETUPVAL                         R4 13
      111 GETTABLEKS                       R4 R4 K23 ["Guest"]
      113 GETTABLEKS                       R4 R4 K24 ["startGuest"]
      115 DUPTABLE                         R5 K29 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
      116 GETUPVAL                         R6 14
      117 GETTABLEKS                       R6 R6 K30 ["MCP_CLIENT_IDENTIFIER"]
      119 SETTABLEKS                       R6 R5 K25 ["clientIdentifier"]
      121 SETTABLEKS                       R1 R5 K26 ["networking"]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R7 R7 K31 ["FFlagAssistantMultiPlayerAgents"]
      126 JUMPIFNOT                        R7 ; [+14]
      127 GETUPVAL                         R6 15
      128 GETTABLEKS                       R6 R6 K32 ["new"]
      130 GETUPVAL                         R7 15
      131 GETTABLEKS                       R7 R7 K33 ["Implementations"]
      133 GETTABLEKS                       R7 R7 K34 ["CallbackNetworking"]
      135 GETTABLEKS                       R7 R7 K32 ["new"]
      137 DUPTABLE                         R8 K38 [{["isGuest"] = True, ["isHost"] = True}]
      138 CALL                             R7 1 -1
      139 CALL                             R6 -1 1
      140 JUMP                             ; [+1]
      141 MOVE                             R6 R1
      142 SETTABLEKS                       R6 R5 K27 ["LLMRequestNetworking"]
      144 SETTABLEKS                       R2 R5 K28 ["EnvironmentOverride"]
      146 CALL                             R4 1 2
      147 GETUPVAL                         R6 16
      148 GETTABLEKS                       R6 R6 K39 ["configureModelContextProtocol"]
      150 CALL                             R6 0 0
      151 NAMECALL                         R6 R1 K3 ["IsGuest"]
      153 CALL                             R6 1 1
      154 JUMPIFNOT                        R6 ; [+22]
      155 GETUPVAL                         R6 13
      156 GETTABLEKS                       R6 R6 K40 ["Skills"]
      158 GETTABLEKS                       R6 R6 K41 ["getDisabledSetAsync"]
      160 MOVE                             R7 R2
      161 CALL                             R6 1 1
      162 GETUPVAL                         R7 13
      163 GETTABLEKS                       R7 R7 K40 ["Skills"]
      165 GETTABLEKS                       R7 R7 K42 ["registerAll"]
      167 MOVE                             R8 R6
      168 CALL                             R7 1 0
      169 GETUPVAL                         R7 13
      170 GETTABLEKS                       R7 R7 K40 ["Skills"]
      172 GETTABLEKS                       R7 R7 K43 ["loadUserSkillsAsync"]
      174 MOVE                             R8 R2
      175 MOVE                             R9 R6
      176 CALL                             R7 2 0
      177 GETUPVAL                         R6 13
      178 GETTABLEKS                       R6 R6 K44 ["Subagents"]
      180 GETTABLEKS                       R6 R6 K42 ["registerAll"]
      182 CALL                             R6 0 0
      183 GETUPVAL                         R6 13
      184 GETTABLEKS                       R6 R6 K44 ["Subagents"]
      186 GETTABLEKS                       R6 R6 K45 ["setRequestHandler"]
      188 GETUPVAL                         R8 2
      189 GETTABLEKS                       R8 R8 K46 ["FFlagDebugEnableTestLLMAdapter"]
      191 JUMPIFNOT                        R8 ; [+4]
      192 GETUPVAL                         R7 17
      193 GETTABLEKS                       R7 R7 K47 ["requestHandler"]
      195 JUMP                             ; [+7]
      196 GETUPVAL                         R7 18
      197 GETTABLEKS                       R7 R7 K48 ["createRequestHandler"]
      199 GETIMPORT                        R8 K50 [game]
      201 MOVE                             R9 R0
      202 CALL                             R7 2 1
      203 CALL                             R6 1 0
      204 GETTABLEKS                       R6 R5 K51 ["bridges"]
      206 GETUPVAL                         R7 13
      207 GETTABLEKS                       R7 R7 K52 ["Tools"]
      209 GETTABLEKS                       R7 R7 K53 ["createTools"]
      211 DUPTABLE                         R8 K55 [{"tools", "networking", "bridges"}]
      212 GETUPVAL                         R9 19
      213 GETTABLEKS                       R9 R9 K56 ["DefaultTools"]
      215 SETTABLEKS                       R9 R8 K54 ["tools"]
      217 SETTABLEKS                       R1 R8 K26 ["networking"]
      219 SETTABLEKS                       R6 R8 K51 ["bridges"]
      221 CALL                             R7 1 1
      222 NAMECALL                         R8 R1 K3 ["IsGuest"]
      224 CALL                             R8 1 1
      225 JUMPIFNOT                        R8 ; [+7]
      226 GETUPVAL                         R8 13
      227 GETTABLEKS                       R8 R8 K52 ["Tools"]
      229 GETTABLEKS                       R8 R8 K57 ["registerTools"]
      231 MOVE                             R9 R7
      232 CALL                             R8 1 0
      233 GETUPVAL                         R8 13
      234 GETTABLEKS                       R8 R8 K58 ["UIToolRegistry"]
      236 GETTABLEKS                       R8 R8 K59 ["registerModeCommands"]
      238 GETUPVAL                         R9 13
      239 GETTABLEKS                       R9 R9 K16 ["Types"]
      241 GETTABLEKS                       R9 R9 K60 ["getAssistantModeOrdered"]
      243 CALL                             R9 0 1
      244 DUPCLOSURE                       R10 K61 [PROTO_4]
      245 CAPTURE                          UPVAL U20
      246 CALL                             R8 2 0
      247 GETUPVAL                         R8 21
      248 GETTABLEKS                       R8 R8 K32 ["new"]
      250 GETUPVAL                         R9 22
      251 MOVE                             R10 R1
      252 GETUPVAL                         R11 19
      253 GETTABLEKS                       R11 R11 K62 ["ExperimentalTools"]
      255 GETUPVAL                         R12 19
      256 GETTABLEKS                       R12 R12 K63 ["ExperimentFeatureTools"]
      258 MOVE                             R13 R6
      259 CALL                             R8 5 1
      260 GETTABLEKS                       R9 R8 K64 ["trackUserLoggedIn"]
      262 CALL                             R9 0 0
      263 GETUPVAL                         R9 23
      264 GETTABLEKS                       R9 R9 K65 ["connect"]
      266 MOVE                             R10 R0
      267 MOVE                             R11 R1
      268 MOVE                             R12 R2
      269 CALL                             R9 3 0
      270 GETTABLEKS                       R9 R0 K66 ["Unloading"]
      272 NEWCLOSURE                       R11 P2
      273 CAPTURE                          UPVAL U2
      274 CAPTURE                          VAL R1
      275 CAPTURE                          UPVAL U9
      276 CAPTURE                          UPVAL U8
      277 CAPTURE                          UPVAL U24
      278 CAPTURE                          UPVAL U5
      279 NAMECALL                         R9 R9 K67 ["Connect"]
      281 CALL                             R9 2 0
      282 GETIMPORT                        R9 K9 [pcall]
      284 NEWCLOSURE                       R10 P3
      285 CAPTURE                          VAL R2
      286 CAPTURE                          UPVAL U1
      287 CALL                             R9 1 0
      288 MOVE                             R9 R3
      289 CALL                             R9 0 0
      290 DUPTABLE                         R9 K68 [{"bridges"}]
      291 SETTABLEKS                       R6 R9 K51 ["bridges"]
      293 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["IXPService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["NotificationService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Version"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Packages"]
       30 GETTABLEKS                       R5 R5 K14 ["AssistantUI"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Constants"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Packages"]
       44 GETTABLEKS                       R7 R7 K16 ["DMNetworking"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Flags"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R4 K18 ["Utils"]
       56 GETTABLEKS                       R8 R8 K19 ["DataModelType"]
       58 GETIMPORT                        R9 K10 [require]
       60 GETTABLEKS                       R10 R0 K11 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Util"]
       64 GETTABLEKS                       R10 R10 K21 ["NotificationManagerStore"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K10 [require]
       69 GETTABLEKS                       R11 R0 K11 ["Src"]
       71 GETTABLEKS                       R11 R11 K20 ["Util"]
       73 GETTABLEKS                       R11 R11 K22 ["StudioExperimentalToolsListener"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K10 [require]
       78 GETTABLEKS                       R12 R0 K11 ["Src"]
       80 GETTABLEKS                       R12 R12 K20 ["Util"]
       82 GETTABLEKS                       R12 R12 K23 ["StudioGameMetadata"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K10 [require]
       87 GETTABLEKS                       R13 R0 K11 ["Src"]
       89 GETTABLEKS                       R13 R13 K20 ["Util"]
       91 GETTABLEKS                       R13 R13 K24 ["StudioIdentification"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K10 [require]
       96 GETTABLEKS                       R14 R0 K11 ["Src"]
       98 GETTABLEKS                       R14 R14 K25 ["Components"]
      100 GETTABLEKS                       R14 R14 K26 ["Contexts"]
      102 GETTABLEKS                       R14 R14 K27 ["StudioLLM"]
      104 GETTABLEKS                       R14 R14 K28 ["StudioLLMRequest"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K10 [require]
      109 GETTABLEKS                       R15 R0 K11 ["Src"]
      111 GETTABLEKS                       R15 R15 K20 ["Util"]
      113 GETTABLEKS                       R15 R15 K29 ["StudioNetworking"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K10 [require]
      118 GETTABLEKS                       R16 R0 K11 ["Src"]
      120 GETTABLEKS                       R16 R16 K20 ["Util"]
      122 GETTABLEKS                       R16 R16 K30 ["StudioNotificationManager"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K10 [require]
      127 GETTABLEKS                       R17 R0 K11 ["Src"]
      129 GETTABLEKS                       R17 R17 K20 ["Util"]
      131 GETTABLEKS                       R17 R17 K31 ["StudioPersistence"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K10 [require]
      136 GETTABLEKS                       R18 R0 K11 ["Src"]
      138 GETTABLEKS                       R18 R18 K20 ["Util"]
      140 GETTABLEKS                       R18 R18 K32 ["StudioScriptHelper"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K10 [require]
      145 GETTABLEKS                       R19 R0 K11 ["Src"]
      147 GETTABLEKS                       R19 R19 K20 ["Util"]
      149 GETTABLEKS                       R19 R19 K33 ["StudioTools"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K10 [require]
      154 GETTABLEKS                       R20 R0 K11 ["Src"]
      156 GETTABLEKS                       R20 R20 K34 ["Types"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K10 [require]
      161 GETTABLEKS                       R21 R0 K11 ["Src"]
      163 GETTABLEKS                       R21 R21 K20 ["Util"]
      165 GETTABLEKS                       R21 R21 K35 ["Resources"]
      167 GETTABLEKS                       R21 R21 K36 ["StudioEnvironment"]
      169 CALL                             R20 1 1
      170 GETIMPORT                        R21 K10 [require]
      172 GETTABLEKS                       R22 R0 K11 ["Src"]
      174 GETTABLEKS                       R22 R22 K37 ["Host"]
      176 GETTABLEKS                       R22 R22 K38 ["startMcpHost"]
      178 CALL                             R21 1 1
      179 GETIMPORT                        R22 K10 [require]
      181 GETTABLEKS                       R23 R0 K11 ["Src"]
      183 GETTABLEKS                       R23 R23 K20 ["Util"]
      185 GETTABLEKS                       R23 R23 K39 ["waitForGuestReady"]
      187 CALL                             R22 1 1
      188 GETTABLEKS                       R23 R4 K25 ["Components"]
      190 GETTABLEKS                       R23 R23 K40 ["TestLLM"]
      192 GETTABLEKS                       R23 R23 K41 ["TestLLMRequest"]
      194 GETTABLEKS                       R24 R4 K35 ["Resources"]
      196 GETTABLEKS                       R24 R24 K42 ["Localization"]
      198 GETTABLEKS                       R24 R24 K43 ["Translator"]
      200 GETTABLEKS                       R25 R4 K18 ["Utils"]
      202 GETTABLEKS                       R25 R25 K44 ["VersionResolver"]
      204 DUPCLOSURE                       R26 K45 [PROTO_3]
      205 CAPTURE                          VAL R25
      206 DUPCLOSURE                       R27 K46 [PROTO_7]
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R20
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R23
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R14
      232 RETURN                           R27 1
