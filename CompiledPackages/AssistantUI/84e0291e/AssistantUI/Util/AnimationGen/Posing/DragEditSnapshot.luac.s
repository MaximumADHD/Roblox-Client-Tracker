PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        4 RETURN                           R0 1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        9 RETURN                           R1 1
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R4 R0
       12 ORK                              R2 R3 K1 [99]
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R1
       15 ORK                              R3 R4 K1 [99]
       16 JUMPIFNOTLE                      R2 R3 ; [+2]
       18 RETURN                           R0 1
       19 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 4
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 GETTABLEN                        R4 R0 3
        5 GETTABLEN                        R5 R0 4
        6 SETLIST                          R1 R2 4 [1]
        8 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["position"]
        2 GETTABLEN                        R3 R4 1
        3 GETTABLEKS                       R5 R1 K0 ["position"]
        5 GETTABLEN                        R4 R5 1
        6 SUB                              R2 R3 R4
        7 GETTABLEKS                       R5 R0 K0 ["position"]
        9 GETTABLEN                        R4 R5 2
       10 GETTABLEKS                       R6 R1 K0 ["position"]
       12 GETTABLEN                        R5 R6 2
       13 SUB                              R3 R4 R5
       14 GETTABLEKS                       R6 R0 K0 ["position"]
       16 GETTABLEN                        R5 R6 3
       17 GETTABLEKS                       R7 R1 K0 ["position"]
       19 GETTABLEN                        R6 R7 3
       20 SUB                              R4 R5 R6
       21 MUL                              R7 R2 R2
       22 MUL                              R8 R3 R3
       23 ADD                              R6 R7 R8
       24 MUL                              R7 R4 R4
       25 ADD                              R5 R6 R7
       26 RETURN                           R5 1

PROTO_3:
        0 GETTABLEN                        R6 R0 1
        1 GETTABLEN                        R7 R1 1
        2 MUL                              R5 R6 R7
        3 GETTABLEN                        R7 R0 2
        4 GETTABLEN                        R8 R1 2
        5 MUL                              R6 R7 R8
        6 ADD                              R4 R5 R6
        7 GETTABLEN                        R6 R0 3
        8 GETTABLEN                        R7 R1 3
        9 MUL                              R5 R6 R7
       10 ADD                              R3 R4 R5
       11 GETTABLEN                        R5 R0 4
       12 GETTABLEN                        R6 R1 4
       13 MUL                              R4 R5 R6
       14 ADD                              R2 R3 R4
       15 RETURN                           R2 1

PROTO_4:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 GETTABLEN                        R4 R0 3
        3 GETTABLEN                        R5 R0 4
        4 GETTABLEN                        R6 R1 1
        5 GETTABLEN                        R7 R1 2
        6 GETTABLEN                        R8 R1 3
        7 GETTABLEN                        R9 R1 4
        8 NEWTABLE                         R10 0 4
       10 MUL                              R14 R5 R6
       11 MUL                              R15 R2 R9
       12 ADD                              R13 R14 R15
       13 MUL                              R14 R3 R8
       14 ADD                              R12 R13 R14
       15 MUL                              R13 R4 R7
       16 SUB                              R11 R12 R13
       17 MUL                              R15 R5 R7
       18 MUL                              R16 R2 R8
       19 SUB                              R14 R15 R16
       20 MUL                              R15 R3 R9
       21 ADD                              R13 R14 R15
       22 MUL                              R14 R4 R6
       23 ADD                              R12 R13 R14
       24 MUL                              R16 R5 R8
       25 MUL                              R17 R2 R7
       26 ADD                              R15 R16 R17
       27 MUL                              R16 R3 R6
       28 SUB                              R14 R15 R16
       29 MUL                              R15 R4 R9
       30 ADD                              R13 R14 R15
       31 MUL                              R17 R5 R9
       32 MUL                              R18 R2 R6
       33 SUB                              R16 R17 R18
       34 MUL                              R17 R3 R7
       35 SUB                              R15 R16 R17
       36 MUL                              R16 R4 R8
       37 SUB                              R14 R15 R16
       38 SETLIST                          R10 R11 4 [1]
       40 RETURN                           R10 1

PROTO_5:
        0 NEWTABLE                         R1 0 4
        2 GETTABLEN                        R3 R0 1
        3 MINUS                            R2 R3
        4 GETTABLEN                        R4 R0 2
        5 MINUS                            R3 R4
        6 GETTABLEN                        R5 R0 3
        7 MINUS                            R4 R5
        8 GETTABLEN                        R5 R0 4
        9 SETLIST                          R1 R2 4 [1]
       11 RETURN                           R1 1

