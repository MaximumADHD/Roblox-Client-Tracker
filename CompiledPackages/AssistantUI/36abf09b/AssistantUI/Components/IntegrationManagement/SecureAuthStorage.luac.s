PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UrlEncode"]
        4 CALL                             R1 2 1
        5 LOADK                            R3 K1 ["McpAuth:%*"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSecureSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+12]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["FFlagDebugLogAssistantUI"]
       10 JUMPIFNOT                        R4 ; [+6]
       11 GETIMPORT                        R4 K4 [warn]
       13 LOADK                            R5 K5 ["Failed to read secure settings for key:"]
       14 MOVE                             R6 R1
       15 MOVE                             R7 R3
       16 CALL                             R4 3 0
       17 LOADNIL                          R4
       18 RETURN                           R4 1
       19 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSecureSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
       11 JUMPIFNOT                        R5 ; [+6]
       12 GETIMPORT                        R5 K4 [warn]
       14 LOADK                            R6 K5 ["Failed to write secure settings for key:"]
       15 MOVE                             R7 R1
       16 MOVE                             R8 R4
       17 CALL                             R5 3 0
       18 LOADB                            R5 0
       19 RETURN                           R5 1
       20 LOADB                            R5 1
       21 RETURN                           R5 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R2 K1 [next]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R6 R3
        4 NAMECALL                         R4 R4 K0 ["UrlEncode"]
        6 CALL                             R4 2 1
        7 LOADK                            R5 K1 ["McpAuth:%*"]
        8 MOVE                             R7 R4
        9 NAMECALL                         R5 R5 K2 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R2 R5
       13 GETIMPORT                        R3 K4 [pcall]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CALL                             R3 1 2
       19 JUMPIF                           R3 ; [+12]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K5 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R5 ; [+6]
       24 GETIMPORT                        R5 K7 [warn]
       26 LOADK                            R6 K8 ["Failed to read secure settings for key:"]
       27 MOVE                             R7 R2
       28 MOVE                             R8 R4
       29 CALL                             R5 3 0
       30 LOADNIL                          R0
       31 JUMP                             ; [+1]
       32 MOVE                             R0 R4
       33 JUMPIF                           R0 ; [+2]
       34 LOADNIL                          R1
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 4
       37 GETTABLEKS                       R1 R1 K9 ["clientInformation"]
       39 JUMPIFNOT                        R1 ; [+10]
       40 GETTABLEKS                       R1 R0 K10 ["cs"]
       42 JUMPIFNOT                        R1 ; [+7]
       43 GETUPVAL                         R1 4
       44 GETTABLEKS                       R1 R1 K9 ["clientInformation"]
       46 GETTABLEKS                       R2 R0 K10 ["cs"]
       48 SETTABLEKS                       R2 R1 K11 ["client_secret"]
       50 GETTABLEKS                       R1 R0 K12 ["at"]
       52 JUMPIF                           R1 ; [+3]
       53 GETTABLEKS                       R1 R0 K13 ["rt"]
       55 JUMPIFNOT                        R1 ; [+12]
       56 GETUPVAL                         R1 4
       57 DUPTABLE                         R2 K16 [{"access_token", "refresh_token"}]
       58 GETTABLEKS                       R3 R0 K12 ["at"]
       60 SETTABLEKS                       R3 R2 K14 ["access_token"]
       62 GETTABLEKS                       R3 R0 K13 ["rt"]
       64 SETTABLEKS                       R3 R2 K15 ["refresh_token"]
       66 SETTABLEKS                       R2 R1 K17 ["tokens"]
       68 LOADNIL                          R1
       69 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["joinDeep"]
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["map"]
       10 MOVE                             R4 R2
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 4
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K2 ["values"]
       21 MOVE                             R6 R3
       22 CALL                             R5 1 -1
       23 CALL                             R4 -1 1
       24 JUMPIF                           R4 ; [+8]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
       28 JUMPIFNOT                        R5 ; [+4]
       29 GETIMPORT                        R5 K5 [warn]
       31 LOADK                            R6 K6 ["Failed to read secrets from secure storage"]
       32 CALL                             R5 1 0
       33 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R3 K0 ["UrlEncode"]
        6 CALL                             R3 2 1
        7 LOADK                            R4 K1 ["McpAuth:%*"]
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R4 K2 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R1 R4
       13 GETUPVAL                         R2 3
       14 GETIMPORT                        R3 K4 [pcall]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CALL                             R3 1 2
       21 JUMPIF                           R3 ; [+11]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K5 ["FFlagDebugLogAssistantUI"]
       25 JUMPIFNOT                        R5 ; [+7]
       26 GETIMPORT                        R5 K7 [warn]
       28 LOADK                            R6 K8 ["Failed to write secure settings for key:"]
       29 MOVE                             R7 R1
       30 MOVE                             R8 R4
       31 CALL                             R5 3 0
       32 JUMP                             ; [0]
       33 LOADNIL                          R0
       34 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 DUPTABLE                         R9 K3 [{"cs", "at", "rt"}]
        9 GETTABLEKS                       R11 R8 K4 ["clientInformation"]
       11 JUMPIFNOT                        R11 ; [+5]
       12 GETTABLEKS                       R10 R8 K4 ["clientInformation"]
       14 GETTABLEKS                       R10 R10 K5 ["client_secret"]
       16 JUMPIF                           R10 ; [+1]
       17 LOADNIL                          R10
       18 SETTABLEKS                       R10 R9 K0 ["cs"]
       20 GETTABLEKS                       R11 R8 K6 ["tokens"]
       22 JUMPIFNOT                        R11 ; [+5]
       23 GETTABLEKS                       R10 R8 K6 ["tokens"]
       25 GETTABLEKS                       R10 R10 K7 ["access_token"]
       27 JUMPIF                           R10 ; [+1]
       28 LOADNIL                          R10
       29 SETTABLEKS                       R10 R9 K1 ["at"]
       31 GETTABLEKS                       R11 R8 K6 ["tokens"]
       33 JUMPIFNOT                        R11 ; [+5]
       34 GETTABLEKS                       R10 R8 K6 ["tokens"]
       36 GETTABLEKS                       R10 R10 K8 ["refresh_token"]
       38 JUMPIF                           R10 ; [+1]
       39 LOADNIL                          R10
       40 SETTABLEKS                       R10 R9 K2 ["rt"]
       42 GETIMPORT                        R10 K10 [next]
       44 MOVE                             R11 R9
       45 CALL                             R10 1 1
       46 JUMPIFEQKNIL                     R10 ; [+2]
       48 SETTABLE                         R9 R2 R7
       49 GETTABLEKS                       R11 R8 K4 ["clientInformation"]
       51 JUMPIFNOT                        R11 ; [+12]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K11 ["omit"]
       55 GETTABLEKS                       R11 R8 K4 ["clientInformation"]
       57 NEWTABLE                         R12 0 1
       59 LOADK                            R13 K5 ["client_secret"]
       60 SETLIST                          R12 R13 1 [1]
       62 CALL                             R10 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R10
       65 MOVE                             R11 R10
       66 JUMPIFNOT                        R11 ; [+8]
       67 GETIMPORT                        R12 K10 [next]
       69 MOVE                             R13 R11
       70 CALL                             R12 1 1
       71 JUMPIFNOTEQKNIL                  R12 ; [+3]
       73 LOADNIL                          R10
       74 JUMP                             ; [+1]
       75 MOVE                             R10 R11
       76 GETTABLEKS                       R12 R8 K6 ["tokens"]
       78 JUMPIFNOT                        R12 ; [+13]
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K11 ["omit"]
       82 GETTABLEKS                       R12 R8 K6 ["tokens"]
       84 NEWTABLE                         R13 0 2
       86 LOADK                            R14 K7 ["access_token"]
       87 LOADK                            R15 K8 ["refresh_token"]
       88 SETLIST                          R13 R14 2 [1]
       90 CALL                             R11 2 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R11
       93 MOVE                             R12 R11
       94 JUMPIFNOT                        R12 ; [+8]
       95 GETIMPORT                        R13 K10 [next]
       97 MOVE                             R14 R12
       98 CALL                             R13 1 1
       99 JUMPIFNOTEQKNIL                  R13 ; [+3]
      101 LOADNIL                          R11
      102 JUMP                             ; [+1]
      103 MOVE                             R11 R12
      104 DUPTABLE                         R12 K13 [{"clientInformation", "metadata", "tokens"}]
      105 SETTABLEKS                       R10 R12 K4 ["clientInformation"]
      107 GETTABLEKS                       R13 R8 K12 ["metadata"]
      109 SETTABLEKS                       R13 R12 K12 ["metadata"]
      111 SETTABLEKS                       R11 R12 K6 ["tokens"]
      113 SETTABLE                         R12 R3 R7
      114 FORGLOOP                         R4 2 ; [-107]
      116 GETIMPORT                        R4 K10 [next]
      118 MOVE                             R5 R2
      119 CALL                             R4 1 1
      120 JUMPIFEQKNIL                     R4 ; [+27]
      122 GETUPVAL                         R4 0
      123 GETTABLEKS                       R4 R4 K14 ["map"]
      125 MOVE                             R5 R2
      126 NEWCLOSURE                       R6 P0
      127 CAPTURE                          UPVAL U1
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          UPVAL U3
      131 CALL                             R4 2 1
      132 GETUPVAL                         R5 4
      133 GETUPVAL                         R6 0
      134 GETTABLEKS                       R6 R6 K15 ["values"]
      136 MOVE                             R7 R4
      137 CALL                             R6 1 -1
      138 CALL                             R5 -1 1
      139 JUMPIF                           R5 ; [+8]
      140 GETUPVAL                         R6 3
      141 GETTABLEKS                       R6 R6 K16 ["FFlagDebugLogAssistantUI"]
      143 JUMPIFNOT                        R6 ; [+4]
      144 GETIMPORT                        R6 K18 [warn]
      146 LOADK                            R7 K19 ["Failed to write secrets to secure storage"]
      147 CALL                             R6 1 0
      148 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["UrlEncode"]
        4 CALL                             R3 2 1
        5 LOADK                            R4 K1 ["McpAuth:%*"]
        6 MOVE                             R6 R3
        7 NAMECALL                         R4 R4 K2 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R2 R4
       11 GETIMPORT                        R3 K4 [pcall]
       13 LOADNIL                          R5
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R5
       18 CALL                             R3 1 2
       19 JUMPIF                           R3 ; [+11]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K5 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R5 ; [+7]
       24 GETIMPORT                        R5 K7 [warn]
       26 LOADK                            R6 K8 ["Failed to write secure settings for key:"]
       27 MOVE                             R7 R2
       28 MOVE                             R8 R4
       29 CALL                             R5 3 0
       30 RETURN                           R0 0
       31 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["IntegrationManagement"]
       19 GETTABLEKS                       R3 R3 K12 ["AuthorizerProvider"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Parent"]
       26 GETTABLEKS                       R4 R4 K14 ["Dash"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Guest"]
       33 GETTABLEKS                       R5 R5 K16 ["Environment"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K17 ["Flags"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K18 ["Util"]
       45 GETTABLEKS                       R7 R7 K19 ["TaskCollector"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 4 0
       50 GETTABLEKS                       R8 R6 K20 ["wrapFunction"]
       52 GETTABLEKS                       R9 R6 K21 ["collectTasks"]
       54 DUPCLOSURE                       R10 K22 [PROTO_0]
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R11 K23 [PROTO_2]
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R12 K24 [PROTO_4]
       59 CAPTURE                          VAL R5
       60 DUPCLOSURE                       R13 K25 [PROTO_5]
       61 DUPCLOSURE                       R14 K26 [PROTO_8]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 SETTABLEKS                       R14 R7 K27 ["attachSecretsAsync"]
       69 DUPCLOSURE                       R14 K28 [PROTO_11]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 SETTABLEKS                       R14 R7 K29 ["extractAndSaveSecretsAsync"]
       77 DUPCLOSURE                       R14 K30 [PROTO_12]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R14 R7 K31 ["removeSecretsAsync"]
       82 RETURN                           R7 1
