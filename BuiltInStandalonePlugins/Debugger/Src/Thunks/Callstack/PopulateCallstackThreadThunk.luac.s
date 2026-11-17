PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getState"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K1 ["Common"]
        6 GETTABLEKS                       R1 R1 K2 ["debuggerConnectionIdToDST"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["debuggerConnectionId"]
       11 GETTABLE                         R0 R1 R2
       12 GETUPVAL                         R1 1
       13 JUMPIFEQ                         R1 R0 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 2
       17 NAMECALL                         R1 R1 K4 ["GetChildren"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 0 0
       22 GETIMPORT                        R3 K6 [ipairs]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 3
       26 FORGPREP_INEXT                   R3
       27 NEWTABLE                         R8 0 0
       29 JUMPIFNOTEQKN                    R6 K7 [1] ; [+8]
       31 DUPTABLE                         R9 K11 [{["Value"] = "", ["LeftIcon"]}]
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R10 R10 K12 ["ICON_FRAME_TOP"]
       35 SETTABLEKS                       R10 R9 K10 ["LeftIcon"]
       37 MOVE                             R8 R9
       38 DUPTABLE                         R9 K18 [{"arrowColumn", "frameColumn", "functionColumn", "lineColumn", "sourceColumn"}]
       39 SETTABLEKS                       R8 R9 K13 ["arrowColumn"]
       41 SETTABLEKS                       R6 R9 K14 ["frameColumn"]
       43 GETTABLEKS                       R10 R7 K19 ["FrameName"]
       45 SETTABLEKS                       R10 R9 K15 ["functionColumn"]
       47 GETTABLEKS                       R11 R7 K20 ["Line"]
       49 LOADN                            R12 0
       50 JUMPIFNOTLT                      R11 R12 ; [+3]
       52 LOADK                            R10 K9 [""]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R10 R7 K20 ["Line"]
       56 SETTABLEKS                       R10 R9 K16 ["lineColumn"]
       58 GETTABLEKS                       R10 R7 K21 ["Script"]
       60 SETTABLEKS                       R10 R9 K17 ["sourceColumn"]
       62 GETUPVAL                         R10 0
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R13 R7 K21 ["Script"]
       66 LOADK                            R14 K9 [""]
       67 CALL                             R12 2 -1
       68 NAMECALL                         R10 R10 K22 ["dispatch"]
       70 CALL                             R10 -1 0
       71 GETUPVAL                         R10 5
       72 GETTABLEKS                       R12 R7 K21 ["Script"]
       74 GETUPVAL                         R13 0
       75 NAMECALL                         R13 R13 K0 ["getState"]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R13 R13 K1 ["Common"]
       80 GETTABLEKS                       R13 R13 K23 ["currentDebuggerConnectionId"]
       82 GETTABLEKS                       R14 R7 K20 ["Line"]
       84 NAMECALL                         R10 R10 K24 ["StartWatchingScriptLine"]
       86 CALL                             R10 4 0
       87 MOVE                             R11 R2
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R12 R12 K25 ["fromData"]
       91 MOVE                             R13 R9
       92 CALL                             R12 1 -1
       93 FASTCALL                         TABLE_INSERT ; [+2]
       94 GETIMPORT                        R10 K28 [table.insert]
       96 CALL                             R10 -1 0
       97 FORGLOOP                         R3 2 [inext] ; [-71]
       99 LENGTH                           R3 R2
      100 LOADN                            R4 0
      101 JUMPIFNOTLT                      R4 R3 ; [+12]
      103 GETUPVAL                         R3 0
      104 GETUPVAL                         R5 6
      105 GETUPVAL                         R6 2
      106 GETTABLEKS                       R6 R6 K29 ["ThreadId"]
      108 MOVE                             R7 R2
      109 GETUPVAL                         R8 1
      110 CALL                             R5 3 -1
      111 NAMECALL                         R3 R3 K22 ["dispatch"]
      113 CALL                             R3 -1 0
      114 GETUPVAL                         R3 7
      115 JUMPIFNOT                        R3 ; [+2]
      116 GETUPVAL                         R3 7
      117 CALL                             R3 0 0
      118 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 NAMECALL                         R2 R2 K0 ["Populate"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R4
        9 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Models"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["Callstack"]
       19 GETTABLEKS                       R3 R3 K8 ["CallstackRow"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R0 K3 ["Src"]
       24 GETTABLEKS                       R3 R3 K9 ["Actions"]
       26 GETIMPORT                        R4 K6 [require]
       28 GETTABLEKS                       R5 R3 K7 ["Callstack"]
       30 GETTABLEKS                       R5 R5 K10 ["AddCallstack"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K6 [require]
       35 GETTABLEKS                       R6 R3 K11 ["Common"]
       37 GETTABLEKS                       R6 R6 K12 ["SetFilenameForGuid"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
