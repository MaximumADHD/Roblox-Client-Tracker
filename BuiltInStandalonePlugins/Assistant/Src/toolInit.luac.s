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
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K14 ["FFlagExternalMCPUI"]
       62 JUMPIFNOT                        R4 ; [+6]
       63 GETUPVAL                         R4 8
       64 GETTABLEKS                       R4 R4 K15 ["initialize"]
       66 MOVE                             R5 R1
       67 MOVE                             R6 R0
       68 CALL                             R4 2 0
       69 GETUPVAL                         R4 9
       70 GETTABLEKS                       R4 R4 K15 ["initialize"]
       72 MOVE                             R5 R1
       73 CALL                             R4 1 0
       74 GETUPVAL                         R4 10
       75 GETTABLEKS                       R4 R4 K16 ["Guest"]
       77 GETTABLEKS                       R4 R4 K17 ["startGuest"]
       79 DUPTABLE                         R5 K22 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
       80 GETUPVAL                         R6 11
       81 GETTABLEKS                       R6 R6 K23 ["MCP_CLIENT_IDENTIFIER"]
       83 SETTABLEKS                       R6 R5 K18 ["clientIdentifier"]
       85 SETTABLEKS                       R1 R5 K19 ["networking"]
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R7 R7 K24 ["FFlagAssistantMultiPlayerAgents"]
       90 JUMPIFNOT                        R7 ; [+14]
       91 GETUPVAL                         R6 12
       92 GETTABLEKS                       R6 R6 K25 ["new"]
       94 GETUPVAL                         R7 12
       95 GETTABLEKS                       R7 R7 K26 ["Implementations"]
       97 GETTABLEKS                       R7 R7 K27 ["CallbackNetworking"]
       99 GETTABLEKS                       R7 R7 K25 ["new"]
      101 DUPTABLE                         R8 K31 [{["isGuest"] = True, ["isHost"] = True}]
      102 CALL                             R7 1 -1
      103 CALL                             R6 -1 1
      104 JUMP                             ; [+1]
      105 MOVE                             R6 R1
      106 SETTABLEKS                       R6 R5 K20 ["LLMRequestNetworking"]
      108 SETTABLEKS                       R2 R5 K21 ["EnvironmentOverride"]
      110 CALL                             R4 1 2
      111 GETUPVAL                         R6 13
      112 GETTABLEKS                       R6 R6 K32 ["configureModelContextProtocol"]
      114 CALL                             R6 0 0
      115 NAMECALL                         R6 R1 K3 ["IsGuest"]
      117 CALL                             R6 1 1
      118 JUMPIFNOT                        R6 ; [+33]
      119 GETUPVAL                         R7 2
      120 GETTABLEKS                       R7 R7 K33 ["FFlagAssistantUserSkills"]
      122 JUMPIFNOT                        R7 ; [+8]
      123 GETUPVAL                         R6 10
      124 GETTABLEKS                       R6 R6 K34 ["Skills"]
      126 GETTABLEKS                       R6 R6 K35 ["getDisabledSetAsync"]
      128 MOVE                             R7 R2
      129 CALL                             R6 1 1
      130 JUMP                             ; [+2]
      131 NEWTABLE                         R6 0 0
      133 GETUPVAL                         R7 10
      134 GETTABLEKS                       R7 R7 K34 ["Skills"]
      136 GETTABLEKS                       R7 R7 K36 ["registerAll"]
      138 MOVE                             R8 R6
      139 CALL                             R7 1 0
      140 GETUPVAL                         R7 2
      141 GETTABLEKS                       R7 R7 K33 ["FFlagAssistantUserSkills"]
      143 JUMPIFNOT                        R7 ; [+8]
      144 GETUPVAL                         R7 10
      145 GETTABLEKS                       R7 R7 K34 ["Skills"]
      147 GETTABLEKS                       R7 R7 K37 ["loadUserSkillsAsync"]
      149 MOVE                             R8 R2
      150 MOVE                             R9 R6
      151 CALL                             R7 2 0
      152 GETUPVAL                         R6 10
      153 GETTABLEKS                       R6 R6 K38 ["Subagents"]
      155 GETTABLEKS                       R6 R6 K36 ["registerAll"]
      157 CALL                             R6 0 0
      158 GETUPVAL                         R6 10
      159 GETTABLEKS                       R6 R6 K38 ["Subagents"]
      161 GETTABLEKS                       R6 R6 K39 ["setRequestHandler"]
      163 GETUPVAL                         R8 2
      164 GETTABLEKS                       R8 R8 K40 ["FFlagDebugEnableTestLLMAdapter"]
      166 JUMPIFNOT                        R8 ; [+4]
      167 GETUPVAL                         R7 14
      168 GETTABLEKS                       R7 R7 K41 ["requestHandler"]
      170 JUMP                             ; [+7]
      171 GETUPVAL                         R7 15
      172 GETTABLEKS                       R7 R7 K42 ["createRequestHandler"]
      174 GETIMPORT                        R8 K44 [game]
      176 MOVE                             R9 R0
      177 CALL                             R7 2 1
      178 CALL                             R6 1 0
      179 GETTABLEKS                       R6 R5 K45 ["bridges"]
      181 GETUPVAL                         R7 10
      182 GETTABLEKS                       R7 R7 K46 ["Tools"]
      184 GETTABLEKS                       R7 R7 K47 ["createTools"]
      186 DUPTABLE                         R8 K49 [{"tools", "networking", "bridges"}]
      187 GETUPVAL                         R9 16
      188 GETTABLEKS                       R9 R9 K50 ["DefaultTools"]
      190 SETTABLEKS                       R9 R8 K48 ["tools"]
      192 SETTABLEKS                       R1 R8 K19 ["networking"]
      194 SETTABLEKS                       R6 R8 K45 ["bridges"]
      196 CALL                             R7 1 1
      197 NAMECALL                         R8 R1 K3 ["IsGuest"]
      199 CALL                             R8 1 1
      200 JUMPIFNOT                        R8 ; [+7]
      201 GETUPVAL                         R8 10
      202 GETTABLEKS                       R8 R8 K46 ["Tools"]
      204 GETTABLEKS                       R8 R8 K51 ["registerTools"]
      206 MOVE                             R9 R7
      207 CALL                             R8 1 0
      208 GETUPVAL                         R8 10
      209 GETTABLEKS                       R8 R8 K52 ["UIToolRegistry"]
      211 GETTABLEKS                       R8 R8 K53 ["registerModeCommands"]
      213 GETUPVAL                         R9 10
      214 GETTABLEKS                       R9 R9 K54 ["Types"]
      216 GETTABLEKS                       R9 R9 K55 ["getAssistantModeOrdered"]
      218 CALL                             R9 0 1
      219 DUPCLOSURE                       R10 K56 [PROTO_4]
      220 CAPTURE                          UPVAL U17
      221 CALL                             R8 2 0
      222 GETUPVAL                         R8 18
      223 GETTABLEKS                       R8 R8 K25 ["new"]
      225 GETUPVAL                         R9 19
      226 MOVE                             R10 R1
      227 GETUPVAL                         R11 16
      228 GETTABLEKS                       R11 R11 K57 ["ExperimentalTools"]
      230 GETUPVAL                         R12 16
      231 GETTABLEKS                       R12 R12 K58 ["ExperimentFeatureTools"]
      233 MOVE                             R13 R6
      234 CALL                             R8 5 1
      235 GETTABLEKS                       R9 R8 K59 ["trackUserLoggedIn"]
      237 CALL                             R9 0 0
      238 GETUPVAL                         R9 20
      239 GETTABLEKS                       R9 R9 K60 ["connect"]
      241 MOVE                             R10 R0
      242 MOVE                             R11 R1
      243 MOVE                             R12 R2
      244 CALL                             R9 3 0
      245 GETTABLEKS                       R9 R0 K61 ["Unloading"]
      247 DUPCLOSURE                       R11 K62 [PROTO_5]
      248 CAPTURE                          UPVAL U21
      249 CAPTURE                          UPVAL U2
      250 CAPTURE                          UPVAL U5
      251 NAMECALL                         R9 R9 K63 ["Connect"]
      253 CALL                             R9 2 0
      254 GETIMPORT                        R9 K9 [pcall]
      256 NEWCLOSURE                       R10 P3
      257 CAPTURE                          VAL R2
      258 CAPTURE                          UPVAL U1
      259 CALL                             R9 1 0
      260 MOVE                             R9 R3
      261 CALL                             R9 0 0
      262 DUPTABLE                         R9 K64 [{"bridges"}]
      263 SETTABLEKS                       R6 R9 K45 ["bridges"]
      265 RETURN                           R9 1

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
       71 GETTABLEKS                       R10 R10 K20 ["StudioIdentification"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Src"]
       78 GETTABLEKS                       R11 R11 K21 ["Components"]
       80 GETTABLEKS                       R11 R11 K22 ["Contexts"]
       82 GETTABLEKS                       R11 R11 K23 ["StudioLLM"]
       84 GETTABLEKS                       R11 R11 K24 ["StudioLLMRequest"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K10 [require]
       89 GETTABLEKS                       R12 R0 K11 ["Src"]
       91 GETTABLEKS                       R12 R12 K17 ["Util"]
       93 GETTABLEKS                       R12 R12 K25 ["StudioNetworking"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K10 [require]
       98 GETTABLEKS                       R13 R0 K11 ["Src"]
      100 GETTABLEKS                       R13 R13 K17 ["Util"]
      102 GETTABLEKS                       R13 R13 K26 ["StudioNotificationManager"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K10 [require]
      107 GETTABLEKS                       R14 R0 K11 ["Src"]
      109 GETTABLEKS                       R14 R14 K17 ["Util"]
      111 GETTABLEKS                       R14 R14 K27 ["StudioPersistence"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K10 [require]
      116 GETTABLEKS                       R15 R0 K11 ["Src"]
      118 GETTABLEKS                       R15 R15 K17 ["Util"]
      120 GETTABLEKS                       R15 R15 K28 ["StudioScriptHelper"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K10 [require]
      125 GETTABLEKS                       R16 R0 K11 ["Src"]
      127 GETTABLEKS                       R16 R16 K17 ["Util"]
      129 GETTABLEKS                       R16 R16 K29 ["StudioTools"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K10 [require]
      134 GETTABLEKS                       R17 R0 K11 ["Src"]
      136 GETTABLEKS                       R17 R17 K30 ["Types"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K10 [require]
      141 GETTABLEKS                       R18 R0 K11 ["Src"]
      143 GETTABLEKS                       R18 R18 K17 ["Util"]
      145 GETTABLEKS                       R18 R18 K31 ["Resources"]
      147 GETTABLEKS                       R18 R18 K32 ["StudioEnvironment"]
      149 CALL                             R17 1 1
      150 GETIMPORT                        R18 K10 [require]
      152 GETTABLEKS                       R19 R0 K11 ["Src"]
      154 GETTABLEKS                       R19 R19 K33 ["Host"]
      156 GETTABLEKS                       R19 R19 K34 ["startMcpHost"]
      158 CALL                             R18 1 1
      159 GETIMPORT                        R19 K10 [require]
      161 GETTABLEKS                       R20 R0 K11 ["Src"]
      163 GETTABLEKS                       R20 R20 K17 ["Util"]
      165 GETTABLEKS                       R20 R20 K35 ["waitForGuestReady"]
      167 CALL                             R19 1 1
      168 GETTABLEKS                       R20 R4 K21 ["Components"]
      170 GETTABLEKS                       R20 R20 K36 ["TestLLM"]
      172 GETTABLEKS                       R20 R20 K37 ["TestLLMRequest"]
      174 GETTABLEKS                       R21 R4 K31 ["Resources"]
      176 GETTABLEKS                       R21 R21 K38 ["Localization"]
      178 GETTABLEKS                       R21 R21 K39 ["Translator"]
      180 GETTABLEKS                       R22 R4 K40 ["Utils"]
      182 GETTABLEKS                       R22 R22 K41 ["VersionResolver"]
      184 DUPCLOSURE                       R23 K42 [PROTO_3]
      185 CAPTURE                          VAL R22
      186 DUPCLOSURE                       R24 K43 [PROTO_7]
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R11
      209 RETURN                           R24 1
