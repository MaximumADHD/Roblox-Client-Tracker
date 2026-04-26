PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["destroy"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+16]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["create"]
        6 DUPTABLE                         R4 K4 [{"plugin", "isGuest", "isHost"}]
        7 SETTABLEKS                       R0 R4 K1 ["plugin"]
        9 GETTABLEKS                       R5 R1 K2 ["isGuest"]
       11 SETTABLEKS                       R5 R4 K2 ["isGuest"]
       13 GETTABLEKS                       R5 R1 K3 ["isHost"]
       15 SETTABLEKS                       R5 R4 K3 ["isHost"]
       17 CALL                             R3 1 1
       18 MOVE                             R2 R3
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 2
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+4]
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R2
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 GETUPVAL                         R4 4
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+14]
       30 NAMECALL                         R4 R2 K5 ["IsGuest"]
       32 CALL                             R4 1 1
       33 JUMPIFNOT                        R4 ; [+10]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R4 R5 K0 ["create"]
       37 GETUPVAL                         R5 6
       38 CALL                             R4 1 1
       39 GETUPVAL                         R6 7
       40 GETTABLEKS                       R5 R6 K6 ["set"]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 GETUPVAL                         R4 8
       45 MOVE                             R5 R0
       46 MOVE                             R6 R2
       47 CALL                             R4 2 1
       48 GETUPVAL                         R5 9
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+6]
       51 GETUPVAL                         R6 10
       52 GETTABLEKS                       R5 R6 K7 ["initialize"]
       54 MOVE                             R6 R2
       55 MOVE                             R7 R0
       56 CALL                             R5 2 0
       57 GETUPVAL                         R6 11
       58 GETTABLEKS                       R5 R6 K7 ["initialize"]
       60 MOVE                             R6 R2
       61 CALL                             R5 1 0
       62 GETUPVAL                         R7 12
       63 GETTABLEKS                       R6 R7 K8 ["Guest"]
       65 GETTABLEKS                       R5 R6 K9 ["startGuest"]
       67 DUPTABLE                         R6 K13 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
       68 GETUPVAL                         R8 13
       69 GETTABLEKS                       R7 R8 K14 ["MCP_CLIENT_IDENTIFIER"]
       71 SETTABLEKS                       R7 R6 K10 ["clientIdentifier"]
       73 SETTABLEKS                       R2 R6 K11 ["LLMRequestNetworking"]
       75 SETTABLEKS                       R4 R6 K12 ["EnvironmentOverride"]
       77 CALL                             R5 1 0
       78 GETUPVAL                         R6 14
       79 GETTABLEKS                       R5 R6 K15 ["configureModelContextProtocol"]
       81 CALL                             R5 0 0
       82 GETUPVAL                         R5 15
       83 CALL                             R5 0 1
       84 JUMPIFNOT                        R5 ; [+6]
       85 GETUPVAL                         R7 12
       86 GETTABLEKS                       R6 R7 K16 ["Skills"]
       88 GETTABLEKS                       R5 R6 K17 ["registerAll"]
       90 CALL                             R5 0 0
       91 GETUPVAL                         R7 12
       92 GETTABLEKS                       R6 R7 K18 ["Subagents"]
       94 GETTABLEKS                       R5 R6 K17 ["registerAll"]
       96 CALL                             R5 0 0
       97 GETUPVAL                         R7 12
       98 GETTABLEKS                       R6 R7 K18 ["Subagents"]
      100 GETTABLEKS                       R5 R6 K19 ["setRequestHandler"]
      102 GETUPVAL                         R7 16
      103 GETTABLEKS                       R6 R7 K20 ["createRequestHandler"]
      105 GETIMPORT                        R7 K22 [game]
      107 MOVE                             R8 R0
      108 CALL                             R6 2 -1
      109 CALL                             R5 -1 0
      110 GETUPVAL                         R7 12
      111 GETTABLEKS                       R6 R7 K23 ["Tools"]
      113 GETTABLEKS                       R5 R6 K24 ["createTools"]
      115 MOVE                             R6 R2
      116 GETUPVAL                         R8 17
      117 GETTABLEKS                       R7 R8 K25 ["DefaultTools"]
      119 CALL                             R5 2 1
      120 NAMECALL                         R6 R2 K5 ["IsGuest"]
      122 CALL                             R6 1 1
      123 JUMPIFNOT                        R6 ; [+7]
      124 GETUPVAL                         R8 12
      125 GETTABLEKS                       R7 R8 K23 ["Tools"]
      127 GETTABLEKS                       R6 R7 K26 ["registerTools"]
      129 MOVE                             R7 R5
      130 CALL                             R6 1 0
      131 GETUPVAL                         R6 18
      132 CALL                             R6 0 1
      133 JUMPIFNOT                        R6 ; [+14]
      134 GETUPVAL                         R8 12
      135 GETTABLEKS                       R7 R8 K27 ["UIToolRegistry"]
      137 GETTABLEKS                       R6 R7 K28 ["registerModeCommands"]
      139 GETUPVAL                         R9 12
      140 GETTABLEKS                       R8 R9 K29 ["Types"]
      142 GETTABLEKS                       R7 R8 K30 ["getAssistantModeOrdered"]
      144 CALL                             R7 0 1
      145 DUPCLOSURE                       R8 K31 [PROTO_0]
      146 CAPTURE                          UPVAL U19
      147 CALL                             R6 2 0
      148 GETUPVAL                         R7 20
      149 GETTABLEKS                       R6 R7 K32 ["new"]
      151 GETUPVAL                         R7 21
      152 MOVE                             R8 R2
      153 GETUPVAL                         R10 17
      154 GETTABLEKS                       R9 R10 K33 ["ExperimentalTools"]
      156 GETUPVAL                         R11 17
      157 GETTABLEKS                       R10 R11 K34 ["ExperimentFeatureTools"]
      159 CALL                             R6 4 1
      160 GETTABLEKS                       R7 R6 K35 ["trackUserLoggedIn"]
      162 CALL                             R7 0 0
      163 GETUPVAL                         R7 2
      164 CALL                             R7 0 1
      165 JUMPIFNOT                        R7 ; [+20]
      166 GETUPVAL                         R8 22
      167 GETTABLEKS                       R7 R8 K36 ["trackSessions"]
      169 DUPTABLE                         R8 K41 [{"dataModel", "plugin", "networking", "environment", "gamePublishFinishedSignal"}]
      170 GETIMPORT                        R9 K22 [game]
      172 SETTABLEKS                       R9 R8 K37 ["dataModel"]
      174 SETTABLEKS                       R0 R8 K1 ["plugin"]
      176 SETTABLEKS                       R2 R8 K38 ["networking"]
      178 SETTABLEKS                       R4 R8 K39 ["environment"]
      180 GETUPVAL                         R10 23
      181 GETTABLEKS                       R9 R10 K42 ["GamePublishFinished"]
      183 SETTABLEKS                       R9 R8 K40 ["gamePublishFinishedSignal"]
      185 CALL                             R7 1 0
      186 GETTABLEKS                       R7 R0 K43 ["Unloading"]
      188 DUPCLOSURE                       R9 K44 [PROTO_1]
      189 CAPTURE                          UPVAL U1
      190 CAPTURE                          UPVAL U4
      191 CAPTURE                          UPVAL U7
      192 NAMECALL                         R7 R7 K45 ["Connect"]
      194 CALL                             R7 2 0
      195 GETUPVAL                         R7 2
      196 CALL                             R7 0 1
      197 JUMPIFNOT                        R7 ; [+2]
      198 MOVE                             R7 R3
      199 CALL                             R7 0 0
      200 RETURN                           R0 0

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
       19 GETIMPORT                        R3 K10 [pcall]
       21 GETIMPORT                        R5 K5 [game]
       23 GETTABLEKS                       R4 R5 K7 ["GetService"]
       25 GETIMPORT                        R5 K5 [game]
       27 LOADK                            R6 K11 ["StudioPublishService"]
       28 CALL                             R3 3 2
       29 GETIMPORT                        R5 K13 [require]
       31 GETTABLEKS                       R7 R0 K14 ["Packages"]
       33 GETTABLEKS                       R6 R7 K15 ["AssistantUI"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K13 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Packages"]
       40 GETTABLEKS                       R7 R8 K16 ["DMNetworking"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K13 [require]
       45 GETTABLEKS                       R10 R0 K17 ["Src"]
       47 GETTABLEKS                       R9 R10 K18 ["Util"]
       49 GETTABLEKS                       R8 R9 K19 ["NotificationManagerStore"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K13 [require]
       54 GETTABLEKS                       R11 R0 K17 ["Src"]
       56 GETTABLEKS                       R10 R11 K18 ["Util"]
       58 GETTABLEKS                       R9 R10 K20 ["StudioConversationLoader"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K13 [require]
       63 GETTABLEKS                       R12 R0 K17 ["Src"]
       65 GETTABLEKS                       R11 R12 K18 ["Util"]
       67 GETTABLEKS                       R10 R11 K21 ["StudioExperimentalToolsListener"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K13 [require]
       72 GETTABLEKS                       R13 R0 K17 ["Src"]
       74 GETTABLEKS                       R12 R13 K18 ["Util"]
       76 GETTABLEKS                       R11 R12 K22 ["StudioIdentification"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K13 [require]
       81 GETTABLEKS                       R16 R0 K17 ["Src"]
       83 GETTABLEKS                       R15 R16 K23 ["Components"]
       85 GETTABLEKS                       R14 R15 K24 ["Contexts"]
       87 GETTABLEKS                       R13 R14 K25 ["StudioLLM"]
       89 GETTABLEKS                       R12 R13 K26 ["StudioLLMRequest"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K13 [require]
       94 GETTABLEKS                       R15 R0 K17 ["Src"]
       96 GETTABLEKS                       R14 R15 K18 ["Util"]
       98 GETTABLEKS                       R13 R14 K27 ["StudioNetworking"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K13 [require]
      103 GETTABLEKS                       R16 R0 K17 ["Src"]
      105 GETTABLEKS                       R15 R16 K18 ["Util"]
      107 GETTABLEKS                       R14 R15 K28 ["StudioNotificationManager"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K13 [require]
      112 GETTABLEKS                       R17 R0 K17 ["Src"]
      114 GETTABLEKS                       R16 R17 K18 ["Util"]
      116 GETTABLEKS                       R15 R16 K29 ["StudioScriptHelper"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K13 [require]
      121 GETTABLEKS                       R18 R0 K17 ["Src"]
      123 GETTABLEKS                       R17 R18 K18 ["Util"]
      125 GETTABLEKS                       R16 R17 K30 ["StudioTools"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K13 [require]
      130 GETTABLEKS                       R18 R0 K17 ["Src"]
      132 GETTABLEKS                       R17 R18 K31 ["Types"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K13 [require]
      137 GETTABLEKS                       R21 R0 K17 ["Src"]
      139 GETTABLEKS                       R20 R21 K18 ["Util"]
      141 GETTABLEKS                       R19 R20 K32 ["Resources"]
      143 GETTABLEKS                       R18 R19 K33 ["StudioEnvironment"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K13 [require]
      148 GETTABLEKS                       R21 R0 K17 ["Src"]
      150 GETTABLEKS                       R20 R21 K34 ["Host"]
      152 GETTABLEKS                       R19 R20 K35 ["startMcpHost"]
      154 CALL                             R18 1 1
      155 GETIMPORT                        R19 K13 [require]
      157 GETTABLEKS                       R22 R0 K17 ["Src"]
      159 GETTABLEKS                       R21 R22 K18 ["Util"]
      161 GETTABLEKS                       R20 R21 K36 ["waitForGuestReady"]
      163 CALL                             R19 1 1
      164 GETIMPORT                        R20 K13 [require]
      166 GETTABLEKS                       R23 R0 K17 ["Src"]
      168 GETTABLEKS                       R22 R23 K37 ["Flags"]
      170 GETTABLEKS                       R21 R22 K38 ["FFlagAssistantNotificationManager"]
      172 CALL                             R20 1 1
      173 GETTABLEKS                       R23 R5 K37 ["Flags"]
      175 GETTABLEKS                       R22 R23 K39 ["Shared"]
      177 GETTABLEKS                       R21 R22 K40 ["FFlagAssistantDMNetworkIdentity"]
      179 GETTABLEKS                       R24 R5 K37 ["Flags"]
      181 GETTABLEKS                       R23 R24 K39 ["Shared"]
      183 GETTABLEKS                       R22 R23 K41 ["FFlagAssistantMultipleChatPersistence"]
      185 GETTABLEKS                       R25 R5 K37 ["Flags"]
      187 GETTABLEKS                       R24 R25 K39 ["Shared"]
      189 GETTABLEKS                       R23 R24 K42 ["FFlagEnableSkills"]
      191 GETTABLEKS                       R26 R5 K37 ["Flags"]
      193 GETTABLEKS                       R25 R26 K39 ["Shared"]
      195 GETTABLEKS                       R24 R25 K43 ["FFlagExternalMCPUI"]
      197 GETTABLEKS                       R27 R5 K37 ["Flags"]
      199 GETTABLEKS                       R26 R27 K39 ["Shared"]
      201 GETTABLEKS                       R25 R26 K44 ["FFlagAssistantPlanMode"]
      203 GETTABLEKS                       R28 R5 K32 ["Resources"]
      205 GETTABLEKS                       R27 R28 K45 ["Localization"]
      207 GETTABLEKS                       R26 R27 K46 ["Translator"]
      209 DUPCLOSURE                       R27 K47 [PROTO_2]
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R9
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R4
      234 RETURN                           R27 1
