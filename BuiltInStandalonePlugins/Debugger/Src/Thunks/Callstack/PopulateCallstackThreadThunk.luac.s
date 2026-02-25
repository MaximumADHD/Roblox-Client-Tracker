PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["getState"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R2 R3 K1 ["Common"]
        6 GETTABLEKS                       R1 R2 K2 ["debuggerConnectionIdToDST"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["debuggerConnectionId"]
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
       29 JUMPIFNOTEQKN                    R6 K7 [1] ; [+11]
       31 DUPTABLE                         R9 K10 [{"Value", "LeftIcon"}]
       32 LOADK                            R10 K11 [""]
       33 SETTABLEKS                       R10 R9 K8 ["Value"]
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R10 R11 K12 ["ICON_FRAME_TOP"]
       38 SETTABLEKS                       R10 R9 K9 ["LeftIcon"]
       40 MOVE                             R8 R9
       41 DUPTABLE                         R9 K18 [{"arrowColumn", "frameColumn", "functionColumn", "lineColumn", "sourceColumn"}]
       42 SETTABLEKS                       R8 R9 K13 ["arrowColumn"]
       44 SETTABLEKS                       R6 R9 K14 ["frameColumn"]
       46 GETTABLEKS                       R10 R7 K19 ["FrameName"]
       48 SETTABLEKS                       R10 R9 K15 ["functionColumn"]
       50 GETTABLEKS                       R11 R7 K20 ["Line"]
       52 LOADN                            R12 0
       53 JUMPIFNOTLT                      R11 R12 ; [+3]
       55 LOADK                            R10 K11 [""]
       56 JUMP                             ; [+2]
       57 GETTABLEKS                       R10 R7 K20 ["Line"]
       59 SETTABLEKS                       R10 R9 K16 ["lineColumn"]
       61 GETTABLEKS                       R10 R7 K21 ["Script"]
       63 SETTABLEKS                       R10 R9 K17 ["sourceColumn"]
       65 GETUPVAL                         R10 0
       66 GETUPVAL                         R12 4
       67 GETTABLEKS                       R13 R7 K21 ["Script"]
       69 LOADK                            R14 K11 [""]
       70 CALL                             R12 2 -1
       71 NAMECALL                         R10 R10 K22 ["dispatch"]
       73 CALL                             R10 -1 0
       74 GETUPVAL                         R10 5
       75 GETTABLEKS                       R12 R7 K21 ["Script"]
       77 GETUPVAL                         R15 0
       78 NAMECALL                         R15 R15 K0 ["getState"]
       80 CALL                             R15 1 1
       81 GETTABLEKS                       R14 R15 K1 ["Common"]
       83 GETTABLEKS                       R13 R14 K23 ["currentDebuggerConnectionId"]
       85 GETTABLEKS                       R14 R7 K20 ["Line"]
       87 NAMECALL                         R10 R10 K24 ["StartWatchingScriptLine"]
       89 CALL                             R10 4 0
       90 MOVE                             R11 R2
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R12 R13 K25 ["fromData"]
       94 MOVE                             R13 R9
       95 CALL                             R12 1 -1
       96 FASTCALL                         TABLE_INSERT ; [+2]
       97 GETIMPORT                        R10 K28 [table.insert]
       99 CALL                             R10 -1 0
      100 FORGLOOP                         R3 2 [inext] ; [-74]
      102 LENGTH                           R3 R2
      103 LOADN                            R4 0
      104 JUMPIFNOTLT                      R4 R3 ; [+12]
      106 GETUPVAL                         R3 0
      107 GETUPVAL                         R5 6
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R6 R7 K29 ["ThreadId"]
      111 MOVE                             R7 R2
      112 GETUPVAL                         R8 1
      113 CALL                             R5 3 -1
      114 NAMECALL                         R3 R3 K22 ["dispatch"]
      116 CALL                             R3 -1 0
      117 GETUPVAL                         R3 7
      118 JUMPIFNOT                        R3 ; [+2]
      119 GETUPVAL                         R3 7
      120 CALL                             R3 0 0
      121 RETURN                           R0 0

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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Models"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R4 R1 K7 ["Callstack"]
       19 GETTABLEKS                       R3 R4 K8 ["CallstackRow"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R4 R0 K3 ["Src"]
       24 GETTABLEKS                       R3 R4 K9 ["Actions"]
       26 GETIMPORT                        R4 K6 [require]
       28 GETTABLEKS                       R6 R3 K7 ["Callstack"]
       30 GETTABLEKS                       R5 R6 K10 ["AddCallstack"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K6 [require]
       35 GETTABLEKS                       R7 R3 K11 ["Common"]
       37 GETTABLEKS                       R6 R7 K12 ["SetFilenameForGuid"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
