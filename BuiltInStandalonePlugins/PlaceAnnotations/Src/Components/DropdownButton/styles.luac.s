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
       20 DUPTABLE                         R5 K15 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       21 NEWTABLE                         R6 0 5
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 [".AddPadding"]
       25 NEWTABLE                         R9 0 0
       27 NEWTABLE                         R10 0 1
       29 MOVE                             R11 R2
       30 LOADK                            R12 K17 ["::UIPadding"]
       31 DUPTABLE                         R13 K22 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
       32 GETIMPORT                        R14 K25 [UDim.new]
       34 LOADN                            R15 0
       35 LOADN                            R16 2
       36 CALL                             R14 2 1
       37 SETTABLEKS                       R14 R13 K18 ["PaddingTop"]
       39 GETIMPORT                        R14 K25 [UDim.new]
       41 LOADN                            R15 0
       42 LOADN                            R16 2
       43 CALL                             R14 2 1
       44 SETTABLEKS                       R14 R13 K19 ["PaddingLeft"]
       46 GETIMPORT                        R14 K25 [UDim.new]
       48 LOADN                            R15 0
       49 LOADN                            R16 2
       50 CALL                             R14 2 1
       51 SETTABLEKS                       R14 R13 K20 ["PaddingRight"]
       53 GETIMPORT                        R14 K25 [UDim.new]
       55 LOADN                            R15 0
       56 LOADN                            R16 2
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K21 ["PaddingBottom"]
       60 CALL                             R11 2 -1
       61 SETLIST                          R10 R11 -1 [1]
       63 CALL                             R7 3 1
       64 MOVE                             R8 R2
       65 LOADK                            R9 K26 ["::UICorner"]
       66 DUPTABLE                         R10 K28 [{"CornerRadius"}]
       67 GETIMPORT                        R11 K25 [UDim.new]
       69 LOADN                            R12 0
       70 LOADN                            R13 4
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K27 ["CornerRadius"]
       74 CALL                             R8 2 1
       75 MOVE                             R9 R2
       76 LOADK                            R10 K29 [":hover"]
       77 DUPTABLE                         R11 K33 [{["BackgroundTransparency"] = "$Shift200Transparency", ["BackgroundColor3"] = "$Shift200Color"}]
       78 CALL                             R9 2 1
       79 MOVE                             R10 R2
       80 LOADK                            R11 K34 [":press"]
       81 DUPTABLE                         R12 K36 [{["BackgroundTransparency"] = "$Shift100Transparency", ["BackgroundColor3"] = "$Shift200Color"}]
       82 CALL                             R10 2 1
       83 MOVE                             R11 R2
       84 LOADK                            R12 K37 [".Disabled"]
       85 DUPTABLE                         R13 K40 [{["ImageTransparency"] = 0.4}]
       86 CALL                             R11 2 -1
       87 SETLIST                          R6 R7 -1 [1]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1
