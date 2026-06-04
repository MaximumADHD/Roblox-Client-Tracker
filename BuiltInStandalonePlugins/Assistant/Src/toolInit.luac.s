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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+14]
        3 NAMECALL                         R2 R1 K0 ["IsGuest"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["create"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["set"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 GETUPVAL                         R2 4
       18 MOVE                             R3 R0
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 5
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+4]
       25 GETUPVAL                         R4 6
       26 MOVE                             R5 R1
       27 CALL                             R4 1 1
       28 MOVE                             R3 R4
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
       56 SETTABLEKS                       R2 R5 K8 ["EnvironmentOverride"]
       58 CALL                             R4 1 0
       59 GETUPVAL                         R4 12
       60 GETTABLEKS                       R4 R4 K11 ["configureModelContextProtocol"]
       62 CALL                             R4 0 0
       63 GETUPVAL                         R4 10
       64 GETTABLEKS                       R4 R4 K12 ["Skills"]
       66 GETTABLEKS                       R4 R4 K13 ["registerAll"]
       68 CALL                             R4 0 0
       69 GETUPVAL                         R4 13
       70 CALL                             R4 0 1
       71 JUMPIFNOT                        R4 ; [+7]
       72 GETUPVAL                         R4 10
       73 GETTABLEKS                       R4 R4 K12 ["Skills"]
       75 GETTABLEKS                       R4 R4 K14 ["loadUserSkillsAsync"]
       77 MOVE                             R5 R2
       78 CALL                             R4 1 0
       79 GETUPVAL                         R4 10
       80 GETTABLEKS                       R4 R4 K15 ["Subagents"]
       82 GETTABLEKS                       R4 R4 K13 ["registerAll"]
       84 CALL                             R4 0 0
       85 GETUPVAL                         R4 10
       86 GETTABLEKS                       R4 R4 K15 ["Subagents"]
       88 GETTABLEKS                       R4 R4 K16 ["setRequestHandler"]
       90 GETUPVAL                         R6 14
       91 CALL                             R6 0 1
       92 JUMPIFNOT                        R6 ; [+4]
       93 GETUPVAL                         R5 15
       94 GETTABLEKS                       R5 R5 K17 ["requestHandler"]
       96 JUMP                             ; [+7]
       97 GETUPVAL                         R5 16
       98 GETTABLEKS                       R5 R5 K18 ["createRequestHandler"]
      100 GETIMPORT                        R6 K20 [game]
      102 MOVE                             R7 R0
      103 CALL                             R5 2 1
      104 CALL                             R4 1 0
      105 GETUPVAL                         R4 10
      106 GETTABLEKS                       R4 R4 K21 ["Tools"]
      108 GETTABLEKS                       R4 R4 K22 ["createTools"]
      110 MOVE                             R5 R1
      111 GETUPVAL                         R6 17
      112 GETTABLEKS                       R6 R6 K23 ["DefaultTools"]
      114 CALL                             R4 2 1
      115 NAMECALL                         R5 R1 K0 ["IsGuest"]
      117 CALL                             R5 1 1
      118 JUMPIFNOT                        R5 ; [+7]
      119 GETUPVAL                         R5 10
      120 GETTABLEKS                       R5 R5 K21 ["Tools"]
      122 GETTABLEKS                       R5 R5 K24 ["registerTools"]
      124 MOVE                             R6 R4
      125 CALL                             R5 1 0
      126 GETUPVAL                         R5 18
      127 CALL                             R5 0 1
      128 JUMPIFNOT                        R5 ; [+14]
      129 GETUPVAL                         R5 10
      130 GETTABLEKS                       R5 R5 K25 ["UIToolRegistry"]
      132 GETTABLEKS                       R5 R5 K26 ["registerModeCommands"]
      134 GETUPVAL                         R6 10
      135 GETTABLEKS                       R6 R6 K27 ["Types"]
      137 GETTABLEKS                       R6 R6 K28 ["getAssistantModeOrdered"]
      139 CALL                             R6 0 1
      140 DUPCLOSURE                       R7 K29 [PROTO_0]
      141 CAPTURE                          UPVAL U19
      142 CALL                             R5 2 0
      143 GETUPVAL                         R5 20
      144 GETTABLEKS                       R5 R5 K30 ["new"]
      146 GETUPVAL                         R6 21
      147 MOVE                             R7 R1
      148 GETUPVAL                         R8 17
      149 GETTABLEKS                       R8 R8 K31 ["ExperimentalTools"]
      151 GETUPVAL                         R9 17
      152 GETTABLEKS                       R9 R9 K32 ["ExperimentFeatureTools"]
      154 CALL                             R5 4 1
      155 GETTABLEKS                       R6 R5 K33 ["trackUserLoggedIn"]
      157 CALL                             R6 0 0
      158 GETUPVAL                         R6 5
      159 CALL                             R6 0 1
      160 JUMPIFNOT                        R6 ; [+7]
      161 GETUPVAL                         R6 22
      162 GETTABLEKS                       R6 R6 K34 ["connect"]
      164 MOVE                             R7 R0
      165 MOVE                             R8 R1
      166 MOVE                             R9 R2
      167 CALL                             R6 3 0
      168 GETTABLEKS                       R6 R0 K35 ["Unloading"]
      170 DUPCLOSURE                       R8 K36 [PROTO_1]
      171 CAPTURE                          UPVAL U23
      172 CAPTURE                          UPVAL U0
      173 CAPTURE                          UPVAL U3
      174 NAMECALL                         R6 R6 K37 ["Connect"]
      176 CALL                             R6 2 0
      177 GETUPVAL                         R6 5
      178 CALL                             R6 0 1
      179 JUMPIFNOT                        R6 ; [+2]
      180 MOVE                             R6 R3
      181 CALL                             R6 0 0
      182 RETURN                           R0 0

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
       73 GETTABLEKS                       R9 R3 K19 ["Components"]
       75 GETTABLEKS                       R9 R9 K23 ["TestLLM"]
       77 GETTABLEKS                       R9 R9 K24 ["TestLLMRequest"]
       79 GETIMPORT                        R10 K10 [require]
       81 GETTABLEKS                       R11 R0 K14 ["Src"]
       83 GETTABLEKS                       R11 R11 K15 ["Util"]
       85 GETTABLEKS                       R11 R11 K25 ["StudioNetworking"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K10 [require]
       90 GETTABLEKS                       R12 R0 K14 ["Src"]
       92 GETTABLEKS                       R12 R12 K15 ["Util"]
       94 GETTABLEKS                       R12 R12 K26 ["StudioNotificationManager"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K10 [require]
       99 GETTABLEKS                       R13 R0 K14 ["Src"]
      101 GETTABLEKS                       R13 R13 K15 ["Util"]
      103 GETTABLEKS                       R13 R13 K27 ["StudioPersistence"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K10 [require]
      108 GETTABLEKS                       R14 R0 K14 ["Src"]
      110 GETTABLEKS                       R14 R14 K15 ["Util"]
      112 GETTABLEKS                       R14 R14 K28 ["StudioScriptHelper"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K10 [require]
      117 GETTABLEKS                       R15 R0 K14 ["Src"]
      119 GETTABLEKS                       R15 R15 K15 ["Util"]
      121 GETTABLEKS                       R15 R15 K29 ["StudioTools"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K10 [require]
      126 GETTABLEKS                       R16 R0 K14 ["Src"]
      128 GETTABLEKS                       R16 R16 K30 ["Types"]
      130 CALL                             R15 1 1
      131 GETIMPORT                        R16 K10 [require]
      133 GETTABLEKS                       R17 R0 K14 ["Src"]
      135 GETTABLEKS                       R17 R17 K15 ["Util"]
      137 GETTABLEKS                       R17 R17 K31 ["Resources"]
      139 GETTABLEKS                       R17 R17 K32 ["StudioEnvironment"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K10 [require]
      144 GETTABLEKS                       R18 R0 K14 ["Src"]
      146 GETTABLEKS                       R18 R18 K33 ["Host"]
      148 GETTABLEKS                       R18 R18 K34 ["startMcpHost"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K10 [require]
      153 GETTABLEKS                       R19 R0 K14 ["Src"]
      155 GETTABLEKS                       R19 R19 K15 ["Util"]
      157 GETTABLEKS                       R19 R19 K35 ["waitForGuestReady"]
      159 CALL                             R18 1 1
      160 GETIMPORT                        R19 K10 [require]
      162 GETTABLEKS                       R20 R0 K14 ["Src"]
      164 GETTABLEKS                       R20 R20 K36 ["Flags"]
      166 GETTABLEKS                       R20 R20 K37 ["FFlagAssistantNotificationManager"]
      168 CALL                             R19 1 1
      169 GETTABLEKS                       R20 R3 K36 ["Flags"]
      171 GETTABLEKS                       R20 R20 K38 ["Shared"]
      173 GETTABLEKS                       R20 R20 K39 ["FFlagAssistantMultipleChatPersistence"]
      175 GETTABLEKS                       R21 R3 K36 ["Flags"]
      177 GETTABLEKS                       R21 R21 K38 ["Shared"]
      179 GETTABLEKS                       R21 R21 K40 ["FFlagAssistantUserSkills"]
      181 GETTABLEKS                       R22 R3 K36 ["Flags"]
      183 GETTABLEKS                       R22 R22 K38 ["Shared"]
      185 GETTABLEKS                       R22 R22 K41 ["FFlagExternalMCPUI"]
      187 GETTABLEKS                       R23 R3 K36 ["Flags"]
      189 GETTABLEKS                       R23 R23 K38 ["Shared"]
      191 GETTABLEKS                       R23 R23 K42 ["FFlagAssistantPlanMode"]
      193 GETTABLEKS                       R24 R3 K36 ["Flags"]
      195 GETTABLEKS                       R24 R24 K38 ["Shared"]
      197 GETTABLEKS                       R24 R24 K43 ["FFlagDebugEnableTestLLMAdapter"]
      199 GETTABLEKS                       R25 R3 K31 ["Resources"]
      201 GETTABLEKS                       R25 R25 K44 ["Localization"]
      203 GETTABLEKS                       R25 R25 K45 ["Translator"]
      205 DUPCLOSURE                       R26 K46 [PROTO_2]
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R23
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R6
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R10
      230 RETURN                           R26 1
