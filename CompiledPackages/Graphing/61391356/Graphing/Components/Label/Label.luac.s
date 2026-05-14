PROTO_0:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 GETIMPORT                        R4 K3 [Enum.TextXAlignment.Left]
        4 JUMPIFNOTEQ                      R0 R4 ; [+3]
        6 LOADN                            R2 0
        7 JUMP                             ; [+11]
        8 GETIMPORT                        R4 K5 [Enum.TextXAlignment.Center]
       10 JUMPIFNOTEQ                      R0 R4 ; [+3]
       12 LOADK                            R2 K6 [0.5]
       13 JUMP                             ; [+5]
       14 GETIMPORT                        R4 K8 [Enum.TextXAlignment.Right]
       16 JUMPIFNOTEQ                      R0 R4 ; [+2]
       18 LOADN                            R2 1
       19 GETIMPORT                        R4 K11 [Enum.TextYAlignment.Top]
       21 JUMPIFNOTEQ                      R1 R4 ; [+3]
       23 LOADN                            R3 0
       24 JUMP                             ; [+11]
       25 GETIMPORT                        R4 K12 [Enum.TextYAlignment.Center]
       27 JUMPIFNOTEQ                      R1 R4 ; [+3]
       29 LOADK                            R3 K6 [0.5]
       30 JUMP                             ; [+5]
       31 GETIMPORT                        R4 K14 [Enum.TextYAlignment.Bottom]
       33 JUMPIFNOTEQ                      R1 R4 ; [+2]
       35 LOADN                            R3 1
       36 GETIMPORT                        R4 K17 [Vector2.new]
       38 MOVE                             R5 R2
       39 MOVE                             R6 R3
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Offset"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Offset"]
        7 JUMP                             ; [+5]
        8 GETIMPORT                        R1 K3 [Vector2.new]
       10 LOADN                            R2 0
       11 LOADN                            R3 0
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K4 ["plotToView"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["Position"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K7 [UDim2.new]
       21 GETTABLEKS                       R4 R2 K8 ["X"]
       23 GETTABLEKS                       R5 R1 K8 ["X"]
       25 GETTABLEKS                       R6 R2 K9 ["Y"]
       27 GETTABLEKS                       R7 R1 K9 ["Y"]
       29 CALL                             R3 4 -1
       30 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["isPointInViewport"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Position"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["TextXAlignment"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["TextXAlignment"]
        5 JUMP                             ; [+2]
        6 GETIMPORT                        R1 K3 [Enum.TextXAlignment.Center]
        8 GETTABLEKS                       R3 R0 K4 ["TextYAlignment"]
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R2 R0 K4 ["TextYAlignment"]
       13 JUMP                             ; [+2]
       14 GETIMPORT                        R2 K5 [Enum.TextYAlignment.Center]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["useMemo"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R5 0 2
       25 GETTABLEKS                       R6 R0 K0 ["TextXAlignment"]
       27 GETTABLEKS                       R7 R0 K4 ["TextYAlignment"]
       29 SETLIST                          R5 R6 2 [1]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 2
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R6 0 2
       37 GETTABLEKS                       R7 R0 K7 ["Position"]
       39 GETTABLEKS                       R8 R0 K8 ["Offset"]
       41 SETLIST                          R6 R7 2 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 3
       45 NEWCLOSURE                       R6 P2
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R8 R0 K7 ["Position"]
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 1
       54 JUMPIF                           R5 ; [+2]
       55 LOADNIL                          R6
       56 RETURN                           R6 1
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K9 ["createElement"]
       60 LOADK                            R7 K10 ["TextLabel"]
       61 DUPTABLE                         R8 K17 [{"AnchorPoint", "Position", "Text", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "TextColor3", "TextSize", "ZIndex"}]
       62 SETTABLEKS                       R3 R8 K11 ["AnchorPoint"]
       64 SETTABLEKS                       R4 R8 K7 ["Position"]
       66 GETTABLEKS                       R9 R0 K12 ["Text"]
       68 SETTABLEKS                       R9 R8 K12 ["Text"]
       70 SETTABLEKS                       R1 R8 K0 ["TextXAlignment"]
       72 SETTABLEKS                       R2 R8 K4 ["TextYAlignment"]
       74 LOADN                            R9 1
       75 SETTABLEKS                       R9 R8 K13 ["BackgroundTransparency"]
       77 GETTABLEKS                       R9 R0 K18 ["Color3"]
       79 JUMPIF                           R9 ; [+3]
       80 GETUPVAL                         R9 4
       81 GETTABLEKS                       R9 R9 K19 ["GRID_LABEL_COLOR3"]
       83 SETTABLEKS                       R9 R8 K14 ["TextColor3"]
       85 GETTABLEKS                       R9 R0 K20 ["FontSize"]
       87 JUMPIF                           R9 ; [+3]
       88 GETUPVAL                         R9 4
       89 GETTABLEKS                       R9 R9 K21 ["GRID_LABEL_FONT_SIZE"]
       91 SETTABLEKS                       R9 R8 K15 ["TextSize"]
       93 GETTABLEKS                       R9 R0 K16 ["ZIndex"]
       95 SETTABLEKS                       R9 R8 K16 ["ZIndex"]
       97 GETTABLEKS                       R9 R0 K22 ["children"]
       99 CALL                             R6 3 -1
      100 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["StyleUtil"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Util"]
       30 GETTABLEKS                       R6 R6 K11 ["useViewportBinding"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R5 K11 ["useViewportBinding"]
       35 GETTABLEKS                       R7 R5 K12 ["useViewportVisibility"]
       37 DUPCLOSURE                       R8 K13 [PROTO_0]
       38 DUPCLOSURE                       R9 K14 [PROTO_4]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R3
       44 SETGLOBAL                        R9 K15 ["Label"]
       46 GETGLOBAL                        R9 K15 ["Label"]
       48 RETURN                           R9 1
