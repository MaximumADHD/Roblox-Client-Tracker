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
       81 DUPTABLE                         R5 K18 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
       82 GETUPVAL                         R6 14
       83 GETTABLEKS                       R6 R6 K19 ["MCP_CLIENT_IDENTIFIER"]
       85 SETTABLEKS                       R6 R5 K15 ["clientIdentifier"]
       87 GETUPVAL                         R7 15
       88 CALL                             R7 0 1
       89 JUMPIFNOT                        R7 ; [+20]
       90 GETUPVAL                         R6 16
       91 GETTABLEKS                       R6 R6 K20 ["new"]
       93 GETUPVAL                         R7 16
       94 GETTABLEKS                       R7 R7 K21 ["Implementations"]
       96 GETTABLEKS                       R7 R7 K22 ["CallbackNetworking"]
       98 GETTABLEKS                       R7 R7 K20 ["new"]
      100 DUPTABLE                         R8 K25 [{"isGuest", "isHost"}]
      101 LOADB                            R9 1
      102 SETTABLEKS                       R9 R8 K23 ["isGuest"]
      104 LOADB                            R9 1
      105 SETTABLEKS                       R9 R8 K24 ["isHost"]
      107 CALL                             R7 1 -1
      108 CALL                             R6 -1 1
      109 JUMP                             ; [+1]
      110 MOVE                             R6 R1
      111 SETTABLEKS                       R6 R5 K16 ["LLMRequestNetworking"]
      113 SETTABLEKS                       R2 R5 K17 ["EnvironmentOverride"]
      115 CALL                             R4 1 0
      116 GETUPVAL                         R4 17
      117 GETTABLEKS                       R4 R4 K26 ["configureModelContextProtocol"]
      119 CALL                             R4 0 0
      120 GETUPVAL                         R4 13
      121 GETTABLEKS                       R4 R4 K27 ["Skills"]
      123 GETTABLEKS                       R4 R4 K28 ["registerAll"]
      125 CALL                             R4 0 0
      126 GETUPVAL                         R4 18
      127 CALL                             R4 0 1
      128 JUMPIFNOT                        R4 ; [+7]
      129 GETUPVAL                         R4 13
      130 GETTABLEKS                       R4 R4 K27 ["Skills"]
      132 GETTABLEKS                       R4 R4 K29 ["loadUserSkillsAsync"]
      134 MOVE                             R5 R2
      135 CALL                             R4 1 0
      136 GETUPVAL                         R4 13
      137 GETTABLEKS                       R4 R4 K30 ["Subagents"]
      139 GETTABLEKS                       R4 R4 K28 ["registerAll"]
      141 CALL                             R4 0 0
      142 GETUPVAL                         R4 13
      143 GETTABLEKS                       R4 R4 K30 ["Subagents"]
      145 GETTABLEKS                       R4 R4 K31 ["setRequestHandler"]
      147 GETUPVAL                         R6 19
      148 CALL                             R6 0 1
      149 JUMPIFNOT                        R6 ; [+4]
      150 GETUPVAL                         R5 20
      151 GETTABLEKS                       R5 R5 K32 ["requestHandler"]
      153 JUMP                             ; [+7]
      154 GETUPVAL                         R5 21
      155 GETTABLEKS                       R5 R5 K33 ["createRequestHandler"]
      157 GETIMPORT                        R6 K35 [game]
      159 MOVE                             R7 R0
      160 CALL                             R5 2 1
      161 CALL                             R4 1 0
      162 GETUPVAL                         R4 13
      163 GETTABLEKS                       R4 R4 K36 ["Tools"]
      165 GETTABLEKS                       R4 R4 K37 ["createTools"]
      167 MOVE                             R5 R1
      168 GETUPVAL                         R6 22
      169 GETTABLEKS                       R6 R6 K38 ["DefaultTools"]
      171 CALL                             R4 2 1
      172 NAMECALL                         R5 R1 K2 ["IsGuest"]
      174 CALL                             R5 1 1
      175 JUMPIFNOT                        R5 ; [+7]
      176 GETUPVAL                         R5 13
      177 GETTABLEKS                       R5 R5 K36 ["Tools"]
      179 GETTABLEKS                       R5 R5 K39 ["registerTools"]
      181 MOVE                             R6 R4
      182 CALL                             R5 1 0
      183 GETUPVAL                         R5 23
      184 CALL                             R5 0 1
      185 JUMPIFNOT                        R5 ; [+14]
      186 GETUPVAL                         R5 13
      187 GETTABLEKS                       R5 R5 K40 ["UIToolRegistry"]
      189 GETTABLEKS                       R5 R5 K41 ["registerModeCommands"]
      191 GETUPVAL                         R6 13
      192 GETTABLEKS                       R6 R6 K42 ["Types"]
      194 GETTABLEKS                       R6 R6 K43 ["getAssistantModeOrdered"]
      196 CALL                             R6 0 1
      197 DUPCLOSURE                       R7 K44 [PROTO_4]
      198 CAPTURE                          UPVAL U24
      199 CALL                             R5 2 0
      200 GETUPVAL                         R5 25
      201 GETTABLEKS                       R5 R5 K20 ["new"]
      203 GETUPVAL                         R6 26
      204 MOVE                             R7 R1
      205 GETUPVAL                         R8 22
      206 GETTABLEKS                       R8 R8 K45 ["ExperimentalTools"]
      208 GETUPVAL                         R9 22
      209 GETTABLEKS                       R9 R9 K46 ["ExperimentFeatureTools"]
      211 CALL                             R5 4 1
      212 GETTABLEKS                       R6 R5 K47 ["trackUserLoggedIn"]
      214 CALL                             R6 0 0
      215 GETUPVAL                         R6 8
      216 CALL                             R6 0 1
      217 JUMPIFNOT                        R6 ; [+7]
      218 GETUPVAL                         R6 27
      219 GETTABLEKS                       R6 R6 K48 ["connect"]
      221 MOVE                             R7 R0
      222 MOVE                             R8 R1
      223 MOVE                             R9 R2
      224 CALL                             R6 3 0
      225 GETTABLEKS                       R6 R0 K49 ["Unloading"]
      227 DUPCLOSURE                       R8 K50 [PROTO_5]
      228 CAPTURE                          UPVAL U28
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          UPVAL U5
      231 NAMECALL                         R6 R6 K51 ["Connect"]
      233 CALL                             R6 2 0
      234 GETIMPORT                        R6 K7 [pcall]
      236 NEWCLOSURE                       R7 P3
      237 CAPTURE                          VAL R2
      238 CAPTURE                          UPVAL U1
      239 CALL                             R6 1 0
      240 GETUPVAL                         R6 8
      241 CALL                             R6 0 1
      242 JUMPIFNOT                        R6 ; [+2]
      243 MOVE                             R6 R3
      244 CALL                             R6 0 0
      245 RETURN                           R0 0

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
      192 GETTABLEKS                       R23 R23 K41 ["FFlagAssistantPlanMode"]
      194 GETTABLEKS                       R24 R4 K35 ["Flags"]
      196 GETTABLEKS                       R24 R24 K37 ["Shared"]
      198 GETTABLEKS                       R24 R24 K42 ["FFlagAssistantMultiPlayerAgents"]
      200 GETTABLEKS                       R25 R4 K35 ["Flags"]
      202 GETTABLEKS                       R25 R25 K37 ["Shared"]
      204 GETTABLEKS                       R25 R25 K43 ["FFlagDebugEnableTestLLMAdapter"]
      206 GETTABLEKS                       R26 R4 K35 ["Flags"]
      208 GETTABLEKS                       R26 R26 K37 ["Shared"]
      210 GETTABLEKS                       R26 R26 K44 ["FFlagAssistantVersionMismatchWarning"]
      212 GETTABLEKS                       R27 R4 K20 ["Components"]
      214 GETTABLEKS                       R27 R27 K45 ["TestLLM"]
      216 GETTABLEKS                       R27 R27 K46 ["TestLLMRequest"]
      218 GETTABLEKS                       R28 R4 K30 ["Resources"]
      220 GETTABLEKS                       R28 R28 K47 ["Localization"]
      222 GETTABLEKS                       R28 R28 K48 ["Translator"]
      224 GETTABLEKS                       R29 R4 K49 ["Utils"]
      226 GETTABLEKS                       R29 R29 K50 ["VersionResolver"]
      228 DUPCLOSURE                       R30 K51 [PROTO_3]
      229 CAPTURE                          VAL R29
      230 DUPCLOSURE                       R31 K52 [PROTO_7]
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R26
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R8
      243 CAPTURE                          VAL R13
      244 CAPTURE                          VAL R4
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R17
      249 CAPTURE                          VAL R21
      250 CAPTURE                          VAL R25
      251 CAPTURE                          VAL R27
      252 CAPTURE                          VAL R9
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R12
      259 CAPTURE                          VAL R10
      260 RETURN                           R31 1
