MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-DropdownButton"]
       20 DUPTABLE                         R5 K13 [{"BackgroundTransparency", "BorderSizePixel"}]
       21 LOADN                            R6 1
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 5
       29 MOVE                             R7 R2
       30 LOADK                            R8 K14 [".AddPadding"]
       31 NEWTABLE                         R9 0 0
       33 NEWTABLE                         R10 0 1
       35 MOVE                             R11 R2
       36 LOADK                            R12 K15 ["::UIPadding"]
       37 DUPTABLE                         R13 K20 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
       38 GETIMPORT                        R14 K23 [UDim.new]
       40 LOADN                            R15 0
       41 LOADN                            R16 2
       42 CALL                             R14 2 1
       43 SETTABLEKS                       R14 R13 K16 ["PaddingTop"]
       45 GETIMPORT                        R14 K23 [UDim.new]
       47 LOADN                            R15 0
       48 LOADN                            R16 2
       49 CALL                             R14 2 1
       50 SETTABLEKS                       R14 R13 K17 ["PaddingLeft"]
       52 GETIMPORT                        R14 K23 [UDim.new]
       54 LOADN                            R15 0
       55 LOADN                            R16 2
       56 CALL                             R14 2 1
       57 SETTABLEKS                       R14 R13 K18 ["PaddingRight"]
       59 GETIMPORT                        R14 K23 [UDim.new]
       61 LOADN                            R15 0
       62 LOADN                            R16 2
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K19 ["PaddingBottom"]
       66 CALL                             R11 2 -1
       67 SETLIST                          R10 R11 -1 [1]
       69 CALL                             R7 3 1
       70 MOVE                             R8 R2
       71 LOADK                            R9 K24 ["::UICorner"]
       72 DUPTABLE                         R10 K26 [{"CornerRadius"}]
       73 GETIMPORT                        R11 K23 [UDim.new]
       75 LOADN                            R12 0
       76 LOADN                            R13 4
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K25 ["CornerRadius"]
       80 CALL                             R8 2 1
       81 MOVE                             R9 R2
       82 LOADK                            R10 K27 [":hover"]
       83 DUPTABLE                         R11 K29 [{"BackgroundTransparency", "BackgroundColor3"}]
       84 LOADK                            R12 K30 ["$Shift200Transparency"]
       85 SETTABLEKS                       R12 R11 K11 ["BackgroundTransparency"]
       87 LOADK                            R12 K31 ["$Shift200Color"]
       88 SETTABLEKS                       R12 R11 K28 ["BackgroundColor3"]
       90 CALL                             R9 2 1
       91 MOVE                             R10 R2
       92 LOADK                            R11 K32 [":press"]
       93 DUPTABLE                         R12 K29 [{"BackgroundTransparency", "BackgroundColor3"}]
       94 LOADK                            R13 K33 ["$Shift100Transparency"]
       95 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
       97 LOADK                            R13 K31 ["$Shift200Color"]
       98 SETTABLEKS                       R13 R12 K28 ["BackgroundColor3"]
      100 CALL                             R10 2 1
      101 MOVE                             R11 R2
      102 LOADK                            R12 K34 [".Disabled"]
      103 DUPTABLE                         R13 K36 [{"ImageTransparency"}]
      104 LOADK                            R14 K37 [0.4]
      105 SETTABLEKS                       R14 R13 K35 ["ImageTransparency"]
      107 CALL                             R11 2 -1
      108 SETLIST                          R6 R7 -1 [1]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1
