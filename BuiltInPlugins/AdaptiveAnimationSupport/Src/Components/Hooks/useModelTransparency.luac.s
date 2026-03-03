PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["Parent"]
        6 JUMPIFNOT                        R5 ; [+3]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K1 ["LocalTransparencyModifier"]
       10 FORGLOOP                         R0 2 ; [-7]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K0 ["GetDescendants"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 LOADK                            R8 K1 ["BasePart"]
       11 NAMECALL                         R6 R5 K2 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+12]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K3 ["MESH_TRANSPARENCY"]
       18 SETTABLEKS                       R6 R5 K4 ["LocalTransparencyModifier"]
       20 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       22 MOVE                             R7 R0
       23 MOVE                             R8 R5
       24 GETIMPORT                        R6 K7 [table.insert]
       26 CALL                             R6 2 0
       27 FORGLOOP                         R1 2 ; [-18]
       29 NEWCLOSURE                       R1 P0
       30 CAPTURE                          VAL R0
       31 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
