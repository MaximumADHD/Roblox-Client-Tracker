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
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETIMPORT                        R2 K1 [warn]
        8 LOADK                            R3 K2 ["Assistant plugin version changed from %* to %*. This may cause instability when using Assistant or the MCP server. Please restart Roblox Studio to fix."]
        9 MOVE                             R5 R0
       10 GETUPVAL                         R6 0
       11 NAMECALL                         R3 R3 K3 ["format"]
       13 CALL                             R3 3 1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 LOADK                            R4 K4 ["AssistantVersionMismatch"]
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K5 ["SetItem"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+27]
        2 DUPCLOSURE                       R0 K0 [PROTO_0]
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R1 2
        5 LOADK                            R3 K1 ["AssistantVersionMismatch"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["OnSetItem"]
        9 CALL                             R1 3 0
       10 GETUPVAL                         R1 2
       11 LOADK                            R3 K1 ["AssistantVersionMismatch"]
       12 LOADB                            R4 0
       13 NAMECALL                         R1 R1 K3 ["GetItem"]
       15 CALL                             R1 3 1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["setVersionMismatch"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R1 2
       22 LOADK                            R3 K5 ["AssistantVersion"]
       23 GETUPVAL                         R4 3
       24 NAMECALL                         R1 R1 K6 ["SetItem"]
       26 CALL                             R1 3 0
       27 LOADNIL                          R1
       28 RETURN                           R1 1
       29 NEWCLOSURE                       R0 P1
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U2
       32 GETUPVAL                         R1 2
       33 LOADK                            R3 K5 ["AssistantVersion"]
       34 MOVE                             R4 R0
       35 NAMECALL                         R1 R1 K2 ["OnSetItem"]
       37 CALL                             R1 3 0
       38 GETUPVAL                         R1 2
       39 LOADK                            R3 K5 ["AssistantVersion"]
       40 LOADNIL                          R4
       41 NAMECALL                         R1 R1 K3 ["GetItem"]
       43 CALL                             R1 3 1
       44 GETUPVAL                         R3 3
       45 JUMPIFNOTEQ                      R1 R3 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 JUMPIFNOT                        R2 ; [+9]
       50 GETIMPORT                        R3 K8 [warn]
       52 LOADK                            R4 K9 ["Assistant plugin version changed from %* to %*. This may cause instability when using Assistant or the MCP server. Please restart Roblox Studio to fix."]
       53 MOVE                             R6 R1
       54 GETUPVAL                         R7 3
       55 NAMECALL                         R4 R4 K10 ["format"]
       57 CALL                             R4 3 1
       58 CALL                             R3 1 0
       59 GETUPVAL                         R3 2
       60 LOADK                            R5 K1 ["AssistantVersionMismatch"]
       61 MOVE                             R6 R2
       62 NAMECALL                         R3 R3 K6 ["SetItem"]
       64 CALL                             R3 3 0
       65 LOADNIL                          R1
       66 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+8]
        9 GETIMPORT                        R5 K3 [warn]
       11 LOADK                            R6 K4 ["Failed to track Assistant plugin version mismatch: %*"]
       12 MOVE                             R8 R4
       13 NAMECALL                         R6 R6 K5 ["format"]
       15 CALL                             R6 2 1
       16 CALL                             R5 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R4 K1 ["%*Mode"]
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 NAMECALL                         R1 R1 K3 ["getText"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+36]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["Types"]
        6 GETTABLEKS                       R1 R1 K1 ["Edit"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+29]
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantUseNewDMNetworking"]
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R2 5
       16 GETTABLEKS                       R2 R2 K3 ["Identity"]
       18 GETTABLEKS                       R2 R2 K4 ["Standalone"]
       20 LOADB                            R3 0
       21 NAMECALL                         R0 R0 K5 ["Fire"]
       23 CALL                             R0 3 0
       24 JUMP                             ; [+13]
       25 GETUPVAL                         R0 6
       26 GETUPVAL                         R2 7
       27 GETTABLEKS                       R2 R2 K6 ["EditDataModelAvailabilityChangedEventKey"]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K0 ["Types"]
       32 GETTABLEKS                       R3 R3 K4 ["Standalone"]
       34 LOADB                            R4 0
       35 NAMECALL                         R0 R0 K7 ["FireGuest"]
       37 CALL                             R0 4 0
       38 GETUPVAL                         R0 3
       39 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantUseNewDMNetworking"]
       41 JUMPIFNOT                        R0 ; [+14]
       42 GETUPVAL                         R0 8
       43 NAMECALL                         R0 R0 K8 ["Destroy"]
       45 CALL                             R0 1 0
       46 GETUPVAL                         R0 9
       47 GETTABLEKS                       R0 R0 K9 ["Guest"]
       49 GETTABLEKS                       R0 R0 K10 ["Environment"]
       51 GETTABLEKS                       R0 R0 K11 ["destroy"]
       53 GETUPVAL                         R1 10
       54 CALL                             R0 1 0
       55 JUMP                             ; [+4]
       56 GETUPVAL                         R0 11
       57 GETTABLEKS                       R0 R0 K8 ["Destroy"]
       59 CALL                             R0 0 0
       60 GETUPVAL                         R0 12
       61 GETTABLEKS                       R0 R0 K11 ["destroy"]
       63 CALL                             R0 0 0
       64 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["printToStudioLogAsync"]
        3 LOADK                            R1 K1 ["AssistantVersion: %*"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["getVersion"]
        7 CALL                             R3 0 1
        8 NAMECALL                         R1 R1 K3 ["format"]
       10 CALL                             R1 2 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKS                       R4 K0 ["<dev>"] ; [+6]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["setVersionOverride"]
        6 GETUPVAL                         R5 0
        7 CALL                             R4 1 0
        8 JUMPIFNOT                        R3 ; [+10]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["create"]
       12 GETUPVAL                         R5 3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K3 ["set"]
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 GETUPVAL                         R4 5
       20 MOVE                             R5 R0
       21 MOVE                             R6 R1
       22 MOVE                             R7 R2
       23 MOVE                             R8 R3
       24 CALL                             R4 4 1
       25 GETUPVAL                         R5 6
       26 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantVersionMismatchWarning"]
       28 JUMPIFNOT                        R5 ; [+21]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K5 ["getVersion"]
       32 CALL                             R5 0 1
       33 GETIMPORT                        R6 K7 [pcall]
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R5
       40 CALL                             R6 1 2
       41 JUMPIF                           R6 ; [+8]
       42 GETIMPORT                        R8 K9 [warn]
       44 LOADK                            R9 K10 ["Failed to track Assistant plugin version mismatch: %*"]
       45 MOVE                             R11 R7
       46 NAMECALL                         R9 R9 K11 ["format"]
       48 CALL                             R9 2 1
       49 CALL                             R8 1 0
       50 GETUPVAL                         R5 7
       51 MOVE                             R6 R1
       52 MOVE                             R7 R2
       53 MOVE                             R8 R3
       54 MOVE                             R9 R4
       55 CALL                             R5 4 1
       56 GETUPVAL                         R6 8
       57 MOVE                             R7 R1
       58 MOVE                             R8 R2
       59 MOVE                             R9 R4
       60 CALL                             R6 3 0
       61 GETUPVAL                         R6 9
       62 MOVE                             R7 R1
       63 MOVE                             R8 R2
       64 MOVE                             R9 R4
       65 CALL                             R6 3 0
       66 GETUPVAL                         R6 10
       67 GETTABLEKS                       R6 R6 K12 ["initialize"]
       69 MOVE                             R7 R1
       70 MOVE                             R8 R2
       71 MOVE                             R9 R4
       72 CALL                             R6 3 0
       73 GETUPVAL                         R6 11
       74 GETTABLEKS                       R6 R6 K12 ["initialize"]
       76 MOVE                             R7 R1
       77 MOVE                             R8 R2
       78 MOVE                             R9 R4
       79 CALL                             R6 3 0
       80 GETUPVAL                         R6 12
       81 CALL                             R6 0 1
       82 JUMPIFNOT                        R6 ; [+7]
       83 GETUPVAL                         R6 13
       84 GETTABLEKS                       R6 R6 K12 ["initialize"]
       86 MOVE                             R7 R1
       87 MOVE                             R8 R2
       88 MOVE                             R9 R4
       89 CALL                             R6 3 0
       90 GETUPVAL                         R6 14
       91 GETTABLEKS                       R6 R6 K13 ["getDataModelType"]
       93 CALL                             R6 0 1
       94 GETUPVAL                         R7 12
       95 CALL                             R7 0 1
       96 JUMPIF                           R7 ; [+4]
       97 GETUPVAL                         R8 6
       98 GETTABLEKS                       R8 R8 K14 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
      100 NOT                              R7 R8
      101 GETUPVAL                         R8 15
      102 GETTABLEKS                       R8 R8 K15 ["event"]
      104 MOVE                             R9 R2
      105 GETUPVAL                         R10 16
      106 GETTABLEKS                       R10 R10 K16 ["EditDataModelAvailabilityChangedEventKey"]
      108 CALL                             R8 2 1
      109 JUMPIFNOT                        R7 ; [+33]
      110 GETUPVAL                         R9 14
      111 GETTABLEKS                       R9 R9 K17 ["Types"]
      113 GETTABLEKS                       R9 R9 K18 ["Edit"]
      115 JUMPIFNOTEQ                      R6 R9 ; [+27]
      117 GETUPVAL                         R9 6
      118 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantUseNewDMNetworking"]
      120 JUMPIFNOT                        R9 ; [+10]
      121 GETUPVAL                         R11 17
      122 GETTABLEKS                       R11 R11 K20 ["Identity"]
      124 GETTABLEKS                       R11 R11 K21 ["Standalone"]
      126 LOADB                            R12 1
      127 NAMECALL                         R9 R8 K22 ["Fire"]
      129 CALL                             R9 3 0
      130 JUMP                             ; [+12]
      131 GETUPVAL                         R11 16
      132 GETTABLEKS                       R11 R11 K16 ["EditDataModelAvailabilityChangedEventKey"]
      134 GETUPVAL                         R12 14
      135 GETTABLEKS                       R12 R12 K17 ["Types"]
      137 GETTABLEKS                       R12 R12 K21 ["Standalone"]
      139 LOADB                            R13 1
      140 NAMECALL                         R9 R1 K23 ["FireGuest"]
      142 CALL                             R9 4 0
      143 GETUPVAL                         R9 18
      144 GETTABLEKS                       R9 R9 K24 ["Guest"]
      146 GETTABLEKS                       R9 R9 K25 ["startGuest"]
      148 DUPTABLE                         R10 K32 [{"clientIdentifier", "networkingOLD", "net", "LLMRequestNetworkingOLD", "llmNet", "EnvironmentOverride"}]
      149 GETUPVAL                         R11 19
      150 GETTABLEKS                       R11 R11 K33 ["MCP_CLIENT_IDENTIFIER"]
      152 SETTABLEKS                       R11 R10 K26 ["clientIdentifier"]
      154 SETTABLEKS                       R1 R10 K27 ["networkingOLD"]
      156 SETTABLEKS                       R2 R10 K28 ["net"]
      158 GETUPVAL                         R12 6
      159 GETTABLEKS                       R12 R12 K19 ["FFlagAssistantUseNewDMNetworking"]
      161 JUMPIFNOT                        R12 ; [+2]
      162 LOADNIL                          R11
      163 JUMP                             ; [+19]
      164 GETUPVAL                         R12 6
      165 GETTABLEKS                       R12 R12 K34 ["FFlagAssistantMultiPlayerAgents"]
      167 JUMPIFNOT                        R12 ; [+14]
      168 GETUPVAL                         R11 20
      169 GETTABLEKS                       R11 R11 K35 ["new"]
      171 GETUPVAL                         R12 20
      172 GETTABLEKS                       R12 R12 K36 ["Implementations"]
      174 GETTABLEKS                       R12 R12 K37 ["CallbackNetworking"]
      176 GETTABLEKS                       R12 R12 K35 ["new"]
      178 DUPTABLE                         R13 K41 [{["isGuest"] = True, ["isHost"] = True}]
      179 CALL                             R12 1 -1
      180 CALL                             R11 -1 1
      181 JUMP                             ; [+1]
      182 MOVE                             R11 R1
      183 SETTABLEKS                       R11 R10 K29 ["LLMRequestNetworkingOLD"]
      185 GETUPVAL                         R12 6
      186 GETTABLEKS                       R12 R12 K19 ["FFlagAssistantUseNewDMNetworking"]
      188 JUMPIF                           R12 ; [+2]
      189 LOADNIL                          R11
      190 JUMP                             ; [+24]
      191 GETUPVAL                         R12 6
      192 GETTABLEKS                       R12 R12 K34 ["FFlagAssistantMultiPlayerAgents"]
      194 JUMPIFNOT                        R12 ; [+19]
      195 GETUPVAL                         R11 17
      196 GETTABLEKS                       R11 R11 K35 ["new"]
      198 DUPTABLE                         R12 K44 [{"implementation", "identity"}]
      199 GETUPVAL                         R13 17
      200 GETTABLEKS                       R13 R13 K45 ["ImplementationKind"]
      202 GETTABLEKS                       R13 R13 K46 ["Callback"]
      204 SETTABLEKS                       R13 R12 K42 ["implementation"]
      206 GETUPVAL                         R13 21
      207 GETTABLEKS                       R13 R13 K47 ["getSelfIdentity"]
      209 CALL                             R13 0 1
      210 SETTABLEKS                       R13 R12 K43 ["identity"]
      212 CALL                             R11 1 1
      213 JUMP                             ; [+1]
      214 MOVE                             R11 R2
      215 SETTABLEKS                       R11 R10 K30 ["llmNet"]
      217 SETTABLEKS                       R4 R10 K31 ["EnvironmentOverride"]
      219 CALL                             R9 1 2
      220 GETUPVAL                         R11 22
      221 GETTABLEKS                       R11 R11 K48 ["configureModelContextProtocol"]
      223 CALL                             R11 0 0
      224 JUMPIFNOT                        R3 ; [+29]
      225 GETUPVAL                         R11 18
      226 GETTABLEKS                       R11 R11 K49 ["Skills"]
      228 GETTABLEKS                       R11 R11 K50 ["getDisabledSetAsync"]
      230 MOVE                             R12 R4
      231 CALL                             R11 1 1
      232 GETUPVAL                         R12 18
      233 GETTABLEKS                       R12 R12 K49 ["Skills"]
      235 GETTABLEKS                       R12 R12 K51 ["getEnabledSetAsync"]
      237 MOVE                             R13 R4
      238 CALL                             R12 1 1
      239 GETUPVAL                         R13 18
      240 GETTABLEKS                       R13 R13 K49 ["Skills"]
      242 GETTABLEKS                       R13 R13 K52 ["registerAll"]
      244 MOVE                             R14 R11
      245 MOVE                             R15 R12
      246 CALL                             R13 2 0
      247 GETUPVAL                         R13 18
      248 GETTABLEKS                       R13 R13 K49 ["Skills"]
      250 GETTABLEKS                       R13 R13 K53 ["loadUserSkillsAsync"]
      252 MOVE                             R14 R4
      253 CALL                             R13 1 0
      254 GETUPVAL                         R11 18
      255 GETTABLEKS                       R11 R11 K54 ["Subagents"]
      257 GETTABLEKS                       R11 R11 K52 ["registerAll"]
      259 CALL                             R11 0 0
      260 GETUPVAL                         R11 18
      261 GETTABLEKS                       R11 R11 K54 ["Subagents"]
      263 GETTABLEKS                       R11 R11 K55 ["setRequestHandler"]
      265 GETUPVAL                         R13 6
      266 GETTABLEKS                       R13 R13 K56 ["FFlagDebugEnableTestLLMAdapter"]
      268 JUMPIFNOT                        R13 ; [+4]
      269 GETUPVAL                         R12 23
      270 GETTABLEKS                       R12 R12 K57 ["requestHandler"]
      272 JUMP                             ; [+5]
      273 GETUPVAL                         R12 24
      274 GETTABLEKS                       R12 R12 K58 ["createRequestHandler"]
      276 MOVE                             R13 R0
      277 CALL                             R12 1 1
      278 CALL                             R11 1 0
      279 GETTABLEKS                       R11 R10 K59 ["bridges"]
      281 GETUPVAL                         R12 18
      282 GETTABLEKS                       R12 R12 K60 ["Tools"]
      284 GETTABLEKS                       R12 R12 K61 ["createTools"]
      286 DUPTABLE                         R13 K63 [{"tools", "networkingOLD", "net", "bridges"}]
      287 GETUPVAL                         R14 25
      288 GETTABLEKS                       R14 R14 K64 ["DefaultTools"]
      290 SETTABLEKS                       R14 R13 K62 ["tools"]
      292 SETTABLEKS                       R1 R13 K27 ["networkingOLD"]
      294 SETTABLEKS                       R2 R13 K28 ["net"]
      296 SETTABLEKS                       R11 R13 K59 ["bridges"]
      298 CALL                             R12 1 1
      299 JUMPIFNOT                        R3 ; [+7]
      300 GETUPVAL                         R13 18
      301 GETTABLEKS                       R13 R13 K60 ["Tools"]
      303 GETTABLEKS                       R13 R13 K65 ["registerTools"]
      305 MOVE                             R14 R12
      306 CALL                             R13 1 0
      307 GETUPVAL                         R13 18
      308 GETTABLEKS                       R13 R13 K66 ["UIToolRegistry"]
      310 GETTABLEKS                       R13 R13 K67 ["registerModeCommands"]
      312 GETUPVAL                         R14 18
      313 GETTABLEKS                       R14 R14 K17 ["Types"]
      315 GETTABLEKS                       R14 R14 K68 ["getAssistantModeOrdered"]
      317 CALL                             R14 0 1
      318 DUPCLOSURE                       R15 K69 [PROTO_4]
      319 CAPTURE                          UPVAL U26
      320 CALL                             R13 2 0
      321 GETUPVAL                         R13 27
      322 GETTABLEKS                       R13 R13 K35 ["new"]
      324 GETUPVAL                         R14 28
      325 MOVE                             R15 R1
      326 MOVE                             R16 R2
      327 GETUPVAL                         R17 25
      328 GETTABLEKS                       R17 R17 K70 ["ExperimentalTools"]
      330 GETUPVAL                         R18 25
      331 GETTABLEKS                       R18 R18 K71 ["ExperimentFeatureTools"]
      333 MOVE                             R19 R11
      334 MOVE                             R20 R3
      335 CALL                             R13 7 1
      336 GETTABLEKS                       R14 R13 K72 ["trackUserLoggedIn"]
      338 CALL                             R14 0 0
      339 GETUPVAL                         R14 29
      340 GETTABLEKS                       R14 R14 K73 ["connect"]
      342 MOVE                             R15 R0
      343 MOVE                             R16 R1
      344 MOVE                             R17 R2
      345 MOVE                             R18 R4
      346 CALL                             R14 4 0
      347 LOADNIL                          R14
      348 GETUPVAL                         R15 6
      349 GETTABLEKS                       R15 R15 K74 ["FFlagAssistantStartMcpServerWithoutUI"]
      351 JUMPIFNOT                        R15 ; [+34]
      352 JUMPIFNOT                        R3 ; [+33]
      353 GETUPVAL                         R15 6
      354 GETTABLEKS                       R15 R15 K75 ["FFlagMCPClientCountAsASetting"]
      356 JUMPIFNOT                        R15 ; [+7]
      357 GETUPVAL                         R15 30
      358 GETTABLEKS                       R15 R15 K35 ["new"]
      360 MOVE                             R16 R0
      361 CALL                             R15 1 1
      362 MOVE                             R14 R15
      363 JUMP                             ; [+5]
      364 GETUPVAL                         R15 30
      365 GETTABLEKS                       R15 R15 K35 ["new"]
      367 CALL                             R15 0 1
      368 MOVE                             R14 R15
      369 FASTCALL2K                       ASSERT R14 K76 ; [+5]
      371 MOVE                             R16 R14
      372 LOADK                            R17 K76 ["Failed to create external server controller"]
      373 GETIMPORT                        R15 K78 [assert]
      375 CALL                             R15 2 0
      376 GETTABLEKS                       R15 R14 K79 ["init"]
      378 CALL                             R15 0 0
      379 GETTABLEKS                       R15 R0 K80 ["Unloading"]
      381 NEWCLOSURE                       R17 P2
      382 CAPTURE                          REF R14
      383 NAMECALL                         R15 R15 K81 ["Connect"]
      385 CALL                             R15 2 0
      386 GETTABLEKS                       R15 R0 K80 ["Unloading"]
      388 NEWCLOSURE                       R17 P3
      389 CAPTURE                          VAL R7
      390 CAPTURE                          VAL R6
      391 CAPTURE                          UPVAL U14
      392 CAPTURE                          UPVAL U6
      393 CAPTURE                          VAL R8
      394 CAPTURE                          UPVAL U17
      395 CAPTURE                          VAL R1
      396 CAPTURE                          UPVAL U16
      397 CAPTURE                          VAL R2
      398 CAPTURE                          UPVAL U18
      399 CAPTURE                          VAL R4
      400 CAPTURE                          UPVAL U31
      401 CAPTURE                          UPVAL U4
      402 NAMECALL                         R15 R15 K81 ["Connect"]
      404 CALL                             R15 2 0
      405 GETIMPORT                        R15 K7 [pcall]
      407 NEWCLOSURE                       R16 P4
      408 CAPTURE                          VAL R4
      409 CAPTURE                          UPVAL U1
      410 CALL                             R15 1 0
      411 MOVE                             R15 R5
      412 CALL                             R15 0 0
      413 DUPTABLE                         R15 K83 [{"bridges", "net", "externalServerController"}]
      414 SETTABLEKS                       R11 R15 K59 ["bridges"]
      416 SETTABLEKS                       R2 R15 K28 ["net"]
      418 SETTABLEKS                       R14 R15 K82 ["externalServerController"]
      420 CLOSEUPVALS                      R14
      421 RETURN                           R15 1

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
       49 GETTABLEKS                       R8 R0 K13 ["Packages"]
       51 GETTABLEKS                       R8 R8 K17 ["DMNetworkingOLD"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Src"]
       58 GETTABLEKS                       R9 R9 K18 ["Host"]
       60 GETTABLEKS                       R9 R9 K19 ["ExternalServerController"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R0 K11 ["Src"]
       67 GETTABLEKS                       R10 R10 K20 ["Flags"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R4 K21 ["Utils"]
       72 GETTABLEKS                       R10 R10 K22 ["DataModelType"]
       74 GETIMPORT                        R11 K10 [require]
       76 GETTABLEKS                       R12 R0 K11 ["Src"]
       78 GETTABLEKS                       R12 R12 K23 ["Util"]
       80 GETTABLEKS                       R12 R12 K24 ["NotificationManagerStore"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K10 [require]
       85 GETTABLEKS                       R13 R0 K11 ["Src"]
       87 GETTABLEKS                       R13 R13 K23 ["Util"]
       89 GETTABLEKS                       R13 R13 K25 ["StudioExperimentalToolsListener"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K10 [require]
       94 GETTABLEKS                       R14 R0 K11 ["Src"]
       96 GETTABLEKS                       R14 R14 K23 ["Util"]
       98 GETTABLEKS                       R14 R14 K26 ["StudioGameMetadata"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K10 [require]
      103 GETTABLEKS                       R15 R0 K11 ["Src"]
      105 GETTABLEKS                       R15 R15 K23 ["Util"]
      107 GETTABLEKS                       R15 R15 K27 ["StudioIdentification"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K10 [require]
      112 GETTABLEKS                       R16 R0 K11 ["Src"]
      114 GETTABLEKS                       R16 R16 K28 ["Components"]
      116 GETTABLEKS                       R16 R16 K29 ["Contexts"]
      118 GETTABLEKS                       R16 R16 K30 ["StudioLLM"]
      120 GETTABLEKS                       R16 R16 K31 ["StudioLLMRequest"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K10 [require]
      125 GETTABLEKS                       R17 R0 K11 ["Src"]
      127 GETTABLEKS                       R17 R17 K23 ["Util"]
      129 GETTABLEKS                       R17 R17 K32 ["StudioNetworkingOLD"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K10 [require]
      134 GETTABLEKS                       R18 R0 K11 ["Src"]
      136 GETTABLEKS                       R18 R18 K23 ["Util"]
      138 GETTABLEKS                       R18 R18 K33 ["StudioNotificationManager"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K10 [require]
      143 GETTABLEKS                       R19 R0 K11 ["Src"]
      145 GETTABLEKS                       R19 R19 K23 ["Util"]
      147 GETTABLEKS                       R19 R19 K34 ["StudioPersistence"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K10 [require]
      152 GETTABLEKS                       R20 R0 K11 ["Src"]
      154 GETTABLEKS                       R20 R20 K23 ["Util"]
      156 GETTABLEKS                       R20 R20 K35 ["StudioScriptHelper"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K10 [require]
      161 GETTABLEKS                       R21 R0 K11 ["Src"]
      163 GETTABLEKS                       R21 R21 K23 ["Util"]
      165 GETTABLEKS                       R21 R21 K36 ["StudioTools"]
      167 CALL                             R20 1 1
      168 GETIMPORT                        R21 K10 [require]
      170 GETTABLEKS                       R22 R0 K11 ["Src"]
      172 GETTABLEKS                       R22 R22 K37 ["Types"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K10 [require]
      177 GETTABLEKS                       R23 R0 K11 ["Src"]
      179 GETTABLEKS                       R23 R23 K23 ["Util"]
      181 GETTABLEKS                       R23 R23 K38 ["Resources"]
      183 GETTABLEKS                       R23 R23 K39 ["StudioEnvironment"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K10 [require]
      188 GETTABLEKS                       R24 R0 K11 ["Src"]
      190 GETTABLEKS                       R24 R24 K18 ["Host"]
      192 GETTABLEKS                       R24 R24 K40 ["startMcpHost"]
      194 CALL                             R23 1 1
      195 GETIMPORT                        R24 K10 [require]
      197 GETTABLEKS                       R25 R0 K11 ["Src"]
      199 GETTABLEKS                       R25 R25 K23 ["Util"]
      201 GETTABLEKS                       R25 R25 K41 ["waitForGuestReady"]
      203 CALL                             R24 1 1
      204 GETTABLEKS                       R25 R6 K42 ["Remote"]
      206 GETTABLEKS                       R26 R4 K21 ["Utils"]
      208 GETTABLEKS                       R26 R26 K43 ["NetworkingIdentity"]
      210 GETTABLEKS                       R27 R4 K28 ["Components"]
      212 GETTABLEKS                       R27 R27 K44 ["TestLLM"]
      214 GETTABLEKS                       R27 R27 K45 ["TestLLMRequest"]
      216 GETTABLEKS                       R28 R4 K38 ["Resources"]
      218 GETTABLEKS                       R28 R28 K46 ["Localization"]
      220 GETTABLEKS                       R28 R28 K47 ["Translator"]
      222 GETTABLEKS                       R29 R4 K21 ["Utils"]
      224 GETTABLEKS                       R29 R29 K48 ["VersionResolver"]
      226 GETTABLEKS                       R30 R4 K49 ["FlagUtils"]
      228 GETTABLEKS                       R30 R30 K50 ["getIsAssistantUseRemoteService"]
      230 GETTABLEKS                       R30 R30 K51 ["get"]
      232 GETTABLEKS                       R31 R4 K49 ["FlagUtils"]
      234 GETTABLEKS                       R31 R31 K50 ["getIsAssistantUseRemoteService"]
      236 GETTABLEKS                       R31 R31 K52 ["resolveAcrossDataModels"]
      238 GETTABLEKS                       R32 R4 K49 ["FlagUtils"]
      240 GETTABLEKS                       R32 R32 K53 ["getIsCreditMeteringLocalBackend"]
      242 GETTABLEKS                       R32 R32 K52 ["resolveAcrossDataModels"]
      244 DUPCLOSURE                       R33 K54 [PROTO_3]
      245 CAPTURE                          VAL R29
      246 DUPCLOSURE                       R34 K55 [PROTO_8]
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R2
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R22
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R31
      256 CAPTURE                          VAL R32
      257 CAPTURE                          VAL R14
      258 CAPTURE                          VAL R19
      259 CAPTURE                          VAL R30
      260 CAPTURE                          VAL R13
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R25
      263 CAPTURE                          VAL R5
      264 CAPTURE                          VAL R6
      265 CAPTURE                          VAL R4
      266 CAPTURE                          VAL R21
      267 CAPTURE                          VAL R7
      268 CAPTURE                          VAL R26
      269 CAPTURE                          VAL R23
      270 CAPTURE                          VAL R27
      271 CAPTURE                          VAL R15
      272 CAPTURE                          VAL R20
      273 CAPTURE                          VAL R28
      274 CAPTURE                          VAL R12
      275 CAPTURE                          VAL R1
      276 CAPTURE                          VAL R18
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R16
      279 RETURN                           R34 1
