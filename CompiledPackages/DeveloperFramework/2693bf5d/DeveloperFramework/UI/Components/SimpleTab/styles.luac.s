MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-SimpleTab"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 4
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 [":: UIPadding"]
       24 DUPTABLE                         R8 K13 [{"PaddingLeft", "PaddingRight"}]
       25 GETIMPORT                        R9 K16 [UDim.new]
       27 LOADN                            R10 0
       28 LOADN                            R11 1
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K11 ["PaddingLeft"]
       32 GETIMPORT                        R9 K16 [UDim.new]
       34 LOADN                            R10 0
       35 LOADN                            R11 1
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K12 ["PaddingRight"]
       39 CALL                             R6 2 1
       40 MOVE                             R7 R1
       41 LOADK                            R8 K17 ["> .Contents"]
       42 DUPTABLE                         R9 K22 [{"AutomaticSize", "BorderSizePixel", "BorderColor3", "Size"}]
       43 GETIMPORT                        R10 K25 [Enum.AutomaticSize.X]
       45 SETTABLEKS                       R10 R9 K18 ["AutomaticSize"]
       47 LOADN                            R10 1
       48 SETTABLEKS                       R10 R9 K19 ["BorderSizePixel"]
       50 LOADK                            R10 K26 ["$SecondaryMain"]
       51 SETTABLEKS                       R10 R9 K20 ["BorderColor3"]
       53 GETIMPORT                        R10 K29 [UDim2.fromOffset]
       55 LOADN                            R11 0
       56 LOADN                            R12 32
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K21 ["Size"]
       60 NEWTABLE                         R10 0 3
       62 MOVE                             R11 R1
       63 LOADK                            R12 K30 [".TabSelected"]
       64 DUPTABLE                         R13 K31 [{"BorderColor3"}]
       65 LOADK                            R14 K32 ["$Divider"]
       66 SETTABLEKS                       R14 R13 K20 ["BorderColor3"]
       68 CALL                             R11 2 1
       69 MOVE                             R12 R1
       70 LOADK                            R13 K33 ["::UIPadding"]
       71 DUPTABLE                         R14 K36 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
       72 GETIMPORT                        R15 K16 [UDim.new]
       74 LOADN                            R16 0
       75 LOADN                            R17 20
       76 CALL                             R15 2 1
       77 SETTABLEKS                       R15 R14 K11 ["PaddingLeft"]
       79 GETIMPORT                        R15 K16 [UDim.new]
       81 LOADN                            R16 0
       82 LOADN                            R17 4
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K34 ["PaddingTop"]
       86 GETIMPORT                        R15 K16 [UDim.new]
       88 LOADN                            R16 0
       89 LOADN                            R17 0
       90 CALL                             R15 2 1
       91 SETTABLEKS                       R15 R14 K35 ["PaddingBottom"]
       93 GETIMPORT                        R15 K16 [UDim.new]
       95 LOADN                            R16 0
       96 LOADN                            R17 20
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K12 ["PaddingRight"]
      100 CALL                             R12 2 1
      101 MOVE                             R13 R1
      102 LOADK                            R14 K37 ["> ImageLabel"]
      103 DUPTABLE                         R15 K39 [{"ImageColor3"}]
      104 LOADK                            R16 K40 ["$PrimaryText"]
      105 SETTABLEKS                       R16 R15 K38 ["ImageColor3"]
      107 CALL                             R13 2 -1
      108 SETLIST                          R10 R11 -1 [1]
      110 CALL                             R7 3 1
      111 MOVE                             R8 R1
      112 LOADK                            R9 K41 ["> .TopLine"]
      113 DUPTABLE                         R10 K45 [{"BackgroundColor3", "BackgroundTransparency", "Size", "ZIndex"}]
      114 LOADK                            R11 K46 ["$PrimaryMain"]
      115 SETTABLEKS                       R11 R10 K42 ["BackgroundColor3"]
      117 LOADN                            R11 0
      118 SETTABLEKS                       R11 R10 K43 ["BackgroundTransparency"]
      120 GETIMPORT                        R11 K47 [UDim2.new]
      122 LOADN                            R12 1
      123 LOADN                            R13 0
      124 LOADN                            R14 0
      125 LOADN                            R15 3
      126 CALL                             R11 4 1
      127 SETTABLEKS                       R11 R10 K21 ["Size"]
      129 LOADN                            R11 2
      130 SETTABLEKS                       R11 R10 K44 ["ZIndex"]
      132 CALL                             R8 2 1
      133 MOVE                             R9 R1
      134 LOADK                            R10 K48 ["> .BottomLine"]
      135 DUPTABLE                         R11 K51 [{"AnchorPoint", "BackgroundColor3", "BackgroundTransparency", "Position", "Size"}]
      136 GETIMPORT                        R12 K53 [Vector2.new]
      138 LOADN                            R13 0
      139 LOADN                            R14 1
      140 CALL                             R12 2 1
      141 SETTABLEKS                       R12 R11 K49 ["AnchorPoint"]
      143 LOADK                            R12 K26 ["$SecondaryMain"]
      144 SETTABLEKS                       R12 R11 K42 ["BackgroundColor3"]
      146 LOADN                            R12 0
      147 SETTABLEKS                       R12 R11 K43 ["BackgroundTransparency"]
      149 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      151 LOADN                            R13 0
      152 LOADN                            R14 33
      153 CALL                             R12 2 1
      154 SETTABLEKS                       R12 R11 K50 ["Position"]
      156 GETIMPORT                        R12 K47 [UDim2.new]
      158 LOADN                            R13 1
      159 LOADN                            R14 0
      160 LOADN                            R15 0
      161 LOADN                            R16 1
      162 CALL                             R12 4 1
      163 SETTABLEKS                       R12 R11 K21 ["Size"]
      165 NEWTABLE                         R12 0 1
      167 MOVE                             R13 R1
      168 LOADK                            R14 K30 [".TabSelected"]
      169 DUPTABLE                         R15 K54 [{"BackgroundColor3"}]
      170 LOADK                            R16 K55 ["$ForegroundMuted"]
      171 SETTABLEKS                       R16 R15 K42 ["BackgroundColor3"]
      173 CALL                             R13 2 -1
      174 SETLIST                          R12 R13 -1 [1]
      176 CALL                             R9 3 -1
      177 SETLIST                          R5 R6 -1 [1]
      179 CALL                             R2 3 -1
      180 RETURN                           R2 -1
