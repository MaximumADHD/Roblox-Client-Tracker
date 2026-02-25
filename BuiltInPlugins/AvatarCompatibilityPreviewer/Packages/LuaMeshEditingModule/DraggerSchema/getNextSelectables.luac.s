PROTO_0:
        0 JUMPIFNOT                        R3 ; [+31]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+4]
        4 LENGTH                           R4 R1
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R4 ; [+25]
        8 LENGTH                           R5 R1
        9 GETTABLE                         R4 R1 R5
       10 GETTABLEKS                       R5 R4 K0 ["MeshName"]
       12 GETTABLEKS                       R6 R0 K1 ["vertexEditingTool"]
       14 MOVE                             R8 R5
       15 NAMECALL                         R6 R6 K2 ["getSelectablesForMesh"]
       17 CALL                             R6 2 1
       18 MOVE                             R7 R6
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 GETTABLEKS                       R14 R11 K3 ["Selectable"]
       24 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       26 MOVE                             R13 R1
       27 GETIMPORT                        R12 K6 [table.insert]
       29 CALL                             R12 2 0
       30 FORGLOOP                         R7 2 ; [-9]
       32 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
