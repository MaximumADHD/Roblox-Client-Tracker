PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 LOADN                            R1 -1
        3 LOADN                            R2 -1
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K2 [Vector2.new]
        7 LOADN                            R2 -1
        8 LOADN                            R3 -1
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["Orientation"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Vertical"] ; [+24]
       15 GETIMPORT                        R2 K2 [Vector2.new]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["Position"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["getYMin"]
       23 CALL                             R4 0 -1
       24 CALL                             R2 -1 1
       25 MOVE                             R0 R2
       26 GETIMPORT                        R2 K2 [Vector2.new]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["Position"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K7 ["getYMax"]
       34 CALL                             R4 0 -1
       35 CALL                             R2 -1 1
       36 MOVE                             R1 R2
       37 JUMP                             ; [+27]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K3 ["Orientation"]
       41 JUMPIFNOTEQKS                    R2 K8 ["Horizontal"] ; [+23]
       43 GETIMPORT                        R2 K2 [Vector2.new]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K9 ["getXMin"]
       48 CALL                             R3 0 1
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K5 ["Position"]
       52 CALL                             R2 2 1
       53 MOVE                             R0 R2
       54 GETIMPORT                        R2 K2 [Vector2.new]
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R3 R3 K10 ["getXMax"]
       59 CALL                             R3 0 1
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K5 ["Position"]
       63 CALL                             R2 2 1
       64 MOVE                             R1 R2
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R2 R2 K11 ["plotToAbs"]
       68 MOVE                             R3 R0
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K12 ["PlotAbsoluteSize"]
       72 CALL                             R2 2 1
       73 MOVE                             R0 R2
       74 GETUPVAL                         R2 1
       75 GETTABLEKS                       R2 R2 K11 ["plotToAbs"]
       77 MOVE                             R3 R1
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K12 ["PlotAbsoluteSize"]
       81 CALL                             R2 2 1
       82 MOVE                             R1 R2
       83 ADD                              R3 R0 R1
       84 DIVK                             R2 R3 K13 [2]
       85 GETIMPORT                        R3 K16 [UDim2.fromOffset]
       87 GETTABLEKS                       R5 R2 K17 ["X"]
       89 GETUPVAL                         R6 0
       90 GETTABLEKS                       R6 R6 K18 ["PlotFramePadding"]
       92 ADD                              R4 R5 R6
       93 GETTABLEKS                       R6 R2 K19 ["Y"]
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R7 R7 K18 ["PlotFramePadding"]
       98 ADD                              R5 R6 R7
       99 CALL                             R3 2 1
      100 GETIMPORT                        R4 K16 [UDim2.fromOffset]
      102 LOADN                            R5 0
      103 LOADN                            R6 0
      104 CALL                             R4 2 1
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K3 ["Orientation"]
      108 JUMPIFNOTEQKS                    R5 K4 ["Vertical"] ; [+10]
      110 GETIMPORT                        R5 K16 [UDim2.fromOffset]
      112 LOADN                            R6 2
      113 SUB                              R7 R1 R0
      114 GETTABLEKS                       R7 R7 K20 ["Magnitude"]
      116 CALL                             R5 2 1
      117 MOVE                             R4 R5
      118 JUMP                             ; [+13]
      119 GETUPVAL                         R5 0
      120 GETTABLEKS                       R5 R5 K3 ["Orientation"]
      122 JUMPIFNOTEQKS                    R5 K8 ["Horizontal"] ; [+9]
      124 GETIMPORT                        R5 K16 [UDim2.fromOffset]
      126 SUB                              R6 R1 R0
      127 GETTABLEKS                       R6 R6 K20 ["Magnitude"]
      129 LOADN                            R7 2
      130 CALL                             R5 2 1
      131 MOVE                             R4 R5
      132 DUPTABLE                         R5 K22 [{"Position", "Size"}]
      133 SETTABLEKS                       R3 R5 K5 ["Position"]
      135 SETTABLEKS                       R4 R5 K21 ["Size"]
      137 RETURN                           R5 1

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
       33 LOADN                            R5 -5
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
        1 GETTABLEKS                       R0 R0 K0 ["IsMinor"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 [0.75]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 [0.5]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R0 K0 ["Orientation"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 0
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K1 ["IsMinor"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K2 ["createElement"]
       33 LOADK                            R5 K3 ["Frame"]
       34 NEWTABLE                         R6 8 0
       36 GETIMPORT                        R7 K6 [Vector2.new]
       38 LOADK                            R8 K7 [0.5]
       39 LOADK                            R9 K7 [0.5]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K8 ["AnchorPoint"]
       43 GETTABLEKS                       R7 R1 K9 ["Position"]
       45 SETTABLEKS                       R7 R6 K9 ["Position"]
       47 GETTABLEKS                       R7 R1 K10 ["Size"]
       49 SETTABLEKS                       R7 R6 K10 ["Size"]
       51 SETTABLEKS                       R3 R6 K11 ["BackgroundTransparency"]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R7 R7 K12 ["Tag"]
       56 LOADK                            R8 K13 ["GridLine"]
       57 SETTABLE                         R8 R6 R7
       58 DUPTABLE                         R7 K15 [{"Label"}]
       59 GETTABLEKS                       R9 R0 K1 ["IsMinor"]
       61 NOT                              R8 R9
       62 JUMPIFNOT                        R8 ; [+39]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K2 ["createElement"]
       66 LOADK                            R9 K16 ["TextLabel"]
       67 NEWTABLE                         R10 8 0
       69 GETTABLEKS                       R11 R2 K9 ["Position"]
       71 SETTABLEKS                       R11 R10 K9 ["Position"]
       73 GETIMPORT                        R11 K19 [UDim2.fromOffset]
       75 LOADN                            R12 0
       76 LOADN                            R13 0
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K10 ["Size"]
       80 GETTABLEKS                       R12 R0 K9 ["Position"]
       82 FASTCALL1                        TOSTRING R12 ; [+2]
       83 GETIMPORT                        R11 K21 [tostring]
       85 CALL                             R11 1 1
       86 SETTABLEKS                       R11 R10 K22 ["Text"]
       88 GETTABLEKS                       R11 R2 K23 ["XAlignment"]
       90 SETTABLEKS                       R11 R10 K24 ["TextXAlignment"]
       92 GETTABLEKS                       R11 R2 K25 ["YAlignment"]
       94 SETTABLEKS                       R11 R10 K26 ["TextYAlignment"]
       96 GETUPVAL                         R11 2
       97 GETTABLEKS                       R11 R11 K12 ["Tag"]
       99 LOADK                            R12 K27 ["GridLabel"]
      100 SETTABLE                         R12 R10 R11
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K14 ["Label"]
      104 CALL                             R4 3 -1
      105 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useMemo"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Util"]
       22 GETTABLEKS                       R4 R4 K11 ["PlotUtil"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K12 [PROTO_3]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
