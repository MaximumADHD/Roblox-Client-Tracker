PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["isPointInViewport"]
        7 GETTABLEKS                       R3 R0 K2 ["Position"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R1 K3 ["plotToView"]
       12 GETTABLEKS                       R4 R0 K2 ["Position"]
       14 CALL                             R3 1 1
       15 MOVE                             R4 R2
       16 JUMPIFNOT                        R4 ; [+45]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["createElement"]
       20 LOADK                            R5 K5 ["Frame"]
       21 NEWTABLE                         R6 8 0
       23 GETIMPORT                        R7 K8 [Vector2.new]
       25 LOADK                            R8 K9 [0.5]
       26 LOADK                            R9 K9 [0.5]
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K10 ["AnchorPoint"]
       30 GETIMPORT                        R7 K13 [UDim2.fromScale]
       32 GETTABLEKS                       R8 R3 K14 ["X"]
       34 GETTABLEKS                       R9 R3 K15 ["Y"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K2 ["Position"]
       39 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       41 LOADN                            R8 0
       42 LOADN                            R9 0
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K18 ["Size"]
       46 LOADN                            R7 1
       47 SETTABLEKS                       R7 R6 K19 ["BackgroundTransparency"]
       49 GETTABLEKS                       R7 R0 K20 ["ZIndex"]
       51 SETTABLEKS                       R7 R6 K20 ["ZIndex"]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K21 ["Tag"]
       56 GETTABLEKS                       R8 R0 K21 ["Tag"]
       58 SETTABLE                         R8 R6 R7
       59 GETTABLEKS                       R7 R0 K22 ["children"]
       61 CALL                             R4 3 1
       62 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Types"]
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETGLOBAL                        R5 K11 ["Positioner"]
       29 GETGLOBAL                        R5 K11 ["Positioner"]
       31 RETURN                           R5 1
