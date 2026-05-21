PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.CageType.Outer]
        3 NAMECALL                         R0 R0 K4 ["GetVertices"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 0
        7 GETIMPORT                        R2 K6 [Enum.CageType.Inner]
        9 NAMECALL                         R0 R0 K4 ["GetVertices"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["WrapLayer"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K2 ["Parent"]
        8 GETUPVAL                         R4 0
        9 SETTABLEKS                       R4 R1 K2 ["Parent"]
       11 GETIMPORT                        R4 K4 [pcall]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CALL                             R4 1 2
       16 JUMPIFNOT                        R5 ; [+4]
       17 GETIMPORT                        R6 K6 [print]
       19 MOVE                             R7 R5
       20 CALL                             R6 1 0
       21 SETTABLEKS                       R3 R1 K2 ["Parent"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["Name"]
        6 GETTABLE                         R3 R4 R5
        7 NAMECALL                         R0 R0 K1 ["ModifyVertices"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R6 K0 ["WrapLayer"]
        1 NAMECALL                         R4 R1 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+2]
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 GETIMPORT                        R5 K3 [pcall]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 CALL                             R5 1 2
       15 JUMPIFNOT                        R6 ; [+4]
       16 GETIMPORT                        R7 K5 [print]
       18 MOVE                             R8 R6
       19 CALL                             R7 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["Name"]
        6 GETTABLE                         R3 R4 R5
        7 NAMECALL                         R0 R0 K1 ["ModifyVertices"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R2 ; [+1]
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 NEWTABLE                         R5 0 0
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 GETIMPORT                        R5 K1 [ipairs]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 3
       12 FORGPREP_INEXT                   R5
       13 LOADK                            R12 K2 ["WrapTarget"]
       14 NAMECALL                         R10 R9 K3 ["IsA"]
       16 CALL                             R10 2 1
       17 JUMPIFNOT                        R10 ; [+16]
       18 GETTABLEKS                       R11 R9 K4 ["Name"]
       20 GETTABLE                         R10 R2 R11
       21 JUMPIFNOT                        R10 ; [+12]
       22 GETIMPORT                        R10 K6 [pcall]
       24 NEWCLOSURE                       R11 P0
       25 CAPTURE                          VAL R9
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CALL                             R10 1 2
       29 JUMPIFNOT                        R11 ; [+4]
       30 GETIMPORT                        R12 K8 [print]
       32 MOVE                             R13 R11
       33 CALL                             R12 1 0
       34 FORGLOOP                         R5 2 [inext] ; [-22]
       36 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K1 [ipairs]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 LOADK                            R10 K2 ["BaseWrap"]
       13 NAMECALL                         R8 R7 K3 ["IsA"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+6]
       17 GETUPVAL                         R8 1
       18 NAMECALL                         R8 R8 K4 ["GenerateGUID"]
       20 CALL                             R8 1 1
       21 SETTABLEKS                       R8 R7 K5 ["Name"]
       23 FORGLOOP                         R3 2 [inext] ; [-12]
       25 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+1]
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R3 R2 K0 ["Name"]
        5 SETTABLEKS                       R3 R1 K0 ["Name"]
        7 GETUPVAL                         R3 0
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 GETIMPORT                        R4 K2 [ipairs]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 LOADK                            R11 K3 ["BaseWrap"]
       18 NAMECALL                         R9 R8 K4 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIFNOT                        R9 ; [+15]
       22 GETTABLEKS                       R9 R8 K5 ["Parent"]
       24 GETTABLEKS                       R9 R9 K0 ["Name"]
       26 JUMPIFEQKS                       R9 K6 ["Part"] ; [+3]
       28 JUMPIFNOTEQKS                    R9 K7 ["MeshPart"] ; [+2]
       30 LOADK                            R9 K8 [""]
       31 MOVE                             R11 R9
       32 GETTABLEKS                       R12 R8 K9 ["ClassName"]
       34 CONCAT                           R10 R11 R12
       35 SETTABLEKS                       R10 R8 K0 ["Name"]
       37 FORGLOOP                         R4 2 [inext] ; [-21]
       39 RETURN                           R0 0

PROTO_8:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R5 K0 ["WrapLayer"]
        3 NAMECALL                         R3 R1 K1 ["FindFirstChildWhichIsA"]
        5 CALL                             R3 2 1
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 SETTABLEKS                       R2 R3 K2 ["AutoSkin"]
       10 RETURN                           R0 0

PROTO_9:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R4 K0 ["WrapLayer"]
        3 NAMECALL                         R2 R1 K1 ["FindFirstChildWhichIsA"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R2 K2 ["AutoSkin"]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 GETTABLEKS                       R1 R1 K4 ["Workspace"]
       11 GETIMPORT                        R2 K6 [script]
       13 GETTABLEKS                       R2 R2 K7 ["Parent"]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["getDescendants"]
       21 CALL                             R3 1 1
       22 NEWTABLE                         R4 8 0
       24 DUPCLOSURE                       R5 K11 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R5 R4 K12 ["initTempCageData"]
       28 DUPCLOSURE                       R5 K13 [PROTO_3]
       29 SETTABLEKS                       R5 R4 K14 ["deformClothing"]
       31 DUPCLOSURE                       R5 K15 [PROTO_5]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R5 R4 K16 ["deformBody"]
       35 DUPCLOSURE                       R5 K17 [PROTO_6]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R5 R4 K18 ["makeDeformerNamesUnique"]
       40 DUPCLOSURE                       R5 K19 [PROTO_7]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K20 ["renameDeformers"]
       44 DUPCLOSURE                       R5 K21 [PROTO_8]
       45 SETTABLEKS                       R5 R4 K22 ["setAutoSkinningBehavior"]
       47 DUPCLOSURE                       R5 K23 [PROTO_9]
       48 SETTABLEKS                       R5 R4 K24 ["getAutoSkinningBehavior"]
       50 RETURN                           R4 1
