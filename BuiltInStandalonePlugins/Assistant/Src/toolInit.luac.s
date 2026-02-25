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
        6 GETIMPORT                        R3 K5 [require]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K6 ["Packages"]
       11 GETTABLEKS                       R4 R5 K7 ["AssistantUI"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K5 [require]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K8 ["Src"]
       19 GETTABLEKS                       R7 R8 K9 ["Util"]
       21 GETTABLEKS                       R6 R7 K10 ["Resources"]
       23 GETTABLEKS                       R5 R6 K11 ["StudioEnvironment"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K5 [require]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K8 ["Src"]
       31 GETTABLEKS                       R7 R8 K12 ["Host"]
       33 GETTABLEKS                       R6 R7 K13 ["startMcpHost"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R9 R10 K8 ["Src"]
       41 GETTABLEKS                       R8 R9 K9 ["Util"]
       43 GETTABLEKS                       R7 R8 K14 ["StudioExperimentalToolsListener"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K8 ["Src"]
       51 GETTABLEKS                       R9 R10 K9 ["Util"]
       53 GETTABLEKS                       R8 R9 K15 ["StudioConversationLoader"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R11 R12 K8 ["Src"]
       61 GETTABLEKS                       R10 R11 K9 ["Util"]
       63 GETTABLEKS                       R9 R10 K16 ["StudioNetworking"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETUPVAL                         R13 0
       69 GETTABLEKS                       R12 R13 K8 ["Src"]
       71 GETTABLEKS                       R11 R12 K9 ["Util"]
       73 GETTABLEKS                       R10 R11 K17 ["StudioScriptHelper"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R13 R14 K8 ["Src"]
       81 GETTABLEKS                       R12 R13 K9 ["Util"]
       83 GETTABLEKS                       R11 R12 K18 ["StudioTools"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETUPVAL                         R14 0
       89 GETTABLEKS                       R13 R14 K8 ["Src"]
       91 GETTABLEKS                       R12 R13 K19 ["Types"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R15 R16 K8 ["Src"]
       99 GETTABLEKS                       R14 R15 K9 ["Util"]
      101 GETTABLEKS                       R13 R14 K20 ["waitForGuestReady"]
      103 CALL                             R12 1 1
      104 GETTABLEKS                       R15 R3 K21 ["Flags"]
      106 GETTABLEKS                       R14 R15 K22 ["Shared"]
      108 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantPersistConversations"]
      110 GETTABLEKS                       R14 R8 K24 ["create"]
      112 DUPTABLE                         R15 K28 [{"plugin", "isGuest", "isHost"}]
      113 SETTABLEKS                       R0 R15 K25 ["plugin"]
      115 GETTABLEKS                       R16 R1 K26 ["isGuest"]
      117 SETTABLEKS                       R16 R15 K26 ["isGuest"]
      119 GETTABLEKS                       R16 R1 K27 ["isHost"]
      121 SETTABLEKS                       R16 R15 K27 ["isHost"]
      123 CALL                             R14 1 1
      124 LOADNIL                          R15
      125 MOVE                             R16 R13
      126 CALL                             R16 0 1
      127 JUMPIFNOT                        R16 ; [+4]
      128 MOVE                             R16 R12
      129 MOVE                             R17 R14
      130 CALL                             R16 1 1
      131 MOVE                             R15 R16
      132 MOVE                             R16 R4
      133 MOVE                             R17 R0
      134 MOVE                             R18 R14
      135 CALL                             R16 2 1
      136 GETTABLEKS                       R17 R9 K29 ["initialize"]
      138 MOVE                             R18 R14
      139 CALL                             R17 1 0
      140 GETTABLEKS                       R18 R3 K30 ["Guest"]
      142 GETTABLEKS                       R17 R18 K31 ["startGuest"]
      144 DUPTABLE                         R18 K35 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
      145 GETTABLEKS                       R19 R11 K36 ["MCP_CLIENT_IDENTIFIER"]
      147 SETTABLEKS                       R19 R18 K32 ["clientIdentifier"]
      149 SETTABLEKS                       R14 R18 K33 ["LLMRequestNetworking"]
      151 SETTABLEKS                       R16 R18 K34 ["EnvironmentOverride"]
      153 CALL                             R17 1 0
      154 GETTABLEKS                       R17 R5 K37 ["configureModelContextProtocol"]
      156 CALL                             R17 0 0
      157 GETTABLEKS                       R18 R3 K38 ["Tools"]
      159 GETTABLEKS                       R17 R18 K39 ["createTools"]
      161 MOVE                             R18 R14
      162 GETTABLEKS                       R19 R10 K40 ["DefaultTools"]
      164 CALL                             R17 2 1
      165 NAMECALL                         R18 R14 K41 ["IsGuest"]
      167 CALL                             R18 1 1
      168 JUMPIFNOT                        R18 ; [+6]
      169 GETTABLEKS                       R19 R3 K38 ["Tools"]
      171 GETTABLEKS                       R18 R19 K42 ["registerTools"]
      173 MOVE                             R19 R17
      174 CALL                             R18 1 0
      175 GETTABLEKS                       R18 R6 K43 ["new"]
      177 MOVE                             R19 R2
      178 MOVE                             R20 R14
      179 GETTABLEKS                       R21 R10 K44 ["ExperimentalTools"]
      181 GETTABLEKS                       R22 R10 K45 ["ExperimentFeatureTools"]
      183 CALL                             R18 4 1
      184 GETTABLEKS                       R19 R18 K46 ["trackUserLoggedIn"]
      186 CALL                             R19 0 0
      187 MOVE                             R19 R13
      188 CALL                             R19 0 1
      189 JUMPIFNOT                        R19 ; [+8]
      190 GETTABLEKS                       R19 R7 K47 ["trackSessions"]
      192 GETIMPORT                        R20 K1 [game]
      194 MOVE                             R21 R0
      195 MOVE                             R22 R14
      196 MOVE                             R23 R16
      197 CALL                             R19 4 0
      198 GETTABLEKS                       R19 R0 K48 ["Unloading"]
      200 NEWCLOSURE                       R21 P0
      201 CAPTURE                          VAL R8
      202 NAMECALL                         R19 R19 K49 ["Connect"]
      204 CALL                             R19 2 0
      205 MOVE                             R19 R13
      206 CALL                             R19 0 1
      207 JUMPIFNOT                        R19 ; [+2]
      208 MOVE                             R19 R15
      209 CALL                             R19 0 0
      210 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
