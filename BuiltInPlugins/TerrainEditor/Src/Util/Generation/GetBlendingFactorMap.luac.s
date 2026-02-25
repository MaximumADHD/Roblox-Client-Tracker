PROTO_0:
        0 LOADN                            R6 0
        1 JUMPIFLT                         R6 R3 ; [+2]
        3 LOADB                            R5 0 +1
        4 LOADB                            R5 1
        5 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        7 LOADK                            R6 K0 ["w should be greater than 0"]
        8 GETIMPORT                        R4 K2 [assert]
       10 CALL                             R4 2 0
       11 MUL                              R9 R0 R0
       12 MINUS                            R8 R9
       13 DIV                              R7 R8 R3
       14 FASTCALL1                        MATH_EXP R7 ; [+2]
       15 GETIMPORT                        R6 K5 [math.exp]
       17 CALL                             R6 1 1
       18 MUL                              R5 R6 R2
       19 SUB                              R4 R1 R5
       20 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["PreserveRatio"]
        2 GETTABLEKS                       R3 R1 K1 ["PreserveDistance"]
        4 GETTABLEKS                       R4 R1 K2 ["BlendingStrength"]
        6 GETIMPORT                        R5 K5 [Vector2.new]
        8 GETTABLEKS                       R7 R0 K7 ["X"]
       10 DIVK                             R6 R7 K6 [2]
       11 GETTABLEKS                       R8 R0 K8 ["Y"]
       13 DIVK                             R7 R8 K6 [2]
       14 CALL                             R5 2 1
       15 GETTABLEKS                       R6 R5 K9 ["Magnitude"]
       17 GETTABLEKS                       R8 R5 K7 ["X"]
       19 GETTABLEKS                       R9 R5 K8 ["Y"]
       21 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       23 GETIMPORT                        R7 K12 [math.min]
       25 CALL                             R7 2 1
       26 GETIMPORT                        R8 K15 [table.create]
       28 GETTABLEKS                       R10 R0 K7 ["X"]
       30 GETTABLEKS                       R11 R0 K8 ["Y"]
       32 MUL                              R9 R10 R11
       33 LOADN                            R10 0
       34 CALL                             R8 2 1
       35 LOADN                            R11 1
       36 GETTABLEKS                       R9 R0 K7 ["X"]
       38 LOADN                            R10 1
       39 FORNPREP                         R9
       40 LOADN                            R14 1
       41 GETTABLEKS                       R12 R0 K8 ["Y"]
       43 LOADN                            R13 1
       44 FORNPREP                         R12
       45 GETIMPORT                        R15 K5 [Vector2.new]
       47 MOVE                             R16 R11
       48 MOVE                             R17 R14
       49 CALL                             R15 2 1
       50 SUB                              R16 R15 R5
       51 GETTABLEKS                       R17 R16 K9 ["Magnitude"]
       53 DIV                              R18 R17 R6
       54 DIV                              R19 R17 R7
       55 LOADN                            R21 1
       56 MUL                              R20 R21 R18
       57 LOADN                            R22 0
       58 MUL                              R21 R22 R19
       59 ADD                              R18 R20 R21
       60 LOADN                            R20 0
       61 JUMPIFNOTLT                      R20 R18 ; [+32]
       63 LOADN                            R20 1
       64 JUMPIFNOTLT                      R18 R20 ; [+29]
       66 MOVE                             R22 R18
       67 LOADN                            R25 0
       68 JUMPIFLT                         R25 R2 ; [+2]
       70 LOADB                            R24 0 +1
       71 LOADB                            R24 1
       72 FASTCALL2K                       ASSERT R24 K16 ; [+4]
       74 LOADK                            R25 K16 ["w should be greater than 0"]
       75 GETIMPORT                        R23 K18 [assert]
       77 CALL                             R23 2 0
       78 MUL                              R27 R22 R22
       79 MINUS                            R26 R27
       80 DIV                              R25 R26 R2
       81 FASTCALL1                        MATH_EXP R25 ; [+2]
       82 GETIMPORT                        R24 K21 [math.exp]
       84 CALL                             R24 1 1
       85 MUL                              R23 R24 R3
       86 SUBRK                            R21 R19 K23 [math.clamp]
       87 LOADN                            R22 0
       88 LOADN                            R23 1
       89 FASTCALL                         MATH_CLAMP ; [+2]
       90 GETIMPORT                        R20 K23 [math.clamp]
       92 CALL                             R20 3 1
       93 MUL                              R18 R20 R4
       94 SUBK                             R22 R11 K19 [1]
       95 GETTABLEKS                       R23 R0 K8 ["Y"]
       97 MUL                              R21 R22 R23
       98 ADD                              R20 R21 R14
       99 LOADN                            R23 0
      100 LOADN                            R24 1
      101 FASTCALL3                        MATH_CLAMP R18 R23 R24
      103 MOVE                             R22 R18
      104 GETIMPORT                        R21 K23 [math.clamp]
      106 CALL                             R21 3 1
      107 SETTABLE                         R21 R8 R20
      108 FORNLOOP                         R12
      109 FORNLOOP                         R9
      110 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
