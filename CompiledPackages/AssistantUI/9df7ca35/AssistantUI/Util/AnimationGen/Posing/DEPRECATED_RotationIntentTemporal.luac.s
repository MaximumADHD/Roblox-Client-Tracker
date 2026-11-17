PROTO_0:
        0 SUB                              R4 R0 R1
        1 DIV                              R3 R4 R2
        2 MULK                             R6 R3 K0 [-0.5]
        3 MUL                              R5 R6 R3
        4 FASTCALL1                        MATH_EXP R5 ; [+2]
        5 GETIMPORT                        R4 K3 [math.exp]
        7 CALL                             R4 1 1
        8 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R2 0 3
        2 NEWTABLE                         R3 0 3
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 LOADN                            R6 0
        7 SETLIST                          R3 R4 3 [1]
        9 NEWTABLE                         R4 0 3
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 SETLIST                          R4 R5 3 [1]
       16 NEWTABLE                         R5 0 3
       18 LOADN                            R6 0
       19 LOADN                            R7 0
       20 LOADN                            R8 0
       21 SETLIST                          R5 R6 3 [1]
       23 SETLIST                          R2 R3 3 [1]
       25 LOADN                            R5 1
       26 LOADN                            R3 3
       27 LOADN                            R4 1
       28 FORNPREP                         R3
       29 LOADN                            R8 1
       30 LOADN                            R6 3
       31 LOADN                            R7 1
       32 FORNPREP                         R6
       33 GETTABLE                         R9 R2 R5
       34 GETTABLE                         R14 R0 R5
       35 GETTABLEN                        R13 R14 1
       36 GETTABLEN                        R15 R1 1
       37 GETTABLE                         R14 R15 R8
       38 MUL                              R12 R13 R14
       39 GETTABLE                         R15 R0 R5
       40 GETTABLEN                        R14 R15 2
       41 GETTABLEN                        R16 R1 2
       42 GETTABLE                         R15 R16 R8
       43 MUL                              R13 R14 R15
       44 ADD                              R11 R12 R13
       45 GETTABLE                         R14 R0 R5
       46 GETTABLEN                        R13 R14 3
       47 GETTABLEN                        R15 R1 3
       48 GETTABLE                         R14 R15 R8
       49 MUL                              R12 R13 R14
       50 ADD                              R10 R11 R12
       51 SETTABLE                         R10 R9 R8
       52 FORNLOOP                         R6
       53 FORNLOOP                         R3
       54 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 3
        2 NEWTABLE                         R2 0 3
        4 GETTABLEN                        R4 R0 1
        5 GETTABLEN                        R3 R4 1
        6 GETTABLEN                        R5 R0 2
        7 GETTABLEN                        R4 R5 1
        8 GETTABLEN                        R6 R0 3
        9 GETTABLEN                        R5 R6 1
       10 SETLIST                          R2 R3 3 [1]
       12 NEWTABLE                         R3 0 3
       14 GETTABLEN                        R5 R0 1
       15 GETTABLEN                        R4 R5 2
       16 GETTABLEN                        R6 R0 2
       17 GETTABLEN                        R5 R6 2
       18 GETTABLEN                        R7 R0 3
       19 GETTABLEN                        R6 R7 2
       20 SETLIST                          R3 R4 3 [1]
       22 NEWTABLE                         R4 0 3
       24 GETTABLEN                        R6 R0 1
       25 GETTABLEN                        R5 R6 3
       26 GETTABLEN                        R7 R0 2
       27 GETTABLEN                        R6 R7 3
       28 GETTABLEN                        R8 R0 3
       29 GETTABLEN                        R7 R8 3
       30 SETLIST                          R4 R5 3 [1]
       32 SETLIST                          R1 R2 3 [1]
       34 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 3
        2 NEWTABLE                         R2 0 3
        4 GETTABLEN                        R4 R0 1
        5 GETTABLEN                        R3 R4 1
        6 GETTABLEN                        R5 R0 1
        7 GETTABLEN                        R4 R5 2
        8 GETTABLEN                        R6 R0 1
        9 GETTABLEN                        R5 R6 3
       10 SETLIST                          R2 R3 3 [1]
       12 NEWTABLE                         R3 0 3
       14 GETTABLEN                        R5 R0 2
       15 GETTABLEN                        R4 R5 1
       16 GETTABLEN                        R6 R0 2
       17 GETTABLEN                        R5 R6 2
       18 GETTABLEN                        R7 R0 2
       19 GETTABLEN                        R6 R7 3
       20 SETLIST                          R3 R4 3 [1]
       22 NEWTABLE                         R4 0 3
       24 GETTABLEN                        R6 R0 3
       25 GETTABLEN                        R5 R6 1
       26 GETTABLEN                        R7 R0 3
       27 GETTABLEN                        R6 R7 2
       28 GETTABLEN                        R8 R0 3
       29 GETTABLEN                        R7 R8 3
       30 SETLIST                          R4 R5 3 [1]
       32 SETLIST                          R1 R2 3 [1]
       34 RETURN                           R1 1

