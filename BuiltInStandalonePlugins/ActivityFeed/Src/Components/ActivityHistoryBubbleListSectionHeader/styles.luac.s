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
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["StyleTips"]
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
       45 LOADK                            R9 K19 [".Component-ActivityHistoryBubbleListSectionHeader"]
       46 DUPTABLE                         R10 K21 [{"Size"}]
       47 GETIMPORT                        R11 K24 [UDim2.new]
       49 LOADN                            R12 1
       50 LOADN                            R13 0
       51 LOADN                            R14 0
       52 MOVE                             R15 R6
       53 CALL                             R11 4 1
       54 SETTABLEKS                       R11 R10 K20 ["Size"]
       56 NEWTABLE                         R11 0 2
       58 MOVE                             R12 R2
       59 LOADK                            R13 K25 ["::UIPadding"]
       60 DUPTABLE                         R14 K30 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       61 GETIMPORT                        R15 K32 [UDim.new]
       63 LOADN                            R16 0
       64 MOVE                             R17 R5
       65 CALL                             R15 2 1
       66 SETTABLEKS                       R15 R14 K26 ["PaddingTop"]
       68 GETIMPORT                        R15 K32 [UDim.new]
       70 LOADN                            R16 0
       71 MOVE                             R17 R4
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K27 ["PaddingBottom"]
       75 GETIMPORT                        R15 K32 [UDim.new]
       77 LOADN                            R16 0
       78 MOVE                             R17 R4
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K28 ["PaddingLeft"]
       82 GETIMPORT                        R15 K32 [UDim.new]
       84 LOADN                            R16 0
       85 MOVE                             R17 R4
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K29 ["PaddingRight"]
       89 CALL                             R12 2 1
       90 MOVE                             R13 R2
       91 LOADK                            R14 K33 ["> #Title"]
       92 DUPTABLE                         R15 K36 [{"TextColor3", "Font"}]
       93 JUMPIFNOT                        R7 ; [+2]
       94 LOADK                            R16 K37 ["$FoundationColorsContentEmphasis"]
       95 JUMP                             ; [+1]
       96 LOADK                            R16 K38 ["$TextPrimary"]
       97 SETTABLEKS                       R16 R15 K34 ["TextColor3"]
       99 GETTABLEKS                       R16 R3 K39 ["boldedFont"]
      101 SETTABLEKS                       R16 R15 K35 ["Font"]
      103 CALL                             R13 2 -1
      104 SETLIST                          R11 R12 -1 [1]
      106 CALL                             R8 3 -1
      107 RETURN                           R8 -1
