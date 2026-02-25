PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 MUL                              R2 R0 R0
        1 RETURN                           R2 1

PROTO_2:
        0 MUL                              R3 R0 R0
        1 MUL                              R2 R3 R0
        2 RETURN                           R2 1

PROTO_3:
        0 MUL                              R4 R0 R0
        1 MUL                              R3 R4 R0
        2 MUL                              R2 R3 R0
        3 RETURN                           R2 1

PROTO_4:
        0 MUL                              R5 R0 R0
        1 MUL                              R4 R5 R0
        2 MUL                              R3 R4 R0
        3 MUL                              R2 R3 R0
        4 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 LOADN                            R3 2
        5 SUBK                             R5 R0 K2 [1]
        6 MULK                             R4 R5 K1 [10]
        7 FASTCALL2                        MATH_POW R3 R4 ; [+3]
        9 GETIMPORT                        R2 K5 [math.pow]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_6:
        0 MULK                             R5 R0 K2 [3.14159265358979]
        1 DIVK                             R4 R5 K1 [2]
        2 FASTCALL1                        MATH_COS R4 ; [+2]
        3 GETIMPORT                        R3 K5 [math.cos]
        5 CALL                             R3 1 1
        6 SUBRK                            R2 R0 K3 ["math"]
        7 RETURN                           R2 1

PROTO_7:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKN                    R0 K1 [1] ; [+3]
        6 LOADN                            R2 1
        7 RETURN                           R2 1
        8 LOADN                            R5 2
        9 MULK                             R7 R0 K2 [10]
       10 SUBK                             R6 R7 K2 [10]
       11 FASTCALL2                        MATH_POW R5 R6 ; [+3]
       13 GETIMPORT                        R4 K5 [math.pow]
       15 CALL                             R4 2 1
       16 MINUS                            R3 R4
       17 MULK                             R7 R0 K2 [10]
       18 SUBK                             R6 R7 K7 [10.75]
       19 MULK                             R5 R6 K6 [2.0943951023932]
       20 FASTCALL1                        MATH_SIN R5 ; [+2]
       21 GETIMPORT                        R4 K9 [math.sin]
       23 CALL                             R4 1 1
       24 MUL                              R2 R3 R4
       25 RETURN                           R2 1

PROTO_8:
        0 MULK                             R5 R0 K0 [2.70158]
        1 MUL                              R4 R5 R0
        2 MUL                              R3 R4 R0
        3 MULK                             R5 R0 K1 [1.70158]
        4 MUL                              R4 R5 R0
        5 SUB                              R2 R3 R4
        6 RETURN                           R2 1

PROTO_9:
        0 LOADK                            R1 K0 [0.363636363636364]
        1 JUMPIFNOTLT                      R0 R1 ; [+4]
        3 MULK                             R2 R0 K1 [7.5625]
        4 MUL                              R1 R2 R0
        5 RETURN                           R1 1
        6 LOADK                            R1 K2 [0.727272727272727]
        7 JUMPIFNOTLT                      R0 R1 ; [+7]
        9 SUBK                             R4 R0 K4 [0.545454545454545]
       10 MULK                             R3 R4 K1 [7.5625]
       11 SUBK                             R4 R0 K4 [0.545454545454545]
       12 MUL                              R2 R3 R4
       13 ADDK                             R1 R2 K3 [0.75]
       14 RETURN                           R1 1
       15 LOADK                            R1 K5 [0.909090909090909]
       16 JUMPIFNOTLT                      R0 R1 ; [+7]
       18 SUBK                             R4 R0 K7 [0.818181818181818]
       19 MULK                             R3 R4 K1 [7.5625]
       20 SUBK                             R4 R0 K7 [0.818181818181818]
       21 MUL                              R2 R3 R4
       22 ADDK                             R1 R2 K6 [0.9375]
       23 RETURN                           R1 1
       24 SUBK                             R4 R0 K9 [0.954545454545455]
       25 MULK                             R3 R4 K1 [7.5625]
       26 SUBK                             R4 R0 K9 [0.954545454545455]
       27 MUL                              R2 R3 R4
       28 ADDK                             R1 R2 K8 [0.984375]
       29 RETURN                           R1 1

