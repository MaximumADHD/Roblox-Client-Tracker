PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R0 R1
        5 LOADN                            R1 0
        6 JUMPIFNOTLT                      R1 R0 ; [+7]
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K0 ["Get"]
       11 CALL                             R1 1 1
       12 GETTABLEN                        R0 R1 1
       13 RETURN                           R0 1
       14 LOADNIL                          R0
       15 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["FaceControls"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 1
        9 LOADK                            R3 K2 ["MeshPart"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETTABLEKS                       R1 R0 K3 ["Name"]
       16 JUMPIFNOTEQKS                    R1 K4 ["Head"] ; [+12]
       18 LOADK                            R3 K0 ["FaceControls"]
       19 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+6]
       23 LOADK                            R4 K0 ["FaceControls"]
       24 NAMECALL                         R2 R1 K1 ["IsA"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R1 1
       29 LOADK                            R3 K6 ["Model"]
       30 NAMECALL                         R1 R0 K1 ["IsA"]
       32 CALL                             R1 2 1
       33 JUMPIFNOT                        R1 ; [+21]
       34 LOADK                            R3 K4 ["Head"]
       35 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+16]
       39 LOADK                            R4 K2 ["MeshPart"]
       40 NAMECALL                         R2 R1 K1 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+11]
       44 LOADK                            R4 K0 ["FaceControls"]
       45 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       47 CALL                             R2 2 1
       48 JUMPIFNOT                        R2 ; [+6]
       49 LOADK                            R5 K0 ["FaceControls"]
       50 NAMECALL                         R3 R2 K1 ["IsA"]
       52 CALL                             R3 2 1
       53 JUMPIFNOT                        R3 ; [+1]
       54 RETURN                           R2 1
       55 LOADNIL                          R1
       56 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R3 R0 K0 ["LookVector"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 FASTCALL1                        MATH_ABS R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.abs]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K5 [0.9]
       10 JUMPIFNOTLT                      R3 R2 ; [+4]
       12 GETTABLEKS                       R1 R0 K6 ["UpVector"]
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R1 R0 K0 ["LookVector"]
       17 GETTABLEKS                       R3 R1 K7 ["X"]
       19 LOADN                            R4 0
       20 GETTABLEKS                       R5 R1 K8 ["Z"]
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R2 K11 [Vector3.new]
       25 CALL                             R2 3 1
       26 GETTABLEKS                       R1 R2 K12 ["Unit"]
       28 GETIMPORT                        R2 K15 [CFrame.lookAt]
       30 GETTABLEKS                       R3 R0 K16 ["Position"]
       32 GETTABLEKS                       R5 R0 K16 ["Position"]
       34 ADD                              R4 R5 R1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_3:
        0 LOADK                            R0 K0 [{∞, ∞, ∞}]
        1 LOADK                            R1 K1 [{-∞, -∞, -∞}]
        2 RETURN                           R0 2

PROTO_4:
        0 GETTABLEKS                       R7 R3 K0 ["X"]
        2 MUL                              R6 R0 R7
        3 GETTABLEKS                       R8 R3 K1 ["Y"]
        5 MUL                              R7 R1 R8
        6 GETTABLEKS                       R9 R3 K2 ["Z"]
        8 MUL                              R8 R2 R9
        9 FASTCALL                         VECTOR ; [+2]
       10 GETIMPORT                        R5 K5 [Vector3.new]
       12 CALL                             R5 3 1
       13 MUL                              R6 R4 R5
       14 RETURN                           R6 1

