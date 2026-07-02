PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["__dampingRatio"]
        2 GETTABLEKS                       R6 R0 K3 ["__frequency"]
        4 MULK                             R5 R6 K2 [2]
        5 MULK                             R4 R5 K1 [3.14159265358979]
        6 GETTABLEKS                       R5 R0 K4 ["__goalPosition"]
        8 GETTABLEKS                       R6 R0 K5 ["__restingVelocityLimit"]
       10 GETTABLEKS                       R7 R0 K6 ["__restingPositionLimit"]
       12 GETTABLEKS                       R8 R1 K7 ["value"]
       14 GETTABLEKS                       R10 R1 K9 ["velocity"]
       16 ORK                              R9 R10 K8 [0]
       17 SUB                              R10 R8 R5
       18 MINUS                            R14 R2
       19 MUL                              R13 R14 R3
       20 MUL                              R12 R13 R4
       21 FASTCALL1                        MATH_EXP R12 ; [+1]
       22 GETUPVAL                         R11 0
       23 CALL                             R11 1 1
       24 LOADNIL                          R12
       25 LOADNIL                          R13
       26 JUMPIFNOTEQKN                    R3 K10 [1] ; [+15]
       28 MUL                              R16 R9 R2
       29 MUL                              R19 R4 R2
       30 ADDK                             R18 R19 K10 [1]
       31 MUL                              R17 R10 R18
       32 ADD                              R15 R16 R17
       33 MUL                              R14 R15 R11
       34 ADD                              R12 R14 R5
       35 MUL                              R16 R4 R2
       36 MUL                              R18 R10 R4
       37 ADD                              R17 R18 R9
       38 MUL                              R15 R16 R17
       39 SUB                              R14 R9 R15
       40 MUL                              R13 R14 R11
       41 JUMP                             ; [+108]
       42 LOADN                            R14 1
       43 JUMPIFNOTLT                      R3 R14 ; [+73]
       45 MUL                              R16 R3 R3
       46 SUBRK                            R15 K10 [1] R16
       47 FASTCALL1                        MATH_SQRT R15 ; [+1]
       48 GETUPVAL                         R14 1
       49 CALL                             R14 1 1
       50 MUL                              R17 R4 R14
       51 MUL                              R16 R17 R2
       52 FASTCALL1                        MATH_COS R16 ; [+1]
       53 GETUPVAL                         R15 2
       54 CALL                             R15 1 1
       55 MUL                              R18 R4 R14
       56 MUL                              R17 R18 R2
       57 FASTCALL1                        MATH_SIN R17 ; [+1]
       58 GETUPVAL                         R16 3
       59 CALL                             R16 1 1
       60 LOADNIL                          R17
       61 LOADK                            R18 K11 [0.0001]
       62 JUMPIFNOTLT                      R18 R14 ; [+3]
       64 DIV                              R17 R16 R14
       65 JUMP                             ; [+14]
       66 MUL                              R18 R2 R4
       67 MUL                              R25 R18 R18
       68 MUL                              R26 R14 R14
       69 MUL                              R24 R25 R26
       70 MUL                              R25 R14 R14
       71 MUL                              R23 R24 R25
       72 DIVK                             R22 R23 K13 [20]
       73 MUL                              R23 R14 R14
       74 SUB                              R21 R22 R23
       75 MUL                              R23 R18 R18
       76 MUL                              R22 R23 R18
       77 MUL                              R20 R21 R22
       78 DIVK                             R19 R20 K12 [6]
       79 ADD                              R17 R18 R19
       80 LOADNIL                          R18
       81 MUL                              R19 R4 R14
       82 LOADK                            R20 K11 [0.0001]
       83 JUMPIFNOTLT                      R20 R19 ; [+4]
       85 MUL                              R19 R4 R14
       86 DIV                              R18 R16 R19
       87 JUMP                             ; [+14]
       88 MUL                              R19 R4 R14
       89 MUL                              R26 R2 R2
       90 MUL                              R27 R19 R19
       91 MUL                              R25 R26 R27
       92 MUL                              R26 R19 R19
       93 MUL                              R24 R25 R26
       94 DIVK                             R23 R24 K13 [20]
       95 MUL                              R24 R19 R19
       96 SUB                              R22 R23 R24
       97 MUL                              R24 R2 R2
       98 MUL                              R23 R24 R2
       99 MUL                              R21 R22 R23
      100 DIVK                             R20 R21 K12 [6]
      101 ADD                              R18 R2 R20
      102 MUL                              R23 R3 R17
      103 ADD                              R22 R15 R23
      104 MUL                              R21 R10 R22
      105 MUL                              R22 R9 R18
      106 ADD                              R20 R21 R22
      107 MUL                              R19 R20 R11
      108 ADD                              R12 R19 R5
      109 MUL                              R22 R17 R3
      110 SUB                              R21 R15 R22
      111 MUL                              R20 R9 R21
      112 MUL                              R22 R17 R4
      113 MUL                              R21 R10 R22
      114 SUB                              R19 R20 R21
      115 MUL                              R13 R19 R11
      116 JUMP                             ; [+33]
      117 MUL                              R16 R3 R3
      118 SUBK                             R15 R16 K10 [1]
      119 FASTCALL1                        MATH_SQRT R15 ; [+1]
      120 GETUPVAL                         R14 1
      121 CALL                             R14 1 1
      122 MINUS                            R16 R4
      123 SUB                              R17 R3 R14
      124 MUL                              R15 R16 R17
      125 MINUS                            R17 R4
      126 ADD                              R18 R3 R14
      127 MUL                              R16 R17 R18
      128 MUL                              R19 R15 R10
      129 SUB                              R18 R9 R19
      130 LOADN                            R21 2
      131 MUL                              R20 R21 R4
      132 MUL                              R19 R20 R14
      133 DIV                              R17 R18 R19
      134 SUB                              R18 R10 R17
      135 MUL                              R21 R15 R2
      136 FASTCALL1                        MATH_EXP R21 ; [+1]
      137 GETUPVAL                         R20 0
      138 CALL                             R20 1 1
      139 MUL                              R19 R18 R20
      140 MUL                              R22 R16 R2
      141 FASTCALL1                        MATH_EXP R22 ; [+1]
      142 GETUPVAL                         R21 0
      143 CALL                             R21 1 1
      144 MUL                              R20 R17 R21
      145 ADD                              R21 R19 R20
      146 ADD                              R12 R21 R5
      147 MUL                              R21 R15 R19
      148 MUL                              R22 R16 R20
      149 ADD                              R13 R21 R22
      150 GETTABLEKS                       R16 R0 K4 ["__goalPosition"]
      152 SUB                              R15 R12 R16
      153 FASTCALL1                        MATH_ABS R15 ; [+1]
      154 GETUPVAL                         R14 4
      155 CALL                             R14 1 1
      156 FASTCALL1                        MATH_ABS R13 ; [+2]
      157 MOVE                             R16 R13
      158 GETUPVAL                         R15 4
      159 CALL                             R15 1 1
      160 LOADB                            R16 0
      161 JUMPIFNOTLT                      R15 R6 ; [+5]
      163 JUMPIFLT                         R14 R7 ; [+2]
      165 LOADB                            R16 0 +1
      166 LOADB                            R16 1
      167 JUMPIFNOT                        R16 ; [+3]
      168 GETTABLEKS                       R12 R0 K4 ["__goalPosition"]
      170 LOADN                            R13 0
      171 DUPTABLE                         R17 K15 [{"value", "velocity", "complete"}]
      172 SETTABLEKS                       R12 R17 K7 ["value"]
      174 SETTABLEKS                       R13 R17 K9 ["velocity"]
      176 SETTABLEKS                       R16 R17 K14 ["complete"]
      178 RETURN                           R17 1

