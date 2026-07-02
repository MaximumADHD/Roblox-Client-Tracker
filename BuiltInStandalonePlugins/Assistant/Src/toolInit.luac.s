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
       54 GETUPVAL                         R3 8
       55 MOVE                             R4 R1
       56 CALL                             R3 1 1
       57 GETUPVAL                         R4 9
       58 CALL                             R4 0 1
       59 JUMPIFNOT                        R4 ; [+6]
       60 GETUPVAL                         R4 10
       61 GETTABLEKS                       R4 R4 K12 ["initialize"]
       63 MOVE                             R5 R1
       64 MOVE                             R6 R0
       65 CALL                             R4 2 0
       66 GETUPVAL                         R4 11
       67 GETTABLEKS                       R4 R4 K12 ["initialize"]
       69 MOVE                             R5 R1
       70 CALL                             R4 1 0
       71 GETUPVAL                         R4 12
       72 GETTABLEKS                       R4 R4 K13 ["Guest"]
       74 GETTABLEKS                       R4 R4 K14 ["startGuest"]
       76 DUPTABLE                         R5 K19 [{"clientIdentifier", "networking", "LLMRequestNetworking", "EnvironmentOverride"}]
       77 GETUPVAL                         R6 13
       78 GETTABLEKS                       R6 R6 K20 ["MCP_CLIENT_IDENTIFIER"]
       80 SETTABLEKS                       R6 R5 K15 ["clientIdentifier"]
       82 SETTABLEKS                       R1 R5 K16 ["networking"]
       84 GETUPVAL                         R7 14
       85 CALL                             R7 0 1
       86 JUMPIFNOT                        R7 ; [+14]
       87 GETUPVAL                         R6 15
       88 GETTABLEKS                       R6 R6 K21 ["new"]
       90 GETUPVAL                         R7 15
       91 GETTABLEKS                       R7 R7 K22 ["Implementations"]
       93 GETTABLEKS                       R7 R7 K23 ["CallbackNetworking"]
       95 GETTABLEKS                       R7 R7 K21 ["new"]
       97 DUPTABLE                         R8 K27 [{["isGuest"] = True, ["isHost"] = True}]
       98 CALL                             R7 1 -1
       99 CALL                             R6 -1 1
      100 JUMP                             ; [+1]
      101 MOVE                             R6 R1
      102 SETTABLEKS                       R6 R5 K17 ["LLMRequestNetworking"]
      104 SETTABLEKS                       R2 R5 K18 ["EnvironmentOverride"]
      106 CALL                             R4 1 2
      107 GETUPVAL                         R6 16
      108 GETTABLEKS                       R6 R6 K28 ["configureModelContextProtocol"]
      110 CALL                             R6 0 0
      111 NAMECALL                         R6 R1 K2 ["IsGuest"]
      113 CALL                             R6 1 1
      114 JUMPIFNOT                        R6 ; [+31]
      115 GETUPVAL                         R7 17
      116 CALL                             R7 0 1
      117 JUMPIFNOT                        R7 ; [+8]
      118 GETUPVAL                         R6 12
      119 GETTABLEKS                       R6 R6 K29 ["Skills"]
      121 GETTABLEKS                       R6 R6 K30 ["getDisabledSetAsync"]
      123 MOVE                             R7 R2
      124 CALL                             R6 1 1
      125 JUMP                             ; [+2]
      126 NEWTABLE                         R6 0 0
      128 GETUPVAL                         R7 12
      129 GETTABLEKS                       R7 R7 K29 ["Skills"]
      131 GETTABLEKS                       R7 R7 K31 ["registerAll"]
      133 MOVE                             R8 R6
      134 CALL                             R7 1 0
      135 GETUPVAL                         R7 17
      136 CALL                             R7 0 1
      137 JUMPIFNOT                        R7 ; [+8]
      138 GETUPVAL                         R7 12
      139 GETTABLEKS                       R7 R7 K29 ["Skills"]
      141 GETTABLEKS                       R7 R7 K32 ["loadUserSkillsAsync"]
      143 MOVE                             R8 R2
      144 MOVE                             R9 R6
      145 CALL                             R7 2 0
      146 GETUPVAL                         R6 12
      147 GETTABLEKS                       R6 R6 K33 ["Subagents"]
      149 GETTABLEKS                       R6 R6 K31 ["registerAll"]
      151 CALL                             R6 0 0
      152 GETUPVAL                         R6 12
      153 GETTABLEKS                       R6 R6 K33 ["Subagents"]
      155 GETTABLEKS                       R6 R6 K34 ["setRequestHandler"]
      157 GETUPVAL                         R8 18
      158 CALL                             R8 0 1
      159 JUMPIFNOT                        R8 ; [+4]
      160 GETUPVAL                         R7 19
      161 GETTABLEKS                       R7 R7 K35 ["requestHandler"]
      163 JUMP                             ; [+7]
      164 GETUPVAL                         R7 20
      165 GETTABLEKS                       R7 R7 K36 ["createRequestHandler"]
      167 GETIMPORT                        R8 K38 [game]
      169 MOVE                             R9 R0
      170 CALL                             R7 2 1
      171 CALL                             R6 1 0
      172 GETUPVAL                         R6 12
      173 GETTABLEKS                       R6 R6 K39 ["Tools"]
      175 GETTABLEKS                       R6 R6 K40 ["createTools"]
      177 MOVE                             R7 R1
      178 GETUPVAL                         R8 21
      179 GETTABLEKS                       R8 R8 K41 ["DefaultTools"]
      181 CALL                             R6 2 1
      182 NAMECALL                         R7 R1 K2 ["IsGuest"]
      184 CALL                             R7 1 1
      185 JUMPIFNOT                        R7 ; [+7]
      186 GETUPVAL                         R7 12
      187 GETTABLEKS                       R7 R7 K39 ["Tools"]
      189 GETTABLEKS                       R7 R7 K42 ["registerTools"]
      191 MOVE                             R8 R6
      192 CALL                             R7 1 0
      193 GETUPVAL                         R7 12
      194 GETTABLEKS                       R7 R7 K43 ["UIToolRegistry"]
      196 GETTABLEKS                       R7 R7 K44 ["registerModeCommands"]
      198 GETUPVAL                         R8 12
      199 GETTABLEKS                       R8 R8 K45 ["Types"]
      201 GETTABLEKS                       R8 R8 K46 ["getAssistantModeOrdered"]
      203 CALL                             R8 0 1
      204 DUPCLOSURE                       R9 K47 [PROTO_4]
      205 CAPTURE                          UPVAL U22
      206 CALL                             R7 2 0
      207 GETUPVAL                         R7 23
      208 GETTABLEKS                       R7 R7 K21 ["new"]
      210 GETUPVAL                         R8 24
      211 MOVE                             R9 R1
      212 GETUPVAL                         R10 21
      213 GETTABLEKS                       R10 R10 K48 ["ExperimentalTools"]
      215 GETUPVAL                         R11 21
      216 GETTABLEKS                       R11 R11 K49 ["ExperimentFeatureTools"]
      218 CALL                             R7 4 1
      219 GETTABLEKS                       R8 R7 K50 ["trackUserLoggedIn"]
      221 CALL                             R8 0 0
      222 GETUPVAL                         R8 25
      223 GETTABLEKS                       R8 R8 K51 ["connect"]
      225 MOVE                             R9 R0
      226 MOVE                             R10 R1
      227 MOVE                             R11 R2
      228 CALL                             R8 3 0
      229 GETTABLEKS                       R8 R0 K52 ["Unloading"]
      231 DUPCLOSURE                       R10 K53 [PROTO_5]
      232 CAPTURE                          UPVAL U26
      233 CAPTURE                          UPVAL U2
      234 CAPTURE                          UPVAL U5
      235 NAMECALL                         R8 R8 K54 ["Connect"]
      237 CALL                             R8 2 0
      238 GETIMPORT                        R8 K7 [pcall]
      240 NEWCLOSURE                       R9 P3
      241 CAPTURE                          VAL R2
      242 CAPTURE                          UPVAL U1
      243 CALL                             R8 1 0
      244 MOVE                             R8 R3
      245 CALL                             R8 0 0
      246 DUPTABLE                         R8 K56 [{"bridges"}]
      247 GETTABLEKS                       R9 R5 K55 ["bridges"]
      249 SETTABLEKS                       R9 R8 K55 ["bridges"]
      251 RETURN                           R8 1

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
      174 GETTABLEKS                       R20 R20 K38 ["FFlagAssistantUserSkills"]
      176 GETTABLEKS                       R21 R4 K35 ["Flags"]
      178 GETTABLEKS                       R21 R21 K37 ["Shared"]
      180 GETTABLEKS                       R21 R21 K39 ["FFlagExternalMCPUI"]
      182 GETTABLEKS                       R22 R4 K35 ["Flags"]
      184 GETTABLEKS                       R22 R22 K37 ["Shared"]
      186 GETTABLEKS                       R22 R22 K40 ["FFlagAssistantMultiPlayerAgents"]
      188 GETTABLEKS                       R23 R4 K35 ["Flags"]
      190 GETTABLEKS                       R23 R23 K37 ["Shared"]
      192 GETTABLEKS                       R23 R23 K41 ["FFlagDebugEnableTestLLMAdapter"]
      194 GETTABLEKS                       R24 R4 K35 ["Flags"]
      196 GETTABLEKS                       R24 R24 K37 ["Shared"]
      198 GETTABLEKS                       R24 R24 K42 ["FFlagAssistantVersionMismatchWarning"]
      200 GETTABLEKS                       R25 R4 K20 ["Components"]
      202 GETTABLEKS                       R25 R25 K43 ["TestLLM"]
      204 GETTABLEKS                       R25 R25 K44 ["TestLLMRequest"]
      206 GETTABLEKS                       R26 R4 K30 ["Resources"]
      208 GETTABLEKS                       R26 R26 K45 ["Localization"]
      210 GETTABLEKS                       R26 R26 K46 ["Translator"]
      212 GETTABLEKS                       R27 R4 K47 ["Utils"]
      214 GETTABLEKS                       R27 R27 K48 ["VersionResolver"]
      216 DUPCLOSURE                       R28 K49 [PROTO_3]
      217 CAPTURE                          VAL R27
      218 DUPCLOSURE                       R29 K50 [PROTO_7]
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R18
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R20
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R1
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R10
      246 RETURN                           R29 1
