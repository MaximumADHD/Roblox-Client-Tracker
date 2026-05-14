PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R1 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 NAMECALL                         R3 R1 K0 ["GetDescendants"]
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["WrapTarget"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+12]
       12 MOVE                             R9 R2
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K3 ["new"]
       16 GETIMPORT                        R11 K7 [Enum.CageType.Outer]
       18 MOVE                             R12 R7
       19 CALL                             R10 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R8 K10 [table.insert]
       23 CALL                             R8 -1 0
       24 FORGLOOP                         R3 2 ; [-18]
       26 LENGTH                           R3 R2
       27 JUMPIFNOTEQKN                    R3 K11 [0] ; [+7]
       29 LOADK                            R4 K12 ["Model: "]
       30 GETTABLEKS                       R5 R1 K13 ["Name"]
       32 LOADK                            R6 K14 [" does not contain any MeshPart(s) with a WrapTarget."]
       33 CONCAT                           R3 R4 R6
       34 RETURN                           R3 1
       35 LOADNIL                          R3
       36 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R1 K1 ["FindFirstAncestorOfClass"]
        3 CALL                             R3 2 1
        4 MOVE                             R6 R3
        5 MOVE                             R7 R2
        6 NAMECALL                         R4 R0 K2 ["_makeWrapperObjectsFromModel"]
        8 CALL                             R4 3 -1
        9 RETURN                           R4 -1

PROTO_3:
        0 GETIMPORT                        R4 K3 [Enum.CageType.Inner]
        2 JUMPIFNOTEQ                      R1 R4 ; [+20]
        4 LOADK                            R6 K4 ["WrapLayer"]
        5 NAMECALL                         R4 R2 K5 ["FindFirstChildOfClass"]
        7 CALL                             R4 2 1
        8 JUMPIF                           R4 ; [+2]
        9 LOADK                            R5 K6 ["MeshPart must contain a WrapLayer"]
       10 RETURN                           R5 1
       11 MOVE                             R6 R3
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K7 ["new"]
       15 MOVE                             R8 R1
       16 MOVE                             R9 R4
       17 CALL                             R7 2 -1
       18 FASTCALL                         TABLE_INSERT ; [+2]
       19 GETIMPORT                        R5 K10 [table.insert]
       21 CALL                             R5 -1 0
       22 JUMP                             ; [+38]
       23 GETIMPORT                        R4 K12 [Enum.CageType.Outer]
       25 JUMPIFNOTEQ                      R1 R4 ; [+35]
       27 LOADK                            R6 K4 ["WrapLayer"]
       28 NAMECALL                         R4 R2 K5 ["FindFirstChildOfClass"]
       30 CALL                             R4 2 1
       31 LOADK                            R7 K13 ["WrapTarget"]
       32 NAMECALL                         R5 R2 K5 ["FindFirstChildOfClass"]
       34 CALL                             R5 2 1
       35 JUMPIFNOT                        R4 ; [+1]
       36 JUMPIF                           R5 ; [+2]
       37 JUMPIF                           R4 ; [+3]
       38 JUMPIF                           R5 ; [+2]
       39 LOADK                            R6 K14 ["MeshPart must contain either a WrapLayer or a WrapTarget, but not both"]
       40 RETURN                           R6 1
       41 JUMPIFNOT                        R4 ; [+12]
       42 MOVE                             R7 R3
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K7 ["new"]
       46 MOVE                             R9 R1
       47 MOVE                             R10 R4
       48 CALL                             R8 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R6 K10 [table.insert]
       52 CALL                             R6 -1 0
       53 JUMP                             ; [+7]
       54 JUMPIFNOT                        R5 ; [+6]
       55 MOVE                             R8 R2
       56 MOVE                             R9 R3
       57 NAMECALL                         R6 R0 K15 ["_findModelFromInstanceAndGetCages"]
       59 CALL                             R6 3 -1
       60 RETURN                           R6 -1
       61 LOADNIL                          R4
       62 RETURN                           R4 1

