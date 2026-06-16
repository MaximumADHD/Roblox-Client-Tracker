PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETIMPORT                        R7 K1 [pcall]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K2 ["JSONEncode"]
       10 GETUPVAL                         R9 0
       11 MOVE                             R10 R6
       12 CALL                             R7 3 2
       13 JUMPIFNOT                        R7 ; [+2]
       14 LENGTH                           R9 R8
       15 ADD                              R1 R1 R9
       16 FORGLOOP                         R2 2 ; [-12]
       18 DIVK                             R3 R1 K3 [4]
       19 FASTCALL1                        MATH_CEIL R3 ; [+2]
       20 GETIMPORT                        R2 K6 [math.ceil]
       22 CALL                             R2 1 1
       23 RETURN                           R2 1

PROTO_1:
        0 JUMPIF                           R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETUPVAL                         R4 1
        8 GETTABLE                         R3 R4 R0
        9 MULK                             R2 R3 K0 [0.8]
       10 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       11 GETIMPORT                        R1 K3 [math.floor]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 2
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 LOADN                            R8 1
       20 GETTABLEKS                       R10 R5 K4 ["prefix"]
       22 LENGTH                           R9 R10
       23 FASTCALL3                        STRING_SUB R0 R8 R9
       25 MOVE                             R7 R0
       26 GETIMPORT                        R6 K7 [string.sub]
       28 CALL                             R6 3 1
       29 GETTABLEKS                       R7 R5 K4 ["prefix"]
       31 JUMPIFNOTEQ                      R6 R7 ; [+9]
       33 GETTABLEKS                       R8 R5 K8 ["contextWindow"]
       35 MULK                             R7 R8 K0 [0.8]
       36 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       37 GETIMPORT                        R6 K3 [math.floor]
       39 CALL                             R6 1 1
       40 RETURN                           R6 1
       41 FORGLOOP                         R1 2 ; [-23]
       43 GETUPVAL                         R1 0
       44 CALL                             R1 0 -1
       45 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+2]
        1 LOADB                            R3 0
        2 RETURN                           R3 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["get"]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R3 R3 K1 ["isCompactionExperimentEnabled"]
        9 CALL                             R3 0 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["estimateTokens"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 3
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K3 ["getContextWindowForModel"]
       25 MOVE                             R7 R2
       26 CALL                             R6 1 1
       27 ADD                              R8 R3 R4
       28 ADD                              R7 R8 R5
       29 JUMPIFLT                         R6 R7 ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Flags"]
       29 GETTABLEKS                       R5 R5 K14 ["FIntContextCompactionResponseHeadroom"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Flags"]
       36 GETTABLEKS                       R6 R6 K15 ["FIntContextCompactionSystemPromptEstimate"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Flags"]
       43 GETTABLEKS                       R7 R7 K16 ["FIntContextCompactionThresholdTokens"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 16 0
       48 LOADK                            R8 K17 [1000000]
       49 SETTABLEKS                       R8 R7 K18 ["claude-sonnet-4-6"]
       51 LOADK                            R8 K17 [1000000]
       52 SETTABLEKS                       R8 R7 K19 ["claude-opus-4-6"]
       54 LOADK                            R8 K20 [200000]
       55 SETTABLEKS                       R8 R7 K21 ["claude-sonnet-4-5"]
       57 LOADK                            R8 K20 [200000]
       58 SETTABLEKS                       R8 R7 K22 ["claude-haiku-4-5"]
       60 LOADK                            R8 K17 [1000000]
       61 SETTABLEKS                       R8 R7 K23 ["gemini-3-pro-preview"]
       63 LOADK                            R8 K17 [1000000]
       64 SETTABLEKS                       R8 R7 K24 ["gemini-3-flash-preview"]
       66 LOADK                            R8 K17 [1000000]
       67 SETTABLEKS                       R8 R7 K25 ["gemini-2.5-pro"]
       69 LOADK                            R8 K26 [400000]
       70 SETTABLEKS                       R8 R7 K27 ["gpt-5.2"]
       72 LOADK                            R8 K26 [400000]
       73 SETTABLEKS                       R8 R7 K28 ["gpt-5"]
       75 LOADK                            R8 K26 [400000]
       76 SETTABLEKS                       R8 R7 K29 ["gpt-5-mini"]
       78 LOADK                            R8 K17 [1000000]
       79 SETTABLEKS                       R8 R7 K30 ["gpt-4.1"]
       81 NEWTABLE                         R8 0 3
       83 DUPTABLE                         R9 K33 [{"prefix", "contextWindow"}]
       84 LOADK                            R10 K34 ["claude-"]
       85 SETTABLEKS                       R10 R9 K31 ["prefix"]
       87 LOADK                            R10 K17 [1000000]
       88 SETTABLEKS                       R10 R9 K32 ["contextWindow"]
       90 DUPTABLE                         R10 K33 [{"prefix", "contextWindow"}]
       91 LOADK                            R11 K35 ["gemini-"]
       92 SETTABLEKS                       R11 R10 K31 ["prefix"]
       94 LOADK                            R11 K17 [1000000]
       95 SETTABLEKS                       R11 R10 K32 ["contextWindow"]
       97 DUPTABLE                         R11 K33 [{"prefix", "contextWindow"}]
       98 LOADK                            R12 K36 ["gpt-"]
       99 SETTABLEKS                       R12 R11 K31 ["prefix"]
      101 LOADK                            R12 K26 [400000]
      102 SETTABLEKS                       R12 R11 K32 ["contextWindow"]
      104 SETLIST                          R8 R9 3 [1]
      106 NEWTABLE                         R9 4 0
      108 DUPCLOSURE                       R10 K37 [PROTO_0]
      109 CAPTURE                          VAL R1
      110 SETTABLEKS                       R10 R9 K38 ["estimateTokens"]
      112 DUPCLOSURE                       R10 K39 [PROTO_1]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R8
      116 SETTABLEKS                       R10 R9 K40 ["getContextWindowForModel"]
      118 DUPCLOSURE                       R10 K41 [PROTO_2]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R10 R9 K42 ["shouldCompact"]
      125 RETURN                           R9 1
