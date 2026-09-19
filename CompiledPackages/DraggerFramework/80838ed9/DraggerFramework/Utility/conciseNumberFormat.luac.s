PROTO_0:
        0 DIV                              R4 R0 R1
        1 FASTCALL1                        MATH_ROUND R4 ; [+2]
        2 GETIMPORT                        R3 K2 [math.round]
        4 CALL                             R3 1 1
        5 MUL                              R2 R3 R1
        6 SUB                              R5 R0 R2
        7 FASTCALL1                        MATH_ABS R5 ; [+2]
        8 GETIMPORT                        R4 K4 [math.abs]
       10 CALL                             R4 1 1
       11 LOADK                            R5 K5 [0.001]
       12 JUMPIFLT                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+76]
        3 GETUPVAL                         R1 0
        4 JUMPIFEQKN                       R1 K0 [0] ; [+73]
        6 GETUPVAL                         R2 0
        7 DIVK                             R5 R2 K1 [1]
        8 FASTCALL1                        MATH_ROUND R5 ; [+2]
        9 GETIMPORT                        R4 K4 [math.round]
       11 CALL                             R4 1 1
       12 MULK                             R3 R4 K1 [1]
       13 SUB                              R5 R2 R3
       14 FASTCALL1                        MATH_ABS R5 ; [+2]
       15 GETIMPORT                        R4 K6 [math.abs]
       17 CALL                             R4 1 1
       18 LOADK                            R5 K7 [0.001]
       19 JUMPIFLT                         R4 R5 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETIMPORT                        R1 K10 [string.format]
       26 LOADK                            R2 K11 ["%.0f"]
       27 MOVE                             R3 R0
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1
       30 GETUPVAL                         R2 0
       31 DIVK                             R5 R2 K12 [0.1]
       32 FASTCALL1                        MATH_ROUND R5 ; [+2]
       33 GETIMPORT                        R4 K4 [math.round]
       35 CALL                             R4 1 1
       36 MULK                             R3 R4 K12 [0.1]
       37 SUB                              R5 R2 R3
       38 FASTCALL1                        MATH_ABS R5 ; [+2]
       39 GETIMPORT                        R4 K6 [math.abs]
       41 CALL                             R4 1 1
       42 LOADK                            R5 K7 [0.001]
       43 JUMPIFLT                         R4 R5 ; [+2]
       45 LOADB                            R1 0 +1
       46 LOADB                            R1 1
       47 JUMPIFNOT                        R1 ; [+6]
       48 GETIMPORT                        R1 K10 [string.format]
       50 LOADK                            R2 K13 ["%.1f"]
       51 MOVE                             R3 R0
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1
       54 GETUPVAL                         R2 0
       55 DIVK                             R5 R2 K14 [0.01]
       56 FASTCALL1                        MATH_ROUND R5 ; [+2]
       57 GETIMPORT                        R4 K4 [math.round]
       59 CALL                             R4 1 1
       60 MULK                             R3 R4 K14 [0.01]
       61 SUB                              R5 R2 R3
       62 FASTCALL1                        MATH_ABS R5 ; [+2]
       63 GETIMPORT                        R4 K6 [math.abs]
       65 CALL                             R4 1 1
       66 LOADK                            R5 K7 [0.001]
       67 JUMPIFLT                         R4 R5 ; [+2]
       69 LOADB                            R1 0 +1
       70 LOADB                            R1 1
       71 JUMPIFNOT                        R1 ; [+6]
       72 GETIMPORT                        R1 K10 [string.format]
       74 LOADK                            R2 K15 ["%.2f"]
       75 MOVE                             R3 R0
       76 CALL                             R1 2 -1
       77 RETURN                           R1 -1
       78 GETIMPORT                        R1 K10 [string.format]
       80 LOADK                            R2 K16 ["%.3f"]
       81 MOVE                             R3 R0
       82 CALL                             R1 2 -1
       83 RETURN                           R1 -1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 JUMPIFNOT                        R2 ; [+67]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["number"] ; [+10]
       10 LOADK                            R4 K3 ["%*: %*"]
       11 MOVE                             R6 R2
       12 MOVE                             R7 R3
       13 MOVE                             R8 R0
       14 CALL                             R7 1 1
       15 NAMECALL                         R4 R4 K4 ["format"]
       17 CALL                             R4 3 1
       18 RETURN                           R4 1
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R5 R0
       21 GETIMPORT                        R4 K1 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKS                    R4 K5 ["Vector2"] ; [+16]
       26 LOADK                            R4 K6 ["%*: %*, %*: %*"]
       27 GETTABLEN                        R6 R2 1
       28 MOVE                             R7 R3
       29 GETTABLEKS                       R8 R0 K7 ["X"]
       31 CALL                             R7 1 1
       32 GETTABLEN                        R8 R2 2
       33 MOVE                             R9 R3
       34 GETTABLEKS                       R10 R0 K8 ["Y"]
       36 CALL                             R9 1 1
       37 NAMECALL                         R4 R4 K4 ["format"]
       39 CALL                             R4 5 1
       40 RETURN                           R4 1
       41 FASTCALL1                        TYPEOF R0 ; [+3]
       42 MOVE                             R5 R0
       43 GETIMPORT                        R4 K1 [typeof]
       45 CALL                             R4 1 1
       46 JUMPIFNOTEQKS                    R4 K9 ["Vector3"] ; [+21]
       48 LOADK                            R4 K10 ["%*: %*, %*: %*, %*: %*"]
       49 GETTABLEN                        R6 R2 1
       50 MOVE                             R7 R3
       51 GETTABLEKS                       R8 R0 K7 ["X"]
       53 CALL                             R7 1 1
       54 GETTABLEN                        R8 R2 2
       55 MOVE                             R9 R3
       56 GETTABLEKS                       R10 R0 K8 ["Y"]
       58 CALL                             R9 1 1
       59 GETTABLEN                        R10 R2 3
       60 MOVE                             R11 R3
       61 GETTABLEKS                       R12 R0 K11 ["Z"]
       63 CALL                             R11 1 1
       64 NAMECALL                         R4 R4 K4 ["format"]
       66 CALL                             R4 7 1
       67 RETURN                           R4 1
       68 LOADK                            R4 K12 [""]
       69 RETURN                           R4 1
       70 FASTCALL1                        TYPEOF R0 ; [+3]
       71 MOVE                             R5 R0
       72 GETIMPORT                        R4 K1 [typeof]
       74 CALL                             R4 1 1
       75 JUMPIFNOTEQKS                    R4 K2 ["number"] ; [+9]
       77 GETIMPORT                        R4 K14 [string.format]
       79 LOADK                            R5 K15 ["%s"]
       80 MOVE                             R6 R3
       81 MOVE                             R7 R0
       82 CALL                             R6 1 -1
       83 CALL                             R4 -1 -1
       84 RETURN                           R4 -1
       85 FASTCALL1                        TYPEOF R0 ; [+3]
       86 MOVE                             R5 R0
       87 GETIMPORT                        R4 K1 [typeof]
       89 CALL                             R4 1 1
       90 JUMPIFNOTEQKS                    R4 K5 ["Vector2"] ; [+14]
       92 GETIMPORT                        R4 K14 [string.format]
       94 LOADK                            R5 K16 ["%s, %s"]
       95 MOVE                             R6 R3
       96 GETTABLEKS                       R7 R0 K7 ["X"]
       98 CALL                             R6 1 1
       99 MOVE                             R7 R3
      100 GETTABLEKS                       R8 R0 K8 ["Y"]
      102 CALL                             R7 1 -1
      103 CALL                             R4 -1 -1
      104 RETURN                           R4 -1
      105 FASTCALL1                        TYPEOF R0 ; [+3]
      106 MOVE                             R5 R0
      107 GETIMPORT                        R4 K1 [typeof]
      109 CALL                             R4 1 1
      110 JUMPIFNOTEQKS                    R4 K9 ["Vector3"] ; [+18]
      112 GETIMPORT                        R4 K14 [string.format]
      114 LOADK                            R5 K17 ["%s, %s, %s"]
      115 MOVE                             R6 R3
      116 GETTABLEKS                       R7 R0 K7 ["X"]
      118 CALL                             R6 1 1
      119 MOVE                             R7 R3
      120 GETTABLEKS                       R8 R0 K8 ["Y"]
      122 CALL                             R7 1 1
      123 MOVE                             R8 R3
      124 GETTABLEKS                       R9 R0 K11 ["Z"]
      126 CALL                             R8 1 -1
      127 CALL                             R4 -1 -1
      128 RETURN                           R4 -1
      129 LOADK                            R4 K12 [""]
      130 RETURN                           R4 1

