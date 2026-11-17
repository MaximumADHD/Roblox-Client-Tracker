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
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R0 0 0
        9 GETUPVAL                         R1 0
       10 NAMECALL                         R1 R1 K0 ["GetDescendants"]
       12 CALL                             R1 1 3
       13 FORGPREP                         R1
       14 LOADK                            R8 K1 ["BasePart"]
       15 NAMECALL                         R6 R5 K2 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+12]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K3 ["MESH_TRANSPARENCY"]
       22 SETTABLEKS                       R6 R5 K4 ["LocalTransparencyModifier"]
       24 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       26 MOVE                             R7 R0
       27 MOVE                             R8 R5
       28 GETIMPORT                        R6 K7 [table.insert]
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-18]
       33 NEWCLOSURE                       R1 P0
       34 CAPTURE                          VAL R0
       35 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagAdaptiveAnimationHandRigQoL"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_2]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