PROTO_4:
        0 GETTABLEN                        R4 R0 1
        1 GETTABLEN                        R1 R4 1
        2 GETTABLEN                        R4 R0 1
        3 GETTABLEN                        R2 R4 2
        4 GETTABLEN                        R4 R0 1
        5 GETTABLEN                        R3 R4 3
        6 GETTABLEN                        R7 R0 2
        7 GETTABLEN                        R4 R7 1
        8 GETTABLEN                        R7 R0 2
        9 GETTABLEN                        R5 R7 2
       10 GETTABLEN                        R7 R0 2
       11 GETTABLEN                        R6 R7 3
       12 GETTABLEN                        R10 R0 3
       13 GETTABLEN                        R7 R10 1
       14 GETTABLEN                        R10 R0 3
       15 GETTABLEN                        R8 R10 2
       16 GETTABLEN                        R10 R0 3
       17 GETTABLEN                        R9 R10 3
       18 ADD                              R13 R1 R5
       19 ADD                              R12 R13 R9
       20 SUBK                             R11 R12 K1 [1]
       21 MULK                             R10 R11 K0 [0.5]
       22 LOADN                            R11 1
       23 JUMPIFNOTLT                      R11 R10 ; [+3]
       25 LOADN                            R10 1
       26 JUMP                             ; [+4]
       27 LOADN                            R11 -1
       28 JUMPIFNOTLT                      R10 R11 ; [+2]
       30 LOADN                            R10 -1
       31 FASTCALL1                        MATH_ACOS R10 ; [+3]
       32 MOVE                             R12 R10
       33 GETIMPORT                        R11 K4 [math.acos]
       35 CALL                             R11 1 1
       36 LOADK                            R12 K5 [1E-12]
       37 JUMPIFNOTLT                      R11 R12 ; [+9]
       39 NEWTABLE                         R12 0 3
       41 LOADN                            R13 0
       42 LOADN                            R14 0
       43 LOADN                            R15 0
       44 SETLIST                          R12 R13 3 [1]
       46 RETURN                           R12 1
       47 SUBRK                            R12 K6 [3.141592653589793] R11
       48 LOADK                            R13 K7 [1E-08]
       49 JUMPIFNOTLT                      R12 R13 ; [+128]
       51 ADDK                             R13 R1 K1 [1]
       52 MULK                             R12 R13 K0 [0.5]
       53 ADDK                             R14 R5 K1 [1]
       54 MULK                             R13 R14 K0 [0.5]
       55 ADDK                             R15 R9 K1 [1]
       56 MULK                             R14 R15 K0 [0.5]
       57 ADD                              R16 R2 R4
       58 MULK                             R15 R16 K8 [0.25]
       59 ADD                              R17 R3 R7
       60 MULK                             R16 R17 K8 [0.25]
       61 ADD                              R18 R6 R8
       62 MULK                             R17 R18 K8 [0.25]
       63 LOADNIL                          R18
       64 LOADNIL                          R19
       65 LOADNIL                          R20
       66 JUMPIFNOTLE                      R13 R12 ; [+28]
       68 JUMPIFNOTLE                      R14 R12 ; [+26]
       70 FASTCALL2K                       MATH_MAX R12 K9 ; [+5]
       72 MOVE                             R23 R12
       73 LOADK                            R24 K9 [0]
       74 GETIMPORT                        R22 K11 [math.max]
       76 CALL                             R22 2 1
       77 FASTCALL1                        MATH_SQRT R22 ; [+2]
       78 GETIMPORT                        R21 K13 [math.sqrt]
       80 CALL                             R21 1 1
       81 MOVE                             R18 R21
       82 LOADK                            R21 K14 [1E-15]
       83 JUMPIFNOTLT                      R21 R18 ; [+3]
       85 DIV                              R19 R15 R18
       86 JUMP                             ; [+1]
       87 LOADN                            R19 0
       88 LOADK                            R21 K14 [1E-15]
       89 JUMPIFNOTLT                      R21 R18 ; [+3]
       91 DIV                              R20 R16 R18
       92 JUMP                             ; [+53]
       93 LOADN                            R20 0
       94 JUMP                             ; [+51]
       95 JUMPIFNOTLE                      R14 R13 ; [+26]
       97 FASTCALL2K                       MATH_MAX R13 K9 ; [+5]
       99 MOVE                             R23 R13
      100 LOADK                            R24 K9 [0]
      101 GETIMPORT                        R22 K11 [math.max]
      103 CALL                             R22 2 1
      104 FASTCALL1                        MATH_SQRT R22 ; [+2]
      105 GETIMPORT                        R21 K13 [math.sqrt]
      107 CALL                             R21 1 1
      108 MOVE                             R19 R21
      109 LOADK                            R21 K14 [1E-15]
      110 JUMPIFNOTLT                      R21 R19 ; [+3]
      112 DIV                              R18 R15 R19
      113 JUMP                             ; [+1]
      114 LOADN                            R18 0
      115 LOADK                            R21 K14 [1E-15]
      116 JUMPIFNOTLT                      R21 R19 ; [+3]
      118 DIV                              R20 R17 R19
      119 JUMP                             ; [+26]
      120 LOADN                            R20 0
      121 JUMP                             ; [+24]
      122 FASTCALL2K                       MATH_MAX R14 K9 ; [+5]
      124 MOVE                             R23 R14
      125 LOADK                            R24 K9 [0]
      126 GETIMPORT                        R22 K11 [math.max]
      128 CALL                             R22 2 1
      129 FASTCALL1                        MATH_SQRT R22 ; [+2]
      130 GETIMPORT                        R21 K13 [math.sqrt]
      132 CALL                             R21 1 1
      133 MOVE                             R20 R21
      134 LOADK                            R21 K14 [1E-15]
      135 JUMPIFNOTLT                      R21 R20 ; [+3]
      137 DIV                              R18 R16 R20
      138 JUMP                             ; [+1]
      139 LOADN                            R18 0
      140 LOADK                            R21 K14 [1E-15]
      141 JUMPIFNOTLT                      R21 R20 ; [+3]
      143 DIV                              R19 R17 R20
      144 JUMP                             ; [+1]
      145 LOADN                            R19 0
      146 SUB                              R24 R8 R6
      147 MUL                              R23 R18 R24
      148 SUB                              R25 R3 R7
      149 MUL                              R24 R19 R25
      150 ADD                              R22 R23 R24
      151 SUB                              R24 R4 R2
      152 MUL                              R23 R20 R24
      153 ADD                              R21 R22 R23
      154 LOADN                            R22 0
      155 JUMPIFNOTLT                      R21 R22 ; [+4]
      157 MINUS                            R18 R18
      158 MINUS                            R19 R19
      159 MINUS                            R20 R20
      160 MUL                              R26 R18 R18
      161 MUL                              R27 R19 R19
      162 ADD                              R25 R26 R27
      163 MUL                              R26 R20 R20
      164 ADD                              R24 R25 R26
      165 FASTCALL1                        MATH_SQRT R24 ; [+2]
      166 GETIMPORT                        R23 K13 [math.sqrt]
      168 CALL                             R23 1 1
      169 DIV                              R22 R11 R23
      170 NEWTABLE                         R23 0 3
      172 MUL                              R24 R18 R22
      173 MUL                              R25 R19 R22
      174 MUL                              R26 R20 R22
      175 SETLIST                          R23 R24 3 [1]
      177 RETURN                           R23 1
      178 FASTCALL1                        MATH_SIN R11 ; [+3]
      179 MOVE                             R15 R11
      180 GETIMPORT                        R14 K17 [math.sin]
      182 CALL                             R14 1 1
      183 MULK                             R13 R14 K15 [2]
      184 DIV                              R12 R11 R13
      185 NEWTABLE                         R13 0 3
      187 SUB                              R15 R8 R6
      188 MUL                              R14 R15 R12
      189 SUB                              R16 R3 R7
      190 MUL                              R15 R16 R12
      191 SUB                              R17 R4 R2
      192 MUL                              R16 R17 R12
      193 SETLIST                          R13 R14 3 [1]
      195 RETURN                           R13 1

