PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        2 CALL                             R3 1 1
        3 LENGTH                           R2 R3
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOTLE                      R2 R3 ; [+6]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R0 K1 ["MoveTo"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 NAMECALL                         R2 R0 K2 ["GetBoundingBox"]
       15 CALL                             R2 1 2
       16 GETTABLEKS                       R4 R3 K3 ["X"]
       18 LOADN                            R5 0
       19 JUMPIFLT                         R5 R4 ; [+11]
       21 GETTABLEKS                       R4 R3 K4 ["Y"]
       23 LOADN                            R5 0
       24 JUMPIFLT                         R5 R4 ; [+6]
       26 GETTABLEKS                       R4 R3 K5 ["Z"]
       28 LOADN                            R5 0
       29 JUMPIFNOTLT                      R5 R4 ; [+9]
       31 GETIMPORT                        R6 K8 [CFrame.new]
       33 MOVE                             R7 R1
       34 CALL                             R6 1 -1
       35 NAMECALL                         R4 R0 K9 ["PivotTo"]
       37 CALL                             R4 -1 0
       38 RETURN                           R0 0
       39 GETIMPORT                        R4 K11 [Instance.new]
       41 LOADK                            R5 K12 ["Model"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K11 [Instance.new]
       45 LOADK                            R6 K13 ["Part"]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R3 R5 K14 ["Size"]
       49 SETTABLEKS                       R2 R5 K6 ["CFrame"]
       51 SETTABLEKS                       R4 R5 K15 ["Parent"]
       53 GETIMPORT                        R7 K17 [game]
       55 GETTABLEKS                       R6 R7 K18 ["Workspace"]
       57 SETTABLEKS                       R6 R4 K15 ["Parent"]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R0 K15 ["Parent"]
       62 MOVE                             R8 R1
       63 NAMECALL                         R6 R4 K1 ["MoveTo"]
       65 CALL                             R6 2 0
       66 GETTABLEKS                       R8 R5 K6 ["CFrame"]
       68 NAMECALL                         R6 R0 K9 ["PivotTo"]
       70 CALL                             R6 2 0
       71 GETIMPORT                        R7 K17 [game]
       73 GETTABLEKS                       R6 R7 K18 ["Workspace"]
       75 SETTABLEKS                       R6 R0 K15 ["Parent"]
       77 LOADNIL                          R6
       78 SETTABLEKS                       R6 R4 K15 ["Parent"]
       80 NAMECALL                         R6 R5 K19 ["Destroy"]
       82 CALL                             R6 1 0
       83 NAMECALL                         R6 R4 K19 ["Destroy"]
       85 CALL                             R6 1 0
       86 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntToolboxMoveModelMaxSize"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
