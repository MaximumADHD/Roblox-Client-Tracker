PROTO_0:
        0 GETUPVAL                         R4 0
        1 DIV                              R3 R0 R4
        2 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        3 GETIMPORT                        R2 K2 [math.floor]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 MUL                              R1 R2 R3
        8 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 GETTABLEKS                       R7 R0 K0 ["Position"]
        4 GETTABLEKS                       R6 R7 K1 ["X"]
        6 GETTABLEKS                       R8 R1 K1 ["X"]
        8 DIVK                             R7 R8 K2 [2]
        9 SUB                              R5 R6 R7
       10 DIV                              R7 R5 R2
       11 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       12 GETIMPORT                        R6 K5 [math.floor]
       14 CALL                             R6 1 1
       15 MUL                              R4 R6 R2
       16 GETTABLEKS                       R8 R0 K0 ["Position"]
       18 GETTABLEKS                       R7 R8 K1 ["X"]
       20 GETTABLEKS                       R9 R1 K1 ["X"]
       22 DIVK                             R8 R9 K2 [2]
       23 ADD                              R6 R7 R8
       24 DIV                              R8 R6 R2
       25 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       26 GETIMPORT                        R7 K5 [math.floor]
       28 CALL                             R7 1 1
       29 MUL                              R5 R7 R2
       30 GETTABLEKS                       R9 R0 K0 ["Position"]
       32 GETTABLEKS                       R8 R9 K6 ["Y"]
       34 GETTABLEKS                       R10 R1 K6 ["Y"]
       36 DIVK                             R9 R10 K2 [2]
       37 SUB                              R7 R8 R9
       38 DIV                              R9 R7 R2
       39 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       40 GETIMPORT                        R8 K5 [math.floor]
       42 CALL                             R8 1 1
       43 MUL                              R6 R8 R2
       44 GETTABLEKS                       R10 R0 K0 ["Position"]
       46 GETTABLEKS                       R9 R10 K6 ["Y"]
       48 GETTABLEKS                       R11 R1 K6 ["Y"]
       50 DIVK                             R10 R11 K2 [2]
       51 ADD                              R8 R9 R10
       52 DIV                              R10 R8 R2
       53 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       54 GETIMPORT                        R9 K5 [math.floor]
       56 CALL                             R9 1 1
       57 MUL                              R7 R9 R2
       58 GETTABLEKS                       R11 R0 K0 ["Position"]
       60 GETTABLEKS                       R10 R11 K7 ["Z"]
       62 GETTABLEKS                       R12 R1 K7 ["Z"]
       64 DIVK                             R11 R12 K2 [2]
       65 SUB                              R9 R10 R11
       66 DIV                              R11 R9 R2
       67 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       68 GETIMPORT                        R10 K5 [math.floor]
       70 CALL                             R10 1 1
       71 MUL                              R8 R10 R2
       72 GETTABLEKS                       R12 R0 K0 ["Position"]
       74 GETTABLEKS                       R11 R12 K7 ["Z"]
       76 GETTABLEKS                       R13 R1 K7 ["Z"]
       78 DIVK                             R12 R13 K2 [2]
       79 ADD                              R10 R11 R12
       80 DIV                              R12 R10 R2
       81 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       82 GETIMPORT                        R11 K5 [math.floor]
       84 CALL                             R11 1 1
       85 MUL                              R9 R11 R2
       86 SUB                              R11 R5 R4
       87 SUB                              R12 R7 R6
       88 SUB                              R13 R9 R8
       89 FASTCALL                         VECTOR ; [+2]
       90 GETIMPORT                        R10 K10 [Vector3.new]
       92 CALL                             R10 3 1
       93 GETIMPORT                        R11 K12 [CFrame.new]
       95 ADD                              R14 R4 R5
       96 DIVK                             R13 R14 K2 [2]
       97 ADD                              R15 R6 R7
       98 DIVK                             R14 R15 K2 [2]
       99 ADD                              R16 R8 R9
      100 DIVK                             R15 R16 K2 [2]
      101 FASTCALL                         VECTOR ; [+2]
      102 GETIMPORT                        R12 K10 [Vector3.new]
      104 CALL                             R12 3 1
      105 CALL                             R11 1 1
      106 MOVE                             R12 R11
      107 MOVE                             R13 R10
      108 RETURN                           R12 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