PROTO_5:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 MUL                              R7 R1 R1
        4 MUL                              R8 R2 R2
        5 ADD                              R6 R7 R8
        6 MUL                              R7 R3 R3
        7 ADD                              R5 R6 R7
        8 FASTCALL1                        MATH_SQRT R5 ; [+2]
        9 GETIMPORT                        R4 K2 [math.sqrt]
       11 CALL                             R4 1 1
       12 LOADK                            R5 K3 [1E-12]
       13 JUMPIFNOTLT                      R4 R5 ; [+27]
       15 NEWTABLE                         R5 0 3
       17 NEWTABLE                         R6 0 3
       19 LOADN                            R7 1
       20 LOADN                            R8 0
       21 LOADN                            R9 0
       22 SETLIST                          R6 R7 3 [1]
       24 NEWTABLE                         R7 0 3
       26 LOADN                            R8 0
       27 LOADN                            R9 1
       28 LOADN                            R10 0
       29 SETLIST                          R7 R8 3 [1]
       31 NEWTABLE                         R8 0 3
       33 LOADN                            R9 0
       34 LOADN                            R10 0
       35 LOADN                            R11 1
       36 SETLIST                          R8 R9 3 [1]
       38 SETLIST                          R5 R6 3 [1]
       40 RETURN                           R5 1
       41 DIV                              R5 R1 R4
       42 DIV                              R6 R2 R4
       43 DIV                              R7 R3 R4
       44 FASTCALL1                        MATH_COS R4 ; [+3]
       45 MOVE                             R9 R4
       46 GETIMPORT                        R8 K5 [math.cos]
       48 CALL                             R8 1 1
       49 FASTCALL1                        MATH_SIN R4 ; [+3]
       50 MOVE                             R10 R4
       51 GETIMPORT                        R9 K7 [math.sin]
       53 CALL                             R9 1 1
       54 SUBRK                            R10 K8 [1] R8
       55 NEWTABLE                         R11 0 3
       57 NEWTABLE                         R12 0 3
       59 MUL                              R15 R10 R5
       60 MUL                              R14 R15 R5
       61 ADD                              R13 R14 R8
       62 MUL                              R16 R10 R5
       63 MUL                              R15 R16 R6
       64 MUL                              R16 R9 R7
       65 SUB                              R14 R15 R16
       66 MUL                              R17 R10 R5
       67 MUL                              R16 R17 R7
       68 MUL                              R17 R9 R6
       69 ADD                              R15 R16 R17
       70 SETLIST                          R12 R13 3 [1]
       72 NEWTABLE                         R13 0 3
       74 MUL                              R16 R10 R5
       75 MUL                              R15 R16 R6
       76 MUL                              R16 R9 R7
       77 ADD                              R14 R15 R16
       78 MUL                              R17 R10 R6
       79 MUL                              R16 R17 R6
       80 ADD                              R15 R16 R8
       81 MUL                              R18 R10 R6
       82 MUL                              R17 R18 R7
       83 MUL                              R18 R9 R5
       84 SUB                              R16 R17 R18
       85 SETLIST                          R13 R14 3 [1]
       87 NEWTABLE                         R14 0 3
       89 MUL                              R17 R10 R5
       90 MUL                              R16 R17 R7
       91 MUL                              R17 R9 R6
       92 SUB                              R15 R16 R17
       93 MUL                              R18 R10 R6
       94 MUL                              R17 R18 R7
       95 MUL                              R18 R9 R5
       96 ADD                              R16 R17 R18
       97 MUL                              R19 R10 R7
       98 MUL                              R18 R19 R7
       99 ADD                              R17 R18 R8
      100 SETLIST                          R14 R15 3 [1]
      102 SETLIST                          R11 R12 3 [1]
      104 RETURN                           R11 1

PROTO_6:
        0 LENGTH                           R2 R0
        1 GETTABLEN                        R4 R1 1
        2 LENGTH                           R3 R4
        3 GETIMPORT                        R4 K2 [table.create]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 LOADN                            R7 1
        8 MOVE                             R5 R2
        9 LOADN                            R6 1
       10 FORNPREP                         R5
       11 GETIMPORT                        R8 K2 [table.create]
       13 ADD                              R9 R2 R3
       14 CALL                             R8 1 1
       15 SETTABLE                         R8 R4 R7
       16 LOADN                            R10 1
       17 MOVE                             R8 R2
       18 LOADN                            R9 1
       19 FORNPREP                         R8
       20 GETTABLE                         R11 R4 R7
       21 GETTABLE                         R13 R0 R7
       22 GETTABLE                         R12 R13 R10
       23 SETTABLE                         R12 R11 R10
       24 FORNLOOP                         R8
       25 LOADN                            R10 1
       26 MOVE                             R8 R3
       27 LOADN                            R9 1
       28 FORNPREP                         R8
       29 GETTABLE                         R11 R4 R7
       30 ADD                              R12 R2 R10
       31 GETTABLE                         R14 R1 R7
       32 GETTABLE                         R13 R14 R10
       33 SETTABLE                         R13 R11 R12
       34 FORNLOOP                         R8
       35 FORNLOOP                         R5
       36 LOADN                            R7 1
       37 MOVE                             R5 R2
       38 LOADN                            R6 1
       39 FORNPREP                         R5
       40 MOVE                             R8 R7
       41 GETTABLE                         R11 R4 R7
       42 GETTABLE                         R10 R11 R7
       43 FASTCALL1                        MATH_ABS R10 ; [+2]
       44 GETIMPORT                        R9 K5 [math.abs]
       46 CALL                             R9 1 1
       47 ADDK                             R12 R7 K6 [1]
       48 MOVE                             R10 R2
       49 LOADN                            R11 1
       50 FORNPREP                         R10
       51 GETTABLE                         R15 R4 R12
       52 GETTABLE                         R14 R15 R7
       53 FASTCALL1                        MATH_ABS R14 ; [+2]
       54 GETIMPORT                        R13 K5 [math.abs]
       56 CALL                             R13 1 1
       57 JUMPIFNOTLT                      R9 R13 ; [+3]
       59 MOVE                             R9 R13
       60 MOVE                             R8 R12
       61 FORNLOOP                         R10
       62 LOADK                            R10 K7 [1E-15]
       63 JUMPIFNOTLT                      R9 R10 ; [+5]
       65 GETIMPORT                        R10 K9 [error]
       67 LOADK                            R11 K10 ["rotation center kernel is singular"]
       68 CALL                             R10 1 0
       69 JUMPIFEQ                         R8 R7 ; [+5]
       71 GETTABLE                         R10 R4 R8
       72 GETTABLE                         R11 R4 R7
       73 SETTABLE                         R10 R4 R7
       74 SETTABLE                         R11 R4 R8
       75 GETTABLE                         R11 R4 R7
       76 GETTABLE                         R10 R11 R7
       77 MOVE                             R13 R7
       78 ADD                              R11 R2 R3
       79 LOADN                            R12 1
       80 FORNPREP                         R11
       81 GETTABLE                         R14 R4 R7
       82 GETTABLE                         R15 R14 R13
       83 DIV                              R15 R15 R10
       84 SETTABLE                         R15 R14 R13
       85 FORNLOOP                         R11
       86 LOADN                            R13 1
       87 MOVE                             R11 R2
       88 LOADN                            R12 1
       89 FORNPREP                         R11
       90 JUMPIFEQ                         R13 R7 ; [+15]
       92 GETTABLE                         R15 R4 R13
       93 GETTABLE                         R14 R15 R7
       94 MOVE                             R17 R7
       95 ADD                              R15 R2 R3
       96 LOADN                            R16 1
       97 FORNPREP                         R15
       98 GETTABLE                         R18 R4 R13
       99 GETTABLE                         R19 R18 R17
      100 GETTABLE                         R22 R4 R7
      101 GETTABLE                         R21 R22 R17
      102 MUL                              R20 R14 R21
      103 SUB                              R19 R19 R20
      104 SETTABLE                         R19 R18 R17
      105 FORNLOOP                         R15
      106 FORNLOOP                         R11
      107 FORNLOOP                         R5
      108 GETIMPORT                        R5 K2 [table.create]
      110 MOVE                             R6 R2
      111 CALL                             R5 1 1
      112 LOADN                            R8 1
      113 MOVE                             R6 R2
      114 LOADN                            R7 1
      115 FORNPREP                         R6
      116 GETIMPORT                        R9 K2 [table.create]
      118 MOVE                             R10 R3
      119 CALL                             R9 1 1
      120 SETTABLE                         R9 R5 R8
      121 LOADN                            R11 1
      122 MOVE                             R9 R3
      123 LOADN                            R10 1
      124 FORNPREP                         R9
      125 GETTABLE                         R12 R5 R8
      126 GETTABLE                         R14 R4 R8
      127 ADD                              R15 R2 R11
      128 GETTABLE                         R13 R14 R15
      129 SETTABLE                         R13 R12 R11
      130 FORNLOOP                         R9
      131 FORNLOOP                         R6
      132 RETURN                           R5 1

