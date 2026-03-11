PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["IXPService"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K5 [pcall]
        8 GETIMPORT                        R5 K1 [game]
       10 GETTABLEKS                       R4 R5 K3 ["GetService"]
       12 GETIMPORT                        R5 K1 [game]
       14 LOADK                            R6 K6 ["StudioPublishService"]
       15 CALL                             R3 3 2
       16 GETIMPORT                        R5 K8 [require]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K9 ["Packages"]
       21 GETTABLEKS                       R6 R7 K10 ["AssistantUI"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K8 [require]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R10 R11 K11 ["Src"]
       29 GETTABLEKS                       R9 R10 K12 ["Util"]
       31 GETTABLEKS                       R8 R9 K13 ["Resources"]
       33 GETTABLEKS                       R7 R8 K14 ["StudioEnvironment"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K8 [require]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K11 ["Src"]
       41 GETTABLEKS                       R9 R10 K15 ["Host"]
       43 GETTABLEKS                       R8 R9 K16 ["startMcpHost"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K8 [require]
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R11 R12 K11 ["Src"]
       51 GETTABLEKS                       R10 R11 K12 ["Util"]
       53 GETTABLEKS                       R9 R10 K17 ["StudioExperimentalToolsListener"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K8 [require]
       58 GETUPVAL                         R13 0
       59 GETTABLEKS                       R12 R13 K11 ["Src"]
       61 GETTABLEKS                       R11 R12 K12 ["Util"]
       63 GETTABLEKS                       R10 R11 K18 ["StudioConversationLoader"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K8 [require]
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R13 R14 K11 ["Src"]
       71 GETTABLEKS                       R12 R13 K12 ["Util"]
       73 GETTABLEKS                       R11 R12 K19 ["StudioIdentification"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K8 [require]
       78 GETUPVAL                         R15 0
       79 GETTABLEKS                       R14 R15 K11 ["Src"]
       81 GETTABLEKS                       R13 R14 K12 ["Util"]
       83 GETTABLEKS                       R12 R13 K20 ["StudioNetworking"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K8 [require]
       88 GETUPVAL                         R16 0
       89 GETTABLEKS                       R15 R16 K11 ["Src"]
       91 GETTABLEKS                       R14 R15 K12 ["Util"]
       93 GETTABLEKS                       R13 R14 K21 ["StudioScriptHelper"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K8 [require]
       98 GETUPVAL                         R19 0
       99 GETTABLEKS                       R18 R19 K11 ["Src"]
      101 GETTABLEKS                       R17 R18 K22 ["Components"]
      103 GETTABLEKS                       R16 R17 K23 ["Contexts"]
      105 GETTABLEKS                       R15 R16 K24 ["StudioLLM"]
      107 GETTABLEKS                       R14 R15 K25 ["StudioLLMRequest"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K8 [require]
      112 GETUPVAL                         R18 0
      113 GETTABLEKS                       R17 R18 K11 ["Src"]
      115 GETTABLEKS                       R16 R17 K12 ["Util"]
      117 GETTABLEKS                       R15 R16 K26 ["StudioTools"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K8 [require]
      122 GETUPVAL                         R18 0
      123 GETTABLEKS                       R17 R18 K11 ["Src"]
      125 GETTABLEKS                       R16 R17 K27 ["Types"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K8 [require]
      130 GETUPVAL                         R20 0
      131 GETTABLEKS                       R19 R20 K11 ["Src"]
      133 GETTABLEKS                       R18 R19 K12 ["Util"]
      135 GETTABLEKS                       R17 R18 K28 ["waitForGuestReady"]
      137 CALL                             R16 1 1
      138 GETTABLEKS                       R19 R5 K29 ["Flags"]
      140 GETTABLEKS                       R18 R19 K30 ["Shared"]
      142 GETTABLEKS                       R17 R18 K31 ["FFlagEnableSubagents"]
      144 GETTABLEKS                       R20 R5 K29 ["Flags"]
      146 GETTABLEKS                       R19 R20 K30 ["Shared"]
      148 GETTABLEKS                       R18 R19 K32 ["FFlagAssistantPersistConversations"]
      150 GETTABLEKS                       R21 R5 K29 ["Flags"]
      152 GETTABLEKS                       R20 R21 K30 ["Shared"]
      154 GETTABLEKS                       R19 R20 K33 ["FFlagExternalMCPUI"]
      156 GETTABLEKS                       R20 R11 K34 ["create"]
      158 DUPTABLE                         R21 K38 [{"plugin", "isGuest", "isHost"}]
      159 SETTABLEKS                       R0 R21 K35 ["plugin"]
      161 GETTABLEKS                       R22 R1 K36 ["isGuest"]
      163 SETTABLEKS                       R22 R21 K36 ["isGuest"]
      165 GETTABLEKS                       R22 R1 K37 ["isHost"]
      167 SETTABLEKS                       R22 R21 K37 ["isHost"]
      169 CALL                             R20 1 1
      170 LOADNIL                          R21
      171 MOVE                             R22 R18
      172 CALL                             R22 0 1
      173 JUMPIFNOT                        R22 ; [+4]
      174 MOVE                             R22 R16
      175 MOVE                             R23 R20
      176 CALL                             R22 1 1
      177 MOVE                             R21 R22
      178 MOVE                             R22 R6
      179 MOVE                             R23 R0
      180 MOVE                             R24 R20
      181 CALL                             R22 2 1
      182 MOVE                             R23 R19
      183 CALL                             R23 0 1
      184 JUMPIFNOT                        R23 ; [+5]
      185 GETTABLEKS                       R23 R10 K39 ["initialize"]
      187 MOVE                             R24 R20
      188 MOVE                             R25 R0
      189 CALL                             R23 2 0
      190 GETTABLEKS                       R23 R12 K39 ["initialize"]
      192 MOVE                             R24 R20
      193 CALL                             R23 1 0
      194 GETTABLEKS                       R24 R5 K40 ["Guest"]
      196 GETTABLEKS                       R23 R24 K41 ["startGuest"]
      198 DUPTABLE                         R24 K45 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
      199 GETTABLEKS                       R25 R15 K46 ["MCP_CLIENT_IDENTIFIER"]
      201 SETTABLEKS                       R25 R24 K42 ["clientIdentifier"]
      203 SETTABLEKS                       R20 R24 K43 ["LLMRequestNetworking"]
      205 SETTABLEKS                       R22 R24 K44 ["EnvironmentOverride"]
      207 CALL                             R23 1 0
      208 GETTABLEKS                       R23 R7 K47 ["configureModelContextProtocol"]
      210 CALL                             R23 0 0
      211 MOVE                             R23 R17
      212 CALL                             R23 0 1
      213 JUMPIFNOT                        R23 ; [+16]
      214 GETTABLEKS                       R24 R5 K48 ["Subagents"]
      216 GETTABLEKS                       R23 R24 K49 ["registerAll"]
      218 CALL                             R23 0 0
      219 GETTABLEKS                       R24 R5 K48 ["Subagents"]
      221 GETTABLEKS                       R23 R24 K50 ["setRequestHandler"]
      223 GETTABLEKS                       R24 R13 K51 ["createRequestHandler"]
      225 GETIMPORT                        R25 K1 [game]
      227 MOVE                             R26 R0
      228 CALL                             R24 2 -1
      229 CALL                             R23 -1 0
      230 GETTABLEKS                       R24 R5 K52 ["Tools"]
      232 GETTABLEKS                       R23 R24 K53 ["createTools"]
      234 MOVE                             R24 R20
      235 GETTABLEKS                       R25 R14 K54 ["DefaultTools"]
      237 CALL                             R23 2 1
      238 NAMECALL                         R24 R20 K55 ["IsGuest"]
      240 CALL                             R24 1 1
      241 JUMPIFNOT                        R24 ; [+6]
      242 GETTABLEKS                       R25 R5 K52 ["Tools"]
      244 GETTABLEKS                       R24 R25 K56 ["registerTools"]
      246 MOVE                             R25 R23
      247 CALL                             R24 1 0
      248 GETTABLEKS                       R24 R8 K57 ["new"]
      250 MOVE                             R25 R2
      251 MOVE                             R26 R20
      252 GETTABLEKS                       R27 R14 K58 ["ExperimentalTools"]
      254 GETTABLEKS                       R28 R14 K59 ["ExperimentFeatureTools"]
      256 CALL                             R24 4 1
      257 GETTABLEKS                       R25 R24 K60 ["trackUserLoggedIn"]
      259 CALL                             R25 0 0
      260 MOVE                             R25 R18
      261 CALL                             R25 0 1
      262 JUMPIFNOT                        R25 ; [+18]
      263 GETTABLEKS                       R25 R9 K61 ["trackSessions"]
      265 DUPTABLE                         R26 K66 [{"dataModel", "plugin", "networking", "environment", "gamePublishFinishedSignal"}]
      266 GETIMPORT                        R27 K1 [game]
      268 SETTABLEKS                       R27 R26 K62 ["dataModel"]
      270 SETTABLEKS                       R0 R26 K35 ["plugin"]
      272 SETTABLEKS                       R20 R26 K63 ["networking"]
      274 SETTABLEKS                       R22 R26 K64 ["environment"]
      276 GETTABLEKS                       R27 R4 K67 ["GamePublishFinished"]
      278 SETTABLEKS                       R27 R26 K65 ["gamePublishFinishedSignal"]
      280 CALL                             R25 1 0
      281 GETTABLEKS                       R25 R0 K68 ["Unloading"]
      283 NEWCLOSURE                       R27 P0
      284 CAPTURE                          VAL R11
      285 NAMECALL                         R25 R25 K69 ["Connect"]
      287 CALL                             R25 2 0
      288 MOVE                             R25 R18
      289 CALL                             R25 0 1
      290 JUMPIFNOT                        R25 ; [+2]
      291 MOVE                             R25 R21
      292 CALL                             R25 0 0
      293 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
