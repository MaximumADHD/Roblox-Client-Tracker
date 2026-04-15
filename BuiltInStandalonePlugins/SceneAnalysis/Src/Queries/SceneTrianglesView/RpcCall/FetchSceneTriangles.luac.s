PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetTriangleCompositionAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Sizes"]
        2 JUMPIFNOT                        R1 ; [+32]
        3 GETTABLEKS                       R1 R0 K1 ["triangles"]
        5 JUMPIF                           R1 ; [+13]
        6 GETTABLEKS                       R2 R0 K0 ["Sizes"]
        8 GETTABLEKS                       R1 R2 K1 ["triangles"]
       10 JUMPIF                           R1 ; [+6]
       11 GETTABLEKS                       R2 R0 K0 ["Sizes"]
       13 GETTABLEKS                       R1 R2 K2 ["Triangles"]
       15 JUMPIF                           R1 ; [+1]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K1 ["triangles"]
       19 GETTABLEKS                       R1 R0 K3 ["drawcalls"]
       21 JUMPIF                           R1 ; [+13]
       22 GETTABLEKS                       R2 R0 K0 ["Sizes"]
       24 GETTABLEKS                       R1 R2 K3 ["drawcalls"]
       26 JUMPIF                           R1 ; [+6]
       27 GETTABLEKS                       R2 R0 K0 ["Sizes"]
       29 GETTABLEKS                       R1 R2 K4 ["Drawcalls"]
       31 JUMPIF                           R1 ; [+1]
       32 LOADN                            R1 0
       33 SETTABLEKS                       R1 R0 K3 ["drawcalls"]
       35 GETTABLEKS                       R1 R0 K5 ["Size"]
       37 JUMPIF                           R1 ; [+8]
       38 GETTABLEKS                       R1 R0 K1 ["triangles"]
       40 JUMPIFNOT                        R1 ; [+5]
       41 GETTABLEKS                       R1 R0 K1 ["triangles"]
       43 SETTABLEKS                       R1 R0 K5 ["Size"]
       45 JUMP                             ; [+10]
       46 GETTABLEKS                       R1 R0 K1 ["triangles"]
       48 JUMPIF                           R1 ; [+7]
       49 GETTABLEKS                       R1 R0 K5 ["Size"]
       51 JUMPIFNOT                        R1 ; [+4]
       52 GETTABLEKS                       R1 R0 K5 ["Size"]
       54 SETTABLEKS                       R1 R0 K1 ["triangles"]
       56 GETTABLEKS                       R1 R0 K6 ["Children"]
       58 JUMPIFNOT                        R1 ; [+10]
       59 GETTABLEKS                       R1 R0 K6 ["Children"]
       61 LOADNIL                          R2
       62 LOADNIL                          R3
       63 FORGPREP                         R1
       64 GETUPVAL                         R6 0
       65 MOVE                             R7 R5
       66 CALL                             R6 1 0
       67 FORGLOOP                         R1 2 ; [-4]
       69 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 JUMPIF                           R2 ; [+15]
       13 DUPTABLE                         R3 K10 [{"Id", "Name", "Size", "Children"}]
       14 LOADN                            R4 0
       15 SETTABLEKS                       R4 R3 K6 ["Id"]
       17 LOADK                            R4 K11 ["Root"]
       18 SETTABLEKS                       R4 R3 K7 ["Name"]
       20 LOADN                            R4 0
       21 SETTABLEKS                       R4 R3 K8 ["Size"]
       23 NEWTABLE                         R4 0 0
       25 SETTABLEKS                       R4 R3 K9 ["Children"]
       27 RETURN                           R3 1
       28 DUPCLOSURE                       R3 K12 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 MOVE                             R4 R3
       31 MOVE                             R5 R2
       32 CALL                             R4 1 0
       33 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["FetchSceneTriangles"]
        1 DUPCLOSURE                       R5 K1 [PROTO_2]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["Init"]
        6 RETURN                           R0 1
