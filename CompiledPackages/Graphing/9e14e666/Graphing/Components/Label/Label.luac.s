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
        0 GETTABLEKS                       R2 R0 K0 ["Offset"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["Offset"]
        5 JUMP                             ; [+5]
        6 GETIMPORT                        R1 K3 [Vector2.new]
        8 LOADN                            R2 0
        9 LOADN                            R3 0
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R3 R0 K4 ["TextXAlignment"]
       13 JUMPIFNOT                        R3 ; [+3]
       14 GETTABLEKS                       R2 R0 K4 ["TextXAlignment"]
       16 JUMP                             ; [+2]
       17 GETIMPORT                        R2 K7 [Enum.TextXAlignment.Center]
       19 GETTABLEKS                       R4 R0 K8 ["TextYAlignment"]
       21 JUMPIFNOT                        R4 ; [+3]
       22 GETTABLEKS                       R3 R0 K8 ["TextYAlignment"]
       24 JUMP                             ; [+2]
       25 GETIMPORT                        R3 K9 [Enum.TextYAlignment.Center]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K10 ["useContext"]
       30 GETUPVAL                         R5 1
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K11 ["isPointInViewport"]
       34 GETTABLEKS                       R6 R0 K12 ["Position"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K13 ["plotToView"]
       39 GETTABLEKS                       R7 R0 K12 ["Position"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K14 ["useMemo"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 NEWTABLE                         R9 0 2
       51 GETTABLEKS                       R10 R0 K4 ["TextXAlignment"]
       53 GETTABLEKS                       R11 R0 K8 ["TextYAlignment"]
       55 SETLIST                          R9 R10 2 [1]
       57 CALL                             R7 2 1
       58 MOVE                             R8 R5
       59 JUMPIFNOT                        R8 ; [+51]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K15 ["createElement"]
       63 LOADK                            R9 K16 ["TextLabel"]
       64 DUPTABLE                         R10 K24 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextSize"], ["ZIndex"]}]
       65 SETTABLEKS                       R7 R10 K17 ["AnchorPoint"]
       67 GETIMPORT                        R11 K26 [UDim2.new]
       69 GETTABLEKS                       R12 R6 K27 ["X"]
       71 GETTABLEKS                       R13 R1 K27 ["X"]
       73 GETTABLEKS                       R14 R6 K28 ["Y"]
       75 GETTABLEKS                       R15 R1 K28 ["Y"]
       77 CALL                             R11 4 1
       78 SETTABLEKS                       R11 R10 K12 ["Position"]
       80 GETTABLEKS                       R11 R0 K18 ["Text"]
       82 SETTABLEKS                       R11 R10 K18 ["Text"]
       84 SETTABLEKS                       R2 R10 K4 ["TextXAlignment"]
       86 SETTABLEKS                       R3 R10 K8 ["TextYAlignment"]
       88 GETTABLEKS                       R11 R0 K29 ["Color3"]
       90 JUMPIF                           R11 ; [+3]
       91 GETUPVAL                         R11 3
       92 GETTABLEKS                       R11 R11 K30 ["GRID_LABEL_COLOR3"]
       94 SETTABLEKS                       R11 R10 K21 ["TextColor3"]
       96 GETTABLEKS                       R11 R0 K31 ["FontSize"]
       98 JUMPIF                           R11 ; [+3]
       99 GETUPVAL                         R11 3
      100 GETTABLEKS                       R11 R11 K32 ["GRID_LABEL_FONT_SIZE"]
      102 SETTABLEKS                       R11 R10 K22 ["TextSize"]
      104 GETTABLEKS                       R11 R0 K23 ["ZIndex"]
      106 SETTABLEKS                       R11 R10 K23 ["ZIndex"]
      108 GETTABLEKS                       R11 R0 K33 ["children"]
      110 CALL                             R8 3 1
      111 RETURN                           R8 1

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
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["StyleUtil"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Types"]
       30 CALL                             R5 1 1
       31 DUPCLOSURE                       R6 K12 [PROTO_0]
       32 DUPCLOSURE                       R7 K13 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R4
       37 SETGLOBAL                        R7 K14 ["Label"]
       39 GETGLOBAL                        R7 K14 ["Label"]
       41 RETURN                           R7 1
