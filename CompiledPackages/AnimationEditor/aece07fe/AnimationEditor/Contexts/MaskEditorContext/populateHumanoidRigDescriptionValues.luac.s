PROTO_0:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["NumberValue"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R4 R1 K4 ["Name"]
        6 SETTABLEKS                       R4 R3 K4 ["Name"]
        8 LOADN                            R4 1
        9 SETTABLEKS                       R4 R3 K5 ["Value"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K6 ["orderAttribute"]
       14 ORK                              R7 R2 K7 [0]
       15 NAMECALL                         R4 R3 K8 ["SetAttribute"]
       17 CALL                             R4 3 0
       18 SETTABLEKS                       R0 R3 K9 ["Parent"]
       20 GETUPVAL                         R5 1
       21 GETTABLE                         R4 R5 R1
       22 JUMPIFEQKNIL                     R4 ; [+12]
       24 MOVE                             R5 R4
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETUPVAL                         R10 2
       29 MOVE                             R11 R3
       30 MOVE                             R12 R9
       31 MOVE                             R13 R8
       32 CALL                             R10 3 0
       33 FORGLOOP                         R5 2 ; [-6]
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AdaptiveAnimationTools"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["MaskEditorContext"]
       20 GETTABLEKS                       R3 R3 K10 ["MasksConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["getChildrenByParent"]
       25 CALL                             R3 0 1
       26 DUPCLOSURE                       R4 K12 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 RETURN                           R4 1
