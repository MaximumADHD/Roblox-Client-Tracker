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
       17 LOADK                            R3 K9 [".Component-TreeViewRow"]
       18 DUPTABLE                         R4 K11 [{"Size"}]
       19 GETIMPORT                        R5 K14 [UDim2.new]
       21 LOADN                            R6 1
       22 LOADN                            R7 0
       23 LOADN                            R8 0
       24 LOADN                            R9 24
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K10 ["Size"]
       28 NEWTABLE                         R5 0 3
       30 MOVE                             R6 R1
       31 LOADK                            R7 K15 ["::UIPadding"]
       32 DUPTABLE                         R8 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       33 GETIMPORT                        R9 K22 [UDim.new]
       35 LOADN                            R10 0
       36 LOADN                            R11 1
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K16 ["PaddingTop"]
       40 GETIMPORT                        R9 K22 [UDim.new]
       42 LOADN                            R10 0
       43 LOADN                            R11 1
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K17 ["PaddingBottom"]
       47 GETIMPORT                        R9 K22 [UDim.new]
       49 LOADN                            R10 0
       50 LOADN                            R11 5
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K18 ["PaddingLeft"]
       54 GETIMPORT                        R9 K22 [UDim.new]
       56 LOADN                            R10 0
       57 LOADN                            R11 5
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K19 ["PaddingRight"]
       61 CALL                             R6 2 1
       62 MOVE                             R7 R1
       63 LOADK                            R8 K23 [">> .Arrow"]
       64 DUPTABLE                         R9 K31 [{["Size"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", ["ImageColor3"] = "$TextPrimary", ["ImageRectSize"]}]
       65 GETIMPORT                        R10 K33 [UDim2.fromOffset]
       67 LOADN                            R11 12
       68 LOADN                            R12 12
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K10 ["Size"]
       72 GETIMPORT                        R10 K35 [Vector2.new]
       74 LOADN                            R11 12
       75 LOADN                            R12 12
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K30 ["ImageRectSize"]
       79 CALL                             R7 2 1
       80 MOVE                             R8 R1
       81 LOADK                            R9 K36 ["> .Tail"]
       82 DUPTABLE                         R10 K42 [{["AnchorPoint"], ["AutomaticSize"], ["Position"], ["Size"], ["ZIndex"] = 2}]
       83 GETIMPORT                        R11 K35 [Vector2.new]
       85 LOADN                            R12 1
       86 LOADN                            R13 0
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K37 ["AnchorPoint"]
       90 GETIMPORT                        R11 K45 [Enum.AutomaticSize.X]
       92 SETTABLEKS                       R11 R10 K38 ["AutomaticSize"]
       94 GETIMPORT                        R11 K47 [UDim2.fromScale]
       96 LOADN                            R12 1
       97 LOADN                            R13 0
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K39 ["Position"]
      101 GETIMPORT                        R11 K47 [UDim2.fromScale]
      103 LOADN                            R12 0
      104 LOADN                            R13 1
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K10 ["Size"]
      108 NEWTABLE                         R11 0 1
      110 MOVE                             R12 R1
      111 LOADK                            R13 K15 ["::UIPadding"]
      112 DUPTABLE                         R14 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      113 GETIMPORT                        R15 K22 [UDim.new]
      115 LOADN                            R16 0
      116 LOADN                            R17 0
      117 CALL                             R15 2 1
      118 SETTABLEKS                       R15 R14 K16 ["PaddingTop"]
      120 GETIMPORT                        R15 K22 [UDim.new]
      122 LOADN                            R16 0
      123 LOADN                            R17 0
      124 CALL                             R15 2 1
      125 SETTABLEKS                       R15 R14 K17 ["PaddingBottom"]
      127 GETIMPORT                        R15 K22 [UDim.new]
      129 LOADN                            R16 0
      130 LOADN                            R17 3
      131 CALL                             R15 2 1
      132 SETTABLEKS                       R15 R14 K18 ["PaddingLeft"]
      134 GETIMPORT                        R15 K22 [UDim.new]
      136 LOADN                            R16 0
      137 LOADN                            R17 10
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K19 ["PaddingRight"]
      141 CALL                             R12 2 -1
      142 SETLIST                          R11 R12 -1 [1]
      144 CALL                             R8 3 -1
      145 SETLIST                          R5 R6 -1 [1]
      147 DUPTABLE                         R6 K56 [{["ArrowSize"] = 12, ["ArrowExpandedOffset"], ["ArrowCollapsedOffset"], ["RowHeight"] = 24, ["Indent"] = 17}]
      148 GETIMPORT                        R7 K35 [Vector2.new]
      150 LOADN                            R8 24
      151 LOADN                            R9 0
      152 CALL                             R7 2 1
      153 SETTABLEKS                       R7 R6 K50 ["ArrowExpandedOffset"]
      155 GETIMPORT                        R7 K35 [Vector2.new]
      157 LOADN                            R8 12
      158 LOADN                            R9 0
      159 CALL                             R7 2 1
      160 SETTABLEKS                       R7 R6 K51 ["ArrowCollapsedOffset"]
      162 CALL                             R2 4 -1
      163 RETURN                           R2 -1
