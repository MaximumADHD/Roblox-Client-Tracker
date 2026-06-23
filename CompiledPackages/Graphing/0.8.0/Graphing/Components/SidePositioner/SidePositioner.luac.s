PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["SIDE_TOP"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["SIDE_BOTTOM"]
        9 JUMPIFEQ                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["Side"]
        5 LOADB                            R3 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["SIDE_TOP"]
        9 JUMPIFEQ                         R4 R5 ; [+8]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["SIDE_BOTTOM"]
       14 JUMPIFEQ                         R4 R5 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 JUMPIFNOT                        R3 ; [+17]
       19 GETTABLEKS                       R3 R0 K3 ["plotToViewX"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["Position"]
       24 CALL                             R3 1 1
       25 MOVE                             R1 R3
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["Side"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K2 ["SIDE_BOTTOM"]
       32 JUMPIFNOTEQ                      R3 R4 ; [+19]
       34 LOADN                            R2 1
       35 JUMP                             ; [+16]
       36 GETTABLEKS                       R3 R0 K5 ["plotToViewY"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K4 ["Position"]
       41 CALL                             R3 1 1
       42 MOVE                             R2 R3
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K0 ["Side"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K6 ["SIDE_RIGHT"]
       49 JUMPIFNOTEQ                      R3 R4 ; [+2]
       51 LOADN                            R1 1
       52 GETIMPORT                        R3 K9 [UDim2.fromScale]
       54 MOVE                             R4 R1
       55 MOVE                             R5 R2
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Side"]
        3 LOADB                            R2 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["SIDE_TOP"]
        7 JUMPIFEQ                         R3 R4 ; [+8]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["SIDE_BOTTOM"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETTABLEKS                       R1 R0 K3 ["isPointInViewportX"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K4 ["Position"]
       22 CALL                             R1 1 1
       23 RETURN                           R1 1
       24 GETTABLEKS                       R1 R0 K5 ["isPointInViewportY"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K4 ["Position"]
       29 CALL                             R1 1 1
       30 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NEWTABLE                         R3 0 2
        6 GETTABLEKS                       R4 R0 K0 ["Side"]
        8 GETTABLEKS                       R5 R0 K1 ["Position"]
       10 SETLIST                          R3 R4 2 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 NEWTABLE                         R4 0 2
       19 GETTABLEKS                       R5 R0 K0 ["Side"]
       21 GETTABLEKS                       R6 R0 K1 ["Position"]
       23 SETLIST                          R4 R5 2 [1]
       25 CALL                             R2 2 1
       26 JUMPIF                           R2 ; [+2]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K2 ["createElement"]
       32 LOADK                            R4 K3 ["Frame"]
       33 DUPTABLE                         R5 K9 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
       34 GETIMPORT                        R6 K12 [Vector2.new]
       36 LOADK                            R7 K13 [0.5]
       37 LOADK                            R8 K13 [0.5]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K4 ["AnchorPoint"]
       41 SETTABLEKS                       R1 R5 K1 ["Position"]
       43 GETIMPORT                        R6 K16 [UDim2.fromOffset]
       45 LOADN                            R7 0
       46 LOADN                            R8 0
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K5 ["Size"]
       50 LOADN                            R6 1
       51 SETTABLEKS                       R6 R5 K6 ["BackgroundTransparency"]
       53 LOADN                            R6 0
       54 SETTABLEKS                       R6 R5 K7 ["BorderSizePixel"]
       56 GETTABLEKS                       R6 R0 K8 ["ZIndex"]
       58 SETTABLEKS                       R6 R5 K8 ["ZIndex"]
       60 GETTABLEKS                       R6 R0 K17 ["children"]
       62 CALL                             R3 3 -1
       63 RETURN                           R3 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["useViewportBinding"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K10 ["useViewportBinding"]
       28 GETTABLEKS                       R6 R4 K11 ["useViewportVisibility"]
       30 DUPCLOSURE                       R7 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R8 K13 [PROTO_3]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R2
       37 SETGLOBAL                        R8 K14 ["SidePositioner"]
       39 GETGLOBAL                        R8 K14 ["SidePositioner"]
       41 RETURN                           R8 1
