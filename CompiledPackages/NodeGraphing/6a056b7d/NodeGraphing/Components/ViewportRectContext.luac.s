PROTO_0:
        0 LOADK                            R3 K0 [0.1]
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["position"]
        7 JUMPIFNOT                        R7 ; [+34]
        8 GETTABLEKS                       R7 R6 K1 ["size"]
       10 JUMPIFNOT                        R7 ; [+31]
       11 GETIMPORT                        R7 K4 [Rect.new]
       13 GETTABLEKS                       R8 R6 K0 ["position"]
       15 GETTABLEKS                       R10 R6 K0 ["position"]
       17 GETIMPORT                        R11 K6 [Vector2.new]
       19 GETTABLEKS                       R12 R6 K1 ["size"]
       21 GETTABLEKS                       R12 R12 K7 ["X"]
       23 GETTABLEKS                       R14 R6 K1 ["size"]
       25 GETTABLEKS                       R14 R14 K8 ["Y"]
       27 MINUS                            R13 R14
       28 CALL                             R11 2 1
       29 ADD                              R9 R10 R11
       30 CALL                             R7 2 1
       31 JUMPIFNOTEQKNIL                  R1 ; [+3]
       33 MOVE                             R1 R7
       34 JUMP                             ; [+7]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K9 ["union"]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R7
       40 CALL                             R8 2 1
       41 MOVE                             R1 R8
       42 FORGLOOP                         R2 2 ; [-38]
       44 JUMPIFNOTEQKNIL                  R1 ; [+9]
       46 GETIMPORT                        R2 K4 [Rect.new]
       48 LOADN                            R3 0
       49 LOADN                            R4 0
       50 LOADN                            R5 0
       51 LOADN                            R6 0
       52 CALL                             R2 4 -1
       53 RETURN                           R2 -1
       54 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADNIL                          R2
        8 MOVE                             R3 R1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K2 ["isSelected"]
       14 JUMPIFNOT                        R8 ; [+31]
       15 GETIMPORT                        R8 K5 [Rect.new]
       17 GETTABLEKS                       R9 R7 K6 ["position"]
       19 GETTABLEKS                       R11 R7 K6 ["position"]
       21 GETIMPORT                        R12 K8 [Vector2.new]
       23 GETTABLEKS                       R13 R7 K9 ["size"]
       25 GETTABLEKS                       R13 R13 K10 ["X"]
       27 GETTABLEKS                       R15 R7 K9 ["size"]
       29 GETTABLEKS                       R15 R15 K11 ["Y"]
       31 MINUS                            R14 R15
       32 CALL                             R12 2 1
       33 ADD                              R10 R11 R12
       34 CALL                             R8 2 1
       35 JUMPIFNOTEQKNIL                  R2 ; [+3]
       37 MOVE                             R2 R8
       38 JUMP                             ; [+7]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K12 ["union"]
       42 MOVE                             R10 R2
       43 MOVE                             R11 R8
       44 CALL                             R9 2 1
       45 MOVE                             R2 R9
       46 FORGLOOP                         R3 2 ; [-35]
       48 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1
       14 LOADK                            R2 K2 [∞]
       15 LOADK                            R3 K2 [∞]
       16 LOADK                            R4 K3 [-∞]
       17 LOADK                            R5 K3 [-∞]
       18 MOVE                             R6 R1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R11 R10 K4 ["position"]
       24 JUMPIFNOT                        R11 ; [+56]
       25 GETTABLEKS                       R11 R10 K5 ["size"]
       27 JUMPIFNOT                        R11 ; [+53]
       28 GETTABLEKS                       R11 R10 K4 ["position"]
       30 GETTABLEKS                       R13 R10 K4 ["position"]
       32 GETIMPORT                        R14 K8 [Vector2.new]
       34 GETTABLEKS                       R15 R10 K5 ["size"]
       36 GETTABLEKS                       R15 R15 K9 ["X"]
       38 GETTABLEKS                       R17 R10 K5 ["size"]
       40 GETTABLEKS                       R17 R17 K10 ["Y"]
       42 MINUS                            R16 R17
       43 CALL                             R14 2 1
       44 ADD                              R12 R13 R14
       45 GETTABLEKS                       R15 R11 K9 ["X"]
       47 FASTCALL2                        MATH_MIN R2 R15 ; [+4]
       49 MOVE                             R14 R2
       50 GETIMPORT                        R13 K13 [math.min]
       52 CALL                             R13 2 1
       53 MOVE                             R2 R13
       54 GETTABLEKS                       R15 R11 K10 ["Y"]
       56 FASTCALL2                        MATH_MIN R3 R15 ; [+4]
       58 MOVE                             R14 R3
       59 GETIMPORT                        R13 K13 [math.min]
       61 CALL                             R13 2 1
       62 MOVE                             R3 R13
       63 GETTABLEKS                       R15 R12 K9 ["X"]
       65 FASTCALL2                        MATH_MAX R4 R15 ; [+4]
       67 MOVE                             R14 R4
       68 GETIMPORT                        R13 K15 [math.max]
       70 CALL                             R13 2 1
       71 MOVE                             R4 R13
       72 GETTABLEKS                       R15 R12 K10 ["Y"]
       74 FASTCALL2                        MATH_MAX R5 R15 ; [+4]
       76 MOVE                             R14 R5
       77 GETIMPORT                        R13 K15 [math.max]
       79 CALL                             R13 2 1
       80 MOVE                             R5 R13
       81 FORGLOOP                         R6 2 ; [-60]
       83 JUMPIFLT                         R4 R2 ; [+3]
       85 JUMPIFNOTLT                      R5 R3 ; [+9]
       87 GETIMPORT                        R6 K17 [Rect.new]
       89 LOADN                            R7 0
       90 LOADN                            R8 0
       91 LOADN                            R9 0
       92 LOADN                            R10 0
       93 CALL                             R6 4 -1
       94 RETURN                           R6 -1
       95 GETIMPORT                        R6 K17 [Rect.new]
       97 MOVE                             R7 R2
       98 MOVE                             R8 R3
       99 MOVE                             R9 R4
      100 MOVE                             R10 R5
      101 CALL                             R6 4 -1
      102 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Min"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.zero]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R5 R3 K1 ["X"]
       11 DIVK                             R4 R5 K0 [2]
       12 GETTABLEKS                       R6 R3 K2 ["Y"]
       14 DIVK                             R5 R6 K0 [2]
       15 GETIMPORT                        R6 K5 [Rect.new]
       17 GETTABLEKS                       R8 R2 K1 ["X"]
       19 SUB                              R7 R8 R4
       20 GETTABLEKS                       R9 R2 K2 ["Y"]
       22 SUB                              R8 R9 R5
       23 GETTABLEKS                       R10 R2 K1 ["X"]
       25 ADD                              R9 R10 R4
       26 GETTABLEKS                       R11 R2 K2 ["Y"]
       28 ADD                              R10 R11 R5
       29 CALL                             R6 4 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K6 ["computeZoomedRect"]
       33 MOVE                             R8 R6
       34 MOVE                             R9 R1
       35 CALL                             R7 2 -1
       36 RETURN                           R7 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["union"]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 NAMECALL                         R1 R0 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 JUMPIFEQKNIL                     R1 ; [+16]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K0 ["current"]
       24 GETUPVAL                         R2 3
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K0 ["current"]
       28 GETUPVAL                         R2 4
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K0 ["current"]
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 LOADN                            R6 1
        4 LOADN                            R7 -1
        5 CALL                             R5 2 1
        6 MUL                              R3 R4 R5
        7 GETUPVAL                         R4 1
        8 DIV                              R2 R3 R4
        9 ADD                              R1 R0 R2
       10 GETUPVAL                         R5 0
       11 GETIMPORT                        R6 K2 [Vector2.new]
       13 LOADN                            R7 1
       14 LOADN                            R8 -1
       15 CALL                             R6 2 1
       16 MUL                              R4 R5 R6
       17 GETUPVAL                         R5 2
       18 DIV                              R3 R4 R5
       19 ADD                              R2 R0 R3
       20 SUB                              R4 R1 R2
       21 ADD                              R3 R0 R4
       22 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 LOADB                            R3 0
        8 CALL                             R2 1 1
        9 SUB                              R3 R1 R2
       10 LOADNIL                          R4
       11 FASTCALL1                        MATH_ABS R3 ; [+3]
       12 MOVE                             R6 R3
       13 GETIMPORT                        R5 K3 [math.abs]
       15 CALL                             R5 1 1
       16 LOADK                            R6 K4 [0.001]
       17 JUMPIFNOTLT                      R5 R6 ; [+15]
       19 MOVE                             R4 R1
       20 GETUPVAL                         R5 0
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K0 ["current"]
       24 GETUPVAL                         R5 2
       25 LOADB                            R6 0
       26 SETTABLEKS                       R6 R5 K0 ["current"]
       28 GETUPVAL                         R5 3
       29 LOADNIL                          R6
       30 SETTABLEKS                       R6 R5 K0 ["current"]
       32 JUMP                             ; [+8]
       33 MULK                             R7 R0 K6 [-50]
       34 FASTCALL1                        MATH_EXP R7 ; [+2]
       35 GETIMPORT                        R6 K8 [math.exp]
       37 CALL                             R6 1 1
       38 SUBRK                            R5 K5 [1] R6
       39 MUL                              R6 R3 R5
       40 ADD                              R4 R2 R6
       41 LOADNIL                          R5
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K0 ["current"]
       45 JUMPIFNOT                        R6 ; [+9]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K0 ["current"]
       49 JUMPIFEQKNIL                     R6 ; [+13]
       51 MOVE                             R7 R6
       52 CALL                             R7 0 1
       53 MOVE                             R5 R7
       54 JUMP                             ; [+8]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K0 ["current"]
       58 JUMPIFEQKNIL                     R6 ; [+4]
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R5 R6 K0 ["current"]
       63 JUMPIFEQKNIL                     R5 ; [+7]
       65 GETUPVAL                         R6 5
       66 NEWCLOSURE                       R7 P0
       67 CAPTURE                          REF R5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          REF R4
       70 CALL                             R6 1 0
       71 GETUPVAL                         R6 6
       72 MOVE                             R7 R4
       73 CALL                             R6 1 0
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K0 ["current"]
       77 JUMPIFNOTEQKNIL                  R6 ; [+53]
       79 LOADK                            R6 K9 [0.1]
       80 JUMPIFLT                         R4 R6 ; [+4]
       82 LOADN                            R6 1
       83 JUMPIFNOTLT                      R6 R4 ; [+15]
       85 GETUPVAL                         R6 0
       86 MOVE                             R8 R4
       87 LOADK                            R11 K9 [0.1]
       88 LOADN                            R12 1
       89 FASTCALL3                        MATH_CLAMP R8 R11 R12
       91 MOVE                             R10 R8
       92 GETIMPORT                        R9 K11 [math.clamp]
       94 CALL                             R9 3 1
       95 MOVE                             R7 R9
       96 SETTABLEKS                       R7 R6 K0 ["current"]
       98 JUMP                             ; [+32]
       99 GETUPVAL                         R6 7
      100 GETTABLEKS                       R6 R6 K0 ["current"]
      102 JUMPIFEQKNIL                     R6 ; [+8]
      104 NAMECALL                         R7 R6 K12 ["Disconnect"]
      106 CALL                             R7 1 0
      107 GETUPVAL                         R7 7
      108 LOADNIL                          R8
      109 SETTABLEKS                       R8 R7 K0 ["current"]
      111 GETUPVAL                         R7 0
      112 GETTABLEKS                       R7 R7 K0 ["current"]
      114 JUMPIFEQKNIL                     R7 ; [+16]
      116 GETUPVAL                         R8 6
      117 MOVE                             R9 R7
      118 CALL                             R8 1 0
      119 GETUPVAL                         R8 0
      120 LOADNIL                          R9
      121 SETTABLEKS                       R9 R8 K0 ["current"]
      123 GETUPVAL                         R8 2
      124 LOADB                            R9 0
      125 SETTABLEKS                       R9 R8 K0 ["current"]
      127 GETUPVAL                         R8 3
      128 LOADNIL                          R9
      129 SETTABLEKS                       R9 R8 K0 ["current"]
      131 CLOSEUPVALS                      R4
      132 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+9]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K0 ["current"]
       13 RETURN                           R0 0

