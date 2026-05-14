PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 LOADN                            R1 255
        3 LOADN                            R2 255
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K2 [Vector2.new]
        7 LOADN                            R2 255
        8 LOADN                            R3 255
        9 CALL                             R1 2 1
       10 GETIMPORT                        R2 K5 [UDim2.fromOffset]
       12 LOADN                            R3 0
       13 LOADN                            R4 0
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["Orientation"]
       18 JUMPIFNOTEQKS                    R3 K7 ["Vertical"] ; [+53]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K8 ["Position"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K9 ["PlotRect"]
       26 GETTABLEKS                       R6 R6 K10 ["Min"]
       28 GETTABLEKS                       R6 R6 K11 ["X"]
       30 SUB                              R4 R5 R6
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K9 ["PlotRect"]
       34 GETTABLEKS                       R5 R5 K12 ["Width"]
       36 DIV                              R3 R4 R5
       37 LOADN                            R4 0
       38 JUMPIFLT                         R3 R4 ; [+4]
       40 LOADN                            R4 1
       41 JUMPIFNOTLT                      R4 R3 ; [+3]
       43 LOADNIL                          R4
       44 RETURN                           R4 1
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K13 ["PlotAbsoluteSize"]
       48 GETIMPORT                        R5 K2 [Vector2.new]
       50 MOVE                             R6 R3
       51 LOADN                            R7 0
       52 CALL                             R5 2 1
       53 MUL                              R0 R4 R5
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K13 ["PlotAbsoluteSize"]
       57 GETIMPORT                        R5 K2 [Vector2.new]
       59 MOVE                             R6 R3
       60 LOADN                            R7 1
       61 CALL                             R5 2 1
       62 MUL                              R1 R4 R5
       63 GETIMPORT                        R4 K5 [UDim2.fromOffset]
       65 LOADN                            R5 2
       66 SUB                              R6 R1 R0
       67 GETTABLEKS                       R6 R6 K14 ["Magnitude"]
       69 CALL                             R4 2 1
       70 MOVE                             R2 R4
       71 JUMP                             ; [+57]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K6 ["Orientation"]
       75 JUMPIFNOTEQKS                    R3 K15 ["Horizontal"] ; [+53]
       77 GETUPVAL                         R6 0
       78 GETTABLEKS                       R6 R6 K8 ["Position"]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K9 ["PlotRect"]
       83 GETTABLEKS                       R7 R7 K10 ["Min"]
       85 GETTABLEKS                       R7 R7 K17 ["Y"]
       87 SUB                              R5 R6 R7
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R6 R6 K9 ["PlotRect"]
       91 GETTABLEKS                       R6 R6 K18 ["Height"]
       93 DIV                              R4 R5 R6
       94 SUBRK                            R3 R16 K4 ["fromOffset"]
       95 LOADN                            R4 0
       96 JUMPIFLT                         R3 R4 ; [+4]
       98 LOADN                            R4 1
       99 JUMPIFNOTLT                      R4 R3 ; [+3]
      101 LOADNIL                          R4
      102 RETURN                           R4 1
      103 GETUPVAL                         R4 0
      104 GETTABLEKS                       R4 R4 K13 ["PlotAbsoluteSize"]
      106 GETIMPORT                        R5 K2 [Vector2.new]
      108 LOADN                            R6 0
      109 MOVE                             R7 R3
      110 CALL                             R5 2 1
      111 MUL                              R0 R4 R5
      112 GETUPVAL                         R4 0
      113 GETTABLEKS                       R4 R4 K13 ["PlotAbsoluteSize"]
      115 GETIMPORT                        R5 K2 [Vector2.new]
      117 LOADN                            R6 1
      118 MOVE                             R7 R3
      119 CALL                             R5 2 1
      120 MUL                              R1 R4 R5
      121 GETIMPORT                        R4 K5 [UDim2.fromOffset]
      123 SUB                              R5 R1 R0
      124 GETTABLEKS                       R5 R5 K14 ["Magnitude"]
      126 LOADN                            R6 2
      127 CALL                             R4 2 1
      128 MOVE                             R2 R4
      129 ADD                              R4 R0 R1
      130 DIVK                             R3 R4 K19 [2]
      131 GETIMPORT                        R4 K5 [UDim2.fromOffset]
      133 GETTABLEKS                       R6 R3 K11 ["X"]
      135 GETUPVAL                         R7 0
      136 GETTABLEKS                       R7 R7 K20 ["PlotFramePadding"]
      138 ADD                              R5 R6 R7
      139 GETTABLEKS                       R7 R3 K17 ["Y"]
      141 GETUPVAL                         R8 0
      142 GETTABLEKS                       R8 R8 K20 ["PlotFramePadding"]
      144 ADD                              R6 R7 R8
      145 CALL                             R4 2 1
      146 DUPTABLE                         R5 K22 [{"Position", "Size"}]
      147 SETTABLEKS                       R4 R5 K8 ["Position"]
      149 SETTABLEKS                       R2 R5 K21 ["Size"]
      151 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [UDim2.fromOffset]
        2 LOADN                            R1 0
        3 LOADN                            R2 0
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K6 [Enum.TextXAlignment.Center]
        7 GETIMPORT                        R2 K8 [Enum.TextYAlignment.Center]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K9 ["Orientation"]
       12 JUMPIFNOTEQKS                    R3 K10 ["Vertical"] ; [+12]
       14 GETIMPORT                        R3 K12 [UDim2.new]
       16 LOADK                            R4 K13 [0.5]
       17 LOADN                            R5 0
       18 LOADN                            R6 1
       19 LOADN                            R7 5
       20 CALL                             R3 4 1
       21 MOVE                             R0 R3
       22 GETIMPORT                        R2 K15 [Enum.TextYAlignment.Top]
       24 JUMP                             ; [+15]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K9 ["Orientation"]
       28 JUMPIFNOTEQKS                    R3 K16 ["Horizontal"] ; [+11]
       30 GETIMPORT                        R3 K12 [UDim2.new]
       32 LOADN                            R4 0
       33 LOADN                            R5 251
       34 LOADK                            R6 K13 [0.5]
       35 LOADN                            R7 0
       36 CALL                             R3 4 1
       37 MOVE                             R0 R3
       38 GETIMPORT                        R1 K18 [Enum.TextXAlignment.Right]
       40 DUPTABLE                         R3 K22 [{"Position", "XAlignment", "YAlignment"}]
       41 SETTABLEKS                       R0 R3 K19 ["Position"]
       43 SETTABLEKS                       R1 R3 K20 ["XAlignment"]
       45 SETTABLEKS                       R2 R3 K21 ["YAlignment"]
       47 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InnerAlpha"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [0.6]
        5 RETURN                           R0 1
        6 LOADK                            R2 K3 [0.4]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["InnerAlpha"]
       10 MUL                              R1 R2 R3
       11 SUBRK                            R0 R2 K1 [0.6]
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R3 0 1
        5 MOVE                             R4 R0
        6 SETLIST                          R3 R4 1 [1]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R0 K0 ["Orientation"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 0
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R5 0 1
       24 GETTABLEKS                       R6 R0 K1 ["InnerAlpha"]
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 1
       29 JUMPIF                           R1 ; [+2]
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 NEWTABLE                         R4 1 0
       34 GETTABLEKS                       R5 R0 K1 ["InnerAlpha"]
       36 JUMPIF                           R5 ; [+48]
       37 GETIMPORT                        R5 K4 [string.format]
       39 GETTABLEKS                       R8 R0 K6 ["Position"]
       41 MODK                             R7 R8 K5 [1]
       42 JUMPIFNOTEQKN                    R7 K7 [0] ; [+3]
       44 LOADK                            R6 K8 ["%.0f"]
       45 JUMP                             ; [+1]
       46 LOADK                            R6 K9 ["%.1f"]
       47 GETTABLEKS                       R7 R0 K6 ["Position"]
       49 CALL                             R5 2 1
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K10 ["createElement"]
       53 LOADK                            R7 K11 ["TextLabel"]
       54 NEWTABLE                         R8 8 0
       56 GETTABLEKS                       R9 R2 K6 ["Position"]
       58 SETTABLEKS                       R9 R8 K6 ["Position"]
       60 GETIMPORT                        R9 K14 [UDim2.fromOffset]
       62 LOADN                            R10 0
       63 LOADN                            R11 0
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K15 ["Size"]
       67 SETTABLEKS                       R5 R8 K16 ["Text"]
       69 GETTABLEKS                       R9 R2 K17 ["XAlignment"]
       71 SETTABLEKS                       R9 R8 K18 ["TextXAlignment"]
       73 GETTABLEKS                       R9 R2 K19 ["YAlignment"]
       75 SETTABLEKS                       R9 R8 K20 ["TextYAlignment"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K21 ["Tag"]
       80 LOADK                            R10 K22 ["GridLabel"]
       81 SETTABLE                         R10 R8 R9
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R4 K23 ["Label"]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K10 ["createElement"]
       88 LOADK                            R6 K24 ["Frame"]
       89 NEWTABLE                         R7 8 0
       91 GETIMPORT                        R8 K27 [Vector2.new]
       93 LOADK                            R9 K28 [0.5]
       94 LOADK                            R10 K28 [0.5]
       95 CALL                             R8 2 1
       96 SETTABLEKS                       R8 R7 K29 ["AnchorPoint"]
       98 GETTABLEKS                       R8 R1 K6 ["Position"]
      100 SETTABLEKS                       R8 R7 K6 ["Position"]
      102 GETTABLEKS                       R8 R1 K15 ["Size"]
      104 SETTABLEKS                       R8 R7 K15 ["Size"]
      106 SETTABLEKS                       R3 R7 K30 ["BackgroundTransparency"]
      108 GETUPVAL                         R8 1
      109 GETTABLEKS                       R8 R8 K21 ["Tag"]
      111 LOADK                            R9 K31 ["GridLine"]
      112 SETTABLE                         R9 R7 R8
      113 MOVE                             R8 R4
      114 CALL                             R5 3 -1
      115 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useMemo"]
       16 DUPCLOSURE                       R3 K9 [PROTO_3]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 RETURN                           R3 1
