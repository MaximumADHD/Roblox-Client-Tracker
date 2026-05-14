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
       57 DUPTABLE                         R14 K20 [{"LayoutOrder", "Text", "Schema", "Disabled", "Value", "OnChanged"}]
       58 LOADN                            R15 1
       59 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       61 LOADK                            R17 K21 ["Label"]
       62 LOADK                            R18 K12 ["Time"]
       63 NAMECALL                         R15 R2 K22 ["getText"]
       65 CALL                             R15 3 1
       66 SETTABLEKS                       R15 R14 K16 ["Text"]
       68 GETUPVAL                         R15 7
       69 SETTABLEKS                       R15 R14 K17 ["Schema"]
       71 GETTABLEKS                       R15 R0 K23 ["IsKeypointFixed"]
       73 SETTABLEKS                       R15 R14 K18 ["Disabled"]
       75 GETTABLEKS                       R15 R0 K24 ["Keypoint"]
       77 GETTABLEKS                       R15 R15 K12 ["Time"]
       79 SETTABLEKS                       R15 R14 K13 ["Value"]
       81 LOADK                            R16 K12 ["Time"]
       82 NEWCLOSURE                       R15 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R16
       86 SETTABLEKS                       R15 R14 K19 ["OnChanged"]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K12 ["Time"]
       91 GETUPVAL                         R12 4
       92 GETTABLEKS                       R12 R12 K4 ["createElement"]
       94 GETUPVAL                         R13 6
       95 DUPTABLE                         R14 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
       96 LOADN                            R15 2
       97 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       99 LOADK                            R17 K21 ["Label"]
      100 LOADK                            R18 K13 ["Value"]
      101 NAMECALL                         R15 R2 K22 ["getText"]
      103 CALL                             R15 3 1
      104 SETTABLEKS                       R15 R14 K16 ["Text"]
      106 GETUPVAL                         R15 7
      107 SETTABLEKS                       R15 R14 K17 ["Schema"]
      109 GETTABLEKS                       R15 R0 K24 ["Keypoint"]
      111 GETTABLEKS                       R15 R15 K13 ["Value"]
      113 SETTABLEKS                       R15 R14 K13 ["Value"]
      115 LOADK                            R16 K13 ["Value"]
      116 NEWCLOSURE                       R15 P1
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          VAL R16
      120 SETTABLEKS                       R15 R14 K19 ["OnChanged"]
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K13 ["Value"]
      125 GETUPVAL                         R12 4
      126 GETTABLEKS                       R12 R12 K4 ["createElement"]
      128 GETUPVAL                         R13 6
      129 DUPTABLE                         R14 K25 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
      130 LOADN                            R15 3
      131 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      133 LOADK                            R17 K21 ["Label"]
      134 LOADK                            R18 K14 ["Envelope"]
      135 NAMECALL                         R15 R2 K22 ["getText"]
      137 CALL                             R15 3 1
      138 SETTABLEKS                       R15 R14 K16 ["Text"]
      140 GETUPVAL                         R15 7
      141 SETTABLEKS                       R15 R14 K17 ["Schema"]
      143 GETTABLEKS                       R15 R0 K24 ["Keypoint"]
      145 GETTABLEKS                       R15 R15 K14 ["Envelope"]
      147 SETTABLEKS                       R15 R14 K13 ["Value"]
      149 LOADK                            R16 K14 ["Envelope"]
      150 NEWCLOSURE                       R15 P1
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          VAL R16
      154 SETTABLEKS                       R15 R14 K19 ["OnChanged"]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K14 ["Envelope"]
      159 CALL                             R8 3 1
      160 SETTABLEKS                       R8 R7 K8 ["SequenceButtonsContainer"]
      162 GETUPVAL                         R8 4
      163 GETTABLEKS                       R8 R8 K4 ["createElement"]
      165 GETUPVAL                         R9 5
      166 NEWTABLE                         R10 2 0
      168 LOADN                            R11 3
      169 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      171 GETUPVAL                         R11 4
      172 GETTABLEKS                       R11 R11 K6 ["Tag"]
      174 LOADK                            R12 K26 ["X-Right X-Pad X-RowM X-Fit"]
      175 SETTABLE                         R12 R10 R11
      176 DUPTABLE                         R11 K29 [{"Delete", "Save"}]
      177 GETUPVAL                         R12 4
      178 GETTABLEKS                       R12 R12 K4 ["createElement"]
      180 GETUPVAL                         R13 8
      181 DUPTABLE                         R14 K33 [{"LayoutOrder", "TooltipText", "LeftIcon", "Disabled", "OnClick"}]
      182 LOADN                            R15 1
      183 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      185 LOADK                            R17 K34 ["Control"]
      186 LOADK                            R18 K35 ["DeleteTooltip"]
      187 NAMECALL                         R15 R2 K22 ["getText"]
      189 CALL                             R15 3 1
      190 SETTABLEKS                       R15 R14 K30 ["TooltipText"]
      192 GETUPVAL                         R15 9
      193 GETTABLEKS                       R15 R15 K36 ["delete"]
      195 CALL                             R15 0 1
      196 SETTABLEKS                       R15 R14 K31 ["LeftIcon"]
      198 GETTABLEKS                       R15 R0 K23 ["IsKeypointFixed"]
      200 SETTABLEKS                       R15 R14 K18 ["Disabled"]
      202 GETTABLEKS                       R15 R0 K37 ["OnDelete"]
      204 SETTABLEKS                       R15 R14 K32 ["OnClick"]
      206 CALL                             R12 2 1
      207 SETTABLEKS                       R12 R11 K27 ["Delete"]
      209 GETUPVAL                         R12 4
      210 GETTABLEKS                       R12 R12 K4 ["createElement"]
      212 GETUPVAL                         R13 8
      213 DUPTABLE                         R14 K38 [{"LayoutOrder", "Text", "OnClick"}]
      214 LOADN                            R15 2
      215 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      217 LOADK                            R17 K39 ["Modal"]
      218 LOADK                            R18 K28 ["Save"]
      219 NAMECALL                         R15 R2 K22 ["getText"]
      221 CALL                             R15 3 1
      222 SETTABLEKS                       R15 R14 K16 ["Text"]
      224 GETTABLEKS                       R15 R0 K40 ["OnSave"]
      226 SETTABLEKS                       R15 R14 K32 ["OnClick"]
      228 CALL                             R12 2 1
      229 SETTABLEKS                       R12 R11 K28 ["Save"]
      231 CALL                             R8 3 1
      232 SETTABLEKS                       R8 R7 K9 ["CommitButtonsContainer"]
      234 CALL                             R4 3 -1
      235 RETURN                           R4 -1

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
      106 DUPTABLE                         R15 K29 [{"Type", "Min", "Max", "Precision"}]
      107 LOADK                            R16 K30 ["Number"]
      108 SETTABLEKS                       R16 R15 K25 ["Type"]
      110 LOADN                            R16 0
      111 SETTABLEKS                       R16 R15 K26 ["Min"]
      113 LOADN                            R16 1
      114 SETTABLEKS                       R16 R15 K27 ["Max"]
      116 JUMPIFNOT                        R12 ; [+2]
      117 LOADN                            R16 3
      118 JUMP                             ; [+1]
      119 LOADNIL                          R16
      120 SETTABLEKS                       R16 R15 K28 ["Precision"]
      122 DUPCLOSURE                       R16 K31 [PROTO_2]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R9
      133 RETURN                           R16 1