PROTO_7:
        0 LENGTH                           R1 R0
        1 GETIMPORT                        R2 K2 [table.create]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 LOADN                            R5 1
        6 MOVE                             R3 R1
        7 LOADN                            R4 1
        8 FORNPREP                         R3
        9 GETIMPORT                        R6 K2 [table.create]
       11 MOVE                             R7 R1
       12 CALL                             R6 1 1
       13 SETTABLE                         R6 R2 R5
       14 LOADN                            R8 1
       15 MOVE                             R6 R1
       16 LOADN                            R7 1
       17 FORNPREP                         R6
       18 GETTABLE                         R9 R2 R5
       19 GETTABLE                         R11 R0 R5
       20 GETTABLE                         R10 R11 R8
       21 SETTABLE                         R10 R9 R8
       22 FORNLOOP                         R6
       23 FORNLOOP                         R3
       24 MULK                             R3 R1 K3 [30]
       25 LOADN                            R6 1
       26 MOVE                             R4 R3
       27 LOADN                            R5 1
       28 FORNPREP                         R4
       29 LOADN                            R7 1
       30 LOADN                            R8 2
       31 LOADN                            R9 0
       32 LOADN                            R12 1
       33 MOVE                             R10 R1
       34 LOADN                            R11 1
       35 FORNPREP                         R10
       36 ADDK                             R15 R12 K4 [1]
       37 MOVE                             R13 R1
       38 LOADN                            R14 1
       39 FORNPREP                         R13
       40 GETTABLE                         R18 R2 R12
       41 GETTABLE                         R17 R18 R15
       42 FASTCALL1                        MATH_ABS R17 ; [+2]
       43 GETIMPORT                        R16 K7 [math.abs]
       45 CALL                             R16 1 1
       46 JUMPIFNOTLT                      R9 R16 ; [+4]
       48 MOVE                             R9 R16
       49 MOVE                             R7 R12
       50 MOVE                             R8 R15
       51 FORNLOOP                         R13
       52 FORNLOOP                         R10
       53 LOADK                            R10 K8 [1E-15]
       54 JUMPIFLT                         R9 R10 ; [+85]
       56 GETTABLE                         R11 R2 R7
       57 GETTABLE                         R10 R11 R7
       58 GETTABLE                         R12 R2 R8
       59 GETTABLE                         R11 R12 R8
       60 GETTABLE                         R13 R2 R7
       61 GETTABLE                         R12 R13 R8
       62 SUB                              R14 R11 R10
       63 MULK                             R15 R12 K9 [2]
       64 DIV                              R13 R14 R15
       65 LOADN                            R15 0
       66 JUMPIFNOTLE                      R15 R13 ; [+10]
       68 MUL                              R18 R13 R13
       69 ADDK                             R17 R18 K4 [1]
       70 FASTCALL1                        MATH_SQRT R17 ; [+2]
       71 GETIMPORT                        R16 K11 [math.sqrt]
       73 CALL                             R16 1 1
       74 ADD                              R15 R13 R16
       75 DIVRK                            R14 K4 [1] R15
       76 JUMP                             ; [+9]
       77 MINUS                            R16 R13
       78 MUL                              R19 R13 R13
       79 ADDK                             R18 R19 K4 [1]
       80 FASTCALL1                        MATH_SQRT R18 ; [+2]
       81 GETIMPORT                        R17 K11 [math.sqrt]
       83 CALL                             R17 1 1
       84 ADD                              R15 R16 R17
       85 DIVRK                            R14 K12 [-1] R15
       86 MUL                              R18 R14 R14
       87 ADDK                             R17 R18 K4 [1]
       88 FASTCALL1                        MATH_SQRT R17 ; [+2]
       89 GETIMPORT                        R16 K11 [math.sqrt]
       91 CALL                             R16 1 1
       92 DIVRK                            R15 K4 [1] R16
       93 MUL                              R16 R14 R15
       94 GETTABLE                         R17 R2 R7
       95 MUL                              R19 R14 R12
       96 SUB                              R18 R10 R19
       97 SETTABLE                         R18 R17 R7
       98 GETTABLE                         R17 R2 R8
       99 MUL                              R19 R14 R12
      100 ADD                              R18 R11 R19
      101 SETTABLE                         R18 R17 R8
      102 GETTABLE                         R17 R2 R7
      103 LOADN                            R18 0
      104 SETTABLE                         R18 R17 R8
      105 GETTABLE                         R17 R2 R8
      106 LOADN                            R18 0
      107 SETTABLE                         R18 R17 R7
      108 LOADN                            R19 1
      109 MOVE                             R17 R1
      110 LOADN                            R18 1
      111 FORNPREP                         R17
      112 JUMPIFEQ                         R19 R7 ; [+25]
      114 JUMPIFEQ                         R19 R8 ; [+23]
      116 GETTABLE                         R21 R2 R19
      117 GETTABLE                         R20 R21 R7
      118 GETTABLE                         R22 R2 R19
      119 GETTABLE                         R21 R22 R8
      120 GETTABLE                         R22 R2 R19
      121 MUL                              R24 R15 R20
      122 MUL                              R25 R16 R21
      123 SUB                              R23 R24 R25
      124 SETTABLE                         R23 R22 R7
      125 GETTABLE                         R22 R2 R7
      126 GETTABLE                         R24 R2 R19
      127 GETTABLE                         R23 R24 R7
      128 SETTABLE                         R23 R22 R19
      129 GETTABLE                         R22 R2 R19
      130 MUL                              R24 R16 R20
      131 MUL                              R25 R15 R21
      132 ADD                              R23 R24 R25
      133 SETTABLE                         R23 R22 R8
      134 GETTABLE                         R22 R2 R8
      135 GETTABLE                         R24 R2 R19
      136 GETTABLE                         R23 R24 R8
      137 SETTABLE                         R23 R22 R19
      138 FORNLOOP                         R17
      139 FORNLOOP                         R4
      140 GETIMPORT                        R4 K2 [table.create]
      142 MOVE                             R5 R1
      143 CALL                             R4 1 1
      144 LOADN                            R7 1
      145 MOVE                             R5 R1
      146 LOADN                            R6 1
      147 FORNPREP                         R5
      148 GETTABLE                         R9 R2 R7
      149 GETTABLE                         R8 R9 R7
      150 SETTABLE                         R8 R4 R7
      151 FORNLOOP                         R5
      152 RETURN                           R4 1

