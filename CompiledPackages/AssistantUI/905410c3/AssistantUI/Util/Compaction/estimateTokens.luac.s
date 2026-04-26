PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETIMPORT                        R7 K1 [pcall]
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R8 R9 K2 ["JSONEncode"]
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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["estimateTokens"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 2
       11 CALL                             R5 0 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["getContextWindowForModel"]
       15 MOVE                             R7 R2
       16 CALL                             R6 1 1
       17 ADD                              R8 R3 R4
       18 ADD                              R7 R8 R5
       19 JUMPIFLT                         R6 R7 ; [+2]
       21 LOADB                            R8 0 +1
       22 LOADB                            R8 1
       23 RETURN                           R8 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Types"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R5 R0 K11 ["Flags"]
       22 GETTABLEKS                       R4 R5 K12 ["FIntContextCompactionResponseHeadroom"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Flags"]
       29 GETTABLEKS                       R5 R6 K13 ["FIntContextCompactionSystemPromptEstimate"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Flags"]
       36 GETTABLEKS                       R6 R7 K14 ["FIntContextCompactionThresholdTokens"]
       38 CALL                             R5 1 1
       39 NEWTABLE                         R6 16 0
       41 LOADK                            R7 K15 [1000000]
       42 SETTABLEKS                       R7 R6 K16 ["claude-sonnet-4-6"]
       44 LOADK                            R7 K15 [1000000]
       45 SETTABLEKS                       R7 R6 K17 ["claude-opus-4-6"]
       47 LOADK                            R7 K18 [200000]
       48 SETTABLEKS                       R7 R6 K19 ["claude-sonnet-4-5"]
       50 LOADK                            R7 K18 [200000]
       51 SETTABLEKS                       R7 R6 K20 ["claude-haiku-4-5"]
       53 LOADK                            R7 K15 [1000000]
       54 SETTABLEKS                       R7 R6 K21 ["gemini-3-pro-preview"]
       56 LOADK                            R7 K15 [1000000]
       57 SETTABLEKS                       R7 R6 K22 ["gemini-3-flash-preview"]
       59 LOADK                            R7 K15 [1000000]
       60 SETTABLEKS                       R7 R6 K23 ["gemini-2.5-pro"]
       62 LOADK                            R7 K24 [400000]
       63 SETTABLEKS                       R7 R6 K25 ["gpt-5.2"]
       65 LOADK                            R7 K24 [400000]
       66 SETTABLEKS                       R7 R6 K26 ["gpt-5"]
       68 LOADK                            R7 K24 [400000]
       69 SETTABLEKS                       R7 R6 K27 ["gpt-5-mini"]
       71 LOADK                            R7 K15 [1000000]
       72 SETTABLEKS                       R7 R6 K28 ["gpt-4.1"]
       74 NEWTABLE                         R7 0 3
       76 DUPTABLE                         R8 K31 [{"prefix", "contextWindow"}]
       77 LOADK                            R9 K32 ["claude-"]
       78 SETTABLEKS                       R9 R8 K29 ["prefix"]
       80 LOADK                            R9 K15 [1000000]
       81 SETTABLEKS                       R9 R8 K30 ["contextWindow"]
       83 DUPTABLE                         R9 K31 [{"prefix", "contextWindow"}]
       84 LOADK                            R10 K33 ["gemini-"]
       85 SETTABLEKS                       R10 R9 K29 ["prefix"]
       87 LOADK                            R10 K15 [1000000]
       88 SETTABLEKS                       R10 R9 K30 ["contextWindow"]
       90 DUPTABLE                         R10 K31 [{"prefix", "contextWindow"}]
       91 LOADK                            R11 K34 ["gpt-"]
       92 SETTABLEKS                       R11 R10 K29 ["prefix"]
       94 LOADK                            R11 K24 [400000]
       95 SETTABLEKS                       R11 R10 K30 ["contextWindow"]
       97 SETLIST                          R7 R8 3 [1]
       99 NEWTABLE                         R8 4 0
      101 DUPCLOSURE                       R9 K35 [PROTO_0]
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R9 R8 K36 ["estimateTokens"]
      105 DUPCLOSURE                       R9 K37 [PROTO_1]
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R7
      109 SETTABLEKS                       R9 R8 K38 ["getContextWindowForModel"]
      111 DUPCLOSURE                       R9 K39 [PROTO_2]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R3
      115 SETTABLEKS                       R9 R8 K40 ["shouldCompact"]
      117 RETURN                           R8 1
