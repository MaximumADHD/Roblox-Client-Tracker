MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADN                            R1 135
        4 SETTABLEKS                       R1 R0 K0 ["widgetHeaderHeight"]
        6 LOADN                            R1 32
        7 SETTABLEKS                       R1 R0 K1 ["widgetHeaderLineHeight"]
        9 LOADN                            R1 18
       10 SETTABLEKS                       R1 R0 K2 ["inputTextSize"]
       12 LOADN                            R1 16
       13 SETTABLEKS                       R1 R0 K3 ["labelTextSize"]
       15 LOADN                            R1 12
       16 SETTABLEKS                       R1 R0 K4 ["confirmationDialogTextSize"]
       18 LOADN                            R1 17
       19 SETTABLEKS                       R1 R0 K5 ["resultTextSize"]
       21 LOADN                            R1 17
       22 SETTABLEKS                       R1 R0 K6 ["lineNumberLabelTextSize"]
       24 LOADN                            R1 17
       25 SETTABLEKS                       R1 R0 K7 ["matchNumberLabelTextSize"]
       27 GETIMPORT                        R1 K11 [Enum.Font.BuilderSans]
       29 SETTABLEKS                       R1 R0 K12 ["defaultFont"]
       31 GETIMPORT                        R1 K14 [Enum.Font.BuilderSansBold]
       33 SETTABLEKS                       R1 R0 K15 ["defaultFontBold"]
       35 LOADK                            R1 K16 [1.26]
       36 SETTABLEKS                       R1 R0 K17 ["defaultFontScale"]
       38 LOADN                            R1 6
       39 SETTABLEKS                       R1 R0 K18 ["padding"]
       41 LOADN                            R1 8
       42 SETTABLEKS                       R1 R0 K19 ["paddingSmall"]
       44 LOADN                            R1 4
       45 SETTABLEKS                       R1 R0 K20 ["paddingXSmall"]
       47 LOADN                            R1 2
       48 SETTABLEKS                       R1 R0 K21 ["paddingXXSmall"]
       50 LOADK                            R1 K22 [0.5]
       51 SETTABLEKS                       R1 R0 K23 ["disabledTransparency"]
       53 LOADK                            R1 K24 [0.85]
       54 SETTABLEKS                       R1 R0 K25 ["hoveredTransparency"]
       56 LOADK                            R1 K26 [0.8]
       57 SETTABLEKS                       R1 R0 K27 ["pressedTransparency"]
       59 LOADN                            R1 5
       60 SETTABLEKS                       R1 R0 K28 ["cornerRadius"]
       62 LOADN                            R1 6
       63 SETTABLEKS                       R1 R0 K29 ["radiusSmall"]
       65 LOADN                            R1 8
       66 SETTABLEKS                       R1 R0 K30 ["radiusMedium"]
       68 LOADN                            R1 28
       69 SETTABLEKS                       R1 R0 K31 ["searchBarHeight"]
       71 GETTABLEKS                       R1 R0 K20 ["paddingXSmall"]
       73 SETTABLEKS                       R1 R0 K32 ["searchBarPadding"]
       75 GETTABLEKS                       R2 R0 K31 ["searchBarHeight"]
       77 GETTABLEKS                       R3 R0 K20 ["paddingXSmall"]
       79 ADD                              R1 R2 R3
       80 SETTABLEKS                       R1 R0 K33 ["minSearchHeaderHeight"]
       82 GETTABLEKS                       R1 R0 K31 ["searchBarHeight"]
       84 SETTABLEKS                       R1 R0 K34 ["iconButtonSize"]
       86 LOADN                            R1 100
       87 SETTABLEKS                       R1 R0 K35 ["findResultsMinTextWidth"]
       89 LOADN                            R1 150
       90 SETTABLEKS                       R1 R0 K36 ["findResultsMaxTextWidth"]
       92 LOADN                            R1 59
       93 SETTABLEKS                       R1 R0 K37 ["minReplaceButtonWidth"]
       95 LOADK                            R1 K38 [75.5]
       96 SETTABLEKS                       R1 R0 K39 ["minReplaceAllButtonWidth"]
       98 LOADN                            R1 210
       99 SETTABLEKS                       R1 R0 K40 ["replaceAllConfirmationLabelWidth"]
      101 LOADN                            R1 10
      102 SETTABLEKS                       R1 R0 K41 ["scrollBarThickness"]
      104 LOADN                            R1 4
      105 SETTABLEKS                       R1 R0 K42 ["minNameLabelWidth"]
      107 LOADN                            R1 12
      108 SETTABLEKS                       R1 R0 K43 ["indentWidth"]
      110 LOADN                            R1 12
      111 SETTABLEKS                       R1 R0 K44 ["iconSizeSmall"]
      113 LOADN                            R1 16
      114 SETTABLEKS                       R1 R0 K45 ["iconSize"]
      116 LOADN                            R1 16
      117 SETTABLEKS                       R1 R0 K46 ["fieldSize"]
      119 LOADN                            R1 24
      120 SETTABLEKS                       R1 R0 K47 ["resultRowHeight"]
      122 LOADK                            R1 K48 [0.16]
      123 SETTABLEKS                       R1 R0 K49 ["arrowImageTransparency"]
      125 LOADN                            R1 10
      126 SETTABLEKS                       R1 R0 K50 ["resultListScrollBarThickness"]
      128 LOADN                            R1 6
      129 SETTABLEKS                       R1 R0 K51 ["circleOffset"]
      131 DUPTABLE                         R1 K54 [{"Dark", "Light"}]
      132 DUPTABLE                         R2 K58 [{"find", "replaced", "replacement"}]
      133 GETIMPORT                        R3 K61 [Color3.fromHex]
      135 LOADK                            R4 K62 ["#473200"]
      136 CALL                             R3 1 1
      137 SETTABLEKS                       R3 R2 K55 ["find"]
      139 GETIMPORT                        R3 K61 [Color3.fromHex]
      141 LOADK                            R4 K63 ["#720000"]
      142 CALL                             R3 1 1
      143 SETTABLEKS                       R3 R2 K56 ["replaced"]
      145 GETIMPORT                        R3 K61 [Color3.fromHex]
      147 LOADK                            R4 K64 ["#0C3D25"]
      148 CALL                             R3 1 1
      149 SETTABLEKS                       R3 R2 K57 ["replacement"]
      151 SETTABLEKS                       R2 R1 K52 ["Dark"]
      153 DUPTABLE                         R2 K58 [{"find", "replaced", "replacement"}]
      154 GETIMPORT                        R3 K61 [Color3.fromHex]
      156 LOADK                            R4 K65 ["#F9DE6F"]
      157 CALL                             R3 1 1
      158 SETTABLEKS                       R3 R2 K55 ["find"]
      160 GETIMPORT                        R3 K61 [Color3.fromHex]
      162 LOADK                            R4 K66 ["#FFBEB0"]
      163 CALL                             R3 1 1
      164 SETTABLEKS                       R3 R2 K56 ["replaced"]
      166 GETIMPORT                        R3 K61 [Color3.fromHex]
      168 LOADK                            R4 K67 ["#68F9A9"]
      169 CALL                             R3 1 1
      170 SETTABLEKS                       R3 R2 K57 ["replacement"]
      172 SETTABLEKS                       R2 R1 K53 ["Light"]
      174 SETTABLEKS                       R1 R0 K68 ["RichTagColors"]
      176 RETURN                           R0 1
