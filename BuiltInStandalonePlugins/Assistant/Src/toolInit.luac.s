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
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R2
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R3 K1 [pcall]
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+8]
       10 GETIMPORT                        R5 K3 [warn]
       12 LOADK                            R6 K4 ["Failed to track Assistant plugin version mismatch: %*"]
       13 MOVE                             R8 R4
       14 NAMECALL                         R6 R6 K5 ["format"]
       16 CALL                             R6 2 1
       17 CALL                             R5 1 0
       18 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["Types"]
        6 GETTABLEKS                       R1 R1 K1 ["Edit"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+11]
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K2 ["Identity"]
       14 GETTABLEKS                       R2 R2 K3 ["Standalone"]
       16 LOADB                            R3 0
       17 NAMECALL                         R0 R0 K4 ["Fire"]
       19 CALL                             R0 3 0
       20 GETUPVAL                         R0 5
       21 NAMECALL                         R0 R0 K5 ["Destroy"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 6
       25 GETTABLEKS                       R0 R0 K6 ["Guest"]
       27 GETTABLEKS                       R0 R0 K7 ["Environment"]
       29 GETTABLEKS                       R0 R0 K8 ["destroy"]
       31 GETUPVAL                         R1 7
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 8
       34 GETTABLEKS                       R0 R0 K8 ["destroy"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKS                       R3 K0 ["<dev>"] ; [+6]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["setVersionOverride"]
        6 GETUPVAL                         R4 0
        7 CALL                             R3 1 0
        8 JUMPIFNOT                        R2 ; [+10]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["create"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K3 ["set"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R3 5
       20 MOVE                             R4 R0
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 CALL                             R3 3 1
       24 GETUPVAL                         R4 6
       25 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantVersionMismatchWarning"]
       27 JUMPIFNOT                        R4 ; [+22]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K5 ["getVersion"]
       31 CALL                             R4 0 1
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R4
       37 FASTPCALL                        pcall 1 ; [+2]
       38 GETIMPORT                        R5 K7 [pcall]
       40 CALL                             R5 1 2
       41 JUMPIF                           R5 ; [+8]
       42 GETIMPORT                        R7 K9 [warn]
       44 LOADK                            R8 K10 ["Failed to track Assistant plugin version mismatch: %*"]
       45 MOVE                             R10 R6
       46 NAMECALL                         R8 R8 K11 ["format"]
       48 CALL                             R8 2 1
       49 CALL                             R7 1 0
       50 GETUPVAL                         R4 7
       51 MOVE                             R5 R1
       52 MOVE                             R6 R2
       53 MOVE                             R7 R3
       54 CALL                             R4 3 1
       55 GETUPVAL                         R5 8
       56 MOVE                             R6 R1
       57 MOVE                             R7 R3
       58 CALL                             R5 2 0
       59 GETUPVAL                         R5 9
       60 MOVE                             R6 R1
       61 MOVE                             R7 R3
       62 CALL                             R5 2 0
       63 GETUPVAL                         R5 10
       64 GETTABLEKS                       R5 R5 K12 ["initialize"]
       66 MOVE                             R6 R1
       67 MOVE                             R7 R3
       68 CALL                             R5 2 0
       69 GETUPVAL                         R5 11
       70 GETTABLEKS                       R5 R5 K12 ["initialize"]
       72 MOVE                             R6 R1
       73 MOVE                             R7 R3
       74 CALL                             R5 2 0
       75 GETUPVAL                         R5 12
       76 CALL                             R5 0 1
       77 JUMPIFNOT                        R5 ; [+6]
       78 GETUPVAL                         R5 13
       79 GETTABLEKS                       R5 R5 K12 ["initialize"]
       81 MOVE                             R6 R1
       82 MOVE                             R7 R3
       83 CALL                             R5 2 0
       84 GETUPVAL                         R5 14
       85 GETTABLEKS                       R5 R5 K13 ["getDataModelType"]
       87 CALL                             R5 0 1
       88 GETUPVAL                         R6 12
       89 CALL                             R6 0 1
       90 JUMPIF                           R6 ; [+4]
       91 GETUPVAL                         R7 6
       92 GETTABLEKS                       R7 R7 K14 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       94 NOT                              R6 R7
       95 GETUPVAL                         R7 15
       96 GETTABLEKS                       R7 R7 K15 ["event"]
       98 MOVE                             R8 R1
       99 GETUPVAL                         R9 16
      100 GETTABLEKS                       R9 R9 K16 ["EditDataModelAvailabilityChangedEventKey"]
      102 CALL                             R7 2 1
      103 JUMPIFNOT                        R6 ; [+16]
      104 GETUPVAL                         R8 14
      105 GETTABLEKS                       R8 R8 K17 ["Types"]
      107 GETTABLEKS                       R8 R8 K18 ["Edit"]
      109 JUMPIFNOTEQ                      R5 R8 ; [+10]
      111 GETUPVAL                         R10 17
      112 GETTABLEKS                       R10 R10 K19 ["Identity"]
      114 GETTABLEKS                       R10 R10 K20 ["Standalone"]
      116 LOADB                            R11 1
      117 NAMECALL                         R8 R7 K21 ["Fire"]
      119 CALL                             R8 3 0
      120 GETUPVAL                         R8 18
      121 GETTABLEKS                       R8 R8 K22 ["Guest"]
      123 GETTABLEKS                       R8 R8 K23 ["startGuest"]
      125 DUPTABLE                         R9 K28 [{"clientIdentifier", "net", "llmNet", "EnvironmentOverride"}]
      126 GETUPVAL                         R10 19
      127 GETTABLEKS                       R10 R10 K29 ["MCP_CLIENT_IDENTIFIER"]
      129 SETTABLEKS                       R10 R9 K24 ["clientIdentifier"]
      131 SETTABLEKS                       R1 R9 K25 ["net"]
      133 GETUPVAL                         R11 6
      134 GETTABLEKS                       R11 R11 K30 ["FFlagAssistantMultiPlayerAgents"]
      136 JUMPIFNOT                        R11 ; [+19]
      137 GETUPVAL                         R10 17
      138 GETTABLEKS                       R10 R10 K31 ["new"]
      140 DUPTABLE                         R11 K34 [{"implementation", "identity"}]
      141 GETUPVAL                         R12 17
      142 GETTABLEKS                       R12 R12 K35 ["ImplementationKind"]
      144 GETTABLEKS                       R12 R12 K36 ["Callback"]
      146 SETTABLEKS                       R12 R11 K32 ["implementation"]
      148 GETUPVAL                         R12 20
      149 GETTABLEKS                       R12 R12 K37 ["getSelfIdentity"]
      151 CALL                             R12 0 1
      152 SETTABLEKS                       R12 R11 K33 ["identity"]
      154 CALL                             R10 1 1
      155 JUMP                             ; [+1]
      156 MOVE                             R10 R1
      157 SETTABLEKS                       R10 R9 K26 ["llmNet"]
      159 SETTABLEKS                       R3 R9 K27 ["EnvironmentOverride"]
      161 CALL                             R8 1 0
      162 GETUPVAL                         R8 21
      163 GETTABLEKS                       R8 R8 K38 ["configureModelContextProtocol"]
      165 CALL                             R8 0 0
      166 JUMPIFNOT                        R2 ; [+29]
      167 GETUPVAL                         R8 18
      168 GETTABLEKS                       R8 R8 K39 ["Skills"]
      170 GETTABLEKS                       R8 R8 K40 ["getDisabledSetAsync"]
      172 MOVE                             R9 R3
      173 CALL                             R8 1 1
      174 GETUPVAL                         R9 18
      175 GETTABLEKS                       R9 R9 K39 ["Skills"]
      177 GETTABLEKS                       R9 R9 K41 ["getEnabledSetAsync"]
      179 MOVE                             R10 R3
      180 CALL                             R9 1 1
      181 GETUPVAL                         R10 18
      182 GETTABLEKS                       R10 R10 K39 ["Skills"]
      184 GETTABLEKS                       R10 R10 K42 ["registerAll"]
      186 MOVE                             R11 R8
      187 MOVE                             R12 R9
      188 CALL                             R10 2 0
      189 GETUPVAL                         R10 18
      190 GETTABLEKS                       R10 R10 K39 ["Skills"]
      192 GETTABLEKS                       R10 R10 K43 ["loadUserSkillsAsync"]
      194 MOVE                             R11 R3
      195 CALL                             R10 1 0
      196 GETUPVAL                         R8 18
      197 GETTABLEKS                       R8 R8 K44 ["Subagents"]
      199 GETTABLEKS                       R8 R8 K42 ["registerAll"]
      201 CALL                             R8 0 0
      202 GETUPVAL                         R8 18
      203 GETTABLEKS                       R8 R8 K44 ["Subagents"]
      205 GETTABLEKS                       R8 R8 K45 ["setRequestHandler"]
      207 GETUPVAL                         R10 6
      208 GETTABLEKS                       R10 R10 K46 ["FFlagDebugEnableTestLLMAdapter"]
      210 JUMPIFNOT                        R10 ; [+4]
      211 GETUPVAL                         R9 22
      212 GETTABLEKS                       R9 R9 K47 ["requestHandler"]
      214 JUMP                             ; [+5]
      215 GETUPVAL                         R9 23
      216 GETTABLEKS                       R9 R9 K48 ["createRequestHandler"]
      218 MOVE                             R10 R0
      219 CALL                             R9 1 1
      220 CALL                             R8 1 0
      221 GETUPVAL                         R8 18
      222 GETTABLEKS                       R8 R8 K49 ["Tools"]
      224 GETTABLEKS                       R8 R8 K50 ["createTools"]
      226 DUPTABLE                         R9 K52 [{"tools", "net"}]
      227 GETUPVAL                         R10 24
      228 GETTABLEKS                       R10 R10 K53 ["DefaultTools"]
      230 SETTABLEKS                       R10 R9 K51 ["tools"]
      232 SETTABLEKS                       R1 R9 K25 ["net"]
      234 CALL                             R8 1 1
      235 JUMPIFNOT                        R2 ; [+7]
      236 GETUPVAL                         R9 18
      237 GETTABLEKS                       R9 R9 K49 ["Tools"]
      239 GETTABLEKS                       R9 R9 K54 ["registerTools"]
      241 MOVE                             R10 R8
      242 CALL                             R9 1 0
      243 GETUPVAL                         R9 18
      244 GETTABLEKS                       R9 R9 K55 ["UIToolRegistry"]
      246 GETTABLEKS                       R9 R9 K56 ["registerModeCommands"]
      248 GETUPVAL                         R10 18
      249 GETTABLEKS                       R10 R10 K17 ["Types"]
      251 GETTABLEKS                       R10 R10 K57 ["getAssistantModeOrdered"]
      253 CALL                             R10 0 1
      254 DUPCLOSURE                       R11 K58 [PROTO_4]
      255 CAPTURE                          UPVAL U25
      256 CALL                             R9 2 0
      257 GETUPVAL                         R9 26
      258 GETTABLEKS                       R9 R9 K31 ["new"]
      260 GETUPVAL                         R10 27
      261 MOVE                             R11 R1
      262 GETUPVAL                         R12 24
      263 GETTABLEKS                       R12 R12 K59 ["ExperimentalTools"]
      265 GETUPVAL                         R13 24
      266 GETTABLEKS                       R13 R13 K60 ["ExperimentFeatureTools"]
      268 MOVE                             R14 R2
      269 CALL                             R9 5 1
      270 GETTABLEKS                       R10 R9 K61 ["trackUserLoggedIn"]
      272 CALL                             R10 0 0
      273 GETUPVAL                         R10 28
      274 GETTABLEKS                       R10 R10 K62 ["connect"]
      276 MOVE                             R11 R0
      277 MOVE                             R12 R1
      278 MOVE                             R13 R3
      279 CALL                             R10 3 0
      280 LOADNIL                          R10
      281 GETUPVAL                         R11 6
      282 GETTABLEKS                       R11 R11 K63 ["FFlagAssistantStartMcpServerWithoutUI"]
      284 JUMPIFNOT                        R11 ; [+67]
      285 JUMPIFNOT                        R2 ; [+66]
      286 GETUPVAL                         R11 6
      287 GETTABLEKS                       R11 R11 K64 ["FFlagMCPClientCountAsASetting"]
      289 JUMPIFNOT                        R11 ; [+7]
      290 GETUPVAL                         R11 29
      291 GETTABLEKS                       R11 R11 K31 ["new"]
      293 MOVE                             R12 R0
      294 CALL                             R11 1 1
      295 MOVE                             R10 R11
      296 JUMP                             ; [+5]
      297 GETUPVAL                         R11 29
      298 GETTABLEKS                       R11 R11 K31 ["new"]
      300 CALL                             R11 0 1
      301 MOVE                             R10 R11
      302 FASTCALL2K                       ASSERT R10 K65 ; [+5]
      304 MOVE                             R12 R10
      305 LOADK                            R13 K65 ["Failed to create external server controller"]
      306 GETIMPORT                        R11 K67 [assert]
      308 CALL                             R11 2 0
      309 GETTABLEKS                       R11 R10 K68 ["init"]
      311 CALL                             R11 0 0
      312 GETTABLEKS                       R11 R0 K69 ["Unloading"]
      314 NEWCLOSURE                       R13 P2
      315 CAPTURE                          REF R10
      316 NAMECALL                         R11 R11 K70 ["Connect"]
      318 CALL                             R11 2 0
      319 GETUPVAL                         R11 6
      320 GETTABLEKS                       R11 R11 K71 ["FFlagAssistantMcpCapturePerTurn"]
      322 JUMPIFNOT                        R11 ; [+29]
      323 GETUPVAL                         R11 30
      324 GETTABLEKS                       R11 R11 K31 ["new"]
      326 DUPTABLE                         R12 K76 [{"setupInstructionsObservable", "serverStateObservable", "isServerEnabledAsync", "plugin"}]
      327 GETTABLEKS                       R13 R10 K72 ["setupInstructionsObservable"]
      329 SETTABLEKS                       R13 R12 K72 ["setupInstructionsObservable"]
      331 GETTABLEKS                       R13 R10 K77 ["stateObservable"]
      333 SETTABLEKS                       R13 R12 K73 ["serverStateObservable"]
      335 GETTABLEKS                       R13 R10 K78 ["readIsEnabledAsync"]
      337 SETTABLEKS                       R13 R12 K74 ["isServerEnabledAsync"]
      339 SETTABLEKS                       R0 R12 K75 ["plugin"]
      341 CALL                             R11 1 1
      342 GETTABLEKS                       R12 R11 K68 ["init"]
      344 CALL                             R12 0 0
      345 GETTABLEKS                       R12 R0 K69 ["Unloading"]
      347 NEWCLOSURE                       R14 P3
      348 CAPTURE                          VAL R11
      349 NAMECALL                         R12 R12 K70 ["Connect"]
      351 CALL                             R12 2 0
      352 JUMPIFNOT                        R2 ; [+15]
      353 GETUPVAL                         R11 6
      354 GETTABLEKS                       R11 R11 K71 ["FFlagAssistantMcpCapturePerTurn"]
      356 JUMPIF                           R11 ; [+11]
      357 GETIMPORT                        R11 K81 [task.spawn]
      359 GETUPVAL                         R12 18
      360 GETTABLEKS                       R12 R12 K82 ["IntegrationManagement"]
      362 GETTABLEKS                       R12 R12 K83 ["McpCaptureHooks"]
      364 GETTABLEKS                       R12 R12 K84 ["cleanUpIfInstalledAsync"]
      366 MOVE                             R13 R3
      367 CALL                             R11 2 0
      368 GETTABLEKS                       R11 R0 K69 ["Unloading"]
      370 NEWCLOSURE                       R13 P4
      371 CAPTURE                          VAL R6
      372 CAPTURE                          VAL R5
      373 CAPTURE                          UPVAL U14
      374 CAPTURE                          VAL R7
      375 CAPTURE                          UPVAL U17
      376 CAPTURE                          VAL R1
      377 CAPTURE                          UPVAL U18
      378 CAPTURE                          VAL R3
      379 CAPTURE                          UPVAL U4
      380 NAMECALL                         R11 R11 K70 ["Connect"]
      382 CALL                             R11 2 0
      383 NEWCLOSURE                       R12 P5
      384 CAPTURE                          VAL R3
      385 CAPTURE                          UPVAL U1
      386 FASTPCALL                        pcall 1 ; [+2]
      387 GETIMPORT                        R11 K7 [pcall]
      389 CALL                             R11 1 0
      390 MOVE                             R11 R4
      391 CALL                             R11 0 0
      392 DUPTABLE                         R11 K86 [{"net", "externalServerController"}]
      393 SETTABLEKS                       R1 R11 K25 ["net"]
      395 SETTABLEKS                       R10 R11 K85 ["externalServerController"]
      397 CLOSEUPVALS                      R10
      398 RETURN                           R11 1

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
       51 GETTABLEKS                       R8 R8 K17 ["Host"]
       53 GETTABLEKS                       R8 R8 K18 ["ExternalServerController"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Src"]
       60 GETTABLEKS                       R9 R9 K19 ["Flags"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R0 K11 ["Src"]
       67 GETTABLEKS                       R10 R10 K17 ["Host"]
       69 GETTABLEKS                       R10 R10 K20 ["McpCapture"]
       71 GETTABLEKS                       R10 R10 K21 ["McpCaptureController"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R4 K22 ["Utils"]
       76 GETTABLEKS                       R10 R10 K23 ["DataModelType"]
       78 GETIMPORT                        R11 K10 [require]
       80 GETTABLEKS                       R12 R0 K11 ["Src"]
       82 GETTABLEKS                       R12 R12 K24 ["Util"]
       84 GETTABLEKS                       R12 R12 K25 ["NotificationManagerStore"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K10 [require]
       89 GETTABLEKS                       R13 R0 K11 ["Src"]
       91 GETTABLEKS                       R13 R13 K24 ["Util"]
       93 GETTABLEKS                       R13 R13 K26 ["StudioExperimentalToolsListener"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K10 [require]
       98 GETTABLEKS                       R14 R0 K11 ["Src"]
      100 GETTABLEKS                       R14 R14 K24 ["Util"]
      102 GETTABLEKS                       R14 R14 K27 ["StudioGameMetadata"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K10 [require]
      107 GETTABLEKS                       R15 R0 K11 ["Src"]
      109 GETTABLEKS                       R15 R15 K24 ["Util"]
      111 GETTABLEKS                       R15 R15 K28 ["StudioIdentification"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K10 [require]
      116 GETTABLEKS                       R16 R0 K11 ["Src"]
      118 GETTABLEKS                       R16 R16 K29 ["Components"]
      120 GETTABLEKS                       R16 R16 K30 ["Contexts"]
      122 GETTABLEKS                       R16 R16 K31 ["StudioLLM"]
      124 GETTABLEKS                       R16 R16 K32 ["StudioLLMRequest"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K10 [require]
      129 GETTABLEKS                       R17 R0 K11 ["Src"]
      131 GETTABLEKS                       R17 R17 K24 ["Util"]
      133 GETTABLEKS                       R17 R17 K33 ["StudioNotificationManager"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K10 [require]
      138 GETTABLEKS                       R18 R0 K11 ["Src"]
      140 GETTABLEKS                       R18 R18 K24 ["Util"]
      142 GETTABLEKS                       R18 R18 K34 ["StudioPersistence"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K10 [require]
      147 GETTABLEKS                       R19 R0 K11 ["Src"]
      149 GETTABLEKS                       R19 R19 K24 ["Util"]
      151 GETTABLEKS                       R19 R19 K35 ["StudioScriptHelper"]
      153 CALL                             R18 1 1
      154 GETIMPORT                        R19 K10 [require]
      156 GETTABLEKS                       R20 R0 K11 ["Src"]
      158 GETTABLEKS                       R20 R20 K24 ["Util"]
      160 GETTABLEKS                       R20 R20 K36 ["StudioTools"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K10 [require]
      165 GETTABLEKS                       R21 R0 K11 ["Src"]
      167 GETTABLEKS                       R21 R21 K37 ["Types"]
      169 CALL                             R20 1 1
      170 GETIMPORT                        R21 K10 [require]
      172 GETTABLEKS                       R22 R0 K11 ["Src"]
      174 GETTABLEKS                       R22 R22 K24 ["Util"]
      176 GETTABLEKS                       R22 R22 K38 ["Resources"]
      178 GETTABLEKS                       R22 R22 K39 ["StudioEnvironment"]
      180 CALL                             R21 1 1
      181 GETIMPORT                        R22 K10 [require]
      183 GETTABLEKS                       R23 R0 K11 ["Src"]
      185 GETTABLEKS                       R23 R23 K17 ["Host"]
      187 GETTABLEKS                       R23 R23 K40 ["startMcpHost"]
      189 CALL                             R22 1 1
      190 GETIMPORT                        R23 K10 [require]
      192 GETTABLEKS                       R24 R0 K11 ["Src"]
      194 GETTABLEKS                       R24 R24 K24 ["Util"]
      196 GETTABLEKS                       R24 R24 K41 ["waitForGuestReady"]
      198 CALL                             R23 1 1
      199 GETTABLEKS                       R24 R6 K42 ["Remote"]
      201 GETTABLEKS                       R25 R4 K22 ["Utils"]
      203 GETTABLEKS                       R25 R25 K43 ["NetworkingIdentity"]
      205 GETTABLEKS                       R26 R4 K29 ["Components"]
      207 GETTABLEKS                       R26 R26 K44 ["TestLLM"]
      209 GETTABLEKS                       R26 R26 K45 ["TestLLMRequest"]
      211 GETTABLEKS                       R27 R4 K38 ["Resources"]
      213 GETTABLEKS                       R27 R27 K46 ["Localization"]
      215 GETTABLEKS                       R27 R27 K47 ["Translator"]
      217 GETTABLEKS                       R28 R4 K22 ["Utils"]
      219 GETTABLEKS                       R28 R28 K48 ["VersionResolver"]
      221 GETTABLEKS                       R29 R4 K49 ["FlagUtils"]
      223 GETTABLEKS                       R29 R29 K50 ["getIsAssistantUseRemoteService"]
      225 GETTABLEKS                       R29 R29 K51 ["get"]
      227 GETTABLEKS                       R30 R4 K49 ["FlagUtils"]
      229 GETTABLEKS                       R30 R30 K50 ["getIsAssistantUseRemoteService"]
      231 GETTABLEKS                       R30 R30 K52 ["resolveAcrossDataModels"]
      233 GETTABLEKS                       R31 R4 K49 ["FlagUtils"]
      235 GETTABLEKS                       R31 R31 K53 ["getIsCreditMeteringLocalBackend"]
      237 GETTABLEKS                       R31 R31 K52 ["resolveAcrossDataModels"]
      239 DUPCLOSURE                       R32 K54 [PROTO_3]
      240 CAPTURE                          VAL R28
      241 DUPCLOSURE                       R33 K55 [PROTO_9]
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R21
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R30
      251 CAPTURE                          VAL R31
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R18
      254 CAPTURE                          VAL R29
      255 CAPTURE                          VAL R13
      256 CAPTURE                          VAL R10
      257 CAPTURE                          VAL R24
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R20
      262 CAPTURE                          VAL R25
      263 CAPTURE                          VAL R22
      264 CAPTURE                          VAL R26
      265 CAPTURE                          VAL R15
      266 CAPTURE                          VAL R19
      267 CAPTURE                          VAL R27
      268 CAPTURE                          VAL R12
      269 CAPTURE                          VAL R1
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R7
      272 CAPTURE                          VAL R9
      273 RETURN                           R33 1