PROTO_5:
        0 GETTABLEKS                       R5 R2 K0 ["X"]
        2 GETTABLEKS                       R6 R0 K0 ["X"]
        4 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        6 GETIMPORT                        R4 K3 [math.min]
        8 CALL                             R4 2 1
        9 GETTABLEKS                       R6 R2 K4 ["Y"]
       11 GETTABLEKS                       R7 R0 K4 ["Y"]
       13 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       15 GETIMPORT                        R5 K3 [math.min]
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R7 R2 K5 ["Z"]
       20 GETTABLEKS                       R8 R0 K5 ["Z"]
       22 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       24 GETIMPORT                        R6 K3 [math.min]
       26 CALL                             R6 2 1
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R3 K8 [Vector3.new]
       30 CALL                             R3 3 1
       31 MOVE                             R0 R3
       32 GETTABLEKS                       R5 R2 K0 ["X"]
       34 GETTABLEKS                       R6 R1 K0 ["X"]
       36 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       38 GETIMPORT                        R4 K10 [math.max]
       40 CALL                             R4 2 1
       41 GETTABLEKS                       R6 R2 K4 ["Y"]
       43 GETTABLEKS                       R7 R1 K4 ["Y"]
       45 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       47 GETIMPORT                        R5 K10 [math.max]
       49 CALL                             R5 2 1
       50 GETTABLEKS                       R7 R2 K5 ["Z"]
       52 GETTABLEKS                       R8 R1 K5 ["Z"]
       54 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       56 GETIMPORT                        R6 K10 [math.max]
       58 CALL                             R6 2 1
       59 FASTCALL                         VECTOR ; [+2]
       60 GETIMPORT                        R3 K8 [Vector3.new]
       62 CALL                             R3 3 1
       63 MOVE                             R1 R3
       64 RETURN                           R0 2

