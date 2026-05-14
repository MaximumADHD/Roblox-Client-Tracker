PROTO_0:
        0 LOADK                            R4 K0 ["Model"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 NAMECALL                         R1 R0 K2 ["GetPivot"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K3 ["CFrame"]
       11 LOADK                            R5 K0 ["Model"]
       12 NAMECALL                         R3 R0 K1 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+4]
       16 NAMECALL                         R2 R0 K4 ["GetExtentsSize"]
       18 CALL                             R2 1 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R2 R0 K5 ["Size"]
       22 MULK                             R3 R2 K6 [0.5]
       23 GETTABLEKS                       R5 R1 K7 ["Position"]
       25 GETTABLEKS                       R8 R3 K8 ["X"]
       27 MINUS                            R7 R8
       28 GETTABLEKS                       R9 R3 K9 ["Y"]
       30 MINUS                            R8 R9
       31 GETTABLEKS                       R10 R3 K10 ["Z"]
       33 MINUS                            R9 R10
       34 FASTCALL                         VECTOR ; [+2]
       35 GETIMPORT                        R6 K13 [Vector3.new]
       37 CALL                             R6 3 1
       38 ADD                              R4 R5 R6
       39 GETTABLEKS                       R6 R1 K7 ["Position"]
       41 GETTABLEKS                       R8 R3 K8 ["X"]
       43 GETTABLEKS                       R9 R3 K9 ["Y"]
       45 GETTABLEKS                       R10 R3 K10 ["Z"]
       47 FASTCALL                         VECTOR ; [+2]
       48 GETIMPORT                        R7 K13 [Vector3.new]
       50 CALL                             R7 3 1
       51 ADD                              R5 R6 R7
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K8 ["X"]
       55 GETTABLEKS                       R9 R4 K8 ["X"]
       57 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       59 GETIMPORT                        R7 K16 [math.min]
       61 CALL                             R7 2 1
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K9 ["Y"]
       65 GETTABLEKS                       R10 R4 K9 ["Y"]
       67 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       69 GETIMPORT                        R8 K16 [math.min]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K10 ["Z"]
       75 GETTABLEKS                       R11 R4 K10 ["Z"]
       77 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       79 GETIMPORT                        R9 K16 [math.min]
       81 CALL                             R9 2 1
       82 FASTCALL                         VECTOR ; [+2]
       83 GETIMPORT                        R6 K13 [Vector3.new]
       85 CALL                             R6 3 1
       86 SETUPVAL                         R6 0
       87 GETUPVAL                         R8 1
       88 GETTABLEKS                       R8 R8 K8 ["X"]
       90 GETTABLEKS                       R9 R5 K8 ["X"]
       92 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       94 GETIMPORT                        R7 K18 [math.max]
       96 CALL                             R7 2 1
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K9 ["Y"]
      100 GETTABLEKS                       R10 R5 K9 ["Y"]
      102 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      104 GETIMPORT                        R8 K18 [math.max]
      106 CALL                             R8 2 1
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R10 R10 K10 ["Z"]
      110 GETTABLEKS                       R11 R5 K10 ["Z"]
      112 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      114 GETIMPORT                        R9 K18 [math.max]
      116 CALL                             R9 2 1
      117 FASTCALL                         VECTOR ; [+2]
      118 GETIMPORT                        R6 K13 [Vector3.new]
      120 CALL                             R6 3 1
      121 SETUPVAL                         R6 1
      122 RETURN                           R0 0

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
        9 LOADK                            R11 K2 ["Model"]
       10 NAMECALL                         R9 R8 K3 ["IsA"]
       12 CALL                             R9 2 1
       13 JUMPIF                           R9 ; [+10]
       14 LOADK                            R11 K4 ["BasePart"]
       15 NAMECALL                         R9 R8 K3 ["IsA"]
       17 CALL                             R9 2 1
       18 JUMPIF                           R9 ; [+5]
       19 LOADK                            R11 K5 ["MeshPart"]
       20 NAMECALL                         R9 R8 K3 ["IsA"]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+3]
       24 MOVE                             R9 R3
       25 MOVE                             R10 R8
       26 CALL                             R9 1 0
       27 FORGLOOP                         R4 2 ; [-19]
       29 LOADK                            R4 K0 [{∞, ∞, ∞}]
       30 JUMPIFNOTEQ                      R1 R4 ; [+13]
       32 LOADK                            R4 K1 [{-∞, -∞, -∞}]
       33 JUMPIFNOTEQ                      R2 R4 ; [+10]
       35 GETIMPORT                        R4 K8 [CFrame.new]
       37 CALL                             R4 0 1
       38 FASTCALL                         VECTOR ; [+2]
       39 GETIMPORT                        R5 K10 [Vector3.new]
       41 CALL                             R5 0 1
       42 CLOSEUPVALS                      R1
       43 RETURN                           R4 2
       44 ADD                              R5 R1 R2
       45 MULK                             R4 R5 K11 [0.5]
       46 SUB                              R5 R2 R1
       47 GETIMPORT                        R6 K8 [CFrame.new]
       49 MOVE                             R7 R4
       50 CALL                             R6 1 1
       51 MOVE                             R7 R5
       52 CLOSEUPVALS                      R1
       53 RETURN                           R6 2

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
