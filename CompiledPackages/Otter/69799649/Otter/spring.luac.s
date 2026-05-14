PROTO_0:
        0 MUL                              R6 R2 R1
        1 FASTCALL1                        MATH_SQRT R6 ; [+1]
        2 GETUPVAL                         R5 0
        3 CALL                             R5 1 1
        4 MULK                             R4 R5 K0 [2]
        5 DIV                              R3 R0 R4
        6 DIV                              R7 R1 R2
        7 FASTCALL1                        MATH_SQRT R7 ; [+1]
        8 GETUPVAL                         R6 0
        9 CALL                             R6 1 1
       10 DIVK                             R5 R6 K0 [2]
       11 DIVK                             R4 R5 K1 [3.14159265358979]
       12 RETURN                           R3 2

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["value"]
        2 GETTABLEKS                       R4 R0 K2 ["velocity"]
        4 ORK                              R3 R4 K1 [0]
        5 GETUPVAL                         R5 0
        6 SUB                              R4 R2 R5
        7 MINUS                            R8 R1
        8 GETUPVAL                         R9 1
        9 MUL                              R7 R8 R9
       10 GETUPVAL                         R8 2
       11 MUL                              R6 R7 R8
       12 FASTCALL1                        MATH_EXP R6 ; [+1]
       13 GETUPVAL                         R5 3
       14 CALL                             R5 1 1
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 GETUPVAL                         R8 1
       18 JUMPIFNOTEQKN                    R8 K3 [1] ; [+19]
       20 MUL                              R10 R3 R1
       21 GETUPVAL                         R14 2
       22 MUL                              R13 R14 R1
       23 ADDK                             R12 R13 K3 [1]
       24 MUL                              R11 R4 R12
       25 ADD                              R9 R10 R11
       26 MUL                              R8 R9 R5
       27 GETUPVAL                         R9 0
       28 ADD                              R6 R8 R9
       29 GETUPVAL                         R11 2
       30 MUL                              R10 R11 R1
       31 GETUPVAL                         R13 2
       32 MUL                              R12 R4 R13
       33 ADD                              R11 R12 R3
       34 MUL                              R9 R10 R11
       35 SUB                              R8 R3 R9
       36 MUL                              R7 R8 R5
       37 JUMP                             ; [+129]
       38 GETUPVAL                         R8 1
       39 LOADN                            R9 1
       40 JUMPIFNOTLT                      R8 R9 ; [+85]
       42 GETUPVAL                         R11 1
       43 GETUPVAL                         R12 1
       44 MUL                              R10 R11 R12
       45 SUBRK                            R9 R3 K10 [NULL]
       46 FASTCALL1                        MATH_SQRT R9 ; [+1]
       47 GETUPVAL                         R8 4
       48 CALL                             R8 1 1
       49 GETUPVAL                         R12 2
       50 MUL                              R11 R12 R8
       51 MUL                              R10 R11 R1
       52 FASTCALL1                        MATH_COS R10 ; [+1]
       53 GETUPVAL                         R9 5
       54 CALL                             R9 1 1
       55 GETUPVAL                         R13 2
       56 MUL                              R12 R13 R8
       57 MUL                              R11 R12 R1
       58 FASTCALL1                        MATH_SIN R11 ; [+1]
       59 GETUPVAL                         R10 6
       60 CALL                             R10 1 1
       61 LOADNIL                          R11
       62 LOADK                            R12 K4 [0.0001]
       63 JUMPIFNOTLT                      R12 R8 ; [+3]
       65 DIV                              R11 R10 R8
       66 JUMP                             ; [+15]
       67 GETUPVAL                         R13 2
       68 MUL                              R12 R1 R13
       69 MUL                              R19 R12 R12
       70 MUL                              R20 R8 R8
       71 MUL                              R18 R19 R20
       72 MUL                              R19 R8 R8
       73 MUL                              R17 R18 R19
       74 DIVK                             R16 R17 K6 [20]
       75 MUL                              R17 R8 R8
       76 SUB                              R15 R16 R17
       77 MUL                              R17 R12 R12
       78 MUL                              R16 R17 R12
       79 MUL                              R14 R15 R16
       80 DIVK                             R13 R14 K5 [6]
       81 ADD                              R11 R12 R13
       82 LOADNIL                          R12
       83 GETUPVAL                         R14 2
       84 MUL                              R13 R14 R8
       85 LOADK                            R14 K4 [0.0001]
       86 JUMPIFNOTLT                      R14 R13 ; [+5]
       88 GETUPVAL                         R14 2
       89 MUL                              R13 R14 R8
       90 DIV                              R12 R10 R13
       91 JUMP                             ; [+15]
       92 GETUPVAL                         R14 2
       93 MUL                              R13 R14 R8
       94 MUL                              R20 R1 R1
       95 MUL                              R21 R13 R13
       96 MUL                              R19 R20 R21
       97 MUL                              R20 R13 R13
       98 MUL                              R18 R19 R20
       99 DIVK                             R17 R18 K6 [20]
      100 MUL                              R18 R13 R13
      101 SUB                              R16 R17 R18
      102 MUL                              R18 R1 R1
      103 MUL                              R17 R18 R1
      104 MUL                              R15 R16 R17
      105 DIVK                             R14 R15 K5 [6]
      106 ADD                              R12 R1 R14
      107 GETUPVAL                         R18 1
      108 MUL                              R17 R18 R11
      109 ADD                              R16 R9 R17
      110 MUL                              R15 R4 R16
      111 MUL                              R16 R3 R12
      112 ADD                              R14 R15 R16
      113 MUL                              R13 R14 R5
      114 GETUPVAL                         R14 0
      115 ADD                              R6 R13 R14
      116 GETUPVAL                         R17 1
      117 MUL                              R16 R11 R17
      118 SUB                              R15 R9 R16
      119 MUL                              R14 R3 R15
      120 GETUPVAL                         R17 2
      121 MUL                              R16 R11 R17
      122 MUL                              R15 R4 R16
      123 SUB                              R13 R14 R15
      124 MUL                              R7 R13 R5
      125 JUMP                             ; [+41]
      126 GETUPVAL                         R11 1
      127 GETUPVAL                         R12 1
      128 MUL                              R10 R11 R12
      129 SUBK                             R9 R10 K3 [1]
      130 FASTCALL1                        MATH_SQRT R9 ; [+1]
      131 GETUPVAL                         R8 4
      132 CALL                             R8 1 1
      133 GETUPVAL                         R11 2
      134 MINUS                            R10 R11
      135 GETUPVAL                         R12 1
      136 SUB                              R11 R12 R8
      137 MUL                              R9 R10 R11
      138 GETUPVAL                         R12 2
      139 MINUS                            R11 R12
      140 GETUPVAL                         R13 1
      141 ADD                              R12 R13 R8
      142 MUL                              R10 R11 R12
      143 MUL                              R13 R9 R4
      144 SUB                              R12 R3 R13
      145 LOADN                            R15 2
      146 GETUPVAL                         R16 2
      147 MUL                              R14 R15 R16
      148 MUL                              R13 R14 R8
      149 DIV                              R11 R12 R13
      150 SUB                              R12 R4 R11
      151 MUL                              R15 R9 R1
      152 FASTCALL1                        MATH_EXP R15 ; [+1]
      153 GETUPVAL                         R14 3
      154 CALL                             R14 1 1
      155 MUL                              R13 R12 R14
      156 MUL                              R16 R10 R1
      157 FASTCALL1                        MATH_EXP R16 ; [+1]
      158 GETUPVAL                         R15 3
      159 CALL                             R15 1 1
      160 MUL                              R14 R11 R15
      161 ADD                              R15 R13 R14
      162 GETUPVAL                         R16 0
      163 ADD                              R6 R15 R16
      164 MUL                              R15 R9 R13
      165 MUL                              R16 R10 R14
      166 ADD                              R7 R15 R16
      167 GETUPVAL                         R10 7
      168 SUB                              R9 R6 R10
      169 FASTCALL1                        MATH_ABS R9 ; [+1]
      170 GETUPVAL                         R8 8
      171 CALL                             R8 1 1
      172 FASTCALL1                        MATH_ABS R7 ; [+2]
      173 MOVE                             R10 R7
      174 GETUPVAL                         R9 8
      175 CALL                             R9 1 1
      176 LOADB                            R10 0
      177 GETUPVAL                         R11 9
      178 JUMPIFNOTLT                      R9 R11 ; [+6]
      180 GETUPVAL                         R11 10
      181 JUMPIFLT                         R8 R11 ; [+2]
      183 LOADB                            R10 0 +1
      184 LOADB                            R10 1
      185 JUMPIFNOT                        R10 ; [+2]
      186 GETUPVAL                         R6 7
      187 LOADN                            R7 0
      188 DUPTABLE                         R11 K8 [{"value", "velocity", "complete"}]
      189 SETTABLEKS                       R6 R11 K0 ["value"]
      191 SETTABLEKS                       R7 R11 K2 ["velocity"]
      193 SETTABLEKS                       R10 R11 K7 ["complete"]
      195 RETURN                           R11 1

