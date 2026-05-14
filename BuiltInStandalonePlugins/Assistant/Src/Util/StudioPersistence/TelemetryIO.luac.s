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
       10 JUMPIF                           R2 ; [+48]
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
       43 DUPTABLE                         R9 K17 [{"operation", "scope", "success", "latencyMs"}]
       44 SETTABLEKS                       R5 R9 K13 ["operation"]
       46 SETTABLEKS                       R6 R9 K14 ["scope"]
       48 LOADB                            R10 0
       49 SETTABLEKS                       R10 R9 K15 ["success"]
       51 SETTABLEKS                       R7 R9 K16 ["latencyMs"]
       53 CALL                             R8 1 0
       54 GETIMPORT                        R4 K19 [error]
       56 MOVE                             R5 R3
       57 LOADN                            R6 0
       58 CALL                             R4 2 0
       59 JUMPIFNOT                        R3 ; [+8]
       60 GETTABLEKS                       R4 R3 K20 ["threads"]
       62 JUMPIFNOT                        R4 ; [+5]
       63 GETTABLEKS                       R5 R3 K20 ["threads"]
       65 LENGTH                           R4 R5
       66 JUMPIFNOTEQKN                    R4 K21 [0] ; [+46]
       68 GETUPVAL                         R4 2
       69 CALL                             R4 0 1
       70 JUMPIFNOT                        R4 ; [+14]
       71 GETIMPORT                        R4 K4 [print]
       73 LOADK                            R6 K22 ["[Persistence] [IO] getThreadsAsync: no threads returned for place=%* cursor=%* limit=%*"]
       74 GETTABLEKS                       R8 R0 K6 ["placeId"]
       76 GETTABLEKS                       R9 R0 K7 ["cursor"]
       78 GETTABLEKS                       R10 R0 K8 ["limit"]
       80 NAMECALL                         R6 R6 K9 ["format"]
       82 CALL                             R6 4 1
       83 MOVE                             R5 R6
       84 CALL                             R4 1 0
       85 GETUPVAL                         R4 3
       86 GETUPVAL                         R5 4
       87 GETTABLEKS                       R5 R5 K10 ["Load"]
       89 GETUPVAL                         R6 5
       90 GETTABLEKS                       R6 R6 K11 ["Threads"]
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       95 CALL                             R8 0 1
       96 SUB                              R7 R8 R1
       97 GETTABLEKS                       R8 R4 K12 ["logPersistenceOperation"]
       99 DUPTABLE                         R9 K17 [{"operation", "scope", "success", "latencyMs"}]
      100 SETTABLEKS                       R5 R9 K13 ["operation"]
      102 SETTABLEKS                       R6 R9 K14 ["scope"]
      104 LOADB                            R10 1
      105 SETTABLEKS                       R10 R9 K15 ["success"]
      107 SETTABLEKS                       R7 R9 K16 ["latencyMs"]
      109 CALL                             R8 1 0
      110 LOADB                            R4 1
      111 MOVE                             R5 R3
      112 RETURN                           R4 2
      113 GETUPVAL                         R4 2
      114 CALL                             R4 0 1
      115 JUMPIFNOT                        R4 ; [+17]
      116 GETIMPORT                        R4 K4 [print]
      118 LOADK                            R6 K23 ["[Persistence] [IO] getThreadsAsync: loaded %* for place=%* cursor=%* limit=%*"]
      119 GETTABLEKS                       R9 R3 K20 ["threads"]
      121 LENGTH                           R8 R9
      122 GETTABLEKS                       R9 R0 K6 ["placeId"]
      124 GETTABLEKS                       R10 R0 K7 ["cursor"]
      126 GETTABLEKS                       R11 R0 K8 ["limit"]
      128 NAMECALL                         R6 R6 K9 ["format"]
      130 CALL                             R6 5 1
      131 MOVE                             R5 R6
      132 CALL                             R4 1 0
      133 GETUPVAL                         R4 3
      134 GETUPVAL                         R5 4
      135 GETTABLEKS                       R5 R5 K10 ["Load"]
      137 GETUPVAL                         R6 5
      138 GETTABLEKS                       R6 R6 K11 ["Threads"]
      140 GETUPVAL                         R8 0
      141 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
      143 CALL                             R8 0 1
      144 SUB                              R7 R8 R1
      145 GETTABLEKS                       R8 R4 K12 ["logPersistenceOperation"]
      147 DUPTABLE                         R9 K17 [{"operation", "scope", "success", "latencyMs"}]
      148 SETTABLEKS                       R5 R9 K13 ["operation"]
      150 SETTABLEKS                       R6 R9 K14 ["scope"]
      152 LOADB                            R10 1
      153 SETTABLEKS                       R10 R9 K15 ["success"]
      155 SETTABLEKS                       R7 R9 K16 ["latencyMs"]
      157 CALL                             R8 1 0
      158 LOADB                            R4 1
      159 MOVE                             R5 R3
      160 RETURN                           R4 2

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
       12 JUMPIF                           R4 ; [+44]
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
       41 DUPTABLE                         R10 K15 [{"operation", "scope", "success", "latencyMs"}]
       42 SETTABLEKS                       R6 R10 K11 ["operation"]
       44 SETTABLEKS                       R7 R10 K12 ["scope"]
       46 LOADB                            R11 0
       47 SETTABLEKS                       R11 R10 K13 ["success"]
       49 SETTABLEKS                       R8 R10 K14 ["latencyMs"]
       51 CALL                             R9 1 0
       52 GETIMPORT                        R5 K17 [error]
       54 MOVE                             R6 R4
       55 LOADN                            R7 0
       56 CALL                             R5 2 0
       57 GETUPVAL                         R5 2
       58 CALL                             R5 0 1
       59 JUMPIFNOT                        R5 ; [+11]
       60 GETIMPORT                        R5 K4 [print]
       62 LOADK                            R7 K18 ["[Persistence] [IO] uploadThreadsAsync: uploaded %* threads for place=%*"]
       63 LENGTH                           R9 R0
       64 GETTABLEKS                       R10 R1 K6 ["placeId"]
       66 NAMECALL                         R7 R7 K7 ["format"]
       68 CALL                             R7 3 1
       69 MOVE                             R6 R7
       70 CALL                             R5 1 0
       71 GETUPVAL                         R5 3
       72 GETUPVAL                         R6 4
       73 GETTABLEKS                       R6 R6 K8 ["Save"]
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R7 R7 K9 ["Threads"]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       81 CALL                             R9 0 1
       82 SUB                              R8 R9 R2
       83 GETTABLEKS                       R9 R5 K10 ["logPersistenceOperation"]
       85 DUPTABLE                         R10 K15 [{"operation", "scope", "success", "latencyMs"}]
       86 SETTABLEKS                       R6 R10 K11 ["operation"]
       88 SETTABLEKS                       R7 R10 K12 ["scope"]
       90 LOADB                            R11 1
       91 SETTABLEKS                       R11 R10 K13 ["success"]
       93 SETTABLEKS                       R8 R10 K14 ["latencyMs"]
       95 CALL                             R9 1 0
       96 RETURN                           R4 1

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
       10 JUMPIF                           R2 ; [+43]
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
       38 DUPTABLE                         R9 K14 [{"operation", "scope", "success", "latencyMs"}]
       39 SETTABLEKS                       R5 R9 K10 ["operation"]
       41 SETTABLEKS                       R6 R9 K11 ["scope"]
       43 LOADB                            R10 0
       44 SETTABLEKS                       R10 R9 K12 ["success"]
       46 SETTABLEKS                       R7 R9 K13 ["latencyMs"]
       48 CALL                             R8 1 0
       49 GETIMPORT                        R4 K16 [error]
       51 MOVE                             R5 R3
       52 LOADN                            R6 0
       53 CALL                             R4 2 0
       54 GETUPVAL                         R4 2
       55 CALL                             R4 0 1
       56 JUMPIFNOT                        R4 ; [+9]
       57 GETIMPORT                        R4 K4 [print]
       59 LOADK                            R6 K17 ["[Persistence] [IO] deleteThreadAsync: deleted thread=%*"]
       60 MOVE                             R8 R0
       61 NAMECALL                         R6 R6 K6 ["format"]
       63 CALL                             R6 2 1
       64 MOVE                             R5 R6
       65 CALL                             R4 1 0
       66 GETUPVAL                         R4 3
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K7 ["Delete"]
       70 GETUPVAL                         R6 5
       71 GETTABLEKS                       R6 R6 K8 ["Threads"]
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K0 ["getTimestampMilliseconds"]
       76 CALL                             R8 0 1
       77 SUB                              R7 R8 R1
       78 GETTABLEKS                       R8 R4 K9 ["logPersistenceOperation"]
       80 DUPTABLE                         R9 K14 [{"operation", "scope", "success", "latencyMs"}]
       81 SETTABLEKS                       R5 R9 K10 ["operation"]
       83 SETTABLEKS                       R6 R9 K11 ["scope"]
       85 LOADB                            R10 1
       86 SETTABLEKS                       R10 R9 K12 ["success"]
       88 SETTABLEKS                       R7 R9 K13 ["latencyMs"]
       90 CALL                             R8 1 0
       91 RETURN                           R3 1

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
       11 JUMPIF                           R3 ; [+47]
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
       43 DUPTABLE                         R10 K16 [{"operation", "scope", "success", "latencyMs"}]
       44 SETTABLEKS                       R6 R10 K12 ["operation"]
       46 SETTABLEKS                       R7 R10 K13 ["scope"]
       48 LOADB                            R11 0
       49 SETTABLEKS                       R11 R10 K14 ["success"]
       51 SETTABLEKS                       R8 R10 K15 ["latencyMs"]
       53 CALL                             R9 1 0
       54 GETIMPORT                        R5 K18 [error]
       56 MOVE                             R6 R4
       57 LOADN                            R7 0
       58 CALL                             R5 2 0
       59 JUMPIFNOT                        R4 ; [+8]
       60 GETTABLEKS                       R5 R4 K19 ["messages"]
       62 JUMPIFNOT                        R5 ; [+5]
       63 GETTABLEKS                       R6 R4 K19 ["messages"]
       65 LENGTH                           R5 R6
       66 JUMPIFNOTEQKN                    R5 K20 [0] ; [+45]
       68 GETUPVAL                         R5 2
       69 CALL                             R5 0 1
       70 JUMPIFNOT                        R5 ; [+13]
       71 GETIMPORT                        R5 K4 [print]
       73 LOADK                            R7 K21 ["[Persistence] [IO] getMessagesAsync: no messages returned for threadId=%* cursor=%* limit=%*"]
       74 MOVE                             R9 R0
       75 GETTABLEKS                       R10 R1 K6 ["cursor"]
       77 GETTABLEKS                       R11 R1 K7 ["limit"]
       79 NAMECALL                         R7 R7 K8 ["format"]
       81 CALL                             R7 4 1
       82 MOVE                             R6 R7
       83 CALL                             R5 1 0
       84 GETUPVAL                         R5 3
       85 GETUPVAL                         R6 4
       86 GETTABLEKS                       R6 R6 K9 ["Load"]
       88 GETUPVAL                         R7 5
       89 GETTABLEKS                       R7 R7 K10 ["Messages"]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       94 CALL                             R9 0 1
       95 SUB                              R8 R9 R2
       96 GETTABLEKS                       R9 R5 K11 ["logPersistenceOperation"]
       98 DUPTABLE                         R10 K16 [{"operation", "scope", "success", "latencyMs"}]
       99 SETTABLEKS                       R6 R10 K12 ["operation"]
      101 SETTABLEKS                       R7 R10 K13 ["scope"]
      103 LOADB                            R11 1
      104 SETTABLEKS                       R11 R10 K14 ["success"]
      106 SETTABLEKS                       R8 R10 K15 ["latencyMs"]
      108 CALL                             R9 1 0
      109 LOADB                            R5 1
      110 MOVE                             R6 R4
      111 RETURN                           R5 2
      112 GETUPVAL                         R5 2
      113 CALL                             R5 0 1
      114 JUMPIFNOT                        R5 ; [+16]
      115 GETIMPORT                        R5 K4 [print]
      117 LOADK                            R7 K22 ["[Persistence] [IO] getMessagesAsync: loaded %* for threadId=%* cursor=%* limit=%*"]
      118 GETTABLEKS                       R10 R4 K19 ["messages"]
      120 LENGTH                           R9 R10
      121 MOVE                             R10 R0
      122 GETTABLEKS                       R11 R1 K6 ["cursor"]
      124 GETTABLEKS                       R12 R1 K7 ["limit"]
      126 NAMECALL                         R7 R7 K8 ["format"]
      128 CALL                             R7 5 1
      129 MOVE                             R6 R7
      130 CALL                             R5 1 0
      131 GETUPVAL                         R5 3
      132 GETUPVAL                         R6 4
      133 GETTABLEKS                       R6 R6 K9 ["Load"]
      135 GETUPVAL                         R7 5
      136 GETTABLEKS                       R7 R7 K10 ["Messages"]
      138 GETUPVAL                         R9 0
      139 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
      141 CALL                             R9 0 1
      142 SUB                              R8 R9 R2
      143 GETTABLEKS                       R9 R5 K11 ["logPersistenceOperation"]
      145 DUPTABLE                         R10 K16 [{"operation", "scope", "success", "latencyMs"}]
      146 SETTABLEKS                       R6 R10 K12 ["operation"]
      148 SETTABLEKS                       R7 R10 K13 ["scope"]
      150 LOADB                            R11 1
      151 SETTABLEKS                       R11 R10 K14 ["success"]
      153 SETTABLEKS                       R8 R10 K15 ["latencyMs"]
      155 CALL                             R9 1 0
      156 LOADB                            R5 1
      157 MOVE                             R6 R4
      158 RETURN                           R5 2

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
       12 JUMPIF                           R4 ; [+43]
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
       40 DUPTABLE                         R10 K14 [{"operation", "scope", "success", "latencyMs"}]
       41 SETTABLEKS                       R6 R10 K10 ["operation"]
       43 SETTABLEKS                       R7 R10 K11 ["scope"]
       45 LOADB                            R11 0
       46 SETTABLEKS                       R11 R10 K12 ["success"]
       48 SETTABLEKS                       R8 R10 K13 ["latencyMs"]
       50 CALL                             R9 1 0
       51 GETIMPORT                        R5 K16 [error]
       53 MOVE                             R6 R4
       54 LOADN                            R7 0
       55 CALL                             R5 2 0
       56 GETUPVAL                         R5 2
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+10]
       59 GETIMPORT                        R5 K4 [print]
       61 LOADK                            R7 K17 ["[Persistence] [IO] uploadMessagesAsync: uploaded %* messages for threadId=%*"]
       62 LENGTH                           R9 R1
       63 MOVE                             R10 R0
       64 NAMECALL                         R7 R7 K6 ["format"]
       66 CALL                             R7 3 1
       67 MOVE                             R6 R7
       68 CALL                             R5 1 0
       69 GETUPVAL                         R5 3
       70 GETUPVAL                         R6 4
       71 GETTABLEKS                       R6 R6 K7 ["Save"]
       73 GETUPVAL                         R7 5
       74 GETTABLEKS                       R7 R7 K8 ["Messages"]
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R9 R9 K0 ["getTimestampMilliseconds"]
       79 CALL                             R9 0 1
       80 SUB                              R8 R9 R2
       81 GETTABLEKS                       R9 R5 K9 ["logPersistenceOperation"]
       83 DUPTABLE                         R10 K14 [{"operation", "scope", "success", "latencyMs"}]
       84 SETTABLEKS                       R6 R10 K10 ["operation"]
       86 SETTABLEKS                       R7 R10 K11 ["scope"]
       88 LOADB                            R11 1
       89 SETTABLEKS                       R11 R10 K12 ["success"]
       91 SETTABLEKS                       R8 R10 K13 ["latencyMs"]
       93 CALL                             R9 1 0
       94 RETURN                           R4 1

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
