PROTO_0:
        0 NEWTABLE                         R3 0 8
        2 GETTABLEKS                       R6 R1 K1 ["X"]
        4 DIVK                             R5 R6 K0 [2]
        5 GETTABLEKS                       R7 R1 K2 ["Y"]
        7 DIVK                             R6 R7 K0 [2]
        8 GETTABLEKS                       R8 R1 K3 ["Z"]
       10 DIVK                             R7 R8 K0 [2]
       11 FASTCALL                         VECTOR ; [+2]
       12 GETIMPORT                        R4 K6 [Vector3.new]
       14 CALL                             R4 3 1
       15 GETTABLEKS                       R8 R1 K1 ["X"]
       17 MINUS                            R7 R8
       18 DIVK                             R6 R7 K0 [2]
       19 GETTABLEKS                       R8 R1 K2 ["Y"]
       21 DIVK                             R7 R8 K0 [2]
       22 GETTABLEKS                       R9 R1 K3 ["Z"]
       24 DIVK                             R8 R9 K0 [2]
       25 FASTCALL                         VECTOR ; [+2]
       26 GETIMPORT                        R5 K6 [Vector3.new]
       28 CALL                             R5 3 1
       29 GETTABLEKS                       R8 R1 K1 ["X"]
       31 DIVK                             R7 R8 K0 [2]
       32 GETTABLEKS                       R10 R1 K2 ["Y"]
       34 MINUS                            R9 R10
       35 DIVK                             R8 R9 K0 [2]
       36 GETTABLEKS                       R10 R1 K3 ["Z"]
       38 DIVK                             R9 R10 K0 [2]
       39 FASTCALL                         VECTOR ; [+2]
       40 GETIMPORT                        R6 K6 [Vector3.new]
       42 CALL                             R6 3 1
       43 GETTABLEKS                       R9 R1 K1 ["X"]
       45 DIVK                             R8 R9 K0 [2]
       46 GETTABLEKS                       R10 R1 K2 ["Y"]
       48 DIVK                             R9 R10 K0 [2]
       49 GETTABLEKS                       R12 R1 K3 ["Z"]
       51 MINUS                            R11 R12
       52 DIVK                             R10 R11 K0 [2]
       53 FASTCALL                         VECTOR ; [+2]
       54 GETIMPORT                        R7 K6 [Vector3.new]
       56 CALL                             R7 3 1
       57 GETTABLEKS                       R11 R1 K1 ["X"]
       59 MINUS                            R10 R11
       60 DIVK                             R9 R10 K0 [2]
       61 GETTABLEKS                       R12 R1 K2 ["Y"]
       63 MINUS                            R11 R12
       64 DIVK                             R10 R11 K0 [2]
       65 GETTABLEKS                       R12 R1 K3 ["Z"]
       67 DIVK                             R11 R12 K0 [2]
       68 FASTCALL                         VECTOR ; [+2]
       69 GETIMPORT                        R8 K6 [Vector3.new]
       71 CALL                             R8 3 1
       72 GETTABLEKS                       R12 R1 K1 ["X"]
       74 MINUS                            R11 R12
       75 DIVK                             R10 R11 K0 [2]
       76 GETTABLEKS                       R12 R1 K2 ["Y"]
       78 DIVK                             R11 R12 K0 [2]
       79 GETTABLEKS                       R14 R1 K3 ["Z"]
       81 MINUS                            R13 R14
       82 DIVK                             R12 R13 K0 [2]
       83 FASTCALL                         VECTOR ; [+2]
       84 GETIMPORT                        R9 K6 [Vector3.new]
       86 CALL                             R9 3 1
       87 GETTABLEKS                       R12 R1 K1 ["X"]
       89 DIVK                             R11 R12 K0 [2]
       90 GETTABLEKS                       R14 R1 K2 ["Y"]
       92 MINUS                            R13 R14
       93 DIVK                             R12 R13 K0 [2]
       94 GETTABLEKS                       R15 R1 K3 ["Z"]
       96 MINUS                            R14 R15
       97 DIVK                             R13 R14 K0 [2]
       98 FASTCALL                         VECTOR ; [+2]
       99 GETIMPORT                        R10 K6 [Vector3.new]
      101 CALL                             R10 3 1
      102 GETTABLEKS                       R14 R1 K1 ["X"]
      104 MINUS                            R13 R14
      105 DIVK                             R12 R13 K0 [2]
      106 GETTABLEKS                       R15 R1 K2 ["Y"]
      108 MINUS                            R14 R15
      109 DIVK                             R13 R14 K0 [2]
      110 GETTABLEKS                       R16 R1 K3 ["Z"]
      112 MINUS                            R15 R16
      113 DIVK                             R14 R15 K0 [2]
      114 FASTCALL                         VECTOR ; [+2]
      115 GETIMPORT                        R11 K6 [Vector3.new]
      117 CALL                             R11 3 1
      118 SETLIST                          R3 R4 8 [1]
      120 LOADK                            R4 K7 [{∞, ∞, ∞}]
      121 LOADK                            R5 K8 [{-∞, -∞, -∞}]
      122 MOVE                             R6 R3
      123 LOADNIL                          R7
      124 LOADNIL                          R8
      125 FORGPREP                         R6
      126 JUMPIFNOT                        R2 ; [+4]
      127 GETTABLEKS                       R12 R0 K9 ["Position"]
      129 ADD                              R11 R12 R10
      130 JUMP                             ; [+1]
      131 MUL                              R11 R0 R10
      132 GETTABLEKS                       R14 R4 K1 ["X"]
      134 GETTABLEKS                       R15 R11 K1 ["X"]
      136 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      138 GETIMPORT                        R13 K12 [math.min]
      140 CALL                             R13 2 1
      141 GETTABLEKS                       R15 R4 K2 ["Y"]
      143 GETTABLEKS                       R16 R11 K2 ["Y"]
      145 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      147 GETIMPORT                        R14 K12 [math.min]
      149 CALL                             R14 2 1
      150 GETTABLEKS                       R16 R4 K3 ["Z"]
      152 GETTABLEKS                       R17 R11 K3 ["Z"]
      154 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
      156 GETIMPORT                        R15 K12 [math.min]
      158 CALL                             R15 2 1
      159 FASTCALL                         VECTOR ; [+2]
      160 GETIMPORT                        R12 K6 [Vector3.new]
      162 CALL                             R12 3 1
      163 MOVE                             R4 R12
      164 GETTABLEKS                       R14 R5 K1 ["X"]
      166 GETTABLEKS                       R15 R11 K1 ["X"]
      168 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
      170 GETIMPORT                        R13 K14 [math.max]
      172 CALL                             R13 2 1
      173 GETTABLEKS                       R15 R5 K2 ["Y"]
      175 GETTABLEKS                       R16 R11 K2 ["Y"]
      177 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      179 GETIMPORT                        R14 K14 [math.max]
      181 CALL                             R14 2 1
      182 GETTABLEKS                       R16 R5 K3 ["Z"]
      184 GETTABLEKS                       R17 R11 K3 ["Z"]
      186 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      188 GETIMPORT                        R15 K14 [math.max]
      190 CALL                             R15 2 1
      191 FASTCALL                         VECTOR ; [+2]
      192 GETIMPORT                        R12 K6 [Vector3.new]
      194 CALL                             R12 3 1
      195 MOVE                             R5 R12
      196 FORGLOOP                         R6 2 ; [-71]
      198 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
