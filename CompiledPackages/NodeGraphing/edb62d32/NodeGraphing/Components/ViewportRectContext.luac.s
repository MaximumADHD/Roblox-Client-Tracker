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
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["initialViewportPosition"]
        6 JUMPIF                           R1 ; [+3]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["Min"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K2 ["initialZoomRatio"]
        6 ORK                              R2 R3 K1 [1]
        7 LOADK                            R5 K3 [0.1]
        8 LOADN                            R6 1
        9 FASTCALL3                        MATH_CLAMP R2 R5 R6
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K6 [math.clamp]
       14 CALL                             R3 3 1
       15 MOVE                             R1 R3
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

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
        0 DUPTABLE                         R0 K15 [{"observeRenderedGraphRect", "observeSelectionRect", "observeViewportRect", "observeViewportPosition", "observeZoomRatio", "observeHintIsDragging", "setAbsoluteSize", "panViewport", "zoomViewport", "setZoomRatio", "setViewportPosition", "frameSelection", "setHintIsDragging", "setZoomRatioTarget", "setCursorOffsetProvider"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeRenderedGraphRect"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeSelectionRect"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeViewportRect"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeViewportPosition"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["observeZoomRatio"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["observeHintIsDragging"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setAbsoluteSize"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["panViewport"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["zoomViewport"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["setZoomRatio"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["setViewportPosition"]
       34 GETUPVAL                         R1 11
       35 SETTABLEKS                       R1 R0 K11 ["frameSelection"]
       37 GETUPVAL                         R1 12
       38 SETTABLEKS                       R1 R0 K12 ["setHintIsDragging"]
       40 GETUPVAL                         R1 13
       41 SETTABLEKS                       R1 R0 K13 ["setZoomRatioTarget"]
       43 GETUPVAL                         R1 14
       44 SETTABLEKS                       R1 R0 K14 ["setCursorOffsetProvider"]
       46 RETURN                           R0 1

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
       40 NEWTABLE                         R6 0 1
       42 GETTABLEKS                       R7 R1 K10 ["nodeRenderInfoDispatcher"]
       44 GETTABLEKS                       R7 R7 K11 ["observeMap"]
       46 SETLIST                          R6 R7 1 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       52 NEWCLOSURE                       R6 P2
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R7 0 0
       58 CALL                             R5 2 2
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       62 NEWCLOSURE                       R8 P3
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R9 0 0
       67 CALL                             R7 2 2
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       71 DUPCLOSURE                       R10 K12 [PROTO_8]
       72 CAPTURE                          UPVAL U2
       73 NEWTABLE                         R11 0 0
       75 CALL                             R9 2 2
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R11 R11 K9 ["useMemo"]
       79 DUPCLOSURE                       R12 K13 [PROTO_9]
       80 CAPTURE                          UPVAL U2
       81 NEWTABLE                         R13 0 0
       83 CALL                             R11 2 2
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R13 R13 K9 ["useMemo"]
       87 NEWCLOSURE                       R14 P6
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R11
       92 CAPTURE                          UPVAL U3
       93 NEWTABLE                         R15 0 3
       95 MOVE                             R16 R5
       96 MOVE                             R17 R11
       97 MOVE                             R18 R7
       98 SETLIST                          R15 R16 3 [1]
      100 CALL                             R13 2 1
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R14 R14 K9 ["useMemo"]
      104 NEWCLOSURE                       R15 P7
      105 CAPTURE                          UPVAL U5
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R13
      108 CAPTURE                          UPVAL U3
      109 NEWTABLE                         R16 0 2
      111 MOVE                             R17 R13
      112 MOVE                             R18 R4
      113 SETLIST                          R16 R17 2 [1]
      115 CALL                             R14 2 1
      116 GETUPVAL                         R15 0
      117 GETTABLEKS                       R15 R15 K14 ["useRef"]
      119 LOADNIL                          R16
      120 CALL                             R15 1 1
      121 GETUPVAL                         R16 0
      122 GETTABLEKS                       R16 R16 K14 ["useRef"]
      124 LOADB                            R17 0
      125 CALL                             R16 1 1
      126 GETUPVAL                         R17 0
      127 GETTABLEKS                       R17 R17 K14 ["useRef"]
      129 LOADNIL                          R18
      130 CALL                             R17 1 1
      131 GETUPVAL                         R18 0
      132 GETTABLEKS                       R18 R18 K14 ["useRef"]
      134 LOADNIL                          R19
      135 CALL                             R18 1 1
      136 GETUPVAL                         R19 0
      137 GETTABLEKS                       R19 R19 K14 ["useRef"]
      139 LOADNIL                          R20
      140 CALL                             R19 1 1
      141 NEWCLOSURE                       R20 P8
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 NEWCLOSURE                       R21 P9
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R19
      156 GETTABLEKS                       R22 R0 K15 ["renderStepped"]
      158 JUMPIF                           R22 ; [+3]
      159 GETUPVAL                         R22 6
      160 GETTABLEKS                       R22 R22 K16 ["RenderStepped"]
      162 NEWCLOSURE                       R23 P10
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R21
      166 GETUPVAL                         R24 0
      167 GETTABLEKS                       R24 R24 K17 ["useCallback"]
      169 NEWCLOSURE                       R25 P11
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R21
      177 NEWTABLE                         R26 0 0
      179 CALL                             R24 2 1
      180 GETUPVAL                         R25 0
      181 GETTABLEKS                       R25 R25 K17 ["useCallback"]
      183 NEWCLOSURE                       R26 P12
      184 CAPTURE                          VAL R18
      185 NEWTABLE                         R27 0 0
      187 CALL                             R25 2 1
      188 GETUPVAL                         R26 0
      189 GETTABLEKS                       R26 R26 K18 ["useEffect"]
      191 NEWCLOSURE                       R27 P13
      192 CAPTURE                          VAL R20
      193 NEWTABLE                         R28 0 0
      195 CALL                             R26 2 0
      196 GETUPVAL                         R26 0
      197 GETTABLEKS                       R26 R26 K17 ["useCallback"]
      199 NEWCLOSURE                       R27 P14
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R7
      202 NEWTABLE                         R28 0 2
      204 MOVE                             R29 R7
      205 MOVE                             R30 R6
      206 SETLIST                          R28 R29 2 [1]
      208 CALL                             R26 2 1
      209 GETUPVAL                         R27 0
      210 GETTABLEKS                       R27 R27 K17 ["useCallback"]
      212 NEWCLOSURE                       R28 P15
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R8
      216 NEWTABLE                         R29 0 3
      218 MOVE                             R30 R6
      219 MOVE                             R31 R8
      220 MOVE                             R32 R7
      221 SETLIST                          R29 R30 3 [1]
      223 CALL                             R27 2 1
      224 GETUPVAL                         R28 0
      225 GETTABLEKS                       R28 R28 K17 ["useCallback"]
      227 NEWCLOSURE                       R29 P16
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R4
      230 CAPTURE                          UPVAL U3
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R6
      234 NEWTABLE                         R30 0 5
      236 GETTABLEKS                       R31 R1 K10 ["nodeRenderInfoDispatcher"]
      238 MOVE                             R32 R4
      239 MOVE                             R33 R11
      240 MOVE                             R34 R8
      241 MOVE                             R35 R6
      242 SETLIST                          R30 R31 5 [1]
      244 CALL                             R28 2 1
      245 GETUPVAL                         R29 0
      246 GETTABLEKS                       R29 R29 K9 ["useMemo"]
      248 NEWCLOSURE                       R30 P17
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R13
      252 CAPTURE                          VAL R5
      253 CAPTURE                          VAL R7
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R12
      256 CAPTURE                          VAL R26
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R28
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R24
      263 CAPTURE                          VAL R25
      264 NEWTABLE                         R31 0 15
      266 MOVE                             R32 R14
      267 MOVE                             R33 R13
      268 MOVE                             R34 R5
      269 MOVE                             R35 R3
      270 MOVE                             R36 R7
      271 MOVE                             R37 R9
      272 MOVE                             R38 R12
      273 MOVE                             R39 R26
      274 MOVE                             R40 R27
      275 MOVE                             R41 R8
      276 MOVE                             R42 R6
      277 MOVE                             R43 R28
      278 MOVE                             R44 R10
      279 MOVE                             R45 R24
      280 MOVE                             R46 R25
      281 SETLIST                          R31 R32 15 [1]
      283 CALL                             R29 2 1
      284 GETUPVAL                         R30 0
      285 GETTABLEKS                       R30 R30 K19 ["createElement"]
      287 GETUPVAL                         R31 7
      288 GETTABLEKS                       R31 R31 K20 ["Provider"]
      290 DUPTABLE                         R32 K22 [{"value"}]
      291 SETTABLEKS                       R29 R32 K21 ["value"]
      293 GETTABLEKS                       R33 R0 K23 ["children"]
      295 CALL                             R30 3 -1
      296 RETURN                           R30 -1

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
       60 DUPTABLE                         R9 K35 [{"observeZoomRatio", "observeRenderedGraphRect", "observeViewportRect", "observeViewportPosition", "observeSelectionRect", "setZoomRatio", "setAbsoluteSize", "panViewport", "zoomViewport", "setViewportPosition", "frameSelection", "observeHintIsDragging", "setHintIsDragging", "setZoomRatioTarget", "setCursorOffsetProvider"}]
       61 GETTABLEKS                       R10 R8 K36 ["of"]
       63 LOADN                            R11 1
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K20 ["observeZoomRatio"]
       67 GETTABLEKS                       R10 R8 K36 ["of"]
       69 GETIMPORT                        R11 K39 [Rect.new]
       71 LOADN                            R12 0
       72 LOADN                            R13 0
       73 LOADN                            R14 0
       74 LOADN                            R15 0
       75 CALL                             R11 4 -1
       76 CALL                             R10 -1 1
       77 SETTABLEKS                       R10 R9 K21 ["observeRenderedGraphRect"]
       79 GETTABLEKS                       R10 R8 K36 ["of"]
       81 GETIMPORT                        R11 K39 [Rect.new]
       83 LOADN                            R12 0
       84 LOADN                            R13 0
       85 LOADN                            R14 0
       86 LOADN                            R15 0
       87 CALL                             R11 4 -1
       88 CALL                             R10 -1 1
       89 SETTABLEKS                       R10 R9 K22 ["observeViewportRect"]
       91 GETTABLEKS                       R10 R8 K36 ["of"]
       93 GETIMPORT                        R11 K42 [Vector2.zero]
       95 CALL                             R10 1 1
       96 SETTABLEKS                       R10 R9 K23 ["observeViewportPosition"]
       98 GETTABLEKS                       R10 R8 K36 ["of"]
      100 LOADNIL                          R11
      101 CALL                             R10 1 1
      102 SETTABLEKS                       R10 R9 K24 ["observeSelectionRect"]
      104 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      106 LOADK                            R11 K25 ["setZoomRatio"]
      107 CALL                             R10 1 1
      108 SETTABLEKS                       R10 R9 K25 ["setZoomRatio"]
      110 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      112 LOADK                            R11 K26 ["setAbsoluteSize"]
      113 CALL                             R10 1 1
      114 SETTABLEKS                       R10 R9 K26 ["setAbsoluteSize"]
      116 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      118 LOADK                            R11 K27 ["panViewport"]
      119 CALL                             R10 1 1
      120 SETTABLEKS                       R10 R9 K27 ["panViewport"]
      122 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      124 LOADK                            R11 K28 ["zoomViewport"]
      125 CALL                             R10 1 1
      126 SETTABLEKS                       R10 R9 K28 ["zoomViewport"]
      128 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      130 LOADK                            R11 K29 ["setViewportPosition"]
      131 CALL                             R10 1 1
      132 SETTABLEKS                       R10 R9 K29 ["setViewportPosition"]
      134 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      136 LOADK                            R11 K30 ["frameSelection"]
      137 CALL                             R10 1 1
      138 SETTABLEKS                       R10 R9 K30 ["frameSelection"]
      140 GETTABLEKS                       R10 R8 K36 ["of"]
      142 LOADB                            R11 0
      143 CALL                             R10 1 1
      144 SETTABLEKS                       R10 R9 K31 ["observeHintIsDragging"]
      146 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      148 LOADK                            R11 K32 ["setHintIsDragging"]
      149 CALL                             R10 1 1
      150 SETTABLEKS                       R10 R9 K32 ["setHintIsDragging"]
      152 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      154 LOADK                            R11 K33 ["setZoomRatioTarget"]
      155 CALL                             R10 1 1
      156 SETTABLEKS                       R10 R9 K33 ["setZoomRatioTarget"]
      158 GETTABLEKS                       R10 R5 K43 ["createUnimplemented"]
      160 LOADK                            R11 K34 ["setCursorOffsetProvider"]
      161 CALL                             R10 1 1
      162 SETTABLEKS                       R10 R9 K34 ["setCursorOffsetProvider"]
      164 GETTABLEKS                       R10 R4 K44 ["createContext"]
      166 MOVE                             R11 R9
      167 CALL                             R10 1 1
      168 DUPCLOSURE                       R11 K45 [PROTO_0]
      169 DUPCLOSURE                       R12 K46 [PROTO_1]
      170 CAPTURE                          VAL R6
      171 DUPCLOSURE                       R13 K47 [PROTO_27]
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R10
      180 DUPTABLE                         R14 K50 [{"Context", "Provider"}]
      181 SETTABLEKS                       R10 R14 K48 ["Context"]
      183 SETTABLEKS                       R13 R14 K49 ["Provider"]
      185 RETURN                           R14 1
