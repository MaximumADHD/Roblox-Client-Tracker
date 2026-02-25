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
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K8 ["Src"]
       19 GETTABLEKS                       R6 R7 K9 ["Util"]
       21 GETTABLEKS                       R5 R6 K10 ["StudioExperimentalToolsListener"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K5 [require]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K8 ["Src"]
       29 GETTABLEKS                       R7 R8 K9 ["Util"]
       31 GETTABLEKS                       R6 R7 K11 ["StudioNetworking"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R9 R10 K8 ["Src"]
       39 GETTABLEKS                       R8 R9 K9 ["Util"]
       41 GETTABLEKS                       R7 R8 K12 ["StudioScriptHelper"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K8 ["Src"]
       49 GETTABLEKS                       R9 R10 K9 ["Util"]
       51 GETTABLEKS                       R8 R9 K13 ["StudioTools"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R10 R11 K8 ["Src"]
       59 GETTABLEKS                       R9 R10 K14 ["Types"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K5 [require]
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R13 R14 K8 ["Src"]
       67 GETTABLEKS                       R12 R13 K9 ["Util"]
       69 GETTABLEKS                       R11 R12 K15 ["Resources"]
       71 GETTABLEKS                       R10 R11 K16 ["StudioEnvironment"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETUPVAL                         R14 0
       77 GETTABLEKS                       R13 R14 K8 ["Src"]
       79 GETTABLEKS                       R12 R13 K17 ["Host"]
       81 GETTABLEKS                       R11 R12 K18 ["startMcpHost"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R5 K19 ["create"]
       86 DUPTABLE                         R12 K23 [{"plugin", "isGuest", "isHost"}]
       87 SETTABLEKS                       R0 R12 K20 ["plugin"]
       89 GETTABLEKS                       R13 R1 K21 ["isGuest"]
       91 SETTABLEKS                       R13 R12 K21 ["isGuest"]
       93 GETTABLEKS                       R13 R1 K22 ["isHost"]
       95 SETTABLEKS                       R13 R12 K22 ["isHost"]
       97 CALL                             R11 1 1
       98 MOVE                             R12 R9
       99 MOVE                             R13 R0
      100 MOVE                             R14 R11
      101 CALL                             R12 2 1
      102 GETTABLEKS                       R13 R6 K24 ["initialize"]
      104 MOVE                             R14 R11
      105 CALL                             R13 1 0
      106 GETTABLEKS                       R14 R3 K25 ["Guest"]
      108 GETTABLEKS                       R13 R14 K26 ["startGuest"]
      110 DUPTABLE                         R14 K30 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
      111 GETTABLEKS                       R15 R8 K31 ["MCP_CLIENT_IDENTIFIER"]
      113 SETTABLEKS                       R15 R14 K27 ["clientIdentifier"]
      115 SETTABLEKS                       R11 R14 K28 ["LLMRequestNetworking"]
      117 SETTABLEKS                       R12 R14 K29 ["EnvironmentOverride"]
      119 CALL                             R13 1 0
      120 GETTABLEKS                       R13 R10 K32 ["configureModelContextProtocol"]
      122 CALL                             R13 0 0
      123 GETTABLEKS                       R14 R3 K33 ["Tools"]
      125 GETTABLEKS                       R13 R14 K34 ["createTools"]
      127 MOVE                             R14 R11
      128 GETTABLEKS                       R15 R7 K35 ["DefaultTools"]
      130 CALL                             R13 2 1
      131 NAMECALL                         R14 R11 K36 ["IsGuest"]
      133 CALL                             R14 1 1
      134 JUMPIFNOT                        R14 ; [+6]
      135 GETTABLEKS                       R15 R3 K33 ["Tools"]
      137 GETTABLEKS                       R14 R15 K37 ["registerTools"]
      139 MOVE                             R15 R13
      140 CALL                             R14 1 0
      141 GETTABLEKS                       R14 R4 K38 ["new"]
      143 MOVE                             R15 R2
      144 MOVE                             R16 R11
      145 GETTABLEKS                       R17 R7 K39 ["ExperimentalTools"]
      147 GETTABLEKS                       R18 R7 K40 ["ExperimentFeatureTools"]
      149 CALL                             R14 4 1
      150 GETTABLEKS                       R15 R14 K41 ["trackUserLoggedIn"]
      152 CALL                             R15 0 0
      153 GETTABLEKS                       R15 R0 K42 ["Unloading"]
      155 NEWCLOSURE                       R17 P0
      156 CAPTURE                          VAL R5
      157 NAMECALL                         R15 R15 K43 ["Connect"]
      159 CALL                             R15 2 0
      160 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
