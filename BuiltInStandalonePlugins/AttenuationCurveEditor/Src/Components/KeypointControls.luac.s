PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagFixAttenuationCurveEditorNilInputCrash"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["Keypoint"]
       11 GETUPVAL                         R2 2
       12 JUMPIFNOTEQKS                    R2 K2 ["X"] ; [+21]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["Min"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["Max"]
       20 FASTCALL3                        MATH_CLAMP R0 R4 R5
       22 MOVE                             R3 R0
       23 GETIMPORT                        R2 K7 [math.clamp]
       25 CALL                             R2 3 1
       26 MOVE                             R0 R2
       27 GETIMPORT                        R2 K10 [Vector2.new]
       29 MOVE                             R3 R0
       30 GETTABLEKS                       R4 R1 K11 ["Y"]
       32 CALL                             R2 2 1
       33 MOVE                             R1 R2
       34 GETUPVAL                         R2 2
       35 JUMPIFNOTEQKS                    R2 K11 ["Y"] ; [+21]
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R4 R4 K3 ["Min"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K4 ["Max"]
       43 FASTCALL3                        MATH_CLAMP R0 R4 R5
       45 MOVE                             R3 R0
       46 GETIMPORT                        R2 K7 [math.clamp]
       48 CALL                             R2 3 1
       49 MOVE                             R0 R2
       50 GETIMPORT                        R2 K10 [Vector2.new]
       52 GETTABLEKS                       R3 R1 K2 ["X"]
       54 MOVE                             R4 R0
       55 CALL                             R2 2 1
       56 MOVE                             R1 R2
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K12 ["OnEdit"]
       60 JUMPIFNOT                        R2 ; [+5]
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R2 R2 K12 ["OnEdit"]
       64 MOVE                             R3 R1
       65 CALL                             R2 1 0
       66 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Keypoint"]
        3 JUMPIF                           R1 ; [+2]
        4 DUPCLOSURE                       R1 K1 [PROTO_0]
        5 RETURN                           R1 1
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 RETURN                           R1 1

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
       18 CAPTURE                          UPVAL U5
       19 NEWTABLE                         R5 0 2
       21 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       23 GETTABLEKS                       R7 R0 K5 ["OnEdit"]
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R3 2 1
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       32 JUMPIFNOT                        R6 ; [+8]
       33 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       35 GETTABLEKS                       R4 R6 K6 ["X"]
       37 GETTABLEKS                       R6 R0 K4 ["Keypoint"]
       39 GETTABLEKS                       R5 R6 K7 ["Y"]
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R6 R6 K8 ["createElement"]
       44 GETUPVAL                         R7 7
       45 NEWTABLE                         R8 4 0
       47 LOADN                            R9 2
       48 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       50 GETIMPORT                        R9 K12 [UDim2.fromScale]
       52 LOADN                            R10 1
       53 LOADN                            R11 0
       54 CALL                             R9 2 1
       55 SETTABLEKS                       R9 R8 K13 ["Size"]
       57 GETUPVAL                         R9 6
       58 GETTABLEKS                       R9 R9 K14 ["Tag"]
       60 LOADK                            R10 K15 ["X-Center X-Middle X-RowM X-Fit"]
       61 SETTABLE                         R10 R8 R9
       62 DUPTABLE                         R9 K18 [{"SequenceButtonsContainer", "CommitButtonsContainer"}]
       63 GETUPVAL                         R10 6
       64 GETTABLEKS                       R10 R10 K8 ["createElement"]
       66 GETUPVAL                         R11 7
       67 NEWTABLE                         R12 2 0
       69 LOADN                            R13 1
       70 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       72 GETUPVAL                         R13 6
       73 GETTABLEKS                       R13 R13 K14 ["Tag"]
       75 LOADK                            R14 K19 ["X-Left X-Pad X-RowM X-Fit"]
       76 SETTABLE                         R14 R12 R13
       77 DUPTABLE                         R13 K20 [{"X", "Y"}]
       78 GETUPVAL                         R14 6
       79 GETTABLEKS                       R14 R14 K8 ["createElement"]
       81 GETUPVAL                         R15 8
       82 DUPTABLE                         R16 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
       83 LOADN                            R17 1
       84 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       86 LOADK                            R19 K26 ["Label"]
       87 LOADK                            R20 K27 ["Distance"]
       88 NAMECALL                         R17 R2 K28 ["getText"]
       90 CALL                             R17 3 1
       91 SETTABLEKS                       R17 R16 K21 ["Text"]
       93 GETUPVAL                         R17 4
       94 SETTABLEKS                       R17 R16 K22 ["Schema"]
       96 SETTABLEKS                       R4 R16 K23 ["Value"]
       98 MOVE                             R17 R3
       99 LOADK                            R18 K6 ["X"]
      100 CALL                             R17 1 1
      101 SETTABLEKS                       R17 R16 K24 ["OnChanged"]
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K6 ["X"]
      106 GETUPVAL                         R14 6
      107 GETTABLEKS                       R14 R14 K8 ["createElement"]
      109 GETUPVAL                         R15 8
      110 DUPTABLE                         R16 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
      111 LOADN                            R17 2
      112 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      114 LOADK                            R19 K26 ["Label"]
      115 LOADK                            R20 K29 ["Volume"]
      116 NAMECALL                         R17 R2 K28 ["getText"]
      118 CALL                             R17 3 1
      119 SETTABLEKS                       R17 R16 K21 ["Text"]
      121 GETUPVAL                         R17 5
      122 SETTABLEKS                       R17 R16 K22 ["Schema"]
      124 SETTABLEKS                       R5 R16 K23 ["Value"]
      126 MOVE                             R17 R3
      127 LOADK                            R18 K7 ["Y"]
      128 CALL                             R17 1 1
      129 SETTABLEKS                       R17 R16 K24 ["OnChanged"]
      131 CALL                             R14 2 1
      132 SETTABLEKS                       R14 R13 K7 ["Y"]
      134 CALL                             R10 3 1
      135 SETTABLEKS                       R10 R9 K16 ["SequenceButtonsContainer"]
      137 GETUPVAL                         R10 6
      138 GETTABLEKS                       R10 R10 K8 ["createElement"]
      140 GETUPVAL                         R11 7
      141 NEWTABLE                         R12 2 0
      143 LOADN                            R13 3
      144 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      146 GETUPVAL                         R13 6
      147 GETTABLEKS                       R13 R13 K14 ["Tag"]
      149 LOADK                            R14 K30 ["X-Right X-Pad X-RowM X-Fit"]
      150 SETTABLE                         R14 R12 R13
      151 DUPTABLE                         R13 K32 [{"Delete"}]
      152 GETUPVAL                         R14 6
      153 GETTABLEKS                       R14 R14 K8 ["createElement"]
      155 GETUPVAL                         R15 9
      156 DUPTABLE                         R16 K34 [{"LayoutOrder", "Text", "OnClick"}]
      157 LOADN                            R17 1
      158 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      160 LOADK                            R19 K35 ["Control"]
      161 LOADK                            R20 K31 ["Delete"]
      162 NAMECALL                         R17 R2 K28 ["getText"]
      164 CALL                             R17 3 1
      165 SETTABLEKS                       R17 R16 K21 ["Text"]
      167 GETTABLEKS                       R17 R0 K36 ["OnDelete"]
      169 SETTABLEKS                       R17 R16 K33 ["OnClick"]
      171 CALL                             R14 2 1
      172 SETTABLEKS                       R14 R13 K31 ["Delete"]
      174 CALL                             R10 3 1
      175 SETTABLEKS                       R10 R9 K17 ["CommitButtonsContainer"]
      177 CALL                             R6 3 -1
      178 RETURN                           R6 -1

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
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R0 K21 ["Bin"]
       66 GETTABLEKS                       R12 R12 K22 ["Common"]
       68 GETTABLEKS                       R12 R12 K23 ["defineLuaFlags"]
       70 CALL                             R11 1 1
       71 DUPTABLE                         R12 K27 [{"Type", "Min", "Max"}]
       72 LOADK                            R13 K28 ["Number"]
       73 SETTABLEKS                       R13 R12 K24 ["Type"]
       75 LOADN                            R13 0
       76 SETTABLEKS                       R13 R12 K25 ["Min"]
       78 GETTABLEKS                       R13 R10 K29 ["MAX_ZOOM"]
       80 SETTABLEKS                       R13 R12 K26 ["Max"]
       82 DUPTABLE                         R13 K27 [{"Type", "Min", "Max"}]
       83 LOADK                            R14 K28 ["Number"]
       84 SETTABLEKS                       R14 R13 K24 ["Type"]
       86 LOADN                            R14 0
       87 SETTABLEKS                       R14 R13 K25 ["Min"]
       89 LOADN                            R14 1
       90 SETTABLEKS                       R14 R13 K26 ["Max"]
       92 DUPCLOSURE                       R14 K30 [PROTO_3]
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R6
      103 RETURN                           R14 1
