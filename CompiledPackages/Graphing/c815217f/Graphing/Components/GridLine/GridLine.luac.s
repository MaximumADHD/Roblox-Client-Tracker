PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["Orientation"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Vertical"] ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["plotToViewX"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["Position"]
       12 CALL                             R1 1 1
       13 MOVE                             R0 R1
       14 JUMP                             ; [+13]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K0 ["Orientation"]
       18 JUMPIFNOTEQKS                    R1 K4 ["Horizontal"] ; [+9]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K5 ["plotToViewY"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K3 ["Position"]
       26 CALL                             R1 1 1
       27 MOVE                             R0 R1
       28 LOADN                            R1 0
       29 JUMPIFLT                         R0 R1 ; [+4]
       31 LOADN                            R1 1
       32 JUMPIFNOTLT                      R1 R0 ; [+3]
       34 LOADNIL                          R1
       35 RETURN                           R1 1
       36 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OppositeAxisBounds"]
        3 JUMPIF                           R0 ; [+3]
        4 LOADN                            R0 0
        5 LOADN                            R1 1
        6 RETURN                           R0 2
        7 LOADN                            R0 0
        8 LOADN                            R1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K1 ["Orientation"]
       12 JUMPIFNOTEQKS                    R2 K2 ["Vertical"] ; [+22]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K3 ["plotToViewY"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       20 GETTABLEKS                       R3 R4 K4 ["Min"]
       22 CALL                             R2 1 1
       23 MOVE                             R0 R2
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K3 ["plotToViewY"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       30 GETTABLEKS                       R3 R4 K5 ["Max"]
       32 CALL                             R2 1 1
       33 MOVE                             R1 R2
       34 JUMP                             ; [+25]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K1 ["Orientation"]
       38 JUMPIFNOTEQKS                    R2 K6 ["Horizontal"] ; [+21]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K7 ["plotToViewX"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       46 GETTABLEKS                       R3 R4 K4 ["Min"]
       48 CALL                             R2 1 1
       49 MOVE                             R0 R2
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R2 R3 K7 ["plotToViewX"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K0 ["OppositeAxisBounds"]
       56 GETTABLEKS                       R3 R4 K5 ["Max"]
       58 CALL                             R2 1 1
       59 MOVE                             R1 R2
       60 LOADN                            R2 1
       61 JUMPIFLT                         R2 R0 ; [+4]
       63 LOADN                            R2 0
       64 JUMPIFNOTLT                      R1 R2 ; [+4]
       66 LOADNIL                          R2
       67 LOADNIL                          R3
       68 RETURN                           R2 2
       69 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 LOADB                            R3 1
        6 GETTABLEKS                       R4 R0 K1 ["Orientation"]
        8 JUMPIFEQKS                       R4 K2 ["Vertical"] ; [+7]
       10 GETTABLEKS                       R4 R0 K1 ["Orientation"]
       12 JUMPIFEQKS                       R4 K3 ["Horizontal"] ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 LOADK                            R5 K4 ["Invalid orientation %*"]
       17 GETTABLEKS                       R7 R0 K1 ["Orientation"]
       19 NAMECALL                         R5 R5 K5 ["format"]
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 FASTCALL2                        ASSERT R3 R4 ; [+3]
       25 GETIMPORT                        R2 K7 [assert]
       27 CALL                             R2 2 0
       28 GETTABLEKS                       R2 R0 K8 ["Color3"]
       30 JUMPIF                           R2 ; [+3]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R2 R3 K9 ["GRID_LINE_COLOR3"]
       34 GETTABLEKS                       R3 R0 K10 ["Transparency"]
       36 JUMPIF                           R3 ; [+3]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K11 ["GRID_LINE_TRANSPARENCY"]
       40 GETTABLEKS                       R4 R0 K12 ["Thickness"]
       42 JUMPIF                           R4 ; [+3]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R4 R5 K13 ["GRID_LINE_THICKNESS"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K14 ["useMemo"]
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 NEWTABLE                         R7 0 2
       54 GETTABLEKS                       R8 R0 K1 ["Orientation"]
       56 GETTABLEKS                       R9 R0 K15 ["Position"]
       58 SETLIST                          R7 R8 2 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R6 R7 K14 ["useMemo"]
       64 NEWCLOSURE                       R7 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R1
       67 NEWTABLE                         R8 0 2
       69 GETTABLEKS                       R9 R0 K1 ["Orientation"]
       71 GETTABLEKS                       R10 R0 K16 ["OppositeAxisBounds"]
       73 SETLIST                          R8 R9 2 [1]
       75 CALL                             R6 2 2
       76 JUMPIFEQKNIL                     R5 ; [+5]
       78 JUMPIFEQKNIL                     R6 ; [+3]
       80 JUMPIFNOTEQKNIL                  R7 ; [+3]
       82 LOADNIL                          R8
       83 RETURN                           R8 1
       84 GETTABLEKS                       R9 R0 K1 ["Orientation"]
       86 JUMPIFNOTEQKS                    R9 K2 ["Vertical"] ; [+8]
       88 GETIMPORT                        R8 K19 [UDim2.fromScale]
       90 MOVE                             R9 R5
       91 ADD                              R11 R6 R7
       92 DIVK                             R10 R11 K20 [2]
       93 CALL                             R8 2 1
       94 JUMP                             ; [+6]
       95 GETIMPORT                        R8 K19 [UDim2.fromScale]
       97 ADD                              R10 R6 R7
       98 DIVK                             R9 R10 K20 [2]
       99 MOVE                             R10 R5
      100 CALL                             R8 2 1
      101 GETTABLEKS                       R10 R0 K1 ["Orientation"]
      103 JUMPIFNOTEQKS                    R10 K2 ["Vertical"] ; [+9]
      105 GETIMPORT                        R9 K22 [UDim2.new]
      107 LOADN                            R10 0
      108 MOVE                             R11 R4
      109 SUB                              R12 R7 R6
      110 LOADN                            R13 0
      111 CALL                             R9 4 1
      112 JUMP                             ; [+7]
      113 GETIMPORT                        R9 K22 [UDim2.new]
      115 SUB                              R10 R7 R6
      116 LOADN                            R11 0
      117 LOADN                            R12 0
      118 MOVE                             R13 R4
      119 CALL                             R9 4 1
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R10 R11 K23 ["createElement"]
      123 LOADK                            R11 K24 ["Frame"]
      124 DUPTABLE                         R12 K31 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "ZIndex"}]
      125 GETIMPORT                        R13 K33 [Vector2.new]
      127 LOADK                            R14 K34 [0.5]
      128 LOADK                            R15 K34 [0.5]
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K25 ["AnchorPoint"]
      132 SETTABLEKS                       R8 R12 K15 ["Position"]
      134 SETTABLEKS                       R9 R12 K26 ["Size"]
      136 LOADN                            R13 0
      137 SETTABLEKS                       R13 R12 K27 ["BorderSizePixel"]
      139 SETTABLEKS                       R2 R12 K28 ["BackgroundColor3"]
      141 SETTABLEKS                       R3 R12 K29 ["BackgroundTransparency"]
      143 GETTABLEKS                       R13 R0 K30 ["ZIndex"]
      145 SETTABLEKS                       R13 R12 K30 ["ZIndex"]
      147 GETTABLEKS                       R13 R0 K35 ["children"]
      149 CALL                             R10 3 -1
      150 RETURN                           R10 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R6 K10 ["StyleUtil"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Types"]
       30 CALL                             R5 1 1
       31 DUPCLOSURE                       R6 K12 [PROTO_2]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 SETGLOBAL                        R6 K13 ["GridLine"]
       37 GETGLOBAL                        R6 K13 ["GridLine"]
       39 RETURN                           R6 1
