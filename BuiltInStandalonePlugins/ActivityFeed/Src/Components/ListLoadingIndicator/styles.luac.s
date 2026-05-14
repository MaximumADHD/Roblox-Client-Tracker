MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["StyleTips"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       31 GETIMPORT                        R4 K13 [game]
       33 LOADK                            R6 K14 ["ActivityHistoryCompactUI"]
       34 NAMECALL                         R4 R4 K15 ["GetFastFlag"]
       36 CALL                             R4 2 1
       37 MOVE                             R5 R3
       38 LOADK                            R6 K16 [".Component-ListLoadingIndicator"]
       39 DUPTABLE                         R7 K19 [{"Size", "BackgroundColor3"}]
       40 GETIMPORT                        R8 K22 [UDim2.new]
       42 LOADN                            R9 1
       43 LOADN                            R10 0
       44 LOADN                            R11 0
       45 GETTABLEKS                       R12 R2 K23 ["bubbleHeight"]
       47 CALL                             R8 4 1
       48 SETTABLEKS                       R8 R7 K17 ["Size"]
       50 JUMPIFNOT                        R4 ; [+2]
       51 LOADK                            R8 K24 ["$FoundationColorsBackgroundDefault"]
       52 JUMP                             ; [+1]
       53 LOADK                            R8 K25 ["$ForegroundMain"]
       54 SETTABLEKS                       R8 R7 K18 ["BackgroundColor3"]
       56 NEWTABLE                         R8 0 2
       58 MOVE                             R9 R3
       59 LOADK                            R10 K26 ["::UICorner"]
       60 DUPTABLE                         R11 K28 [{"CornerRadius"}]
       61 GETIMPORT                        R12 K30 [UDim.new]
       63 LOADN                            R13 0
       64 GETTABLEKS                       R14 R2 K31 ["bubbleCornerRadius"]
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K27 ["CornerRadius"]
       69 CALL                             R9 2 1
       70 MOVE                             R10 R3
       71 LOADK                            R11 K32 ["::UIStroke"]
       72 DUPTABLE                         R12 K35 [{"Color", "Thickness"}]
       73 JUMPIFNOT                        R4 ; [+2]
       74 LOADK                            R13 K36 ["$FoundationColorsShift300"]
       75 JUMP                             ; [+1]
       76 LOADK                            R13 K37 ["$Divider"]
       77 SETTABLEKS                       R13 R12 K33 ["Color"]
       79 LOADN                            R13 1
       80 SETTABLEKS                       R13 R12 K34 ["Thickness"]
       82 CALL                             R10 2 -1
       83 SETLIST                          R8 R9 -1 [1]
       85 CALL                             R5 3 -1
       86 RETURN                           R5 -1