PROTO_10:
        0 SUBRK                            R4 R0 K0 [1]
        1 LOADK                            R5 K1 [0.363636363636364]
        2 JUMPIFNOTLT                      R4 R5 ; [+4]
        4 MULK                             R5 R4 K2 [7.5625]
        5 MUL                              R3 R5 R4
        6 JUMP                             ; [+24]
        7 LOADK                            R5 K3 [0.727272727272727]
        8 JUMPIFNOTLT                      R4 R5 ; [+7]
       10 SUBK                             R7 R4 K5 [0.545454545454545]
       11 MULK                             R6 R7 K2 [7.5625]
       12 SUBK                             R7 R4 K5 [0.545454545454545]
       13 MUL                              R5 R6 R7
       14 ADDK                             R3 R5 K4 [0.75]
       15 JUMP                             ; [+15]
       16 LOADK                            R5 K6 [0.909090909090909]
       17 JUMPIFNOTLT                      R4 R5 ; [+7]
       19 SUBK                             R7 R4 K8 [0.818181818181818]
       20 MULK                             R6 R7 K2 [7.5625]
       21 SUBK                             R7 R4 K8 [0.818181818181818]
       22 MUL                              R5 R6 R7
       23 ADDK                             R3 R5 K7 [0.9375]
       24 JUMP                             ; [+6]
       25 SUBK                             R7 R4 K10 [0.954545454545455]
       26 MULK                             R6 R7 K2 [7.5625]
       27 SUBK                             R7 R4 K10 [0.954545454545455]
       28 MUL                              R5 R6 R7
       29 ADDK                             R3 R5 K9 [0.984375]
       30 JUMP                             ; [0]
       31 SUBRK                            R2 R0 K3 [0.727272727272727]
       32 RETURN                           R2 1

PROTO_11:
        0 MUL                              R6 R0 R0
        1 SUBRK                            R5 R0 K6 [NULL]
        2 FASTCALL1                        MATH_SQRT R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.sqrt]
        5 CALL                             R4 1 1
        6 SUBK                             R3 R4 K0 [1]
        7 MINUS                            R2 R3
        8 RETURN                           R2 1

PROTO_12:
        0 SUBRK                            R3 R0 K0 [1]
        1 MUL                              R4 R3 R3
        2 MUL                              R5 R0 R0
        3 MULK                             R10 R4 K1 [3]
        4 MUL                              R9 R10 R0
        5 MUL                              R8 R9 R1
        6 MULK                             R11 R3 K1 [3]
        7 MUL                              R10 R11 R5
        8 MUL                              R9 R10 R2
        9 ADD                              R7 R8 R9
       10 MUL                              R8 R0 R5
       11 ADD                              R6 R7 R8
       12 RETURN                           R6 1

