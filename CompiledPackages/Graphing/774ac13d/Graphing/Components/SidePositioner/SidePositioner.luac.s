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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R0 K1 ["Side"]
        7 LOADB                            R3 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["SIDE_TOP"]
       11 JUMPIFEQ                         R4 R5 ; [+8]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["SIDE_BOTTOM"]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETTABLEKS                       R2 R1 K4 ["isPointInViewportX"]
       23 GETTABLEKS                       R3 R0 K5 ["Position"]
       25 CALL                             R2 1 1
       26 JUMP                             ; [+5]
       27 GETTABLEKS                       R2 R1 K6 ["isPointInViewportY"]
       29 GETTABLEKS                       R3 R0 K5 ["Position"]
       31 CALL                             R2 1 1
       32 LOADN                            R3 0
       33 LOADN                            R4 0
       34 GETTABLEKS                       R6 R0 K1 ["Side"]
       36 LOADB                            R5 1
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K2 ["SIDE_TOP"]
       40 JUMPIFEQ                         R6 R7 ; [+8]
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K3 ["SIDE_BOTTOM"]
       45 JUMPIFEQ                         R6 R7 ; [+2]
       47 LOADB                            R5 0 +1
       48 LOADB                            R5 1
       49 JUMPIFNOT                        R5 ; [+15]
       50 GETTABLEKS                       R5 R1 K7 ["plotToViewX"]
       52 GETTABLEKS                       R6 R0 K5 ["Position"]
       54 CALL                             R5 1 1
       55 MOVE                             R3 R5
       56 GETTABLEKS                       R5 R0 K1 ["Side"]
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K3 ["SIDE_BOTTOM"]
       61 JUMPIFNOTEQ                      R5 R6 ; [+17]
       63 LOADN                            R4 1
       64 JUMP                             ; [+14]
       65 GETTABLEKS                       R5 R1 K8 ["plotToViewY"]
       67 GETTABLEKS                       R6 R0 K5 ["Position"]
       69 CALL                             R5 1 1
       70 MOVE                             R4 R5
       71 GETTABLEKS                       R5 R0 K1 ["Side"]
       73 GETUPVAL                         R6 2
       74 GETTABLEKS                       R6 R6 K9 ["SIDE_RIGHT"]
       76 JUMPIFNOTEQ                      R5 R6 ; [+2]
       78 LOADN                            R3 1
       79 MOVE                             R5 R2
       80 JUMPIFNOT                        R5 ; [+36]
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R5 R5 K10 ["createElement"]
       84 LOADK                            R6 K11 ["Frame"]
       85 DUPTABLE                         R7 K16 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "ZIndex"}]
       86 GETIMPORT                        R8 K19 [Vector2.new]
       88 LOADK                            R9 K20 [0.5]
       89 LOADK                            R10 K20 [0.5]
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K12 ["AnchorPoint"]
       93 GETIMPORT                        R8 K23 [UDim2.fromScale]
       95 MOVE                             R9 R3
       96 MOVE                             R10 R4
       97 CALL                             R8 2 1
       98 SETTABLEKS                       R8 R7 K5 ["Position"]
      100 GETIMPORT                        R8 K25 [UDim2.fromOffset]
      102 LOADN                            R9 0
      103 LOADN                            R10 0
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K13 ["Size"]
      107 LOADN                            R8 1
      108 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
      110 GETTABLEKS                       R8 R0 K15 ["ZIndex"]
      112 SETTABLEKS                       R8 R7 K15 ["ZIndex"]
      114 GETTABLEKS                       R8 R0 K26 ["children"]
      116 CALL                             R5 3 1
      117 RETURN                           R5 1

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
       25 CAPTURE                          VAL R4
       26 DUPCLOSURE                       R6 K11 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 SETGLOBAL                        R6 K12 ["SidePositioner"]
       32 GETGLOBAL                        R6 K12 ["SidePositioner"]
       34 RETURN                           R6 1
