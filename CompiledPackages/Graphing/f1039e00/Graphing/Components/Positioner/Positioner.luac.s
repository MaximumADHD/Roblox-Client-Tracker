PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 GETTABLEKS                       R6 R0 K1 ["Position"]
        9 FASTCALL1                        TYPEOF R6 ; [+2]
       10 GETIMPORT                        R5 K3 [typeof]
       12 CALL                             R5 1 1
       13 JUMPIFNOTEQKS                    R5 K4 ["Vector2"] ; [+21]
       15 GETTABLEKS                       R5 R2 K5 ["isPointInViewport"]
       17 GETTABLEKS                       R6 R0 K1 ["Position"]
       19 CALL                             R5 1 1
       20 MOVE                             R4 R5
       21 GETTABLEKS                       R5 R2 K6 ["plotToView"]
       23 GETTABLEKS                       R6 R0 K1 ["Position"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K9 [UDim2.fromScale]
       28 GETTABLEKS                       R7 R5 K10 ["X"]
       30 GETTABLEKS                       R8 R5 K11 ["Y"]
       32 CALL                             R6 2 1
       33 MOVE                             R3 R6
       34 JUMP                             ; [+3]
       35 LOADB                            R4 1
       36 GETTABLEKS                       R3 R0 K1 ["Position"]
       38 MOVE                             R5 R4
       39 JUMPIFNOT                        R5 ; [+43]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K12 ["createElement"]
       43 LOADK                            R6 K13 ["Frame"]
       44 NEWTABLE                         R7 8 0
       46 GETIMPORT                        R8 K15 [Vector2.new]
       48 LOADK                            R9 K16 [0.5]
       49 LOADK                            R10 K16 [0.5]
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K17 ["AnchorPoint"]
       53 SETTABLEKS                       R3 R7 K1 ["Position"]
       55 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       57 LOADN                            R9 0
       58 LOADN                            R10 0
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K20 ["Size"]
       62 LOADN                            R8 1
       63 SETTABLEKS                       R8 R7 K21 ["BackgroundTransparency"]
       65 LOADN                            R8 0
       66 SETTABLEKS                       R8 R7 K22 ["BorderSizePixel"]
       68 GETTABLEKS                       R8 R0 K23 ["ZIndex"]
       70 SETTABLEKS                       R8 R7 K23 ["ZIndex"]
       72 SETTABLEKS                       R1 R7 K24 ["ref"]
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R8 R9 K25 ["Tag"]
       77 GETTABLEKS                       R9 R0 K25 ["Tag"]
       79 SETTABLE                         R9 R7 R8
       80 GETTABLEKS                       R8 R0 K26 ["children"]
       82 CALL                             R5 3 1
       83 RETURN                           R5 1

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
       29 GETTABLEKS                       R5 R2 K12 ["forwardRef"]
       31 GETGLOBAL                        R6 K11 ["Positioner"]
       33 CALL                             R5 1 -1
       34 RETURN                           R5 -1
