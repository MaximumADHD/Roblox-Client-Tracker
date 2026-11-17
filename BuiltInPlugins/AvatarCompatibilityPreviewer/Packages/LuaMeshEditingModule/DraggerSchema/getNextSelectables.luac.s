PROTO_0:
        0 JUMPIFNOT                        R3 ; [+28]
        1 LENGTH                           R4 R1
        2 LOADN                            R5 0
        3 JUMPIFNOTLT                      R5 R4 ; [+25]
        5 LENGTH                           R5 R1
        6 GETTABLE                         R4 R1 R5
        7 GETTABLEKS                       R5 R4 K0 ["MeshName"]
        9 GETTABLEKS                       R6 R0 K1 ["vertexEditingTool"]
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R6 K2 ["getSelectablesForMesh"]
       14 CALL                             R6 2 1
       15 MOVE                             R7 R6
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 FORGPREP                         R7
       19 GETTABLEKS                       R14 R11 K3 ["Selectable"]
       21 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       23 MOVE                             R13 R1
       24 GETIMPORT                        R12 K6 [table.insert]
       26 CALL                             R12 2 0
       27 FORGLOOP                         R7 2 ; [-9]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