PROTO_6:
        0 GETTABLEN                        R6 R0 1
        1 GETTABLEN                        R7 R0 1
        2 MUL                              R5 R6 R7
        3 GETTABLEN                        R7 R0 2
        4 GETTABLEN                        R8 R0 2
        5 MUL                              R6 R7 R8
        6 ADD                              R4 R5 R6
        7 GETTABLEN                        R6 R0 3
        8 GETTABLEN                        R7 R0 3
        9 MUL                              R5 R6 R7
       10 ADD                              R3 R4 R5
       11 GETTABLEN                        R5 R0 4
       12 GETTABLEN                        R6 R0 4
       13 MUL                              R4 R5 R6
       14 ADD                              R2 R3 R4
       15 FASTCALL1                        MATH_SQRT R2 ; [+2]
       16 GETIMPORT                        R1 K2 [math.sqrt]
       18 CALL                             R1 1 1
       19 LOADK                            R2 K3 [1E-06]
       20 JUMPIFNOTLT                      R1 R2 ; [+3]
       22 LOADNIL                          R2
       23 RETURN                           R2 1
       24 NEWTABLE                         R2 0 4
       26 GETTABLEN                        R4 R0 1
       27 DIV                              R3 R4 R1
       28 GETTABLEN                        R5 R0 2
       29 DIV                              R4 R5 R1
       30 GETTABLEN                        R6 R0 3
       31 DIV                              R5 R6 R1
       32 GETTABLEN                        R7 R0 4
       33 DIV                              R6 R7 R1
       34 SETLIST                          R2 R3 4 [1]
       36 RETURN                           R2 1

PROTO_7:
        0 GETTABLEN                        R6 R0 1
        1 GETTABLEN                        R7 R1 1
        2 MUL                              R5 R6 R7
        3 GETTABLEN                        R7 R0 2
        4 GETTABLEN                        R8 R1 2
        5 MUL                              R6 R7 R8
        6 ADD                              R4 R5 R6
        7 GETTABLEN                        R6 R0 3
        8 GETTABLEN                        R7 R1 3
        9 MUL                              R5 R6 R7
       10 ADD                              R3 R4 R5
       11 GETTABLEN                        R5 R0 4
       12 GETTABLEN                        R6 R1 4
       13 MUL                              R4 R5 R6
       14 ADD                              R2 R3 R4
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R2 R3 ; [+14]
       18 NEWTABLE                         R2 0 4
       20 GETTABLEN                        R4 R0 1
       21 MINUS                            R3 R4
       22 GETTABLEN                        R5 R0 2
       23 MINUS                            R4 R5
       24 GETTABLEN                        R6 R0 3
       25 MINUS                            R5 R6
       26 GETTABLEN                        R7 R0 4
       27 MINUS                            R6 R7
       28 SETLIST                          R2 R3 4 [1]
       30 RETURN                           R2 1
       31 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 NEWTABLE                         R4 0 4
        4 GETTABLEN                        R6 R0 1
        5 MINUS                            R5 R6
        6 GETTABLEN                        R7 R0 2
        7 MINUS                            R6 R7
        8 GETTABLEN                        R8 R0 3
        9 MINUS                            R7 R8
       10 GETTABLEN                        R8 R0 4
       11 SETLIST                          R4 R5 4 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+3]
       19 LOADNIL                          R4
       20 RETURN                           R4 1
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R3
       23 GETUPVAL                         R6 3
       24 CALL                             R4 2 1
       25 RETURN                           R4 1

