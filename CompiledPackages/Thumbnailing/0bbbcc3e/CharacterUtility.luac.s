PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["Head"]
        3 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETIMPORT                        R3 K3 [pairs]
        9 NAMECALL                         R4 R2 K4 ["GetChildren"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 3
       13 FORGPREP_NEXT                    R3
       14 LOADK                            R10 K5 ["Attachment"]
       15 NAMECALL                         R8 R7 K6 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+4]
       19 GETTABLEKS                       R8 R7 K7 ["Name"]
       21 LOADB                            R9 1
       22 SETTABLE                         R9 R1 R8
       23 FORGLOOP                         R3 2 ; [-10]
       25 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 LOADK                            R0 K0 [{∞, ∞, ∞}]
        1 LOADK                            R1 K1 [{-∞, -∞, -∞}]
        2 RETURN                           R0 2

PROTO_5:
        0 JUMPIF                           R4 ; [+1]
        1 LOADK                            R4 K0 [""]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+5]
        4 MOVE                             R6 R4
        5 LOADK                            R7 K1 ["indent is non-nil. Silence type checker."]
        6 GETIMPORT                        R5 K3 [assert]
        8 CALL                             R5 2 0
        9 MOVE                             R5 R4
       10 LOADK                            R6 K4 ["  "]
       11 CONCAT                           R4 R5 R6
       12 GETIMPORT                        R5 K6 [pairs]
       14 NAMECALL                         R6 R2 K7 ["GetChildren"]
       16 CALL                             R6 1 -1
       17 CALL                             R5 -1 3
       18 FORGPREP_NEXT                    R5
       19 LOADK                            R12 K8 ["BasePart"]
       20 NAMECALL                         R10 R9 K9 ["IsA"]
       22 CALL                             R10 2 1
       23 JUMPIFNOT                        R10 ; [+8]
       24 GETUPVAL                         R10 0
       25 MOVE                             R11 R0
       26 MOVE                             R12 R1
       27 MOVE                             R13 R9
       28 MOVE                             R14 R3
       29 CALL                             R10 4 2
       30 MOVE                             R0 R10
       31 MOVE                             R1 R11
       32 GETUPVAL                         R10 1
       33 MOVE                             R11 R0
       34 MOVE                             R12 R1
       35 MOVE                             R13 R9
       36 MOVE                             R14 R3
       37 MOVE                             R15 R4
       38 CALL                             R10 5 2
       39 MOVE                             R0 R10
       40 MOVE                             R1 R11
       41 FORGLOOP                         R5 2 ; [-23]
       43 RETURN                           R0 2

