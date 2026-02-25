PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["GetChildren"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 LOADK                            R8 K3 ["BasePart"]
        8 NAMECALL                         R6 R5 K4 ["IsA"]
       10 CALL                             R6 2 1
       11 JUMPIF                           R6 ; [+5]
       12 LOADK                            R8 K5 ["JointInstance"]
       13 NAMECALL                         R6 R5 K4 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+3]
       17 NAMECALL                         R6 R5 K6 ["Destroy"]
       19 CALL                             R6 1 0
       20 FORGLOOP                         R1 2 ; [-14]
       22 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["WorldPivot"]
        2 GETTABLEKS                       R2 R3 K1 ["Position"]
        4 NAMECALL                         R3 R1 K2 ["GetExtentsSize"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R5 R3 K3 ["X"]
        9 GETTABLEKS                       R6 R3 K4 ["Y"]
       11 GETTABLEKS                       R7 R3 K5 ["Z"]
       13 FASTCALL                         MATH_MAX ; [+2]
       14 GETIMPORT                        R4 K8 [math.max]
       16 CALL                             R4 3 1
       17 GETTABLEKS                       R5 R0 K9 ["InsertWithScenePosition"]
       19 JUMPIF                           R5 ; [+3]
       20 GETUPVAL                         R5 0
       21 CALL                             R5 0 1
       22 MOVE                             R2 R5
       23 GETIMPORT                        R6 K11 [game]
       25 GETTABLEKS                       R5 R6 K12 ["Workspace"]
       27 MOVE                             R7 R2
       28 MULK                             R9 R4 K13 [3]
       29 FASTCALL2K                       MATH_MAX R9 K14 ; [+4]
       31 LOADK                            R10 K14 [100]
       32 GETIMPORT                        R8 K8 [math.max]
       34 CALL                             R8 2 1
       35 NAMECALL                         R5 R5 K15 ["GetPartBoundsInRadius"]
       37 CALL                             R5 3 1
       38 GETIMPORT                        R6 K18 [Instance.new]
       40 LOADK                            R7 K19 ["Model"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R5
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 NAMECALL                         R12 R11 K20 ["Clone"]
       48 CALL                             R12 1 1
       49 GETUPVAL                         R13 1
       50 MOVE                             R14 R12
       51 CALL                             R13 1 0
       52 SETTABLEKS                       R6 R12 K21 ["Parent"]
       54 FORGLOOP                         R7 2 ; [-9]
       56 NAMECALL                         R7 R1 K20 ["Clone"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R9 K11 [game]
       61 GETTABLEKS                       R8 R9 K12 ["Workspace"]
       63 SETTABLEKS                       R8 R7 K21 ["Parent"]
       65 GETTABLEKS                       R8 R0 K9 ["InsertWithScenePosition"]
       67 JUMPIF                           R8 ; [+4]
       68 MOVE                             R10 R2
       69 NAMECALL                         R8 R7 K22 ["MoveTo"]
       71 CALL                             R8 2 0
       72 NAMECALL                         R8 R7 K23 ["GetBoundingBox"]
       74 CALL                             R8 1 1
       75 LOADNIL                          R9
       76 SETTABLEKS                       R9 R7 K21 ["Parent"]
       78 GETIMPORT                        R9 K25 [CFrame.new]
       80 CALL                             R9 0 1
       81 SETTABLEKS                       R9 R6 K0 ["WorldPivot"]
       83 GETIMPORT                        R9 K25 [CFrame.new]
       85 GETTABLEKS                       R11 R8 K1 ["Position"]
       87 MINUS                            R10 R11
       88 CALL                             R9 1 1
       89 MOVE                             R10 R6
       90 MOVE                             R11 R9
       91 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["getWorkspaceInsertPosition"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 DUPCLOSURE                       R3 K10 [PROTO_1]
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