PROTO_9:
        0 GETTABLEKS                       R5 R0 K0 ["position"]
        2 GETTABLEN                        R4 R5 1
        3 GETTABLEKS                       R6 R1 K0 ["position"]
        5 GETTABLEN                        R5 R6 1
        6 SUB                              R3 R4 R5
        7 GETTABLEKS                       R6 R0 K0 ["position"]
        9 GETTABLEN                        R5 R6 2
       10 GETTABLEKS                       R7 R1 K0 ["position"]
       12 GETTABLEN                        R6 R7 2
       13 SUB                              R4 R5 R6
       14 GETTABLEKS                       R7 R0 K0 ["position"]
       16 GETTABLEN                        R6 R7 3
       17 GETTABLEKS                       R8 R1 K0 ["position"]
       19 GETTABLEN                        R7 R8 3
       20 SUB                              R5 R6 R7
       21 MUL                              R7 R3 R3
       22 MUL                              R8 R4 R4
       23 ADD                              R6 R7 R8
       24 MUL                              R7 R5 R5
       25 ADD                              R2 R6 R7
       26 LOADK                            R3 K1 [1E-06]
       27 JUMPIFNOTLE                      R3 R2 ; [+3]
       29 LOADB                            R2 1
       30 RETURN                           R2 1
       31 GETTABLEKS                       R4 R0 K2 ["quaternion"]
       33 GETTABLEKS                       R5 R1 K2 ["quaternion"]
       35 GETTABLEN                        R9 R4 1
       36 GETTABLEN                        R10 R5 1
       37 MUL                              R8 R9 R10
       38 GETTABLEN                        R10 R4 2
       39 GETTABLEN                        R11 R5 2
       40 MUL                              R9 R10 R11
       41 ADD                              R7 R8 R9
       42 GETTABLEN                        R9 R4 3
       43 GETTABLEN                        R10 R5 3
       44 MUL                              R8 R9 R10
       45 ADD                              R6 R7 R8
       46 GETTABLEN                        R8 R4 4
       47 GETTABLEN                        R9 R5 4
       48 MUL                              R7 R8 R9
       49 ADD                              R3 R6 R7
       50 FASTCALL1                        MATH_ABS R3 ; [+2]
       51 GETIMPORT                        R2 K5 [math.abs]
       53 CALL                             R2 1 1
       54 LOADN                            R5 -1
       55 LOADN                            R6 1
       56 FASTCALL3                        MATH_CLAMP R2 R5 R6
       58 MOVE                             R4 R2
       59 GETIMPORT                        R3 K7 [math.clamp]
       61 CALL                             R3 3 1
       62 MOVE                             R2 R3
       63 FASTCALL1                        MATH_ACOS R2 ; [+3]
       64 MOVE                             R6 R2
       65 GETIMPORT                        R5 K10 [math.acos]
       67 CALL                             R5 1 1
       68 MULK                             R4 R5 K8 [2]
       69 LOADK                            R5 K11 [0.008726646259971648]
       70 JUMPIFLE                         R5 R4 ; [+2]
       72 LOADB                            R3 0 +1
       73 LOADB                            R3 1
       74 RETURN                           R3 1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLE                         R7 R0 R6
        7 JUMPIFEQKNIL                     R7 ; [+36]
        9 DUPTABLE                         R8 K2 [{"position", "quaternion"}]
       10 NEWTABLE                         R9 0 3
       12 GETTABLEKS                       R11 R7 K0 ["position"]
       14 GETTABLEN                        R10 R11 1
       15 GETTABLEKS                       R12 R7 K0 ["position"]
       17 GETTABLEN                        R11 R12 2
       18 GETTABLEKS                       R13 R7 K0 ["position"]
       20 GETTABLEN                        R12 R13 3
       21 SETLIST                          R9 R10 3 [1]
       23 SETTABLEKS                       R9 R8 K0 ["position"]
       25 NEWTABLE                         R9 0 4
       27 GETTABLEKS                       R11 R7 K3 ["rotation"]
       29 GETTABLEN                        R10 R11 1
       30 GETTABLEKS                       R12 R7 K3 ["rotation"]
       32 GETTABLEN                        R11 R12 2
       33 GETTABLEKS                       R13 R7 K3 ["rotation"]
       35 GETTABLEN                        R12 R13 3
       36 GETTABLEKS                       R14 R7 K3 ["rotation"]
       38 GETTABLEN                        R13 R14 4
       39 SETLIST                          R9 R10 4 [1]
       41 SETTABLEKS                       R9 R8 K1 ["quaternion"]
       43 SETTABLE                         R8 R1 R6
       44 FORGLOOP                         R2 2 ; [-39]
       46 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 NEWTABLE                         R2 0 0
        8 MOVE                             R3 R1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETUPVAL                         R9 1
       13 GETTABLE                         R8 R9 R7
       14 JUMPIFEQKNIL                     R8 ; [+8]
       16 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       18 MOVE                             R10 R2
       19 MOVE                             R11 R8
       20 GETIMPORT                        R9 K2 [table.insert]
       22 CALL                             R9 2 0
       23 FORGLOOP                         R3 2 ; [-12]
       25 RETURN                           R2 1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"position", "quaternion"}]
        1 NEWTABLE                         R2 0 3
        3 GETTABLEKS                       R4 R0 K0 ["position"]
        5 GETTABLEN                        R3 R4 1
        6 GETTABLEKS                       R5 R0 K0 ["position"]
        8 GETTABLEN                        R4 R5 2
        9 GETTABLEKS                       R6 R0 K0 ["position"]
       11 GETTABLEN                        R5 R6 3
       12 SETLIST                          R2 R3 3 [1]
       14 SETTABLEKS                       R2 R1 K0 ["position"]
       16 NEWTABLE                         R2 0 4
       18 GETTABLEKS                       R4 R0 K3 ["rotation"]
       20 GETTABLEN                        R3 R4 1
       21 GETTABLEKS                       R5 R0 K3 ["rotation"]
       23 GETTABLEN                        R4 R5 2
       24 GETTABLEKS                       R6 R0 K3 ["rotation"]
       26 GETTABLEN                        R5 R6 3
       27 GETTABLEKS                       R7 R0 K3 ["rotation"]
       29 GETTABLEN                        R6 R7 4
       30 SETLIST                          R2 R3 4 [1]
       32 SETTABLEKS                       R2 R1 K1 ["quaternion"]
       34 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"position", "quaternion"}]
        1 NEWTABLE                         R2 0 3
        3 GETTABLEKS                       R4 R0 K0 ["position"]
        5 GETTABLEN                        R3 R4 1
        6 GETTABLEKS                       R5 R0 K0 ["position"]
        8 GETTABLEN                        R4 R5 2
        9 GETTABLEKS                       R6 R0 K0 ["position"]
       11 GETTABLEN                        R5 R6 3
       12 SETLIST                          R2 R3 3 [1]
       14 SETTABLEKS                       R2 R1 K0 ["position"]
       16 NEWTABLE                         R2 0 4
       18 GETTABLEKS                       R4 R0 K1 ["quaternion"]
       20 GETTABLEN                        R3 R4 1
       21 GETTABLEKS                       R5 R0 K1 ["quaternion"]
       23 GETTABLEN                        R4 R5 2
       24 GETTABLEKS                       R6 R0 K1 ["quaternion"]
       26 GETTABLEN                        R5 R6 3
       27 GETTABLEKS                       R7 R0 K1 ["quaternion"]
       29 GETTABLEN                        R6 R7 4
       30 SETLIST                          R2 R3 4 [1]
       32 SETTABLEKS                       R2 R1 K1 ["quaternion"]
       34 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFEQKNIL                     R2 ; [+3]
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R10 R0 K0 ["chain"]
       16 GETTABLE                         R9 R10 R8
       17 JUMPIFEQKNIL                     R9 ; [+5]
       19 GETUPVAL                         R10 1
       20 MOVE                             R11 R9
       21 CALL                             R10 1 1
       22 SETTABLE                         R10 R3 R8
       23 FORGLOOP                         R4 2 ; [-10]
       25 GETIMPORT                        R4 K2 [next]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKNIL                  R4 ; [+3]
       31 LOADNIL                          R4
       32 RETURN                           R4 1
       33 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R2
        2 JUMPIFNOTEQKNIL                  R3 ; [+3]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 CALL                             R5 2 1
       14 JUMPIFEQKNIL                     R4 ; [+3]
       16 JUMPIFNOTEQKNIL                  R5 ; [+3]
       18 LOADNIL                          R6
       19 RETURN                           R6 1
       20 MOVE                             R6 R3
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 GETTABLE                         R11 R4 R10
       25 GETTABLE                         R12 R5 R10
       26 JUMPIFEQKNIL                     R11 ; [+81]
       28 JUMPIFEQKNIL                     R12 ; [+79]
       30 GETTABLEKS                       R17 R11 K0 ["position"]
       32 GETTABLEN                        R16 R17 1
       33 GETTABLEKS                       R18 R12 K0 ["position"]
       35 GETTABLEN                        R17 R18 1
       36 SUB                              R15 R16 R17
       37 GETTABLEKS                       R18 R11 K0 ["position"]
       39 GETTABLEN                        R17 R18 2
       40 GETTABLEKS                       R19 R12 K0 ["position"]
       42 GETTABLEN                        R18 R19 2
       43 SUB                              R16 R17 R18
       44 GETTABLEKS                       R19 R11 K0 ["position"]
       46 GETTABLEN                        R18 R19 3
       47 GETTABLEKS                       R20 R12 K0 ["position"]
       49 GETTABLEN                        R19 R20 3
       50 SUB                              R17 R18 R19
       51 MUL                              R19 R15 R15
       52 MUL                              R20 R16 R16
       53 ADD                              R18 R19 R20
       54 MUL                              R19 R17 R17
       55 ADD                              R14 R18 R19
       56 LOADK                            R15 K1 [1E-06]
       57 JUMPIFNOTLE                      R15 R14 ; [+3]
       59 LOADB                            R13 1
       60 JUMP                             ; [+43]
       61 GETTABLEKS                       R16 R11 K2 ["quaternion"]
       63 GETTABLEKS                       R17 R12 K2 ["quaternion"]
       65 GETTABLEN                        R21 R16 1
       66 GETTABLEN                        R22 R17 1
       67 MUL                              R20 R21 R22
       68 GETTABLEN                        R22 R16 2
       69 GETTABLEN                        R23 R17 2
       70 MUL                              R21 R22 R23
       71 ADD                              R19 R20 R21
       72 GETTABLEN                        R21 R16 3
       73 GETTABLEN                        R22 R17 3
       74 MUL                              R20 R21 R22
       75 ADD                              R18 R19 R20
       76 GETTABLEN                        R20 R16 4
       77 GETTABLEN                        R21 R17 4
       78 MUL                              R19 R20 R21
       79 ADD                              R15 R18 R19
       80 FASTCALL1                        MATH_ABS R15 ; [+2]
       81 GETIMPORT                        R14 K5 [math.abs]
       83 CALL                             R14 1 1
       84 LOADN                            R17 -1
       85 LOADN                            R18 1
       86 FASTCALL3                        MATH_CLAMP R14 R17 R18
       88 MOVE                             R16 R14
       89 GETIMPORT                        R15 K7 [math.clamp]
       91 CALL                             R15 3 1
       92 MOVE                             R14 R15
       93 FASTCALL1                        MATH_ACOS R14 ; [+3]
       94 MOVE                             R17 R14
       95 GETIMPORT                        R16 K10 [math.acos]
       97 CALL                             R16 1 1
       98 MULK                             R15 R16 K8 [2]
       99 LOADK                            R16 K11 [0.008726646259971648]
      100 JUMPIFLE                         R16 R15 ; [+2]
      102 LOADB                            R13 0 +1
      103 LOADB                            R13 1
      104 JUMPIFNOT                        R13 ; [+3]
      105 GETUPVAL                         R14 2
      106 GETTABLE                         R13 R14 R10
      107 RETURN                           R13 1
      108 FORGLOOP                         R6 2 ; [-85]
      110 LOADNIL                          R6
      111 RETURN                           R6 1

