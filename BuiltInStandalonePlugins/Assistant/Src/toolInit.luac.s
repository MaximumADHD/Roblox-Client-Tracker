PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["IXPService"]
        3 NAMECALL                         R3 R3 K3 ["GetService"]
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K5 [pcall]
        8 GETIMPORT                        R6 K1 [game]
       10 GETTABLEKS                       R5 R6 K3 ["GetService"]
       12 GETIMPORT                        R6 K1 [game]
       14 LOADK                            R7 K6 ["StudioPublishService"]
       15 CALL                             R4 3 2
       16 GETIMPORT                        R6 K8 [require]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R8 R9 K9 ["Packages"]
       21 GETTABLEKS                       R7 R8 K10 ["AssistantUI"]
       23 CALL                             R6 1 1
       24 GETIMPORT                        R7 K8 [require]
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R11 R12 K11 ["Src"]
       29 GETTABLEKS                       R10 R11 K12 ["Util"]
       31 GETTABLEKS                       R9 R10 K13 ["Resources"]
       33 GETTABLEKS                       R8 R9 K14 ["StudioEnvironment"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K8 [require]
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R11 R12 K11 ["Src"]
       41 GETTABLEKS                       R10 R11 K15 ["Host"]
       43 GETTABLEKS                       R9 R10 K16 ["startMcpHost"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K8 [require]
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R12 R13 K11 ["Src"]
       51 GETTABLEKS                       R11 R12 K12 ["Util"]
       53 GETTABLEKS                       R10 R11 K17 ["StudioExperimentalToolsListener"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K8 [require]
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R13 R14 K11 ["Src"]
       61 GETTABLEKS                       R12 R13 K12 ["Util"]
       63 GETTABLEKS                       R11 R12 K18 ["StudioConversationLoader"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K8 [require]
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R14 R15 K11 ["Src"]
       71 GETTABLEKS                       R13 R14 K12 ["Util"]
       73 GETTABLEKS                       R12 R13 K19 ["StudioIdentification"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K8 [require]
       78 GETUPVAL                         R16 0
       79 GETTABLEKS                       R15 R16 K11 ["Src"]
       81 GETTABLEKS                       R14 R15 K12 ["Util"]
       83 GETTABLEKS                       R13 R14 K20 ["StudioNetworking"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K8 [require]
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R16 R17 K11 ["Src"]
       91 GETTABLEKS                       R15 R16 K12 ["Util"]
       93 GETTABLEKS                       R14 R15 K21 ["StudioScriptHelper"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K8 [require]
       98 GETUPVAL                         R20 0
       99 GETTABLEKS                       R19 R20 K11 ["Src"]
      101 GETTABLEKS                       R18 R19 K22 ["Components"]
      103 GETTABLEKS                       R17 R18 K23 ["Contexts"]
      105 GETTABLEKS                       R16 R17 K24 ["StudioLLM"]
      107 GETTABLEKS                       R15 R16 K25 ["StudioLLMRequest"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K8 [require]
      112 GETUPVAL                         R19 0
      113 GETTABLEKS                       R18 R19 K11 ["Src"]
      115 GETTABLEKS                       R17 R18 K12 ["Util"]
      117 GETTABLEKS                       R16 R17 K26 ["StudioTools"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K8 [require]
      122 GETUPVAL                         R19 0
      123 GETTABLEKS                       R18 R19 K11 ["Src"]
      125 GETTABLEKS                       R17 R18 K27 ["Types"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K8 [require]
      130 GETUPVAL                         R21 0
      131 GETTABLEKS                       R20 R21 K11 ["Src"]
      133 GETTABLEKS                       R19 R20 K12 ["Util"]
      135 GETTABLEKS                       R18 R19 K28 ["waitForGuestReady"]
      137 CALL                             R17 1 1
      138 GETTABLEKS                       R20 R6 K29 ["Flags"]
      140 GETTABLEKS                       R19 R20 K30 ["Shared"]
      142 GETTABLEKS                       R18 R19 K31 ["FFlagEnableSkills"]
      144 GETTABLEKS                       R21 R6 K29 ["Flags"]
      146 GETTABLEKS                       R20 R21 K30 ["Shared"]
      148 GETTABLEKS                       R19 R20 K32 ["FFlagEnableSubagents"]
      150 GETTABLEKS                       R22 R6 K29 ["Flags"]
      152 GETTABLEKS                       R21 R22 K30 ["Shared"]
      154 GETTABLEKS                       R20 R21 K33 ["FFlagAssistantPersistConversations"]
      156 GETTABLEKS                       R23 R6 K29 ["Flags"]
      158 GETTABLEKS                       R22 R23 K30 ["Shared"]
      160 GETTABLEKS                       R21 R22 K34 ["FFlagAssistantDMNetworkIdentity"]
      162 GETTABLEKS                       R24 R6 K29 ["Flags"]
      164 GETTABLEKS                       R23 R24 K30 ["Shared"]
      166 GETTABLEKS                       R22 R23 K35 ["FFlagExternalMCPUI"]
      168 MOVE                             R23 R21
      169 CALL                             R23 0 1
      170 JUMPIF                           R23 ; [+15]
      171 GETTABLEKS                       R23 R12 K36 ["create"]
      173 DUPTABLE                         R24 K40 [{"plugin", "isGuest", "isHost"}]
      174 SETTABLEKS                       R0 R24 K37 ["plugin"]
      176 GETTABLEKS                       R25 R1 K38 ["isGuest"]
      178 SETTABLEKS                       R25 R24 K38 ["isGuest"]
      180 GETTABLEKS                       R25 R1 K39 ["isHost"]
      182 SETTABLEKS                       R25 R24 K39 ["isHost"]
      184 CALL                             R23 1 1
      185 MOVE                             R2 R23
      186 LOADNIL                          R23
      187 MOVE                             R24 R20
      188 CALL                             R24 0 1
      189 JUMPIFNOT                        R24 ; [+4]
      190 MOVE                             R24 R17
      191 MOVE                             R25 R2
      192 CALL                             R24 1 1
      193 MOVE                             R23 R24
      194 MOVE                             R24 R7
      195 MOVE                             R25 R0
      196 MOVE                             R26 R2
      197 CALL                             R24 2 1
      198 MOVE                             R25 R22
      199 CALL                             R25 0 1
      200 JUMPIFNOT                        R25 ; [+5]
      201 GETTABLEKS                       R25 R11 K41 ["initialize"]
      203 MOVE                             R26 R2
      204 MOVE                             R27 R0
      205 CALL                             R25 2 0
      206 GETTABLEKS                       R25 R13 K41 ["initialize"]
      208 MOVE                             R26 R2
      209 CALL                             R25 1 0
      210 GETTABLEKS                       R26 R6 K42 ["Guest"]
      212 GETTABLEKS                       R25 R26 K43 ["startGuest"]
      214 DUPTABLE                         R26 K47 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
      215 GETTABLEKS                       R27 R16 K48 ["MCP_CLIENT_IDENTIFIER"]
      217 SETTABLEKS                       R27 R26 K44 ["clientIdentifier"]
      219 SETTABLEKS                       R2 R26 K45 ["LLMRequestNetworking"]
      221 SETTABLEKS                       R24 R26 K46 ["EnvironmentOverride"]
      223 CALL                             R25 1 0
      224 GETTABLEKS                       R25 R8 K49 ["configureModelContextProtocol"]
      226 CALL                             R25 0 0
      227 MOVE                             R25 R18
      228 CALL                             R25 0 1
      229 JUMPIFNOT                        R25 ; [+5]
      230 GETTABLEKS                       R26 R6 K50 ["Skills"]
      232 GETTABLEKS                       R25 R26 K51 ["registerAll"]
      234 CALL                             R25 0 0
      235 MOVE                             R25 R19
      236 CALL                             R25 0 1
      237 JUMPIFNOT                        R25 ; [+16]
      238 GETTABLEKS                       R26 R6 K52 ["Subagents"]
      240 GETTABLEKS                       R25 R26 K51 ["registerAll"]
      242 CALL                             R25 0 0
      243 GETTABLEKS                       R26 R6 K52 ["Subagents"]
      245 GETTABLEKS                       R25 R26 K53 ["setRequestHandler"]
      247 GETTABLEKS                       R26 R14 K54 ["createRequestHandler"]
      249 GETIMPORT                        R27 K1 [game]
      251 MOVE                             R28 R0
      252 CALL                             R26 2 -1
      253 CALL                             R25 -1 0
      254 GETTABLEKS                       R26 R6 K55 ["Tools"]
      256 GETTABLEKS                       R25 R26 K56 ["createTools"]
      258 MOVE                             R26 R2
      259 GETTABLEKS                       R27 R15 K57 ["DefaultTools"]
      261 CALL                             R25 2 1
      262 NAMECALL                         R26 R2 K58 ["IsGuest"]
      264 CALL                             R26 1 1
      265 JUMPIFNOT                        R26 ; [+6]
      266 GETTABLEKS                       R27 R6 K55 ["Tools"]
      268 GETTABLEKS                       R26 R27 K59 ["registerTools"]
      270 MOVE                             R27 R25
      271 CALL                             R26 1 0
      272 GETTABLEKS                       R26 R9 K60 ["new"]
      274 MOVE                             R27 R3
      275 MOVE                             R28 R2
      276 GETTABLEKS                       R29 R15 K61 ["ExperimentalTools"]
      278 GETTABLEKS                       R30 R15 K62 ["ExperimentFeatureTools"]
      280 CALL                             R26 4 1
      281 GETTABLEKS                       R27 R26 K63 ["trackUserLoggedIn"]
      283 CALL                             R27 0 0
      284 MOVE                             R27 R20
      285 CALL                             R27 0 1
      286 JUMPIFNOT                        R27 ; [+18]
      287 GETTABLEKS                       R27 R10 K64 ["trackSessions"]
      289 DUPTABLE                         R28 K69 [{"dataModel", "plugin", "networking", "environment", "gamePublishFinishedSignal"}]
      290 GETIMPORT                        R29 K1 [game]
      292 SETTABLEKS                       R29 R28 K65 ["dataModel"]
      294 SETTABLEKS                       R0 R28 K37 ["plugin"]
      296 SETTABLEKS                       R2 R28 K66 ["networking"]
      298 SETTABLEKS                       R24 R28 K67 ["environment"]
      300 GETTABLEKS                       R29 R5 K70 ["GamePublishFinished"]
      302 SETTABLEKS                       R29 R28 K68 ["gamePublishFinishedSignal"]
      304 CALL                             R27 1 0
      305 GETTABLEKS                       R27 R0 K71 ["Unloading"]
      307 NEWCLOSURE                       R29 P0
      308 CAPTURE                          VAL R12
      309 NAMECALL                         R27 R27 K72 ["Connect"]
      311 CALL                             R27 2 0
      312 MOVE                             R27 R20
      313 CALL                             R27 0 1
      314 JUMPIFNOT                        R27 ; [+2]
      315 MOVE                             R27 R23
      316 CALL                             R27 0 0
      317 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
