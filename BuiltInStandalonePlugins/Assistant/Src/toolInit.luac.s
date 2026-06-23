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
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["destroy"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

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
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+14]
       11 NAMECALL                         R2 R1 K2 ["IsGuest"]
       13 CALL                             R2 1 1
       14 JUMPIFNOT                        R2 ; [+10]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["create"]
       18 GETUPVAL                         R3 4
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 5
       21 GETTABLEKS                       R3 R3 K4 ["set"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETUPVAL                         R2 6
       26 MOVE                             R3 R0
       27 MOVE                             R4 R1
       28 CALL                             R2 2 1
       29 GETUPVAL                         R3 7
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+22]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K5 ["getVersion"]
       35 CALL                             R3 0 1
       36 GETIMPORT                        R4 K7 [pcall]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 CALL                             R4 1 2
       44 JUMPIF                           R4 ; [+9]
       45 GETIMPORT                        R6 K9 [warn]
       47 LOADK                            R8 K10 ["Failed to track Assistant plugin version mismatch: %*"]
       48 MOVE                             R10 R5
       49 NAMECALL                         R8 R8 K11 ["format"]
       51 CALL                             R8 2 1
       52 MOVE                             R7 R8
       53 CALL                             R6 1 0
       54 LOADNIL                          R3
       55 GETUPVAL                         R4 8
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+4]
       58 GETUPVAL                         R4 9
       59 MOVE                             R5 R1
       60 CALL                             R4 1 1
       61 MOVE                             R3 R4
       62 GETUPVAL                         R4 10
       63 CALL                             R4 0 1
       64 JUMPIFNOT                        R4 ; [+6]
       65 GETUPVAL                         R4 11
       66 GETTABLEKS                       R4 R4 K12 ["initialize"]
       68 MOVE                             R5 R1
       69 MOVE                             R6 R0
       70 CALL                             R4 2 0
       71 GETUPVAL                         R4 12
       72 GETTABLEKS                       R4 R4 K12 ["initialize"]
       74 MOVE                             R5 R1
       75 CALL                             R4 1 0
       76 GETUPVAL                         R4 13
       77 GETTABLEKS                       R4 R4 K13 ["Guest"]
       79 GETTABLEKS                       R4 R4 K14 ["startGuest"]
       81 DUPTABLE                         R5 K19 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
       82 GETUPVAL                         R6 14
       83 GETTABLEKS                       R6 R6 K20 ["MCP_CLIENT_IDENTIFIER"]
       85 SETTABLEKS                       R6 R5 K15 ["clientIdentifier"]
       87 SETTABLEKS                       R1 R5 K16 ["networking"]
       89 GETUPVAL                         R7 15
       90 CALL                             R7 0 1
       91 JUMPIFNOT                        R7 ; [+20]
       92 GETUPVAL                         R6 16
       93 GETTABLEKS                       R6 R6 K21 ["new"]
       95 GETUPVAL                         R7 16
       96 GETTABLEKS                       R7 R7 K22 ["Implementations"]
       98 GETTABLEKS                       R7 R7 K23 ["CallbackNetworking"]
      100 GETTABLEKS                       R7 R7 K21 ["new"]
      102 DUPTABLE                         R8 K26 [{"isGuest", "isHost"}]
      103 LOADB                            R9 1
      104 SETTABLEKS                       R9 R8 K24 ["isGuest"]
      106 LOADB                            R9 1
      107 SETTABLEKS                       R9 R8 K25 ["isHost"]
      109 CALL                             R7 1 -1
      110 CALL                             R6 -1 1
      111 JUMP                             ; [+1]
      112 MOVE                             R6 R1
      113 SETTABLEKS                       R6 R5 K17 ["LLMRequestNetworking"]
      115 SETTABLEKS                       R2 R5 K18 ["EnvironmentOverride"]
      117 CALL                             R4 1 2
      118 GETUPVAL                         R6 17
      119 GETTABLEKS                       R6 R6 K27 ["configureModelContextProtocol"]
      121 CALL                             R6 0 0
      122 NAMECALL                         R6 R1 K2 ["IsGuest"]
      124 CALL                             R6 1 1
      125 JUMPIFNOT                        R6 ; [+16]
      126 GETUPVAL                         R6 13
      127 GETTABLEKS                       R6 R6 K28 ["Skills"]
      129 GETTABLEKS                       R6 R6 K29 ["registerAll"]
      131 CALL                             R6 0 0
      132 GETUPVAL                         R6 18
      133 CALL                             R6 0 1
      134 JUMPIFNOT                        R6 ; [+7]
      135 GETUPVAL                         R6 13
      136 GETTABLEKS                       R6 R6 K28 ["Skills"]
      138 GETTABLEKS                       R6 R6 K30 ["loadUserSkillsAsync"]
      140 MOVE                             R7 R2
      141 CALL                             R6 1 0
      142 GETUPVAL                         R6 13
      143 GETTABLEKS                       R6 R6 K31 ["Subagents"]
      145 GETTABLEKS                       R6 R6 K29 ["registerAll"]
      147 CALL                             R6 0 0
      148 GETUPVAL                         R6 13
      149 GETTABLEKS                       R6 R6 K31 ["Subagents"]
      151 GETTABLEKS                       R6 R6 K32 ["setRequestHandler"]
      153 GETUPVAL                         R8 19
      154 CALL                             R8 0 1
      155 JUMPIFNOT                        R8 ; [+4]
      156 GETUPVAL                         R7 20
      157 GETTABLEKS                       R7 R7 K33 ["requestHandler"]
      159 JUMP                             ; [+7]
      160 GETUPVAL                         R7 21
      161 GETTABLEKS                       R7 R7 K34 ["createRequestHandler"]
      163 GETIMPORT                        R8 K36 [game]
      165 MOVE                             R9 R0
      166 CALL                             R7 2 1
      167 CALL                             R6 1 0
      168 GETUPVAL                         R6 13
      169 GETTABLEKS                       R6 R6 K37 ["Tools"]
      171 GETTABLEKS                       R6 R6 K38 ["createTools"]
      173 MOVE                             R7 R1
      174 GETUPVAL                         R8 22
      175 GETTABLEKS                       R8 R8 K39 ["DefaultTools"]
      177 CALL                             R6 2 1
      178 NAMECALL                         R7 R1 K2 ["IsGuest"]
      180 CALL                             R7 1 1
      181 JUMPIFNOT                        R7 ; [+7]
      182 GETUPVAL                         R7 13
      183 GETTABLEKS                       R7 R7 K37 ["Tools"]
      185 GETTABLEKS                       R7 R7 K40 ["registerTools"]
      187 MOVE                             R8 R6
      188 CALL                             R7 1 0
      189 GETUPVAL                         R7 13
      190 GETTABLEKS                       R7 R7 K41 ["UIToolRegistry"]
      192 GETTABLEKS                       R7 R7 K42 ["registerModeCommands"]
      194 GETUPVAL                         R8 13
      195 GETTABLEKS                       R8 R8 K43 ["Types"]
      197 GETTABLEKS                       R8 R8 K44 ["getAssistantModeOrdered"]
      199 CALL                             R8 0 1
      200 DUPCLOSURE                       R9 K45 [PROTO_4]
      201 CAPTURE                          UPVAL U23
      202 CALL                             R7 2 0
      203 GETUPVAL                         R7 24
      204 GETTABLEKS                       R7 R7 K21 ["new"]
      206 GETUPVAL                         R8 25
      207 MOVE                             R9 R1
      208 GETUPVAL                         R10 22
      209 GETTABLEKS                       R10 R10 K46 ["ExperimentalTools"]
      211 GETUPVAL                         R11 22
      212 GETTABLEKS                       R11 R11 K47 ["ExperimentFeatureTools"]
      214 CALL                             R7 4 1
      215 GETTABLEKS                       R8 R7 K48 ["trackUserLoggedIn"]
      217 CALL                             R8 0 0
      218 GETUPVAL                         R8 8
      219 CALL                             R8 0 1
      220 JUMPIFNOT                        R8 ; [+7]
      221 GETUPVAL                         R8 26
      222 GETTABLEKS                       R8 R8 K49 ["connect"]
      224 MOVE                             R9 R0
      225 MOVE                             R10 R1
      226 MOVE                             R11 R2
      227 CALL                             R8 3 0
      228 GETTABLEKS                       R8 R0 K50 ["Unloading"]
      230 DUPCLOSURE                       R10 K51 [PROTO_5]
      231 CAPTURE                          UPVAL U27
      232 CAPTURE                          UPVAL U2
      233 CAPTURE                          UPVAL U5
      234 NAMECALL                         R8 R8 K52 ["Connect"]
      236 CALL                             R8 2 0
      237 GETIMPORT                        R8 K7 [pcall]
      239 NEWCLOSURE                       R9 P3
      240 CAPTURE                          VAL R2
      241 CAPTURE                          UPVAL U1
      242 CALL                             R8 1 0
      243 GETUPVAL                         R8 8
      244 CALL                             R8 0 1
      245 JUMPIFNOT                        R8 ; [+2]
      246 MOVE                             R8 R3
      247 CALL                             R8 0 0
      248 DUPTABLE                         R8 K54 [{"bridges"}]
      249 GETTABLEKS                       R9 R5 K53 ["bridges"]
      251 SETTABLEKS                       R9 R8 K53 ["bridges"]
      253 RETURN                           R8 1

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
       44 GETTABLEKS                       R7 R7 K16 ["Util"]
       46 GETTABLEKS                       R7 R7 K17 ["NotificationManagerStore"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Src"]
       53 GETTABLEKS                       R8 R8 K16 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["StudioExperimentalToolsListener"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Src"]
       62 GETTABLEKS                       R9 R9 K16 ["Util"]
       64 GETTABLEKS                       R9 R9 K19 ["StudioIdentification"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R0 K11 ["Src"]
       71 GETTABLEKS                       R10 R10 K20 ["Components"]
       73 GETTABLEKS                       R10 R10 K21 ["Contexts"]
       75 GETTABLEKS                       R10 R10 K22 ["StudioLLM"]
       77 GETTABLEKS                       R10 R10 K23 ["StudioLLMRequest"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K10 [require]
       82 GETTABLEKS                       R11 R0 K11 ["Src"]
       84 GETTABLEKS                       R11 R11 K16 ["Util"]
       86 GETTABLEKS                       R11 R11 K24 ["StudioNetworking"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K10 [require]
       91 GETTABLEKS                       R12 R0 K11 ["Src"]
       93 GETTABLEKS                       R12 R12 K16 ["Util"]
       95 GETTABLEKS                       R12 R12 K25 ["StudioNotificationManager"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K10 [require]
      100 GETTABLEKS                       R13 R0 K11 ["Src"]
      102 GETTABLEKS                       R13 R13 K16 ["Util"]
      104 GETTABLEKS                       R13 R13 K26 ["StudioPersistence"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K10 [require]
      109 GETTABLEKS                       R14 R0 K11 ["Src"]
      111 GETTABLEKS                       R14 R14 K16 ["Util"]
      113 GETTABLEKS                       R14 R14 K27 ["StudioScriptHelper"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K10 [require]
      118 GETTABLEKS                       R15 R0 K11 ["Src"]
      120 GETTABLEKS                       R15 R15 K16 ["Util"]
      122 GETTABLEKS                       R15 R15 K28 ["StudioTools"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K10 [require]
      127 GETTABLEKS                       R16 R0 K11 ["Src"]
      129 GETTABLEKS                       R16 R16 K29 ["Types"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K10 [require]
      134 GETTABLEKS                       R17 R0 K11 ["Src"]
      136 GETTABLEKS                       R17 R17 K16 ["Util"]
      138 GETTABLEKS                       R17 R17 K30 ["Resources"]
      140 GETTABLEKS                       R17 R17 K31 ["StudioEnvironment"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K10 [require]
      145 GETTABLEKS                       R18 R0 K11 ["Src"]
      147 GETTABLEKS                       R18 R18 K32 ["Host"]
      149 GETTABLEKS                       R18 R18 K33 ["startMcpHost"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K10 [require]
      154 GETTABLEKS                       R19 R0 K11 ["Src"]
      156 GETTABLEKS                       R19 R19 K16 ["Util"]
      158 GETTABLEKS                       R19 R19 K34 ["waitForGuestReady"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K10 [require]
      163 GETTABLEKS                       R20 R0 K11 ["Src"]
      165 GETTABLEKS                       R20 R20 K35 ["Flags"]
      167 GETTABLEKS                       R20 R20 K36 ["FFlagAssistantNotificationManager"]
      169 CALL                             R19 1 1
      170 GETTABLEKS                       R20 R4 K35 ["Flags"]
      172 GETTABLEKS                       R20 R20 K37 ["Shared"]
      174 GETTABLEKS                       R20 R20 K38 ["FFlagAssistantMultipleChatPersistence"]
      176 GETTABLEKS                       R21 R4 K35 ["Flags"]
      178 GETTABLEKS                       R21 R21 K37 ["Shared"]
      180 GETTABLEKS                       R21 R21 K39 ["FFlagAssistantUserSkills"]
      182 GETTABLEKS                       R22 R4 K35 ["Flags"]
      184 GETTABLEKS                       R22 R22 K37 ["Shared"]
      186 GETTABLEKS                       R22 R22 K40 ["FFlagExternalMCPUI"]
      188 GETTABLEKS                       R23 R4 K35 ["Flags"]
      190 GETTABLEKS                       R23 R23 K37 ["Shared"]
      192 GETTABLEKS                       R23 R23 K41 ["FFlagAssistantMultiPlayerAgents"]
      194 GETTABLEKS                       R24 R4 K35 ["Flags"]
      196 GETTABLEKS                       R24 R24 K37 ["Shared"]
      198 GETTABLEKS                       R24 R24 K42 ["FFlagDebugEnableTestLLMAdapter"]
      200 GETTABLEKS                       R25 R4 K35 ["Flags"]
      202 GETTABLEKS                       R25 R25 K37 ["Shared"]
      204 GETTABLEKS                       R25 R25 K43 ["FFlagAssistantVersionMismatchWarning"]
      206 GETTABLEKS                       R26 R4 K20 ["Components"]
      208 GETTABLEKS                       R26 R26 K44 ["TestLLM"]
      210 GETTABLEKS                       R26 R26 K45 ["TestLLMRequest"]
      212 GETTABLEKS                       R27 R4 K30 ["Resources"]
      214 GETTABLEKS                       R27 R27 K46 ["Localization"]
      216 GETTABLEKS                       R27 R27 K47 ["Translator"]
      218 GETTABLEKS                       R28 R4 K48 ["Utils"]
      220 GETTABLEKS                       R28 R28 K49 ["VersionResolver"]
      222 DUPCLOSURE                       R29 K50 [PROTO_3]
      223 CAPTURE                          VAL R28
      224 DUPCLOSURE                       R30 K51 [PROTO_7]
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R6
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R25
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R13
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R21
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R7
      250 CAPTURE                          VAL R1
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R10
      253 RETURN                           R30 1