PROTO_3:
        0 FASTCALL1                        MATH_ROUND R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [math.round]
        4 CALL                             R1 1 1
        5 SUB                              R3 R0 R1
        6 FASTCALL1                        MATH_ABS R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.abs]
        9 CALL                             R2 1 1
       10 LOADK                            R3 K5 [0.001]
       11 JUMPIFNOTLT                      R2 R3 ; [+7]
       13 GETIMPORT                        R2 K8 [string.format]
       15 LOADK                            R3 K9 ["%d"]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
       19 MULK                             R4 R0 K10 [10]
       20 FASTCALL1                        MATH_ROUND R4 ; [+2]
       21 GETIMPORT                        R3 K2 [math.round]
       23 CALL                             R3 1 1
       24 DIVK                             R2 R3 K10 [10]
       25 SUB                              R4 R0 R2
       26 FASTCALL1                        MATH_ABS R4 ; [+2]
       27 GETIMPORT                        R3 K4 [math.abs]
       29 CALL                             R3 1 1
       30 LOADK                            R4 K5 [0.001]
       31 JUMPIFNOTLT                      R3 R4 ; [+7]
       33 GETIMPORT                        R3 K8 [string.format]
       35 LOADK                            R4 K11 ["%.1f"]
       36 MOVE                             R5 R2
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1
       39 MULK                             R5 R0 K12 [100]
       40 FASTCALL1                        MATH_ROUND R5 ; [+2]
       41 GETIMPORT                        R4 K2 [math.round]
       43 CALL                             R4 1 1
       44 DIVK                             R3 R4 K12 [100]
       45 SUB                              R5 R0 R3
       46 FASTCALL1                        MATH_ABS R5 ; [+2]
       47 GETIMPORT                        R4 K4 [math.abs]
       49 CALL                             R4 1 1
       50 LOADK                            R5 K5 [0.001]
       51 JUMPIFNOTLT                      R4 R5 ; [+7]
       53 GETIMPORT                        R4 K8 [string.format]
       55 LOADK                            R5 K13 ["%.2f"]
       56 MOVE                             R6 R3
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1
       59 GETIMPORT                        R4 K8 [string.format]
       61 LOADK                            R5 K14 ["%.3f"]
       62 MOVE                             R6 R0
       63 CALL                             R4 2 -1
       64 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagNextGenDraggers"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 DUPCLOSURE                       R2 K7 [PROTO_0]
       18 DUPCLOSURE                       R3 K8 [PROTO_2]
       19 RETURN                           R3 1
       20 DUPCLOSURE                       R2 K9 [PROTO_3]
       21 RETURN                           R2 1
