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
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-MappingsList"]
       24 DUPTABLE                         R5 K14 [{"AutomaticSize", "Size", "AnchorPoint", "Position"}]
       25 GETIMPORT                        R6 K17 [Enum.AutomaticSize.Y]
       27 SETTABLEKS                       R6 R5 K10 ["AutomaticSize"]
       29 GETIMPORT                        R6 K20 [UDim2.new]
       31 LOADN                            R7 0
       32 LOADN                            R8 24
       33 LOADN                            R9 0
       34 LOADN                            R10 0
       35 CALL                             R6 4 1
       36 SETTABLEKS                       R6 R5 K11 ["Size"]
       38 GETIMPORT                        R6 K22 [Vector2.new]
       40 LOADN                            R7 1
       41 LOADN                            R8 0
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K12 ["AnchorPoint"]
       45 GETIMPORT                        R6 K20 [UDim2.new]
       47 LOADN                            R7 1
       48 LOADN                            R8 0
       49 LOADN                            R9 0
       50 LOADN                            R10 0
       51 CALL                             R6 4 1
       52 SETTABLEKS                       R6 R5 K13 ["Position"]
       54 NEWTABLE                         R6 0 2
       56 MOVE                             R7 R2
       57 LOADK                            R8 K23 ["::UIPadding"]
       58 DUPTABLE                         R9 K27 [{"PaddingTop", "PaddingBottom", "PaddingRight"}]
       59 GETIMPORT                        R10 K29 [UDim.new]
       61 LOADN                            R11 0
       62 LOADN                            R12 20
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K24 ["PaddingTop"]
       66 GETIMPORT                        R10 K29 [UDim.new]
       68 LOADN                            R11 0
       69 LOADN                            R12 20
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K25 ["PaddingBottom"]
       73 GETIMPORT                        R10 K29 [UDim.new]
       75 LOADN                            R11 0
       76 LOADN                            R12 20
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K26 ["PaddingRight"]
       80 CALL                             R7 2 1
       81 MOVE                             R8 R2
       82 LOADK                            R9 K30 ["::UIListLayout"]
       83 DUPTABLE                         R10 K32 [{"Padding"}]
       84 GETIMPORT                        R11 K29 [UDim.new]
       86 LOADN                            R12 0
       87 LOADN                            R13 2
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K31 ["Padding"]
       91 CALL                             R8 2 -1
       92 SETLIST                          R6 R7 -1 [1]
       94 CALL                             R3 3 -1
       95 RETURN                           R3 -1
