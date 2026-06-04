PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        2 CALL                             R3 1 1
        3 LENGTH                           R2 R3
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOTLE                      R2 R3 ; [+15]
        8 GETIMPORT                        R2 K2 [game]
       10 GETTABLEKS                       R2 R2 K3 ["Workspace"]
       12 SETTABLEKS                       R2 R0 K4 ["Parent"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R0 K5 ["MoveTo"]
       17 CALL                             R2 2 0
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R0 K4 ["Parent"]
       21 RETURN                           R0 0
       22 NAMECALL                         R2 R0 K6 ["GetBoundingBox"]
       24 CALL                             R2 1 2
       25 GETTABLEKS                       R4 R3 K7 ["X"]
       27 LOADN                            R5 0
       28 JUMPIFLT                         R5 R4 ; [+11]
       30 GETTABLEKS                       R4 R3 K8 ["Y"]
       32 LOADN                            R5 0
       33 JUMPIFLT                         R5 R4 ; [+6]
       35 GETTABLEKS                       R4 R3 K9 ["Z"]
       37 LOADN                            R5 0
       38 JUMPIFNOTLT                      R5 R4 ; [+9]
       40 GETIMPORT                        R6 K12 [CFrame.new]
       42 MOVE                             R7 R1
       43 CALL                             R6 1 -1
       44 NAMECALL                         R4 R0 K13 ["PivotTo"]
       46 CALL                             R4 -1 0
       47 RETURN                           R0 0
       48 GETIMPORT                        R4 K15 [Instance.new]
       50 LOADK                            R5 K16 ["Model"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K15 [Instance.new]
       54 LOADK                            R6 K17 ["Part"]
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R3 R5 K18 ["Size"]
       58 SETTABLEKS                       R2 R5 K10 ["CFrame"]
       60 SETTABLEKS                       R4 R5 K4 ["Parent"]
       62 GETIMPORT                        R6 K2 [game]
       64 GETTABLEKS                       R6 R6 K3 ["Workspace"]
       66 SETTABLEKS                       R6 R4 K4 ["Parent"]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R0 K4 ["Parent"]
       71 MOVE                             R8 R1
       72 NAMECALL                         R6 R4 K5 ["MoveTo"]
       74 CALL                             R6 2 0
       75 GETTABLEKS                       R8 R5 K10 ["CFrame"]
       77 NAMECALL                         R6 R0 K13 ["PivotTo"]
       79 CALL                             R6 2 0
       80 GETIMPORT                        R6 K2 [game]
       82 GETTABLEKS                       R6 R6 K3 ["Workspace"]
       84 SETTABLEKS                       R6 R0 K4 ["Parent"]
       86 NAMECALL                         R6 R5 K19 ["Destroy"]
       88 CALL                             R6 1 0
       89 NAMECALL                         R6 R4 K19 ["Destroy"]
       91 CALL                             R6 1 0
       92 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Flags"]
        9 GETTABLEKS                       R2 R2 K6 ["getFIntAssetInsertMoveModelMaxSize"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