PROTO_17:
        0 DUPTABLE                         R8 K6 [{"effectors", "chainPostByEffector", "chainPreByEffector", "primaryJointByEffector", "baselineLocalQuaternionByEffector", "localRotationDeltaByEffector"}]
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETIMPORT                        R9 K9 [table.clone]
        5 GETTABLEKS                       R10 R0 K0 ["effectors"]
        7 CALL                             R9 1 1
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R9 0 0
       11 SETTABLEKS                       R9 R8 K0 ["effectors"]
       13 JUMPIFEQKNIL                     R0 ; [+11]
       15 GETTABLEKS                       R10 R0 K1 ["chainPostByEffector"]
       17 JUMPIFEQKNIL                     R10 ; [+7]
       19 GETIMPORT                        R9 K9 [table.clone]
       21 GETTABLEKS                       R10 R0 K1 ["chainPostByEffector"]
       23 CALL                             R9 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R9
       26 SETTABLEKS                       R9 R8 K1 ["chainPostByEffector"]
       28 JUMPIFEQKNIL                     R0 ; [+11]
       30 GETTABLEKS                       R10 R0 K2 ["chainPreByEffector"]
       32 JUMPIFEQKNIL                     R10 ; [+7]
       34 GETIMPORT                        R9 K9 [table.clone]
       36 GETTABLEKS                       R10 R0 K2 ["chainPreByEffector"]
       38 CALL                             R9 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R9
       41 SETTABLEKS                       R9 R8 K2 ["chainPreByEffector"]
       43 JUMPIFEQKNIL                     R0 ; [+11]
       45 GETTABLEKS                       R10 R0 K3 ["primaryJointByEffector"]
       47 JUMPIFEQKNIL                     R10 ; [+7]
       49 GETIMPORT                        R9 K9 [table.clone]
       51 GETTABLEKS                       R10 R0 K3 ["primaryJointByEffector"]
       53 CALL                             R9 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R9
       56 SETTABLEKS                       R9 R8 K3 ["primaryJointByEffector"]
       58 JUMPIFEQKNIL                     R0 ; [+11]
       60 GETTABLEKS                       R10 R0 K4 ["baselineLocalQuaternionByEffector"]
       62 JUMPIFEQKNIL                     R10 ; [+7]
       64 GETIMPORT                        R9 K9 [table.clone]
       66 GETTABLEKS                       R10 R0 K4 ["baselineLocalQuaternionByEffector"]
       68 CALL                             R9 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R9
       71 SETTABLEKS                       R9 R8 K4 ["baselineLocalQuaternionByEffector"]
       73 JUMPIFEQKNIL                     R0 ; [+11]
       75 GETTABLEKS                       R10 R0 K5 ["localRotationDeltaByEffector"]
       77 JUMPIFEQKNIL                     R10 ; [+7]
       79 GETIMPORT                        R9 K9 [table.clone]
       81 GETTABLEKS                       R10 R0 K5 ["localRotationDeltaByEffector"]
       83 CALL                             R9 1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R9
       86 SETTABLEKS                       R9 R8 K5 ["localRotationDeltaByEffector"]
       88 MOVE                             R9 R3
       89 LOADNIL                          R10
       90 LOADNIL                          R11
       91 FORGPREP                         R9
       92 GETTABLE                         R14 R1 R13
       93 GETTABLE                         R15 R2 R13
       94 JUMPIFEQKNIL                     R14 ; [+17]
       96 JUMPIFEQKNIL                     R15 ; [+15]
       98 GETTABLEKS                       R16 R8 K0 ["effectors"]
      100 DUPTABLE                         R17 K12 [{"pre", "post"}]
      101 GETUPVAL                         R18 0
      102 MOVE                             R19 R14
      103 CALL                             R18 1 1
      104 SETTABLEKS                       R18 R17 K10 ["pre"]
      106 GETUPVAL                         R18 0
      107 MOVE                             R19 R15
      108 CALL                             R18 1 1
      109 SETTABLEKS                       R18 R17 K11 ["post"]
      111 SETTABLE                         R17 R16 R13
      112 FORGLOOP                         R9 2 ; [-21]
      114 JUMPIFEQKNIL                     R4 ; [+21]
      116 GETTABLEKS                       R9 R8 K1 ["chainPostByEffector"]
      118 JUMPIF                           R9 ; [+2]
      119 NEWTABLE                         R9 0 0
      121 MOVE                             R10 R3
      122 LOADNIL                          R11
      123 LOADNIL                          R12
      124 FORGPREP                         R10
      125 GETUPVAL                         R15 1
      126 MOVE                             R16 R4
      127 MOVE                             R17 R14
      128 CALL                             R15 2 1
      129 JUMPIFEQKNIL                     R15 ; [+2]
      131 SETTABLE                         R15 R9 R14
      132 FORGLOOP                         R10 2 ; [-8]
      134 SETTABLEKS                       R9 R8 K1 ["chainPostByEffector"]
      136 JUMPIFEQKNIL                     R6 ; [+24]
      138 GETTABLEKS                       R9 R8 K2 ["chainPreByEffector"]
      140 JUMPIF                           R9 ; [+2]
      141 NEWTABLE                         R9 0 0
      143 MOVE                             R10 R3
      144 LOADNIL                          R11
      145 LOADNIL                          R12
      146 FORGPREP                         R10
      147 GETTABLE                         R15 R9 R14
      148 JUMPIFNOTEQKNIL                  R15 ; [+8]
      150 GETUPVAL                         R15 1
      151 MOVE                             R16 R6
      152 MOVE                             R17 R14
      153 CALL                             R15 2 1
      154 JUMPIFEQKNIL                     R15 ; [+2]
      156 SETTABLE                         R15 R9 R14
      157 FORGLOOP                         R10 2 ; [-11]
      159 SETTABLEKS                       R9 R8 K2 ["chainPreByEffector"]
      161 JUMPIFEQKNIL                     R5 ; [+41]
      163 GETTABLEKS                       R9 R8 K3 ["primaryJointByEffector"]
      165 JUMPIF                           R9 ; [+2]
      166 NEWTABLE                         R9 0 0
      168 MOVE                             R10 R5
      169 LOADNIL                          R11
      170 LOADNIL                          R12
      171 FORGPREP                         R10
      172 GETTABLE                         R16 R9 R13
      173 JUMPIFEQKNIL                     R14 ; [+3]
      175 JUMPIFNOTEQKS                    R14 K13 [""] ; [+3]
      177 MOVE                             R15 R16
      178 JUMP                             ; [+17]
      179 JUMPIFEQKNIL                     R16 ; [+3]
      181 JUMPIFNOTEQKS                    R16 K13 [""] ; [+3]
      183 MOVE                             R15 R14
      184 JUMP                             ; [+11]
      185 GETUPVAL                         R19 2
      186 GETTABLE                         R18 R19 R16
      187 ORK                              R17 R18 K14 [99]
      188 GETUPVAL                         R20 2
      189 GETTABLE                         R19 R20 R14
      190 ORK                              R18 R19 K14 [99]
      191 JUMPIFNOTLE                      R17 R18 ; [+3]
      193 MOVE                             R15 R16
      194 JUMP                             ; [+1]
      195 MOVE                             R15 R14
      196 JUMPIFEQKNIL                     R15 ; [+2]
      198 SETTABLE                         R15 R9 R13
      199 FORGLOOP                         R10 2 ; [-28]
      201 SETTABLEKS                       R9 R8 K3 ["primaryJointByEffector"]
      203 MOVE                             R9 R3
      204 LOADNIL                          R10
      205 LOADNIL                          R11
      206 FORGPREP                         R9
      207 GETUPVAL                         R14 3
      208 GETTABLEKS                       R14 R14 K15 ["inferPrimaryPoseNameFromChain"]
      210 MOVE                             R15 R6
      211 MOVE                             R16 R4
      212 MOVE                             R17 R13
      213 CALL                             R14 3 1
      214 JUMPIFEQKNIL                     R14 ; [+35]
      216 GETTABLEKS                       R15 R8 K3 ["primaryJointByEffector"]
      218 JUMPIF                           R15 ; [+2]
      219 NEWTABLE                         R15 0 0
      221 GETTABLE                         R17 R15 R13
      222 JUMPIFEQKNIL                     R14 ; [+3]
      224 JUMPIFNOTEQKS                    R14 K13 [""] ; [+3]
      226 MOVE                             R16 R17
      227 JUMP                             ; [+17]
      228 JUMPIFEQKNIL                     R17 ; [+3]
      230 JUMPIFNOTEQKS                    R17 K13 [""] ; [+3]
      232 MOVE                             R16 R14
      233 JUMP                             ; [+11]
      234 GETUPVAL                         R20 2
      235 GETTABLE                         R19 R20 R17
      236 ORK                              R18 R19 K14 [99]
      237 GETUPVAL                         R21 2
      238 GETTABLE                         R20 R21 R14
      239 ORK                              R19 R20 K14 [99]
      240 JUMPIFNOTLE                      R18 R19 ; [+3]
      242 MOVE                             R16 R17
      243 JUMP                             ; [+1]
      244 MOVE                             R16 R14
      245 JUMPIFEQKNIL                     R16 ; [+2]
      247 SETTABLE                         R16 R15 R13
      248 SETTABLEKS                       R15 R8 K3 ["primaryJointByEffector"]
      250 FORGLOOP                         R9 2 ; [-44]
      252 JUMPIFEQKNIL                     R7 ; [+91]
      254 GETTABLEKS                       R9 R8 K4 ["baselineLocalQuaternionByEffector"]
      256 JUMPIF                           R9 ; [+2]
      257 NEWTABLE                         R9 0 0
      259 GETTABLEKS                       R10 R8 K5 ["localRotationDeltaByEffector"]
      261 JUMPIF                           R10 ; [+2]
      262 NEWTABLE                         R10 0 0
      264 GETTABLEKS                       R11 R7 K16 ["postLocalByEffector"]
      266 LOADNIL                          R12
      267 LOADNIL                          R13
      268 FORGPREP                         R11
      269 GETTABLE                         R17 R9 R14
      270 JUMPIFEQKNIL                     R17 ; [+6]
      272 GETIMPORT                        R16 K9 [table.clone]
      274 GETTABLE                         R17 R9 R14
      275 CALL                             R16 1 1
      276 JUMP                             ; [+2]
      277 NEWTABLE                         R16 0 0
      279 GETTABLE                         R18 R10 R14
      280 JUMPIFEQKNIL                     R18 ; [+6]
      282 GETIMPORT                        R17 K9 [table.clone]
      284 GETTABLE                         R18 R10 R14
      285 CALL                             R17 1 1
      286 JUMP                             ; [+2]
      287 NEWTABLE                         R17 0 0
      289 GETTABLEKS                       R19 R7 K17 ["proposedBaselineLocalByEffector"]
      291 GETTABLE                         R18 R19 R14
      292 MOVE                             R19 R15
      293 LOADNIL                          R20
      294 LOADNIL                          R21
      295 FORGPREP                         R19
      296 GETTABLE                         R24 R16 R22
      297 JUMPIFNOTEQKNIL                  R24 ; [+15]
      299 MOVE                             R24 R18
      300 JUMPIFNOT                        R24 ; [+1]
      301 GETTABLE                         R24 R18 R22
      302 JUMPIFEQKNIL                     R24 ; [+10]
      304 NEWTABLE                         R25 0 4
      306 GETTABLEN                        R26 R24 1
      307 GETTABLEN                        R27 R24 2
      308 GETTABLEN                        R28 R24 3
      309 GETTABLEN                        R29 R24 4
      310 SETLIST                          R25 R26 4 [1]
      312 SETTABLE                         R25 R16 R22
      313 GETTABLE                         R24 R16 R22
      314 JUMPIFEQKNIL                     R24 ; [+10]
      316 GETUPVAL                         R25 3
      317 GETTABLEKS                       R25 R25 K18 ["composeLocalRotationDelta"]
      319 MOVE                             R26 R24
      320 MOVE                             R27 R23
      321 CALL                             R25 2 1
      322 JUMPIFEQKNIL                     R25 ; [+2]
      324 SETTABLE                         R25 R17 R22
      325 FORGLOOP                         R19 2 ; [-30]
      327 SETTABLE                         R16 R9 R14
      328 GETIMPORT                        R19 K20 [next]
      330 MOVE                             R20 R17
      331 CALL                             R19 1 1
      332 JUMPIFEQKNIL                     R19 ; [+3]
      334 SETTABLE                         R17 R10 R14
      335 JUMP                             ; [+2]
      336 LOADNIL                          R19
      337 SETTABLE                         R19 R10 R14
      338 FORGLOOP                         R11 2 ; [-70]
      340 SETTABLEKS                       R9 R8 K4 ["baselineLocalQuaternionByEffector"]
      342 SETTABLEKS                       R10 R8 K5 ["localRotationDeltaByEffector"]
      344 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["ClipSampling"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 8 0
       20 NEWTABLE                         R3 32 0
       22 LOADN                            R4 1
       23 SETTABLEKS                       R4 R3 K10 ["LowerTorso"]
       25 LOADN                            R4 2
       26 SETTABLEKS                       R4 R3 K11 ["UpperTorso"]
       28 LOADN                            R4 3
       29 SETTABLEKS                       R4 R3 K12 ["Head"]
       31 LOADN                            R4 1
       32 SETTABLEKS                       R4 R3 K13 ["Waist"]
       34 LOADN                            R4 3
       35 SETTABLEKS                       R4 R3 K14 ["Neck"]
       37 LOADN                            R4 1
       38 SETTABLEKS                       R4 R3 K15 ["LeftUpperArm"]
       40 LOADN                            R4 2
       41 SETTABLEKS                       R4 R3 K16 ["LeftLowerArm"]
       43 LOADN                            R4 3
       44 SETTABLEKS                       R4 R3 K17 ["LeftHand"]
       46 LOADN                            R4 1
       47 SETTABLEKS                       R4 R3 K18 ["RightUpperArm"]
       49 LOADN                            R4 2
       50 SETTABLEKS                       R4 R3 K19 ["RightLowerArm"]
       52 LOADN                            R4 3
       53 SETTABLEKS                       R4 R3 K20 ["RightHand"]
       55 LOADN                            R4 1
       56 SETTABLEKS                       R4 R3 K21 ["LeftUpperLeg"]
       58 LOADN                            R4 2
       59 SETTABLEKS                       R4 R3 K22 ["LeftLowerLeg"]
       61 LOADN                            R4 3
       62 SETTABLEKS                       R4 R3 K23 ["LeftFoot"]
       64 LOADN                            R4 1
       65 SETTABLEKS                       R4 R3 K24 ["RightUpperLeg"]
       67 LOADN                            R4 2
       68 SETTABLEKS                       R4 R3 K25 ["RightLowerLeg"]
       70 LOADN                            R4 3
       71 SETTABLEKS                       R4 R3 K26 ["RightFoot"]
       73 LOADN                            R4 1
       74 SETTABLEKS                       R4 R3 K27 ["Left Arm"]
       76 LOADN                            R4 1
       77 SETTABLEKS                       R4 R3 K28 ["Right Arm"]
       79 LOADN                            R4 1
       80 SETTABLEKS                       R4 R3 K29 ["Left Leg"]
       82 LOADN                            R4 1
       83 SETTABLEKS                       R4 R3 K30 ["Right Leg"]
       85 LOADN                            R4 0
       86 SETTABLEKS                       R4 R3 K31 ["HumanoidRootPart"]
       88 DUPCLOSURE                       R4 K32 [PROTO_0]
       89 CAPTURE                          VAL R3
       90 DUPTABLE                         R5 K38 [{"left_hand", "right_hand", "left_foot", "right_foot", "spine"}]
       91 NEWTABLE                         R6 0 3
       93 LOADK                            R7 K39 ["left_upper_arm"]
       94 LOADK                            R8 K40 ["left_lower_arm"]
       95 LOADK                            R9 K33 ["left_hand"]
       96 SETLIST                          R6 R7 3 [1]
       98 SETTABLEKS                       R6 R5 K33 ["left_hand"]
      100 NEWTABLE                         R6 0 3
      102 LOADK                            R7 K41 ["right_upper_arm"]
      103 LOADK                            R8 K42 ["right_lower_arm"]
      104 LOADK                            R9 K34 ["right_hand"]
      105 SETLIST                          R6 R7 3 [1]
      107 SETTABLEKS                       R6 R5 K34 ["right_hand"]
      109 NEWTABLE                         R6 0 3
      111 LOADK                            R7 K43 ["left_upper_leg"]
      112 LOADK                            R8 K44 ["left_lower_leg"]
      113 LOADK                            R9 K35 ["left_foot"]
      114 SETLIST                          R6 R7 3 [1]
      116 SETTABLEKS                       R6 R5 K35 ["left_foot"]
      118 NEWTABLE                         R6 0 3
      120 LOADK                            R7 K45 ["right_upper_leg"]
      121 LOADK                            R8 K46 ["right_lower_leg"]
      122 LOADK                            R9 K36 ["right_foot"]
      123 SETLIST                          R6 R7 3 [1]
      125 SETTABLEKS                       R6 R5 K36 ["right_foot"]
      127 NEWTABLE                         R6 0 3
      129 LOADK                            R7 K47 ["lower_torso"]
      130 LOADK                            R8 K48 ["upper_torso"]
      131 LOADK                            R9 K49 ["head"]
      132 SETLIST                          R6 R7 3 [1]
      134 SETTABLEKS                       R6 R5 K37 ["spine"]
      136 DUPTABLE                         R6 K50 [{["lower_torso"] = "LowerTorso", ["upper_torso"] = "UpperTorso", ["head"] = "Head", ["left_upper_arm"] = "LeftUpperArm", ["left_lower_arm"] = "LeftLowerArm", ["left_hand"] = "LeftHand", ["right_upper_arm"] = "RightUpperArm", ["right_lower_arm"] = "RightLowerArm", ["right_hand"] = "RightHand", ["left_upper_leg"] = "LeftUpperLeg", ["left_lower_leg"] = "LeftLowerLeg", ["left_foot"] = "LeftFoot", ["right_upper_leg"] = "RightUpperLeg", ["right_lower_leg"] = "RightLowerLeg", ["right_foot"] = "RightFoot"}]
      137 NEWTABLE                         R7 0 5
      139 LOADK                            R8 K33 ["left_hand"]
      140 LOADK                            R9 K34 ["right_hand"]
      141 LOADK                            R10 K35 ["left_foot"]
      142 LOADK                            R11 K36 ["right_foot"]
      143 LOADK                            R12 K37 ["spine"]
      144 SETLIST                          R7 R8 5 [1]
      146 DUPCLOSURE                       R8 K51 [PROTO_1]
      147 DUPCLOSURE                       R9 K52 [PROTO_2]
      148 DUPCLOSURE                       R10 K53 [PROTO_3]
      149 DUPCLOSURE                       R11 K54 [PROTO_4]
      150 DUPCLOSURE                       R12 K55 [PROTO_5]
      151 DUPCLOSURE                       R13 K56 [PROTO_6]
      152 DUPCLOSURE                       R14 K57 [PROTO_7]
      153 NEWTABLE                         R15 0 4
      155 LOADN                            R16 0
      156 LOADN                            R17 0
      157 LOADN                            R18 0
      158 LOADN                            R19 1
      159 SETLIST                          R15 R16 4 [1]
      161 DUPCLOSURE                       R16 K58 [PROTO_8]
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R15
      166 SETTABLEKS                       R16 R2 K59 ["composeLocalRotationDelta"]
      168 DUPCLOSURE                       R16 K60 [PROTO_9]
      169 DUPCLOSURE                       R17 K61 [PROTO_10]
      170 CAPTURE                          VAL R7
      171 DUPCLOSURE                       R18 K62 [PROTO_11]
      172 CAPTURE                          VAL R17
      173 SETTABLEKS                       R18 R2 K63 ["snapshotEffectorsFromSample"]
      175 DUPCLOSURE                       R18 K64 [PROTO_12]
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R6
      178 SETTABLEKS                       R18 R2 K65 ["effectorChainPoseNames"]
      180 DUPCLOSURE                       R18 K66 [PROTO_13]
      181 DUPCLOSURE                       R19 K67 [PROTO_14]
      182 DUPCLOSURE                       R20 K68 [PROTO_15]
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R18
      185 DUPCLOSURE                       R21 K69 [PROTO_16]
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R6
      189 SETTABLEKS                       R21 R2 K70 ["inferPrimaryPoseNameFromChain"]
      191 DUPCLOSURE                       R21 K71 [PROTO_17]
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R2
      196 SETTABLEKS                       R21 R2 K72 ["mergeDragEditSnapshot"]
      198 RETURN                           R2 1
