PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["ViewportSize"]
        2 LOADN                            R4 1
        3 GETTABLEKS                       R6 R2 K1 ["X"]
        5 GETTABLEKS                       R7 R2 K2 ["Y"]
        7 DIV                              R5 R6 R7
        8 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       10 GETIMPORT                        R3 K5 [math.min]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R9 R1 K7 ["FieldOfView"]
       15 DIVK                             R8 R9 K6 [2]
       16 FASTCALL1                        MATH_RAD R8 ; [+2]
       17 GETIMPORT                        R7 K9 [math.rad]
       19 CALL                             R7 1 1
       20 FASTCALL1                        MATH_TAN R7 ; [+2]
       21 GETIMPORT                        R6 K11 [math.tan]
       23 CALL                             R6 1 1
       24 MUL                              R5 R6 R3
       25 FASTCALL1                        MATH_ATAN R5 ; [+2]
       26 GETIMPORT                        R4 K13 [math.atan]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R6 R0 K14 ["Magnitude"]
       31 DIVK                             R5 R6 K6 [2]
       32 FASTCALL1                        MATH_SIN R4 ; [+3]
       33 MOVE                             R8 R4
       34 GETIMPORT                        R7 K16 [math.sin]
       36 CALL                             R7 1 1
       37 DIV                              R6 R5 R7
       38 RETURN                           R6 1

PROTO_1:
        0 LOADK                            R1 K0 [{∞, ∞, ∞}]
        1 LOADK                            R2 K1 [{-∞, -∞, -∞}]
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADNIL                          R8
        7 LOADK                            R11 K2 ["BasePart"]
        8 NAMECALL                         R9 R7 K3 ["IsA"]
       10 CALL                             R9 2 1
       11 JUMPIFNOT                        R9 ; [+2]
       12 MOVE                             R8 R7
       13 JUMP                             ; [+13]
       14 GETTABLEKS                       R9 R7 K4 ["Parent"]
       16 JUMPIFEQKNIL                     R9 ; [+10]
       18 GETTABLEKS                       R9 R7 K4 ["Parent"]
       20 LOADK                            R11 K2 ["BasePart"]
       21 NAMECALL                         R9 R9 K3 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIFNOT                        R9 ; [+2]
       25 GETTABLEKS                       R8 R7 K4 ["Parent"]
       27 JUMPIFNOT                        R8 ; [+17]
       28 GETTABLEKS                       R10 R8 K5 ["CFrame"]
       30 GETTABLEKS                       R9 R10 K6 ["Position"]
       32 GETTABLEKS                       R11 R8 K8 ["Size"]
       34 DIVK                             R10 R11 K7 [2]
       35 SUB                              R13 R9 R10
       36 NAMECALL                         R11 R1 K9 ["Min"]
       38 CALL                             R11 2 1
       39 MOVE                             R1 R11
       40 ADD                              R13 R9 R10
       41 NAMECALL                         R11 R2 K10 ["Max"]
       43 CALL                             R11 2 1
       44 MOVE                             R2 R11
       45 FORGLOOP                         R3 2 ; [-40]
       47 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 2
        3 ADD                              R5 R2 R3
        4 DIVK                             R4 R5 K0 [2]
        5 SUB                              R5 R3 R2
        6 GETTABLEKS                       R6 R5 K1 ["Magnitude"]
        8 LOADK                            R7 K2 [1E-05]
        9 JUMPIFNOTLT                      R6 R7 ; [+2]
       11 RETURN                           R0 0
       12 GETIMPORT                        R6 K6 [Enum.CameraType.Fixed]
       14 SETTABLEKS                       R6 R0 K4 ["CameraType"]
       16 GETTABLEKS                       R7 R0 K7 ["ViewportSize"]
       18 LOADN                            R9 1
       19 GETTABLEKS                       R11 R7 K8 ["X"]
       21 GETTABLEKS                       R12 R7 K9 ["Y"]
       23 DIV                              R10 R11 R12
       24 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       26 GETIMPORT                        R8 K12 [math.min]
       28 CALL                             R8 2 1
       29 GETTABLEKS                       R14 R0 K13 ["FieldOfView"]
       31 DIVK                             R13 R14 K0 [2]
       32 FASTCALL1                        MATH_RAD R13 ; [+2]
       33 GETIMPORT                        R12 K15 [math.rad]
       35 CALL                             R12 1 1
       36 FASTCALL1                        MATH_TAN R12 ; [+2]
       37 GETIMPORT                        R11 K17 [math.tan]
       39 CALL                             R11 1 1
       40 MUL                              R10 R11 R8
       41 FASTCALL1                        MATH_ATAN R10 ; [+2]
       42 GETIMPORT                        R9 K19 [math.atan]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R11 R5 K1 ["Magnitude"]
       47 DIVK                             R10 R11 K0 [2]
       48 FASTCALL1                        MATH_SIN R9 ; [+3]
       49 MOVE                             R12 R9
       50 GETIMPORT                        R11 K21 [math.sin]
       52 CALL                             R11 1 1
       53 DIV                              R6 R10 R11
       54 GETTABLEKS                       R7 R0 K22 ["CFrame"]
       56 GETTABLEKS                       R11 R7 K23 ["Position"]
       58 SUB                              R10 R7 R11
       59 ADD                              R9 R10 R4
       60 GETTABLEKS                       R11 R7 K24 ["LookVector"]
       62 MUL                              R10 R11 R6
       63 SUB                              R8 R9 R10
       64 SETTABLEKS                       R8 R0 K22 ["CFrame"]
       66 GETIMPORT                        R8 K26 [CFrame.new]
       68 MOVE                             R9 R4
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R0 K27 ["Focus"]
       72 LOADNIL                          R8
       73 RETURN                           R8 1

