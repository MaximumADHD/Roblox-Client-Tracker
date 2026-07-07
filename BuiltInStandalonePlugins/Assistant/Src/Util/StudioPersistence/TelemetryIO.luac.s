PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["getTimestampMilliseconds"]
        3 CALL                             R6 0 1
        4 SUB                              R5 R6 R4
        5 GETTABLEKS                       R6 R0 K1 ["logPersistenceOperation"]
        7 DUPTABLE                         R7 K6 [{"operation", "scope", "success", "latencyMs"}]
        8 SETTABLEKS                       R1 R7 K2 ["operation"]
       10 SETTABLEKS                       R2 R7 K3 ["scope"]
       12 SETTABLEKS                       R3 R7 K4 ["success"]
       14 SETTABLEKS                       R5 R7 K5 ["latencyMs"]
       16 CALL                             R6 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getThreadsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+5]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to load threads"]
        9 LOADN                            R4 0
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTimestampMilliseconds"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+46]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       14 JUMPIFNOT                        R4 ; [+15]
       15 GETIMPORT                        R4 K5 [print]
       17 LOADK                            R6 K6 ["[Persistence] [IO] getThreadsAsync: failed to load threads for place=%* cursor=%* limit=%* with error: %*"]
       18 GETTABLEKS                       R8 R0 K7 ["placeId"]
       20 GETTABLEKS                       R9 R0 K8 ["cursor"]
       22 GETTABLEKS                       R10 R0 K9 ["limit"]
       24 MOVE                             R11 R3
       25 NAMECALL                         R6 R6 K10 ["format"]
       27 CALL                             R6 5 1
       28 MOVE                             R5 R6
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 3
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K11 ["Load"]
       34 GETUPVAL                         R6 5
       35 GETTABLEKS                       R6 R6 K12 ["Threads"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       40 CALL                             R8 0 1
       41 SUB                              R7 R8 R1
       42 GETTABLEKS                       R8 R4 K13 ["logPersistenceOperation"]
       44 DUPTABLE                         R9 K19 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       45 SETTABLEKS                       R5 R9 K14 ["operation"]
       47 SETTABLEKS                       R6 R9 K15 ["scope"]
       49 SETTABLEKS                       R7 R9 K18 ["latencyMs"]
       51 CALL                             R8 1 0
       52 GETIMPORT                        R4 K21 [error]
       54 MOVE                             R5 R3
       55 LOADN                            R6 0
       56 CALL                             R4 2 0
       57 JUMPIFNOT                        R3 ; [+8]
       58 GETTABLEKS                       R4 R3 K22 ["threads"]
       60 JUMPIFNOT                        R4 ; [+5]
       61 GETTABLEKS                       R5 R3 K22 ["threads"]
       63 LENGTH                           R4 R5
       64 JUMPIFNOTEQKN                    R4 K23 [0] ; [+44]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       69 JUMPIFNOT                        R4 ; [+14]
       70 GETIMPORT                        R4 K5 [print]
       72 LOADK                            R6 K24 ["[Persistence] [IO] getThreadsAsync: no threads returned for place=%* cursor=%* limit=%*"]
       73 GETTABLEKS                       R8 R0 K7 ["placeId"]
       75 GETTABLEKS                       R9 R0 K8 ["cursor"]
       77 GETTABLEKS                       R10 R0 K9 ["limit"]
       79 NAMECALL                         R6 R6 K10 ["format"]
       81 CALL                             R6 4 1
       82 MOVE                             R5 R6
       83 CALL                             R4 1 0
       84 GETUPVAL                         R4 3
       85 GETUPVAL                         R5 4
       86 GETTABLEKS                       R5 R5 K11 ["Load"]
       88 GETUPVAL                         R6 5
       89 GETTABLEKS                       R6 R6 K12 ["Threads"]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       94 CALL                             R8 0 1
       95 SUB                              R7 R8 R1
       96 GETTABLEKS                       R8 R4 K13 ["logPersistenceOperation"]
       98 DUPTABLE                         R9 K26 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       99 SETTABLEKS                       R5 R9 K14 ["operation"]
      101 SETTABLEKS                       R6 R9 K15 ["scope"]
      103 SETTABLEKS                       R7 R9 K18 ["latencyMs"]
      105 CALL                             R8 1 0
      106 LOADB                            R4 1
      107 MOVE                             R5 R3
      108 RETURN                           R4 2
      109 GETUPVAL                         R4 2
      110 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
      112 JUMPIFNOT                        R4 ; [+17]
      113 GETIMPORT                        R4 K5 [print]
      115 LOADK                            R6 K27 ["[Persistence] [IO] getThreadsAsync: loaded %* for place=%* cursor=%* limit=%*"]
      116 GETTABLEKS                       R9 R3 K22 ["threads"]
      118 LENGTH                           R8 R9
      119 GETTABLEKS                       R9 R0 K7 ["placeId"]
      121 GETTABLEKS                       R10 R0 K8 ["cursor"]
      123 GETTABLEKS                       R11 R0 K9 ["limit"]
      125 NAMECALL                         R6 R6 K10 ["format"]
      127 CALL                             R6 5 1
      128 MOVE                             R5 R6
      129 CALL                             R4 1 0
      130 GETUPVAL                         R4 3
      131 GETUPVAL                         R5 4
      132 GETTABLEKS                       R5 R5 K11 ["Load"]
      134 GETUPVAL                         R6 5
      135 GETTABLEKS                       R6 R6 K12 ["Threads"]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
      140 CALL                             R8 0 1
      141 SUB                              R7 R8 R1
      142 GETTABLEKS                       R8 R4 K13 ["logPersistenceOperation"]
      144 DUPTABLE                         R9 K26 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
      145 SETTABLEKS                       R5 R9 K14 ["operation"]
      147 SETTABLEKS                       R6 R9 K15 ["scope"]
      149 SETTABLEKS                       R7 R9 K18 ["latencyMs"]
      151 CALL                             R8 1 0
      152 LOADB                            R4 1
      153 MOVE                             R5 R3
      154 RETURN                           R4 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadThreadsAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+5]
        7 GETIMPORT                        R1 K2 [error]
        9 LOADK                            R2 K3 ["Failed to upload threads"]
       10 LOADN                            R3 0
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getTimestampMilliseconds"]
        3 CALL                             R2 0 1
        4 GETIMPORT                        R3 K2 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 2
       11 JUMPIFNOT                        R3 ; [+1]
       12 JUMPIF                           R4 ; [+42]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
       16 JUMPIFNOT                        R5 ; [+11]
       17 GETIMPORT                        R5 K5 [print]
       19 LOADK                            R7 K6 ["[Persistence] [IO] uploadThreadsAsync: failed to upload threads for place=%* with error: %*"]
       20 GETTABLEKS                       R9 R1 K7 ["placeId"]
       22 MOVE                             R10 R4
       23 NAMECALL                         R7 R7 K8 ["format"]
       25 CALL                             R7 3 1
       26 MOVE                             R6 R7
       27 CALL                             R5 1 0
       28 GETUPVAL                         R5 3
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K9 ["Save"]
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R7 R7 K10 ["Threads"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       38 CALL                             R9 0 1
       39 SUB                              R8 R9 R2
       40 GETTABLEKS                       R9 R5 K11 ["logPersistenceOperation"]
       42 DUPTABLE                         R10 K17 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       43 SETTABLEKS                       R6 R10 K12 ["operation"]
       45 SETTABLEKS                       R7 R10 K13 ["scope"]
       47 SETTABLEKS                       R8 R10 K16 ["latencyMs"]
       49 CALL                             R9 1 0
       50 GETIMPORT                        R5 K19 [error]
       52 MOVE                             R6 R4
       53 LOADN                            R7 0
       54 CALL                             R5 2 0
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
       58 JUMPIFNOT                        R5 ; [+11]
       59 GETIMPORT                        R5 K5 [print]
       61 LOADK                            R7 K20 ["[Persistence] [IO] uploadThreadsAsync: uploaded %* threads for place=%*"]
       62 LENGTH                           R9 R0
       63 GETTABLEKS                       R10 R1 K7 ["placeId"]
       65 NAMECALL                         R7 R7 K8 ["format"]
       67 CALL                             R7 3 1
       68 MOVE                             R6 R7
       69 CALL                             R5 1 0
       70 GETUPVAL                         R5 3
       71 GETUPVAL                         R6 4
       72 GETTABLEKS                       R6 R6 K9 ["Save"]
       74 GETUPVAL                         R7 5
       75 GETTABLEKS                       R7 R7 K10 ["Threads"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       80 CALL                             R9 0 1
       81 SUB                              R8 R9 R2
       82 GETTABLEKS                       R9 R5 K11 ["logPersistenceOperation"]
       84 DUPTABLE                         R10 K22 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       85 SETTABLEKS                       R6 R10 K12 ["operation"]
       87 SETTABLEKS                       R7 R10 K13 ["scope"]
       89 SETTABLEKS                       R8 R10 K16 ["latencyMs"]
       91 CALL                             R9 1 0
       92 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteThreadAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+5]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R2 K3 ["Failed to delete thread"]
        9 LOADN                            R3 0
       10 CALL                             R1 2 0
       11 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTimestampMilliseconds"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+41]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       14 JUMPIFNOT                        R4 ; [+10]
       15 GETIMPORT                        R4 K5 [print]
       17 LOADK                            R6 K6 ["[Persistence] [IO] deleteThreadAsync: failed to delete thread=%* with error: %*"]
       18 MOVE                             R8 R0
       19 MOVE                             R9 R3
       20 NAMECALL                         R6 R6 K7 ["format"]
       22 CALL                             R6 3 1
       23 MOVE                             R5 R6
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 3
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K8 ["Delete"]
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R6 R6 K9 ["Threads"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       35 CALL                             R8 0 1
       36 SUB                              R7 R8 R1
       37 GETTABLEKS                       R8 R4 K10 ["logPersistenceOperation"]
       39 DUPTABLE                         R9 K16 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       40 SETTABLEKS                       R5 R9 K11 ["operation"]
       42 SETTABLEKS                       R6 R9 K12 ["scope"]
       44 SETTABLEKS                       R7 R9 K15 ["latencyMs"]
       46 CALL                             R8 1 0
       47 GETIMPORT                        R4 K18 [error]
       49 MOVE                             R5 R3
       50 LOADN                            R6 0
       51 CALL                             R4 2 0
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
       55 JUMPIFNOT                        R4 ; [+9]
       56 GETIMPORT                        R4 K5 [print]
       58 LOADK                            R6 K19 ["[Persistence] [IO] deleteThreadAsync: deleted thread=%*"]
       59 MOVE                             R8 R0
       60 NAMECALL                         R6 R6 K7 ["format"]
       62 CALL                             R6 2 1
       63 MOVE                             R5 R6
       64 CALL                             R4 1 0
       65 GETUPVAL                         R4 3
       66 GETUPVAL                         R5 4
       67 GETTABLEKS                       R5 R5 K8 ["Delete"]
       69 GETUPVAL                         R6 5
       70 GETTABLEKS                       R6 R6 K9 ["Threads"]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       75 CALL                             R8 0 1
       76 SUB                              R7 R8 R1
       77 GETTABLEKS                       R8 R4 K10 ["logPersistenceOperation"]
       79 DUPTABLE                         R9 K21 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       80 SETTABLEKS                       R5 R9 K11 ["operation"]
       82 SETTABLEKS                       R6 R9 K12 ["scope"]
       84 SETTABLEKS                       R7 R9 K15 ["latencyMs"]
       86 CALL                             R8 1 0
       87 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMessagesAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 2
        6 JUMPIF                           R0 ; [+5]
        7 GETIMPORT                        R2 K2 [error]
        9 LOADK                            R3 K3 ["Failed to load messages"]
       10 LOADN                            R4 0
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getTimestampMilliseconds"]
        3 CALL                             R2 0 1
        4 GETIMPORT                        R3 K2 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 2
       11 JUMPIF                           R3 ; [+45]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R5 ; [+14]
       16 GETIMPORT                        R5 K5 [print]
       18 LOADK                            R7 K6 ["[Persistence] [IO] getMessagesAsync: failed to load messages for threadId=%* cursor=%* limit=%* with error: %*"]
       19 MOVE                             R9 R0
       20 GETTABLEKS                       R10 R1 K7 ["cursor"]
       22 GETTABLEKS                       R11 R1 K8 ["limit"]
       24 MOVE                             R12 R4
       25 NAMECALL                         R7 R7 K9 ["format"]
       27 CALL                             R7 5 1
       28 MOVE                             R6 R7
       29 CALL                             R5 1 0
       30 GETUPVAL                         R5 3
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K10 ["Load"]
       34 GETUPVAL                         R7 5
       35 GETTABLEKS                       R7 R7 K11 ["Messages"]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       40 CALL                             R9 0 1
       41 SUB                              R8 R9 R2
       42 GETTABLEKS                       R9 R5 K12 ["logPersistenceOperation"]
       44 DUPTABLE                         R10 K18 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       45 SETTABLEKS                       R6 R10 K13 ["operation"]
       47 SETTABLEKS                       R7 R10 K14 ["scope"]
       49 SETTABLEKS                       R8 R10 K17 ["latencyMs"]
       51 CALL                             R9 1 0
       52 GETIMPORT                        R5 K20 [error]
       54 MOVE                             R6 R4
       55 LOADN                            R7 0
       56 CALL                             R5 2 0
       57 JUMPIFNOT                        R4 ; [+8]
       58 GETTABLEKS                       R5 R4 K21 ["messages"]
       60 JUMPIFNOT                        R5 ; [+5]
       61 GETTABLEKS                       R6 R4 K21 ["messages"]
       63 LENGTH                           R5 R6
       64 JUMPIFNOTEQKN                    R5 K22 [0] ; [+43]
       66 GETUPVAL                         R5 2
       67 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
       69 JUMPIFNOT                        R5 ; [+13]
       70 GETIMPORT                        R5 K5 [print]
       72 LOADK                            R7 K23 ["[Persistence] [IO] getMessagesAsync: no messages returned for threadId=%* cursor=%* limit=%*"]
       73 MOVE                             R9 R0
       74 GETTABLEKS                       R10 R1 K7 ["cursor"]
       76 GETTABLEKS                       R11 R1 K8 ["limit"]
       78 NAMECALL                         R7 R7 K9 ["format"]
       80 CALL                             R7 4 1
       81 MOVE                             R6 R7
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 3
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R6 R6 K10 ["Load"]
       87 GETUPVAL                         R7 5
       88 GETTABLEKS                       R7 R7 K11 ["Messages"]
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       93 CALL                             R9 0 1
       94 SUB                              R8 R9 R2
       95 GETTABLEKS                       R9 R5 K12 ["logPersistenceOperation"]
       97 DUPTABLE                         R10 K25 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       98 SETTABLEKS                       R6 R10 K13 ["operation"]
      100 SETTABLEKS                       R7 R10 K14 ["scope"]
      102 SETTABLEKS                       R8 R10 K17 ["latencyMs"]
      104 CALL                             R9 1 0
      105 LOADB                            R5 1
      106 MOVE                             R6 R4
      107 RETURN                           R5 2
      108 GETUPVAL                         R5 2
      109 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
      111 JUMPIFNOT                        R5 ; [+16]
      112 GETIMPORT                        R5 K5 [print]
      114 LOADK                            R7 K26 ["[Persistence] [IO] getMessagesAsync: loaded %* for threadId=%* cursor=%* limit=%*"]
      115 GETTABLEKS                       R10 R4 K21 ["messages"]
      117 LENGTH                           R9 R10
      118 MOVE                             R10 R0
      119 GETTABLEKS                       R11 R1 K7 ["cursor"]
      121 GETTABLEKS                       R12 R1 K8 ["limit"]
      123 NAMECALL                         R7 R7 K9 ["format"]
      125 CALL                             R7 5 1
      126 MOVE                             R6 R7
      127 CALL                             R5 1 0
      128 GETUPVAL                         R5 3
      129 GETUPVAL                         R6 4
      130 GETTABLEKS                       R6 R6 K10 ["Load"]
      132 GETUPVAL                         R7 5
      133 GETTABLEKS                       R7 R7 K11 ["Messages"]
      135 GETUPVAL                         R9 0
      136 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
      138 CALL                             R9 0 1
      139 SUB                              R8 R9 R2
      140 GETTABLEKS                       R9 R5 K12 ["logPersistenceOperation"]
      142 DUPTABLE                         R10 K25 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
      143 SETTABLEKS                       R6 R10 K13 ["operation"]
      145 SETTABLEKS                       R7 R10 K14 ["scope"]
      147 SETTABLEKS                       R8 R10 K17 ["latencyMs"]
      149 CALL                             R9 1 0
      150 LOADB                            R5 1
      151 MOVE                             R6 R4
      152 RETURN                           R5 2

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadMessagesAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+5]
        7 GETIMPORT                        R1 K2 [error]
        9 LOADK                            R2 K3 ["Failed to upload messages"]
       10 LOADN                            R3 0
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getTimestampMilliseconds"]
        3 CALL                             R2 0 1
        4 GETIMPORT                        R3 K2 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 2
       11 JUMPIFNOT                        R3 ; [+1]
       12 JUMPIF                           R4 ; [+41]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
       16 JUMPIFNOT                        R5 ; [+10]
       17 GETIMPORT                        R5 K5 [print]
       19 LOADK                            R7 K6 ["[Persistence] [IO] uploadMessagesAsync: failed to upload messages for threadId=%* with error: %*"]
       20 MOVE                             R9 R0
       21 MOVE                             R10 R4
       22 NAMECALL                         R7 R7 K7 ["format"]
       24 CALL                             R7 3 1
       25 MOVE                             R6 R7
       26 CALL                             R5 1 0
       27 GETUPVAL                         R5 3
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K8 ["Save"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K9 ["Messages"]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       37 CALL                             R9 0 1
       38 SUB                              R8 R9 R2
       39 GETTABLEKS                       R9 R5 K10 ["logPersistenceOperation"]
       41 DUPTABLE                         R10 K16 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       42 SETTABLEKS                       R6 R10 K11 ["operation"]
       44 SETTABLEKS                       R7 R10 K12 ["scope"]
       46 SETTABLEKS                       R8 R10 K15 ["latencyMs"]
       48 CALL                             R9 1 0
       49 GETIMPORT                        R5 K18 [error]
       51 MOVE                             R6 R4
       52 LOADN                            R7 0
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 2
       55 GETTABLEKS                       R5 R5 K3 ["FFlagDebugLogAssistantUI"]
       57 JUMPIFNOT                        R5 ; [+10]
       58 GETIMPORT                        R5 K5 [print]
       60 LOADK                            R7 K19 ["[Persistence] [IO] uploadMessagesAsync: uploaded %* messages for threadId=%*"]
       61 LENGTH                           R9 R1
       62 MOVE                             R10 R0
       63 NAMECALL                         R7 R7 K7 ["format"]
       65 CALL                             R7 3 1
       66 MOVE                             R6 R7
       67 CALL                             R5 1 0
       68 GETUPVAL                         R5 3
       69 GETUPVAL                         R6 4
       70 GETTABLEKS                       R6 R6 K8 ["Save"]
       72 GETUPVAL                         R7 5
       73 GETTABLEKS                       R7 R7 K9 ["Messages"]
       75 GETUPVAL                         R9 0
       76 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       78 CALL                             R9 0 1
       79 SUB                              R8 R9 R2
       80 GETTABLEKS                       R9 R5 K10 ["logPersistenceOperation"]
       82 DUPTABLE                         R10 K21 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       83 SETTABLEKS                       R6 R10 K11 ["operation"]
       85 SETTABLEKS                       R7 R10 K12 ["scope"]
       87 SETTABLEKS                       R8 R10 K15 ["latencyMs"]
       89 CALL                             R9 1 0
       90 RETURN                           R4 1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["EventLogger"]
        2 DUPTABLE                         R3 K6 [{"getThreadsAsync", "uploadThreadsAsync", "deleteThreadAsync", "getMessagesAsync", "uploadMessagesAsync"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 SETTABLEKS                       R4 R3 K1 ["getThreadsAsync"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R4 R3 K2 ["uploadThreadsAsync"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R4 R3 K3 ["deleteThreadAsync"]
       30 NEWCLOSURE                       R4 P3
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 SETTABLEKS                       R4 R3 K4 ["getMessagesAsync"]
       39 NEWCLOSURE                       R4 P4
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 SETTABLEKS                       R4 R3 K5 ["uploadMessagesAsync"]
       48 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["Utils"]
       30 GETTABLEKS                       R4 R4 K12 ["Time"]
       32 GETTABLEKS                       R5 R1 K13 ["Types"]
       34 GETTABLEKS                       R5 R5 K14 ["PersistenceOperation"]
       36 GETTABLEKS                       R6 R1 K13 ["Types"]
       38 GETTABLEKS                       R6 R6 K15 ["ScopeTypes"]
       40 DUPCLOSURE                       R7 K16 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 DUPCLOSURE                       R8 K17 [PROTO_11]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 DUPTABLE                         R9 K19 [{"createTelemetryIO"}]
       48 SETTABLEKS                       R8 R9 K18 ["createTelemetryIO"]
       50 RETURN                           R9 1
