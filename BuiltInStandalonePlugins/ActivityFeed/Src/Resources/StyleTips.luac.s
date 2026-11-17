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
       30 DUPTABLE                         R8 K43 [{["defaultIconSize"] = 16, ["largeIconSize"], ["emptyScreenContentPaddingPercentage"] = 0.2, ["buttonPaddingVertical"] = 2, ["buttonPaddingHorizontal"] = 12, ["buttonCornerRadius"] = 4, ["defaultPadding"] = 8, ["smallPadding"] = 4, ["bubblePaddingHalf"], ["bubbleTopHeight"] = 16, ["bubbleMiddleHeight"] = 22, ["bubbleBottomHeight"] = 16, ["bubbleHeight"], ["bubbleCornerRadius"] = 2, ["byHeight"] = 20, ["checkBoxRowHeight"] = 32, ["detailFontSize"], ["normalFontSize"] = 18, ["buttonFontSize"] = 18, ["headerFontSize"] = 18, ["defaultFont"], ["boldedFont"], ["filterHeaderHeight"]}]
       31 SETTABLEKS                       R1 R8 K13 ["largeIconSize"]
       33 SETTABLEKS                       R2 R8 K24 ["bubblePaddingHalf"]
       35 SETTABLEKS                       R3 R8 K29 ["bubbleHeight"]
       37 SETTABLEKS                       R4 R8 K35 ["detailFontSize"]
       39 SETTABLEKS                       R5 R8 K40 ["defaultFont"]
       41 SETTABLEKS                       R6 R8 K41 ["boldedFont"]
       43 SETTABLEKS                       R7 R8 K42 ["filterHeaderHeight"]
       45 RETURN                           R8 1
