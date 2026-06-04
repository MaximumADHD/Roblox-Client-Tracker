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
       16 GETIMPORT                        R2 K11 [UDim2.fromOffset]
       18 LOADN                            R3 50
       19 LOADN                            R4 32
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K11 [UDim2.fromOffset]
       23 LOADN                            R4 16
       24 LOADN                            R5 16
       25 CALL                             R3 2 1
       26 MOVE                             R4 R1
       27 LOADK                            R5 K12 [".Component-ViewTypeSelector"]
       28 DUPTABLE                         R6 K17 [{"BackgroundTransparency", "BorderSizePixel", "Size", "Width"}]
       29 LOADN                            R7 1
       30 SETTABLEKS                       R7 R6 K13 ["BackgroundTransparency"]
       32 LOADN                            R7 0
       33 SETTABLEKS                       R7 R6 K14 ["BorderSizePixel"]
       35 SETTABLEKS                       R2 R6 K15 ["Size"]
       37 LOADN                            R7 120
       38 SETTABLEKS                       R7 R6 K16 ["Width"]
       40 NEWTABLE                         R7 0 3
       42 MOVE                             R8 R1
       43 LOADK                            R9 K18 [".IconOnly"]
       44 DUPTABLE                         R10 K19 [{"Size"}]
       45 SETTABLEKS                       R3 R10 K15 ["Size"]
       47 CALL                             R8 2 1
       48 MOVE                             R9 R1
       49 LOADK                            R10 K20 [".List > .Component-SelectInput"]
       50 NEWTABLE                         R11 0 0
       52 NEWTABLE                         R12 0 2
       54 MOVE                             R13 R1
       55 LOADK                            R14 K21 ["> ImageButton"]
       56 DUPTABLE                         R15 K23 [{"Image"}]
       57 LOADK                            R16 K24 ["$ListImage"]
       58 SETTABLEKS                       R16 R15 K22 ["Image"]
       60 NEWTABLE                         R16 0 0
       62 CALL                             R13 3 1
       63 MOVE                             R14 R1
       64 LOADK                            R15 K25 ["> TextButton > #SelectedItemIcon"]
       65 DUPTABLE                         R16 K23 [{"Image"}]
       66 LOADK                            R17 K24 ["$ListImage"]
       67 SETTABLEKS                       R17 R16 K22 ["Image"]
       69 NEWTABLE                         R17 0 0
       71 CALL                             R14 3 -1
       72 SETLIST                          R12 R13 -1 [1]
       74 CALL                             R9 3 1
       75 MOVE                             R10 R1
       76 LOADK                            R11 K26 [".Grid > .Component-SelectInput"]
       77 NEWTABLE                         R12 0 0
       79 NEWTABLE                         R13 0 2
       81 MOVE                             R14 R1
       82 LOADK                            R15 K21 ["> ImageButton"]
       83 DUPTABLE                         R16 K23 [{"Image"}]
       84 LOADK                            R17 K27 ["$GridImage"]
       85 SETTABLEKS                       R17 R16 K22 ["Image"]
       87 NEWTABLE                         R17 0 0
       89 CALL                             R14 3 1
       90 MOVE                             R15 R1
       91 LOADK                            R16 K25 ["> TextButton > #SelectedItemIcon"]
       92 DUPTABLE                         R17 K23 [{"Image"}]
       93 LOADK                            R18 K27 ["$GridImage"]
       94 SETTABLEKS                       R18 R17 K22 ["Image"]
       96 NEWTABLE                         R18 0 0
       98 CALL                             R15 3 -1
       99 SETLIST                          R13 R14 -1 [1]
      101 CALL                             R10 3 -1
      102 SETLIST                          R7 R8 -1 [1]
      104 DUPTABLE                         R8 K32 [{"MenuHeight", "MenuHeightSlider", "SizeDefault", "SizeIconOnly"}]
      105 LOADN                            R9 64
      106 SETTABLEKS                       R9 R8 K28 ["MenuHeight"]
      108 LOADN                            R9 96
      109 SETTABLEKS                       R9 R8 K29 ["MenuHeightSlider"]
      111 SETTABLEKS                       R2 R8 K30 ["SizeDefault"]
      113 SETTABLEKS                       R3 R8 K31 ["SizeIconOnly"]
      115 CALL                             R4 4 -1
      116 RETURN                           R4 -1