PROTO_3:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 GETIMPORT                        R3 K2 [string.match]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K3 ["%d+"]
        6 CALL                             R3 2 1
        7 JUMPIFEQ                         R3 R1 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 LOADB                            R2 0
       13 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R4 K0 ["Decal"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+16]
        5 GETTABLEKS                       R3 R0 K2 ["Texture"]
        7 JUMPIFEQKNIL                     R3 ; [+11]
        9 GETIMPORT                        R4 K5 [string.match]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K6 ["%d+"]
       13 CALL                             R4 2 1
       14 JUMPIFEQ                         R4 R1 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 LOADB                            R2 0
       20 RETURN                           R2 1
       21 LOADK                            R4 K7 ["MeshPart"]
       22 NAMECALL                         R2 R0 K1 ["IsA"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+32]
       26 GETTABLEKS                       R3 R0 K8 ["MeshId"]
       28 JUMPIFEQKNIL                     R3 ; [+11]
       30 GETIMPORT                        R4 K5 [string.match]
       32 MOVE                             R5 R3
       33 LOADK                            R6 K6 ["%d+"]
       34 CALL                             R4 2 1
       35 JUMPIFEQ                         R4 R1 ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 JUMP                             ; [+1]
       40 LOADB                            R2 0
       41 JUMPIF                           R2 ; [+15]
       42 GETTABLEKS                       R3 R0 K9 ["TextureID"]
       44 JUMPIFEQKNIL                     R3 ; [+11]
       46 GETIMPORT                        R4 K5 [string.match]
       48 MOVE                             R5 R3
       49 LOADK                            R6 K6 ["%d+"]
       50 CALL                             R4 2 1
       51 JUMPIFEQ                         R4 R1 ; [+2]
       53 LOADB                            R2 0 +1
       54 LOADB                            R2 1
       55 RETURN                           R2 1
       56 LOADB                            R2 0
       57 RETURN                           R2 1
       58 LOADK                            R4 K10 ["SurfaceAppearance"]
       59 NAMECALL                         R2 R0 K1 ["IsA"]
       61 CALL                             R2 2 1
       62 JUMPIFNOT                        R2 ; [+64]
       63 GETTABLEKS                       R3 R0 K11 ["ColorMap"]
       65 JUMPIFEQKNIL                     R3 ; [+11]
       67 GETIMPORT                        R4 K5 [string.match]
       69 MOVE                             R5 R3
       70 LOADK                            R6 K6 ["%d+"]
       71 CALL                             R4 2 1
       72 JUMPIFEQ                         R4 R1 ; [+2]
       74 LOADB                            R2 0 +1
       75 LOADB                            R2 1
       76 JUMP                             ; [+1]
       77 LOADB                            R2 0
       78 JUMPIF                           R2 ; [+47]
       79 GETTABLEKS                       R3 R0 K12 ["MetalnessMap"]
       81 JUMPIFEQKNIL                     R3 ; [+11]
       83 GETIMPORT                        R4 K5 [string.match]
       85 MOVE                             R5 R3
       86 LOADK                            R6 K6 ["%d+"]
       87 CALL                             R4 2 1
       88 JUMPIFEQ                         R4 R1 ; [+2]
       90 LOADB                            R2 0 +1
       91 LOADB                            R2 1
       92 JUMP                             ; [+1]
       93 LOADB                            R2 0
       94 JUMPIF                           R2 ; [+31]
       95 GETTABLEKS                       R3 R0 K13 ["NormalMap"]
       97 JUMPIFEQKNIL                     R3 ; [+11]
       99 GETIMPORT                        R4 K5 [string.match]
      101 MOVE                             R5 R3
      102 LOADK                            R6 K6 ["%d+"]
      103 CALL                             R4 2 1
      104 JUMPIFEQ                         R4 R1 ; [+2]
      106 LOADB                            R2 0 +1
      107 LOADB                            R2 1
      108 JUMP                             ; [+1]
      109 LOADB                            R2 0
      110 JUMPIF                           R2 ; [+15]
      111 GETTABLEKS                       R3 R0 K14 ["RoughnessMap"]
      113 JUMPIFEQKNIL                     R3 ; [+11]
      115 GETIMPORT                        R4 K5 [string.match]
      117 MOVE                             R5 R3
      118 LOADK                            R6 K6 ["%d+"]
      119 CALL                             R4 2 1
      120 JUMPIFEQ                         R4 R1 ; [+2]
      122 LOADB                            R2 0 +1
      123 LOADB                            R2 1
      124 RETURN                           R2 1
      125 LOADB                            R2 0
      126 RETURN                           R2 1
      127 LOADK                            R4 K15 ["FileMesh"]
      128 NAMECALL                         R2 R0 K1 ["IsA"]
      130 CALL                             R2 2 1
      131 JUMPIFNOT                        R2 ; [+32]
      132 GETTABLEKS                       R3 R0 K8 ["MeshId"]
      134 JUMPIFEQKNIL                     R3 ; [+11]
      136 GETIMPORT                        R4 K5 [string.match]
      138 MOVE                             R5 R3
      139 LOADK                            R6 K6 ["%d+"]
      140 CALL                             R4 2 1
      141 JUMPIFEQ                         R4 R1 ; [+2]
      143 LOADB                            R2 0 +1
      144 LOADB                            R2 1
      145 JUMP                             ; [+1]
      146 LOADB                            R2 0
      147 JUMPIF                           R2 ; [+15]
      148 GETTABLEKS                       R3 R0 K16 ["TextureId"]
      150 JUMPIFEQKNIL                     R3 ; [+11]
      152 GETIMPORT                        R4 K5 [string.match]
      154 MOVE                             R5 R3
      155 LOADK                            R6 K6 ["%d+"]
      156 CALL                             R4 2 1
      157 JUMPIFEQ                         R4 R1 ; [+2]
      159 LOADB                            R2 0 +1
      160 LOADB                            R2 1
      161 RETURN                           R2 1
      162 LOADB                            R2 0
      163 RETURN                           R2 1
      164 LOADB                            R2 0
      165 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 NEWTABLE                         R2 0 0
        8 GETIMPORT                        R4 K1 [game]
       10 GETTABLEKS                       R3 R4 K4 ["Workspace"]
       12 NAMECALL                         R3 R3 K5 ["GetDescendants"]
       14 CALL                             R3 1 3
       15 FORGPREP                         R3
       16 GETUPVAL                         R8 0
       17 MOVE                             R9 R7
       18 MOVE                             R10 R0
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       23 MOVE                             R9 R2
       24 MOVE                             R10 R7
       25 GETIMPORT                        R8 K8 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-13]
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R1 K9 ["Set"]
       33 CALL                             R3 2 0
       34 GETIMPORT                        R5 K1 [game]
       36 GETTABLEKS                       R4 R5 K4 ["Workspace"]
       38 GETTABLEKS                       R3 R4 K10 ["CurrentCamera"]
       40 JUMPIFEQKNIL                     R3 ; [+5]
       42 GETUPVAL                         R4 1
       43 MOVE                             R5 R3
       44 MOVE                             R6 R2
       45 CALL                             R4 2 0
       46 LOADNIL                          R4
       47 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 CAPTURE                          VAL R1
        5 DUPCLOSURE                       R3 K3 [PROTO_3]
        6 DUPCLOSURE                       R4 K4 [PROTO_4]
        7 DUPCLOSURE                       R5 K5 [PROTO_5]
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R2
       10 RETURN                           R5 1
