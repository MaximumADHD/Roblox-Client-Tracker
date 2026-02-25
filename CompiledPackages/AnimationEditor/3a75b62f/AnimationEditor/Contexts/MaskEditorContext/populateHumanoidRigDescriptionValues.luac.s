PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFEQKNIL                     R2 ; [+31]
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETIMPORT                        R8 K2 [Instance.new]
       10 LOADK                            R9 K3 ["NumberValue"]
       11 CALL                             R8 1 1
       12 GETTABLEKS                       R9 R7 K4 ["Name"]
       14 SETTABLEKS                       R9 R8 K4 ["Name"]
       16 LOADN                            R9 1
       17 SETTABLEKS                       R9 R8 K5 ["Value"]
       19 GETUPVAL                         R12 1
       20 GETTABLEKS                       R11 R12 K6 ["orderAttribute"]
       22 MOVE                             R12 R6
       23 NAMECALL                         R9 R8 K7 ["SetAttribute"]
       25 CALL                             R9 3 0
       26 SETTABLEKS                       R0 R8 K8 ["Parent"]
       28 GETUPVAL                         R9 2
       29 MOVE                             R10 R8
       30 MOVE                             R11 R7
       31 CALL                             R9 2 0
       32 FORGLOOP                         R3 2 ; [-25]
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["AdaptiveAnimationTools"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R4 R5 K9 ["MaskEditorContext"]
       20 GETTABLEKS                       R3 R4 K10 ["MasksConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["getChildrenByParent"]
       25 CALL                             R3 0 1
       26 DUPCLOSURE                       R4 K12 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 RETURN                           R4 1
