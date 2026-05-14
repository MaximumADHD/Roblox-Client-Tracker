PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.CageType.Inner]
        2 JUMPIFNOTEQ                      R0 R2 ; [+9]
        4 LOADK                            R4 K4 ["WrapLayer"]
        5 NAMECALL                         R2 R1 K5 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R2 R1 K6 ["ReferenceOrigin"]
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K8 [Enum.CageType.Outer]
       14 JUMPIFNOTEQ                      R0 R2 ; [+9]
       16 LOADK                            R4 K9 ["BaseWrap"]
       17 NAMECALL                         R2 R1 K5 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+3]
       21 GETTABLEKS                       R2 R1 K10 ["CageOrigin"]
       23 RETURN                           R2 1
       24 GETIMPORT                        R2 K13 [CFrame.new]
       26 CALL                             R2 0 -1
       27 RETURN                           R2 -1

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
       15 GETTABLEKS                       R5 R5 K4 ["scaleVertices"]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 CALL                             R5 2 -1
       20 CLOSEUPVALS                      R2
       21 RETURN                           R5 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getScaleFactor"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["CageOrigin"]
        7 GETIMPORT                        R4 K4 [table.create]
        9 LENGTH                           R5 R1
       10 CALL                             R4 1 1
       11 MOVE                             R5 R1
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 MOVE                             R15 R9
       16 NAMECALL                         R13 R3 K5 ["PointToWorldSpace"]
       18 CALL                             R13 2 1
       19 MUL                              R12 R13 R2
       20 NAMECALL                         R10 R3 K6 ["PointToObjectSpace"]
       22 CALL                             R10 2 1
       23 SETTABLE                         R10 R4 R8
       24 FORGLOOP                         R5 2 ; [-10]
       26 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["getScaleFactor"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 DIVRK                            R2 R0 K3 ["table"]
        6 GETTABLEKS                       R3 R0 K2 ["CageOrigin"]
        8 GETIMPORT                        R4 K5 [table.create]
       10 LENGTH                           R5 R1
       11 CALL                             R4 1 1
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 MOVE                             R15 R9
       17 NAMECALL                         R13 R3 K6 ["PointToWorldSpace"]
       19 CALL                             R13 2 1
       20 MUL                              R12 R13 R2
       21 NAMECALL                         R10 R3 K7 ["PointToObjectSpace"]
       23 CALL                             R10 2 1
       24 SETTABLE                         R10 R4 R8
       25 FORGLOOP                         R5 2 ; [-10]
       27 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 LOADK                            R4 K1 ["MeshPart"]
        5 NAMECALL                         R2 R1 K2 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADK                            R2 K3 [{1, 1, 1}]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R1 K4 ["Size"]
       13 GETTABLEKS                       R4 R1 K5 ["MeshSize"]
       15 DIV                              R2 R3 R4
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 8 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 SETTABLEKS                       R3 R2 K8 ["getCageOrigin"]
       17 DUPCLOSURE                       R3 K9 [PROTO_2]
       18 CAPTURE                          VAL R2
       19 SETTABLEKS                       R3 R2 K10 ["getVerticesFromWrap"]
       21 DUPCLOSURE                       R3 K11 [PROTO_4]
       22 SETTABLEKS                       R3 R2 K12 ["getFacesForWrap"]
       24 DUPCLOSURE                       R3 K13 [PROTO_5]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K14 ["scaleVertices"]
       28 DUPCLOSURE                       R3 K15 [PROTO_6]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R3 R2 K16 ["unscaleVertices"]
       32 DUPCLOSURE                       R3 K17 [PROTO_7]
       33 SETTABLEKS                       R3 R2 K18 ["getScaleFactor"]
       35 RETURN                           R2 1
