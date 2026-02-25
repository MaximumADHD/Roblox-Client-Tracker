PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mouseToPlot"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["PlotRef"]
        7 GETTABLEKS                       R3 R4 K2 ["current"]
        9 CALL                             R1 2 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["FilterHook"]
       14 GETTABLEKS                       R1 R2 K4 ["setFrequency"]
       16 GETTABLEKS                       R2 R0 K5 ["X"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 2
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K3 ["FilterHook"]
       24 GETTABLEKS                       R1 R2 K6 ["setGain"]
       26 GETTABLEKS                       R2 R0 K7 ["Y"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FilterHook"]
        3 GETTABLEKS                       R1 R2 K1 ["setFilterType"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getContextMenuItems"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 3
        7 GETUPVAL                         R3 4
        8 GETTABLEKS                       R2 R3 K1 ["Parent"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+25]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["log2"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["FilterHook"]
        8 GETTABLEKS                       R2 R3 K2 ["q"]
       10 CALL                             R1 1 1
       11 MULK                             R2 R0 K3 [0.3]
       12 ADD                              R1 R1 R2
       13 LOADN                            R3 2
       14 FASTCALL2                        MATH_POW R3 R1 ; [+4]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R2 K6 [math.pow]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K1 ["FilterHook"]
       23 GETTABLEKS                       R3 R4 K7 ["setQ"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Context"]
        4 GETTABLEKS                       R2 R3 K1 ["Consumer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["Localization"]
       10 GETTABLEKS                       R3 R4 K3 ["Key"]
       12 GETTABLE                         R2 R1 R3
       13 GETTABLEKS                       R5 R0 K4 ["FilterHook"]
       15 GETTABLEKS                       R4 R5 K5 ["bypass"]
       17 NOT                              R3 R4
       18 GETUPVAL                         R4 2
       19 LOADK                            R5 K6 [""]
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R6 R7 K7 ["hasGain"]
       24 GETTABLEKS                       R8 R0 K4 ["FilterHook"]
       26 GETTABLEKS                       R7 R8 K8 ["filterType"]
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R7 R8 K9 ["hasQ"]
       32 GETTABLEKS                       R9 R0 K4 ["FilterHook"]
       34 GETTABLEKS                       R8 R9 K8 ["filterType"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 4
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R5
       40 NEWTABLE                         R10 0 0
       42 CALL                             R8 2 1
       43 GETUPVAL                         R9 4
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R11 0 0
       48 CALL                             R9 2 1
       49 GETUPVAL                         R10 4
       50 NEWCLOSURE                       R11 P2
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R12 0 4
       56 GETTABLEKS                       R13 R0 K10 ["PlotRef"]
       58 GETTABLEKS                       R15 R0 K4 ["FilterHook"]
       60 GETTABLEKS                       R14 R15 K8 ["filterType"]
       62 GETTABLEKS                       R16 R0 K4 ["FilterHook"]
       64 GETTABLEKS                       R15 R16 K11 ["setGain"]
       66 GETTABLEKS                       R17 R0 K4 ["FilterHook"]
       68 GETTABLEKS                       R16 R17 K12 ["setFrequency"]
       70 SETLIST                          R12 R13 4 [1]
       72 CALL                             R10 2 1
       73 GETUPVAL                         R11 4
       74 NEWCLOSURE                       R12 P3
       75 CAPTURE                          VAL R0
       76 NEWTABLE                         R13 0 1
       78 GETTABLEKS                       R15 R0 K4 ["FilterHook"]
       80 GETTABLEKS                       R14 R15 K13 ["setFilterType"]
       82 SETLIST                          R13 R14 1 [1]
       84 CALL                             R11 2 1
       85 GETUPVAL                         R12 4
       86 NEWCLOSURE                       R13 P4
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R11
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          UPVAL U7
       92 NEWTABLE                         R14 0 0
       94 CALL                             R12 2 1
       95 GETUPVAL                         R13 4
       96 NEWCLOSURE                       R14 P5
       97 CAPTURE                          VAL R7
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          VAL R0
      100 NEWTABLE                         R15 0 3
      102 GETTABLEKS                       R17 R0 K4 ["FilterHook"]
      104 GETTABLEKS                       R16 R17 K8 ["filterType"]
      106 GETTABLEKS                       R18 R0 K4 ["FilterHook"]
      108 GETTABLEKS                       R17 R18 K14 ["q"]
      110 GETTABLEKS                       R19 R0 K4 ["FilterHook"]
      112 GETTABLEKS                       R18 R19 K15 ["setQ"]
      114 SETLIST                          R15 R16 3 [1]
      116 CALL                             R13 2 1
      117 LOADN                            R14 0
      118 JUMPIFNOT                        R6 ; [+4]
      119 GETTABLEKS                       R15 R0 K4 ["FilterHook"]
      121 GETTABLEKS                       R14 R15 K16 ["gain"]
      123 MOVE                             R15 R3
      124 JUMPIFNOT                        R15 ; [+67]
      125 GETUPVAL                         R16 8
      126 GETTABLEKS                       R15 R16 K17 ["createElement"]
      128 GETUPVAL                         R16 9
      129 DUPTABLE                         R17 K23 [{"Active", "LayoutOrder", "Position", "Size", "BackgroundTransparency"}]
      130 LOADB                            R18 1
      131 SETTABLEKS                       R18 R17 K18 ["Active"]
      133 LOADN                            R18 1
      134 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      136 GETIMPORT                        R18 K26 [UDim2.new]
      138 LOADN                            R19 0
      139 LOADN                            R20 0
      140 LOADN                            R21 0
      141 LOADN                            R22 0
      142 CALL                             R18 4 1
      143 SETTABLEKS                       R18 R17 K20 ["Position"]
      145 GETIMPORT                        R18 K26 [UDim2.new]
      147 LOADN                            R19 1
      148 LOADN                            R20 0
      149 LOADN                            R21 1
      150 LOADN                            R22 0
      151 CALL                             R18 4 1
      152 SETTABLEKS                       R18 R17 K21 ["Size"]
      154 LOADN                            R18 1
      155 SETTABLEKS                       R18 R17 K22 ["BackgroundTransparency"]
      157 DUPTABLE                         R18 K28 [{"Control"}]
      158 GETUPVAL                         R20 8
      159 GETTABLEKS                       R19 R20 K17 ["createElement"]
      161 GETUPVAL                         R20 10
      162 DUPTABLE                         R21 K36 [{"Position", "Label", "DragTarget", "OnDragStart", "OnMoved", "OnDragEnd", "OnRightClick", "OnScroll"}]
      163 GETIMPORT                        R22 K38 [Vector2.new]
      165 GETTABLEKS                       R24 R0 K4 ["FilterHook"]
      167 GETTABLEKS                       R23 R24 K39 ["frequency"]
      169 MOVE                             R24 R14
      170 CALL                             R22 2 1
      171 SETTABLEKS                       R22 R21 K20 ["Position"]
      173 LOADK                            R22 K40 ["F"]
      174 SETTABLEKS                       R22 R21 K29 ["Label"]
      176 SETTABLEKS                       R4 R21 K30 ["DragTarget"]
      178 SETTABLEKS                       R8 R21 K31 ["OnDragStart"]
      180 SETTABLEKS                       R10 R21 K32 ["OnMoved"]
      182 SETTABLEKS                       R9 R21 K33 ["OnDragEnd"]
      184 SETTABLEKS                       R12 R21 K34 ["OnRightClick"]
      186 SETTABLEKS                       R13 R21 K35 ["OnScroll"]
      188 CALL                             R19 2 1
      189 SETTABLEKS                       R19 R18 K27 ["Control"]
      191 CALL                             R15 3 1
      192 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useContext"]
       22 GETTABLEKS                       R5 R2 K11 ["useState"]
       24 GETIMPORT                        R6 K6 [require]
       26 GETTABLEKS                       R8 R1 K7 ["Packages"]
       28 GETTABLEKS                       R7 R8 K12 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       33 GETTABLEKS                       R9 R6 K14 ["UI"]
       35 GETTABLEKS                       R8 R9 K15 ["Pane"]
       37 GETTABLEKS                       R10 R6 K14 ["UI"]
       39 GETTABLEKS                       R9 R10 K16 ["showContextMenu"]
       41 GETIMPORT                        R10 K6 [require]
       43 GETTABLEKS                       R12 R1 K17 ["Src"]
       45 GETTABLEKS                       R11 R12 K18 ["Types"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K6 [require]
       50 GETTABLEKS                       R12 R0 K19 ["ControlPoint"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K6 [require]
       55 GETTABLEKS                       R15 R1 K17 ["Src"]
       57 GETTABLEKS                       R14 R15 K20 ["Util"]
       59 GETTABLEKS                       R13 R14 K21 ["FilterTypeUtil"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K6 [require]
       64 GETTABLEKS                       R16 R1 K17 ["Src"]
       66 GETTABLEKS                       R15 R16 K20 ["Util"]
       68 GETTABLEKS                       R14 R15 K22 ["PlotUtil"]
       70 CALL                             R13 1 1
       71 DUPCLOSURE                       R14 K23 [PROTO_6]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R11
       83 RETURN                           R14 1
