PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnEdit"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Keypoint"]
        7 DUPTABLE                         R4 K3 [{"Time"}]
        8 SETTABLEKS                       R0 R4 K2 ["Time"]
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnEdit"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Keypoint"]
        7 DUPTABLE                         R4 K3 [{"Value"}]
        8 SETTABLEKS                       R0 R4 K2 ["Value"]
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["Context"]
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K0 ["Context"]
       10 GETTABLEKS                       R2 R2 K1 ["Consumer"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Localization"]
       16 GETTABLEKS                       R3 R3 K3 ["Key"]
       18 GETTABLE                         R2 R1 R3
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K4 ["createElement"]
       28 GETUPVAL                         R6 5
       29 NEWTABLE                         R7 2 0
       31 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       33 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       35 GETUPVAL                         R8 4
       36 GETTABLEKS                       R8 R8 K6 ["Tag"]
       38 LOADK                            R9 K7 ["X-Center X-Middle X-FitY X-Pad X-RowM"]
       39 SETTABLE                         R9 R7 R8
       40 DUPTABLE                         R8 K10 [{"SequenceButtonsContainer", "CommitButtonsContainer"}]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K4 ["createElement"]
       44 GETUPVAL                         R10 5
       45 NEWTABLE                         R11 4 0
       47 LOADN                            R12 1
       48 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       50 GETUPVAL                         R12 4
       51 GETTABLEKS                       R12 R12 K6 ["Tag"]
       53 LOADK                            R13 K11 ["X-Left X-Pad X-RowM X-FitY"]
       54 SETTABLE                         R13 R11 R12
       55 GETIMPORT                        R12 K14 [UDim2.fromScale]
       57 LOADK                            R13 K15 [0.5]
       58 LOADN                            R14 1
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K16 ["Size"]
       62 DUPTABLE                         R12 K20 [{"Time", "Color", "Delete"}]
       63 GETUPVAL                         R13 4
       64 GETTABLEKS                       R13 R13 K4 ["createElement"]
       66 GETUPVAL                         R14 6
       67 DUPTABLE                         R15 K27 [{["LayoutOrder"] = 1, ["Text"], ["Schema"], ["Disabled"], ["Value"], ["OnChanged"]}]
       68 LOADK                            R18 K28 ["Label"]
       69 LOADK                            R19 K17 ["Time"]
       70 NAMECALL                         R16 R2 K29 ["getText"]
       72 CALL                             R16 3 1
       73 SETTABLEKS                       R16 R15 K22 ["Text"]
       75 GETUPVAL                         R16 7
       76 SETTABLEKS                       R16 R15 K23 ["Schema"]
       78 GETTABLEKS                       R16 R0 K30 ["IsKeypointFixed"]
       80 SETTABLEKS                       R16 R15 K24 ["Disabled"]
       82 GETTABLEKS                       R16 R0 K31 ["Keypoint"]
       84 GETTABLEKS                       R16 R16 K17 ["Time"]
       86 SETTABLEKS                       R16 R15 K25 ["Value"]
       88 SETTABLEKS                       R3 R15 K26 ["OnChanged"]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K17 ["Time"]
       93 GETUPVAL                         R13 4
       94 GETTABLEKS                       R13 R13 K4 ["createElement"]
       96 GETUPVAL                         R14 6
       97 DUPTABLE                         R15 K34 [{["LayoutOrder"] = 2, ["Text"], ["Schema"], ["Value"], ["OnChanged"], ["Renderer"]}]
       98 LOADK                            R18 K28 ["Label"]
       99 LOADK                            R19 K18 ["Color"]
      100 NAMECALL                         R16 R2 K29 ["getText"]
      102 CALL                             R16 3 1
      103 SETTABLEKS                       R16 R15 K22 ["Text"]
      105 GETUPVAL                         R16 8
      106 SETTABLEKS                       R16 R15 K23 ["Schema"]
      108 GETTABLEKS                       R16 R0 K31 ["Keypoint"]
      110 GETTABLEKS                       R16 R16 K25 ["Value"]
      112 SETTABLEKS                       R16 R15 K25 ["Value"]
      114 SETTABLEKS                       R4 R15 K26 ["OnChanged"]
      116 GETUPVAL                         R16 9
      117 SETTABLEKS                       R16 R15 K33 ["Renderer"]
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K18 ["Color"]
      122 GETUPVAL                         R13 4
      123 GETTABLEKS                       R13 R13 K4 ["createElement"]
      125 GETUPVAL                         R14 10
      126 DUPTABLE                         R15 K39 [{["LayoutOrder"] = 3, ["TooltipText"], ["LeftIcon"], ["Disabled"], ["OnClick"]}]
      127 LOADK                            R18 K40 ["Control"]
      128 LOADK                            R19 K41 ["DeleteTooltip"]
      129 NAMECALL                         R16 R2 K29 ["getText"]
      131 CALL                             R16 3 1
      132 SETTABLEKS                       R16 R15 K36 ["TooltipText"]
      134 GETUPVAL                         R16 11
      135 GETTABLEKS                       R16 R16 K42 ["delete"]
      137 CALL                             R16 0 1
      138 SETTABLEKS                       R16 R15 K37 ["LeftIcon"]
      140 GETTABLEKS                       R16 R0 K30 ["IsKeypointFixed"]
      142 SETTABLEKS                       R16 R15 K24 ["Disabled"]
      144 GETTABLEKS                       R16 R0 K43 ["OnDelete"]
      146 SETTABLEKS                       R16 R15 K38 ["OnClick"]
      148 CALL                             R13 2 1
      149 SETTABLEKS                       R13 R12 K19 ["Delete"]
      151 CALL                             R9 3 1
      152 SETTABLEKS                       R9 R8 K8 ["SequenceButtonsContainer"]
      154 GETUPVAL                         R9 4
      155 GETTABLEKS                       R9 R9 K4 ["createElement"]
      157 GETUPVAL                         R10 5
      158 NEWTABLE                         R11 4 0
      160 LOADN                            R12 2
      161 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      163 GETUPVAL                         R12 4
      164 GETTABLEKS                       R12 R12 K6 ["Tag"]
      166 LOADK                            R13 K44 ["X-Right X-Pad X-RowM X-FitY"]
      167 SETTABLE                         R13 R11 R12
      168 GETIMPORT                        R12 K14 [UDim2.fromScale]
      170 LOADK                            R13 K15 [0.5]
      171 LOADN                            R14 1
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K16 ["Size"]
      175 DUPTABLE                         R12 K46 [{"Save"}]
      176 GETUPVAL                         R13 4
      177 GETTABLEKS                       R13 R13 K4 ["createElement"]
      179 GETUPVAL                         R14 10
      180 DUPTABLE                         R15 K47 [{["LayoutOrder"] = 1, ["Text"], ["OnClick"]}]
      181 LOADK                            R18 K48 ["Modal"]
      182 LOADK                            R19 K45 ["Save"]
      183 NAMECALL                         R16 R2 K29 ["getText"]
      185 CALL                             R16 3 1
      186 SETTABLEKS                       R16 R15 K22 ["Text"]
      188 GETTABLEKS                       R16 R0 K49 ["OnSave"]
      190 SETTABLEKS                       R16 R15 K38 ["OnClick"]
      192 CALL                             R13 2 1
      193 SETTABLEKS                       R13 R12 K45 ["Save"]
      195 CALL                             R9 3 1
      196 SETTABLEKS                       R9 R8 K9 ["CommitButtonsContainer"]
      198 CALL                             R5 3 -1
      199 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Packages"]
       17 GETTABLEKS                       R2 R2 K6 ["React"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K7 ["useContext"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K5 ["Packages"]
       26 GETTABLEKS                       R4 R4 K8 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       31 GETTABLEKS                       R5 R3 K10 ["UI"]
       33 GETTABLEKS                       R5 R5 K11 ["IconButton"]
       35 GETTABLEKS                       R6 R3 K10 ["UI"]
       37 GETTABLEKS                       R6 R6 K12 ["Pane"]
       39 GETIMPORT                        R7 K4 [require]
       41 GETTABLEKS                       R8 R0 K5 ["Packages"]
       43 GETTABLEKS                       R8 R8 K13 ["Dash"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K14 ["join"]
       48 GETIMPORT                        R9 K4 [require]
       50 GETTABLEKS                       R10 R0 K15 ["Src"]
       52 GETTABLEKS                       R10 R10 K16 ["Resources"]
       54 GETTABLEKS                       R10 R10 K17 ["ModernIcons"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K4 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Renderers"]
       63 GETTABLEKS                       R11 R11 K19 ["SequenceRenderers"]
       65 GETTABLEKS                       R11 R11 K20 ["LabelCell"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K4 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Src"]
       72 GETTABLEKS                       R12 R12 K18 ["Renderers"]
       74 GETTABLEKS                       R12 R12 K21 ["ColorRenderer"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K4 [require]
       79 GETTABLEKS                       R13 R0 K15 ["Src"]
       81 GETTABLEKS                       R13 R13 K22 ["Types"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K4 [require]
       86 GETTABLEKS                       R14 R0 K15 ["Src"]
       88 GETTABLEKS                       R14 R14 K18 ["Renderers"]
       90 GETTABLEKS                       R14 R14 K19 ["SequenceRenderers"]
       92 GETTABLEKS                       R14 R14 K22 ["Types"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K15 ["Src"]
       99 GETTABLEKS                       R15 R15 K23 ["Flags"]
      101 GETTABLEKS                       R15 R15 K24 ["getFFlagStyleEditorFixWarnings"]
      103 CALL                             R14 1 1
      104 CALL                             R14 0 1
      105 GETIMPORT                        R15 K4 [require]
      107 GETTABLEKS                       R16 R0 K15 ["Src"]
      109 GETTABLEKS                       R16 R16 K23 ["Flags"]
      111 GETTABLEKS                       R16 R16 K25 ["getFFlagStyleEditorFixSequenceNumPrecision"]
      113 CALL                             R15 1 1
      114 CALL                             R15 0 1
      115 DUPTABLE                         R16 K28 [{["Type"] = "Color"}]
      116 DUPTABLE                         R17 K35 [{["Type"] = "Number", ["Min"] = 0, ["Max"] = 1, ["Precision"]}]
      117 JUMPIFNOT                        R15 ; [+2]
      118 LOADN                            R18 3
      119 JUMP                             ; [+1]
      120 LOADNIL                          R18
      121 SETTABLEKS                       R18 R17 K34 ["Precision"]
      123 DUPCLOSURE                       R18 K36 [PROTO_2]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R9
      136 RETURN                           R18 1