PROTO_18:
        0 LOADNIL                          R3
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+13]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["current"]
       11 JUMPIF                           R4 ; [+3]
       12 GETUPVAL                         R4 1
       13 LOADB                            R5 0
       14 CALL                             R4 1 1
       15 MOVE                             R5 R0
       16 MOVE                             R6 R4
       17 CALL                             R5 1 1
       18 MOVE                             R3 R5
       19 JUMP                             ; [+1]
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 0
       22 SETTABLEKS                       R3 R4 K3 ["current"]
       24 GETUPVAL                         R4 2
       25 JUMPIFEQKB                       R1 TRUE ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K3 ["current"]
       31 GETUPVAL                         R4 3
       32 SETTABLEKS                       R2 R4 K3 ["current"]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K3 ["current"]
       37 JUMPIFNOTEQKNIL                  R4 ; [+9]
       39 GETUPVAL                         R4 4
       40 GETUPVAL                         R5 5
       41 GETUPVAL                         R7 6
       42 NAMECALL                         R5 R5 K4 ["Connect"]
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K3 ["current"]
       47 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 1
        4 DIV                              R1 R2 R3
        5 GETTABLEKS                       R4 R0 K0 ["X"]
        7 GETTABLEKS                       R5 R1 K0 ["X"]
        9 ADD                              R2 R4 R5
       10 GETTABLEKS                       R4 R0 K1 ["Y"]
       12 GETTABLEKS                       R5 R1 K1 ["Y"]
       14 SUB                              R3 R4 R5
       15 GETIMPORT                        R4 K4 [Vector2.new]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 LOADN                            R6 1
        4 LOADN                            R7 -1
        5 CALL                             R5 2 1
        6 MUL                              R3 R4 R5
        7 GETUPVAL                         R4 1
        8 DIV                              R2 R3 R4
        9 ADD                              R1 R0 R2
       10 GETUPVAL                         R5 0
       11 GETIMPORT                        R6 K2 [Vector2.new]
       13 LOADN                            R7 1
       14 LOADN                            R8 -1
       15 CALL                             R6 2 1
       16 MUL                              R4 R5 R6
       17 GETUPVAL                         R5 2
       18 DIV                              R3 R4 R5
       19 ADD                              R2 R0 R3
       20 SUB                              R4 R1 R2
       21 ADD                              R3 R0 R4
       22 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 1
        3 ADDK                             R5 R0 K0 [1]
        4 MUL                              R4 R2 R5
        5 LOADK                            R7 K1 [0.1]
        6 LOADN                            R8 1
        7 FASTCALL3                        MATH_CLAMP R4 R7 R8
        9 MOVE                             R6 R4
       10 GETIMPORT                        R5 K4 [math.clamp]
       12 CALL                             R5 3 1
       13 MOVE                             R3 R5
       14 JUMPIFEQKNIL                     R1 ; [+7]
       16 GETUPVAL                         R4 1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 1
        3 MOVE                             R1 R0
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K0 ["Width"]
       10 JUMPIFEQKN                       R2 K1 [0] ; [+5]
       12 GETTABLEKS                       R2 R1 K2 ["Height"]
       14 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["addPadding"]
       20 MOVE                             R3 R1
       21 LOADN                            R4 20
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 LOADB                            R4 0
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R3 K4 ["X"]
       28 GETTABLEKS                       R6 R2 K0 ["Width"]
       30 DIV                              R4 R5 R6
       31 GETTABLEKS                       R6 R3 K5 ["Y"]
       33 GETTABLEKS                       R7 R2 K2 ["Height"]
       35 DIV                              R5 R6 R7
       36 FASTCALL2                        MATH_MIN R4 R5 ; [+5]
       38 MOVE                             R7 R4
       39 MOVE                             R8 R5
       40 GETIMPORT                        R6 K8 [math.min]
       42 CALL                             R6 2 1
       43 GETTABLEKS                       R8 R1 K9 ["Min"]
       45 GETTABLEKS                       R8 R8 K4 ["X"]
       47 GETTABLEKS                       R10 R1 K0 ["Width"]
       49 DIVK                             R9 R10 K10 [2]
       50 ADD                              R7 R8 R9
       51 GETTABLEKS                       R9 R1 K9 ["Min"]
       53 GETTABLEKS                       R9 R9 K5 ["Y"]
       55 GETTABLEKS                       R11 R1 K2 ["Height"]
       57 DIVK                             R10 R11 K10 [2]
       58 ADD                              R8 R9 R10
       59 GETUPVAL                         R9 4
       60 LOADK                            R12 K11 [0.1]
       61 LOADN                            R13 1
       62 FASTCALL3                        MATH_CLAMP R6 R12 R13
       64 MOVE                             R11 R6
       65 GETIMPORT                        R10 K13 [math.clamp]
       67 CALL                             R10 3 1
       68 CALL                             R9 1 0
       69 GETUPVAL                         R9 5
       70 GETIMPORT                        R10 K16 [Vector2.new]
       72 MOVE                             R11 R7
       73 MOVE                             R12 R8
       74 CALL                             R10 2 -1
       75 CALL                             R9 -1 0
       76 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R0 K14 [{"observeRenderedGraphRect", "observeSelectionRect", "observeViewportRect", "observeZoomRatio", "observeHintIsDragging", "setAbsoluteSize", "panViewport", "zoomViewport", "setZoomRatio", "setViewportPosition", "frameSelection", "setHintIsDragging", "setZoomRatioTarget", "setCursorOffsetProvider"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeRenderedGraphRect"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeSelectionRect"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeViewportRect"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeZoomRatio"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["observeHintIsDragging"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setAbsoluteSize"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["panViewport"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["zoomViewport"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["setZoomRatio"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["setViewportPosition"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["frameSelection"]
       34 GETUPVAL                         R1 11
       35 SETTABLEKS                       R1 R0 K11 ["setHintIsDragging"]
       37 GETUPVAL                         R1 12
       38 SETTABLEKS                       R1 R0 K12 ["setZoomRatioTarget"]
       40 GETUPVAL                         R1 13
       41 SETTABLEKS                       R1 R0 K13 ["setCursorOffsetProvider"]
       43 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["initialGraphRect"]
        9 JUMPIF                           R2 ; [+7]
       10 GETIMPORT                        R2 K5 [Rect.new]
       12 GETIMPORT                        R3 K8 [Vector2.zero]
       14 GETIMPORT                        R4 K8 [Vector2.zero]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K9 ["useMemo"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R1 K10 ["nodeRenderInfoDispatcher"]
       28 GETTABLEKS                       R6 R6 K11 ["observeMap"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K9 ["useMemo"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 NEWTABLE                         R6 0 1
       43 GETTABLEKS                       R7 R1 K10 ["nodeRenderInfoDispatcher"]
       45 GETTABLEKS                       R7 R7 K11 ["observeMap"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       53 NEWCLOSURE                       R6 P2
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R7 0 0
       58 CALL                             R5 2 2
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       62 DUPCLOSURE                       R8 K12 [PROTO_7]
       63 CAPTURE                          UPVAL U2
       64 NEWTABLE                         R9 0 0
       66 CALL                             R7 2 2
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       70 DUPCLOSURE                       R10 K13 [PROTO_8]
       71 CAPTURE                          UPVAL U2
       72 NEWTABLE                         R11 0 0
       74 CALL                             R9 2 2
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K9 ["useMemo"]
       78 DUPCLOSURE                       R12 K14 [PROTO_9]
       79 CAPTURE                          UPVAL U2
       80 NEWTABLE                         R13 0 0
       82 CALL                             R11 2 2
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K9 ["useMemo"]
       86 NEWCLOSURE                       R14 P6
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R11
       91 CAPTURE                          UPVAL U3
       92 NEWTABLE                         R15 0 3
       94 MOVE                             R16 R5
       95 MOVE                             R17 R11
       96 MOVE                             R18 R7
       97 SETLIST                          R15 R16 3 [1]
       99 CALL                             R13 2 1
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R14 R14 K9 ["useMemo"]
      103 NEWCLOSURE                       R15 P7
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R13
      107 CAPTURE                          UPVAL U3
      108 NEWTABLE                         R16 0 2
      110 MOVE                             R17 R13
      111 MOVE                             R18 R4
      112 SETLIST                          R16 R17 2 [1]
      114 CALL                             R14 2 1
      115 GETUPVAL                         R15 0
      116 GETTABLEKS                       R15 R15 K15 ["useRef"]
      118 LOADNIL                          R16
      119 CALL                             R15 1 1
      120 GETUPVAL                         R16 0
      121 GETTABLEKS                       R16 R16 K15 ["useRef"]
      123 LOADB                            R17 0
      124 CALL                             R16 1 1
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R17 R17 K15 ["useRef"]
      128 LOADNIL                          R18
      129 CALL                             R17 1 1
      130 GETUPVAL                         R18 0
      131 GETTABLEKS                       R18 R18 K15 ["useRef"]
      133 LOADNIL                          R19
      134 CALL                             R18 1 1
      135 GETUPVAL                         R19 0
      136 GETTABLEKS                       R19 R19 K15 ["useRef"]
      138 LOADNIL                          R20
      139 CALL                             R19 1 1
      140 NEWCLOSURE                       R20 P8
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R17
      146 NEWCLOSURE                       R21 P9
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R19
      155 GETTABLEKS                       R22 R0 K16 ["renderStepped"]
      157 JUMPIF                           R22 ; [+3]
      158 GETUPVAL                         R22 7
      159 GETTABLEKS                       R22 R22 K17 ["RenderStepped"]
      161 NEWCLOSURE                       R23 P10
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R21
      165 GETUPVAL                         R24 0
      166 GETTABLEKS                       R24 R24 K18 ["useCallback"]
      168 NEWCLOSURE                       R25 P11
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R21
      176 NEWTABLE                         R26 0 0
      178 CALL                             R24 2 1
      179 GETUPVAL                         R25 0
      180 GETTABLEKS                       R25 R25 K18 ["useCallback"]
      182 NEWCLOSURE                       R26 P12
      183 CAPTURE                          VAL R18
      184 NEWTABLE                         R27 0 0
      186 CALL                             R25 2 1
      187 GETUPVAL                         R26 0
      188 GETTABLEKS                       R26 R26 K19 ["useEffect"]
      190 NEWCLOSURE                       R27 P13
      191 CAPTURE                          VAL R20
      192 NEWTABLE                         R28 0 0
      194 CALL                             R26 2 0
      195 GETUPVAL                         R26 0
      196 GETTABLEKS                       R26 R26 K18 ["useCallback"]
      198 NEWCLOSURE                       R27 P14
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R7
      201 NEWTABLE                         R28 0 2
      203 MOVE                             R29 R7
      204 MOVE                             R30 R6
      205 SETLIST                          R28 R29 2 [1]
      207 CALL                             R26 2 1
      208 GETUPVAL                         R27 0
      209 GETTABLEKS                       R27 R27 K18 ["useCallback"]
      211 NEWCLOSURE                       R28 P15
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R8
      215 NEWTABLE                         R29 0 3
      217 MOVE                             R30 R6
      218 MOVE                             R31 R8
      219 MOVE                             R32 R7
      220 SETLIST                          R29 R30 3 [1]
      222 CALL                             R27 2 1
      223 GETUPVAL                         R28 0
      224 GETTABLEKS                       R28 R28 K18 ["useCallback"]
      226 NEWCLOSURE                       R29 P16
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R4
      229 CAPTURE                          UPVAL U3
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R6
      233 NEWTABLE                         R30 0 5
      235 GETTABLEKS                       R31 R1 K10 ["nodeRenderInfoDispatcher"]
      237 MOVE                             R32 R4
      238 MOVE                             R33 R11
      239 MOVE                             R34 R8
      240 MOVE                             R35 R6
      241 SETLIST                          R30 R31 5 [1]
      243 CALL                             R28 2 1
      244 GETUPVAL                         R29 0
      245 GETTABLEKS                       R29 R29 K9 ["useMemo"]
      247 NEWCLOSURE                       R30 P17
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R9
      253 CAPTURE                          VAL R12
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R27
      256 CAPTURE                          VAL R8
      257 CAPTURE                          VAL R6
      258 CAPTURE                          VAL R28
      259 CAPTURE                          VAL R10
      260 CAPTURE                          VAL R24
      261 CAPTURE                          VAL R25
      262 NEWTABLE                         R31 0 14
      264 MOVE                             R32 R14
      265 MOVE                             R33 R13
      266 MOVE                             R34 R3
      267 MOVE                             R35 R7
      268 MOVE                             R36 R9
      269 MOVE                             R37 R12
      270 MOVE                             R38 R26
      271 MOVE                             R39 R27
      272 MOVE                             R40 R8
      273 MOVE                             R41 R6
      274 MOVE                             R42 R28
      275 MOVE                             R43 R10
      276 MOVE                             R44 R24
      277 MOVE                             R45 R25
      278 SETLIST                          R31 R32 14 [1]
      280 CALL                             R29 2 1
      281 GETUPVAL                         R30 0
      282 GETTABLEKS                       R30 R30 K20 ["createElement"]
      284 GETUPVAL                         R31 8
      285 GETTABLEKS                       R31 R31 K21 ["Provider"]
      287 DUPTABLE                         R32 K23 [{"value"}]
      288 SETTABLEKS                       R29 R32 K22 ["value"]
      290 GETTABLEKS                       R33 R0 K24 ["children"]
      292 CALL                             R30 3 -1
      293 RETURN                           R30 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["NodeGraphing"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["GraphContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["NodeViewTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R1 K13 ["Parent"]
       29 GETTABLEKS                       R5 R5 K14 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R1 K13 ["Parent"]
       36 GETTABLEKS                       R6 R6 K15 ["ReactUtils"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R1 K16 ["Util"]
       43 GETTABLEKS                       R7 R7 K17 ["RectUtil"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R1 K13 ["Parent"]
       50 GETTABLEKS                       R8 R8 K18 ["Signals"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R1 K13 ["Parent"]
       57 GETTABLEKS                       R9 R9 K19 ["SignalsUtils"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R1 K20 ["Flags"]
       64 GETTABLEKS                       R10 R10 K21 ["getFFlagAnimGraphUI_RunTimeDebug"]
       66 CALL                             R9 1 1
       67 DUPTABLE                         R10 K36 [{"observeZoomRatio", "observeRenderedGraphRect", "observeViewportRect", "observeSelectionRect", "setZoomRatio", "setAbsoluteSize", "panViewport", "zoomViewport", "setViewportPosition", "frameSelection", "observeHintIsDragging", "setHintIsDragging", "setZoomRatioTarget", "setCursorOffsetProvider"}]
       68 GETTABLEKS                       R11 R8 K37 ["of"]
       70 LOADN                            R12 1
       71 CALL                             R11 1 1
       72 SETTABLEKS                       R11 R10 K22 ["observeZoomRatio"]
       74 GETTABLEKS                       R11 R8 K37 ["of"]
       76 GETIMPORT                        R12 K40 [Rect.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 0
       80 LOADN                            R15 0
       81 LOADN                            R16 0
       82 CALL                             R12 4 -1
       83 CALL                             R11 -1 1
       84 SETTABLEKS                       R11 R10 K23 ["observeRenderedGraphRect"]
       86 GETTABLEKS                       R11 R8 K37 ["of"]
       88 GETIMPORT                        R12 K40 [Rect.new]
       90 LOADN                            R13 0
       91 LOADN                            R14 0
       92 LOADN                            R15 0
       93 LOADN                            R16 0
       94 CALL                             R12 4 -1
       95 CALL                             R11 -1 1
       96 SETTABLEKS                       R11 R10 K24 ["observeViewportRect"]
       98 GETTABLEKS                       R11 R8 K37 ["of"]
      100 LOADNIL                          R12
      101 CALL                             R11 1 1
      102 SETTABLEKS                       R11 R10 K25 ["observeSelectionRect"]
      104 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      106 LOADK                            R12 K26 ["setZoomRatio"]
      107 CALL                             R11 1 1
      108 SETTABLEKS                       R11 R10 K26 ["setZoomRatio"]
      110 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      112 LOADK                            R12 K27 ["setAbsoluteSize"]
      113 CALL                             R11 1 1
      114 SETTABLEKS                       R11 R10 K27 ["setAbsoluteSize"]
      116 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      118 LOADK                            R12 K28 ["panViewport"]
      119 CALL                             R11 1 1
      120 SETTABLEKS                       R11 R10 K28 ["panViewport"]
      122 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      124 LOADK                            R12 K29 ["zoomViewport"]
      125 CALL                             R11 1 1
      126 SETTABLEKS                       R11 R10 K29 ["zoomViewport"]
      128 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      130 LOADK                            R12 K30 ["setViewportPosition"]
      131 CALL                             R11 1 1
      132 SETTABLEKS                       R11 R10 K30 ["setViewportPosition"]
      134 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      136 LOADK                            R12 K31 ["frameSelection"]
      137 CALL                             R11 1 1
      138 SETTABLEKS                       R11 R10 K31 ["frameSelection"]
      140 GETTABLEKS                       R11 R8 K37 ["of"]
      142 LOADB                            R12 0
      143 CALL                             R11 1 1
      144 SETTABLEKS                       R11 R10 K32 ["observeHintIsDragging"]
      146 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      148 LOADK                            R12 K33 ["setHintIsDragging"]
      149 CALL                             R11 1 1
      150 SETTABLEKS                       R11 R10 K33 ["setHintIsDragging"]
      152 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      154 LOADK                            R12 K34 ["setZoomRatioTarget"]
      155 CALL                             R11 1 1
      156 SETTABLEKS                       R11 R10 K34 ["setZoomRatioTarget"]
      158 GETTABLEKS                       R11 R5 K41 ["createUnimplemented"]
      160 LOADK                            R12 K35 ["setCursorOffsetProvider"]
      161 CALL                             R11 1 1
      162 SETTABLEKS                       R11 R10 K35 ["setCursorOffsetProvider"]
      164 GETTABLEKS                       R11 R4 K42 ["createContext"]
      166 MOVE                             R12 R10
      167 CALL                             R11 1 1
      168 DUPCLOSURE                       R12 K43 [PROTO_0]
      169 DUPCLOSURE                       R13 K44 [PROTO_1]
      170 CAPTURE                          VAL R6
      171 DUPCLOSURE                       R14 K45 [PROTO_27]
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R11
      181 DUPTABLE                         R15 K48 [{"Context", "Provider"}]
      182 SETTABLEKS                       R11 R15 K46 ["Context"]
      184 SETTABLEKS                       R14 R15 K47 ["Provider"]
      186 RETURN                           R15 1