PROTO_4:
        0 JUMPIF                           R2 ; [+6]
        1 GETIMPORT                        R4 K1 [error]
        3 LOADK                            R5 K2 ["instance is nil"]
        4 CALL                             R4 1 0
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 GETIMPORT                        R4 K6 [Enum.CageType.Inner]
        9 JUMPIFEQ                         R1 R4 ; [+11]
       11 GETIMPORT                        R4 K8 [Enum.CageType.Outer]
       13 JUMPIFEQ                         R1 R4 ; [+7]
       15 GETIMPORT                        R4 K1 [error]
       17 LOADK                            R5 K9 ["No valid Enum.CageType was provided"]
       18 CALL                             R4 1 0
       19 LOADB                            R4 0
       20 RETURN                           R4 1
       21 LOADNIL                          R4
       22 LOADK                            R7 K10 ["WrapLayer"]
       23 NAMECALL                         R5 R2 K11 ["IsA"]
       25 CALL                             R5 2 1
       26 JUMPIFNOT                        R5 ; [+12]
       27 MOVE                             R6 R3
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K12 ["new"]
       31 MOVE                             R8 R1
       32 MOVE                             R9 R2
       33 CALL                             R7 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R5 K15 [table.insert]
       37 CALL                             R5 -1 0
       38 JUMP                             ; [+44]
       39 LOADK                            R7 K16 ["MeshPart"]
       40 NAMECALL                         R5 R2 K11 ["IsA"]
       42 CALL                             R5 2 1
       43 JUMPIFNOT                        R5 ; [+8]
       44 MOVE                             R7 R1
       45 MOVE                             R8 R2
       46 MOVE                             R9 R3
       47 NAMECALL                         R5 R0 K17 ["_getCageFromMeshPart"]
       49 CALL                             R5 4 1
       50 MOVE                             R4 R5
       51 JUMP                             ; [+31]
       52 GETIMPORT                        R5 K8 [Enum.CageType.Outer]
       54 JUMPIFNOTEQ                      R1 R5 ; [+27]
       56 LOADK                            R7 K18 ["Model"]
       57 NAMECALL                         R5 R2 K11 ["IsA"]
       59 CALL                             R5 2 1
       60 JUMPIFNOT                        R5 ; [+7]
       61 MOVE                             R7 R2
       62 MOVE                             R8 R3
       63 NAMECALL                         R5 R0 K19 ["_makeWrapperObjectsFromModel"]
       65 CALL                             R5 3 1
       66 MOVE                             R4 R5
       67 JUMP                             ; [+15]
       68 LOADK                            R7 K20 ["WrapTarget"]
       69 NAMECALL                         R5 R2 K11 ["IsA"]
       71 CALL                             R5 2 1
       72 JUMPIFNOT                        R5 ; [+7]
       73 MOVE                             R7 R2
       74 MOVE                             R8 R3
       75 NAMECALL                         R5 R0 K21 ["_findModelFromInstanceAndGetCages"]
       77 CALL                             R5 3 1
       78 MOVE                             R4 R5
       79 JUMP                             ; [+3]
       80 LOADK                            R4 K22 ["Instance must be a BaseWrap, Model, or a MeshPart with a valid BaseWrap"]
       81 JUMP                             ; [+1]
       82 LOADK                            R4 K23 ["Instance must be a WrapLayer or a MeshPart with a valid WrapLayer"]
       83 JUMPIFNOT                        R4 ; [+6]
       84 GETIMPORT                        R5 K1 [error]
       86 MOVE                             R6 R4
       87 CALL                             R5 1 0
       88 LOADB                            R5 0
       89 RETURN                           R5 1
       90 LOADB                            R5 1
       91 RETURN                           R5 1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R0 K0 ["_createMeshWrapperObjects"]
        7 CALL                             R4 4 1
        8 JUMPIFNOT                        R4 ; [+4]
        9 MOVE                             R6 R3
       10 NAMECALL                         R4 R0 K1 ["updateCageOrigins"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R0 K0 ["_createMeshWrapperObjects"]
        7 CALL                             R4 4 1
        8 JUMPIFNOT                        R4 ; [+4]
        9 MOVE                             R6 R3
       10 NAMECALL                         R4 R0 K1 ["init"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["MeshEditingContexts"]
       11 GETTABLEKS                       R2 R2 K7 ["MeshEditingContextBase"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["MeshWrapperObjects"]
       18 GETTABLEKS                       R3 R3 K9 ["CageMeshWrapperObject"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R5 8 0
       28 FASTCALL2                        SETMETATABLE R5 R1 ; [+4]
       30 MOVE                             R6 R1
       31 GETIMPORT                        R4 K12 [setmetatable]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R4 K13 ["__index"]
       36 DUPCLOSURE                       R5 K14 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R5 R4 K15 ["new"]
       41 DUPCLOSURE                       R5 K16 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R4 K17 ["_makeWrapperObjectsFromModel"]
       45 DUPCLOSURE                       R5 K18 [PROTO_2]
       46 SETTABLEKS                       R5 R4 K19 ["_findModelFromInstanceAndGetCages"]
       48 DUPCLOSURE                       R5 K20 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R5 R4 K21 ["_getCageFromMeshPart"]
       52 DUPCLOSURE                       R5 K22 [PROTO_4]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R5 R4 K23 ["_createMeshWrapperObjects"]
       56 DUPCLOSURE                       R5 K24 [PROTO_5]
       57 SETTABLEKS                       R5 R4 K25 ["updateCageLocationFromInstance"]
       59 DUPCLOSURE                       R5 K26 [PROTO_6]
       60 SETTABLEKS                       R5 R4 K27 ["initFromCageMesh"]
       62 RETURN                           R4 1
