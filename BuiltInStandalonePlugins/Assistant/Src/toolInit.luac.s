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
       28 GETTABLEKS                       R0 R0 K6 ["FFlagAssistantNotificationManager"]
       30 JUMPIFNOT                        R0 ; [+4]
       31 GETUPVAL                         R0 7
       32 GETTABLEKS                       R0 R0 K7 ["destroy"]
       34 CALL                             R0 0 0
       35 RETURN                           R0 0

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
       59 GETUPVAL                         R4 8
       60 MOVE                             R5 R1
       61 MOVE                             R6 R2
       62 CALL                             R4 2 0
       63 GETUPVAL                         R4 9
       64 GETTABLEKS                       R4 R4 K14 ["initialize"]
       66 MOVE                             R5 R1
       67 MOVE                             R6 R0
       68 CALL                             R4 2 0
       69 GETUPVAL                         R4 10
       70 GETTABLEKS                       R4 R4 K14 ["initialize"]
       72 MOVE                             R5 R1
       73 CALL                             R4 1 0
       74 GETUPVAL                         R4 11
       75 CALL                             R4 0 1
       76 JUMPIFNOT                        R4 ; [+5]
       77 GETUPVAL                         R4 12
       78 GETTABLEKS                       R4 R4 K14 ["initialize"]
       80 MOVE                             R5 R1
       81 CALL                             R4 1 0
       82 GETUPVAL                         R4 13
       83 GETTABLEKS                       R4 R4 K15 ["getDataModelType"]
       85 CALL                             R4 0 1
       86 GETUPVAL                         R5 11
       87 CALL                             R5 0 1
       88 JUMPIF                           R5 ; [+4]
       89 GETUPVAL                         R6 2
       90 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       92 NOT                              R5 R6
       93 JUMPIFNOT                        R5 ; [+19]
       94 GETUPVAL                         R6 13
       95 GETTABLEKS                       R6 R6 K17 ["Types"]
       97 GETTABLEKS                       R6 R6 K18 ["Edit"]
       99 JUMPIFNOTEQ                      R4 R6 ; [+13]
      101 GETUPVAL                         R8 14
      102 GETTABLEKS                       R8 R8 K19 ["EditDataModelAvailabilityChangedEventKey"]
      104 GETUPVAL                         R9 13
      105 GETTABLEKS                       R9 R9 K17 ["Types"]
      107 GETTABLEKS                       R9 R9 K20 ["Standalone"]
      109 LOADB                            R10 1
      110 NAMECALL                         R6 R1 K21 ["FireGuest"]
      112 CALL                             R6 4 0
      113 GETUPVAL                         R6 15
      114 GETTABLEKS                       R6 R6 K22 ["Guest"]
      116 GETTABLEKS                       R6 R6 K23 ["startGuest"]
      118 DUPTABLE                         R7 K28 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
      119 GETUPVAL                         R8 16
      120 GETTABLEKS                       R8 R8 K29 ["MCP_CLIENT_IDENTIFIER"]
      122 SETTABLEKS                       R8 R7 K24 ["clientIdentifier"]
      124 SETTABLEKS                       R1 R7 K25 ["networking"]
      126 GETUPVAL                         R9 2
      127 GETTABLEKS                       R9 R9 K30 ["FFlagAssistantMultiPlayerAgents"]
      129 JUMPIFNOT                        R9 ; [+14]
      130 GETUPVAL                         R8 17
      131 GETTABLEKS                       R8 R8 K31 ["new"]
      133 GETUPVAL                         R9 17
      134 GETTABLEKS                       R9 R9 K32 ["Implementations"]
      136 GETTABLEKS                       R9 R9 K33 ["CallbackNetworking"]
      138 GETTABLEKS                       R9 R9 K31 ["new"]
      140 DUPTABLE                         R10 K37 [{["isGuest"] = True, ["isHost"] = True}]
      141 CALL                             R9 1 -1
      142 CALL                             R8 -1 1
      143 JUMP                             ; [+1]
      144 MOVE                             R8 R1
      145 SETTABLEKS                       R8 R7 K26 ["LLMRequestNetworking"]
      147 SETTABLEKS                       R2 R7 K27 ["EnvironmentOverride"]
      149 CALL                             R6 1 2
      150 GETUPVAL                         R8 18
      151 GETTABLEKS                       R8 R8 K38 ["configureModelContextProtocol"]
      153 CALL                             R8 0 0
      154 NAMECALL                         R8 R1 K3 ["IsGuest"]
      156 CALL                             R8 1 1
      157 JUMPIFNOT                        R8 ; [+21]
      158 GETUPVAL                         R8 15
      159 GETTABLEKS                       R8 R8 K39 ["Skills"]
      161 GETTABLEKS                       R8 R8 K40 ["getDisabledSetAsync"]
      163 MOVE                             R9 R2
      164 CALL                             R8 1 1
      165 GETUPVAL                         R9 15
      166 GETTABLEKS                       R9 R9 K39 ["Skills"]
      168 GETTABLEKS                       R9 R9 K41 ["registerAll"]
      170 MOVE                             R10 R8
      171 CALL                             R9 1 0
      172 GETUPVAL                         R9 15
      173 GETTABLEKS                       R9 R9 K39 ["Skills"]
      175 GETTABLEKS                       R9 R9 K42 ["loadUserSkillsAsync"]
      177 MOVE                             R10 R2
      178 CALL                             R9 1 0
      179 GETUPVAL                         R8 15
      180 GETTABLEKS                       R8 R8 K43 ["Subagents"]
      182 GETTABLEKS                       R8 R8 K41 ["registerAll"]
      184 CALL                             R8 0 0
      185 GETUPVAL                         R8 15
      186 GETTABLEKS                       R8 R8 K43 ["Subagents"]
      188 GETTABLEKS                       R8 R8 K44 ["setRequestHandler"]
      190 GETUPVAL                         R10 2
      191 GETTABLEKS                       R10 R10 K45 ["FFlagDebugEnableTestLLMAdapter"]
      193 JUMPIFNOT                        R10 ; [+4]
      194 GETUPVAL                         R9 19
      195 GETTABLEKS                       R9 R9 K46 ["requestHandler"]
      197 JUMP                             ; [+7]
      198 GETUPVAL                         R9 20
      199 GETTABLEKS                       R9 R9 K47 ["createRequestHandler"]
      201 GETIMPORT                        R10 K49 [game]
      203 MOVE                             R11 R0
      204 CALL                             R9 2 1
      205 CALL                             R8 1 0
      206 GETTABLEKS                       R8 R7 K50 ["bridges"]
      208 GETUPVAL                         R9 15
      209 GETTABLEKS                       R9 R9 K51 ["Tools"]
      211 GETTABLEKS                       R9 R9 K52 ["createTools"]
      213 DUPTABLE                         R10 K54 [{"tools", "networking", "bridges"}]
      214 GETUPVAL                         R11 21
      215 GETTABLEKS                       R11 R11 K55 ["DefaultTools"]
      217 SETTABLEKS                       R11 R10 K53 ["tools"]
      219 SETTABLEKS                       R1 R10 K25 ["networking"]
      221 SETTABLEKS                       R8 R10 K50 ["bridges"]
      223 CALL                             R9 1 1
      224 NAMECALL                         R10 R1 K3 ["IsGuest"]
      226 CALL                             R10 1 1
      227 JUMPIFNOT                        R10 ; [+7]
      228 GETUPVAL                         R10 15
      229 GETTABLEKS                       R10 R10 K51 ["Tools"]
      231 GETTABLEKS                       R10 R10 K56 ["registerTools"]
      233 MOVE                             R11 R9
      234 CALL                             R10 1 0
      235 GETUPVAL                         R10 15
      236 GETTABLEKS                       R10 R10 K57 ["UIToolRegistry"]
      238 GETTABLEKS                       R10 R10 K58 ["registerModeCommands"]
      240 GETUPVAL                         R11 15
      241 GETTABLEKS                       R11 R11 K17 ["Types"]
      243 GETTABLEKS                       R11 R11 K59 ["getAssistantModeOrdered"]
      245 CALL                             R11 0 1
      246 DUPCLOSURE                       R12 K60 [PROTO_4]
      247 CAPTURE                          UPVAL U22
      248 CALL                             R10 2 0
      249 GETUPVAL                         R10 23
      250 GETTABLEKS                       R10 R10 K31 ["new"]
      252 GETUPVAL                         R11 24
      253 MOVE                             R12 R1
      254 GETUPVAL                         R13 21
      255 GETTABLEKS                       R13 R13 K61 ["ExperimentalTools"]
      257 GETUPVAL                         R14 21
      258 GETTABLEKS                       R14 R14 K62 ["ExperimentFeatureTools"]
      260 MOVE                             R15 R8
      261 CALL                             R10 5 1
      262 GETTABLEKS                       R11 R10 K63 ["trackUserLoggedIn"]
      264 CALL                             R11 0 0
      265 GETUPVAL                         R11 25
      266 GETTABLEKS                       R11 R11 K64 ["connect"]
      268 MOVE                             R12 R0
      269 MOVE                             R13 R1
      270 MOVE                             R14 R2
      271 CALL                             R11 3 0
      272 GETTABLEKS                       R11 R0 K65 ["Unloading"]
      274 NEWCLOSURE                       R13 P2
      275 CAPTURE                          VAL R5
      276 CAPTURE                          VAL R4
      277 CAPTURE                          UPVAL U13
      278 CAPTURE                          VAL R1
      279 CAPTURE                          UPVAL U14
      280 CAPTURE                          UPVAL U26
      281 CAPTURE                          UPVAL U2
      282 CAPTURE                          UPVAL U5
      283 NAMECALL                         R11 R11 K66 ["Connect"]
      285 CALL                             R11 2 0
      286 GETIMPORT                        R11 K9 [pcall]
      288 NEWCLOSURE                       R12 P3
      289 CAPTURE                          VAL R2
      290 CAPTURE                          UPVAL U1
      291 CALL                             R11 1 0
      292 MOVE                             R11 R3
      293 CALL                             R11 0 0
      294 DUPTABLE                         R11 K67 [{"bridges"}]
      295 SETTABLEKS                       R8 R11 K50 ["bridges"]
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
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R20
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
