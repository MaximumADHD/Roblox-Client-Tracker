PROTO_0:
        0 LOADK                            R4 K0 ["Model"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 NAMECALL                         R1 R0 K2 ["GetPivot"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+3]
        9 NAMECALL                         R1 R0 K2 ["GetPivot"]
       11 CALL                             R1 1 1
       12 LOADK                            R5 K0 ["Model"]
       13 NAMECALL                         R3 R0 K1 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+4]
       17 NAMECALL                         R2 R0 K3 ["GetExtentsSize"]
       19 CALL                             R2 1 1
       20 JUMP                             ; [+9]
       21 LOADK                            R5 K4 ["BasePart"]
       22 NAMECALL                         R3 R0 K1 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+3]
       26 GETTABLEKS                       R2 R0 K5 ["Size"]
       28 JUMP                             ; [+1]
       29 LOADK                            R2 K6 [{0.1, 0.1, 0.1}]
       30 MULK                             R3 R2 K7 [0.5]
       31 GETTABLEKS                       R5 R1 K8 ["Position"]
       33 GETTABLEKS                       R8 R3 K9 ["X"]
       35 MINUS                            R7 R8
       36 GETTABLEKS                       R9 R3 K10 ["Y"]
       38 MINUS                            R8 R9
       39 GETTABLEKS                       R10 R3 K11 ["Z"]
       41 MINUS                            R9 R10
       42 FASTCALL                         VECTOR ; [+2]
       43 GETIMPORT                        R6 K14 [Vector3.new]
       45 CALL                             R6 3 1
       46 ADD                              R4 R5 R6
       47 GETTABLEKS                       R6 R1 K8 ["Position"]
       49 GETTABLEKS                       R8 R3 K9 ["X"]
       51 GETTABLEKS                       R9 R3 K10 ["Y"]
       53 GETTABLEKS                       R10 R3 K11 ["Z"]
       55 FASTCALL                         VECTOR ; [+2]
       56 GETIMPORT                        R7 K14 [Vector3.new]
       58 CALL                             R7 3 1
       59 ADD                              R5 R6 R7
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K9 ["X"]
       63 GETTABLEKS                       R9 R4 K9 ["X"]
       65 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       67 GETIMPORT                        R7 K17 [math.min]
       69 CALL                             R7 2 1
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K10 ["Y"]
       73 GETTABLEKS                       R10 R4 K10 ["Y"]
       75 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       77 GETIMPORT                        R8 K17 [math.min]
       79 CALL                             R8 2 1
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K11 ["Z"]
       83 GETTABLEKS                       R11 R4 K11 ["Z"]
       85 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       87 GETIMPORT                        R9 K17 [math.min]
       89 CALL                             R9 2 1
       90 FASTCALL                         VECTOR ; [+2]
       91 GETIMPORT                        R6 K14 [Vector3.new]
       93 CALL                             R6 3 1
       94 SETUPVAL                         R6 0
       95 GETUPVAL                         R8 1
       96 GETTABLEKS                       R8 R8 K9 ["X"]
       98 GETTABLEKS                       R9 R5 K9 ["X"]
      100 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      102 GETIMPORT                        R7 K19 [math.max]
      104 CALL                             R7 2 1
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K10 ["Y"]
      108 GETTABLEKS                       R10 R5 K10 ["Y"]
      110 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      112 GETIMPORT                        R8 K19 [math.max]
      114 CALL                             R8 2 1
      115 GETUPVAL                         R10 1
      116 GETTABLEKS                       R10 R10 K11 ["Z"]
      118 GETTABLEKS                       R11 R5 K11 ["Z"]
      120 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      122 GETIMPORT                        R9 K19 [math.max]
      124 CALL                             R9 2 1
      125 FASTCALL                         VECTOR ; [+2]
      126 GETIMPORT                        R6 K14 [Vector3.new]
      128 CALL                             R6 3 1
      129 SETUPVAL                         R6 1
      130 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R1 K0 [{∞, ∞, ∞}]
        1 LOADK                            R2 K1 [{-∞, -∞, -∞}]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R1
        4 CAPTURE                          REF R2
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 LOADK                            R11 K2 ["PVInstance"]
       10 NAMECALL                         R9 R8 K3 ["IsA"]
       12 CALL                             R9 2 1
       13 JUMPIFNOT                        R9 ; [+3]
       14 MOVE                             R9 R3
       15 MOVE                             R10 R8
       16 CALL                             R9 1 0
       17 FORGLOOP                         R4 2 ; [-9]
       19 LOADK                            R4 K0 [{∞, ∞, ∞}]
       20 JUMPIFNOTEQ                      R1 R4 ; [+13]
       22 LOADK                            R4 K1 [{-∞, -∞, -∞}]
       23 JUMPIFNOTEQ                      R2 R4 ; [+10]
       25 GETIMPORT                        R4 K6 [CFrame.new]
       27 CALL                             R4 0 1
       28 FASTCALL                         VECTOR ; [+2]
       29 GETIMPORT                        R5 K8 [Vector3.new]
       31 CALL                             R5 0 1
       32 CLOSEUPVALS                      R1
       33 RETURN                           R4 2
       34 ADD                              R5 R1 R2
       35 MULK                             R4 R5 K9 [0.5]
       36 SUB                              R5 R2 R1
       37 GETIMPORT                        R6 K6 [CFrame.new]
       39 MOVE                             R7 R4
       40 CALL                             R6 1 1
       41 MOVE                             R7 R5
       42 CLOSEUPVALS                      R1
       43 RETURN                           R6 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 2
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R4 K2 [Vector3.new]
        6 CALL                             R4 0 1
        7 JUMPIFNOTEQ                      R3 R4 ; [+2]
        9 RETURN                           R0 0
       10 MOVE                             R6 R2
       11 MOVE                             R7 R3
       12 NAMECALL                         R4 R0 K3 ["ZoomToExtents"]
       14 CALL                             R4 3 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
