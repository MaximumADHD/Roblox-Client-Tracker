PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnEdit"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Keypoint"]
        7 NEWTABLE                         R4 1 0
        9 GETUPVAL                         R5 2
       10 SETTABLE                         R0 R4 R5
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

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
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K4 ["createElement"]
       25 GETUPVAL                         R5 5
       26 NEWTABLE                         R6 2 0
       28 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       32 GETUPVAL                         R7 4
       33 GETTABLEKS                       R7 R7 K6 ["Tag"]
       35 LOADK                            R8 K7 ["X-Center X-Middle X-RowM X-Fit"]
       36 SETTABLE                         R8 R6 R7
       37 DUPTABLE                         R7 K10 [{"SequenceButtonsContainer", "CommitButtonsContainer"}]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K4 ["createElement"]
       41 GETUPVAL                         R9 5
       42 NEWTABLE                         R10 2 0
       44 LOADN                            R11 1
       45 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R11 R11 K6 ["Tag"]
       50 LOADK                            R12 K11 ["X-Left X-Pad X-RowM X-Fit"]
       51 SETTABLE                         R12 R10 R11
       52 DUPTABLE                         R11 K15 [{"Time", "Value", "Envelope"}]
       53 GETUPVAL                         R12 4
       54 GETTABLEKS                       R12 R12 K4 ["createElement"]
       56 GETUPVAL                         R13 6
       57 DUPTABLE                         R14 K21 [{["LayoutOrder"] = 1, ["Text"], ["Schema"], ["Disabled"], ["Value"], ["OnChanged"]}]
       58 LOADK                            R17 K22 ["Label"]
       59 LOADK                            R18 K12 ["Time"]
       60 NAMECALL                         R15 R2 K23 ["getText"]
       62 CALL                             R15 3 1
       63 SETTABLEKS                       R15 R14 K17 ["Text"]
       65 GETUPVAL                         R15 7
       66 SETTABLEKS                       R15 R14 K18 ["Schema"]
       68 GETTABLEKS                       R15 R0 K24 ["IsKeypointFixed"]
       70 SETTABLEKS                       R15 R14 K19 ["Disabled"]
       72 GETTABLEKS                       R15 R0 K25 ["Keypoint"]
       74 GETTABLEKS                       R15 R15 K12 ["Time"]
       76 SETTABLEKS                       R15 R14 K13 ["Value"]
       78 LOADK                            R16 K12 ["Time"]
       79 NEWCLOSURE                       R15 P1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          VAL R16
       83 SETTABLEKS                       R15 R14 K20 ["OnChanged"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K12 ["Time"]
       88 GETUPVAL                         R12 4
       89 GETTABLEKS                       R12 R12 K4 ["createElement"]
       91 GETUPVAL                         R13 6
       92 DUPTABLE                         R14 K27 [{["LayoutOrder"] = 2, ["Text"], ["Schema"], ["Value"], ["OnChanged"]}]
       93 LOADK                            R17 K22 ["Label"]
       94 LOADK                            R18 K13 ["Value"]
       95 NAMECALL                         R15 R2 K23 ["getText"]
       97 CALL                             R15 3 1
       98 SETTABLEKS                       R15 R14 K17 ["Text"]
      100 GETUPVAL                         R15 7
      101 SETTABLEKS                       R15 R14 K18 ["Schema"]
      103 GETTABLEKS                       R15 R0 K25 ["Keypoint"]
      105 GETTABLEKS                       R15 R15 K13 ["Value"]
      107 SETTABLEKS                       R15 R14 K13 ["Value"]
      109 LOADK                            R16 K13 ["Value"]
      110 NEWCLOSURE                       R15 P1
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          VAL R16
      114 SETTABLEKS                       R15 R14 K20 ["OnChanged"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K13 ["Value"]
      119 GETUPVAL                         R12 4
      120 GETTABLEKS                       R12 R12 K4 ["createElement"]
      122 GETUPVAL                         R13 6
      123 DUPTABLE                         R14 K29 [{["LayoutOrder"] = 3, ["Text"], ["Schema"], ["Value"], ["OnChanged"]}]
      124 LOADK                            R17 K22 ["Label"]
      125 LOADK                            R18 K14 ["Envelope"]
      126 NAMECALL                         R15 R2 K23 ["getText"]
      128 CALL                             R15 3 1
      129 SETTABLEKS                       R15 R14 K17 ["Text"]
      131 GETUPVAL                         R15 7
      132 SETTABLEKS                       R15 R14 K18 ["Schema"]
      134 GETTABLEKS                       R15 R0 K25 ["Keypoint"]
      136 GETTABLEKS                       R15 R15 K14 ["Envelope"]
      138 SETTABLEKS                       R15 R14 K13 ["Value"]
      140 LOADK                            R16 K14 ["Envelope"]
      141 NEWCLOSURE                       R15 P1
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U3
      144 CAPTURE                          VAL R16
      145 SETTABLEKS                       R15 R14 K20 ["OnChanged"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K14 ["Envelope"]
      150 CALL                             R8 3 1
      151 SETTABLEKS                       R8 R7 K8 ["SequenceButtonsContainer"]
      153 GETUPVAL                         R8 4
      154 GETTABLEKS                       R8 R8 K4 ["createElement"]
      156 GETUPVAL                         R9 5
      157 NEWTABLE                         R10 2 0
      159 LOADN                            R11 3
      160 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      162 GETUPVAL                         R11 4
      163 GETTABLEKS                       R11 R11 K6 ["Tag"]
      165 LOADK                            R12 K30 ["X-Right X-Pad X-RowM X-Fit"]
      166 SETTABLE                         R12 R10 R11
      167 DUPTABLE                         R11 K33 [{"Delete", "Save"}]
      168 GETUPVAL                         R12 4
      169 GETTABLEKS                       R12 R12 K4 ["createElement"]
      171 GETUPVAL                         R13 8
      172 DUPTABLE                         R14 K37 [{["LayoutOrder"] = 1, ["TooltipText"], ["LeftIcon"], ["Disabled"], ["OnClick"]}]
      173 LOADK                            R17 K38 ["Control"]
      174 LOADK                            R18 K39 ["DeleteTooltip"]
      175 NAMECALL                         R15 R2 K23 ["getText"]
      177 CALL                             R15 3 1
      178 SETTABLEKS                       R15 R14 K34 ["TooltipText"]
      180 GETUPVAL                         R15 9
      181 GETTABLEKS                       R15 R15 K40 ["delete"]
      183 CALL                             R15 0 1
      184 SETTABLEKS                       R15 R14 K35 ["LeftIcon"]
      186 GETTABLEKS                       R15 R0 K24 ["IsKeypointFixed"]
      188 SETTABLEKS                       R15 R14 K19 ["Disabled"]
      190 GETTABLEKS                       R15 R0 K41 ["OnDelete"]
      192 SETTABLEKS                       R15 R14 K36 ["OnClick"]
      194 CALL                             R12 2 1
      195 SETTABLEKS                       R12 R11 K31 ["Delete"]
      197 GETUPVAL                         R12 4
      198 GETTABLEKS                       R12 R12 K4 ["createElement"]
      200 GETUPVAL                         R13 8
      201 DUPTABLE                         R14 K42 [{["LayoutOrder"] = 2, ["Text"], ["OnClick"]}]
      202 LOADK                            R17 K43 ["Modal"]
      203 LOADK                            R18 K32 ["Save"]
      204 NAMECALL                         R15 R2 K23 ["getText"]
      206 CALL                             R15 3 1
      207 SETTABLEKS                       R15 R14 K17 ["Text"]
      209 GETTABLEKS                       R15 R0 K44 ["OnSave"]
      211 SETTABLEKS                       R15 R14 K36 ["OnClick"]
      213 CALL                             R12 2 1
      214 SETTABLEKS                       R12 R11 K32 ["Save"]
      216 CALL                             R8 3 1
      217 SETTABLEKS                       R8 R7 K9 ["CommitButtonsContainer"]
      219 CALL                             R4 3 -1
      220 RETURN                           R4 -1

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
       26 GETTABLEKS                       R4 R4 K8 ["Dash"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K9 ["join"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Packages"]
       35 GETTABLEKS                       R6 R6 K10 ["Framework"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       40 GETTABLEKS                       R7 R5 K12 ["UI"]
       42 GETTABLEKS                       R7 R7 K13 ["IconButton"]
       44 GETTABLEKS                       R8 R5 K12 ["UI"]
       46 GETTABLEKS                       R8 R8 K14 ["Pane"]
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
       72 GETTABLEKS                       R12 R12 K21 ["Flags"]
       74 GETTABLEKS                       R12 R12 K22 ["getFFlagStyleEditorFixWarnings"]
       76 CALL                             R11 1 1
       77 CALL                             R11 0 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R13 R0 K15 ["Src"]
       82 GETTABLEKS                       R13 R13 K21 ["Flags"]
       84 GETTABLEKS                       R13 R13 K23 ["getFFlagStyleEditorFixSequenceNumPrecision"]
       86 CALL                             R12 1 1
       87 CALL                             R12 0 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R14 R0 K15 ["Src"]
       92 GETTABLEKS                       R14 R14 K24 ["Types"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K15 ["Src"]
       99 GETTABLEKS                       R15 R15 K18 ["Renderers"]
      101 GETTABLEKS                       R15 R15 K19 ["SequenceRenderers"]
      103 GETTABLEKS                       R15 R15 K24 ["Types"]
      105 CALL                             R14 1 1
      106 DUPTABLE                         R15 K32 [{["Type"] = "Number", ["Min"] = 0, ["Max"] = 1, ["Precision"]}]
      107 JUMPIFNOT                        R12 ; [+2]
      108 LOADN                            R16 3
      109 JUMP                             ; [+1]
      110 LOADNIL                          R16
      111 SETTABLEKS                       R16 R15 K31 ["Precision"]
      113 DUPCLOSURE                       R16 K33 [PROTO_2]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R9
      124 RETURN                           R16 1
