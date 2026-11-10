PROTO_0:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 [0.01]
        2 NAMECALL                         R3 R1 K1 ["FuzzyEq"]
        4 CALL                             R3 3 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADK                            R3 K2 ["Center"]
        7 RETURN                           R3 1
        8 GETTABLEKS                       R5 R1 K3 ["X"]
       10 FASTCALL1                        MATH_ABS R5 ; [+2]
       11 GETIMPORT                        R4 K6 [math.abs]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R6 R1 K7 ["Y"]
       16 FASTCALL1                        MATH_ABS R6 ; [+2]
       17 GETIMPORT                        R5 K6 [math.abs]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R7 R1 K8 ["Z"]
       22 FASTCALL1                        MATH_ABS R7 ; [+2]
       23 GETIMPORT                        R6 K6 [math.abs]
       25 CALL                             R6 1 1
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R3 K11 [Vector3.new]
       29 CALL                             R3 3 1
       30 DIVK                             R4 R2 K12 [2]
       31 SUB                              R5 R3 R4
       32 LOADB                            R6 0
       33 GETTABLEKS                       R7 R5 K3 ["X"]
       35 LOADK                            R8 K0 [0.01]
       36 JUMPIFNOTLT                      R7 R8 ; [+14]
       38 LOADB                            R6 0
       39 GETTABLEKS                       R7 R5 K7 ["Y"]
       41 LOADK                            R8 K0 [0.01]
       42 JUMPIFNOTLT                      R7 R8 ; [+8]
       44 GETTABLEKS                       R7 R5 K8 ["Z"]
       46 LOADK                            R8 K0 [0.01]
       47 JUMPIFLT                         R7 R8 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 JUMPIFNOT                        R6 ; [+31]
       52 GETTABLEKS                       R8 R5 K3 ["X"]
       54 FASTCALL1                        MATH_ABS R8 ; [+2]
       55 GETIMPORT                        R7 K6 [math.abs]
       57 CALL                             R7 1 1
       58 LOADK                            R8 K0 [0.01]
       59 JUMPIFLT                         R7 R8 ; [+19]
       61 GETTABLEKS                       R8 R5 K7 ["Y"]
       63 FASTCALL1                        MATH_ABS R8 ; [+2]
       64 GETIMPORT                        R7 K6 [math.abs]
       66 CALL                             R7 1 1
       67 LOADK                            R8 K0 [0.01]
       68 JUMPIFLT                         R7 R8 ; [+10]
       70 GETTABLEKS                       R8 R5 K8 ["Z"]
       72 FASTCALL1                        MATH_ABS R8 ; [+2]
       73 GETIMPORT                        R7 K6 [math.abs]
       75 CALL                             R7 1 1
       76 LOADK                            R8 K0 [0.01]
       77 JUMPIFNOTLT                      R7 R8 ; [+3]
       79 LOADK                            R7 K13 ["Surface"]
       80 RETURN                           R7 1
       81 LOADK                            R7 K14 ["Inside"]
       82 RETURN                           R7 1
       83 DIV                              R7 R5 R2
       84 GETTABLEKS                       R9 R7 K3 ["X"]
       86 GETTABLEKS                       R10 R7 K7 ["Y"]
       88 GETTABLEKS                       R11 R7 K8 ["Z"]
       90 FASTCALL                         MATH_MAX ; [+2]
       91 GETIMPORT                        R8 K16 [math.max]
       93 CALL                             R8 3 1
       94 LOADN                            R9 1
       95 JUMPIFNOTLT                      R9 R8 ; [+3]
       97 LOADK                            R9 K17 ["Far"]
       98 RETURN                           R9 1
       99 LOADK                            R9 K18 ["Outside"]
      100 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 FASTCALL                         VECTOR ; [+2]
        2 GETIMPORT                        R0 K2 [Vector3.new]
        4 CALL                             R0 0 1
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
