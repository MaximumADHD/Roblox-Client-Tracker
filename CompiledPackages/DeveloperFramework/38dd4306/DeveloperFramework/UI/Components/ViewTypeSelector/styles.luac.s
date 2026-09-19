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
       28 DUPTABLE                         R6 K20 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["Width"] = 120}]
       29 SETTABLEKS                       R2 R6 K17 ["Size"]
       31 NEWTABLE                         R7 0 3
       33 MOVE                             R8 R1
       34 LOADK                            R9 K21 [".IconOnly"]
       35 DUPTABLE                         R10 K22 [{"Size"}]
       36 SETTABLEKS                       R3 R10 K17 ["Size"]
       38 CALL                             R8 2 1
       39 MOVE                             R9 R1
       40 LOADK                            R10 K23 [".List > .Component-SelectInput"]
       41 NEWTABLE                         R11 0 0
       43 NEWTABLE                         R12 0 2
       45 MOVE                             R13 R1
       46 LOADK                            R14 K24 ["> ImageButton"]
       47 DUPTABLE                         R15 K27 [{["Image"] = "$ListImage"}]
       48 NEWTABLE                         R16 0 0
       50 CALL                             R13 3 1
       51 MOVE                             R14 R1
       52 LOADK                            R15 K28 ["> TextButton > #SelectedItemIcon"]
       53 DUPTABLE                         R16 K27 [{["Image"] = "$ListImage"}]
       54 NEWTABLE                         R17 0 0
       56 CALL                             R14 3 -1
       57 SETLIST                          R12 R13 -1 [1]
       59 CALL                             R9 3 1
       60 MOVE                             R10 R1
       61 LOADK                            R11 K29 [".Grid > .Component-SelectInput"]
       62 NEWTABLE                         R12 0 0
       64 NEWTABLE                         R13 0 2
       66 MOVE                             R14 R1
       67 LOADK                            R15 K24 ["> ImageButton"]
       68 DUPTABLE                         R16 K31 [{["Image"] = "$GridImage"}]
       69 NEWTABLE                         R17 0 0
       71 CALL                             R14 3 1
       72 MOVE                             R15 R1
       73 LOADK                            R16 K28 ["> TextButton > #SelectedItemIcon"]
       74 DUPTABLE                         R17 K31 [{["Image"] = "$GridImage"}]
       75 NEWTABLE                         R18 0 0
       77 CALL                             R15 3 -1
       78 SETLIST                          R13 R14 -1 [1]
       80 CALL                             R10 3 -1
       81 SETLIST                          R7 R8 -1 [1]
       83 DUPTABLE                         R8 K38 [{["MenuHeight"] = 64, ["MenuHeightSlider"] = 96, ["SizeDefault"], ["SizeIconOnly"]}]
       84 SETTABLEKS                       R2 R8 K36 ["SizeDefault"]
       86 SETTABLEKS                       R3 R8 K37 ["SizeIconOnly"]
       88 CALL                             R4 4 -1
       89 RETURN                           R4 -1
