PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Motor6D"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+9]
        9 LOADN                            R6 0
       10 SETTABLEKS                       R6 R5 K3 ["CurrentAngle"]
       12 GETIMPORT                        R6 K6 [CFrame.new]
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K7 ["Transform"]
       17 JUMP                             ; [+10]
       18 LOADK                            R8 K8 ["AnimationConstraint"]
       19 NAMECALL                         R6 R5 K2 ["IsA"]
       21 CALL                             R6 2 1
       22 JUMPIFNOT                        R6 ; [+5]
       23 GETIMPORT                        R6 K6 [CFrame.new]
       25 CALL                             R6 0 1
       26 SETTABLEKS                       R6 R5 K7 ["Transform"]
       28 FORGLOOP                         R1 2 ; [-25]
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
