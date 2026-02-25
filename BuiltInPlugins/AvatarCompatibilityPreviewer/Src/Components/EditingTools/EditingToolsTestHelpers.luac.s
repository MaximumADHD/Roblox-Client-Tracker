PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.CageType.Outer]
        3 NAMECALL                         R0 R0 K4 ["GetVertices"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cloneLizard"]
        3 LOADK                            R1 K1 ["SymmetryMapLizard"]
        4 CALL                             R0 1 1
        5 NAMECALL                         R1 R0 K2 ["GetDescendants"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 LOADK                            R8 K3 ["WrapTarget"]
       10 NAMECALL                         R6 R5 K4 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+11]
       14 GETIMPORT                        R6 K6 [pcall]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R5
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+1]
       20 JUMP                             ; [+4]
       21 GETIMPORT                        R7 K9 [task.wait]
       23 CALL                             R7 0 0
       24 JUMPBACK                         ; [-11]
       25 FORGLOOP                         R1 2 ; [-17]
       27 MOVE                             R1 R0
       28 GETUPVAL                         R2 1
       29 MOVE                             R3 R0
       30 GETIMPORT                        R4 K11 [error]
       32 CALL                             R2 2 -1
       33 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Packages"]
       11 GETTABLEKS                       R3 R4 K7 ["LuaMeshEditingModule"]
       13 GETTABLEKS                       R2 R3 K8 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["RhodiumTests"]
       20 GETTABLEKS                       R3 R4 K10 ["RhodiumTestHelpers"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R5 K8 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K13 ["EditingTools"]
       38 GETTABLEKS                       R5 R6 K14 ["createSymmetryMapAsync"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 1 0
       43 DUPCLOSURE                       R6 K15 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R6 R5 K16 ["cloneLizardAndSymmetryMapAsync"]
       48 RETURN                           R5 1
