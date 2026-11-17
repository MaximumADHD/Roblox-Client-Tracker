PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 NAMECALL                         R3 R0 K2 ["GetDescendants"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_INEXT                   R2
        9 LOADK                            R9 K3 ["WrapTarget"]
       10 NAMECALL                         R7 R6 K4 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+12]
       14 MOVE                             R8 R1
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K5 ["new"]
       18 GETIMPORT                        R10 K9 [Enum.CageType.Outer]
       20 MOVE                             R11 R6
       21 CALL                             R9 2 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R7 K12 [table.insert]
       25 CALL                             R7 -1 0
       26 FORGLOOP                         R2 2 [inext] ; [-18]
       28 LENGTH                           R2 R1
       29 JUMPIFNOTEQKN                    R2 K13 [0] ; [+7]
       31 LOADK                            R3 K14 ["Model: "]
       32 GETTABLEKS                       R4 R0 K15 ["Name"]
       34 LOADK                            R5 K16 [" does not contain any MeshPart(s) with a WrapTarget."]
       35 CONCAT                           R2 R3 R5
       36 RETURN                           R2 1
       37 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R4 K0 ["Model"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstAncestorOfClass"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_2:
        0 GETIMPORT                        R3 K3 [Enum.CageType.Inner]
        2 JUMPIFNOTEQ                      R0 R3 ; [+20]
        4 LOADK                            R5 K4 ["WrapLayer"]
        5 NAMECALL                         R3 R1 K5 ["FindFirstChildOfClass"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+2]
        9 LOADK                            R4 K6 ["MeshPart must contain a WrapLayer"]
       10 RETURN                           R4 1
       11 MOVE                             R5 R2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K7 ["new"]
       15 MOVE                             R7 R0
       16 MOVE                             R8 R3
       17 CALL                             R6 2 -1
       18 FASTCALL                         TABLE_INSERT ; [+2]
       19 GETIMPORT                        R4 K10 [table.insert]
       21 CALL                             R4 -1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R3 K12 [Enum.CageType.Outer]
       25 JUMPIFNOTEQ                      R0 R3 ; [+34]
       27 LOADK                            R5 K4 ["WrapLayer"]
       28 NAMECALL                         R3 R1 K5 ["FindFirstChildOfClass"]
       30 CALL                             R3 2 1
       31 LOADK                            R6 K13 ["WrapTarget"]
       32 NAMECALL                         R4 R1 K5 ["FindFirstChildOfClass"]
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R3 ; [+1]
       36 JUMPIF                           R4 ; [+2]
       37 JUMPIF                           R3 ; [+3]
       38 JUMPIF                           R4 ; [+2]
       39 LOADK                            R5 K14 ["MeshPart must contain either a WrapLayer or a WrapTarget, but not both"]
       40 RETURN                           R5 1
       41 JUMPIFNOT                        R3 ; [+12]
       42 MOVE                             R6 R2
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K7 ["new"]
       46 MOVE                             R8 R0
       47 MOVE                             R9 R3
       48 CALL                             R7 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R5 K10 [table.insert]
       52 CALL                             R5 -1 0
       53 RETURN                           R0 0
       54 JUMPIFNOT                        R4 ; [+5]
       55 GETUPVAL                         R5 1
       56 MOVE                             R6 R1
       57 MOVE                             R7 R2
       58 CALL                             R5 2 -1
       59 RETURN                           R5 -1
       60 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R1 ; [+6]
        1 GETIMPORT                        R3 K1 [error]
        3 LOADK                            R4 K2 ["instance is nil"]
        4 CALL                             R3 1 0
        5 LOADB                            R3 0
        6 RETURN                           R3 1
        7 GETIMPORT                        R3 K6 [Enum.CageType.Inner]
        9 JUMPIFEQ                         R0 R3 ; [+11]
       11 GETIMPORT                        R3 K8 [Enum.CageType.Outer]
       13 JUMPIFEQ                         R0 R3 ; [+7]
       15 GETIMPORT                        R3 K1 [error]
       17 LOADK                            R4 K9 ["No valid Enum.CageType was provided"]
       18 CALL                             R3 1 0
       19 LOADB                            R3 0
       20 RETURN                           R3 1
       21 LOADNIL                          R3
       22 LOADK                            R6 K10 ["WrapLayer"]
       23 NAMECALL                         R4 R1 K11 ["IsA"]
       25 CALL                             R4 2 1
       26 JUMPIFNOT                        R4 ; [+12]
       27 MOVE                             R5 R2
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K12 ["new"]
       31 MOVE                             R7 R0
       32 MOVE                             R8 R1
       33 CALL                             R6 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R4 K15 [table.insert]
       37 CALL                             R4 -1 0
       38 JUMP                             ; [+45]
       39 LOADK                            R6 K16 ["MeshPart"]
       40 NAMECALL                         R4 R1 K11 ["IsA"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+7]
       44 GETUPVAL                         R4 1
       45 MOVE                             R5 R0
       46 MOVE                             R6 R1
       47 MOVE                             R7 R2
       48 CALL                             R4 3 1
       49 MOVE                             R3 R4
       50 JUMP                             ; [+33]
       51 GETIMPORT                        R4 K8 [Enum.CageType.Outer]
       53 JUMPIFNOTEQ                      R0 R4 ; [+29]
       55 LOADK                            R6 K17 ["Model"]
       56 NAMECALL                         R4 R1 K11 ["IsA"]
       58 CALL                             R4 2 1
       59 JUMPIFNOT                        R4 ; [+6]
       60 GETUPVAL                         R4 2
       61 MOVE                             R5 R1
       62 MOVE                             R6 R2
       63 CALL                             R4 2 1
       64 MOVE                             R3 R4
       65 JUMP                             ; [+18]
       66 LOADK                            R6 K18 ["WrapTarget"]
       67 NAMECALL                         R4 R1 K11 ["IsA"]
       69 CALL                             R4 2 1
       70 JUMPIFNOT                        R4 ; [+10]
       71 LOADK                            R6 K17 ["Model"]
       72 NAMECALL                         R4 R1 K19 ["FindFirstAncestorOfClass"]
       74 CALL                             R4 2 1
       75 GETUPVAL                         R5 2
       76 MOVE                             R6 R4
       77 MOVE                             R7 R2
       78 CALL                             R5 2 1
       79 MOVE                             R3 R5
       80 JUMP                             ; [+3]
       81 LOADK                            R3 K20 ["Instance must be a BaseWrap, Model, or a MeshPart with a valid BaseWrap"]
       82 JUMP                             ; [+1]
       83 LOADK                            R3 K21 ["Instance must be a WrapLayer or a MeshPart with a valid WrapLayer"]
       84 JUMPIFNOT                        R3 ; [+6]
       85 GETIMPORT                        R4 K1 [error]
       87 MOVE                             R5 R3
       88 CALL                             R4 1 0
       89 LOADB                            R4 0
       90 RETURN                           R4 1
       91 LOADB                            R4 1
       92 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R0 K0 ["updateCageOrigins"]
       11 CALL                             R4 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R0 K0 ["init"]
       11 CALL                             R4 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 DUPCLOSURE                       R1 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 DUPCLOSURE                       R2 K4 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 DUPCLOSURE                       R3 K5 [PROTO_2]
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R2
       17 DUPCLOSURE                       R4 K6 [PROTO_3]
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 DUPCLOSURE                       R5 K7 [PROTO_4]
       22 CAPTURE                          VAL R4
       23 SETTABLEKS                       R5 R0 K8 ["updateCageLocationFromInstance"]
       25 DUPCLOSURE                       R5 K9 [PROTO_5]
       26 CAPTURE                          VAL R4
       27 SETTABLEKS                       R5 R0 K10 ["initFromCageMesh"]
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["MeshWrapperObjects"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K2 ["Parent"]
       15 GETTABLEKS                       R3 R3 K6 ["MeshEditingContextBase"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["CageMeshWrapperObject"]
       22 CALL                             R3 1 1
       23 NEWTABLE                         R5 2 0
       25 DUPTABLE                         R6 K9 [{"__index"}]
       26 SETTABLEKS                       R2 R6 K8 ["__index"]
       28 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       30 GETIMPORT                        R4 K11 [setmetatable]
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R4 K8 ["__index"]
       35 DUPCLOSURE                       R5 K12 [PROTO_6]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R5 R4 K13 ["new"]
       41 RETURN                           R4 1