PROTO_6:
        0 LOADK                            R2 K0 [{∞, ∞, ∞}]
        1 LOADK                            R3 K1 [{-∞, -∞, -∞}]
        2 NAMECALL                         R4 R1 K2 ["Inverse"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R2
        7 MOVE                             R7 R3
        8 MOVE                             R8 R0
        9 MOVE                             R9 R4
       10 LOADK                            R10 K3 ["  "]
       11 CALL                             R5 5 2
       12 MOVE                             R2 R5
       13 MOVE                             R3 R6
       14 RETURN                           R2 2

PROTO_7:
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
       28 GETIMPORT                        R8 K9 [pairs]
       30 NAMECALL                         R9 R0 K10 ["GetChildren"]
       32 CALL                             R9 1 -1
       33 CALL                             R8 -1 3
       34 FORGPREP_NEXT                    R8
       35 LOADK                            R15 K11 ["Accoutrement"]
       36 NAMECALL                         R13 R12 K12 ["IsA"]
       38 CALL                             R13 2 1
       39 JUMPIFNOT                        R13 ; [+25]
       40 LOADK                            R15 K13 ["Handle"]
       41 NAMECALL                         R13 R12 K3 ["FindFirstChild"]
       43 CALL                             R13 2 1
       44 JUMPIFNOT                        R13 ; [+20]
       45 LOADK                            R16 K14 ["Attachment"]
       46 NAMECALL                         R14 R13 K15 ["FindFirstChildWhichIsA"]
       48 CALL                             R14 2 1
       49 JUMPIFNOT                        R14 ; [+4]
       50 GETTABLEKS                       R16 R14 K16 ["Name"]
       52 GETTABLE                         R15 R7 R16
       53 JUMPIFNOT                        R15 ; [+11]
       54 GETUPVAL                         R15 0
       55 MOVE                             R16 R2
       56 MOVE                             R17 R3
       57 MOVE                             R18 R13
       58 MOVE                             R19 R5
       59 GETTABLEKS                       R20 R4 K17 ["CFrame"]
       61 MOVE                             R21 R6
       62 CALL                             R15 6 2
       63 MOVE                             R2 R15
       64 MOVE                             R3 R16
       65 FORGLOOP                         R8 2 ; [-31]
       67 RETURN                           R2 2

PROTO_8:
        0 LOADK                            R2 K0 [{∞, ∞, ∞}]
        1 LOADK                            R3 K1 [{-∞, -∞, -∞}]
        2 NAMECALL                         R4 R0 K2 ["Inverse"]
        4 CALL                             R4 1 1
        5 GETIMPORT                        R5 K4 [pairs]
        7 MOVE                             R6 R1
        8 CALL                             R5 1 3
        9 FORGPREP_NEXT                    R5
       10 GETUPVAL                         R10 0
       11 MOVE                             R11 R2
       12 MOVE                             R12 R3
       13 MOVE                             R13 R9
       14 MOVE                             R14 R4
       15 MOVE                             R15 R0
       16 CALL                             R10 5 2
       17 MOVE                             R2 R10
       18 MOVE                             R3 R11
       19 FORGLOOP                         R5 2 ; [-10]
       21 RETURN                           R2 2

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 8
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 GETIMPORT                        R4 K2 [Instance.new]
        8 LOADK                            R5 K3 ["Part"]
        9 CALL                             R4 1 1
       10 GETIMPORT                        R5 K5 [workspace]
       12 SETTABLEKS                       R5 R4 K6 ["Parent"]
       14 LOADK                            R6 K7 ["DebugExtentPart"]
       15 FASTCALL1                        TOSTRING R3 ; [+3]
       16 MOVE                             R8 R3
       17 GETIMPORT                        R7 K9 [tostring]
       19 CALL                             R7 1 1
       20 CONCAT                           R5 R6 R7
       21 SETTABLEKS                       R5 R4 K10 ["Name"]
       23 GETIMPORT                        R5 K14 [Enum.PartType.Ball]
       25 SETTABLEKS                       R5 R4 K15 ["Shape"]
       27 LOADK                            R5 K16 [{0.25, 0.25, 0.25}]
       28 SETTABLEKS                       R5 R4 K17 ["Size"]
       30 LOADB                            R5 1
       31 SETTABLEKS                       R5 R4 K18 ["Anchored"]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K19 ["CanCollide"]
       36 LENGTH                           R6 R0
       37 ADDK                             R5 R6 K20 [1]
       38 SETTABLE                         R4 R0 R5
       39 FORNLOOP                         R1
       40 RETURN                           R0 1

PROTO_10:
        0 LOADN                            R6 0
        1 LOADN                            R4 1
        2 LOADN                            R5 1
        3 FORNPREP                         R4
        4 LOADN                            R9 0
        5 LOADN                            R7 1
        6 LOADN                            R8 1
        7 FORNPREP                         R7
        8 LOADN                            R12 0
        9 LOADN                            R10 1
       10 LOADN                            R11 1
       11 FORNPREP                         R10
       12 MULK                             R16 R9 K1 [2]
       13 ADD                              R15 R6 R16
       14 MULK                             R16 R12 K2 [4]
       15 ADD                              R14 R15 R16
       16 ADDK                             R13 R14 K0 [1]
       17 JUMPIFNOTEQKN                    R6 K3 [0] ; [+4]
       19 GETTABLEKS                       R14 R1 K4 ["X"]
       21 JUMPIF                           R14 ; [+2]
       22 GETTABLEKS                       R14 R2 K4 ["X"]
       24 JUMPIFNOTEQKN                    R9 K3 [0] ; [+4]
       26 GETTABLEKS                       R15 R1 K5 ["Y"]
       28 JUMPIF                           R15 ; [+2]
       29 GETTABLEKS                       R15 R2 K5 ["Y"]
       31 JUMPIFNOTEQKN                    R12 K3 [0] ; [+4]
       33 GETTABLEKS                       R16 R1 K6 ["Z"]
       35 JUMPIF                           R16 ; [+2]
       36 GETTABLEKS                       R16 R2 K6 ["Z"]
       38 FASTCALL3                        VECTOR R14 R15 R16
       40 MOVE                             R18 R14
       41 MOVE                             R19 R15
       42 MOVE                             R20 R16
       43 GETIMPORT                        R17 K9 [Vector3.new]
       45 CALL                             R17 3 1
       46 GETTABLE                         R18 R0 R13
       47 MUL                              R19 R3 R17
       48 SETTABLEKS                       R19 R18 K10 ["Position"]
       50 FORNLOOP                         R10
       51 FORNLOOP                         R7
       52 FORNLOOP                         R4
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 DUPCLOSURE                       R4 K3 [PROTO_3]
        7 CAPTURE                          VAL R3
        8 DUPCLOSURE                       R5 K4 [PROTO_4]
        9 DUPCLOSURE                       R6 K5 [PROTO_5]
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R6
       12 DUPCLOSURE                       R7 K6 [PROTO_6]
       13 CAPTURE                          VAL R6
       14 SETTABLEKS                       R7 R0 K7 ["CalculateModelExtents"]
       16 DUPCLOSURE                       R7 K8 [PROTO_7]
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R7 R0 K9 ["CalculateHeadExtents"]
       21 DUPCLOSURE                       R7 K10 [PROTO_8]
       22 CAPTURE                          VAL R4
       23 SETTABLEKS                       R7 R0 K11 ["CalculateBodyPartsExtents"]
       25 DUPCLOSURE                       R7 K12 [PROTO_9]
       26 SETTABLEKS                       R7 R0 K13 ["AllocateDebugExtentParts"]
       28 DUPCLOSURE                       R7 K14 [PROTO_10]
       29 SETTABLEKS                       R7 R0 K15 ["PositionDebugExtentParts"]
       31 RETURN                           R0 1
