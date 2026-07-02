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
       54 DUPTABLE                         R17 K15 [{["ref"], ["tag"] = "size-full-0"}]
       55 SETTABLEKS                       R5 R17 K9 ["ref"]
       57 DUPTABLE                         R18 K17 [{"GridMeasureSizeConstraint"}]
       58 GETUPVAL                         R19 3
       59 GETTABLEKS                       R19 R19 K7 ["createElement"]
       61 LOADK                            R20 K18 ["UISizeConstraint"]
       62 DUPTABLE                         R21 K20 [{"MaxSize"}]
       63 GETIMPORT                        R22 K23 [Vector2.new]
       65 MOVE                             R23 R9
       66 LOADK                            R24 K24 [∞]
       67 CALL                             R22 2 1
       68 SETTABLEKS                       R22 R21 K19 ["MaxSize"]
       70 CALL                             R19 2 1
       71 SETTABLEKS                       R19 R18 K16 ["GridMeasureSizeConstraint"]
       73 CALL                             R15 3 1
       74 SETTABLEKS                       R15 R14 K11 ["GridMeasure"]
       76 GETUPVAL                         R15 3
       77 GETTABLEKS                       R15 R15 K7 ["createElement"]
       79 GETUPVAL                         R16 8
       80 DUPTABLE                         R17 K25 [{"tag"}]
       81 LOADK                            R19 K26 ["size-full-0 auto-y col flex-x-fill %*"]
       82 MOVE                             R21 R10
       83 NAMECALL                         R19 R19 K27 ["format"]
       85 CALL                             R19 2 1
       86 MOVE                             R18 R19
       87 SETTABLEKS                       R18 R17 K8 ["tag"]
       89 DUPTABLE                         R18 K30 [{"GridStyleSheet", "Grid"}]
       90 GETUPVAL                         R19 3
       91 GETTABLEKS                       R19 R19 K7 ["createElement"]
       93 GETUPVAL                         R20 10
       94 DUPTABLE                         R21 K32 [{"breakpoint", "containerWidth"}]
       95 SETTABLEKS                       R6 R21 K3 ["breakpoint"]
       97 GETTABLEKS                       R22 R7 K2 ["X"]
       99 SETTABLEKS                       R22 R21 K31 ["containerWidth"]
      101 CALL                             R19 2 1
      102 SETTABLEKS                       R19 R18 K28 ["GridStyleSheet"]
      104 GETUPVAL                         R19 3
      105 GETTABLEKS                       R19 R19 K7 ["createElement"]
      107 GETUPVAL                         R20 8
      108 DUPTABLE                         R21 K36 [{["tag"] = "auto-y", ["Size"], ["layout"]}]
      109 GETIMPORT                        R22 K39 [UDim2.fromOffset]
      111 GETTABLEKS                       R23 R7 K2 ["X"]
      113 LOADN                            R24 0
      114 CALL                             R22 2 1
      115 SETTABLEKS                       R22 R21 K34 ["Size"]
      117 DUPTABLE                         R22 K45 [{"Padding", "SortOrder", "FillDirection", "HorizontalFlex", "Wraps"}]
      118 GETTABLEKS                       R24 R2 K44 ["Wraps"]
      120 JUMPIF                           R24 ; [+7]
      121 GETIMPORT                        R23 K47 [UDim.new]
      123 LOADN                            R24 0
      124 GETTABLEKS                       R25 R8 K48 ["gutterWidth"]
      126 CALL                             R23 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R23
      129 SETTABLEKS                       R23 R22 K40 ["Padding"]
      131 GETTABLEKS                       R23 R2 K41 ["SortOrder"]
      133 SETTABLEKS                       R23 R22 K41 ["SortOrder"]
      135 GETIMPORT                        R23 K51 [Enum.FillDirection.Horizontal]
      137 SETTABLEKS                       R23 R22 K42 ["FillDirection"]
      139 GETTABLEKS                       R24 R2 K44 ["Wraps"]
      141 JUMPIFNOT                        R24 ; [+3]
      142 GETIMPORT                        R23 K54 [Enum.UIFlexAlignment.SpaceBetween]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R23
      146 SETTABLEKS                       R23 R22 K43 ["HorizontalFlex"]
      148 GETTABLEKS                       R23 R2 K44 ["Wraps"]
      150 SETTABLEKS                       R23 R22 K44 ["Wraps"]
      152 SETTABLEKS                       R22 R21 K35 ["layout"]
      154 DUPTABLE                         R22 K57 [{"GridSizeConstraint", "GridMargin"}]
      155 GETUPVAL                         R23 3
      156 GETTABLEKS                       R23 R23 K7 ["createElement"]
      158 LOADK                            R24 K18 ["UISizeConstraint"]
      159 DUPTABLE                         R25 K20 [{"MaxSize"}]
      160 GETIMPORT                        R26 K23 [Vector2.new]
      162 MOVE                             R27 R9
      163 LOADK                            R28 K24 [∞]
      164 CALL                             R26 2 1
      165 SETTABLEKS                       R26 R25 K19 ["MaxSize"]
      167 CALL                             R23 2 1
      168 SETTABLEKS                       R23 R22 K55 ["GridSizeConstraint"]
      170 GETUPVAL                         R23 3
      171 GETTABLEKS                       R23 R23 K7 ["createElement"]
      173 LOADK                            R24 K58 ["UIPadding"]
      174 DUPTABLE                         R25 K61 [{"PaddingLeft", "PaddingRight"}]
      175 GETIMPORT                        R26 K47 [UDim.new]
      177 LOADN                            R27 0
      178 GETTABLEKS                       R28 R8 K62 ["margin"]
      180 CALL                             R26 2 1
      181 SETTABLEKS                       R26 R25 K59 ["PaddingLeft"]
      183 GETIMPORT                        R26 K47 [UDim.new]
      185 LOADN                            R27 0
      186 GETTABLEKS                       R28 R8 K62 ["margin"]
      188 CALL                             R26 2 1
      189 SETTABLEKS                       R26 R25 K60 ["PaddingRight"]
      191 CALL                             R23 2 1
      192 SETTABLEKS                       R23 R22 K56 ["GridMargin"]
      194 GETTABLEKS                       R23 R2 K63 ["children"]
      196 CALL                             R19 4 1
      197 SETTABLEKS                       R19 R18 K29 ["Grid"]
      199 CALL                             R15 3 1
      200 SETTABLEKS                       R15 R14 K12 ["GridAlignment"]
      202 CALL                             R11 3 -1
      203 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["Breakpoint"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["GridStyleSheet"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K10 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Providers"]
       34 GETTABLEKS                       R6 R6 K12 ["Responsive"]
       36 GETTABLEKS                       R6 R6 K13 ["ResponsiveContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Components"]
       43 GETTABLEKS                       R7 R7 K15 ["Types"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K14 ["Components"]
       50 GETTABLEKS                       R8 R8 K16 ["View"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K17 ["Utility"]
       57 GETTABLEKS                       R9 R9 K18 ["getGridMetrics"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K11 ["Providers"]
       64 GETTABLEKS                       R10 R10 K12 ["Responsive"]
       66 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       68 GETTABLEKS                       R10 R10 K20 ["useBreakpoint"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K11 ["Providers"]
       75 GETTABLEKS                       R11 R11 K12 ["Responsive"]
       77 GETTABLEKS                       R11 R11 K21 ["useResponsive"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K17 ["Utility"]
       84 GETTABLEKS                       R12 R12 K22 ["withCommonProps"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R0 K17 ["Utility"]
       91 GETTABLEKS                       R13 R13 K23 ["withDefaults"]
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
      108 DUPTABLE                         R14 K43 [{["tag"] = "size-full-0 auto-y", ["align"], ["SortOrder"], ["Wraps"] = True, ["testId"] = "--foundation-grid"}]
      109 GETIMPORT                        R15 K27 [Enum.ItemLineAlignment.Start]
      111 SETTABLEKS                       R15 R14 K37 ["align"]
      113 GETIMPORT                        R15 K45 [Enum.SortOrder.LayoutOrder]
      115 SETTABLEKS                       R15 R14 K38 ["SortOrder"]
      117 DUPCLOSURE                       R15 K46 [PROTO_0]
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R3
      129 GETTABLEKS                       R16 R4 K47 ["memo"]
      131 GETTABLEKS                       R17 R4 K48 ["forwardRef"]
      133 MOVE                             R18 R15
      134 CALL                             R17 1 -1
      135 CALL                             R16 -1 -1
      136 RETURN                           R16 -1
