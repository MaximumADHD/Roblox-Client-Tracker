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
       10 JUMPIF                           R2 ; [+45]
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+15]
       14 GETIMPORT                        R4 K4 [print]
       16 LOADK                            R6 K5 ["[Persistence] [IO] getThreadsAsync: failed to load threads for place=%* cursor=%* limit=%* with error: %*"]
       17 GETTABLEKS                       R8 R0 K6 ["placeId"]
       19 GETTABLEKS                       R9 R0 K7 ["cursor"]
       21 GETTABLEKS                       R10 R0 K8 ["limit"]
       23 MOVE                             R11 R3
       24 NAMECALL                         R6 R6 K9 ["format"]
       26 CALL                             R6 5 1
       27 MOVE                             R5 R6
       28 CALL                             R4 1 0
       29 GETUPVAL                         R4 3
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K10 ["Load"]
       33 GETUPVAL                         R6 5
       34 GETTABLEKS                       R6 R6 K11 ["Threads"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       39 CALL                             R8 0 1
       40 SUB                              R7 R8 R1
       41 GETTABLEKS                       R8 R4 K12 ["logPersistenceOperation"]
       43 DUPTABLE                         R9 K18 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       44 SETTABLEKS                       R5 R9 K13 ["operation"]
       46 SETTABLEKS                       R6 R9 K14 ["scope"]
       48 SETTABLEKS                       R7 R9 K17 ["latencyMs"]
       50 CALL                             R8 1 0
       51 GETIMPORT                        R4 K20 [error]
       53 MOVE                             R5 R3
       54 LOADN                            R6 0
       55 CALL                             R4 2 0
       56 JUMPIFNOT                        R3 ; [+8]
       57 GETTABLEKS                       R4 R3 K21 ["threads"]
       59 JUMPIFNOT                        R4 ; [+5]
       60 GETTABLEKS                       R5 R3 K21 ["threads"]
       62 LENGTH                           R4 R5
       63 JUMPIFNOTEQKN                    R4 K22 [0] ; [+43]
       65 GETUPVAL                         R4 2
       66 CALL                             R4 0 1
       67 JUMPIFNOT                        R4 ; [+14]
       68 GETIMPORT                        R4 K4 [print]
       70 LOADK                            R6 K23 ["[Persistence] [IO] getThreadsAsync: no threads returned for place=%* cursor=%* limit=%*"]
       71 GETTABLEKS                       R8 R0 K6 ["placeId"]
       73 GETTABLEKS                       R9 R0 K7 ["cursor"]
       75 GETTABLEKS                       R10 R0 K8 ["limit"]
       77 NAMECALL                         R6 R6 K9 ["format"]
       79 CALL                             R6 4 1
       80 MOVE                             R5 R6
       81 CALL                             R4 1 0
       82 GETUPVAL                         R4 3
       83 GETUPVAL                         R5 4
       84 GETTABLEKS                       R5 R5 K10 ["Load"]
       86 GETUPVAL                         R6 5
       87 GETTABLEKS                       R6 R6 K11 ["Threads"]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       92 CALL                             R8 0 1
       93 SUB                              R7 R8 R1
       94 GETTABLEKS                       R8 R4 K12 ["logPersistenceOperation"]
       96 DUPTABLE                         R9 K25 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       97 SETTABLEKS                       R5 R9 K13 ["operation"]
       99 SETTABLEKS                       R6 R9 K14 ["scope"]
      101 SETTABLEKS                       R7 R9 K17 ["latencyMs"]
      103 CALL                             R8 1 0
      104 LOADB                            R4 1
      105 MOVE                             R5 R3
      106 RETURN                           R4 2
      107 GETUPVAL                         R4 2
      108 CALL                             R4 0 1
      109 JUMPIFNOT                        R4 ; [+17]
      110 GETIMPORT                        R4 K4 [print]
      112 LOADK                            R6 K26 ["[Persistence] [IO] getThreadsAsync: loaded %* for place=%* cursor=%* limit=%*"]
      113 GETTABLEKS                       R9 R3 K21 ["threads"]
      115 LENGTH                           R8 R9
      116 GETTABLEKS                       R9 R0 K6 ["placeId"]
      118 GETTABLEKS                       R10 R0 K7 ["cursor"]
      120 GETTABLEKS                       R11 R0 K8 ["limit"]
      122 NAMECALL                         R6 R6 K9 ["format"]
      124 CALL                             R6 5 1
      125 MOVE                             R5 R6
      126 CALL                             R4 1 0
      127 GETUPVAL                         R4 3
      128 GETUPVAL                         R5 4
      129 GETTABLEKS                       R5 R5 K10 ["Load"]
      131 GETUPVAL                         R6 5
      132 GETTABLEKS                       R6 R6 K11 ["Threads"]
      134 GETUPVAL                         R8 0
      135 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
      137 CALL                             R8 0 1
      138 SUB                              R7 R8 R1
      139 GETTABLEKS                       R8 R4 K12 ["logPersistenceOperation"]
      141 DUPTABLE                         R9 K25 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
      142 SETTABLEKS                       R5 R9 K13 ["operation"]
      144 SETTABLEKS                       R6 R9 K14 ["scope"]
      146 SETTABLEKS                       R7 R9 K17 ["latencyMs"]
      148 CALL                             R8 1 0
      149 LOADB                            R4 1
      150 MOVE                             R5 R3
      151 RETURN                           R4 2

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
       12 JUMPIF                           R4 ; [+41]
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+11]
       16 GETIMPORT                        R5 K4 [print]
       18 LOADK                            R7 K5 ["[Persistence] [IO] uploadThreadsAsync: failed to upload threads for place=%* with error: %*"]
       19 GETTABLEKS                       R9 R1 K6 ["placeId"]
       21 MOVE                             R10 R4
       22 NAMECALL                         R7 R7 K7 ["format"]
       24 CALL                             R7 3 1
       25 MOVE                             R6 R7
       26 CALL                             R5 1 0
       27 GETUPVAL                         R5 3
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K8 ["Save"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K9 ["Threads"]
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
       55 CALL                             R5 0 1
       56 JUMPIFNOT                        R5 ; [+11]
       57 GETIMPORT                        R5 K4 [print]
       59 LOADK                            R7 K19 ["[Persistence] [IO] uploadThreadsAsync: uploaded %* threads for place=%*"]
       60 LENGTH                           R9 R0
       61 GETTABLEKS                       R10 R1 K6 ["placeId"]
       63 NAMECALL                         R7 R7 K7 ["format"]
       65 CALL                             R7 3 1
       66 MOVE                             R6 R7
       67 CALL                             R5 1 0
       68 GETUPVAL                         R5 3
       69 GETUPVAL                         R6 4
       70 GETTABLEKS                       R6 R6 K8 ["Save"]
       72 GETUPVAL                         R7 5
       73 GETTABLEKS                       R7 R7 K9 ["Threads"]
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
       10 JUMPIF                           R2 ; [+40]
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETIMPORT                        R4 K4 [print]
       16 LOADK                            R6 K5 ["[Persistence] [IO] deleteThreadAsync: failed to delete thread=%* with error: %*"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R3
       19 NAMECALL                         R6 R6 K6 ["format"]
       21 CALL                             R6 3 1
       22 MOVE                             R5 R6
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 3
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K7 ["Delete"]
       28 GETUPVAL                         R6 5
       29 GETTABLEKS                       R6 R6 K8 ["Threads"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       34 CALL                             R8 0 1
       35 SUB                              R7 R8 R1
       36 GETTABLEKS                       R8 R4 K9 ["logPersistenceOperation"]
       38 DUPTABLE                         R9 K15 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       39 SETTABLEKS                       R5 R9 K10 ["operation"]
       41 SETTABLEKS                       R6 R9 K11 ["scope"]
       43 SETTABLEKS                       R7 R9 K14 ["latencyMs"]
       45 CALL                             R8 1 0
       46 GETIMPORT                        R4 K17 [error]
       48 MOVE                             R5 R3
       49 LOADN                            R6 0
       50 CALL                             R4 2 0
       51 GETUPVAL                         R4 2
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+9]
       54 GETIMPORT                        R4 K4 [print]
       56 LOADK                            R6 K18 ["[Persistence] [IO] deleteThreadAsync: deleted thread=%*"]
       57 MOVE                             R8 R0
       58 NAMECALL                         R6 R6 K6 ["format"]
       60 CALL                             R6 2 1
       61 MOVE                             R5 R6
       62 CALL                             R4 1 0
       63 GETUPVAL                         R4 3
       64 GETUPVAL                         R5 4
       65 GETTABLEKS                       R5 R5 K7 ["Delete"]
       67 GETUPVAL                         R6 5
       68 GETTABLEKS                       R6 R6 K8 ["Threads"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       73 CALL                             R8 0 1
       74 SUB                              R7 R8 R1
       75 GETTABLEKS                       R8 R4 K9 ["logPersistenceOperation"]
       77 DUPTABLE                         R9 K20 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       78 SETTABLEKS                       R5 R9 K10 ["operation"]
       80 SETTABLEKS                       R6 R9 K11 ["scope"]
       82 SETTABLEKS                       R7 R9 K14 ["latencyMs"]
       84 CALL                             R8 1 0
       85 RETURN                           R3 1

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
       11 JUMPIF                           R3 ; [+44]
       12 GETUPVAL                         R5 2
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+14]
       15 GETIMPORT                        R5 K4 [print]
       17 LOADK                            R7 K5 ["[Persistence] [IO] getMessagesAsync: failed to load messages for threadId=%* cursor=%* limit=%* with error: %*"]
       18 MOVE                             R9 R0
       19 GETTABLEKS                       R10 R1 K6 ["cursor"]
       21 GETTABLEKS                       R11 R1 K7 ["limit"]
       23 MOVE                             R12 R4
       24 NAMECALL                         R7 R7 K8 ["format"]
       26 CALL                             R7 5 1
       27 MOVE                             R6 R7
       28 CALL                             R5 1 0
       29 GETUPVAL                         R5 3
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K9 ["Load"]
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K10 ["Messages"]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       39 CALL                             R9 0 1
       40 SUB                              R8 R9 R2
       41 GETTABLEKS                       R9 R5 K11 ["logPersistenceOperation"]
       43 DUPTABLE                         R10 K17 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       44 SETTABLEKS                       R6 R10 K12 ["operation"]
       46 SETTABLEKS                       R7 R10 K13 ["scope"]
       48 SETTABLEKS                       R8 R10 K16 ["latencyMs"]
       50 CALL                             R9 1 0
       51 GETIMPORT                        R5 K19 [error]
       53 MOVE                             R6 R4
       54 LOADN                            R7 0
       55 CALL                             R5 2 0
       56 JUMPIFNOT                        R4 ; [+8]
       57 GETTABLEKS                       R5 R4 K20 ["messages"]
       59 JUMPIFNOT                        R5 ; [+5]
       60 GETTABLEKS                       R6 R4 K20 ["messages"]
       62 LENGTH                           R5 R6
       63 JUMPIFNOTEQKN                    R5 K21 [0] ; [+42]
       65 GETUPVAL                         R5 2
       66 CALL                             R5 0 1
       67 JUMPIFNOT                        R5 ; [+13]
       68 GETIMPORT                        R5 K4 [print]
       70 LOADK                            R7 K22 ["[Persistence] [IO] getMessagesAsync: no messages returned for threadId=%* cursor=%* limit=%*"]
       71 MOVE                             R9 R0
       72 GETTABLEKS                       R10 R1 K6 ["cursor"]
       74 GETTABLEKS                       R11 R1 K7 ["limit"]
       76 NAMECALL                         R7 R7 K8 ["format"]
       78 CALL                             R7 4 1
       79 MOVE                             R6 R7
       80 CALL                             R5 1 0
       81 GETUPVAL                         R5 3
       82 GETUPVAL                         R6 4
       83 GETTABLEKS                       R6 R6 K9 ["Load"]
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K10 ["Messages"]
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       91 CALL                             R9 0 1
       92 SUB                              R8 R9 R2
       93 GETTABLEKS                       R9 R5 K11 ["logPersistenceOperation"]
       95 DUPTABLE                         R10 K24 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       96 SETTABLEKS                       R6 R10 K12 ["operation"]
       98 SETTABLEKS                       R7 R10 K13 ["scope"]
      100 SETTABLEKS                       R8 R10 K16 ["latencyMs"]
      102 CALL                             R9 1 0
      103 LOADB                            R5 1
      104 MOVE                             R6 R4
      105 RETURN                           R5 2
      106 GETUPVAL                         R5 2
      107 CALL                             R5 0 1
      108 JUMPIFNOT                        R5 ; [+16]
      109 GETIMPORT                        R5 K4 [print]
      111 LOADK                            R7 K25 ["[Persistence] [IO] getMessagesAsync: loaded %* for threadId=%* cursor=%* limit=%*"]
      112 GETTABLEKS                       R10 R4 K20 ["messages"]
      114 LENGTH                           R9 R10
      115 MOVE                             R10 R0
      116 GETTABLEKS                       R11 R1 K6 ["cursor"]
      118 GETTABLEKS                       R12 R1 K7 ["limit"]
      120 NAMECALL                         R7 R7 K8 ["format"]
      122 CALL                             R7 5 1
      123 MOVE                             R6 R7
      124 CALL                             R5 1 0
      125 GETUPVAL                         R5 3
      126 GETUPVAL                         R6 4
      127 GETTABLEKS                       R6 R6 K9 ["Load"]
      129 GETUPVAL                         R7 5
      130 GETTABLEKS                       R7 R7 K10 ["Messages"]
      132 GETUPVAL                         R9 0
      133 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
      135 CALL                             R9 0 1
      136 SUB                              R8 R9 R2
      137 GETTABLEKS                       R9 R5 K11 ["logPersistenceOperation"]
      139 DUPTABLE                         R10 K24 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
      140 SETTABLEKS                       R6 R10 K12 ["operation"]
      142 SETTABLEKS                       R7 R10 K13 ["scope"]
      144 SETTABLEKS                       R8 R10 K16 ["latencyMs"]
      146 CALL                             R9 1 0
      147 LOADB                            R5 1
      148 MOVE                             R6 R4
      149 RETURN                           R5 2

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
       12 JUMPIF                           R4 ; [+40]
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+10]
       16 GETIMPORT                        R5 K4 [print]
       18 LOADK                            R7 K5 ["[Persistence] [IO] uploadMessagesAsync: failed to upload messages for threadId=%* with error: %*"]
       19 MOVE                             R9 R0
       20 MOVE                             R10 R4
       21 NAMECALL                         R7 R7 K6 ["format"]
       23 CALL                             R7 3 1
       24 MOVE                             R6 R7
       25 CALL                             R5 1 0
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K7 ["Save"]
       30 GETUPVAL                         R7 5
       31 GETTABLEKS                       R7 R7 K8 ["Messages"]
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       36 CALL                             R9 0 1
       37 SUB                              R8 R9 R2
       38 GETTABLEKS                       R9 R5 K9 ["logPersistenceOperation"]
       40 DUPTABLE                         R10 K15 [{["operation"], ["scope"], ["success"] = False, ["latencyMs"]}]
       41 SETTABLEKS                       R6 R10 K10 ["operation"]
       43 SETTABLEKS                       R7 R10 K11 ["scope"]
       45 SETTABLEKS                       R8 R10 K14 ["latencyMs"]
       47 CALL                             R9 1 0
       48 GETIMPORT                        R5 K17 [error]
       50 MOVE                             R6 R4
       51 LOADN                            R7 0
       52 CALL                             R5 2 0
       53 GETUPVAL                         R5 2
       54 CALL                             R5 0 1
       55 JUMPIFNOT                        R5 ; [+10]
       56 GETIMPORT                        R5 K4 [print]
       58 LOADK                            R7 K18 ["[Persistence] [IO] uploadMessagesAsync: uploaded %* messages for threadId=%*"]
       59 LENGTH                           R9 R1
       60 MOVE                             R10 R0
       61 NAMECALL                         R7 R7 K6 ["format"]
       63 CALL                             R7 3 1
       64 MOVE                             R6 R7
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 3
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R6 R6 K7 ["Save"]
       70 GETUPVAL                         R7 5
       71 GETTABLEKS                       R7 R7 K8 ["Messages"]
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       76 CALL                             R9 0 1
       77 SUB                              R8 R9 R2
       78 GETTABLEKS                       R9 R5 K9 ["logPersistenceOperation"]
       80 DUPTABLE                         R10 K20 [{["operation"], ["scope"], ["success"] = True, ["latencyMs"]}]
       81 SETTABLEKS                       R6 R10 K10 ["operation"]
       83 SETTABLEKS                       R7 R10 K11 ["scope"]
       85 SETTABLEKS                       R8 R10 K14 ["latencyMs"]
       87 CALL                             R9 1 0
       88 RETURN                           R4 1

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
       21 GETTABLEKS                       R3 R1 K9 ["Flags"]
       23 GETTABLEKS                       R3 R3 K10 ["Shared"]
       25 GETTABLEKS                       R3 R3 K11 ["FFlagDebugLogAssistantUI"]
       27 GETTABLEKS                       R4 R1 K12 ["Utils"]
       29 GETTABLEKS                       R4 R4 K13 ["Time"]
       31 GETTABLEKS                       R5 R1 K14 ["Types"]
       33 GETTABLEKS                       R5 R5 K15 ["PersistenceOperation"]
       35 GETTABLEKS                       R6 R1 K14 ["Types"]
       37 GETTABLEKS                       R6 R6 K16 ["ScopeTypes"]
       39 DUPCLOSURE                       R7 K17 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 DUPCLOSURE                       R8 K18 [PROTO_11]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 DUPTABLE                         R9 K20 [{"createTelemetryIO"}]
       47 SETTABLEKS                       R8 R9 K19 ["createTelemetryIO"]
       49 RETURN                           R9 1
