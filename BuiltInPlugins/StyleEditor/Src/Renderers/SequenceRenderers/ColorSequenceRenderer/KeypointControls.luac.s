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
       67 DUPTABLE                         R15 K26 [{"LayoutOrder", "Text", "Schema", "Disabled", "Value", "OnChanged"}]
       68 LOADN                            R16 1
       69 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       71 LOADK                            R18 K27 ["Label"]
       72 LOADK                            R19 K17 ["Time"]
       73 NAMECALL                         R16 R2 K28 ["getText"]
       75 CALL                             R16 3 1
       76 SETTABLEKS                       R16 R15 K21 ["Text"]
       78 GETUPVAL                         R16 7
       79 SETTABLEKS                       R16 R15 K22 ["Schema"]
       81 GETTABLEKS                       R16 R0 K29 ["IsKeypointFixed"]
       83 SETTABLEKS                       R16 R15 K23 ["Disabled"]
       85 GETTABLEKS                       R16 R0 K30 ["Keypoint"]
       87 GETTABLEKS                       R16 R16 K17 ["Time"]
       89 SETTABLEKS                       R16 R15 K24 ["Value"]
       91 SETTABLEKS                       R3 R15 K25 ["OnChanged"]
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K17 ["Time"]
       96 GETUPVAL                         R13 4
       97 GETTABLEKS                       R13 R13 K4 ["createElement"]
       99 GETUPVAL                         R14 6
      100 DUPTABLE                         R15 K32 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged", "Renderer"}]
      101 LOADN                            R16 2
      102 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      104 LOADK                            R18 K27 ["Label"]
      105 LOADK                            R19 K18 ["Color"]
      106 NAMECALL                         R16 R2 K28 ["getText"]
      108 CALL                             R16 3 1
      109 SETTABLEKS                       R16 R15 K21 ["Text"]
      111 GETUPVAL                         R16 8
      112 SETTABLEKS                       R16 R15 K22 ["Schema"]
      114 GETTABLEKS                       R16 R0 K30 ["Keypoint"]
      116 GETTABLEKS                       R16 R16 K24 ["Value"]
      118 SETTABLEKS                       R16 R15 K24 ["Value"]
      120 SETTABLEKS                       R4 R15 K25 ["OnChanged"]
      122 GETUPVAL                         R16 9
      123 SETTABLEKS                       R16 R15 K31 ["Renderer"]
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K18 ["Color"]
      128 GETUPVAL                         R13 4
      129 GETTABLEKS                       R13 R13 K4 ["createElement"]
      131 GETUPVAL                         R14 10
      132 DUPTABLE                         R15 K36 [{"LayoutOrder", "TooltipText", "LeftIcon", "Disabled", "OnClick"}]
      133 LOADN                            R16 3
      134 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      136 LOADK                            R18 K37 ["Control"]
      137 LOADK                            R19 K38 ["DeleteTooltip"]
      138 NAMECALL                         R16 R2 K28 ["getText"]
      140 CALL                             R16 3 1
      141 SETTABLEKS                       R16 R15 K33 ["TooltipText"]
      143 GETUPVAL                         R16 11
      144 GETTABLEKS                       R16 R16 K39 ["delete"]
      146 CALL                             R16 0 1
      147 SETTABLEKS                       R16 R15 K34 ["LeftIcon"]
      149 GETTABLEKS                       R16 R0 K29 ["IsKeypointFixed"]
      151 SETTABLEKS                       R16 R15 K23 ["Disabled"]
      153 GETTABLEKS                       R16 R0 K40 ["OnDelete"]
      155 SETTABLEKS                       R16 R15 K35 ["OnClick"]
      157 CALL                             R13 2 1
      158 SETTABLEKS                       R13 R12 K19 ["Delete"]
      160 CALL                             R9 3 1
      161 SETTABLEKS                       R9 R8 K8 ["SequenceButtonsContainer"]
      163 GETUPVAL                         R9 4
      164 GETTABLEKS                       R9 R9 K4 ["createElement"]
      166 GETUPVAL                         R10 5
      167 NEWTABLE                         R11 4 0
      169 LOADN                            R12 2
      170 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      172 GETUPVAL                         R12 4
      173 GETTABLEKS                       R12 R12 K6 ["Tag"]
      175 LOADK                            R13 K41 ["X-Right X-Pad X-RowM X-FitY"]
      176 SETTABLE                         R13 R11 R12
      177 GETIMPORT                        R12 K14 [UDim2.fromScale]
      179 LOADK                            R13 K15 [0.5]
      180 LOADN                            R14 1
      181 CALL                             R12 2 1
      182 SETTABLEKS                       R12 R11 K16 ["Size"]
      184 DUPTABLE                         R12 K43 [{"Save"}]
      185 GETUPVAL                         R13 4
      186 GETTABLEKS                       R13 R13 K4 ["createElement"]
      188 GETUPVAL                         R14 10
      189 DUPTABLE                         R15 K44 [{"LayoutOrder", "Text", "OnClick"}]
      190 LOADN                            R16 1
      191 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      193 LOADK                            R18 K45 ["Modal"]
      194 LOADK                            R19 K42 ["Save"]
      195 NAMECALL                         R16 R2 K28 ["getText"]
      197 CALL                             R16 3 1
      198 SETTABLEKS                       R16 R15 K21 ["Text"]
      200 GETTABLEKS                       R16 R0 K46 ["OnSave"]
      202 SETTABLEKS                       R16 R15 K35 ["OnClick"]
      204 CALL                             R13 2 1
      205 SETTABLEKS                       R13 R12 K42 ["Save"]
      207 CALL                             R9 3 1
      208 SETTABLEKS                       R9 R8 K9 ["CommitButtonsContainer"]
      210 CALL                             R5 3 -1
      211 RETURN                           R5 -1

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
      115 DUPTABLE                         R16 K27 [{"Type"}]
      116 LOADK                            R17 K28 ["Color"]
      117 SETTABLEKS                       R17 R16 K26 ["Type"]
      119 DUPTABLE                         R17 K32 [{"Type", "Min", "Max", "Precision"}]
      120 LOADK                            R18 K33 ["Number"]
      121 SETTABLEKS                       R18 R17 K26 ["Type"]
      123 LOADN                            R18 0
      124 SETTABLEKS                       R18 R17 K29 ["Min"]
      126 LOADN                            R18 1
      127 SETTABLEKS                       R18 R17 K30 ["Max"]
      129 JUMPIFNOT                        R15 ; [+2]
      130 LOADN                            R18 3
      131 JUMP                             ; [+1]
      132 LOADNIL                          R18
      133 SETTABLEKS                       R18 R17 K31 ["Precision"]
      135 DUPCLOSURE                       R18 K34 [PROTO_2]
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R9
      148 RETURN                           R18 1
