PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["Position"]
        5 GETTABLEKS                       R1 R1 K4 ["X"]
        7 GETTABLEKS                       R1 R1 K5 ["Offset"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Position"]
       12 GETTABLEKS                       R3 R3 K6 ["Y"]
       14 GETTABLEKS                       R3 R3 K5 ["Offset"]
       16 GETUPVAL                         R4 1
       17 SUB                              R2 R3 R4
       18 CALL                             R0 2 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["AbsoluteSize"]
       22 GETTABLEKS                       R2 R2 K4 ["X"]
       24 GETUPVAL                         R3 2
       25 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       27 GETIMPORT                        R1 K10 [math.max]
       29 CALL                             R1 2 1
       30 LOADN                            R3 140
       31 GETTABLEKS                       R7 R0 K4 ["X"]
       33 FASTCALL1                        MATH_ABS R7 ; [+2]
       34 GETIMPORT                        R6 K13 [math.abs]
       36 CALL                             R6 1 1
       37 MULK                             R5 R6 K11 [2]
       38 ADD                              R4 R1 R5
       39 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       41 GETIMPORT                        R2 K10 [math.max]
       43 CALL                             R2 2 1
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K7 ["AbsoluteSize"]
       47 GETTABLEKS                       R4 R4 K6 ["Y"]
       49 FASTCALL2K                       MATH_MIN R4 K14 ; [+4]
       51 LOADK                            R5 K14 [120]
       52 GETIMPORT                        R3 K16 [math.min]
       54 CALL                             R3 2 1
       55 LOADN                            R5 82
       56 GETUPVAL                         R7 2
       57 ADDK                             R10 R3 K17 [3]
       58 GETTABLEKS                       R12 R0 K6 ["Y"]
       60 FASTCALL1                        MATH_ABS R12 ; [+2]
       61 GETIMPORT                        R11 K13 [math.abs]
       63 CALL                             R11 1 1
       64 ADD                              R9 R10 R11
       65 MULK                             R8 R9 K11 [2]
       66 ADD                              R6 R7 R8
       67 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       69 GETIMPORT                        R4 K10 [math.max]
       71 CALL                             R4 2 1
       72 GETIMPORT                        R5 K20 [UDim2.fromOffset]
       74 MOVE                             R6 R2
       75 MOVE                             R7 R4
       76 CALL                             R5 2 1
       77 GETUPVAL                         R6 3
       78 GETTABLEKS                       R6 R6 K21 ["Size"]
       80 JUMPIFEQ                         R6 R5 ; [+4]
       82 GETUPVAL                         R6 3
       83 SETTABLEKS                       R5 R6 K21 ["Size"]
       85 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["WorldPosition"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.new]
        3 LOADK                            R3 K3 [0.5]
        4 GETTABLEKS                       R4 R0 K4 ["X"]
        6 LOADK                            R5 K3 [0.5]
        7 GETTABLEKS                       R6 R0 K5 ["Y"]
        9 CALL                             R2 4 1
       10 SETTABLEKS                       R2 R1 K6 ["Position"]
       12 GETUPVAL                         R1 1
       13 GETIMPORT                        R2 K2 [UDim2.new]
       15 LOADK                            R3 K3 [0.5]
       16 GETTABLEKS                       R4 R0 K4 ["X"]
       18 LOADK                            R5 K3 [0.5]
       19 GETTABLEKS                       R7 R0 K5 ["Y"]
       21 GETUPVAL                         R8 2
       22 ADD                              R6 R7 R8
       23 CALL                             R2 4 1
       24 SETTABLEKS                       R2 R1 K6 ["Position"]
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Attachment"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["BillboardAnchor"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 SETTABLEKS                       R0 R2 K6 ["Parent"]
        9 SETTABLEKS                       R1 R2 K7 ["WorldPosition"]
       11 GETIMPORT                        R3 K2 [Instance.new]
       13 LOADK                            R4 K8 ["BillboardGui"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K11 [UDim2.fromOffset]
       17 LOADN                            R5 140
       18 LOADN                            R6 82
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K12 ["Size"]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K13 ["AlwaysOnTop"]
       25 LOADB                            R4 0
       26 SETTABLEKS                       R4 R3 K14 ["Active"]
       28 SETTABLEKS                       R2 R3 K15 ["Adornee"]
       30 LOADK                            R4 K16 [{0, 0, 0}]
       31 SETTABLEKS                       R4 R3 K17 ["StudsOffsetWorldSpace"]
       33 SETTABLEKS                       R2 R3 K6 ["Parent"]
       35 GETIMPORT                        R4 K2 [Instance.new]
       37 LOADK                            R5 K18 ["Frame"]
       38 CALL                             R4 1 1
       39 LOADB                            R5 1
       40 SETTABLEKS                       R5 R4 K14 ["Active"]
       42 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       44 GETUPVAL                         R6 0
       45 GETUPVAL                         R7 0
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K12 ["Size"]
       49 GETIMPORT                        R5 K20 [Vector2.new]
       51 LOADK                            R6 K21 [0.5]
       52 LOADK                            R7 K21 [0.5]
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K22 ["AnchorPoint"]
       56 GETIMPORT                        R5 K24 [UDim2.fromScale]
       58 LOADK                            R6 K21 [0.5]
       59 LOADK                            R7 K21 [0.5]
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K25 ["Position"]
       63 LOADN                            R5 1
       64 SETTABLEKS                       R5 R4 K26 ["BackgroundTransparency"]
       66 LOADB                            R5 0
       67 SETTABLEKS                       R5 R4 K27 ["ClipsDescendants"]
       69 LOADK                            R5 K28 ["Icon"]
       70 SETTABLEKS                       R5 R4 K5 ["Name"]
       72 SETTABLEKS                       R3 R4 K6 ["Parent"]
       74 GETIMPORT                        R5 K2 [Instance.new]
       76 LOADK                            R6 K18 ["Frame"]
       77 CALL                             R5 1 1
       78 LOADK                            R6 K29 ["Names"]
       79 SETTABLEKS                       R6 R5 K5 ["Name"]
       81 GETIMPORT                        R6 K20 [Vector2.new]
       83 LOADK                            R7 K21 [0.5]
       84 LOADN                            R8 0
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R5 K22 ["AnchorPoint"]
       88 GETIMPORT                        R6 K30 [UDim2.new]
       90 LOADK                            R7 K21 [0.5]
       91 LOADN                            R8 0
       92 LOADK                            R9 K21 [0.5]
       93 GETUPVAL                         R10 1
       94 CALL                             R6 4 1
       95 SETTABLEKS                       R6 R5 K25 ["Position"]
       97 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       99 LOADN                            R7 0
      100 LOADN                            R8 0
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K12 ["Size"]
      104 GETIMPORT                        R6 K34 [Enum.AutomaticSize.XY]
      106 SETTABLEKS                       R6 R5 K32 ["AutomaticSize"]
      108 LOADN                            R6 1
      109 SETTABLEKS                       R6 R5 K26 ["BackgroundTransparency"]
      111 LOADN                            R6 0
      112 SETTABLEKS                       R6 R5 K35 ["BorderSizePixel"]
      114 LOADB                            R6 1
      115 SETTABLEKS                       R6 R5 K14 ["Active"]
      117 SETTABLEKS                       R3 R5 K6 ["Parent"]
      119 NEWCLOSURE                       R6 P0
      120 CAPTURE                          VAL R5
      121 CAPTURE                          UPVAL U1
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          VAL R3
      124 LOADK                            R9 K36 ["AbsoluteSize"]
      125 NAMECALL                         R7 R5 K37 ["GetPropertyChangedSignal"]
      127 CALL                             R7 2 1
      128 MOVE                             R9 R6
      129 NAMECALL                         R7 R7 K38 ["Connect"]
      131 CALL                             R7 2 0
      132 LOADK                            R9 K25 ["Position"]
      133 NAMECALL                         R7 R5 K37 ["GetPropertyChangedSignal"]
      135 CALL                             R7 2 1
      136 MOVE                             R9 R6
      137 NAMECALL                         R7 R7 K38 ["Connect"]
      139 CALL                             R7 2 0
      140 MOVE                             R7 R6
      141 CALL                             R7 0 0
      142 NEWCLOSURE                       R7 P1
      143 CAPTURE                          VAL R2
      144 NEWCLOSURE                       R8 P2
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R5
      147 CAPTURE                          UPVAL U1
      148 NEWCLOSURE                       R9 P3
      149 CAPTURE                          VAL R2
      150 DUPTABLE                         R10 K46 [{"billboard", "iconHost", "namesHost", "setWorldPosition", "resize", "setOffset", "destroy"}]
      151 SETTABLEKS                       R3 R10 K39 ["billboard"]
      153 SETTABLEKS                       R4 R10 K40 ["iconHost"]
      155 SETTABLEKS                       R5 R10 K41 ["namesHost"]
      157 SETTABLEKS                       R7 R10 K42 ["setWorldPosition"]
      159 SETTABLEKS                       R6 R10 K43 ["resize"]
      161 SETTABLEKS                       R8 R10 K44 ["setOffset"]
      163 SETTABLEKS                       R9 R10 K45 ["destroy"]
      165 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Utility"]
       16 GETTABLEKS                       R2 R2 K9 ["getTokens"]
       18 GETTABLEKS                       R3 R1 K10 ["Enums"]
       20 GETTABLEKS                       R3 R3 K11 ["ColorMode"]
       22 GETTABLEKS                       R3 R3 K12 ["Dark"]
       24 GETTABLEKS                       R4 R1 K10 ["Enums"]
       26 GETTABLEKS                       R4 R4 K13 ["Device"]
       28 GETTABLEKS                       R4 R4 K14 ["Desktop"]
       30 CALL                             R2 2 1
       31 GETTABLEKS                       R4 R2 K15 ["Size"]
       33 GETTABLEKS                       R4 R4 K16 ["Size_500"]
       35 LOADN                            R6 2
       36 GETTABLEKS                       R7 R2 K15 ["Size"]
       38 GETTABLEKS                       R7 R7 K17 ["Size_150"]
       40 MUL                              R5 R6 R7
       41 ADD                              R3 R4 R5
       42 DIVK                             R5 R3 K19 [2]
       43 ADDK                             R4 R5 K18 [3]
       44 DUPCLOSURE                       R5 K20 [PROTO_4]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 DUPTABLE                         R6 K26 [{["create"], ["ICON_SIZE"], ["ICON_HIT_BOTTOM_PADDING"] = 3, ["ROWS_MAX_HEIGHT"] = 120}]
       48 SETTABLEKS                       R5 R6 K21 ["create"]
       50 SETTABLEKS                       R3 R6 K22 ["ICON_SIZE"]
       52 RETURN                           R6 1