PROTO_8:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADK                            R2 K1 [Infinity]
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKN                    R1 K2 [1] ; [+14]
        7 GETTABLEN                        R4 R0 1
        8 GETTABLEN                        R3 R4 1
        9 FASTCALL1                        MATH_ABS R3 ; [+2]
       10 GETIMPORT                        R2 K5 [math.abs]
       12 CALL                             R2 1 1
       13 LOADK                            R3 K6 [1E-15]
       14 JUMPIFNOTLT                      R2 R3 ; [+3]
       16 LOADK                            R3 K1 [Infinity]
       17 RETURN                           R3 1
       18 LOADN                            R3 1
       19 RETURN                           R3 1
       20 JUMPIFNOTEQKN                    R1 K7 [2] ; [+67]
       22 GETTABLEN                        R4 R0 1
       23 GETTABLEN                        R2 R4 1
       24 GETTABLEN                        R4 R0 1
       25 GETTABLEN                        R3 R4 2
       26 GETTABLEN                        R6 R0 2
       27 GETTABLEN                        R4 R6 1
       28 GETTABLEN                        R6 R0 2
       29 GETTABLEN                        R5 R6 2
       30 MUL                              R7 R2 R2
       31 MUL                              R8 R4 R4
       32 ADD                              R6 R7 R8
       33 MUL                              R8 R2 R3
       34 MUL                              R9 R4 R5
       35 ADD                              R7 R8 R9
       36 MUL                              R9 R3 R3
       37 MUL                              R10 R5 R5
       38 ADD                              R8 R9 R10
       39 ADD                              R10 R6 R8
       40 MULK                             R9 R10 K8 [0.5]
       41 MUL                              R11 R6 R8
       42 MUL                              R12 R7 R7
       43 SUB                              R10 R11 R12
       44 MUL                              R13 R9 R9
       45 SUB                              R12 R13 R10
       46 FASTCALL2K                       MATH_MAX R12 K0 ; [+4]
       48 LOADK                            R13 K0 [0]
       49 GETIMPORT                        R11 K10 [math.max]
       51 CALL                             R11 2 1
       52 FASTCALL1                        MATH_SQRT R11 ; [+3]
       53 MOVE                             R13 R11
       54 GETIMPORT                        R12 K12 [math.sqrt]
       56 CALL                             R12 1 1
       57 ADD                              R13 R9 R12
       58 SUB                              R14 R9 R12
       59 FASTCALL2K                       MATH_MAX R13 K0 ; [+5]
       61 MOVE                             R17 R13
       62 LOADK                            R18 K0 [0]
       63 GETIMPORT                        R16 K10 [math.max]
       65 CALL                             R16 2 1
       66 FASTCALL1                        MATH_SQRT R16 ; [+2]
       67 GETIMPORT                        R15 K12 [math.sqrt]
       69 CALL                             R15 1 1
       70 FASTCALL2K                       MATH_MAX R14 K0 ; [+5]
       72 MOVE                             R18 R14
       73 LOADK                            R19 K0 [0]
       74 GETIMPORT                        R17 K10 [math.max]
       76 CALL                             R17 2 1
       77 FASTCALL1                        MATH_SQRT R17 ; [+2]
       78 GETIMPORT                        R16 K12 [math.sqrt]
       80 CALL                             R16 1 1
       81 LOADK                            R17 K6 [1E-15]
       82 JUMPIFNOTLT                      R16 R17 ; [+3]
       84 LOADK                            R17 K1 [Infinity]
       85 RETURN                           R17 1
       86 DIV                              R17 R15 R16
       87 RETURN                           R17 1
       88 GETUPVAL                         R2 0
       89 MOVE                             R3 R0
       90 CALL                             R2 1 1
       91 LOADN                            R3 0
       92 LOADK                            R4 K1 [Infinity]
       93 MOVE                             R5 R2
       94 LOADNIL                          R6
       95 LOADNIL                          R7
       96 FORGPREP                         R5
       97 FASTCALL1                        MATH_ABS R9 ; [+3]
       98 MOVE                             R11 R9
       99 GETIMPORT                        R10 K5 [math.abs]
      101 CALL                             R10 1 1
      102 FASTCALL2                        MATH_MAX R3 R10 ; [+5]
      104 MOVE                             R12 R3
      105 MOVE                             R13 R10
      106 GETIMPORT                        R11 K10 [math.max]
      108 CALL                             R11 2 1
      109 MOVE                             R3 R11
      110 FASTCALL2                        MATH_MIN R4 R10 ; [+5]
      112 MOVE                             R12 R4
      113 MOVE                             R13 R10
      114 GETIMPORT                        R11 K14 [math.min]
      116 CALL                             R11 2 1
      117 MOVE                             R4 R11
      118 FORGLOOP                         R5 2 ; [-22]
      120 LOADK                            R5 K6 [1E-15]
      121 JUMPIFNOTLT                      R4 R5 ; [+3]
      123 LOADK                            R5 K1 [Infinity]
      124 RETURN                           R5 1
      125 DIV                              R5 R3 R4
      126 RETURN                           R5 1

