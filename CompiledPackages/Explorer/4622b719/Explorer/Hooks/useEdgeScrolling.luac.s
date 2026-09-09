PROTO_0:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 LOADNIL                          R1
        4 GETIMPORT                        R2 K5 [task.wait]
        6 CALL                             R2 0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K6 ["current"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K6 ["current"]
       13 GETTABLEKS                       R3 R3 K7 ["isMouseDown"]
       15 CALL                             R3 0 1
       16 JUMPIF                           R3 ; [+12]
       17 GETUPVAL                         R3 2
       18 LOADNIL                          R4
       19 SETTABLEKS                       R4 R3 K6 ["current"]
       21 GETUPVAL                         R3 0
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K6 ["current"]
       25 GETUPVAL                         R3 3
       26 LOADNIL                          R4
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 GETIMPORT                        R3 K2 [os.clock]
       31 CALL                             R3 0 1
       32 SUB                              R4 R3 R0
       33 MOVE                             R0 R3
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K6 ["current"]
       37 JUMPIFEQKNIL                     R5 ; [+153]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K6 ["current"]
       42 GETTABLEKS                       R7 R7 K8 ["getMousePosition"]
       44 CALL                             R7 0 1
       45 GETTABLEKS                       R8 R5 K9 ["AbsolutePosition"]
       47 SUB                              R6 R7 R8
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 GETTABLEKS                       R9 R6 K10 ["Y"]
       52 GETTABLEKS                       R10 R5 K11 ["AbsoluteSize"]
       54 GETTABLEKS                       R10 R10 K10 ["Y"]
       56 JUMPIFNOTLT                      R10 R9 ; [+10]
       58 GETTABLEKS                       R9 R6 K10 ["Y"]
       60 GETTABLEKS                       R10 R5 K11 ["AbsoluteSize"]
       62 GETTABLEKS                       R10 R10 K10 ["Y"]
       64 SUB                              R7 R9 R10
       65 LOADN                            R8 1
       66 JUMP                             ; [+9]
       67 GETTABLEKS                       R9 R6 K10 ["Y"]
       69 LOADN                            R10 0
       70 JUMPIFNOTLT                      R9 R10 ; [+5]
       72 GETTABLEKS                       R9 R6 K10 ["Y"]
       74 MINUS                            R7 R9
       75 LOADN                            R8 -1
       76 LOADB                            R9 0
       77 GETTABLEKS                       R10 R6 K12 ["X"]
       79 LOADN                            R11 0
       80 JUMPIFNOTLE                      R11 R10 ; [+11]
       82 GETTABLEKS                       R10 R6 K12 ["X"]
       84 GETTABLEKS                       R11 R5 K11 ["AbsoluteSize"]
       86 GETTABLEKS                       R11 R11 K12 ["X"]
       88 JUMPIFLE                         R10 R11 ; [+2]
       90 LOADB                            R9 0 +1
       91 LOADB                            R9 1
       92 JUMPIFNOT                        R2 ; [+9]
       93 JUMPIFEQKNIL                     R7 ; [+10]
       95 GETUPVAL                         R10 5
       96 GETTABLEKS                       R10 R10 K13 ["getBoundaryHeight"]
       98 CALL                             R10 0 1
       99 JUMPIFLE                         R10 R7 ; [+4]
      101 JUMPIFNOT                        R9 ; [+2]
      102 JUMPIFNOTEQKNIL                  R8 ; [+6]
      104 LOADNIL                          R1
      105 GETUPVAL                         R10 3
      106 LOADNIL                          R11
      107 CALL                             R10 1 0
      108 JUMP                             ; [+82]
      109 JUMPIFNOTEQKNIL                  R1 ; [+19]
      111 GETIMPORT                        R10 K2 [os.clock]
      113 CALL                             R10 0 1
      114 MOVE                             R1 R10
      115 GETUPVAL                         R11 3
      116 DUPTABLE                         R12 K17 [{"startedAtClock", "direction", "gradual"}]
      117 SETTABLEKS                       R10 R12 K14 ["startedAtClock"]
      119 JUMPIFNOTEQKN                    R8 K18 [1] ; [+3]
      121 LOADK                            R13 K19 ["down"]
      122 JUMP                             ; [+1]
      123 LOADK                            R13 K20 ["up"]
      124 SETTABLEKS                       R13 R12 K15 ["direction"]
      126 SETTABLEKS                       R2 R12 K16 ["gradual"]
      128 CALL                             R11 1 0
      129 JUMPIFNOTEQKNIL                  R1 ; [+2]
      131 LOADB                            R11 0 +1
      132 LOADB                            R11 1
      133 FASTCALL2K                       ASSERT R11 K21 ; [+4]
      135 LOADK                            R12 K21 ["Luau"]
      136 GETIMPORT                        R10 K23 [assert]
      138 CALL                             R10 2 0
      139 GETIMPORT                        R11 K2 [os.clock]
      141 CALL                             R11 0 1
      142 SUB                              R10 R11 R1
      143 JUMPIFNOT                        R2 ; [+11]
      144 GETUPVAL                         R11 5
      145 GETTABLEKS                       R11 R11 K24 ["getGradualStartTime"]
      147 CALL                             R11 0 1
      148 JUMPIFLE                         R10 R11 ; [+42]
      150 GETUPVAL                         R11 5
      151 GETTABLEKS                       R11 R11 K24 ["getGradualStartTime"]
      153 CALL                             R11 0 1
      154 SUB                              R10 R10 R11
      155 LOADN                            R12 1
      156 GETUPVAL                         R14 5
      157 GETTABLEKS                       R14 R14 K25 ["getTimeToPeak"]
      159 CALL                             R14 0 1
      160 DIV                              R13 R10 R14
      161 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      163 GETIMPORT                        R11 K28 [math.min]
      165 CALL                             R11 2 1
      166 GETUPVAL                         R13 5
      167 GETTABLEKS                       R13 R13 K29 ["getSpeedMinimum"]
      169 CALL                             R13 0 1
      170 GETUPVAL                         R14 5
      171 GETTABLEKS                       R14 R14 K30 ["getSpeedMaximum"]
      173 CALL                             R14 0 1
      174 FASTCALL3                        MATH_LERP R13 R14 R11
      176 MOVE                             R15 R11
      177 GETIMPORT                        R12 K32 [math.lerp]
      179 CALL                             R12 3 1
      180 GETTABLEKS                       R13 R5 K33 ["CanvasPosition"]
      182 GETIMPORT                        R14 K36 [Vector2.new]
      184 LOADN                            R15 0
      185 MUL                              R17 R12 R8
      186 MUL                              R16 R17 R4
      187 CALL                             R14 2 1
      188 ADD                              R13 R13 R14
      189 SETTABLEKS                       R13 R5 K33 ["CanvasPosition"]
      191 JUMPBACK                         ; [-188]
      192 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETIMPORT                        R1 K3 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CALL                             R1 1 1
       17 SETTABLEKS                       R1 R0 K0 ["current"]
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETIMPORT                        R1 K3 [task.cancel]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useRefToState"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useRef"]
       15 LOADNIL                          R4
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useRef"]
       20 LOADB                            R5 1
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K4 ["useState"]
       25 LOADNIL                          R6
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 NEWTABLE                         R9 0 0
       39 CALL                             R7 2 1
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 NEWTABLE                         R10 0 1
       48 MOVE                             R11 R7
       49 SETLIST                          R10 R11 1 [1]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       55 NEWCLOSURE                       R10 P2
       56 CAPTURE                          VAL R7
       57 NEWTABLE                         R11 0 1
       59 MOVE                             R12 R7
       60 SETLIST                          R11 R12 1 [1]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       66 NEWCLOSURE                       R11 P3
       67 CAPTURE                          VAL R3
       68 NEWTABLE                         R12 0 0
       70 CALL                             R10 2 0
       71 DUPTABLE                         R10 K10 [{"startImmediately", "startGradually", "activeEdgeScroll"}]
       72 SETTABLEKS                       R8 R10 K7 ["startImmediately"]
       74 SETTABLEKS                       R9 R10 K8 ["startGradually"]
       76 SETTABLEKS                       R5 R10 K9 ["activeEdgeScroll"]
       78 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["EdgeScrollingNumbers"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["MouseContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K14 [PROTO_6]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 RETURN                           R5 1
