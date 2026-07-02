MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Resources"]
       22 GETTABLEKS                       R3 R3 K9 ["StyleTips"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["Styling"]
       27 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       29 GETTABLEKS                       R4 R1 K10 ["Styling"]
       31 GETTABLEKS                       R4 R4 K12 ["createStyleSheet"]
       33 GETIMPORT                        R5 K14 [game]
       35 LOADK                            R7 K15 ["ActivityHistoryCompactUI"]
       36 NAMECALL                         R5 R5 K16 ["GetFastFlag"]
       38 CALL                             R5 2 1
       39 NEWTABLE                         R6 0 5
       41 MOVE                             R7 R3
       42 LOADK                            R8 K17 [".CX-Invisible"]
       43 DUPTABLE                         R9 K20 [{["BackgroundTransparency"] = 1}]
       44 CALL                             R7 2 1
       45 MOVE                             R8 R3
       46 LOADK                            R9 K21 [".CX-Divider"]
       47 DUPTABLE                         R10 K24 [{"Size", "BackgroundColor3"}]
       48 GETIMPORT                        R11 K27 [UDim2.new]
       50 LOADN                            R12 1
       51 LOADN                            R13 0
       52 LOADN                            R14 0
       53 LOADN                            R15 1
       54 CALL                             R11 4 1
       55 SETTABLEKS                       R11 R10 K22 ["Size"]
       57 JUMPIFNOT                        R5 ; [+2]
       58 LOADK                            R11 K28 ["$FoundationColorsShift300"]
       59 JUMP                             ; [+1]
       60 LOADK                            R11 K29 ["$Divider"]
       61 SETTABLEKS                       R11 R10 K23 ["BackgroundColor3"]
       63 CALL                             R8 2 1
       64 MOVE                             R9 R3
       65 LOADK                            R10 K30 ["Frame"]
       66 DUPTABLE                         R11 K33 [{["BorderSizePixel"] = 0}]
       67 CALL                             R9 2 1
       68 MOVE                             R10 R3
       69 LOADK                            R11 K34 ["TextLabel"]
       70 DUPTABLE                         R12 K38 [{"Font", "TextSize", "TextColor"}]
       71 GETTABLEKS                       R13 R2 K39 ["defaultFont"]
       73 SETTABLEKS                       R13 R12 K35 ["Font"]
       75 GETTABLEKS                       R13 R2 K40 ["normalFontSize"]
       77 SETTABLEKS                       R13 R12 K36 ["TextSize"]
       79 JUMPIFNOT                        R5 ; [+2]
       80 LOADK                            R13 K41 ["$FoundationColorsContentEmphasis"]
       81 JUMP                             ; [+1]
       82 LOADK                            R13 K42 ["$TextPrimary"]
       83 SETTABLEKS                       R13 R12 K37 ["TextColor"]
       85 CALL                             R10 2 1
       86 MOVE                             R11 R3
       87 LOADK                            R12 K43 ["TextButton"]
       88 DUPTABLE                         R13 K38 [{"Font", "TextSize", "TextColor"}]
       89 GETTABLEKS                       R14 R2 K39 ["defaultFont"]
       91 SETTABLEKS                       R14 R13 K35 ["Font"]
       93 GETTABLEKS                       R14 R2 K44 ["buttonFontSize"]
       95 SETTABLEKS                       R14 R13 K36 ["TextSize"]
       97 JUMPIFNOT                        R5 ; [+2]
       98 LOADK                            R14 K41 ["$FoundationColorsContentEmphasis"]
       99 JUMP                             ; [+1]
      100 LOADK                            R14 K42 ["$TextPrimary"]
      101 SETTABLEKS                       R14 R13 K37 ["TextColor"]
      103 CALL                             R11 2 -1
      104 SETLIST                          R6 R7 -1 [1]
      106 NEWTABLE                         R7 0 0
      108 MOVE                             R8 R4
      109 LOADK                            R9 K45 ["ActivityHistoryPlugin"]
      110 MOVE                             R10 R6
      111 MOVE                             R11 R7
      112 CALL                             R8 3 -1
      113 RETURN                           R8 -1