PROTO_13:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected values to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 LENGTH                           R4 R1
       16 JUMPIFEQKN                       R4 K6 [4] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       22 LOADK                            R4 K7 ["Expected values to have 4 elements"]
       23 GETIMPORT                        R2 K5 [assert]
       25 CALL                             R2 2 0
       26 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K9 [table.unpack]
       30 CALL                             R2 1 4
       31 LOADB                            R7 0
       32 LOADN                            R8 0
       33 JUMPIFNOTLE                      R8 R2 ; [+6]
       35 LOADN                            R8 1
       36 JUMPIFLE                         R2 R8 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 FASTCALL2K                       ASSERT R7 K10 ; [+4]
       42 LOADK                            R8 K10 ["x1 must be between 0 and 1"]
       43 GETIMPORT                        R6 K5 [assert]
       45 CALL                             R6 2 0
       46 LOADB                            R7 0
       47 LOADN                            R8 0
       48 JUMPIFNOTLE                      R8 R4 ; [+6]
       50 LOADN                            R8 1
       51 JUMPIFLE                         R4 R8 ; [+2]
       53 LOADB                            R7 0 +1
       54 LOADB                            R7 1
       55 FASTCALL2K                       ASSERT R7 K11 ; [+4]
       57 LOADK                            R8 K11 ["x2 must be between 0 and 1"]
       58 GETIMPORT                        R6 K5 [assert]
       60 CALL                             R6 2 0
       61 LOADN                            R6 0
       62 JUMPIFNOTLE                      R0 R6 ; [+3]
       64 LOADN                            R6 0
       65 RETURN                           R6 1
       66 LOADN                            R6 1
       67 JUMPIFNOTLE                      R6 R0 ; [+3]
       69 LOADN                            R6 1
       70 RETURN                           R6 1
       71 LOADN                            R6 0
       72 LOADN                            R7 1
       73 LOADN                            R8 0
       74 LOADNIL                          R9
       75 LOADN                            R12 1
       76 LOADN                            R10 10
       77 LOADN                            R11 1
       78 FORNPREP                         R10
       79 ADDK                             R8 R8 K12 [1]
       80 ADD                              R14 R6 R7
       81 DIVK                             R13 R14 K13 [2]
       82 SUBRK                            R15 R12 K13 [2]
       83 MUL                              R16 R15 R15
       84 MUL                              R17 R13 R13
       85 MULK                             R21 R16 K14 [3]
       86 MUL                              R20 R21 R13
       87 MUL                              R19 R20 R2
       88 MULK                             R22 R15 K14 [3]
       89 MUL                              R21 R22 R17
       90 MUL                              R20 R21 R4
       91 ADD                              R18 R19 R20
       92 MUL                              R19 R13 R17
       93 ADD                              R14 R18 R19
       94 SUB                              R16 R14 R0
       95 FASTCALL1                        MATH_ABS R16 ; [+2]
       96 GETIMPORT                        R15 K17 [math.abs]
       98 CALL                             R15 1 1
       99 MOVE                             R9 R15
      100 LOADK                            R15 K18 [0.0001]
      101 JUMPIFNOTLT                      R9 R15 ; [+14]
      103 SUBRK                            R16 R12 K13 [2]
      104 MUL                              R17 R16 R16
      105 MUL                              R18 R13 R13
      106 MULK                             R22 R17 K14 [3]
      107 MUL                              R21 R22 R13
      108 MUL                              R20 R21 R3
      109 MULK                             R23 R16 K14 [3]
      110 MUL                              R22 R23 R18
      111 MUL                              R21 R22 R5
      112 ADD                              R19 R20 R21
      113 MUL                              R20 R13 R18
      114 ADD                              R15 R19 R20
      115 RETURN                           R15 1
      116 JUMPIFNOTLT                      R14 R0 ; [+3]
      118 MOVE                             R6 R13
      119 JUMP                             ; [+1]
      120 MOVE                             R7 R13
      121 FORNLOOP                         R10
      122 ADD                              R11 R6 R7
      123 DIVK                             R10 R11 K13 [2]
      124 SUBRK                            R12 R12 K10 ["x1 must be between 0 and 1"]
      125 MUL                              R13 R12 R12
      126 MUL                              R14 R10 R10
      127 MULK                             R18 R13 K14 [3]
      128 MUL                              R17 R18 R10
      129 MUL                              R16 R17 R3
      130 MULK                             R19 R12 K14 [3]
      131 MUL                              R18 R19 R14
      132 MUL                              R17 R18 R5
      133 ADD                              R15 R16 R17
      134 MUL                              R16 R10 R14
      135 ADD                              R11 R15 R16
      136 RETURN                           R11 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["initialValue"]
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R2 R0 K0 ["initialValue"]
        6 JUMP                             ; [+3]
        7 GETTABLEKS                       R3 R0 K2 ["value"]
        9 ORK                              R2 R3 K1 [0]
       10 GETTABLEKS                       R5 R0 K3 ["elapsed"]
       12 ORK                              R4 R5 K1 [0]
       13 ADD                              R3 R4 R1
       14 GETTABLEKS                       R4 R0 K4 ["goal"]
       16 JUMPIFNOT                        R4 ; [+8]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R5 R0 K4 ["goal"]
       20 JUMPIFEQ                         R4 R5 ; [+4]
       22 GETTABLEKS                       R2 R0 K2 ["value"]
       24 LOADN                            R3 0
       25 GETUPVAL                         R6 1
       26 DIV                              R5 R3 R6
       27 FASTCALL2K                       MATH_MIN R5 K5 ; [+4]
       29 LOADK                            R6 K5 [1]
       30 GETIMPORT                        R4 K8 [math.min]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 2
       34 MOVE                             R6 R4
       35 GETUPVAL                         R7 3
       36 CALL                             R5 2 1
       37 GETUPVAL                         R9 0
       38 SUB                              R8 R9 R2
       39 MUL                              R7 R8 R5
       40 ADD                              R6 R2 R7
       41 LOADB                            R7 1
       42 GETUPVAL                         R8 1
       43 JUMPIFLE                         R8 R3 ; [+6]
       45 GETUPVAL                         R8 0
       46 JUMPIFEQ                         R2 R8 ; [+2]
       48 LOADB                            R7 0 +1
       49 LOADB                            R7 1
       50 JUMPIFNOT                        R7 ; [+3]
       51 GETUPVAL                         R6 0
       52 GETUPVAL                         R2 0
       53 LOADN                            R3 0
       54 DUPTABLE                         R8 K10 [{"initialValue", "goal", "value", "elapsed", "complete"}]
       55 SETTABLEKS                       R2 R8 K0 ["initialValue"]
       57 GETUPVAL                         R9 0
       58 SETTABLEKS                       R9 R8 K4 ["goal"]
       60 SETTABLEKS                       R6 R8 K2 ["value"]
       62 SETTABLEKS                       R3 R8 K3 ["elapsed"]
       64 SETTABLEKS                       R7 R8 K9 ["complete"]
       66 RETURN                           R8 1

