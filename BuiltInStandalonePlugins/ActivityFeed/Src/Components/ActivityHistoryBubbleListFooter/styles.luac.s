MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R6 K10 ["Resources"]
       28 GETTABLEKS                       R4 R5 K11 ["StyleTips"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["defaultPadding"]
       33 MULK                             R5 R4 K13 [3]
       34 GETTABLEKS                       R8 R3 K14 ["normalFontSize"]
       36 ADD                              R7 R8 R5
       37 ADD                              R6 R7 R4
       38 GETIMPORT                        R7 K16 [game]
       40 LOADK                            R9 K17 ["ActivityHistoryCompactUI"]
       41 NAMECALL                         R7 R7 K18 ["GetFastFlag"]
       43 CALL                             R7 2 1
       44 MOVE                             R8 R2
       45 LOADK                            R9 K19 [".Component-ActivityHistoryBubbleListFooter"]
       46 DUPTABLE                         R10 K21 [{"Size"}]
       47 GETIMPORT                        R11 K24 [UDim2.new]
       49 LOADN                            R12 1
       50 LOADN                            R13 0
       51 LOADN                            R14 0
       52 MOVE                             R15 R6
       53 CALL                             R11 4 1
       54 SETTABLEKS                       R11 R10 K20 ["Size"]
       56 NEWTABLE                         R11 0 3
       58 MOVE                             R12 R2
       59 LOADK                            R13 K25 ["::UIListLayout"]
       60 DUPTABLE                         R14 K27 [{"HorizontalAlignment"}]
       61 GETIMPORT                        R15 K30 [Enum.HorizontalAlignment.Center]
       63 SETTABLEKS                       R15 R14 K26 ["HorizontalAlignment"]
       65 CALL                             R12 2 1
       66 MOVE                             R13 R2
       67 LOADK                            R14 K31 ["::UIPadding"]
       68 DUPTABLE                         R15 K36 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       69 GETIMPORT                        R16 K38 [UDim.new]
       71 LOADN                            R17 0
       72 MOVE                             R18 R5
       73 CALL                             R16 2 1
       74 SETTABLEKS                       R16 R15 K32 ["PaddingTop"]
       76 GETIMPORT                        R16 K38 [UDim.new]
       78 LOADN                            R17 0
       79 MOVE                             R18 R4
       80 CALL                             R16 2 1
       81 SETTABLEKS                       R16 R15 K33 ["PaddingBottom"]
       83 GETIMPORT                        R16 K38 [UDim.new]
       85 LOADN                            R17 0
       86 MOVE                             R18 R4
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K34 ["PaddingLeft"]
       90 GETIMPORT                        R16 K38 [UDim.new]
       92 LOADN                            R17 0
       93 MOVE                             R18 R4
       94 CALL                             R16 2 1
       95 SETTABLEKS                       R16 R15 K35 ["PaddingRight"]
       97 CALL                             R13 2 1
       98 MOVE                             R14 R2
       99 LOADK                            R15 K39 ["> #Title"]
      100 DUPTABLE                         R16 K41 [{"TextColor3"}]
      101 JUMPIFNOT                        R7 ; [+2]
      102 LOADK                            R17 K42 ["$FoundationColorsContentMuted"]
      103 JUMP                             ; [+1]
      104 LOADK                            R17 K43 ["$TextSecondary"]
      105 SETTABLEKS                       R17 R16 K40 ["TextColor3"]
      107 CALL                             R14 2 -1
      108 SETLIST                          R11 R12 -1 [1]
      110 CALL                             R8 3 -1
      111 RETURN                           R8 -1
