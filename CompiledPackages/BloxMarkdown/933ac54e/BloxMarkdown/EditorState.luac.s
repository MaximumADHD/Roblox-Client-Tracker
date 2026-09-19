PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["blockIndex"]
        2 GETTABLEKS                       R3 R1 K0 ["blockIndex"]
        4 JUMPIFEQ                         R2 R3 ; [+11]
        6 GETTABLEKS                       R3 R0 K0 ["blockIndex"]
        8 GETTABLEKS                       R4 R1 K0 ["blockIndex"]
       10 JUMPIFNOTLT                      R3 R4 ; [+3]
       12 LOADN                            R2 -1
       13 RETURN                           R2 1
       14 LOADN                            R2 1
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K1 ["path"]
       18 JUMPIFNOT                        R2 ; [+35]
       19 GETTABLEKS                       R2 R1 K1 ["path"]
       21 JUMPIFNOT                        R2 ; [+32]
       22 LOADN                            R4 1
       23 GETTABLEKS                       R7 R0 K1 ["path"]
       25 LENGTH                           R6 R7
       26 GETTABLEKS                       R8 R1 K1 ["path"]
       28 LENGTH                           R7 R8
       29 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       31 GETIMPORT                        R5 K4 [math.max]
       33 CALL                             R5 2 1
       34 MOVE                             R2 R5
       35 LOADN                            R3 1
       36 FORNPREP                         R2
       37 GETTABLEKS                       R7 R0 K1 ["path"]
       39 GETTABLE                         R6 R7 R4
       40 ORK                              R5 R6 K5 [0]
       41 GETTABLEKS                       R8 R1 K1 ["path"]
       43 GETTABLE                         R7 R8 R4
       44 ORK                              R6 R7 K5 [0]
       45 JUMPIFEQ                         R5 R6 ; [+7]
       47 JUMPIFNOTLT                      R5 R6 ; [+3]
       49 LOADN                            R7 -1
       50 RETURN                           R7 1
       51 LOADN                            R7 1
       52 RETURN                           R7 1
       53 FORNLOOP                         R2
       54 GETTABLEKS                       R2 R0 K6 ["segmentIndex"]
       56 GETTABLEKS                       R3 R1 K6 ["segmentIndex"]
       58 JUMPIFEQ                         R2 R3 ; [+11]
       60 GETTABLEKS                       R3 R0 K6 ["segmentIndex"]
       62 GETTABLEKS                       R4 R1 K6 ["segmentIndex"]
       64 JUMPIFNOTLT                      R3 R4 ; [+3]
       66 LOADN                            R2 -1
       67 RETURN                           R2 1
       68 LOADN                            R2 1
       69 RETURN                           R2 1
       70 GETTABLEKS                       R2 R0 K7 ["charOffset"]
       72 GETTABLEKS                       R3 R1 K7 ["charOffset"]
       74 JUMPIFEQ                         R2 R3 ; [+11]
       76 GETTABLEKS                       R3 R0 K7 ["charOffset"]
       78 GETTABLEKS                       R4 R1 K7 ["charOffset"]
       80 JUMPIFNOTLT                      R3 R4 ; [+3]
       82 LOADN                            R2 -1
       83 RETURN                           R2 1
       84 LOADN                            R2 1
       85 RETURN                           R2 1
       86 LOADN                            R2 0
       87 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["comparePositions"]
        3 GETTABLEKS                       R2 R0 K1 ["anchor"]
        5 GETTABLEKS                       R3 R0 K2 ["focus"]
        7 CALL                             R1 2 1
        8 LOADN                            R2 0
        9 JUMPIFNOTLE                      R1 R2 ; [+6]
       11 GETTABLEKS                       R2 R0 K1 ["anchor"]
       13 GETTABLEKS                       R3 R0 K2 ["focus"]
       15 RETURN                           R2 2
       16 GETTABLEKS                       R2 R0 K2 ["focus"]
       18 GETTABLEKS                       R3 R0 K1 ["anchor"]
       20 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["comparePositions"]
        3 GETTABLEKS                       R3 R0 K1 ["anchor"]
        5 GETTABLEKS                       R4 R0 K2 ["focus"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKN                       R2 K3 [0] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R4 K4 [{"blockIndex", "path", "segmentIndex", "charOffset"}]
        1 SETTABLEKS                       R0 R4 K0 ["blockIndex"]
        3 SETTABLEKS                       R3 R4 K1 ["path"]
        5 SETTABLEKS                       R1 R4 K2 ["segmentIndex"]
        7 SETTABLEKS                       R2 R4 K3 ["charOffset"]
        9 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createPosition"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 1
        8 DUPTABLE                         R5 K3 [{"anchor", "focus"}]
        9 SETTABLEKS                       R4 R5 K1 ["anchor"]
       11 SETTABLEKS                       R4 R5 K2 ["focus"]
       13 RETURN                           R5 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADN                            R2 0
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADN                            R2 -1
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+3]
       12 LOADN                            R2 1
       13 RETURN                           R2 1
       14 LOADN                            R4 1
       15 LENGTH                           R6 R0
       16 LENGTH                           R7 R1
       17 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       19 GETIMPORT                        R5 K2 [math.max]
       21 CALL                             R5 2 1
       22 MOVE                             R2 R5
       23 LOADN                            R3 1
       24 FORNPREP                         R2
       25 GETTABLE                         R6 R0 R4
       26 ORK                              R5 R6 K3 [0]
       27 GETTABLE                         R7 R1 R4
       28 ORK                              R6 R7 K3 [0]
       29 JUMPIFEQ                         R5 R6 ; [+7]
       31 JUMPIFNOTLT                      R5 R6 ; [+3]
       33 LOADN                            R7 -1
       34 RETURN                           R7 1
       35 LOADN                            R7 1
       36 RETURN                           R7 1
       37 FORNLOOP                         R2
       38 LOADN                            R2 0
       39 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R4
        4 RETURN                           R4 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["getOrderedSelection"]
        8 MOVE                             R5 R1
        9 CALL                             R4 1 2
       10 GETTABLEKS                       R6 R4 K1 ["blockIndex"]
       12 JUMPIFLT                         R0 R6 ; [+5]
       14 GETTABLEKS                       R6 R5 K1 ["blockIndex"]
       16 JUMPIFNOTLT                      R6 R0 ; [+3]
       18 LOADNIL                          R6
       19 RETURN                           R6 1
       20 JUMPIFNOT                        R3 ; [+100]
       21 GETTABLEKS                       R6 R4 K1 ["blockIndex"]
       23 JUMPIFNOTEQ                      R0 R6 ; [+11]
       25 GETUPVAL                         R6 1
       26 MOVE                             R7 R3
       27 GETTABLEKS                       R8 R4 K2 ["path"]
       29 CALL                             R6 2 1
       30 LOADN                            R7 0
       31 JUMPIFNOTLT                      R6 R7 ; [+3]
       33 LOADNIL                          R6
       34 RETURN                           R6 1
       35 GETTABLEKS                       R6 R5 K1 ["blockIndex"]
       37 JUMPIFNOTEQ                      R0 R6 ; [+11]
       39 GETUPVAL                         R6 1
       40 MOVE                             R7 R3
       41 GETTABLEKS                       R8 R5 K2 ["path"]
       43 CALL                             R6 2 1
       44 LOADN                            R7 0
       45 JUMPIFNOTLT                      R7 R6 ; [+3]
       47 LOADNIL                          R6
       48 RETURN                           R6 1
       49 LOADB                            R6 0
       50 GETTABLEKS                       R7 R4 K1 ["blockIndex"]
       52 JUMPIFNOTEQ                      R0 R7 ; [+10]
       54 GETUPVAL                         R7 1
       55 MOVE                             R8 R3
       56 GETTABLEKS                       R9 R4 K2 ["path"]
       58 CALL                             R7 2 1
       59 JUMPIFEQKN                       R7 K3 [0] ; [+2]
       61 LOADB                            R6 0 +1
       62 LOADB                            R6 1
       63 LOADB                            R7 0
       64 GETTABLEKS                       R8 R5 K1 ["blockIndex"]
       66 JUMPIFNOTEQ                      R0 R8 ; [+10]
       68 GETUPVAL                         R8 1
       69 MOVE                             R9 R3
       70 GETTABLEKS                       R10 R5 K2 ["path"]
       72 CALL                             R8 2 1
       73 JUMPIFEQKN                       R8 K3 [0] ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 JUMPIF                           R6 ; [+3]
       78 JUMPIF                           R7 ; [+2]
       79 LOADK                            R8 K4 ["full"]
       80 RETURN                           R8 1
       81 JUMPIFNOT                        R6 ; [+3]
       82 GETTABLEKS                       R8 R4 K5 ["segmentIndex"]
       84 JUMP                             ; [+1]
       85 LOADN                            R8 1
       86 JUMPIFNOT                        R6 ; [+3]
       87 GETTABLEKS                       R9 R4 K6 ["charOffset"]
       89 JUMP                             ; [+1]
       90 LOADN                            R9 0
       91 JUMPIFNOT                        R7 ; [+3]
       92 GETTABLEKS                       R10 R5 K5 ["segmentIndex"]
       94 JUMP                             ; [+1]
       95 MOVE                             R10 R2
       96 JUMPIFNOT                        R7 ; [+3]
       97 GETTABLEKS                       R11 R5 K6 ["charOffset"]
       99 JUMP                             ; [+1]
      100 LOADK                            R11 K7 [∞]
      101 JUMPIFNOTEQKN                    R8 K8 [1] ; [+9]
      103 JUMPIFNOTEQKN                    R9 K3 [0] ; [+7]
      105 JUMPIFNOTLE                      R2 R10 ; [+5]
      107 JUMPIFNOTEQKN                    R11 K7 [∞] ; [+3]
      109 LOADK                            R12 K4 ["full"]
      110 RETURN                           R12 1
      111 DUPTABLE                         R12 K13 [{"startSeg", "startChar", "endSeg", "endChar"}]
      112 SETTABLEKS                       R8 R12 K9 ["startSeg"]
      114 SETTABLEKS                       R9 R12 K10 ["startChar"]
      116 SETTABLEKS                       R10 R12 K11 ["endSeg"]
      118 SETTABLEKS                       R11 R12 K12 ["endChar"]
      120 RETURN                           R12 1
      121 GETTABLEKS                       R7 R4 K1 ["blockIndex"]
      123 JUMPIFEQ                         R0 R7 ; [+2]
      125 LOADB                            R6 0 +1
      126 LOADB                            R6 1
      127 GETTABLEKS                       R8 R5 K1 ["blockIndex"]
      129 JUMPIFEQ                         R0 R8 ; [+2]
      131 LOADB                            R7 0 +1
      132 LOADB                            R7 1
      133 JUMPIF                           R6 ; [+3]
      134 JUMPIF                           R7 ; [+2]
      135 LOADK                            R8 K4 ["full"]
      136 RETURN                           R8 1
      137 JUMPIFNOT                        R6 ; [+3]
      138 GETTABLEKS                       R8 R4 K5 ["segmentIndex"]
      140 JUMP                             ; [+1]
      141 LOADN                            R8 1
      142 JUMPIFNOT                        R6 ; [+3]
      143 GETTABLEKS                       R9 R4 K6 ["charOffset"]
      145 JUMP                             ; [+1]
      146 LOADN                            R9 0
      147 JUMPIFNOT                        R7 ; [+3]
      148 GETTABLEKS                       R10 R5 K5 ["segmentIndex"]
      150 JUMP                             ; [+1]
      151 MOVE                             R10 R2
      152 JUMPIFNOT                        R7 ; [+3]
      153 GETTABLEKS                       R11 R5 K6 ["charOffset"]
      155 JUMP                             ; [+1]
      156 LOADK                            R11 K7 [∞]
      157 JUMPIFNOTEQKN                    R8 K8 [1] ; [+9]
      159 JUMPIFNOTEQKN                    R9 K3 [0] ; [+7]
      161 JUMPIFNOTLE                      R2 R10 ; [+5]
      163 JUMPIFNOTEQKN                    R11 K7 [∞] ; [+3]
      165 LOADK                            R12 K4 ["full"]
      166 RETURN                           R12 1
      167 DUPTABLE                         R12 K13 [{"startSeg", "startChar", "endSeg", "endChar"}]
      168 SETTABLEKS                       R8 R12 K9 ["startSeg"]
      170 SETTABLEKS                       R9 R12 K10 ["startChar"]
      172 SETTABLEKS                       R10 R12 K11 ["endSeg"]
      174 SETTABLEKS                       R11 R12 K12 ["endChar"]
      176 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["comparePositions"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["getOrderedSelection"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["isCollapsed"]
       14 DUPCLOSURE                       R1 K6 [PROTO_3]
       15 SETTABLEKS                       R1 R0 K7 ["createPosition"]
       17 DUPCLOSURE                       R1 K8 [PROTO_4]
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K9 ["createCollapsed"]
       21 DUPCLOSURE                       R1 K10 [PROTO_5]
       22 DUPCLOSURE                       R2 K11 [PROTO_6]
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R2 R0 K12 ["getBlockSelectionRange"]
       27 RETURN                           R0 1
