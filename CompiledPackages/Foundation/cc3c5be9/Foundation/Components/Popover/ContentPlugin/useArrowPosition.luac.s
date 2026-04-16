PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["XSmall"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+7]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["Size"]
        9 GETTABLEKS                       R0 R1 K2 ["Size_50"]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K3 ["Small"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+7]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K1 ["Size"]
       21 GETTABLEKS                       R0 R1 K4 ["Size_100"]
       23 RETURN                           R0 1
       24 GETUPVAL                         R0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K5 ["Medium"]
       28 JUMPIFNOTEQ                      R0 R1 ; [+7]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R1 R2 K1 ["Size"]
       33 GETTABLEKS                       R0 R1 K6 ["Size_200"]
       35 RETURN                           R0 1
       36 GETUPVAL                         R0 0
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R1 R2 K7 ["Large"]
       40 JUMPIFNOTEQ                      R0 R1 ; [+7]
       42 GETUPVAL                         R2 2
       43 GETTABLEKS                       R1 R2 K1 ["Size"]
       45 GETTABLEKS                       R0 R1 K8 ["Size_300"]
       47 RETURN                           R0 1
       48 LOADN                            R0 0
       49 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R1 R2 K1 ["Offset"]
        4 GETTABLEKS                       R3 R0 K2 ["Y"]
        6 GETTABLEKS                       R2 R3 K1 ["Offset"]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K3 ["Circle"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+9]
       15 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 GETIMPORT                        R4 K7 [math.min]
       21 CALL                             R4 2 1
       22 DIVK                             R3 R4 K4 [2]
       23 GETUPVAL                         R5 3
       24 ADD                              R4 R3 R5
       25 LOADB                            R5 1
       26 GETUPVAL                         R6 4
       27 GETUPVAL                         R8 5
       28 GETTABLEKS                       R7 R8 K8 ["Top"]
       30 JUMPIFEQ                         R6 R7 ; [+9]
       32 GETUPVAL                         R6 4
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R7 R8 K9 ["Bottom"]
       36 JUMPIFEQ                         R6 R7 ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 JUMPIFNOT                        R5 ; [+2]
       41 MOVE                             R6 R1
       42 JUMP                             ; [+1]
       43 MOVE                             R6 R2
       44 LOADNIL                          R7
       45 GETUPVAL                         R8 6
       46 JUMPIFNOT                        R8 ; [+55]
       47 GETUPVAL                         R9 6
       48 FASTCALL1                        TYPEOF R9 ; [+2]
       49 GETIMPORT                        R8 K11 [typeof]
       51 CALL                             R8 1 1
       52 JUMPIFNOTEQKS                    R8 K12 ["Instance"] ; [+49]
       54 GETUPVAL                         R9 6
       55 GETTABLEKS                       R8 R9 K13 ["AbsoluteSize"]
       57 JUMPIFNOT                        R5 ; [+3]
       58 GETTABLEKS                       R9 R8 K0 ["X"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R9 R8 K2 ["Y"]
       63 LOADNIL                          R10
       64 GETUPVAL                         R11 7
       65 JUMPIFNOTEQKN                    R11 K14 [0] ; [+3]
       67 LOADN                            R10 0
       68 JUMP                             ; [+7]
       69 GETUPVAL                         R11 7
       70 JUMPIFNOTEQKN                    R11 K15 [0.5] ; [+4]
       72 SUB                              R11 R6 R9
       73 DIVK                             R10 R11 K4 [2]
       74 JUMP                             ; [+1]
       75 SUB                              R10 R6 R9
       76 LOADN                            R12 0
       77 FASTCALL2                        MATH_MAX R12 R10 ; [+4]
       79 MOVE                             R13 R10
       80 GETIMPORT                        R11 K17 [math.max]
       82 CALL                             R11 2 1
       83 ADD                              R14 R10 R9
       84 FASTCALL2                        MATH_MIN R6 R14 ; [+4]
       86 MOVE                             R13 R6
       87 GETIMPORT                        R12 K7 [math.min]
       89 CALL                             R12 2 1
       90 JUMPIFNOTLE                      R11 R12 ; [+4]
       92 ADD                              R13 R11 R12
       93 DIVK                             R7 R13 K4 [2]
       94 JUMP                             ; [+9]
       95 JUMPIFNOTLT                      R6 R10 ; [+4]
       97 GETUPVAL                         R13 3
       98 SUB                              R7 R6 R13
       99 JUMP                             ; [+4]
      100 GETUPVAL                         R7 3
      101 JUMP                             ; [+2]
      102 GETUPVAL                         R8 7
      103 MUL                              R7 R6 R8
      104 SUB                              R8 R6 R4
      105 JUMPIFNOTLE                      R4 R8 ; [+11]
      107 FASTCALL3                        MATH_CLAMP R7 R4 R8
      109 MOVE                             R10 R7
      110 MOVE                             R11 R4
      111 MOVE                             R12 R8
      112 GETIMPORT                        R9 K19 [math.clamp]
      114 CALL                             R9 3 1
      115 MOVE                             R7 R9
      116 JUMP                             ; [+1]
      117 DIVK                             R7 R6 K4 [2]
      118 JUMPIFNOT                        R5 ; [+17]
      119 GETIMPORT                        R9 K22 [UDim2.fromOffset]
      121 GETUPVAL                         R11 8
      122 ADD                              R10 R11 R7
      123 GETUPVAL                         R12 8
      124 GETUPVAL                         R14 4
      125 GETUPVAL                         R16 5
      126 GETTABLEKS                       R15 R16 K8 ["Top"]
      128 JUMPIFNOTEQ                      R14 R15 ; [+3]
      130 MOVE                             R13 R2
      131 JUMP                             ; [+1]
      132 LOADN                            R13 0
      133 ADD                              R11 R12 R13
      134 CALL                             R9 2 -1
      135 RETURN                           R9 -1
      136 GETIMPORT                        R9 K22 [UDim2.fromOffset]
      138 GETUPVAL                         R11 8
      139 GETUPVAL                         R13 4
      140 GETUPVAL                         R15 5
      141 GETTABLEKS                       R14 R15 K23 ["Left"]
      143 JUMPIFNOTEQ                      R13 R14 ; [+3]
      145 MOVE                             R12 R1
      146 JUMP                             ; [+1]
      147 LOADN                            R12 0
      148 ADD                              R10 R11 R12
      149 GETUPVAL                         R12 8
      150 ADD                              R11 R12 R7
      151 CALL                             R9 2 -1
      152 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 GETUPVAL                         R8 1
        3 GETTABLEKS                       R7 R8 K0 ["useMemo"]
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R6
        9 NEWTABLE                         R9 0 2
       11 MOVE                             R10 R2
       12 MOVE                             R11 R6
       13 SETLIST                          R9 R10 2 [1]
       15 CALL                             R7 2 1
       16 NEWCLOSURE                       R10 P1
       17 CAPTURE                          VAL R7
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U4
       26 NAMECALL                         R8 R0 K1 ["map"]
       28 CALL                             R8 2 -1
       29 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["PopoverSide"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K11 ["Radius"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Providers"]
       37 GETTABLEKS                       R8 R9 K13 ["Style"]
       39 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R3 K15 ["SHADOW_SIZE"]
       44 DUPCLOSURE                       R8 K16 [PROTO_2]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R7
       50 RETURN                           R8 1
