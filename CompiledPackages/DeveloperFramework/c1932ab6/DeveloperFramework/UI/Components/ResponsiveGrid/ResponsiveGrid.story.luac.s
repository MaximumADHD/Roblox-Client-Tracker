MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["ResponsiveGrid"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 1
       28 DUPTABLE                         R5 K17 [{["name"] = "Default", ["summary"] = "A flexible grid. Change the storybook plugin width to see changing columns.", ["story"]}]
       29 GETTABLEKS                       R6 R1 K18 ["createElement"]
       31 MOVE                             R7 R2
       32 DUPTABLE                         R8 K22 [{"AutomaticSize", "CutOffs", "ItemHeight"}]
       33 GETIMPORT                        R9 K25 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R9 R8 K19 ["AutomaticSize"]
       37 NEWTABLE                         R9 0 4
       39 DUPTABLE                         R10 K30 [{["MinWidth"] = 0, ["ColumnCount"] = 1}]
       40 DUPTABLE                         R11 K33 [{["MinWidth"] = 200, ["ColumnCount"] = 2}]
       41 DUPTABLE                         R12 K36 [{["MinWidth"] = 400, ["ColumnCount"] = 3}]
       42 DUPTABLE                         R13 K39 [{["MinWidth"] = 1000, ["ColumnCount"] = 5}]
       43 SETLIST                          R9 R10 4 [1]
       45 SETTABLEKS                       R9 R8 K20 ["CutOffs"]
       47 GETIMPORT                        R9 K42 [UDim.new]
       49 LOADN                            R10 0
       50 LOADN                            R11 100
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K21 ["ItemHeight"]
       54 DUPTABLE                         R9 K48 [{"item1", "item2", "item3", "item4", "item5"}]
       55 GETTABLEKS                       R10 R1 K18 ["createElement"]
       57 LOADK                            R11 K49 ["TextLabel"]
       58 DUPTABLE                         R12 K53 [{["Text"] = "item 1", ["LayoutOrder"] = 1}]
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K43 ["item1"]
       62 GETTABLEKS                       R10 R1 K18 ["createElement"]
       64 LOADK                            R11 K49 ["TextLabel"]
       65 DUPTABLE                         R12 K55 [{["Text"] = "item 2", ["LayoutOrder"] = 2}]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K44 ["item2"]
       69 GETTABLEKS                       R10 R1 K18 ["createElement"]
       71 LOADK                            R11 K49 ["TextLabel"]
       72 DUPTABLE                         R12 K57 [{["Text"] = "item 3", ["LayoutOrder"] = 3}]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K45 ["item3"]
       76 GETTABLEKS                       R10 R1 K18 ["createElement"]
       78 LOADK                            R11 K49 ["TextLabel"]
       79 DUPTABLE                         R12 K60 [{["Text"] = "item 4", ["LayoutOrder"] = 4}]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K46 ["item4"]
       83 GETTABLEKS                       R10 R1 K18 ["createElement"]
       85 LOADK                            R11 K49 ["TextLabel"]
       86 DUPTABLE                         R12 K62 [{["Text"] = "item 5", ["LayoutOrder"] = 5}]
       87 CALL                             R10 2 1
       88 SETTABLEKS                       R10 R9 K47 ["item5"]
       90 CALL                             R6 3 1
       91 SETTABLEKS                       R6 R5 K16 ["story"]
       93 SETLIST                          R4 R5 1 [1]
       95 SETTABLEKS                       R4 R3 K10 ["stories"]
       97 RETURN                           R3 1
