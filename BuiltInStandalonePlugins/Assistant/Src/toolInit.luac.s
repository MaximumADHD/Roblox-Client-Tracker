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
        1 GETTABLEKS                       R0 R0 K0 ["Destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantNotificationManager"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["destroy"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

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
       60 GETTABLEKS                       R4 R4 K14 ["initialize"]
       62 MOVE                             R5 R1
       63 MOVE                             R6 R0
       64 CALL                             R4 2 0
       65 GETUPVAL                         R4 9
       66 GETTABLEKS                       R4 R4 K14 ["initialize"]
       68 MOVE                             R5 R1
       69 CALL                             R4 1 0
       70 GETUPVAL                         R4 2
       71 GETTABLEKS                       R4 R4 K15 ["FFlagAssistantUseLocalCas"]
       73 JUMPIF                           R4 ; [+4]
       74 GETUPVAL                         R4 2
       75 GETTABLEKS                       R4 R4 K16 ["FFlagAssistantUseRemoteService"]
       77 JUMPIFNOT                        R4 ; [+5]
       78 GETUPVAL                         R4 10
       79 GETTABLEKS                       R4 R4 K14 ["initialize"]
       81 MOVE                             R5 R1
       82 CALL                             R4 1 0
       83 GETUPVAL                         R4 11
       84 GETTABLEKS                       R4 R4 K17 ["Guest"]
       86 GETTABLEKS                       R4 R4 K18 ["startGuest"]
       88 DUPTABLE                         R5 K23 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
       89 GETUPVAL                         R6 12
       90 GETTABLEKS                       R6 R6 K24 ["MCP_CLIENT_IDENTIFIER"]
       92 SETTABLEKS                       R6 R5 K19 ["clientIdentifier"]
       94 SETTABLEKS                       R1 R5 K20 ["networking"]
       96 GETUPVAL                         R7 2
       97 GETTABLEKS                       R7 R7 K25 ["FFlagAssistantMultiPlayerAgents"]
       99 JUMPIFNOT                        R7 ; [+14]
      100 GETUPVAL                         R6 13
      101 GETTABLEKS                       R6 R6 K26 ["new"]
      103 GETUPVAL                         R7 13
      104 GETTABLEKS                       R7 R7 K27 ["Implementations"]
      106 GETTABLEKS                       R7 R7 K28 ["CallbackNetworking"]
      108 GETTABLEKS                       R7 R7 K26 ["new"]
      110 DUPTABLE                         R8 K32 [{["isGuest"] = True, ["isHost"] = True}]
      111 CALL                             R7 1 -1
      112 CALL                             R6 -1 1
      113 JUMP                             ; [+1]
      114 MOVE                             R6 R1
      115 SETTABLEKS                       R6 R5 K21 ["LLMRequestNetworking"]
      117 SETTABLEKS                       R2 R5 K22 ["EnvironmentOverride"]
      119 CALL                             R4 1 2
      120 GETUPVAL                         R6 14
      121 GETTABLEKS                       R6 R6 K33 ["configureModelContextProtocol"]
      123 CALL                             R6 0 0
      124 NAMECALL                         R6 R1 K3 ["IsGuest"]
      126 CALL                             R6 1 1
      127 JUMPIFNOT                        R6 ; [+22]
      128 GETUPVAL                         R6 11
      129 GETTABLEKS                       R6 R6 K34 ["Skills"]
      131 GETTABLEKS                       R6 R6 K35 ["getDisabledSetAsync"]
      133 MOVE                             R7 R2
      134 CALL                             R6 1 1
      135 GETUPVAL                         R7 11
      136 GETTABLEKS                       R7 R7 K34 ["Skills"]
      138 GETTABLEKS                       R7 R7 K36 ["registerAll"]
      140 MOVE                             R8 R6
      141 CALL                             R7 1 0
      142 GETUPVAL                         R7 11
      143 GETTABLEKS                       R7 R7 K34 ["Skills"]
      145 GETTABLEKS                       R7 R7 K37 ["loadUserSkillsAsync"]
      147 MOVE                             R8 R2
      148 MOVE                             R9 R6
      149 CALL                             R7 2 0
      150 GETUPVAL                         R6 11
      151 GETTABLEKS                       R6 R6 K38 ["Subagents"]
      153 GETTABLEKS                       R6 R6 K36 ["registerAll"]
      155 CALL                             R6 0 0
      156 GETUPVAL                         R6 11
      157 GETTABLEKS                       R6 R6 K38 ["Subagents"]
      159 GETTABLEKS                       R6 R6 K39 ["setRequestHandler"]
      161 GETUPVAL                         R8 2
      162 GETTABLEKS                       R8 R8 K40 ["FFlagDebugEnableTestLLMAdapter"]
      164 JUMPIFNOT                        R8 ; [+4]
      165 GETUPVAL                         R7 15
      166 GETTABLEKS                       R7 R7 K41 ["requestHandler"]
      168 JUMP                             ; [+7]
      169 GETUPVAL                         R7 16
      170 GETTABLEKS                       R7 R7 K42 ["createRequestHandler"]
      172 GETIMPORT                        R8 K44 [game]
      174 MOVE                             R9 R0
      175 CALL                             R7 2 1
      176 CALL                             R6 1 0
      177 GETTABLEKS                       R6 R5 K45 ["bridges"]
      179 GETUPVAL                         R7 11
      180 GETTABLEKS                       R7 R7 K46 ["Tools"]
      182 GETTABLEKS                       R7 R7 K47 ["createTools"]
      184 DUPTABLE                         R8 K49 [{"tools", "networking", "bridges"}]
      185 GETUPVAL                         R9 17
      186 GETTABLEKS                       R9 R9 K50 ["DefaultTools"]
      188 SETTABLEKS                       R9 R8 K48 ["tools"]
      190 SETTABLEKS                       R1 R8 K20 ["networking"]
      192 SETTABLEKS                       R6 R8 K45 ["bridges"]
      194 CALL                             R7 1 1
      195 NAMECALL                         R8 R1 K3 ["IsGuest"]
      197 CALL                             R8 1 1
      198 JUMPIFNOT                        R8 ; [+7]
      199 GETUPVAL                         R8 11
      200 GETTABLEKS                       R8 R8 K46 ["Tools"]
      202 GETTABLEKS                       R8 R8 K51 ["registerTools"]
      204 MOVE                             R9 R7
      205 CALL                             R8 1 0
      206 GETUPVAL                         R8 11
      207 GETTABLEKS                       R8 R8 K52 ["UIToolRegistry"]
      209 GETTABLEKS                       R8 R8 K53 ["registerModeCommands"]
      211 GETUPVAL                         R9 11
      212 GETTABLEKS                       R9 R9 K54 ["Types"]
      214 GETTABLEKS                       R9 R9 K55 ["getAssistantModeOrdered"]
      216 CALL                             R9 0 1
      217 DUPCLOSURE                       R10 K56 [PROTO_4]
      218 CAPTURE                          UPVAL U18
      219 CALL                             R8 2 0
      220 GETUPVAL                         R8 19
      221 GETTABLEKS                       R8 R8 K26 ["new"]
      223 GETUPVAL                         R9 20
      224 MOVE                             R10 R1
      225 GETUPVAL                         R11 17
      226 GETTABLEKS                       R11 R11 K57 ["ExperimentalTools"]
      228 GETUPVAL                         R12 17
      229 GETTABLEKS                       R12 R12 K58 ["ExperimentFeatureTools"]
      231 MOVE                             R13 R6
      232 CALL                             R8 5 1
      233 GETTABLEKS                       R9 R8 K59 ["trackUserLoggedIn"]
      235 CALL                             R9 0 0
      236 GETUPVAL                         R9 21
      237 GETTABLEKS                       R9 R9 K60 ["connect"]
      239 MOVE                             R10 R0
      240 MOVE                             R11 R1
      241 MOVE                             R12 R2
      242 CALL                             R9 3 0
      243 GETTABLEKS                       R9 R0 K61 ["Unloading"]
      245 DUPCLOSURE                       R11 K62 [PROTO_5]
      246 CAPTURE                          UPVAL U22
      247 CAPTURE                          UPVAL U2
      248 CAPTURE                          UPVAL U5
      249 NAMECALL                         R9 R9 K63 ["Connect"]
      251 CALL                             R9 2 0
      252 GETIMPORT                        R9 K9 [pcall]
      254 NEWCLOSURE                       R10 P3
      255 CAPTURE                          VAL R2
      256 CAPTURE                          UPVAL U1
      257 CALL                             R9 1 0
      258 MOVE                             R9 R3
      259 CALL                             R9 0 0
      260 DUPTABLE                         R9 K64 [{"bridges"}]
      261 SETTABLEKS                       R6 R9 K45 ["bridges"]
      263 RETURN                           R9 1

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
       35 GETTABLEKS                       R6 R0 K13 ["Packages"]
       37 GETTABLEKS                       R6 R6 K15 ["DMNetworking"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Src"]
       44 GETTABLEKS                       R7 R7 K16 ["Flags"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Util"]
       53 GETTABLEKS                       R8 R8 K18 ["NotificationManagerStore"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Src"]
       60 GETTABLEKS                       R9 R9 K17 ["Util"]
       62 GETTABLEKS                       R9 R9 K19 ["StudioExperimentalToolsListener"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Src"]
       69 GETTABLEKS                       R10 R10 K17 ["Util"]
       71 GETTABLEKS                       R10 R10 K20 ["StudioGameMetadata"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Src"]
       78 GETTABLEKS                       R11 R11 K17 ["Util"]
       80 GETTABLEKS                       R11 R11 K21 ["StudioIdentification"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K10 [require]
       85 GETTABLEKS                       R12 R0 K11 ["Src"]
       87 GETTABLEKS                       R12 R12 K22 ["Components"]
       89 GETTABLEKS                       R12 R12 K23 ["Contexts"]
       91 GETTABLEKS                       R12 R12 K24 ["StudioLLM"]
       93 GETTABLEKS                       R12 R12 K25 ["StudioLLMRequest"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K10 [require]
       98 GETTABLEKS                       R13 R0 K11 ["Src"]
      100 GETTABLEKS                       R13 R13 K17 ["Util"]
      102 GETTABLEKS                       R13 R13 K26 ["StudioNetworking"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K10 [require]
      107 GETTABLEKS                       R14 R0 K11 ["Src"]
      109 GETTABLEKS                       R14 R14 K17 ["Util"]
      111 GETTABLEKS                       R14 R14 K27 ["StudioNotificationManager"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K10 [require]
      116 GETTABLEKS                       R15 R0 K11 ["Src"]
      118 GETTABLEKS                       R15 R15 K17 ["Util"]
      120 GETTABLEKS                       R15 R15 K28 ["StudioPersistence"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K10 [require]
      125 GETTABLEKS                       R16 R0 K11 ["Src"]
      127 GETTABLEKS                       R16 R16 K17 ["Util"]
      129 GETTABLEKS                       R16 R16 K29 ["StudioScriptHelper"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K10 [require]
      134 GETTABLEKS                       R17 R0 K11 ["Src"]
      136 GETTABLEKS                       R17 R17 K17 ["Util"]
      138 GETTABLEKS                       R17 R17 K30 ["StudioTools"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K10 [require]
      143 GETTABLEKS                       R18 R0 K11 ["Src"]
      145 GETTABLEKS                       R18 R18 K31 ["Types"]
      147 CALL                             R17 1 1
      148 GETIMPORT                        R18 K10 [require]
      150 GETTABLEKS                       R19 R0 K11 ["Src"]
      152 GETTABLEKS                       R19 R19 K17 ["Util"]
      154 GETTABLEKS                       R19 R19 K32 ["Resources"]
      156 GETTABLEKS                       R19 R19 K33 ["StudioEnvironment"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K10 [require]
      161 GETTABLEKS                       R20 R0 K11 ["Src"]
      163 GETTABLEKS                       R20 R20 K34 ["Host"]
      165 GETTABLEKS                       R20 R20 K35 ["startMcpHost"]
      167 CALL                             R19 1 1
      168 GETIMPORT                        R20 K10 [require]
      170 GETTABLEKS                       R21 R0 K11 ["Src"]
      172 GETTABLEKS                       R21 R21 K17 ["Util"]
      174 GETTABLEKS                       R21 R21 K36 ["waitForGuestReady"]
      176 CALL                             R20 1 1
      177 GETTABLEKS                       R21 R4 K22 ["Components"]
      179 GETTABLEKS                       R21 R21 K37 ["TestLLM"]
      181 GETTABLEKS                       R21 R21 K38 ["TestLLMRequest"]
      183 GETTABLEKS                       R22 R4 K32 ["Resources"]
      185 GETTABLEKS                       R22 R22 K39 ["Localization"]
      187 GETTABLEKS                       R22 R22 K40 ["Translator"]
      189 GETTABLEKS                       R23 R4 K41 ["Utils"]
      191 GETTABLEKS                       R23 R23 K42 ["VersionResolver"]
      193 DUPCLOSURE                       R24 K43 [PROTO_3]
      194 CAPTURE                          VAL R23
      195 DUPCLOSURE                       R25 K44 [PROTO_7]
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R12
      219 RETURN                           R25 1
