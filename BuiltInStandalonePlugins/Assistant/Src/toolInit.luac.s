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

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 MOVE                             R2 R3
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+14]
       11 NAMECALL                         R3 R1 K0 ["IsGuest"]
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+10]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K1 ["create"]
       18 GETUPVAL                         R4 4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R4 R4 K2 ["set"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 GETUPVAL                         R3 6
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 7
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+6]
       32 GETUPVAL                         R4 8
       33 GETTABLEKS                       R4 R4 K3 ["initialize"]
       35 MOVE                             R5 R1
       36 MOVE                             R6 R0
       37 CALL                             R4 2 0
       38 GETUPVAL                         R4 9
       39 GETTABLEKS                       R4 R4 K3 ["initialize"]
       41 MOVE                             R5 R1
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 10
       44 GETTABLEKS                       R4 R4 K4 ["Guest"]
       46 GETTABLEKS                       R4 R4 K5 ["startGuest"]
       48 DUPTABLE                         R5 K9 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
       49 GETUPVAL                         R6 11
       50 GETTABLEKS                       R6 R6 K10 ["MCP_CLIENT_IDENTIFIER"]
       52 SETTABLEKS                       R6 R5 K6 ["clientIdentifier"]
       54 SETTABLEKS                       R1 R5 K7 ["LLMRequestNetworking"]
       56 SETTABLEKS                       R3 R5 K8 ["EnvironmentOverride"]
       58 CALL                             R4 1 0
       59 GETUPVAL                         R4 12
       60 GETTABLEKS                       R4 R4 K11 ["configureModelContextProtocol"]
       62 CALL                             R4 0 0
       63 GETUPVAL                         R4 13
       64 CALL                             R4 0 1
       65 JUMPIFNOT                        R4 ; [+6]
       66 GETUPVAL                         R4 10
       67 GETTABLEKS                       R4 R4 K12 ["Skills"]
       69 GETTABLEKS                       R4 R4 K13 ["registerAll"]
       71 CALL                             R4 0 0
       72 GETUPVAL                         R4 10
       73 GETTABLEKS                       R4 R4 K14 ["Subagents"]
       75 GETTABLEKS                       R4 R4 K13 ["registerAll"]
       77 CALL                             R4 0 0
       78 GETUPVAL                         R4 10
       79 GETTABLEKS                       R4 R4 K14 ["Subagents"]
       81 GETTABLEKS                       R4 R4 K15 ["setRequestHandler"]
       83 GETUPVAL                         R5 14
       84 GETTABLEKS                       R5 R5 K16 ["createRequestHandler"]
       86 GETIMPORT                        R6 K18 [game]
       88 MOVE                             R7 R0
       89 CALL                             R5 2 -1
       90 CALL                             R4 -1 0
       91 GETUPVAL                         R4 10
       92 GETTABLEKS                       R4 R4 K19 ["Tools"]
       94 GETTABLEKS                       R4 R4 K20 ["createTools"]
       96 MOVE                             R5 R1
       97 GETUPVAL                         R6 15
       98 GETTABLEKS                       R6 R6 K21 ["DefaultTools"]
      100 CALL                             R4 2 1
      101 NAMECALL                         R5 R1 K0 ["IsGuest"]
      103 CALL                             R5 1 1
      104 JUMPIFNOT                        R5 ; [+7]
      105 GETUPVAL                         R5 10
      106 GETTABLEKS                       R5 R5 K19 ["Tools"]
      108 GETTABLEKS                       R5 R5 K22 ["registerTools"]
      110 MOVE                             R6 R4
      111 CALL                             R5 1 0
      112 GETUPVAL                         R5 16
      113 CALL                             R5 0 1
      114 JUMPIFNOT                        R5 ; [+14]
      115 GETUPVAL                         R5 10
      116 GETTABLEKS                       R5 R5 K23 ["UIToolRegistry"]
      118 GETTABLEKS                       R5 R5 K24 ["registerModeCommands"]
      120 GETUPVAL                         R6 10
      121 GETTABLEKS                       R6 R6 K25 ["Types"]
      123 GETTABLEKS                       R6 R6 K26 ["getAssistantModeOrdered"]
      125 CALL                             R6 0 1
      126 DUPCLOSURE                       R7 K27 [PROTO_0]
      127 CAPTURE                          UPVAL U17
      128 CALL                             R5 2 0
      129 GETUPVAL                         R5 18
      130 GETTABLEKS                       R5 R5 K28 ["new"]
      132 GETUPVAL                         R6 19
      133 MOVE                             R7 R1
      134 GETUPVAL                         R8 15
      135 GETTABLEKS                       R8 R8 K29 ["ExperimentalTools"]
      137 GETUPVAL                         R9 15
      138 GETTABLEKS                       R9 R9 K30 ["ExperimentFeatureTools"]
      140 CALL                             R5 4 1
      141 GETTABLEKS                       R6 R5 K31 ["trackUserLoggedIn"]
      143 CALL                             R6 0 0
      144 GETUPVAL                         R6 0
      145 CALL                             R6 0 1
      146 JUMPIFNOT                        R6 ; [+7]
      147 GETUPVAL                         R6 20
      148 GETTABLEKS                       R6 R6 K32 ["connect"]
      150 MOVE                             R7 R0
      151 MOVE                             R8 R1
      152 MOVE                             R9 R3
      153 CALL                             R6 3 0
      154 GETTABLEKS                       R6 R0 K33 ["Unloading"]
      156 DUPCLOSURE                       R8 K34 [PROTO_1]
      157 CAPTURE                          UPVAL U21
      158 CAPTURE                          UPVAL U2
      159 CAPTURE                          UPVAL U5
      160 NAMECALL                         R6 R6 K35 ["Connect"]
      162 CALL                             R6 2 0
      163 GETUPVAL                         R6 0
      164 CALL                             R6 0 1
      165 JUMPIFNOT                        R6 ; [+2]
      166 MOVE                             R6 R2
      167 CALL                             R6 0 0
      168 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["AssistantUI"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["DMNetworking"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Util"]
       39 GETTABLEKS                       R6 R6 K16 ["NotificationManagerStore"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Util"]
       48 GETTABLEKS                       R7 R7 K17 ["StudioExperimentalToolsListener"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Util"]
       57 GETTABLEKS                       R8 R8 K18 ["StudioIdentification"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R0 K14 ["Src"]
       64 GETTABLEKS                       R9 R9 K19 ["Components"]
       66 GETTABLEKS                       R9 R9 K20 ["Contexts"]
       68 GETTABLEKS                       R9 R9 K21 ["StudioLLM"]
       70 GETTABLEKS                       R9 R9 K22 ["StudioLLMRequest"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K10 [require]
       75 GETTABLEKS                       R10 R0 K14 ["Src"]
       77 GETTABLEKS                       R10 R10 K15 ["Util"]
       79 GETTABLEKS                       R10 R10 K23 ["StudioNetworking"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K10 [require]
       84 GETTABLEKS                       R11 R0 K14 ["Src"]
       86 GETTABLEKS                       R11 R11 K15 ["Util"]
       88 GETTABLEKS                       R11 R11 K24 ["StudioNotificationManager"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K10 [require]
       93 GETTABLEKS                       R12 R0 K14 ["Src"]
       95 GETTABLEKS                       R12 R12 K15 ["Util"]
       97 GETTABLEKS                       R12 R12 K25 ["StudioPersistence"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K10 [require]
      102 GETTABLEKS                       R13 R0 K14 ["Src"]
      104 GETTABLEKS                       R13 R13 K15 ["Util"]
      106 GETTABLEKS                       R13 R13 K26 ["StudioScriptHelper"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K10 [require]
      111 GETTABLEKS                       R14 R0 K14 ["Src"]
      113 GETTABLEKS                       R14 R14 K15 ["Util"]
      115 GETTABLEKS                       R14 R14 K27 ["StudioTools"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K10 [require]
      120 GETTABLEKS                       R15 R0 K14 ["Src"]
      122 GETTABLEKS                       R15 R15 K28 ["Types"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K10 [require]
      127 GETTABLEKS                       R16 R0 K14 ["Src"]
      129 GETTABLEKS                       R16 R16 K15 ["Util"]
      131 GETTABLEKS                       R16 R16 K29 ["Resources"]
      133 GETTABLEKS                       R16 R16 K30 ["StudioEnvironment"]
      135 CALL                             R15 1 1
      136 GETIMPORT                        R16 K10 [require]
      138 GETTABLEKS                       R17 R0 K14 ["Src"]
      140 GETTABLEKS                       R17 R17 K31 ["Host"]
      142 GETTABLEKS                       R17 R17 K32 ["startMcpHost"]
      144 CALL                             R16 1 1
      145 GETIMPORT                        R17 K10 [require]
      147 GETTABLEKS                       R18 R0 K14 ["Src"]
      149 GETTABLEKS                       R18 R18 K15 ["Util"]
      151 GETTABLEKS                       R18 R18 K33 ["waitForGuestReady"]
      153 CALL                             R17 1 1
      154 GETIMPORT                        R18 K10 [require]
      156 GETTABLEKS                       R19 R0 K14 ["Src"]
      158 GETTABLEKS                       R19 R19 K34 ["Flags"]
      160 GETTABLEKS                       R19 R19 K35 ["FFlagAssistantNotificationManager"]
      162 CALL                             R18 1 1
      163 GETTABLEKS                       R19 R3 K34 ["Flags"]
      165 GETTABLEKS                       R19 R19 K36 ["Shared"]
      167 GETTABLEKS                       R19 R19 K37 ["FFlagAssistantMultipleChatPersistence"]
      169 GETTABLEKS                       R20 R3 K34 ["Flags"]
      171 GETTABLEKS                       R20 R20 K36 ["Shared"]
      173 GETTABLEKS                       R20 R20 K38 ["FFlagEnableSkills"]
      175 GETTABLEKS                       R21 R3 K34 ["Flags"]
      177 GETTABLEKS                       R21 R21 K36 ["Shared"]
      179 GETTABLEKS                       R21 R21 K39 ["FFlagExternalMCPUI"]
      181 GETTABLEKS                       R22 R3 K34 ["Flags"]
      183 GETTABLEKS                       R22 R22 K36 ["Shared"]
      185 GETTABLEKS                       R22 R22 K40 ["FFlagAssistantPlanMode"]
      187 GETTABLEKS                       R23 R3 K29 ["Resources"]
      189 GETTABLEKS                       R23 R23 K41 ["Localization"]
      191 GETTABLEKS                       R23 R23 K42 ["Translator"]
      193 DUPCLOSURE                       R24 K43 [PROTO_2]
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R20
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R9
      216 RETURN                           R24 1
