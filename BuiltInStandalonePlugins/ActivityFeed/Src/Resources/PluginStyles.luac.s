MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Resources"]
       22 GETTABLEKS                       R3 R4 K9 ["StyleTips"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R1 K10 ["Styling"]
       27 GETTABLEKS                       R3 R4 K11 ["createStyleRule"]
       29 GETTABLEKS                       R5 R1 K10 ["Styling"]
       31 GETTABLEKS                       R4 R5 K12 ["createStyleSheet"]
       33 GETIMPORT                        R5 K14 [game]
       35 LOADK                            R7 K15 ["ActivityHistoryCompactUI"]
       36 NAMECALL                         R5 R5 K16 ["GetFastFlag"]
       38 CALL                             R5 2 1
       39 NEWTABLE                         R6 0 5
       41 MOVE                             R7 R3
       42 LOADK                            R8 K17 [".CX-Invisible"]
       43 DUPTABLE                         R9 K19 [{"BackgroundTransparency"}]
       44 LOADN                            R10 1
       45 SETTABLEKS                       R10 R9 K18 ["BackgroundTransparency"]
       47 CALL                             R7 2 1
       48 MOVE                             R8 R3
       49 LOADK                            R9 K20 [".CX-Divider"]
       50 DUPTABLE                         R10 K23 [{"Size", "BackgroundColor3"}]
       51 GETIMPORT                        R11 K26 [UDim2.new]
       53 LOADN                            R12 1
       54 LOADN                            R13 0
       55 LOADN                            R14 0
       56 LOADN                            R15 1
       57 CALL                             R11 4 1
       58 SETTABLEKS                       R11 R10 K21 ["Size"]
       60 JUMPIFNOT                        R5 ; [+2]
       61 LOADK                            R11 K27 ["$FoundationColorsShift300"]
       62 JUMP                             ; [+1]
       63 LOADK                            R11 K28 ["$Divider"]
       64 SETTABLEKS                       R11 R10 K22 ["BackgroundColor3"]
       66 CALL                             R8 2 1
       67 MOVE                             R9 R3
       68 LOADK                            R10 K29 ["Frame"]
       69 DUPTABLE                         R11 K31 [{"BorderSizePixel"}]
       70 LOADN                            R12 0
       71 SETTABLEKS                       R12 R11 K30 ["BorderSizePixel"]
       73 CALL                             R9 2 1
       74 MOVE                             R10 R3
       75 LOADK                            R11 K32 ["TextLabel"]
       76 DUPTABLE                         R12 K36 [{"Font", "TextSize", "TextColor"}]
       77 GETTABLEKS                       R13 R2 K37 ["defaultFont"]
       79 SETTABLEKS                       R13 R12 K33 ["Font"]
       81 GETTABLEKS                       R13 R2 K38 ["normalFontSize"]
       83 SETTABLEKS                       R13 R12 K34 ["TextSize"]
       85 JUMPIFNOT                        R5 ; [+2]
       86 LOADK                            R13 K39 ["$FoundationColorsContentEmphasis"]
       87 JUMP                             ; [+1]
       88 LOADK                            R13 K40 ["$TextPrimary"]
       89 SETTABLEKS                       R13 R12 K35 ["TextColor"]
       91 CALL                             R10 2 1
       92 MOVE                             R11 R3
       93 LOADK                            R12 K41 ["TextButton"]
       94 DUPTABLE                         R13 K36 [{"Font", "TextSize", "TextColor"}]
       95 GETTABLEKS                       R14 R2 K37 ["defaultFont"]
       97 SETTABLEKS                       R14 R13 K33 ["Font"]
       99 GETTABLEKS                       R14 R2 K42 ["buttonFontSize"]
      101 SETTABLEKS                       R14 R13 K34 ["TextSize"]
      103 JUMPIFNOT                        R5 ; [+2]
      104 LOADK                            R14 K39 ["$FoundationColorsContentEmphasis"]
      105 JUMP                             ; [+1]
      106 LOADK                            R14 K40 ["$TextPrimary"]
      107 SETTABLEKS                       R14 R13 K35 ["TextColor"]
      109 CALL                             R11 2 -1
      110 SETLIST                          R6 R7 -1 [1]
      112 NEWTABLE                         R7 0 0
      114 MOVE                             R8 R4
      115 LOADK                            R9 K43 ["ActivityHistoryPlugin"]
      116 MOVE                             R10 R6
      117 MOVE                             R11 R7
      118 CALL                             R8 3 -1
      119 RETURN                           R8 -1