PROTO_15:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R3 R1 K0 ["duration"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["duration"]
        6 JUMP                             ; [+1]
        7 LOADN                            R2 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETTABLEKS                       R4 R1 K1 ["easingStyle"]
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETTABLEKS                       R3 R1 K1 ["easingStyle"]
       14 JUMP                             ; [+2]
       15 GETIMPORT                        R3 K5 [Enum.EasingStyle.Linear]
       17 FASTCALL1                        TYPEOF R3 ; [+3]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R5 K7 [typeof]
       21 CALL                             R5 1 1
       22 JUMPIFEQKS                       R5 K8 ["EnumItem"] ; [+8]
       24 FASTCALL1                        TYPEOF R3 ; [+3]
       25 MOVE                             R6 R3
       26 GETIMPORT                        R5 K7 [typeof]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K9 ["string"] ; [+4]
       31 GETUPVAL                         R5 0
       32 GETTABLE                         R4 R5 R3
       33 JUMP                             ; [+1]
       34 GETUPVAL                         R4 1
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 DUPTABLE                         R6 K12 [{"step", "startingValue"}]
       41 SETTABLEKS                       R5 R6 K10 ["step"]
       43 JUMPIFNOT                        R1 ; [+3]
       44 GETTABLEKS                       R7 R1 K11 ["startingValue"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 SETTABLEKS                       R7 R6 K11 ["startingValue"]
       50 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["types"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPCLOSURE                       R2 K7 [PROTO_1]
       12 DUPCLOSURE                       R3 K8 [PROTO_2]
       13 DUPCLOSURE                       R4 K9 [PROTO_3]
       14 DUPCLOSURE                       R5 K10 [PROTO_4]
       15 DUPCLOSURE                       R6 K11 [PROTO_5]
       16 DUPCLOSURE                       R7 K12 [PROTO_6]
       17 DUPCLOSURE                       R8 K13 [PROTO_7]
       18 DUPCLOSURE                       R9 K14 [PROTO_8]
       19 DUPCLOSURE                       R10 K15 [PROTO_9]
       20 DUPCLOSURE                       R11 K16 [PROTO_10]
       21 DUPCLOSURE                       R12 K17 [PROTO_11]
       22 DUPCLOSURE                       R13 K18 [PROTO_12]
       23 DUPCLOSURE                       R14 K19 [PROTO_13]
       24 NEWTABLE                         R15 16 0
       26 GETIMPORT                        R16 K23 [Enum.EasingStyle.Linear]
       28 SETTABLE                         R1 R15 R16
       29 GETIMPORT                        R16 K25 [Enum.EasingStyle.Quad]
       31 SETTABLE                         R2 R15 R16
       32 GETIMPORT                        R16 K27 [Enum.EasingStyle.Cubic]
       34 SETTABLE                         R3 R15 R16
       35 GETIMPORT                        R16 K29 [Enum.EasingStyle.Quart]
       37 SETTABLE                         R4 R15 R16
       38 GETIMPORT                        R16 K31 [Enum.EasingStyle.Quint]
       40 SETTABLE                         R5 R15 R16
       41 GETIMPORT                        R16 K33 [Enum.EasingStyle.Exponential]
       43 SETTABLE                         R6 R15 R16
       44 GETIMPORT                        R16 K35 [Enum.EasingStyle.Sine]
       46 SETTABLE                         R7 R15 R16
       47 GETIMPORT                        R16 K37 [Enum.EasingStyle.Back]
       49 SETTABLE                         R9 R15 R16
       50 GETIMPORT                        R16 K39 [Enum.EasingStyle.Bounce]
       52 SETTABLE                         R11 R15 R16
       53 GETIMPORT                        R16 K41 [Enum.EasingStyle.Elastic]
       55 SETTABLE                         R8 R15 R16
       56 GETIMPORT                        R16 K43 [Enum.EasingStyle.Circular]
       58 SETTABLE                         R12 R15 R16
       59 DUPCLOSURE                       R16 K44 [PROTO_15]
       60 CAPTURE                          VAL R15
       61 CAPTURE                          VAL R14
       62 RETURN                           R16 1
