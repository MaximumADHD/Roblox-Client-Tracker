PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 1
        5 GETTABLEKS                       R1 R1 K0 ["container"]
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 0
        9 LOADK                            R4 K1 ["ScreenGui"]
       10 NAMECALL                         R2 R1 K2 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K6 [Enum.ZIndexBehavior.Sibling]
       15 SETTABLEKS                       R3 R2 K4 ["ZIndexBehavior"]
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 0
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["ReactTestingLibrary"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["Test"]
       24 GETTABLEKS                       R3 R3 K12 ["Helpers"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K9 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["Test"]
       35 GETTABLEKS                       R4 R4 K13 ["Setup"]
       37 GETTABLEKS                       R4 R4 K14 ["createApp"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R4 R1 K15 ["render"]
       42 GETTABLEKS                       R5 R2 K16 ["awaitDeferAsync"]
       44 DUPCLOSURE                       R6 K17 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
