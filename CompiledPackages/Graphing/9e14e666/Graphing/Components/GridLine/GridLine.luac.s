PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Orientation"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Vertical"] ; [+22]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["plotToView"]
        9 GETIMPORT                        R2 K5 [Vector2.new]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K6 ["Value"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K7 ["getViewportRect"]
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R4 R4 K8 ["Min"]
       20 GETTABLEKS                       R4 R4 K9 ["Y"]
       22 CALL                             R2 2 -1
       23 CALL                             R1 -1 1
       24 GETTABLEKS                       R0 R1 K10 ["X"]
       26 JUMP                             ; [+42]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["Orientation"]
       30 JUMPIFNOTEQKS                    R1 K11 ["Horizontal"] ; [+22]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K2 ["plotToView"]
       35 GETIMPORT                        R2 K5 [Vector2.new]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K7 ["getViewportRect"]
       40 CALL                             R3 0 1
       41 GETTABLEKS                       R3 R3 K8 ["Min"]
       43 GETTABLEKS                       R3 R3 K10 ["X"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K6 ["Value"]
       48 CALL                             R2 2 -1
       49 CALL                             R1 -1 1
       50 GETTABLEKS                       R0 R1 K9 ["Y"]
       52 JUMP                             ; [+16]
       53 LOADB                            R2 0
       54 LOADK                            R4 K12 ["Invalid orientation %*"]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K0 ["Orientation"]
       58 NAMECALL                         R4 R4 K13 ["format"]
       60 CALL                             R4 2 1
       61 MOVE                             R3 R4
       62 FASTCALL2                        ASSERT R2 R3 ; [+3]
       64 GETIMPORT                        R1 K15 [assert]
       66 CALL                             R1 2 0
       67 LOADNIL                          R1
       68 RETURN                           R1 1
       69 LOADN                            R1 0
       70 JUMPIFLT                         R0 R1 ; [+4]
       72 LOADN                            R1 1
       73 JUMPIFNOTLT                      R1 R0 ; [+3]
       75 LOADNIL                          R1
       76 RETURN                           R1 1
       77 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["Color3"]
        7 JUMPIF                           R2 ; [+3]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["GRID_LINE_COLOR3"]
       11 GETTABLEKS                       R3 R0 K3 ["Transparency"]
       13 JUMPIF                           R3 ; [+3]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["GRID_LINE_TRANSPARENCY"]
       17 GETTABLEKS                       R4 R0 K5 ["Thickness"]
       19 JUMPIF                           R4 ; [+3]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K6 ["GRID_LINE_THICKNESS"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R0
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 1
       35 JUMPIFNOTEQKNIL                  R5 ; [+3]
       37 LOADNIL                          R6
       38 RETURN                           R6 1
       39 GETTABLEKS                       R7 R0 K8 ["Orientation"]
       41 JUMPIFNOTEQKS                    R7 K9 ["Vertical"] ; [+7]
       43 GETIMPORT                        R6 K12 [UDim2.fromScale]
       45 MOVE                             R7 R5
       46 LOADK                            R8 K13 [0.5]
       47 CALL                             R6 2 1
       48 JUMP                             ; [+5]
       49 GETIMPORT                        R6 K12 [UDim2.fromScale]
       51 LOADK                            R7 K13 [0.5]
       52 MOVE                             R8 R5
       53 CALL                             R6 2 1
       54 GETTABLEKS                       R8 R0 K8 ["Orientation"]
       56 JUMPIFNOTEQKS                    R8 K9 ["Vertical"] ; [+9]
       58 GETIMPORT                        R7 K15 [UDim2.new]
       60 LOADN                            R8 0
       61 MOVE                             R9 R4
       62 LOADN                            R10 1
       63 LOADN                            R11 0
       64 CALL                             R7 4 1
       65 JUMP                             ; [+7]
       66 GETIMPORT                        R7 K15 [UDim2.new]
       68 LOADN                            R8 1
       69 LOADN                            R9 0
       70 LOADN                            R10 0
       71 MOVE                             R11 R4
       72 CALL                             R7 4 1
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K16 ["createElement"]
       76 LOADK                            R9 K17 ["Frame"]
       77 DUPTABLE                         R10 K26 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"], ["ZIndex"]}]
       78 GETIMPORT                        R11 K28 [Vector2.new]
       80 LOADK                            R12 K13 [0.5]
       81 LOADK                            R13 K13 [0.5]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K18 ["AnchorPoint"]
       85 SETTABLEKS                       R6 R10 K19 ["Position"]
       87 SETTABLEKS                       R7 R10 K20 ["Size"]
       89 SETTABLEKS                       R2 R10 K23 ["BackgroundColor3"]
       91 SETTABLEKS                       R3 R10 K24 ["BackgroundTransparency"]
       93 GETTABLEKS                       R11 R0 K25 ["ZIndex"]
       95 SETTABLEKS                       R11 R10 K25 ["ZIndex"]
       97 GETTABLEKS                       R11 R0 K29 ["children"]
       99 CALL                             R8 3 -1
      100 RETURN                           R8 -1

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
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 SETGLOBAL                        R6 K13 ["GridLine"]
       37 GETGLOBAL                        R6 K13 ["GridLine"]
       39 RETURN                           R6 1
