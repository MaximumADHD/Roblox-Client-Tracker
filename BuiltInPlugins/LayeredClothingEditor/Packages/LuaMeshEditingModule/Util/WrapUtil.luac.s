PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.CageType.Inner]
        2 JUMPIFNOTEQ                      R0 R2 ; [+27]
        4 LOADK                            R4 K4 ["WrapLayer"]
        5 NAMECALL                         R2 R1 K5 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+10]
       12 GETTABLEKS                       R2 R1 K6 ["Parent"]
       14 GETTABLEKS                       R2 R2 K7 ["CFrame"]
       16 GETTABLEKS                       R4 R1 K8 ["ReferenceOrigin"]
       18 NAMECALL                         R2 R2 K9 ["ToWorldSpace"]
       20 CALL                             R2 2 1
       21 RETURN                           R2 1
       22 GETTABLEKS                       R3 R1 K8 ["ReferenceOrigin"]
       24 GETTABLEKS                       R4 R1 K6 ["Parent"]
       26 GETTABLEKS                       R4 R4 K7 ["CFrame"]
       28 MUL                              R2 R3 R4
       29 RETURN                           R2 1
       30 GETIMPORT                        R2 K11 [Enum.CageType.Outer]
       32 JUMPIFNOTEQ                      R0 R2 ; [+27]
       34 LOADK                            R4 K12 ["BaseWrap"]
       35 NAMECALL                         R2 R1 K5 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIFNOT                        R2 ; [+21]
       39 GETUPVAL                         R3 0
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+10]
       42 GETTABLEKS                       R2 R1 K6 ["Parent"]
       44 GETTABLEKS                       R2 R2 K7 ["CFrame"]
       46 GETTABLEKS                       R4 R1 K13 ["CageOrigin"]
       48 NAMECALL                         R2 R2 K9 ["ToWorldSpace"]
       50 CALL                             R2 2 1
       51 RETURN                           R2 1
       52 GETTABLEKS                       R3 R1 K13 ["CageOrigin"]
       54 GETTABLEKS                       R4 R1 K6 ["Parent"]
       56 GETTABLEKS                       R4 R4 K7 ["CFrame"]
       58 MUL                              R2 R3 R4
       59 RETURN                           R2 1
       60 GETIMPORT                        R2 K15 [CFrame.new]
       62 CALL                             R2 0 -1
       63 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GetVertices"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pcall]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 1 2
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETIMPORT                        R5 K3 [print]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 0
       14 GETUPVAL                         R5 0
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+8]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K4 ["scaleVertices"]
       20 MOVE                             R6 R1
       21 MOVE                             R7 R2
       22 CALL                             R5 2 -1
       23 CLOSEUPVALS                      R2
       24 RETURN                           R5 -1
       25 CLOSEUPVALS                      R2
       26 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GetFaces"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pcall]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 1 2
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETIMPORT                        R5 K3 [print]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 0
       14 CLOSEUPVALS                      R2
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Scaling vertices is only supported with getFFlagAvatarPreviewerCageEditingTools"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["getScaleFactor"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R0 K4 ["CageOrigin"]
       15 GETIMPORT                        R4 K7 [table.create]
       17 LENGTH                           R5 R1
       18 CALL                             R4 1 1
       19 MOVE                             R5 R1
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 MOVE                             R15 R9
       24 NAMECALL                         R13 R3 K8 ["PointToWorldSpace"]
       26 CALL                             R13 2 1
       27 MUL                              R12 R13 R2
       28 NAMECALL                         R10 R3 K9 ["PointToObjectSpace"]
       30 CALL                             R10 2 1
       31 SETTABLE                         R10 R4 R8
       32 FORGLOOP                         R5 2 ; [-10]
       34 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Scaling vertices is only supported with getFFlagAvatarPreviewerCageEditingTools"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K4 ["getScaleFactor"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 DIVRK                            R2 K3 [1] R3
       14 GETTABLEKS                       R3 R0 K5 ["CageOrigin"]
       16 GETIMPORT                        R4 K8 [table.create]
       18 LENGTH                           R5 R1
       19 CALL                             R4 1 1
       20 MOVE                             R5 R1
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 MOVE                             R15 R9
       25 NAMECALL                         R13 R3 K9 ["PointToWorldSpace"]
       27 CALL                             R13 2 1
       28 MUL                              R12 R13 R2
       29 NAMECALL                         R10 R3 K10 ["PointToObjectSpace"]
       31 CALL                             R10 2 1
       32 SETTABLE                         R10 R4 R8
       33 FORGLOOP                         R5 2 ; [-10]
       35 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Scaling vertices is only supported with getFFlagAvatarPreviewerCageEditingTools"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["Parent"]
       10 JUMPIFEQKNIL                     R1 ; [+6]
       12 LOADK                            R4 K4 ["MeshPart"]
       13 NAMECALL                         R2 R1 K5 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIF                           R2 ; [+2]
       17 LOADK                            R2 K6 [{1, 1, 1}]
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R1 K7 ["Size"]
       21 GETTABLEKS                       R4 R1 K8 ["MeshSize"]
       23 DIV                              R2 R3 R4
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["getCageOrigin"]
       20 DUPCLOSURE                       R3 K10 [PROTO_2]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K11 ["getVerticesFromWrap"]
       25 DUPCLOSURE                       R3 K12 [PROTO_4]
       26 SETTABLEKS                       R3 R2 K13 ["getFacesForWrap"]
       28 DUPCLOSURE                       R3 K14 [PROTO_5]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R2 K15 ["scaleVertices"]
       33 DUPCLOSURE                       R3 K16 [PROTO_6]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R3 R2 K17 ["unscaleVerticies"]
       38 DUPCLOSURE                       R3 K18 [PROTO_7]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K19 ["getScaleFactor"]
       42 RETURN                           R2 1
