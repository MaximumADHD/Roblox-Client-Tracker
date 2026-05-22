MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["getFFlagExplorerFixBlurryTextHopefully"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagExplorerUseBuilderSans"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["Styling"]
       30 GETTABLEKS                       R4 R4 K12 ["createStyleRule"]
       32 MOVE                             R5 R4
       33 LOADK                            R6 K13 [".Explorer-RenameBox"]
       34 NEWTABLE                         R7 0 0
       36 NEWTABLE                         R8 0 3
       38 MOVE                             R9 R4
       39 LOADK                            R10 K14 [">> .Explorer-RenameBox-Background"]
       40 DUPTABLE                         R11 K17 [{"Position", "Size"}]
       41 GETIMPORT                        R12 K20 [UDim2.new]
       43 LOADN                            R13 0
       44 LOADN                            R14 252
       45 LOADN                            R15 0
       46 LOADN                            R16 0
       47 CALL                             R12 4 1
       48 SETTABLEKS                       R12 R11 K15 ["Position"]
       50 GETIMPORT                        R12 K20 [UDim2.new]
       52 LOADN                            R13 1
       53 LOADN                            R14 4
       54 LOADN                            R15 1
       55 LOADN                            R16 0
       56 CALL                             R12 4 1
       57 SETTABLEKS                       R12 R11 K16 ["Size"]
       59 CALL                             R9 2 1
       60 MOVE                             R10 R4
       61 LOADK                            R11 K21 [">> .Explorer-RenameBox-BackgroundInner"]
       62 DUPTABLE                         R12 K23 [{"AnchorPoint", "Position", "Size"}]
       63 GETIMPORT                        R13 K25 [Vector2.new]
       65 LOADK                            R14 K26 [0.5]
       66 LOADK                            R15 K26 [0.5]
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K22 ["AnchorPoint"]
       70 GETIMPORT                        R13 K28 [UDim2.fromScale]
       72 LOADK                            R14 K26 [0.5]
       73 LOADK                            R15 K26 [0.5]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K15 ["Position"]
       77 GETIMPORT                        R13 K20 [UDim2.new]
       79 LOADN                            R14 1
       80 LOADN                            R15 254
       81 LOADN                            R16 1
       82 LOADN                            R17 254
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K16 ["Size"]
       86 NEWTABLE                         R13 0 2
       88 MOVE                             R14 R4
       89 LOADK                            R15 K29 ["::UICorner"]
       90 DUPTABLE                         R16 K31 [{"CornerRadius"}]
       91 GETIMPORT                        R17 K33 [UDim.new]
       93 LOADN                            R18 0
       94 LOADN                            R19 4
       95 CALL                             R17 2 1
       96 SETTABLEKS                       R17 R16 K30 ["CornerRadius"]
       98 CALL                             R14 2 1
       99 MOVE                             R15 R4
      100 LOADK                            R16 K34 ["::UIStroke"]
      101 DUPTABLE                         R17 K37 [{"Color", "Thickness"}]
      102 LOADK                            R18 K38 ["$RDLSemanticColorActionPrimaryBrandFill"]
      103 SETTABLEKS                       R18 R17 K35 ["Color"]
      105 LOADN                            R18 2
      106 SETTABLEKS                       R18 R17 K36 ["Thickness"]
      108 CALL                             R15 2 -1
      109 SETLIST                          R13 R14 -1 [1]
      111 CALL                             R10 3 1
      112 MOVE                             R11 R4
      113 LOADK                            R12 K39 [">> TextBox"]
      114 DUPTABLE                         R13 K47 [{"BackgroundTransparency", "BorderSizePixel", "ClipsDescendants", "Font", "Size", "TextColor3", "TextSize", "TextXAlignment"}]
      115 LOADN                            R14 1
      116 SETTABLEKS                       R14 R13 K40 ["BackgroundTransparency"]
      118 LOADN                            R14 0
      119 SETTABLEKS                       R14 R13 K41 ["BorderSizePixel"]
      121 LOADB                            R14 1
      122 SETTABLEKS                       R14 R13 K42 ["ClipsDescendants"]
      124 MOVE                             R15 R3
      125 CALL                             R15 0 1
      126 JUMPIFNOT                        R15 ; [+2]
      127 LOADNIL                          R14
      128 JUMP                             ; [+2]
      129 GETIMPORT                        R14 K50 [Enum.Font.SourceSans]
      131 SETTABLEKS                       R14 R13 K43 ["Font"]
      133 GETIMPORT                        R14 K28 [UDim2.fromScale]
      135 LOADN                            R15 1
      136 LOADN                            R16 1
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K16 ["Size"]
      140 MOVE                             R15 R2
      141 CALL                             R15 0 1
      142 JUMPIFNOT                        R15 ; [+2]
      143 LOADNIL                          R14
      144 JUMP                             ; [+1]
      145 LOADK                            R14 K51 ["$RDLSemanticColorContentMuted"]
      146 SETTABLEKS                       R14 R13 K44 ["TextColor3"]
      148 MOVE                             R15 R2
      149 CALL                             R15 0 1
      150 JUMPIFNOT                        R15 ; [+2]
      151 LOADNIL                          R14
      152 JUMP                             ; [+1]
      153 LOADK                            R14 K52 [17.598]
      154 SETTABLEKS                       R14 R13 K45 ["TextSize"]
      156 GETIMPORT                        R14 K54 [Enum.TextXAlignment.Left]
      158 SETTABLEKS                       R14 R13 K46 ["TextXAlignment"]
      160 CALL                             R11 2 -1
      161 SETLIST                          R8 R9 -1 [1]
      163 CALL                             R5 3 -1
      164 RETURN                           R5 -1
