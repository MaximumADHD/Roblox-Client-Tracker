MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ActivityHistoryCompactUI"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADN                            R1 36
        9 JUMP                             ; [+1]
       10 LOADN                            R1 40
       11 JUMPIFNOT                        R0 ; [+2]
       12 LOADN                            R2 8
       13 JUMP                             ; [+1]
       14 LOADN                            R2 12
       15 LOADN                            R4 54
       16 MULK                             R5 R2 K4 [2]
       17 ADD                              R3 R4 R5
       18 JUMPIFNOT                        R0 ; [+2]
       19 LOADN                            R4 15
       20 JUMP                             ; [+1]
       21 LOADN                            R4 14
       22 GETIMPORT                        R5 K8 [Enum.Font.SourceSans]
       24 GETIMPORT                        R6 K10 [Enum.Font.SourceSansSemibold]
       26 JUMPIFNOT                        R0 ; [+2]
       27 LOADN                            R7 22
       28 JUMP                             ; [+1]
       29 LOADN                            R7 34
       30 DUPTABLE                         R8 K34 [{"defaultIconSize", "largeIconSize", "emptyScreenContentPaddingPercentage", "buttonPaddingVertical", "buttonPaddingHorizontal", "buttonCornerRadius", "defaultPadding", "smallPadding", "bubblePaddingHalf", "bubbleTopHeight", "bubbleMiddleHeight", "bubbleBottomHeight", "bubbleHeight", "bubbleCornerRadius", "byHeight", "checkBoxRowHeight", "detailFontSize", "normalFontSize", "buttonFontSize", "headerFontSize", "defaultFont", "boldedFont", "filterHeaderHeight"}]
       31 LOADN                            R9 16
       32 SETTABLEKS                       R9 R8 K11 ["defaultIconSize"]
       34 SETTABLEKS                       R1 R8 K12 ["largeIconSize"]
       36 LOADK                            R9 K35 [0.2]
       37 SETTABLEKS                       R9 R8 K13 ["emptyScreenContentPaddingPercentage"]
       39 LOADN                            R9 2
       40 SETTABLEKS                       R9 R8 K14 ["buttonPaddingVertical"]
       42 LOADN                            R9 12
       43 SETTABLEKS                       R9 R8 K15 ["buttonPaddingHorizontal"]
       45 LOADN                            R9 4
       46 SETTABLEKS                       R9 R8 K16 ["buttonCornerRadius"]
       48 LOADN                            R9 8
       49 SETTABLEKS                       R9 R8 K17 ["defaultPadding"]
       51 LOADN                            R9 4
       52 SETTABLEKS                       R9 R8 K18 ["smallPadding"]
       54 SETTABLEKS                       R2 R8 K19 ["bubblePaddingHalf"]
       56 LOADN                            R9 16
       57 SETTABLEKS                       R9 R8 K20 ["bubbleTopHeight"]
       59 LOADN                            R9 22
       60 SETTABLEKS                       R9 R8 K21 ["bubbleMiddleHeight"]
       62 LOADN                            R9 16
       63 SETTABLEKS                       R9 R8 K22 ["bubbleBottomHeight"]
       65 SETTABLEKS                       R3 R8 K23 ["bubbleHeight"]
       67 LOADN                            R9 2
       68 SETTABLEKS                       R9 R8 K24 ["bubbleCornerRadius"]
       70 LOADN                            R9 20
       71 SETTABLEKS                       R9 R8 K25 ["byHeight"]
       73 LOADN                            R9 32
       74 SETTABLEKS                       R9 R8 K26 ["checkBoxRowHeight"]
       76 SETTABLEKS                       R4 R8 K27 ["detailFontSize"]
       78 LOADN                            R9 18
       79 SETTABLEKS                       R9 R8 K28 ["normalFontSize"]
       81 LOADN                            R9 18
       82 SETTABLEKS                       R9 R8 K29 ["buttonFontSize"]
       84 LOADN                            R9 18
       85 SETTABLEKS                       R9 R8 K30 ["headerFontSize"]
       87 SETTABLEKS                       R5 R8 K31 ["defaultFont"]
       89 SETTABLEKS                       R6 R8 K32 ["boldedFont"]
       91 SETTABLEKS                       R7 R8 K33 ["filterHeaderHeight"]
       93 RETURN                           R8 1
