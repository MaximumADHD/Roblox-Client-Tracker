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
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["get"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R3 R3 K1 ["isCompactionExperimentEnabled"]
       12 CALL                             R3 0 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K2 ["estimateTokens"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 3
       22 CALL                             R4 0 1
       23 GETUPVAL                         R5 4
       24 CALL                             R5 0 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["getContextWindowForModel"]
       28 MOVE                             R7 R2
       29 CALL                             R6 1 1
       30 ADD                              R8 R3 R4
       31 ADD                              R7 R8 R5
       32 JUMPIFLT                         R6 R7 ; [+2]
       34 LOADB                            R8 0 +1
       35 LOADB                            R8 1
       36 RETURN                           R8 1

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
       29 GETTABLEKS                       R5 R5 K14 ["FFlagAssistantContextCompactionExp"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Flags"]
       36 GETTABLEKS                       R6 R6 K15 ["FIntContextCompactionResponseHeadroom"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Flags"]
       43 GETTABLEKS                       R7 R7 K16 ["FIntContextCompactionSystemPromptEstimate"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Flags"]
       50 GETTABLEKS                       R8 R8 K17 ["FIntContextCompactionThresholdTokens"]
       52 CALL                             R7 1 1
       53 NEWTABLE                         R8 16 0
       55 LOADK                            R9 K18 [1000000]
       56 SETTABLEKS                       R9 R8 K19 ["claude-sonnet-4-6"]
       58 LOADK                            R9 K18 [1000000]
       59 SETTABLEKS                       R9 R8 K20 ["claude-opus-4-6"]
       61 LOADK                            R9 K21 [200000]
       62 SETTABLEKS                       R9 R8 K22 ["claude-sonnet-4-5"]
       64 LOADK                            R9 K21 [200000]
       65 SETTABLEKS                       R9 R8 K23 ["claude-haiku-4-5"]
       67 LOADK                            R9 K18 [1000000]
       68 SETTABLEKS                       R9 R8 K24 ["gemini-3-pro-preview"]
       70 LOADK                            R9 K18 [1000000]
       71 SETTABLEKS                       R9 R8 K25 ["gemini-3-flash-preview"]
       73 LOADK                            R9 K18 [1000000]
       74 SETTABLEKS                       R9 R8 K26 ["gemini-2.5-pro"]
       76 LOADK                            R9 K27 [400000]
       77 SETTABLEKS                       R9 R8 K28 ["gpt-5.2"]
       79 LOADK                            R9 K27 [400000]
       80 SETTABLEKS                       R9 R8 K29 ["gpt-5"]
       82 LOADK                            R9 K27 [400000]
       83 SETTABLEKS                       R9 R8 K30 ["gpt-5-mini"]
       85 LOADK                            R9 K18 [1000000]
       86 SETTABLEKS                       R9 R8 K31 ["gpt-4.1"]
       88 NEWTABLE                         R9 0 3
       90 DUPTABLE                         R10 K34 [{"prefix", "contextWindow"}]
       91 LOADK                            R11 K35 ["claude-"]
       92 SETTABLEKS                       R11 R10 K32 ["prefix"]
       94 LOADK                            R11 K18 [1000000]
       95 SETTABLEKS                       R11 R10 K33 ["contextWindow"]
       97 DUPTABLE                         R11 K34 [{"prefix", "contextWindow"}]
       98 LOADK                            R12 K36 ["gemini-"]
       99 SETTABLEKS                       R12 R11 K32 ["prefix"]
      101 LOADK                            R12 K18 [1000000]
      102 SETTABLEKS                       R12 R11 K33 ["contextWindow"]
      104 DUPTABLE                         R12 K34 [{"prefix", "contextWindow"}]
      105 LOADK                            R13 K37 ["gpt-"]
      106 SETTABLEKS                       R13 R12 K32 ["prefix"]
      108 LOADK                            R13 K27 [400000]
      109 SETTABLEKS                       R13 R12 K33 ["contextWindow"]
      111 SETLIST                          R9 R10 3 [1]
      113 NEWTABLE                         R10 4 0
      115 DUPCLOSURE                       R11 K38 [PROTO_0]
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R11 R10 K39 ["estimateTokens"]
      119 DUPCLOSURE                       R11 K40 [PROTO_1]
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R9
      123 SETTABLEKS                       R11 R10 K41 ["getContextWindowForModel"]
      125 DUPCLOSURE                       R11 K42 [PROTO_2]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R5
      131 SETTABLEKS                       R11 R10 K43 ["shouldCompact"]
      133 RETURN                           R10 1
