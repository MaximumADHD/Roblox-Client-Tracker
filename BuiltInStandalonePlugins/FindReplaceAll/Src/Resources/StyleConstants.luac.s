MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["defineFlags"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 64 0
       18 LOADN                            R3 135
       19 SETTABLEKS                       R3 R2 K9 ["widgetHeaderHeight"]
       21 LOADN                            R3 32
       22 SETTABLEKS                       R3 R2 K10 ["widgetHeaderLineHeight"]
       24 LOADN                            R3 18
       25 SETTABLEKS                       R3 R2 K11 ["inputTextSize"]
       27 LOADN                            R3 16
       28 SETTABLEKS                       R3 R2 K12 ["labelTextSize"]
       30 LOADN                            R3 12
       31 SETTABLEKS                       R3 R2 K13 ["confirmationDialogTextSize"]
       33 LOADN                            R3 17
       34 SETTABLEKS                       R3 R2 K14 ["resultTextSize"]
       36 LOADN                            R3 17
       37 SETTABLEKS                       R3 R2 K15 ["lineNumberLabelTextSize"]
       39 LOADN                            R3 17
       40 SETTABLEKS                       R3 R2 K16 ["matchNumberLabelTextSize"]
       42 GETTABLEKS                       R4 R1 K17 ["getFFlagFindReplaceAllUseBuilderFont"]
       44 CALL                             R4 0 1
       45 JUMPIFNOT                        R4 ; [+3]
       46 GETIMPORT                        R3 K21 [Enum.Font.BuilderSans]
       48 JUMP                             ; [+2]
       49 GETIMPORT                        R3 K23 [Enum.Font.SourceSans]
       51 SETTABLEKS                       R3 R2 K24 ["defaultFont"]
       53 GETTABLEKS                       R4 R1 K17 ["getFFlagFindReplaceAllUseBuilderFont"]
       55 CALL                             R4 0 1
       56 JUMPIFNOT                        R4 ; [+3]
       57 GETIMPORT                        R3 K26 [Enum.Font.BuilderSansBold]
       59 JUMP                             ; [+2]
       60 GETIMPORT                        R3 K28 [Enum.Font.SourceSansBold]
       62 SETTABLEKS                       R3 R2 K29 ["defaultFontBold"]
       64 LOADK                            R3 K30 [1.26]
       65 SETTABLEKS                       R3 R2 K31 ["defaultFontScale"]
       67 LOADN                            R3 6
       68 SETTABLEKS                       R3 R2 K32 ["padding"]
       70 LOADN                            R3 8
       71 SETTABLEKS                       R3 R2 K33 ["paddingSmall"]
       73 LOADN                            R3 4
       74 SETTABLEKS                       R3 R2 K34 ["paddingXSmall"]
       76 LOADN                            R3 2
       77 SETTABLEKS                       R3 R2 K35 ["paddingXXSmall"]
       79 LOADK                            R3 K36 [0.5]
       80 SETTABLEKS                       R3 R2 K37 ["disabledTransparency"]
       82 LOADK                            R3 K38 [0.85]
       83 SETTABLEKS                       R3 R2 K39 ["hoveredTransparency"]
       85 LOADK                            R3 K40 [0.8]
       86 SETTABLEKS                       R3 R2 K41 ["pressedTransparency"]
       88 LOADN                            R3 5
       89 SETTABLEKS                       R3 R2 K42 ["cornerRadius"]
       91 LOADN                            R3 6
       92 SETTABLEKS                       R3 R2 K43 ["radiusSmall"]
       94 LOADN                            R3 8
       95 SETTABLEKS                       R3 R2 K44 ["radiusMedium"]
       97 LOADN                            R3 28
       98 SETTABLEKS                       R3 R2 K45 ["searchBarHeight"]
      100 GETTABLEKS                       R3 R2 K34 ["paddingXSmall"]
      102 SETTABLEKS                       R3 R2 K46 ["searchBarPadding"]
      104 GETTABLEKS                       R4 R2 K45 ["searchBarHeight"]
      106 GETTABLEKS                       R5 R2 K34 ["paddingXSmall"]
      108 ADD                              R3 R4 R5
      109 SETTABLEKS                       R3 R2 K47 ["minSearchHeaderHeight"]
      111 GETTABLEKS                       R3 R2 K45 ["searchBarHeight"]
      113 SETTABLEKS                       R3 R2 K48 ["iconButtonSize"]
      115 LOADN                            R3 100
      116 SETTABLEKS                       R3 R2 K49 ["findResultsMinTextWidth"]
      118 LOADN                            R3 150
      119 SETTABLEKS                       R3 R2 K50 ["findResultsMaxTextWidth"]
      121 LOADN                            R3 59
      122 SETTABLEKS                       R3 R2 K51 ["minReplaceButtonWidth"]
      124 LOADK                            R3 K52 [75.5]
      125 SETTABLEKS                       R3 R2 K53 ["minReplaceAllButtonWidth"]
      127 LOADN                            R3 210
      128 SETTABLEKS                       R3 R2 K54 ["replaceAllConfirmationLabelWidth"]
      130 LOADN                            R3 10
      131 SETTABLEKS                       R3 R2 K55 ["scrollBarThickness"]
      133 LOADN                            R3 4
      134 SETTABLEKS                       R3 R2 K56 ["minNameLabelWidth"]
      136 LOADN                            R3 12
      137 SETTABLEKS                       R3 R2 K57 ["indentWidth"]
      139 LOADN                            R3 12
      140 SETTABLEKS                       R3 R2 K58 ["iconSizeSmall"]
      142 LOADN                            R3 16
      143 SETTABLEKS                       R3 R2 K59 ["iconSize"]
      145 LOADN                            R3 16
      146 SETTABLEKS                       R3 R2 K60 ["fieldSize"]
      148 LOADN                            R3 24
      149 SETTABLEKS                       R3 R2 K61 ["resultRowHeight"]
      151 LOADK                            R3 K62 [0.16]
      152 SETTABLEKS                       R3 R2 K63 ["arrowImageTransparency"]
      154 LOADN                            R3 10
      155 SETTABLEKS                       R3 R2 K64 ["resultListScrollBarThickness"]
      157 LOADN                            R3 6
      158 SETTABLEKS                       R3 R2 K65 ["circleOffset"]
      160 DUPTABLE                         R3 K68 [{"Dark", "Light"}]
      161 DUPTABLE                         R4 K72 [{"find", "replaced", "replacement"}]
      162 GETIMPORT                        R5 K75 [Color3.fromHex]
      164 LOADK                            R6 K76 ["#473200"]
      165 CALL                             R5 1 1
      166 SETTABLEKS                       R5 R4 K69 ["find"]
      168 GETIMPORT                        R5 K75 [Color3.fromHex]
      170 LOADK                            R6 K77 ["#720000"]
      171 CALL                             R5 1 1
      172 SETTABLEKS                       R5 R4 K70 ["replaced"]
      174 GETIMPORT                        R5 K75 [Color3.fromHex]
      176 LOADK                            R6 K78 ["#0C3D25"]
      177 CALL                             R5 1 1
      178 SETTABLEKS                       R5 R4 K71 ["replacement"]
      180 SETTABLEKS                       R4 R3 K66 ["Dark"]
      182 DUPTABLE                         R4 K72 [{"find", "replaced", "replacement"}]
      183 GETIMPORT                        R5 K75 [Color3.fromHex]
      185 LOADK                            R6 K79 ["#F9DE6F"]
      186 CALL                             R5 1 1
      187 SETTABLEKS                       R5 R4 K69 ["find"]
      189 GETIMPORT                        R5 K75 [Color3.fromHex]
      191 LOADK                            R6 K80 ["#FFBEB0"]
      192 CALL                             R5 1 1
      193 SETTABLEKS                       R5 R4 K70 ["replaced"]
      195 GETIMPORT                        R5 K75 [Color3.fromHex]
      197 LOADK                            R6 K81 ["#68F9A9"]
      198 CALL                             R5 1 1
      199 SETTABLEKS                       R5 R4 K71 ["replacement"]
      201 SETTABLEKS                       R4 R3 K67 ["Light"]
      203 SETTABLEKS                       R3 R2 K82 ["RichTagColors"]
      205 RETURN                           R2 1
