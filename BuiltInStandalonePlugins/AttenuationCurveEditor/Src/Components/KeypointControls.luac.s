PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Keypoint"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQKS                    R2 K1 ["X"] ; [+21]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K2 ["Min"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K3 ["Max"]
       12 FASTCALL3                        MATH_CLAMP R0 R4 R5
       14 MOVE                             R3 R0
       15 GETIMPORT                        R2 K6 [math.clamp]
       17 CALL                             R2 3 1
       18 MOVE                             R0 R2
       19 GETIMPORT                        R2 K9 [Vector2.new]
       21 MOVE                             R3 R0
       22 GETTABLEKS                       R4 R1 K10 ["Y"]
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 1
       27 JUMPIFNOTEQKS                    R2 K10 ["Y"] ; [+21]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R4 R5 K2 ["Min"]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R5 R6 K3 ["Max"]
       35 FASTCALL3                        MATH_CLAMP R0 R4 R5
       37 MOVE                             R3 R0
       38 GETIMPORT                        R2 K6 [math.clamp]
       40 CALL                             R2 3 1
       41 MOVE                             R0 R2
       42 GETIMPORT                        R2 K9 [Vector2.new]
       44 GETTABLEKS                       R3 R1 K1 ["X"]
       46 MOVE                             R4 R0
       47 CALL                             R2 2 1
       48 MOVE                             R1 R2
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K11 ["OnEdit"]
       52 JUMPIFNOT                        R2 ; [+5]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R2 R3 K11 ["OnEdit"]
       56 MOVE                             R3 R1
       57 CALL                             R2 1 0
       58 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Keypoint"]
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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Context"]
        4 GETTABLEKS                       R2 R3 K1 ["Consumer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["Localization"]
       10 GETTABLEKS                       R3 R4 K3 ["Key"]
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
       40 GETUPVAL                         R7 5
       41 GETTABLEKS                       R6 R7 K8 ["createElement"]
       43 GETUPVAL                         R7 6
       44 NEWTABLE                         R8 4 0
       46 LOADN                            R9 2
       47 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       49 GETIMPORT                        R9 K12 [UDim2.fromScale]
       51 LOADN                            R10 1
       52 LOADN                            R11 0
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K13 ["Size"]
       56 GETUPVAL                         R10 5
       57 GETTABLEKS                       R9 R10 K14 ["Tag"]
       59 LOADK                            R10 K15 ["X-Center X-Middle X-RowM X-Fit"]
       60 SETTABLE                         R10 R8 R9
       61 DUPTABLE                         R9 K18 [{"SequenceButtonsContainer", "CommitButtonsContainer"}]
       62 GETUPVAL                         R11 5
       63 GETTABLEKS                       R10 R11 K8 ["createElement"]
       65 GETUPVAL                         R11 6
       66 NEWTABLE                         R12 2 0
       68 LOADN                            R13 1
       69 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       71 GETUPVAL                         R14 5
       72 GETTABLEKS                       R13 R14 K14 ["Tag"]
       74 LOADK                            R14 K19 ["X-Left X-Pad X-RowM X-Fit"]
       75 SETTABLE                         R14 R12 R13
       76 DUPTABLE                         R13 K20 [{"X", "Y"}]
       77 GETUPVAL                         R15 5
       78 GETTABLEKS                       R14 R15 K8 ["createElement"]
       80 GETUPVAL                         R15 7
       81 DUPTABLE                         R16 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
       82 LOADN                            R17 1
       83 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       85 LOADK                            R19 K26 ["Label"]
       86 LOADK                            R20 K27 ["Distance"]
       87 NAMECALL                         R17 R2 K28 ["getText"]
       89 CALL                             R17 3 1
       90 SETTABLEKS                       R17 R16 K21 ["Text"]
       92 GETUPVAL                         R17 3
       93 SETTABLEKS                       R17 R16 K22 ["Schema"]
       95 SETTABLEKS                       R4 R16 K23 ["Value"]
       97 MOVE                             R17 R3
       98 LOADK                            R18 K6 ["X"]
       99 CALL                             R17 1 1
      100 SETTABLEKS                       R17 R16 K24 ["OnChanged"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K6 ["X"]
      105 GETUPVAL                         R15 5
      106 GETTABLEKS                       R14 R15 K8 ["createElement"]
      108 GETUPVAL                         R15 7
      109 DUPTABLE                         R16 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
      110 LOADN                            R17 2
      111 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      113 LOADK                            R19 K26 ["Label"]
      114 LOADK                            R20 K29 ["Volume"]
      115 NAMECALL                         R17 R2 K28 ["getText"]
      117 CALL                             R17 3 1
      118 SETTABLEKS                       R17 R16 K21 ["Text"]
      120 GETUPVAL                         R17 4
      121 SETTABLEKS                       R17 R16 K22 ["Schema"]
      123 SETTABLEKS                       R5 R16 K23 ["Value"]
      125 MOVE                             R17 R3
      126 LOADK                            R18 K7 ["Y"]
      127 CALL                             R17 1 1
      128 SETTABLEKS                       R17 R16 K24 ["OnChanged"]
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K7 ["Y"]
      133 CALL                             R10 3 1
      134 SETTABLEKS                       R10 R9 K16 ["SequenceButtonsContainer"]
      136 GETUPVAL                         R11 5
      137 GETTABLEKS                       R10 R11 K8 ["createElement"]
      139 GETUPVAL                         R11 6
      140 NEWTABLE                         R12 2 0
      142 LOADN                            R13 3
      143 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      145 GETUPVAL                         R14 5
      146 GETTABLEKS                       R13 R14 K14 ["Tag"]
      148 LOADK                            R14 K30 ["X-Right X-Pad X-RowM X-Fit"]
      149 SETTABLE                         R14 R12 R13
      150 DUPTABLE                         R13 K32 [{"Delete"}]
      151 GETUPVAL                         R15 5
      152 GETTABLEKS                       R14 R15 K8 ["createElement"]
      154 GETUPVAL                         R15 8
      155 DUPTABLE                         R16 K34 [{"LayoutOrder", "Text", "OnClick"}]
      156 LOADN                            R17 1
      157 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      159 LOADK                            R19 K35 ["Control"]
      160 LOADK                            R20 K31 ["Delete"]
      161 NAMECALL                         R17 R2 K28 ["getText"]
      163 CALL                             R17 3 1
      164 SETTABLEKS                       R17 R16 K21 ["Text"]
      166 GETTABLEKS                       R17 R0 K36 ["OnDelete"]
      168 SETTABLEKS                       R17 R16 K33 ["OnClick"]
      170 CALL                             R14 2 1
      171 SETTABLEKS                       R14 R13 K31 ["Delete"]
      173 CALL                             R10 3 1
      174 SETTABLEKS                       R10 R9 K17 ["CommitButtonsContainer"]
      176 CALL                             R6 3 -1
      177 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R6 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R7 R4 K12 ["UI"]
       29 GETTABLEKS                       R6 R7 K13 ["IconButton"]
       31 GETTABLEKS                       R8 R4 K12 ["UI"]
       33 GETTABLEKS                       R7 R8 K14 ["Pane"]
       35 GETIMPORT                        R8 K5 [require]
       37 GETTABLEKS                       R10 R0 K15 ["Src"]
       39 GETTABLEKS                       R9 R10 K16 ["Types"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K15 ["Src"]
       46 GETTABLEKS                       R11 R12 K17 ["Components"]
       48 GETTABLEKS                       R10 R11 K18 ["LabelCell"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R14 R0 K15 ["Src"]
       55 GETTABLEKS                       R13 R14 K17 ["Components"]
       57 GETTABLEKS                       R12 R13 K19 ["CurveRenderer"]
       59 GETTABLEKS                       R11 R12 K20 ["PlotRectUtil"]
       61 CALL                             R10 1 1
       62 DUPTABLE                         R11 K24 [{"Type", "Min", "Max"}]
       63 LOADK                            R12 K25 ["Number"]
       64 SETTABLEKS                       R12 R11 K21 ["Type"]
       66 LOADN                            R12 0
       67 SETTABLEKS                       R12 R11 K22 ["Min"]
       69 GETTABLEKS                       R12 R10 K26 ["MAX_ZOOM"]
       71 SETTABLEKS                       R12 R11 K23 ["Max"]
       73 DUPTABLE                         R12 K24 [{"Type", "Min", "Max"}]
       74 LOADK                            R13 K25 ["Number"]
       75 SETTABLEKS                       R13 R12 K21 ["Type"]
       77 LOADN                            R13 0
       78 SETTABLEKS                       R13 R12 K22 ["Min"]
       80 LOADN                            R13 1
       81 SETTABLEKS                       R13 R12 K23 ["Max"]
       83 DUPCLOSURE                       R13 K27 [PROTO_3]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R6
       93 RETURN                           R13 1
