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
        0 JUMPIF                           R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FIntContextCompactionThresholdTokens"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R4 R0
       10 MULK                             R2 R3 K1 [0.8]
       11 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       12 GETIMPORT                        R1 K4 [math.floor]
       14 CALL                             R1 1 1
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 2
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 LOADN                            R8 1
       21 GETTABLEKS                       R10 R5 K5 ["prefix"]
       23 LENGTH                           R9 R10
       24 FASTCALL3                        STRING_SUB R0 R8 R9
       26 MOVE                             R7 R0
       27 GETIMPORT                        R6 K8 [string.sub]
       29 CALL                             R6 3 1
       30 GETTABLEKS                       R7 R5 K5 ["prefix"]
       32 JUMPIFNOTEQ                      R6 R7 ; [+9]
       34 GETTABLEKS                       R8 R5 K9 ["contextWindow"]
       36 MULK                             R7 R8 K1 [0.8]
       37 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       38 GETIMPORT                        R6 K4 [math.floor]
       40 CALL                             R6 1 1
       41 RETURN                           R6 1
       42 FORGLOOP                         R1 2 ; [-23]
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K0 ["FIntContextCompactionThresholdTokens"]
       47 RETURN                           R1 1

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
       19 GETTABLEKS                       R4 R4 K3 ["FIntContextCompactionSystemPromptEstimate"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["FIntContextCompactionResponseHeadroom"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K5 ["getContextWindowForModel"]
       27 MOVE                             R7 R2
       28 CALL                             R6 1 1
       29 ADD                              R8 R3 R4
       30 ADD                              R7 R8 R5
       31 JUMPIFLT                         R6 R7 ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 RETURN                           R8 1

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
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Types"]
       29 CALL                             R4 1 1
       30 NEWTABLE                         R5 16 0
       32 LOADK                            R6 K14 [1000000]
       33 SETTABLEKS                       R6 R5 K15 ["claude-sonnet-4-6"]
       35 LOADK                            R6 K14 [1000000]
       36 SETTABLEKS                       R6 R5 K16 ["claude-opus-4-6"]
       38 LOADK                            R6 K17 [200000]
       39 SETTABLEKS                       R6 R5 K18 ["claude-sonnet-4-5"]
       41 LOADK                            R6 K17 [200000]
       42 SETTABLEKS                       R6 R5 K19 ["claude-haiku-4-5"]
       44 LOADK                            R6 K14 [1000000]
       45 SETTABLEKS                       R6 R5 K20 ["gemini-3-pro-preview"]
       47 LOADK                            R6 K14 [1000000]
       48 SETTABLEKS                       R6 R5 K21 ["gemini-3-flash-preview"]
       50 LOADK                            R6 K14 [1000000]
       51 SETTABLEKS                       R6 R5 K22 ["gemini-2.5-pro"]
       53 LOADK                            R6 K23 [400000]
       54 SETTABLEKS                       R6 R5 K24 ["gpt-5.2"]
       56 LOADK                            R6 K23 [400000]
       57 SETTABLEKS                       R6 R5 K25 ["gpt-5"]
       59 LOADK                            R6 K23 [400000]
       60 SETTABLEKS                       R6 R5 K26 ["gpt-5-mini"]
       62 LOADK                            R6 K14 [1000000]
       63 SETTABLEKS                       R6 R5 K27 ["gpt-4.1"]
       65 NEWTABLE                         R6 0 3
       67 DUPTABLE                         R7 K31 [{["prefix"] = "claude-", ["contextWindow"] = 1000000}]
       68 DUPTABLE                         R8 K33 [{["prefix"] = "gemini-", ["contextWindow"] = 1000000}]
       69 DUPTABLE                         R9 K35 [{["prefix"] = "gpt-", ["contextWindow"] = 400000}]
       70 SETLIST                          R6 R7 3 [1]
       72 NEWTABLE                         R7 4 0
       74 DUPCLOSURE                       R8 K36 [PROTO_0]
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R8 R7 K37 ["estimateTokens"]
       78 DUPCLOSURE                       R8 K38 [PROTO_1]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R8 R7 K39 ["getContextWindowForModel"]
       84 DUPCLOSURE                       R8 K40 [PROTO_2]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R8 R7 K41 ["shouldCompact"]
       90 RETURN                           R7 1
