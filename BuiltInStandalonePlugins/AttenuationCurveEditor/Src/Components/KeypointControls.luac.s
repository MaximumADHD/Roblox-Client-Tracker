PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["Keypoint"]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOTEQKS                    R2 K1 ["X"] ; [+21]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["Min"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["Max"]
       15 FASTCALL3                        MATH_CLAMP R0 R4 R5
       17 MOVE                             R3 R0
       18 GETIMPORT                        R2 K6 [math.clamp]
       20 CALL                             R2 3 1
       21 MOVE                             R0 R2
       22 GETIMPORT                        R2 K9 [Vector2.new]
       24 MOVE                             R3 R0
       25 GETTABLEKS                       R4 R1 K10 ["Y"]
       27 CALL                             R2 2 1
       28 MOVE                             R1 R2
       29 GETUPVAL                         R2 1
       30 JUMPIFNOTEQKS                    R2 K10 ["Y"] ; [+21]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K2 ["Min"]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K3 ["Max"]
       38 FASTCALL3                        MATH_CLAMP R0 R4 R5
       40 MOVE                             R3 R0
       41 GETIMPORT                        R2 K6 [math.clamp]
       43 CALL                             R2 3 1
       44 MOVE                             R0 R2
       45 GETIMPORT                        R2 K9 [Vector2.new]
       47 GETTABLEKS                       R3 R1 K1 ["X"]
       49 MOVE                             R4 R0
       50 CALL                             R2 2 1
       51 MOVE                             R1 R2
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K11 ["OnEdit"]
       55 JUMPIFNOT                        R2 ; [+5]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K11 ["OnEdit"]
       59 MOVE                             R3 R1
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Keypoint"]
        3 JUMPIF                           R1 ; [+2]
        4 DUPCLOSURE                       R1 K1 [PROTO_0]
        5 RETURN                           R1 1
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Context"]
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Localization"]
       10 GETTABLEKS                       R3 R3 K3 ["Key"]
       12 GETTABLE                         R2 R1 R3
       13 GETUPVAL                         R3 2
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 NEWTABLE                         R5 0 2
       20 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       22 GETTABLEKS                       R7 R0 K5 ["OnEdit"]
       24 SETLIST                          R5 R6 2 [1]
       26 CALL                             R3 2 1
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       31 JUMPIFNOT                        R6 ; [+8]
       32 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       34 GETTABLEKS                       R4 R6 K6 ["X"]
       36 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       38 GETTABLEKS                       R5 R6 K7 ["Y"]
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K8 ["createElement"]
       43 GETUPVAL                         R7 6
       44 NEWTABLE                         R8 4 0
       46 LOADN                            R9 2
       47 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       49 GETIMPORT                        R9 K12 [UDim2.fromScale]
       51 LOADN                            R10 1
       52 LOADN                            R11 0
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K13 ["Size"]
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R9 R9 K14 ["Tag"]
       59 LOADK                            R10 K15 ["X-Center X-Middle X-RowM X-Fit"]
       60 SETTABLE                         R10 R8 R9
       61 DUPTABLE                         R9 K18 [{"SequenceButtonsContainer", "CommitButtonsContainer"}]
       62 GETUPVAL                         R10 5
       63 GETTABLEKS                       R10 R10 K8 ["createElement"]
       65 GETUPVAL                         R11 6
       66 NEWTABLE                         R12 2 0
       68 LOADN                            R13 1
       69 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       71 GETUPVAL                         R13 5
       72 GETTABLEKS                       R13 R13 K14 ["Tag"]
       74 LOADK                            R14 K19 ["X-Left X-Pad X-RowM X-Fit"]
       75 SETTABLE                         R14 R12 R13
       76 DUPTABLE                         R13 K20 [{"X", "Y"}]
       77 GETUPVAL                         R14 5
       78 GETTABLEKS                       R14 R14 K8 ["createElement"]
       80 GETUPVAL                         R15 7
       81 DUPTABLE                         R16 K26 [{["LayoutOrder"] = 1, ["Text"], ["Schema"], ["Value"], ["OnChanged"]}]
       82 LOADK                            R19 K27 ["Label"]
       83 LOADK                            R20 K28 ["Distance"]
       84 NAMECALL                         R17 R2 K29 ["getText"]
       86 CALL                             R17 3 1
       87 SETTABLEKS                       R17 R16 K22 ["Text"]
       89 GETUPVAL                         R17 3
       90 SETTABLEKS                       R17 R16 K23 ["Schema"]
       92 SETTABLEKS                       R4 R16 K24 ["Value"]
       94 MOVE                             R17 R3
       95 LOADK                            R18 K6 ["X"]
       96 CALL                             R17 1 1
       97 SETTABLEKS                       R17 R16 K25 ["OnChanged"]
       99 CALL                             R14 2 1
      100 SETTABLEKS                       R14 R13 K6 ["X"]
      102 GETUPVAL                         R14 5
      103 GETTABLEKS                       R14 R14 K8 ["createElement"]
      105 GETUPVAL                         R15 7
      106 DUPTABLE                         R16 K31 [{["LayoutOrder"] = 2, ["Text"], ["Schema"], ["Value"], ["OnChanged"]}]
      107 LOADK                            R19 K27 ["Label"]
      108 LOADK                            R20 K32 ["Volume"]
      109 NAMECALL                         R17 R2 K29 ["getText"]
      111 CALL                             R17 3 1
      112 SETTABLEKS                       R17 R16 K22 ["Text"]
      114 GETUPVAL                         R17 4
      115 SETTABLEKS                       R17 R16 K23 ["Schema"]
      117 SETTABLEKS                       R5 R16 K24 ["Value"]
      119 MOVE                             R17 R3
      120 LOADK                            R18 K7 ["Y"]
      121 CALL                             R17 1 1
      122 SETTABLEKS                       R17 R16 K25 ["OnChanged"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K7 ["Y"]
      127 CALL                             R10 3 1
      128 SETTABLEKS                       R10 R9 K16 ["SequenceButtonsContainer"]
      130 GETUPVAL                         R10 5
      131 GETTABLEKS                       R10 R10 K8 ["createElement"]
      133 GETUPVAL                         R11 6
      134 NEWTABLE                         R12 2 0
      136 LOADN                            R13 3
      137 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      139 GETUPVAL                         R13 5
      140 GETTABLEKS                       R13 R13 K14 ["Tag"]
      142 LOADK                            R14 K33 ["X-Right X-Pad X-RowM X-Fit"]
      143 SETTABLE                         R14 R12 R13
      144 DUPTABLE                         R13 K35 [{"Delete"}]
      145 GETUPVAL                         R14 5
      146 GETTABLEKS                       R14 R14 K8 ["createElement"]
      148 GETUPVAL                         R15 8
      149 DUPTABLE                         R16 K37 [{["LayoutOrder"] = 1, ["Text"], ["OnClick"]}]
      150 LOADK                            R19 K38 ["Control"]
      151 LOADK                            R20 K34 ["Delete"]
      152 NAMECALL                         R17 R2 K29 ["getText"]
      154 CALL                             R17 3 1
      155 SETTABLEKS                       R17 R16 K22 ["Text"]
      157 GETTABLEKS                       R17 R0 K39 ["OnDelete"]
      159 SETTABLEKS                       R17 R16 K36 ["OnClick"]
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K34 ["Delete"]
      164 CALL                             R10 3 1
      165 SETTABLEKS                       R10 R9 K17 ["CommitButtonsContainer"]
      167 CALL                             R6 3 -1
      168 RETURN                           R6 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R6 R4 K12 ["UI"]
       29 GETTABLEKS                       R6 R6 K13 ["IconButton"]
       31 GETTABLEKS                       R7 R4 K12 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["Pane"]
       35 GETIMPORT                        R8 K5 [require]
       37 GETTABLEKS                       R9 R0 K15 ["Src"]
       39 GETTABLEKS                       R9 R9 K16 ["Types"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Src"]
       46 GETTABLEKS                       R10 R10 K17 ["Components"]
       48 GETTABLEKS                       R10 R10 K18 ["LabelCell"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K15 ["Src"]
       55 GETTABLEKS                       R11 R11 K17 ["Components"]
       57 GETTABLEKS                       R11 R11 K19 ["CurveRenderer"]
       59 GETTABLEKS                       R11 R11 K20 ["PlotRectUtil"]
       61 CALL                             R10 1 1
       62 DUPTABLE                         R11 K26 [{["Type"] = "Number", ["Min"] = 0, ["Max"]}]
       63 GETTABLEKS                       R12 R10 K27 ["MAX_ZOOM"]
       65 SETTABLEKS                       R12 R11 K25 ["Max"]
       67 DUPTABLE                         R12 K29 [{["Type"] = "Number", ["Min"] = 0, ["Max"] = 1}]
       68 DUPCLOSURE                       R13 K30 [PROTO_3]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 RETURN                           R13 1