PROTO_2:
        0 DUPTABLE                         R2 K4 [{"dampingRatio", "frequency", "restingVelocityLimit", "restingPositionLimit"}]
        1 LOADN                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["dampingRatio"]
        4 LOADN                            R3 1
        5 SETTABLEKS                       R3 R2 K1 ["frequency"]
        7 LOADK                            R3 K5 [0.001]
        8 SETTABLEKS                       R3 R2 K2 ["restingVelocityLimit"]
       10 LOADK                            R3 K6 [0.01]
       11 SETTABLEKS                       R3 R2 K3 ["restingPositionLimit"]
       13 JUMPIFEQKNIL                     R1 ; [+5]
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R2
       17 MOVE                             R5 R1
       18 CALL                             R3 2 0
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 GETTABLEKS                       R5 R2 K2 ["restingVelocityLimit"]
       23 GETTABLEKS                       R6 R2 K3 ["restingPositionLimit"]
       25 GETTABLEKS                       R7 R2 K7 ["damping"]
       27 GETTABLEKS                       R8 R2 K8 ["stiffness"]
       29 GETTABLEKS                       R9 R2 K9 ["mass"]
       31 FASTCALL1                        TYPEOF R7 ; [+3]
       32 MOVE                             R11 R7
       33 GETIMPORT                        R10 K11 [typeof]
       35 CALL                             R10 1 1
       36 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+32]
       38 FASTCALL1                        TYPEOF R8 ; [+3]
       39 MOVE                             R11 R8
       40 GETIMPORT                        R10 K11 [typeof]
       42 CALL                             R10 1 1
       43 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+25]
       45 FASTCALL1                        TYPEOF R9 ; [+3]
       46 MOVE                             R11 R9
       47 GETIMPORT                        R10 K11 [typeof]
       49 CALL                             R10 1 1
       50 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+18]
       52 MUL                              R15 R9 R8
       53 FASTCALL1                        MATH_SQRT R15 ; [+1]
       54 GETUPVAL                         R14 1
       55 CALL                             R14 1 1
       56 MULK                             R13 R14 K13 [2]
       57 DIV                              R12 R7 R13
       58 DIV                              R16 R8 R9
       59 FASTCALL1                        MATH_SQRT R16 ; [+1]
       60 GETUPVAL                         R15 1
       61 CALL                             R15 1 1
       62 DIVK                             R14 R15 K13 [2]
       63 DIVK                             R13 R14 K14 [3.14159265358979]
       64 MOVE                             R10 R12
       65 MOVE                             R11 R13
       66 MOVE                             R3 R10
       67 MOVE                             R4 R11
       68 JUMP                             ; [+4]
       69 GETTABLEKS                       R3 R2 K0 ["dampingRatio"]
       71 GETTABLEKS                       R4 R2 K1 ["frequency"]
       73 MOVE                             R10 R3
       74 MULK                             R12 R4 K13 [2]
       75 MULK                             R11 R12 K14 [3.14159265358979]
       76 LOADN                            R14 0
       77 JUMPIFLE                         R14 R5 ; [+2]
       79 LOADB                            R13 0 +1
       80 LOADB                            R13 1
       81 FASTCALL2K                       ASSERT R13 K15 ; [+4]
       83 LOADK                            R14 K15 ["Expected restingVelocityLimit >= 0"]
       84 GETIMPORT                        R12 K17 [assert]
       86 CALL                             R12 2 0
       87 LOADN                            R14 0
       88 JUMPIFLE                         R14 R6 ; [+2]
       90 LOADB                            R13 0 +1
       91 LOADB                            R13 1
       92 FASTCALL2K                       ASSERT R13 K18 ; [+4]
       94 LOADK                            R14 K18 ["Expected restingPositionLimit >= 0"]
       95 GETIMPORT                        R12 K17 [assert]
       97 CALL                             R12 2 0
       98 NEWCLOSURE                       R12 P0
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          UPVAL U1
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U5
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 DUPTABLE                         R13 K20 [{"step"}]
      111 SETTABLEKS                       R12 R13 K19 ["step"]
      113 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Collections"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["Object"]
       14 GETTABLEKS                       R1 R1 K7 ["assign"]
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K11 [math.abs]
       27 GETIMPORT                        R4 K13 [math.exp]
       29 GETIMPORT                        R5 K15 [math.sin]
       31 GETIMPORT                        R6 K17 [math.cos]
       33 GETIMPORT                        R7 K19 [math.sqrt]
       35 DUPCLOSURE                       R8 K20 [PROTO_0]
       36 CAPTURE                          VAL R7
       37 DUPCLOSURE                       R9 K21 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 RETURN                           R9 1
