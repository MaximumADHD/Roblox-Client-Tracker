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
       52 JUMPIFNOT                        R2 ; [+9]
       53 GETIMPORT                        R3 K9 [warn]
       55 LOADK                            R4 K10 ["Assistant plugin version changed from %* to %*. This may cause instability when using Assistant or the MCP server. Please restart Roblox Studio to fix."]
       56 MOVE                             R6 R1
       57 GETUPVAL                         R7 3
       58 NAMECALL                         R4 R4 K11 ["format"]
       60 CALL                             R4 3 1
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 2
       63 LOADK                            R5 K2 ["AssistantVersionMismatch"]
       64 MOVE                             R6 R2
       65 NAMECALL                         R3 R3 K7 ["SetItem"]
       67 CALL                             R3 3 0
       68 LOADNIL                          R1
       69 RETURN                           R1 1

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
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["Types"]
        6 GETTABLEKS                       R1 R1 K1 ["Edit"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+14]
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K2 ["EditDataModelAvailabilityChangedEventKey"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K0 ["Types"]
       17 GETTABLEKS                       R3 R3 K3 ["Standalone"]
       19 LOADB                            R4 0
       20 NAMECALL                         R0 R0 K4 ["FireGuest"]
       22 CALL                             R0 4 0
       23 GETUPVAL                         R0 5
       24 GETTABLEKS                       R0 R0 K5 ["Destroy"]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R0 6
       28 GETTABLEKS                       R0 R0 K6 ["destroy"]
       30 CALL                             R0 0 0
       31 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKS                       R2 K0 ["<dev>"] ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["setVersionOverride"]
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 0
        8 NAMECALL                         R2 R1 K2 ["IsGuest"]
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["create"]
       15 GETUPVAL                         R3 3
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K4 ["set"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETUPVAL                         R2 5
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 6
       27 GETTABLEKS                       R3 R3 K5 ["FFlagAssistantVersionMismatchWarning"]
       29 JUMPIFNOT                        R3 ; [+21]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K6 ["getVersion"]
       33 CALL                             R3 0 1
       34 GETIMPORT                        R4 K8 [pcall]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CALL                             R4 1 2
       42 JUMPIF                           R4 ; [+8]
       43 GETIMPORT                        R6 K10 [warn]
       45 LOADK                            R7 K11 ["Failed to track Assistant plugin version mismatch: %*"]
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K12 ["format"]
       49 CALL                             R7 2 1
       50 CALL                             R6 1 0
       51 GETUPVAL                         R3 7
       52 MOVE                             R4 R1
       53 CALL                             R3 1 1
       54 GETUPVAL                         R4 8
       55 MOVE                             R5 R1
       56 MOVE                             R6 R2
       57 CALL                             R4 2 0
       58 GETUPVAL                         R4 9
       59 GETTABLEKS                       R4 R4 K13 ["initialize"]
       61 MOVE                             R5 R1
       62 MOVE                             R6 R0
       63 CALL                             R4 2 0
       64 GETUPVAL                         R4 10
       65 GETTABLEKS                       R4 R4 K13 ["initialize"]
       67 MOVE                             R5 R1
       68 CALL                             R4 1 0
       69 GETUPVAL                         R4 11
       70 CALL                             R4 0 1
       71 JUMPIFNOT                        R4 ; [+5]
       72 GETUPVAL                         R4 12
       73 GETTABLEKS                       R4 R4 K13 ["initialize"]
       75 MOVE                             R5 R1
       76 CALL                             R4 1 0
       77 GETUPVAL                         R4 13
       78 GETTABLEKS                       R4 R4 K14 ["getDataModelType"]
       80 CALL                             R4 0 1
       81 GETUPVAL                         R5 11
       82 CALL                             R5 0 1
       83 JUMPIF                           R5 ; [+4]
       84 GETUPVAL                         R6 6
       85 GETTABLEKS                       R6 R6 K15 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       87 NOT                              R5 R6
       88 JUMPIFNOT                        R5 ; [+19]
       89 GETUPVAL                         R6 13
       90 GETTABLEKS                       R6 R6 K16 ["Types"]
       92 GETTABLEKS                       R6 R6 K17 ["Edit"]
       94 JUMPIFNOTEQ                      R4 R6 ; [+13]
       96 GETUPVAL                         R8 14
       97 GETTABLEKS                       R8 R8 K18 ["EditDataModelAvailabilityChangedEventKey"]
       99 GETUPVAL                         R9 13
      100 GETTABLEKS                       R9 R9 K16 ["Types"]
      102 GETTABLEKS                       R9 R9 K19 ["Standalone"]
      104 LOADB                            R10 1
      105 NAMECALL                         R6 R1 K20 ["FireGuest"]
      107 CALL                             R6 4 0
      108 GETUPVAL                         R6 15
      109 GETTABLEKS                       R6 R6 K21 ["Guest"]
      111 GETTABLEKS                       R6 R6 K22 ["startGuest"]
      113 DUPTABLE                         R7 K27 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
      114 GETUPVAL                         R8 16
      115 GETTABLEKS                       R8 R8 K28 ["MCP_CLIENT_IDENTIFIER"]
      117 SETTABLEKS                       R8 R7 K23 ["clientIdentifier"]
      119 SETTABLEKS                       R1 R7 K24 ["networking"]
      121 GETUPVAL                         R9 6
      122 GETTABLEKS                       R9 R9 K29 ["FFlagAssistantMultiPlayerAgents"]
      124 JUMPIFNOT                        R9 ; [+14]
      125 GETUPVAL                         R8 17
      126 GETTABLEKS                       R8 R8 K30 ["new"]
      128 GETUPVAL                         R9 17
      129 GETTABLEKS                       R9 R9 K31 ["Implementations"]
      131 GETTABLEKS                       R9 R9 K32 ["CallbackNetworking"]
      133 GETTABLEKS                       R9 R9 K30 ["new"]
      135 DUPTABLE                         R10 K36 [{["isGuest"] = True, ["isHost"] = True}]
      136 CALL                             R9 1 -1
      137 CALL                             R8 -1 1
      138 JUMP                             ; [+1]
      139 MOVE                             R8 R1
      140 SETTABLEKS                       R8 R7 K25 ["LLMRequestNetworking"]
      142 SETTABLEKS                       R2 R7 K26 ["EnvironmentOverride"]
      144 CALL                             R6 1 2
      145 GETUPVAL                         R8 18
      146 GETTABLEKS                       R8 R8 K37 ["configureModelContextProtocol"]
      148 CALL                             R8 0 0
      149 NAMECALL                         R8 R1 K2 ["IsGuest"]
      151 CALL                             R8 1 1
      152 JUMPIFNOT                        R8 ; [+29]
      153 GETUPVAL                         R8 15
      154 GETTABLEKS                       R8 R8 K38 ["Skills"]
      156 GETTABLEKS                       R8 R8 K39 ["getDisabledSetAsync"]
      158 MOVE                             R9 R2
      159 CALL                             R8 1 1
      160 GETUPVAL                         R9 15
      161 GETTABLEKS                       R9 R9 K38 ["Skills"]
      163 GETTABLEKS                       R9 R9 K40 ["getEnabledSetAsync"]
      165 MOVE                             R10 R2
      166 CALL                             R9 1 1
      167 GETUPVAL                         R10 15
      168 GETTABLEKS                       R10 R10 K38 ["Skills"]
      170 GETTABLEKS                       R10 R10 K41 ["registerAll"]
      172 MOVE                             R11 R8
      173 MOVE                             R12 R9
      174 CALL                             R10 2 0
      175 GETUPVAL                         R10 15
      176 GETTABLEKS                       R10 R10 K38 ["Skills"]
      178 GETTABLEKS                       R10 R10 K42 ["loadUserSkillsAsync"]
      180 MOVE                             R11 R2
      181 CALL                             R10 1 0
      182 GETUPVAL                         R8 15
      183 GETTABLEKS                       R8 R8 K43 ["Subagents"]
      185 GETTABLEKS                       R8 R8 K41 ["registerAll"]
      187 CALL                             R8 0 0
      188 GETUPVAL                         R8 15
      189 GETTABLEKS                       R8 R8 K43 ["Subagents"]
      191 GETTABLEKS                       R8 R8 K44 ["setRequestHandler"]
      193 GETUPVAL                         R10 6
      194 GETTABLEKS                       R10 R10 K45 ["FFlagDebugEnableTestLLMAdapter"]
      196 JUMPIFNOT                        R10 ; [+4]
      197 GETUPVAL                         R9 19
      198 GETTABLEKS                       R9 R9 K46 ["requestHandler"]
      200 JUMP                             ; [+5]
      201 GETUPVAL                         R9 20
      202 GETTABLEKS                       R9 R9 K47 ["createRequestHandler"]
      204 MOVE                             R10 R0
      205 CALL                             R9 1 1
      206 CALL                             R8 1 0
      207 GETTABLEKS                       R8 R7 K48 ["bridges"]
      209 GETUPVAL                         R9 15
      210 GETTABLEKS                       R9 R9 K49 ["Tools"]
      212 GETTABLEKS                       R9 R9 K50 ["createTools"]
      214 DUPTABLE                         R10 K52 [{"tools", "networking", "bridges"}]
      215 GETUPVAL                         R11 21
      216 GETTABLEKS                       R11 R11 K53 ["DefaultTools"]
      218 SETTABLEKS                       R11 R10 K51 ["tools"]
      220 SETTABLEKS                       R1 R10 K24 ["networking"]
      222 SETTABLEKS                       R8 R10 K48 ["bridges"]
      224 CALL                             R9 1 1
      225 NAMECALL                         R10 R1 K2 ["IsGuest"]
      227 CALL                             R10 1 1
      228 JUMPIFNOT                        R10 ; [+7]
      229 GETUPVAL                         R10 15
      230 GETTABLEKS                       R10 R10 K49 ["Tools"]
      232 GETTABLEKS                       R10 R10 K54 ["registerTools"]
      234 MOVE                             R11 R9
      235 CALL                             R10 1 0
      236 GETUPVAL                         R10 15
      237 GETTABLEKS                       R10 R10 K55 ["UIToolRegistry"]
      239 GETTABLEKS                       R10 R10 K56 ["registerModeCommands"]
      241 GETUPVAL                         R11 15
      242 GETTABLEKS                       R11 R11 K16 ["Types"]
      244 GETTABLEKS                       R11 R11 K57 ["getAssistantModeOrdered"]
      246 CALL                             R11 0 1
      247 DUPCLOSURE                       R12 K58 [PROTO_4]
      248 CAPTURE                          UPVAL U22
      249 CALL                             R10 2 0
      250 GETUPVAL                         R10 23
      251 GETTABLEKS                       R10 R10 K30 ["new"]
      253 GETUPVAL                         R11 24
      254 MOVE                             R12 R1
      255 GETUPVAL                         R13 21
      256 GETTABLEKS                       R13 R13 K59 ["ExperimentalTools"]
      258 GETUPVAL                         R14 21
      259 GETTABLEKS                       R14 R14 K60 ["ExperimentFeatureTools"]
      261 MOVE                             R15 R8
      262 CALL                             R10 5 1
      263 GETTABLEKS                       R11 R10 K61 ["trackUserLoggedIn"]
      265 CALL                             R11 0 0
      266 GETUPVAL                         R11 25
      267 GETTABLEKS                       R11 R11 K62 ["connect"]
      269 MOVE                             R12 R0
      270 MOVE                             R13 R1
      271 MOVE                             R14 R2
      272 CALL                             R11 3 0
      273 GETTABLEKS                       R11 R0 K63 ["Unloading"]
      275 NEWCLOSURE                       R13 P2
      276 CAPTURE                          VAL R5
      277 CAPTURE                          VAL R4
      278 CAPTURE                          UPVAL U13
      279 CAPTURE                          VAL R1
      280 CAPTURE                          UPVAL U14
      281 CAPTURE                          UPVAL U26
      282 CAPTURE                          UPVAL U4
      283 NAMECALL                         R11 R11 K64 ["Connect"]
      285 CALL                             R11 2 0
      286 GETIMPORT                        R11 K8 [pcall]
      288 NEWCLOSURE                       R12 P3
      289 CAPTURE                          VAL R2
      290 CAPTURE                          UPVAL U1
      291 CALL                             R11 1 0
      292 MOVE                             R11 R3
      293 CALL                             R11 0 0
      294 DUPTABLE                         R11 K65 [{"bridges"}]
      295 SETTABLEKS                       R8 R11 K48 ["bridges"]
      297 RETURN                           R11 1

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
      204 GETTABLEKS                       R26 R4 K45 ["FlagUtils"]
      206 GETTABLEKS                       R26 R26 K46 ["getIsAssistantUseRemoteService"]
      208 GETTABLEKS                       R26 R26 K47 ["get"]
      210 GETTABLEKS                       R27 R4 K45 ["FlagUtils"]
      212 GETTABLEKS                       R27 R27 K46 ["getIsAssistantUseRemoteService"]
      214 GETTABLEKS                       R27 R27 K48 ["resolveAcrossDataModels"]
      216 DUPCLOSURE                       R28 K49 [PROTO_3]
      217 CAPTURE                          VAL R25
      218 DUPCLOSURE                       R29 K50 [PROTO_7]
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R27
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R26
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R23
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R1
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R14
      246 RETURN                           R29 1
