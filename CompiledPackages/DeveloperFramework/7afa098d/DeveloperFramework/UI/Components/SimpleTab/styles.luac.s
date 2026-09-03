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
       42 DUPTABLE                         R9 K24 [{["AutomaticSize"], ["BorderSizePixel"] = 1, ["BorderColor3"] = "$SecondaryMain", ["Size"]}]
       43 GETIMPORT                        R10 K27 [Enum.AutomaticSize.X]
       45 SETTABLEKS                       R10 R9 K18 ["AutomaticSize"]
       47 GETIMPORT                        R10 K30 [UDim2.fromOffset]
       49 LOADN                            R11 0
       50 LOADN                            R12 32
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K23 ["Size"]
       54 NEWTABLE                         R10 0 3
       56 MOVE                             R11 R1
       57 LOADK                            R12 K31 [".TabSelected"]
       58 DUPTABLE                         R13 K33 [{["BorderColor3"] = "$Divider"}]
       59 CALL                             R11 2 1
       60 MOVE                             R12 R1
       61 LOADK                            R13 K34 ["::UIPadding"]
       62 DUPTABLE                         R14 K37 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
       63 GETIMPORT                        R15 K16 [UDim.new]
       65 LOADN                            R16 0
       66 LOADN                            R17 20
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K11 ["PaddingLeft"]
       70 GETIMPORT                        R15 K16 [UDim.new]
       72 LOADN                            R16 0
       73 LOADN                            R17 4
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K35 ["PaddingTop"]
       77 GETIMPORT                        R15 K16 [UDim.new]
       79 LOADN                            R16 0
       80 LOADN                            R17 0
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K36 ["PaddingBottom"]
       84 GETIMPORT                        R15 K16 [UDim.new]
       86 LOADN                            R16 0
       87 LOADN                            R17 20
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K12 ["PaddingRight"]
       91 CALL                             R12 2 1
       92 MOVE                             R13 R1
       93 LOADK                            R14 K38 ["> ImageLabel"]
       94 DUPTABLE                         R15 K41 [{["ImageColor3"] = "$PrimaryText"}]
       95 CALL                             R13 2 -1
       96 SETLIST                          R10 R11 -1 [1]
       98 CALL                             R7 3 1
       99 MOVE                             R8 R1
      100 LOADK                            R9 K42 ["> .TopLine"]
      101 DUPTABLE                         R10 K49 [{["BackgroundColor3"] = "$PrimaryMain", ["BackgroundTransparency"] = 0, ["Size"], ["ZIndex"] = 2}]
      102 GETIMPORT                        R11 K50 [UDim2.new]
      104 LOADN                            R12 1
      105 LOADN                            R13 0
      106 LOADN                            R14 0
      107 LOADN                            R15 3
      108 CALL                             R11 4 1
      109 SETTABLEKS                       R11 R10 K23 ["Size"]
      111 CALL                             R8 2 1
      112 MOVE                             R9 R1
      113 LOADK                            R10 K51 ["> .BottomLine"]
      114 DUPTABLE                         R11 K54 [{["AnchorPoint"], ["BackgroundColor3"] = "$SecondaryMain", ["BackgroundTransparency"] = 0, ["Position"], ["Size"]}]
      115 GETIMPORT                        R12 K56 [Vector2.new]
      117 LOADN                            R13 0
      118 LOADN                            R14 1
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K52 ["AnchorPoint"]
      122 GETIMPORT                        R12 K30 [UDim2.fromOffset]
      124 LOADN                            R13 0
      125 LOADN                            R14 33
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K53 ["Position"]
      129 GETIMPORT                        R12 K50 [UDim2.new]
      131 LOADN                            R13 1
      132 LOADN                            R14 0
      133 LOADN                            R15 0
      134 LOADN                            R16 1
      135 CALL                             R12 4 1
      136 SETTABLEKS                       R12 R11 K23 ["Size"]
      138 NEWTABLE                         R12 0 1
      140 MOVE                             R13 R1
      141 LOADK                            R14 K31 [".TabSelected"]
      142 DUPTABLE                         R15 K58 [{["BackgroundColor3"] = "$ForegroundMuted"}]
      143 CALL                             R13 2 -1
      144 SETLIST                          R12 R13 -1 [1]
      146 CALL                             R9 3 -1
      147 SETLIST                          R5 R6 -1 [1]
      149 CALL                             R2 3 -1
      150 RETURN                           R2 -1
