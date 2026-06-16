PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 LOADNIL                          R5
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 4
       12 MOVE                             R7 R4
       13 CALL                             R6 1 2
       14 GETUPVAL                         R8 5
       15 GETTABLEKS                       R9 R3 K1 ["config"]
       17 MOVE                             R10 R6
       18 GETTABLEKS                       R11 R7 K2 ["X"]
       20 CALL                             R8 3 1
       21 GETTABLEKS                       R10 R3 K1 ["config"]
       23 GETTABLEKS                       R10 R10 K3 ["breakpoint"]
       25 GETTABLEKS                       R10 R10 K4 ["widths"]
       27 GETUPVAL                         R11 6
       28 GETTABLEKS                       R11 R11 K5 ["XLarge"]
       30 GETTABLE                         R9 R10 R11
       31 GETUPVAL                         R11 7
       32 GETTABLEKS                       R12 R2 K6 ["align"]
       34 GETTABLE                         R10 R11 R12
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K7 ["createElement"]
       38 GETUPVAL                         R12 8
       39 GETUPVAL                         R13 9
       40 MOVE                             R14 R2
       41 DUPTABLE                         R15 K10 [{"tag", "ref"}]
       42 GETTABLEKS                       R16 R2 K8 ["tag"]
       44 SETTABLEKS                       R16 R15 K8 ["tag"]
       46 SETTABLEKS                       R1 R15 K9 ["ref"]
       48 CALL                             R13 2 1
       49 DUPTABLE                         R14 K13 [{"GridMeasure", "GridAlignment"}]
       50 GETUPVAL                         R15 3
       51 GETTABLEKS                       R15 R15 K7 ["createElement"]
       53 GETUPVAL                         R16 8
       54 DUPTABLE                         R17 K14 [{"ref", "tag"}]
       55 SETTABLEKS                       R5 R17 K9 ["ref"]
       57 LOADK                            R18 K15 ["size-full-0"]
       58 SETTABLEKS                       R18 R17 K8 ["tag"]
       60 DUPTABLE                         R18 K17 [{"GridMeasureSizeConstraint"}]
       61 GETUPVAL                         R19 3
       62 GETTABLEKS                       R19 R19 K7 ["createElement"]
       64 LOADK                            R20 K18 ["UISizeConstraint"]
       65 DUPTABLE                         R21 K20 [{"MaxSize"}]
       66 GETIMPORT                        R22 K23 [Vector2.new]
       68 MOVE                             R23 R9
       69 LOADK                            R24 K24 [∞]
       70 CALL                             R22 2 1
       71 SETTABLEKS                       R22 R21 K19 ["MaxSize"]
       73 CALL                             R19 2 1
       74 SETTABLEKS                       R19 R18 K16 ["GridMeasureSizeConstraint"]
       76 CALL                             R15 3 1
       77 SETTABLEKS                       R15 R14 K11 ["GridMeasure"]
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R15 R15 K7 ["createElement"]
       82 GETUPVAL                         R16 8
       83 DUPTABLE                         R17 K25 [{"tag"}]
       84 LOADK                            R19 K26 ["size-full-0 auto-y col flex-x-fill %*"]
       85 MOVE                             R21 R10
       86 NAMECALL                         R19 R19 K27 ["format"]
       88 CALL                             R19 2 1
       89 MOVE                             R18 R19
       90 SETTABLEKS                       R18 R17 K8 ["tag"]
       92 DUPTABLE                         R18 K30 [{"GridStyleSheet", "Grid"}]
       93 GETUPVAL                         R19 3
       94 GETTABLEKS                       R19 R19 K7 ["createElement"]
       96 GETUPVAL                         R20 10
       97 DUPTABLE                         R21 K32 [{"breakpoint", "containerWidth"}]
       98 SETTABLEKS                       R6 R21 K3 ["breakpoint"]
      100 GETTABLEKS                       R22 R7 K2 ["X"]
      102 SETTABLEKS                       R22 R21 K31 ["containerWidth"]
      104 CALL                             R19 2 1
      105 SETTABLEKS                       R19 R18 K28 ["GridStyleSheet"]
      107 GETUPVAL                         R19 3
      108 GETTABLEKS                       R19 R19 K7 ["createElement"]
      110 GETUPVAL                         R20 8
      111 DUPTABLE                         R21 K35 [{"tag", "Size", "layout"}]
      112 LOADK                            R22 K36 ["auto-y"]
      113 SETTABLEKS                       R22 R21 K8 ["tag"]
      115 GETIMPORT                        R22 K39 [UDim2.fromOffset]
      117 GETTABLEKS                       R23 R7 K2 ["X"]
      119 LOADN                            R24 0
      120 CALL                             R22 2 1
      121 SETTABLEKS                       R22 R21 K33 ["Size"]
      123 DUPTABLE                         R22 K45 [{"Padding", "SortOrder", "FillDirection", "HorizontalFlex", "Wraps"}]
      124 GETTABLEKS                       R24 R2 K44 ["Wraps"]
      126 JUMPIF                           R24 ; [+7]
      127 GETIMPORT                        R23 K47 [UDim.new]
      129 LOADN                            R24 0
      130 GETTABLEKS                       R25 R8 K48 ["gutterWidth"]
      132 CALL                             R23 2 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R23
      135 SETTABLEKS                       R23 R22 K40 ["Padding"]
      137 GETTABLEKS                       R23 R2 K41 ["SortOrder"]
      139 SETTABLEKS                       R23 R22 K41 ["SortOrder"]
      141 GETIMPORT                        R23 K51 [Enum.FillDirection.Horizontal]
      143 SETTABLEKS                       R23 R22 K42 ["FillDirection"]
      145 GETTABLEKS                       R24 R2 K44 ["Wraps"]
      147 JUMPIFNOT                        R24 ; [+3]
      148 GETIMPORT                        R23 K54 [Enum.UIFlexAlignment.SpaceBetween]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R23
      152 SETTABLEKS                       R23 R22 K43 ["HorizontalFlex"]
      154 GETTABLEKS                       R23 R2 K44 ["Wraps"]
      156 SETTABLEKS                       R23 R22 K44 ["Wraps"]
      158 SETTABLEKS                       R22 R21 K34 ["layout"]
      160 DUPTABLE                         R22 K57 [{"GridSizeConstraint", "GridMargin"}]
      161 GETUPVAL                         R23 3
      162 GETTABLEKS                       R23 R23 K7 ["createElement"]
      164 LOADK                            R24 K18 ["UISizeConstraint"]
      165 DUPTABLE                         R25 K20 [{"MaxSize"}]
      166 GETIMPORT                        R26 K23 [Vector2.new]
      168 MOVE                             R27 R9
      169 LOADK                            R28 K24 [∞]
      170 CALL                             R26 2 1
      171 SETTABLEKS                       R26 R25 K19 ["MaxSize"]
      173 CALL                             R23 2 1
      174 SETTABLEKS                       R23 R22 K55 ["GridSizeConstraint"]
      176 GETUPVAL                         R23 3
      177 GETTABLEKS                       R23 R23 K7 ["createElement"]
      179 LOADK                            R24 K58 ["UIPadding"]
      180 DUPTABLE                         R25 K61 [{"PaddingLeft", "PaddingRight"}]
      181 GETIMPORT                        R26 K47 [UDim.new]
      183 LOADN                            R27 0
      184 GETTABLEKS                       R28 R8 K62 ["margin"]
      186 CALL                             R26 2 1
      187 SETTABLEKS                       R26 R25 K59 ["PaddingLeft"]
      189 GETIMPORT                        R26 K47 [UDim.new]
      191 LOADN                            R27 0
      192 GETTABLEKS                       R28 R8 K62 ["margin"]
      194 CALL                             R26 2 1
      195 SETTABLEKS                       R26 R25 K60 ["PaddingRight"]
      197 CALL                             R23 2 1
      198 SETTABLEKS                       R23 R22 K56 ["GridMargin"]
      200 GETTABLEKS                       R23 R2 K63 ["children"]
      202 CALL                             R19 4 1
      203 SETTABLEKS                       R19 R18 K29 ["Grid"]
      205 CALL                             R15 3 1
      206 SETTABLEKS                       R15 R14 K12 ["GridAlignment"]
      208 CALL                             R11 3 -1
      209 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["withDefaults"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Utility"]
       39 GETTABLEKS                       R7 R7 K13 ["withCommonProps"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["Responsive"]
       48 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       50 GETTABLEKS                       R8 R8 K17 ["useBreakpoint"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K11 ["Utility"]
       57 GETTABLEKS                       R9 R9 K18 ["getGridMetrics"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K14 ["Providers"]
       64 GETTABLEKS                       R10 R10 K15 ["Responsive"]
       66 GETTABLEKS                       R10 R10 K19 ["useResponsive"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K20 ["Enums"]
       73 GETTABLEKS                       R11 R11 K21 ["Breakpoint"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETIMPORT                        R12 K1 [script]
       80 GETTABLEKS                       R12 R12 K4 ["Parent"]
       82 GETTABLEKS                       R12 R12 K22 ["GridStyleSheet"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R0 K14 ["Providers"]
       89 GETTABLEKS                       R13 R13 K15 ["Responsive"]
       91 GETTABLEKS                       R13 R13 K23 ["ResponsiveContext"]
       93 CALL                             R12 1 1
       94 NEWTABLE                         R13 4 0
       96 GETIMPORT                        R14 K27 [Enum.ItemLineAlignment.Start]
       98 LOADK                            R15 K28 ["items-start"]
       99 SETTABLE                         R15 R13 R14
      100 GETIMPORT                        R14 K30 [Enum.ItemLineAlignment.Center]
      102 LOADK                            R15 K31 ["items-center"]
      103 SETTABLE                         R15 R13 R14
      104 GETIMPORT                        R14 K33 [Enum.ItemLineAlignment.End]
      106 LOADK                            R15 K34 ["items-end"]
      107 SETTABLE                         R15 R13 R14
      108 DUPTABLE                         R14 K40 [{"tag", "align", "SortOrder", "Wraps", "testId"}]
      109 LOADK                            R15 K41 ["size-full-0 auto-y"]
      110 SETTABLEKS                       R15 R14 K35 ["tag"]
      112 GETIMPORT                        R15 K27 [Enum.ItemLineAlignment.Start]
      114 SETTABLEKS                       R15 R14 K36 ["align"]
      116 GETIMPORT                        R15 K43 [Enum.SortOrder.LayoutOrder]
      118 SETTABLEKS                       R15 R14 K37 ["SortOrder"]
      120 LOADB                            R15 1
      121 SETTABLEKS                       R15 R14 K38 ["Wraps"]
      123 LOADK                            R15 K44 ["--foundation-grid"]
      124 SETTABLEKS                       R15 R14 K39 ["testId"]
      126 DUPCLOSURE                       R15 K45 [PROTO_0]
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R11
      138 GETTABLEKS                       R16 R2 K46 ["memo"]
      140 GETTABLEKS                       R17 R2 K47 ["forwardRef"]
      142 MOVE                             R18 R15
      143 CALL                             R17 1 -1
      144 CALL                             R16 -1 -1
      145 RETURN                           R16 -1
