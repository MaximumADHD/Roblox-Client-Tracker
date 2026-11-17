PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["DebugData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R4 R2 K3 ["FrameBuffer"]
        9 GETTABLEKS                       R5 R3 K4 ["DebugPoseEvent"]
       11 GETTABLEKS                       R6 R3 K5 ["SelectedLayer"]
       13 GETUPVAL                         R7 0
       14 JUMPIFNOT                        R7 ; [+62]
       15 GETTABLEKS                       R7 R4 K6 ["last"]
       17 JUMPIF                           R7 ; [+1]
       18 RETURN                           R0 0
       19 LOADN                            R8 1
       20 GETUPVAL                         R9 0
       21 JUMPIFEQKN                       R9 K7 [0] ; [+21]
       23 GETTABLEKS                       R10 R7 K8 ["timestamp"]
       25 GETUPVAL                         R11 0
       26 ADD                              R9 R10 R11
       27 LOADN                            R12 2
       28 NAMECALL                         R13 R4 K9 ["getSize"]
       30 CALL                             R13 1 1
       31 MOVE                             R10 R13
       32 LOADN                            R11 1
       33 FORNPREP                         R10
       34 GETTABLE                         R13 R4 R12
       35 JUMPIFNOT                        R13 ; [+6]
       36 GETTABLEKS                       R13 R7 K8 ["timestamp"]
       38 JUMPIFLE                         R13 R9 ; [+4]
       40 GETTABLE                         R7 R4 R12
       41 MOVE                             R8 R12
       42 FORNLOOP                         R10
       43 JUMPIFNOT                        R6 ; [+4]
       44 GETTABLEKS                       R10 R7 K10 ["layerMap"]
       46 GETTABLE                         R9 R10 R6
       47 JUMP                             ; [+2]
       48 GETTABLEKS                       R9 R7 K11 ["payload"]
       50 MOVE                             R10 R9
       51 JUMPIFNOT                        R10 ; [+2]
       52 GETTABLEKS                       R10 R9 K12 ["animationPose"]
       54 GETTABLEKS                       R11 R7 K11 ["payload"]
       56 GETTABLEKS                       R11 R11 K13 ["hrpCFrame"]
       58 JUMPIFNOT                        R5 ; [+5]
       59 MOVE                             R14 R10
       60 MOVE                             R15 R11
       61 NAMECALL                         R12 R5 K14 ["Fire"]
       63 CALL                             R12 3 0
       64 GETUPVAL                         R14 1
       65 GETUPVAL                         R15 0
       66 CALL                             R14 1 -1
       67 NAMECALL                         R12 R0 K15 ["dispatch"]
       69 CALL                             R12 -1 0
       70 GETUPVAL                         R14 2
       71 MOVE                             R15 R8
       72 CALL                             R14 1 -1
       73 NAMECALL                         R12 R0 K15 ["dispatch"]
       75 CALL                             R12 -1 0
       76 JUMP                             ; [+78]
       77 GETUPVAL                         R7 3
       78 JUMPIFNOT                        R7 ; [+58]
       79 GETTABLEKS                       R9 R3 K17 ["HistoryFrame"]
       81 ORK                              R8 R9 K16 [1]
       82 GETUPVAL                         R9 3
       83 ADD                              R7 R8 R9
       84 LOADN                            R8 1
       85 JUMPIFLT                         R7 R8 ; [+8]
       87 NAMECALL                         R8 R4 K9 ["getSize"]
       89 CALL                             R8 1 1
       90 JUMPIFLT                         R8 R7 ; [+3]
       92 GETTABLE                         R8 R4 R7
       93 JUMPIF                           R8 ; [+1]
       94 RETURN                           R0 0
       95 GETTABLE                         R8 R4 R7
       96 GETTABLEKS                       R10 R8 K8 ["timestamp"]
       98 GETTABLEKS                       R11 R4 K6 ["last"]
      100 GETTABLEKS                       R11 R11 K8 ["timestamp"]
      102 SUB                              R9 R10 R11
      103 JUMPIFNOT                        R6 ; [+4]
      104 GETTABLEKS                       R11 R8 K10 ["layerMap"]
      106 GETTABLE                         R10 R11 R6
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R10 R8 K11 ["payload"]
      110 MOVE                             R11 R10
      111 JUMPIFNOT                        R11 ; [+2]
      112 GETTABLEKS                       R11 R10 K12 ["animationPose"]
      114 GETTABLEKS                       R12 R8 K11 ["payload"]
      116 GETTABLEKS                       R12 R12 K13 ["hrpCFrame"]
      118 JUMPIFNOT                        R5 ; [+5]
      119 MOVE                             R15 R11
      120 MOVE                             R16 R12
      121 NAMECALL                         R13 R5 K14 ["Fire"]
      123 CALL                             R13 3 0
      124 GETUPVAL                         R15 1
      125 MOVE                             R16 R9
      126 CALL                             R15 1 -1
      127 NAMECALL                         R13 R0 K15 ["dispatch"]
      129 CALL                             R13 -1 0
      130 GETUPVAL                         R15 2
      131 MOVE                             R16 R7
      132 CALL                             R15 1 -1
      133 NAMECALL                         R13 R0 K15 ["dispatch"]
      135 CALL                             R13 -1 0
      136 JUMP                             ; [+18]
      137 JUMPIFNOT                        R5 ; [+5]
      138 LOADNIL                          R9
      139 LOADNIL                          R10
      140 NAMECALL                         R7 R5 K14 ["Fire"]
      142 CALL                             R7 3 0
      143 GETUPVAL                         R9 1
      144 LOADNIL                          R10
      145 CALL                             R9 1 -1
      146 NAMECALL                         R7 R0 K15 ["dispatch"]
      148 CALL                             R7 -1 0
      149 GETUPVAL                         R9 2
      150 LOADNIL                          R10
      151 CALL                             R9 1 -1
      152 NAMECALL                         R7 R0 K15 ["dispatch"]
      154 CALL                             R7 -1 0
      155 GETUPVAL                         R9 4
      156 CALL                             R9 0 -1
      157 NAMECALL                         R7 R0 K15 ["dispatch"]
      159 CALL                             R7 -1 0
      160 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetHistoryFrame"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetHistoryOffset"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K4 ["Src"]
       23 GETTABLEKS                       R4 R4 K10 ["Reducers"]
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R4 K11 ["DebugData"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R4 K12 ["Status"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R0 K4 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Thunks"]
       39 GETIMPORT                        R8 K7 [require]
       41 GETTABLEKS                       R9 R7 K14 ["RenderAdornments"]
       43 CALL                             R8 1 1
       44 DUPCLOSURE                       R9 K15 [PROTO_1]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R8
       48 RETURN                           R9 1