PROTO_9:
        0 SUB                              R5 R0 R1
        1 DIV                              R4 R5 R2
        2 MULK                             R7 R4 K0 [-0.5]
        3 MUL                              R6 R7 R4
        4 FASTCALL1                        MATH_EXP R6 ; [+2]
        5 GETIMPORT                        R5 K3 [math.exp]
        7 CALL                             R5 1 1
        8 MOVE                             R3 R5
        9 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["centerTargets"]
        2 GETTABLEKS                       R2 R0 K1 ["priorLocalRotations"]
        4 GETTABLEKS                       R3 R0 K2 ["jointIndices"]
        6 GETTABLEKS                       R4 R0 K3 ["pinnedFrames"]
        8 JUMPIF                           R4 ; [+2]
        9 NEWTABLE                         R4 0 0
       11 GETTABLEKS                       R6 R0 K5 ["sigmaFrames"]
       13 ORK                              R5 R6 K4 [6]
       14 GETTABLEKS                       R7 R0 K7 ["supportSigmas"]
       16 ORK                              R6 R7 K6 [3]
       17 GETIMPORT                        R7 K9 [next]
       19 MOVE                             R8 R1
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKNIL                  R7 ; [+4]
       23 NEWTABLE                         R7 0 0
       25 RETURN                           R7 1
       26 LOADN                            R7 0
       27 JUMPIFLE                         R5 R7 ; [+4]
       29 LOADN                            R7 0
       30 JUMPIFNOTLE                      R6 R7 ; [+5]
       32 GETIMPORT                        R7 K11 [error]
       34 LOADK                            R8 K12 ["temporal support parameters must be positive"]
       35 CALL                             R7 1 0
       36 LENGTH                           R7 R2
       37 LENGTH                           R8 R3
       38 NEWTABLE                         R9 0 0
       40 MOVE                             R10 R1
       41 LOADNIL                          R11
       42 LOADNIL                          R12
       43 FORGPREP                         R10
       44 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
       46 MOVE                             R16 R9
       47 MOVE                             R17 R13
       48 GETIMPORT                        R15 K15 [table.insert]
       50 CALL                             R15 2 0
       51 FORGLOOP                         R10 1 ; [-8]
       53 GETIMPORT                        R10 K17 [table.sort]
       55 MOVE                             R11 R9
       56 CALL                             R10 1 0
       57 NEWTABLE                         R10 0 0
       59 NEWTABLE                         R11 0 0
       61 MOVE                             R12 R4
       62 LOADNIL                          R13
       63 LOADNIL                          R14
       64 FORGPREP                         R12
       65 LOADN                            R17 0
       66 JUMPIFLT                         R16 R17 ; [+3]
       68 JUMPIFNOTLE                      R7 R16 ; [+5]
       70 GETIMPORT                        R17 K11 [error]
       72 LOADK                            R18 K18 ["pinned frame is out of range"]
       73 CALL                             R17 1 0
       74 GETTABLE                         R17 R10 R16
       75 JUMPIFEQKB                       R17 TRUE ; [+10]
       77 LOADB                            R17 1
       78 SETTABLE                         R17 R10 R16
       79 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       81 MOVE                             R18 R11
       82 MOVE                             R19 R16
       83 GETIMPORT                        R17 K15 [table.insert]
       85 CALL                             R17 2 0
       86 FORGLOOP                         R12 2 ; [-22]
       88 GETIMPORT                        R12 K17 [table.sort]
       90 MOVE                             R13 R11
       91 CALL                             R12 1 0
       92 MOVE                             R12 R9
       93 LOADNIL                          R13
       94 LOADNIL                          R14
       95 FORGPREP                         R12
       96 GETTABLE                         R17 R10 R16
       97 JUMPIFNOT                        R17 ; [+4]
       98 GETIMPORT                        R17 K11 [error]
      100 LOADK                            R18 K19 ["rotation center frame cannot also be pinned"]
      101 CALL                             R17 1 0
      102 LOADN                            R17 0
      103 JUMPIFLT                         R16 R17 ; [+3]
      105 JUMPIFNOTLE                      R7 R16 ; [+5]
      107 GETIMPORT                        R17 K11 [error]
      109 LOADK                            R18 K20 ["rotation center frame is out of range"]
      110 CALL                             R17 1 0
      111 GETTABLE                         R17 R1 R16
      112 LENGTH                           R18 R17
      113 JUMPIFEQ                         R18 R8 ; [+5]
      115 GETIMPORT                        R18 K11 [error]
      117 LOADK                            R19 K21 ["rotation center targets must match joint_indices length"]
      118 CALL                             R18 1 0
      119 FORGLOOP                         R12 2 ; [-24]
      121 MUL                              R12 R5 R6
      122 NEWTABLE                         R13 0 0
      124 NEWTABLE                         R14 0 0
      126 MOVE                             R15 R9
      127 LOADNIL                          R16
      128 LOADNIL                          R17
      129 FORGPREP                         R15
      130 LOADN                            R20 0
      131 LOADN                            R23 1
      132 LENGTH                           R21 R11
      133 LOADN                            R22 1
      134 FORNPREP                         R21
      135 GETTABLE                         R24 R11 R23
      136 JUMPIFNOTLE                      R24 R19 ; [+5]
      138 MOVE                             R20 R23
      139 JUMP                             ; [+1]
      140 JUMP                             ; [+1]
      141 FORNLOOP                         R21
      142 GETTABLE                         R21 R14 R20
      143 JUMPIFNOTEQKNIL                  R21 ; [+4]
      145 NEWTABLE                         R21 0 0
      147 SETTABLE                         R21 R14 R20
      148 FASTCALL2                        TABLE_INSERT R21 R18 ; [+5]
      150 MOVE                             R23 R21
      151 MOVE                             R24 R18
      152 GETIMPORT                        R22 K15 [table.insert]
      154 CALL                             R22 2 0
      155 FORGLOOP                         R15 2 ; [-26]
      157 NEWTABLE                         R15 0 0
      159 MOVE                             R16 R14
      160 LOADNIL                          R17
      161 LOADNIL                          R18
      162 FORGPREP                         R16
      163 FASTCALL2                        TABLE_INSERT R15 R19 ; [+5]
      165 MOVE                             R22 R15
      166 MOVE                             R23 R19
      167 GETIMPORT                        R21 K15 [table.insert]
      169 CALL                             R21 2 0
      170 FORGLOOP                         R16 1 ; [-8]
      172 GETIMPORT                        R16 K17 [table.sort]
      174 MOVE                             R17 R15
      175 CALL                             R16 1 0
      176 MOVE                             R16 R15
      177 LOADNIL                          R17
      178 LOADNIL                          R18
      179 FORGPREP                         R16
      180 GETTABLE                         R21 R14 R20
      181 NEWTABLE                         R22 0 0
      183 MOVE                             R23 R21
      184 LOADNIL                          R24
      185 LOADNIL                          R25
      186 FORGPREP                         R23
      187 GETTABLE                         R30 R9 R27
      188 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      190 MOVE                             R29 R22
      191 GETIMPORT                        R28 K15 [table.insert]
      193 CALL                             R28 2 0
      194 FORGLOOP                         R23 2 ; [-8]
      196 LENGTH                           R23 R22
      197 GETIMPORT                        R24 K23 [table.create]
      199 MOVE                             R25 R23
      200 CALL                             R24 1 1
      201 MOVE                             R25 R22
      202 LOADNIL                          R26
      203 LOADNIL                          R27
      204 FORGPREP                         R25
      205 GETTABLE                         R30 R1 R29
      206 GETIMPORT                        R31 K23 [table.create]
      208 MOVE                             R32 R8
      209 CALL                             R31 1 1
      210 SETTABLE                         R31 R24 R28
      211 MOVE                             R31 R3
      212 LOADNIL                          R32
      213 LOADNIL                          R33
      214 FORGPREP                         R31
      215 ADDK                             R38 R29 K24 [1]
      216 GETTABLE                         R37 R2 R38
      217 ADDK                             R38 R35 K24 [1]
      218 GETTABLE                         R36 R37 R38
      219 GETUPVAL                         R37 0
      220 GETTABLE                         R38 R30 R34
      221 GETUPVAL                         R39 1
      222 MOVE                             R40 R36
      223 CALL                             R39 1 1
      224 CALL                             R37 2 1
      225 GETTABLE                         R38 R24 R28
      226 GETUPVAL                         R39 2
      227 MOVE                             R40 R37
      228 CALL                             R39 1 1
      229 SETTABLE                         R39 R38 R34
      230 FORGLOOP                         R31 2 ; [-16]
      232 FORGLOOP                         R25 2 ; [-28]
      234 GETIMPORT                        R25 K23 [table.create]
      236 MOVE                             R26 R23
      237 CALL                             R25 1 1
      238 MOVE                             R26 R22
      239 LOADNIL                          R27
      240 LOADNIL                          R28
      241 FORGPREP                         R26
      242 GETIMPORT                        R31 K23 [table.create]
      244 MOVE                             R32 R23
      245 CALL                             R31 1 1
      246 SETTABLE                         R31 R25 R29
      247 MOVE                             R31 R22
      248 LOADNIL                          R32
      249 LOADNIL                          R33
      250 FORGPREP                         R31
      251 SUB                              R37 R30 R35
      252 FASTCALL1                        MATH_ABS R37 ; [+2]
      253 GETIMPORT                        R36 K27 [math.abs]
      255 CALL                             R36 1 1
      256 JUMPIFNOTLE                      R36 R12 ; [+13]
      258 GETTABLE                         R36 R25 R29
      259 SUB                              R39 R30 R35
      260 DIV                              R38 R39 R5
      261 MULK                             R41 R38 K28 [-0.5]
      262 MUL                              R40 R41 R38
      263 FASTCALL1                        MATH_EXP R40 ; [+2]
      264 GETIMPORT                        R39 K30 [math.exp]
      266 CALL                             R39 1 1
      267 MOVE                             R37 R39
      268 SETTABLE                         R37 R36 R34
      269 JUMP                             ; [+3]
      270 GETTABLE                         R36 R25 R29
      271 LOADN                            R37 0
      272 SETTABLE                         R37 R36 R34
      273 FORGLOOP                         R31 2 ; [-23]
      275 FORGLOOP                         R26 2 ; [-34]
      277 GETUPVAL                         R26 3
      278 MOVE                             R27 R25
      279 CALL                             R26 1 1
      280 JUMPIFNOTEQ                      R26 R26 ; [+4]
      282 LOADK                            R27 K31 [1000000]
      283 JUMPIFNOTLT                      R27 R26 ; [+5]
      285 GETIMPORT                        R27 K11 [error]
      287 LOADK                            R28 K32 ["rotation center kernel is ill-conditioned"]
      288 CALL                             R27 1 0
      289 GETIMPORT                        R27 K23 [table.create]
      291 MOVE                             R28 R23
      292 CALL                             R27 1 1
      293 LOADN                            R30 1
      294 MOVE                             R28 R23
      295 LOADN                            R29 1
      296 FORNPREP                         R28
      297 GETIMPORT                        R31 K23 [table.create]
      299 MULK                             R32 R8 K6 [3]
      300 CALL                             R31 1 1
      301 SETTABLE                         R31 R27 R30
      302 LOADN                            R31 0
      303 LOADN                            R34 1
      304 MOVE                             R32 R8
      305 LOADN                            R33 1
      306 FORNPREP                         R32
      307 GETTABLE                         R36 R24 R30
      308 GETTABLE                         R35 R36 R34
      309 GETTABLE                         R36 R27 R30
      310 ADDK                             R37 R31 K24 [1]
      311 GETTABLEN                        R38 R35 1
      312 SETTABLE                         R38 R36 R37
      313 GETTABLE                         R36 R27 R30
      314 ADDK                             R37 R31 K33 [2]
      315 GETTABLEN                        R38 R35 2
      316 SETTABLE                         R38 R36 R37
      317 GETTABLE                         R36 R27 R30
      318 ADDK                             R37 R31 K6 [3]
      319 GETTABLEN                        R38 R35 3
      320 SETTABLE                         R38 R36 R37
      321 ADDK                             R31 R31 K6 [3]
      322 FORNLOOP                         R32
      323 FORNLOOP                         R28
      324 GETUPVAL                         R28 4
      325 MOVE                             R29 R25
      326 MOVE                             R30 R27
      327 CALL                             R28 2 1
      328 GETIMPORT                        R29 K23 [table.create]
      330 MOVE                             R30 R23
      331 CALL                             R29 1 1
      332 LOADN                            R32 1
      333 MOVE                             R30 R23
      334 LOADN                            R31 1
      335 FORNPREP                         R30
      336 GETIMPORT                        R33 K23 [table.create]
      338 MOVE                             R34 R8
      339 CALL                             R33 1 1
      340 SETTABLE                         R33 R29 R32
      341 LOADN                            R33 0
      342 LOADN                            R36 1
      343 MOVE                             R34 R8
      344 LOADN                            R35 1
      345 FORNPREP                         R34
      346 GETTABLE                         R37 R29 R32
      347 NEWTABLE                         R38 0 3
      349 GETTABLE                         R40 R28 R32
      350 ADDK                             R41 R33 K24 [1]
      351 GETTABLE                         R39 R40 R41
      352 GETTABLE                         R41 R28 R32
      353 ADDK                             R42 R33 K33 [2]
      354 GETTABLE                         R40 R41 R42
      355 GETTABLE                         R42 R28 R32
      356 ADDK                             R43 R33 K6 [3]
      357 GETTABLE                         R41 R42 R43
      358 SETLIST                          R38 R39 3 [1]
      360 SETTABLE                         R38 R37 R36
      361 ADDK                             R33 R33 K6 [3]
      362 FORNLOOP                         R34
      363 FORNLOOP                         R30
      364 LOADN                            R31 0
      365 JUMPIFNOTLT                      R31 R20 ; [+4]
      367 GETTABLE                         R31 R11 R20
      368 ADDK                             R30 R31 K24 [1]
      369 JUMP                             ; [+1]
      370 LOADN                            R30 0
      371 LENGTH                           R32 R11
      372 JUMPIFNOTLT                      R20 R32 ; [+5]
      374 ADDK                             R33 R20 K24 [1]
      375 GETTABLE                         R32 R11 R33
      376 SUBK                             R31 R32 K24 [1]
      377 JUMP                             ; [+1]
      378 SUBK                             R31 R7 K24 [1]
      379 NEWTABLE                         R32 0 0
      381 NEWTABLE                         R33 0 0
      383 MOVE                             R34 R22
      384 LOADNIL                          R35
      385 LOADNIL                          R36
      386 FORGPREP                         R34
      387 SUB                              R42 R38 R12
      388 FASTCALL1                        MATH_FLOOR R42 ; [+2]
      389 GETIMPORT                        R41 K35 [math.floor]
      391 CALL                             R41 1 1
      392 FASTCALL2                        MATH_MAX R30 R41 ; [+4]
      394 MOVE                             R40 R30
      395 GETIMPORT                        R39 K37 [math.max]
      397 CALL                             R39 2 1
      398 ADD                              R43 R38 R12
      399 FASTCALL1                        MATH_CEIL R43 ; [+2]
      400 GETIMPORT                        R42 K39 [math.ceil]
      402 CALL                             R42 1 1
      403 FASTCALL2                        MATH_MIN R31 R42 ; [+4]
      405 MOVE                             R41 R31
      406 GETIMPORT                        R40 K41 [math.min]
      408 CALL                             R40 2 1
      409 MOVE                             R43 R39
      410 MOVE                             R41 R40
      411 LOADN                            R42 1
      412 FORNPREP                         R41
      413 GETTABLE                         R44 R32 R43
      414 JUMPIFEQKB                       R44 TRUE ; [+10]
      416 LOADB                            R44 1
      417 SETTABLE                         R44 R32 R43
      418 FASTCALL2                        TABLE_INSERT R33 R43 ; [+5]
      420 MOVE                             R45 R33
      421 MOVE                             R46 R43
      422 GETIMPORT                        R44 K15 [table.insert]
      424 CALL                             R44 2 0
      425 FORNLOOP                         R41
      426 FORGLOOP                         R34 2 ; [-40]
      428 GETIMPORT                        R34 K17 [table.sort]
      430 MOVE                             R35 R33
      431 CALL                             R34 1 0
      432 NEWTABLE                         R34 0 0
      434 MOVE                             R35 R22
      435 LOADNIL                          R36
      436 LOADNIL                          R37
      437 FORGPREP                         R35
      438 GETIMPORT                        R40 K23 [table.create]
      440 MOVE                             R41 R8
      441 CALL                             R40 1 1
      442 LOADN                            R43 1
      443 MOVE                             R41 R8
      444 LOADN                            R42 1
      445 FORNPREP                         R41
      446 GETUPVAL                         R44 5
      447 GETTABLE                         R46 R1 R39
      448 GETTABLE                         R45 R46 R43
      449 CALL                             R44 1 1
      450 SETTABLE                         R44 R40 R43
      451 FORNLOOP                         R41
      452 SETTABLE                         R40 R34 R39
      453 FORGLOOP                         R35 2 ; [-16]
      455 MOVE                             R35 R33
      456 LOADNIL                          R36
      457 LOADNIL                          R37
      458 FORGPREP                         R35
      459 GETTABLE                         R40 R34 R39
      460 JUMPIFEQKNIL                     R40 ; [+4]
      462 GETTABLE                         R40 R34 R39
      463 SETTABLE                         R40 R13 R39
      464 JUMP                             ; [+125]
      465 GETIMPORT                        R40 K23 [table.create]
      467 MOVE                             R41 R8
      468 CALL                             R40 1 1
      469 LOADN                            R43 1
      470 MOVE                             R41 R8
      471 LOADN                            R42 1
      472 FORNPREP                         R41
      473 NEWTABLE                         R44 0 3
      475 LOADN                            R45 0
      476 LOADN                            R46 0
      477 LOADN                            R47 0
      478 SETLIST                          R44 R45 3 [1]
      480 SETTABLE                         R44 R40 R43
      481 FORNLOOP                         R41
      482 MOVE                             R41 R22
      483 LOADNIL                          R42
      484 LOADNIL                          R43
      485 FORGPREP                         R41
      486 SUB                              R47 R39 R45
      487 FASTCALL1                        MATH_ABS R47 ; [+2]
      488 GETIMPORT                        R46 K27 [math.abs]
      490 CALL                             R46 1 1
      491 JUMPIFNOTLE                      R46 R12 ; [+35]
      493 SUB                              R48 R39 R45
      494 DIV                              R47 R48 R5
      495 MULK                             R50 R47 K28 [-0.5]
      496 MUL                              R49 R50 R47
      497 FASTCALL1                        MATH_EXP R49 ; [+2]
      498 GETIMPORT                        R48 K30 [math.exp]
      500 CALL                             R48 1 1
      501 MOVE                             R46 R48
      502 LOADN                            R49 1
      503 MOVE                             R47 R8
      504 LOADN                            R48 1
      505 FORNPREP                         R47
      506 GETTABLE                         R51 R29 R44
      507 GETTABLE                         R50 R51 R49
      508 GETTABLE                         R51 R40 R49
      509 GETTABLEN                        R52 R51 1
      510 GETTABLEN                        R54 R50 1
      511 MUL                              R53 R54 R46
      512 ADD                              R52 R52 R53
      513 SETTABLEN                        R52 R51 1
      514 GETTABLE                         R51 R40 R49
      515 GETTABLEN                        R52 R51 2
      516 GETTABLEN                        R54 R50 2
      517 MUL                              R53 R54 R46
      518 ADD                              R52 R52 R53
      519 SETTABLEN                        R52 R51 2
      520 GETTABLE                         R51 R40 R49
      521 GETTABLEN                        R52 R51 3
      522 GETTABLEN                        R54 R50 3
      523 MUL                              R53 R54 R46
      524 ADD                              R52 R52 R53
      525 SETTABLEN                        R52 R51 3
      526 FORNLOOP                         R47
      527 FORGLOOP                         R41 2 ; [-42]
      529 LOADN                            R43 1
      530 MOVE                             R41 R8
      531 LOADN                            R42 1
      532 FORNPREP                         R41
      533 GETTABLE                         R47 R40 R43
      534 GETTABLEN                        R44 R47 1
      535 GETTABLE                         R47 R40 R43
      536 GETTABLEN                        R45 R47 2
      537 GETTABLE                         R47 R40 R43
      538 GETTABLEN                        R46 R47 3
      539 MUL                              R50 R44 R44
      540 MUL                              R51 R45 R45
      541 ADD                              R49 R50 R51
      542 MUL                              R50 R46 R46
      543 ADD                              R48 R49 R50
      544 FASTCALL1                        MATH_SQRT R48 ; [+2]
      545 GETIMPORT                        R47 K43 [math.sqrt]
      547 CALL                             R47 1 1
      548 LOADK                            R48 K44 [3.141592653589793]
      549 JUMPIFNOTLT                      R48 R47 ; [+17]
      551 LOADN                            R48 0
      552 JUMPIFNOTLT                      R48 R47 ; [+14]
      554 DIVRK                            R48 K44 [3.141592653589793] R47
      555 GETTABLE                         R49 R40 R43
      556 GETTABLEN                        R50 R49 1
      557 MUL                              R50 R50 R48
      558 SETTABLEN                        R50 R49 1
      559 GETTABLE                         R49 R40 R43
      560 GETTABLEN                        R50 R49 2
      561 MUL                              R50 R50 R48
      562 SETTABLEN                        R50 R49 2
      563 GETTABLE                         R49 R40 R43
      564 GETTABLEN                        R50 R49 3
      565 MUL                              R50 R50 R48
      566 SETTABLEN                        R50 R49 3
      567 FORNLOOP                         R41
      568 GETIMPORT                        R41 K23 [table.create]
      570 MOVE                             R42 R8
      571 CALL                             R41 1 1
      572 MOVE                             R42 R3
      573 LOADNIL                          R43
      574 LOADNIL                          R44
      575 FORGPREP                         R42
      576 ADDK                             R49 R39 K24 [1]
      577 GETTABLE                         R48 R2 R49
      578 ADDK                             R49 R46 K24 [1]
      579 GETTABLE                         R47 R48 R49
      580 GETUPVAL                         R48 0
      581 GETUPVAL                         R49 6
      582 GETTABLE                         R50 R40 R45
      583 CALL                             R49 1 1
      584 MOVE                             R50 R47
      585 CALL                             R48 2 1
      586 SETTABLE                         R48 R41 R45
      587 FORGLOOP                         R42 2 ; [-12]
      589 SETTABLE                         R41 R13 R39
      590 FORGLOOP                         R35 2 ; [-132]
      592 FORGLOOP                         R16 2 ; [-413]
      594 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 DUPCLOSURE                       R4 K3 [PROTO_3]
        7 DUPCLOSURE                       R5 K4 [PROTO_4]
        8 DUPCLOSURE                       R6 K5 [PROTO_5]
        9 DUPCLOSURE                       R7 K6 [PROTO_6]
       10 DUPCLOSURE                       R8 K7 [PROTO_7]
       11 DUPCLOSURE                       R9 K8 [PROTO_8]
       12 CAPTURE                          VAL R8
       13 DUPCLOSURE                       R10 K9 [PROTO_9]
       14 SETTABLEKS                       R10 R0 K10 ["getGaussianWeight"]
       16 DUPCLOSURE                       R10 K11 [PROTO_10]
       17 CAPTURE                          VAL R5
       18 SETTABLEKS                       R10 R0 K12 ["matrixToRotationVector"]
       20 DUPCLOSURE                       R10 K13 [PROTO_11]
       21 CAPTURE                          VAL R6
       22 SETTABLEKS                       R10 R0 K14 ["rotationVectorToMatrix"]
       24 DUPCLOSURE                       R10 K15 [PROTO_12]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R9
       29 CAPTURE                          VAL R7
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R6
       32 SETTABLEKS                       R10 R0 K16 ["buildFrameRotations"]
       34 LOADN                            R10 6
       35 SETTABLEKS                       R10 R0 K17 ["DEFAULT_SIGMA_FRAMES"]
       37 LOADN                            R10 3
       38 SETTABLEKS                       R10 R0 K18 ["DEFAULT_SUPPORT_SIGMAS"]
       40 RETURN                           R0 1
