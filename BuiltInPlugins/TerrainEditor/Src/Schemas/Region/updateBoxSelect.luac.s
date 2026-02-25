PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["Position"]
        2 DIVK                             R1 R2 K0 [4]
        3 GETTABLEKS                       R5 R1 K2 ["X"]
        5 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        6 GETIMPORT                        R4 K5 [math.floor]
        8 CALL                             R4 1 1
        9 MULK                             R3 R4 K0 [4]
       10 GETTABLEKS                       R6 R1 K6 ["Y"]
       12 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       13 GETIMPORT                        R5 K5 [math.floor]
       15 CALL                             R5 1 1
       16 MULK                             R4 R5 K0 [4]
       17 GETTABLEKS                       R7 R1 K7 ["Z"]
       19 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       20 GETIMPORT                        R6 K5 [math.floor]
       22 CALL                             R6 1 1
       23 MULK                             R5 R6 K0 [4]
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R2 K10 [Vector3.new]
       27 CALL                             R2 3 1
       28 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R5 K2 [Vector2.new]
        2 GETTABLEKS                       R6 R1 K3 ["X"]
        4 GETTABLEKS                       R7 R1 K4 ["Y"]
        6 CALL                             R5 2 -1
        7 NAMECALL                         R3 R0 K5 ["viewportPointToRay"]
        9 CALL                             R3 -1 1
       10 GETIMPORT                        R6 K2 [Vector2.new]
       12 GETTABLEKS                       R7 R2 K3 ["X"]
       14 GETTABLEKS                       R8 R2 K4 ["Y"]
       16 CALL                             R6 2 -1
       17 NAMECALL                         R4 R0 K5 ["viewportPointToRay"]
       19 CALL                             R4 -1 1
       20 SUB                              R5 R2 R1
       21 GETTABLEKS                       R9 R5 K3 ["X"]
       23 POWK                             R8 R9 K6 [2]
       24 GETTABLEKS                       R10 R5 K4 ["Y"]
       26 POWK                             R9 R10 K6 [2]
       27 ADD                              R7 R8 R9
       28 FASTCALL1                        MATH_SQRT R7 ; [+2]
       29 GETIMPORT                        R6 K9 [math.sqrt]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K10 ["MouseMoveThreshold"]
       35 JUMPIFNOTLT                      R6 R7 ; [+5]
       37 GETTABLEKS                       R6 R0 K11 ["reachedMinimalMouseDistance"]
       39 JUMPIF                           R6 ; [+1]
       40 RETURN                           R0 0
       41 LOADB                            R6 1
       42 SETTABLEKS                       R6 R0 K11 ["reachedMinimalMouseDistance"]
       44 GETIMPORT                        R6 K13 [workspace]
       46 GETTABLEKS                       R8 R3 K14 ["Origin"]
       48 GETTABLEKS                       R10 R3 K16 ["Direction"]
       50 MULK                             R9 R10 K15 [4096]
       51 NAMECALL                         R6 R6 K17 ["Raycast"]
       53 CALL                             R6 3 1
       54 GETIMPORT                        R7 K13 [workspace]
       56 GETTABLEKS                       R9 R4 K14 ["Origin"]
       58 GETTABLEKS                       R11 R4 K16 ["Direction"]
       60 MULK                             R10 R11 K15 [4096]
       61 NAMECALL                         R7 R7 K17 ["Raycast"]
       63 CALL                             R7 3 1
       64 JUMPIFNOT                        R6 ; [+1]
       65 JUMPIF                           R7 ; [+1]
       66 RETURN                           R0 0
       67 GETTABLEKS                       R8 R0 K18 ["selectionOnDragPoint"]
       69 JUMPIF                           R8 ; [+2]
       70 SETTABLEKS                       R6 R0 K18 ["selectionOnDragPoint"]
       72 GETTABLEKS                       R9 R0 K18 ["selectionOnDragPoint"]
       74 GETTABLEKS                       R11 R9 K20 ["Position"]
       76 DIVK                             R10 R11 K19 [4]
       77 GETTABLEKS                       R14 R10 K3 ["X"]
       79 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       80 GETIMPORT                        R13 K22 [math.floor]
       82 CALL                             R13 1 1
       83 MULK                             R12 R13 K19 [4]
       84 GETTABLEKS                       R15 R10 K4 ["Y"]
       86 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       87 GETIMPORT                        R14 K22 [math.floor]
       89 CALL                             R14 1 1
       90 MULK                             R13 R14 K19 [4]
       91 GETTABLEKS                       R16 R10 K23 ["Z"]
       93 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       94 GETIMPORT                        R15 K22 [math.floor]
       96 CALL                             R15 1 1
       97 MULK                             R14 R15 K19 [4]
       98 FASTCALL                         VECTOR ; [+2]
       99 GETIMPORT                        R11 K25 [Vector3.new]
      101 CALL                             R11 3 1
      102 MOVE                             R8 R11
      103 GETTABLEKS                       R11 R7 K20 ["Position"]
      105 DIVK                             R10 R11 K19 [4]
      106 GETTABLEKS                       R14 R10 K3 ["X"]
      108 FASTCALL1                        MATH_FLOOR R14 ; [+2]
      109 GETIMPORT                        R13 K22 [math.floor]
      111 CALL                             R13 1 1
      112 MULK                             R12 R13 K19 [4]
      113 GETTABLEKS                       R15 R10 K4 ["Y"]
      115 FASTCALL1                        MATH_FLOOR R15 ; [+2]
      116 GETIMPORT                        R14 K22 [math.floor]
      118 CALL                             R14 1 1
      119 MULK                             R13 R14 K19 [4]
      120 GETTABLEKS                       R16 R10 K23 ["Z"]
      122 FASTCALL1                        MATH_FLOOR R16 ; [+2]
      123 GETIMPORT                        R15 K22 [math.floor]
      125 CALL                             R15 1 1
      126 MULK                             R14 R15 K19 [4]
      127 FASTCALL                         VECTOR ; [+2]
      128 GETIMPORT                        R11 K25 [Vector3.new]
      130 CALL                             R11 3 1
      131 MOVE                             R9 R11
      132 MOVE                             R12 R9
      133 NAMECALL                         R10 R8 K26 ["Min"]
      135 CALL                             R10 2 1
      136 MOVE                             R13 R8
      137 NAMECALL                         R11 R9 K27 ["Max"]
      139 CALL                             R11 2 1
      140 SUB                              R12 R11 R10
      141 LOADK                            R15 K28 [{4, 4, 4}]
      142 NAMECALL                         R13 R12 K27 ["Max"]
      144 CALL                             R13 2 1
      145 MOVE                             R12 R13
      146 DUPTABLE                         R13 K31 [{"Size", "Transform"}]
      147 SETTABLEKS                       R12 R13 K29 ["Size"]
      149 GETIMPORT                        R14 K33 [CFrame.new]
      151 ADD                              R16 R11 R10
      152 DIVK                             R15 R16 K6 [2]
      153 CALL                             R14 1 1
      154 SETTABLEKS                       R14 R13 K30 ["Transform"]
      156 GETTABLEKS                       R14 R0 K34 ["updateSelectionOnDrag"]
      158 MOVE                             R15 R13
      159 CALL                             R14 1 0
      160 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 DUPCLOSURE                       R3 K10 [PROTO_1]
       18 CAPTURE                          VAL R1
       19 RETURN                           R3 1