PROTO_6:
        0 GETTABLEKS                       R7 R2 K1 ["Size"]
        2 DIVK                             R6 R7 K0 [2]
        3 LOADNIL                          R7
        4 LOADN                            R10 255
        5 LOADN                            R8 1
        6 LOADN                            R9 2
        7 FORNPREP                         R8
        8 LOADN                            R13 255
        9 LOADN                            R11 1
       10 LOADN                            R12 2
       11 FORNPREP                         R11
       12 LOADN                            R16 255
       13 LOADN                            R14 1
       14 LOADN                            R15 2
       15 FORNPREP                         R14
       16 GETTABLEKS                       R17 R2 K2 ["CFrame"]
       18 GETTABLEKS                       R20 R6 K3 ["X"]
       20 MUL                              R19 R10 R20
       21 GETTABLEKS                       R21 R6 K4 ["Y"]
       23 MUL                              R20 R13 R21
       24 GETTABLEKS                       R22 R6 K5 ["Z"]
       26 MUL                              R21 R16 R22
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R18 K8 [Vector3.new]
       30 CALL                             R18 3 1
       31 MUL                              R7 R17 R18
       32 JUMPIFNOT                        R4 ; [+22]
       33 JUMPIFNOT                        R5 ; [+21]
       34 NAMECALL                         R18 R4 K9 ["Inverse"]
       36 CALL                             R18 1 1
       37 MUL                              R17 R18 R7
       38 GETTABLEKS                       R19 R17 K3 ["X"]
       40 GETTABLEKS                       R22 R17 K4 ["Y"]
       42 FASTCALL2                        MATH_MAX R5 R22 ; [+4]
       44 MOVE                             R21 R5
       45 GETIMPORT                        R20 K12 [math.max]
       47 CALL                             R20 2 1
       48 GETTABLEKS                       R21 R17 K5 ["Z"]
       50 FASTCALL                         VECTOR ; [+2]
       51 GETIMPORT                        R18 K8 [Vector3.new]
       53 CALL                             R18 3 1
       54 MUL                              R7 R4 R18
       55 MUL                              R7 R3 R7
       56 GETUPVAL                         R17 0
       57 MOVE                             R18 R0
       58 MOVE                             R19 R1
       59 MOVE                             R20 R7
       60 CALL                             R17 3 2
       61 MOVE                             R0 R17
       62 MOVE                             R1 R18
       63 FORNLOOP                         R14
       64 FORNLOOP                         R11
       65 FORNLOOP                         R8
       66 RETURN                           R0 2

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["Head"]
        3 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+15]
        7 NAMECALL                         R3 R2 K2 ["GetChildren"]
        9 CALL                             R3 1 3
       10 FORGPREP                         R3
       11 LOADK                            R10 K3 ["Attachment"]
       12 NAMECALL                         R8 R7 K4 ["IsA"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+4]
       16 GETTABLEKS                       R8 R7 K5 ["Name"]
       18 LOADB                            R9 1
       19 SETTABLE                         R9 R1 R8
       20 FORGLOOP                         R3 2 ; [-10]
       22 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R2 K0 [{∞, ∞, ∞}]
        1 LOADK                            R3 K1 [{-∞, -∞, -∞}]
        2 LOADK                            R6 K2 ["Head"]
        3 NAMECALL                         R4 R0 K3 ["FindFirstChild"]
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+1]
        7 RETURN                           R2 2
        8 NAMECALL                         R5 R1 K4 ["Inverse"]
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R8 R4 K6 ["Size"]
       13 GETTABLEKS                       R8 R8 K7 ["Y"]
       15 MINUS                            R7 R8
       16 DIVK                             R6 R7 K5 [2]
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 MOVE                             R10 R4
       21 MOVE                             R11 R5
       22 CALL                             R7 4 2
       23 MOVE                             R2 R7
       24 MOVE                             R3 R8
       25 GETUPVAL                         R7 1
       26 MOVE                             R8 R0
       27 CALL                             R7 1 1
       28 NAMECALL                         R8 R0 K8 ["GetChildren"]
       30 CALL                             R8 1 3
       31 FORGPREP                         R8
       32 LOADK                            R15 K9 ["Accoutrement"]
       33 NAMECALL                         R13 R12 K10 ["IsA"]
       35 CALL                             R13 2 1
       36 JUMPIFNOT                        R13 ; [+25]
       37 LOADK                            R15 K11 ["Handle"]
       38 NAMECALL                         R13 R12 K3 ["FindFirstChild"]
       40 CALL                             R13 2 1
       41 JUMPIFNOT                        R13 ; [+20]
       42 LOADK                            R16 K12 ["Attachment"]
       43 NAMECALL                         R14 R13 K13 ["FindFirstChildWhichIsA"]
       45 CALL                             R14 2 1
       46 JUMPIFNOT                        R14 ; [+4]
       47 GETTABLEKS                       R16 R14 K14 ["Name"]
       49 GETTABLE                         R15 R7 R16
       50 JUMPIFNOT                        R15 ; [+11]
       51 GETUPVAL                         R15 0
       52 MOVE                             R16 R2
       53 MOVE                             R17 R3
       54 MOVE                             R18 R13
       55 MOVE                             R19 R5
       56 GETTABLEKS                       R20 R4 K15 ["CFrame"]
       58 MOVE                             R21 R6
       59 CALL                             R15 6 2
       60 MOVE                             R2 R15
       61 MOVE                             R3 R16
       62 FORGLOOP                         R8 2 ; [-31]
       64 RETURN                           R2 2