PROTO_1:
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

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 DUPTABLE                         R2 K12 [{["dampingRatio"] = 1, ["frequency"] = 1, ["restingVelocityLimit"] = 0.001, ["restingPositionLimit"] = 0.01}]
       14 JUMPIFEQKNIL                     R1 ; [+18]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K1 [typeof]
       20 CALL                             R5 1 1
       21 JUMPIFEQKS                       R5 K13 ["table"] ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 FASTCALL1                        ASSERT R4 ; [+2]
       26 GETIMPORT                        R3 K4 [assert]
       28 CALL                             R3 1 0
       29 GETUPVAL                         R3 0
       30 MOVE                             R4 R2
       31 MOVE                             R5 R1
       32 CALL                             R3 2 0
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 GETTABLEKS                       R5 R2 K8 ["restingVelocityLimit"]
       37 GETTABLEKS                       R6 R2 K10 ["restingPositionLimit"]
       39 GETTABLEKS                       R7 R2 K14 ["damping"]
       41 GETTABLEKS                       R8 R2 K15 ["stiffness"]
       43 GETTABLEKS                       R9 R2 K16 ["mass"]
       45 FASTCALL1                        TYPEOF R7 ; [+3]
       46 MOVE                             R11 R7
       47 GETIMPORT                        R10 K1 [typeof]
       49 CALL                             R10 1 1
       50 JUMPIFNOTEQKS                    R10 K2 ["number"] ; [+32]
       52 FASTCALL1                        TYPEOF R8 ; [+3]
       53 MOVE                             R11 R8
       54 GETIMPORT                        R10 K1 [typeof]
       56 CALL                             R10 1 1
       57 JUMPIFNOTEQKS                    R10 K2 ["number"] ; [+25]
       59 FASTCALL1                        TYPEOF R9 ; [+3]
       60 MOVE                             R11 R9
       61 GETIMPORT                        R10 K1 [typeof]
       63 CALL                             R10 1 1
       64 JUMPIFNOTEQKS                    R10 K2 ["number"] ; [+18]
       66 MUL                              R15 R9 R8
       67 FASTCALL1                        MATH_SQRT R15 ; [+1]
       68 GETUPVAL                         R14 1
       69 CALL                             R14 1 1
       70 MULK                             R13 R14 K17 [2]
       71 DIV                              R12 R7 R13
       72 DIV                              R16 R8 R9
       73 FASTCALL1                        MATH_SQRT R16 ; [+1]
       74 GETUPVAL                         R15 1
       75 CALL                             R15 1 1
       76 DIVK                             R14 R15 K17 [2]
       77 DIVK                             R13 R14 K18 [3.14159265358979]
       78 MOVE                             R10 R12
       79 MOVE                             R11 R13
       80 MOVE                             R3 R10
       81 MOVE                             R4 R11
       82 JUMP                             ; [+4]
       83 GETTABLEKS                       R3 R2 K5 ["dampingRatio"]
       85 GETTABLEKS                       R4 R2 K7 ["frequency"]
       87 FASTCALL1                        TYPEOF R3 ; [+3]
       88 MOVE                             R13 R3
       89 GETIMPORT                        R12 K1 [typeof]
       91 CALL                             R12 1 1
       92 JUMPIFEQKS                       R12 K2 ["number"] ; [+2]
       94 LOADB                            R11 0 +1
       95 LOADB                            R11 1
       96 FASTCALL1                        ASSERT R11 ; [+2]
       97 GETIMPORT                        R10 K4 [assert]
       99 CALL                             R10 1 0
      100 FASTCALL1                        TYPEOF R4 ; [+3]
      101 MOVE                             R13 R4
      102 GETIMPORT                        R12 K1 [typeof]
      104 CALL                             R12 1 1
      105 JUMPIFEQKS                       R12 K2 ["number"] ; [+2]
      107 LOADB                            R11 0 +1
      108 LOADB                            R11 1
      109 FASTCALL1                        ASSERT R11 ; [+2]
      110 GETIMPORT                        R10 K4 [assert]
      112 CALL                             R10 1 0
      113 FASTCALL1                        TYPEOF R5 ; [+3]
      114 MOVE                             R13 R5
      115 GETIMPORT                        R12 K1 [typeof]
      117 CALL                             R12 1 1
      118 JUMPIFEQKS                       R12 K2 ["number"] ; [+2]
      120 LOADB                            R11 0 +1
      121 LOADB                            R11 1
      122 FASTCALL1                        ASSERT R11 ; [+2]
      123 GETIMPORT                        R10 K4 [assert]
      125 CALL                             R10 1 0
      126 FASTCALL1                        TYPEOF R6 ; [+3]
      127 MOVE                             R13 R6
      128 GETIMPORT                        R12 K1 [typeof]
      130 CALL                             R12 1 1
      131 JUMPIFEQKS                       R12 K2 ["number"] ; [+2]
      133 LOADB                            R11 0 +1
      134 LOADB                            R11 1
      135 FASTCALL1                        ASSERT R11 ; [+2]
      136 GETIMPORT                        R10 K4 [assert]
      138 CALL                             R10 1 0
      139 LOADN                            R12 0
      140 JUMPIFLE                         R12 R5 ; [+2]
      142 LOADB                            R11 0 +1
      143 LOADB                            R11 1
      144 FASTCALL2K                       ASSERT R11 K19 ; [+4]
      146 LOADK                            R12 K19 ["Expected restingVelocityLimit >= 0"]
      147 GETIMPORT                        R10 K4 [assert]
      149 CALL                             R10 2 0
      150 LOADN                            R12 0
      151 JUMPIFLE                         R12 R6 ; [+2]
      153 LOADB                            R11 0 +1
      154 LOADB                            R11 1
      155 FASTCALL2K                       ASSERT R11 K20 ; [+4]
      157 LOADK                            R12 K20 ["Expected restingPositionLimit >= 0"]
      158 GETIMPORT                        R10 K4 [assert]
      160 CALL                             R10 2 0
      161 DUPTABLE                         R10 K27 [{"__dampingRatio", "__frequency", "__restingVelocityLimit", "__restingPositionLimit", "__goalPosition", "step"}]
      162 SETTABLEKS                       R3 R10 K21 ["__dampingRatio"]
      164 SETTABLEKS                       R4 R10 K22 ["__frequency"]
      166 SETTABLEKS                       R5 R10 K23 ["__restingVelocityLimit"]
      168 SETTABLEKS                       R6 R10 K24 ["__restingPositionLimit"]
      170 SETTABLEKS                       R0 R10 K25 ["__goalPosition"]
      172 GETUPVAL                         R11 2
      173 SETTABLEKS                       R11 R10 K26 ["step"]
      175 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["assign"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K8 [math.abs]
       12 GETIMPORT                        R2 K10 [math.exp]
       14 GETIMPORT                        R3 K12 [math.sin]
       16 GETIMPORT                        R4 K14 [math.cos]
       18 GETIMPORT                        R5 K16 [math.sqrt]
       20 DUPCLOSURE                       R6 K17 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 DUPCLOSURE                       R7 K18 [PROTO_1]
       27 CAPTURE                          VAL R5
       28 DUPCLOSURE                       R8 K19 [PROTO_2]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R6
       32 RETURN                           R8 1