PROTO_9:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+15]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K0 ["Get"]
        5 CALL                             R3 1 1
        6 LENGTH                           R2 R3
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+7]
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R2 R2 K0 ["Get"]
       13 CALL                             R2 1 1
       14 GETTABLEN                        R1 R2 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R1
       17 JUMPIF                           R1 ; [+1]
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K2 [workspace]
       21 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 JUMPIFEQKNIL                     R3 ; [+189]
       28 GETTABLEKS                       R4 R3 K4 ["Parent"]
       30 LOADNIL                          R5
       31 LOADK                            R8 K5 ["Neck"]
       32 NAMECALL                         R6 R4 K6 ["FindFirstChild"]
       34 CALL                             R6 2 1
       35 JUMPIFNOT                        R6 ; [+12]
       36 LOADK                            R9 K7 ["Motor6D"]
       37 NAMECALL                         R7 R6 K8 ["IsA"]
       39 CALL                             R7 2 1
       40 JUMPIFNOT                        R7 ; [+7]
       41 GETTABLEKS                       R7 R6 K9 ["Part1"]
       43 JUMPIFNOTEQ                      R7 R4 ; [+4]
       45 GETTABLEKS                       R5 R6 K10 ["Part0"]
       47 JUMP                             ; [+56]
       48 LOADK                            R9 K7 ["Motor6D"]
       49 NAMECALL                         R7 R4 K11 ["FindFirstChildOfClass"]
       51 CALL                             R7 2 1
       52 MOVE                             R6 R7
       53 JUMPIFNOT                        R6 ; [+7]
       54 GETTABLEKS                       R7 R6 K9 ["Part1"]
       56 JUMPIFNOTEQ                      R7 R4 ; [+4]
       58 GETTABLEKS                       R5 R6 K10 ["Part0"]
       60 JUMP                             ; [+43]
       61 JUMPIFNOTEQKNIL                  R5 ; [+42]
       63 GETTABLEKS                       R7 R4 K4 ["Parent"]
       65 JUMPIFNOT                        R7 ; [+38]
       66 GETTABLEKS                       R7 R4 K4 ["Parent"]
       68 GETUPVAL                         R8 2
       69 JUMPIFEQ                         R7 R8 ; [+34]
       71 GETTABLEKS                       R7 R4 K4 ["Parent"]
       73 NAMECALL                         R7 R7 K12 ["GetDescendants"]
       75 CALL                             R7 1 1
       76 MOVE                             R8 R7
       77 LOADNIL                          R9
       78 LOADNIL                          R10
       79 FORGPREP                         R8
       80 LOADK                            R15 K7 ["Motor6D"]
       81 NAMECALL                         R13 R12 K8 ["IsA"]
       83 CALL                             R13 2 1
       84 JUMPIFNOT                        R13 ; [+17]
       85 GETTABLEKS                       R13 R12 K9 ["Part1"]
       87 JUMPIFNOTEQ                      R13 R4 ; [+14]
       89 GETTABLEKS                       R13 R12 K4 ["Parent"]
       91 JUMPIFNOT                        R13 ; [+10]
       92 GETTABLEKS                       R13 R12 K4 ["Parent"]
       94 LOADK                            R15 K13 ["BasePart"]
       95 NAMECALL                         R13 R13 K8 ["IsA"]
       97 CALL                             R13 2 1
       98 JUMPIFNOT                        R13 ; [+3]
       99 GETTABLEKS                       R5 R12 K4 ["Parent"]
      101 JUMP                             ; [+2]
      102 FORGLOOP                         R8 2 ; [-23]
      104 JUMPIFEQKNIL                     R5 ; [+111]
      106 LOADN                            R7 1
      107 LOADN                            R8 1
      108 GETTABLEKS                       R10 R4 K14 ["CFrame"]
      110 LOADNIL                          R11
      111 GETTABLEKS                       R13 R10 K15 ["LookVector"]
      113 GETTABLEKS                       R13 R13 K16 ["Y"]
      115 FASTCALL1                        MATH_ABS R13 ; [+2]
      116 GETIMPORT                        R12 K19 [math.abs]
      118 CALL                             R12 1 1
      119 LOADK                            R13 K20 [0.9]
      120 JUMPIFNOTLT                      R13 R12 ; [+4]
      122 GETTABLEKS                       R11 R10 K21 ["UpVector"]
      124 JUMP                             ; [+2]
      125 GETTABLEKS                       R11 R10 K15 ["LookVector"]
      127 GETTABLEKS                       R13 R11 K22 ["X"]
      129 LOADN                            R14 0
      130 GETTABLEKS                       R15 R11 K23 ["Z"]
      132 FASTCALL                         VECTOR ; [+2]
      133 GETIMPORT                        R12 K26 [Vector3.new]
      135 CALL                             R12 3 1
      136 GETTABLEKS                       R11 R12 K27 ["Unit"]
      138 GETIMPORT                        R12 K29 [CFrame.lookAt]
      140 GETTABLEKS                       R13 R10 K30 ["Position"]
      142 GETTABLEKS                       R15 R10 K30 ["Position"]
      144 ADD                              R14 R15 R11
      145 CALL                             R12 2 1
      146 MOVE                             R9 R12
      147 GETUPVAL                         R10 3
      148 MOVE                             R11 R1
      149 MOVE                             R12 R9
      150 CALL                             R10 2 2
      151 GETTABLEKS                       R15 R10 K22 ["X"]
      153 GETTABLEKS                       R16 R10 K16 ["Y"]
      155 GETTABLEKS                       R17 R10 K23 ["Z"]
      157 FASTCALL                         VECTOR ; [+2]
      158 GETIMPORT                        R14 K26 [Vector3.new]
      160 CALL                             R14 3 1
      161 MOVE                             R12 R14
      162 GETTABLEKS                       R14 R11 K22 ["X"]
      164 GETTABLEKS                       R15 R11 K16 ["Y"]
      166 GETTABLEKS                       R16 R11 K23 ["Z"]
      168 FASTCALL                         VECTOR ; [+2]
      169 GETIMPORT                        R13 K26 [Vector3.new]
      171 CALL                             R13 3 1
      172 SUB                              R14 R13 R12
      173 GETTABLEKS                       R16 R14 K22 ["X"]
      175 GETTABLEKS                       R17 R14 K23 ["Z"]
      177 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
      179 GETIMPORT                        R15 K33 [math.min]
      181 CALL                             R15 2 1
      182 ADDK                             R7 R15 K31 [0.25]
      183 MOVE                             R8 R7
      184 MOVE                             R7 R8
      185 GETTABLEKS                       R15 R2 K34 ["FieldOfView"]
      187 JUMPIFEQKN                       R15 K35 [70] ; [+5]
      189 GETTABLEKS                       R16 R2 K34 ["FieldOfView"]
      191 DIVK                             R15 R16 K35 [70]
      192 DIV                              R7 R8 R15
      193 GETTABLEKS                       R16 R4 K30 ["Position"]
      195 GETTABLEKS                       R18 R5 K14 ["CFrame"]
      197 GETTABLEKS                       R18 R18 K15 ["LookVector"]
      199 MULK                             R19 R7 K36 [1.5]
      200 MUL                              R17 R18 R19
      201 ADD                              R15 R16 R17
      202 GETIMPORT                        R16 K29 [CFrame.lookAt]
      204 MOVE                             R17 R15
      205 GETTABLEKS                       R18 R4 K14 ["CFrame"]
      207 GETTABLEKS                       R18 R18 K30 ["Position"]
      209 CALL                             R16 2 1
      210 SETTABLEKS                       R16 R2 K14 ["CFrame"]
      212 GETTABLEKS                       R16 R4 K14 ["CFrame"]
      214 SETTABLEKS                       R16 R2 K37 ["Focus"]
      216 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["Workspace"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["Selection"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 DUPCLOSURE                       R3 K5 [PROTO_0]
       16 CAPTURE                          VAL R2
       17 DUPCLOSURE                       R4 K6 [PROTO_1]
       18 DUPCLOSURE                       R5 K7 [PROTO_2]
       19 DUPCLOSURE                       R6 K8 [PROTO_3]
       20 DUPCLOSURE                       R7 K9 [PROTO_4]
       21 DUPCLOSURE                       R8 K10 [PROTO_5]
       22 DUPCLOSURE                       R9 K11 [PROTO_6]
       23 CAPTURE                          VAL R8
       24 DUPCLOSURE                       R10 K12 [PROTO_7]
       25 DUPCLOSURE                       R11 K13 [PROTO_8]
       26 CAPTURE                          VAL R9
       27 CAPTURE                          VAL R10
       28 DUPCLOSURE                       R12 K14 [PROTO_9]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R11
       33 SETTABLEKS                       R12 R0 K15 ["focusCameraOnFace"]
       35 RETURN                           R0 1
