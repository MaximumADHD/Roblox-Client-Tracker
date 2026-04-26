MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 16 0
       18 GETIMPORT                        R3 K11 [UDim2.fromOffset]
       20 LOADN                            R4 100
       21 LOADN                            R5 50
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R2 K12 ["Size"]
       25 DUPTABLE                         R3 K14 [{"Background"}]
       26 GETTABLEKS                       R4 R1 K15 ["ButtonHover"]
       28 SETTABLEKS                       R4 R3 K13 ["Background"]
       30 SETTABLEKS                       R3 R2 K16 ["Hover"]
       32 DUPTABLE                         R3 K18 [{"Background", "TextColor"}]
       33 GETTABLEKS                       R4 R1 K19 ["ButtonDisabled"]
       35 SETTABLEKS                       R4 R3 K13 ["Background"]
       37 GETTABLEKS                       R4 R1 K20 ["DimmedText"]
       39 SETTABLEKS                       R4 R3 K17 ["TextColor"]
       41 SETTABLEKS                       R3 R2 K21 ["Disabled"]
       43 LOADN                            R3 16
       44 SETTABLEKS                       R3 R2 K22 ["IconSize"]
       46 LOADN                            R3 10
       47 SETTABLEKS                       R3 R2 K23 ["Padding"]
       49 LOADN                            R3 10
       50 SETTABLEKS                       R3 R2 K24 ["Spacing"]
       52 DUPTABLE                         R3 K26 [{"BackgroundColor", "TextColor", "Hover"}]
       53 GETTABLEKS                       R4 R1 K27 ["TextPrimary"]
       55 SETTABLEKS                       R4 R3 K25 ["BackgroundColor"]
       57 GETTABLEKS                       R4 R1 K28 ["SecondaryMuted"]
       59 SETTABLEKS                       R4 R3 K17 ["TextColor"]
       61 DUPTABLE                         R4 K14 [{"Background"}]
       62 GETTABLEKS                       R5 R1 K29 ["TextSecondary"]
       64 SETTABLEKS                       R5 R4 K13 ["Background"]
       66 SETTABLEKS                       R4 R3 K16 ["Hover"]
       68 SETTABLEKS                       R3 R2 K30 ["&Primary"]
       70 DUPTABLE                         R3 K33 [{"BackgroundColor", "BorderColor", "Font", "TextColor", "Hover"}]
       71 GETTABLEKS                       R4 R1 K34 ["PrimaryMain"]
       73 SETTABLEKS                       R4 R3 K25 ["BackgroundColor"]
       75 GETTABLEKS                       R4 R1 K35 ["DialogMainButton"]
       77 SETTABLEKS                       R4 R3 K31 ["BorderColor"]
       79 GETIMPORT                        R4 K38 [Enum.Font.SourceSansBold]
       81 SETTABLEKS                       R4 R3 K32 ["Font"]
       83 GETTABLEKS                       R4 R1 K39 ["DialogMainButtonText"]
       85 SETTABLEKS                       R4 R3 K17 ["TextColor"]
       87 DUPTABLE                         R4 K14 [{"Background"}]
       88 GETTABLEKS                       R5 R1 K40 ["DialogMainButtonHover"]
       90 SETTABLEKS                       R5 R4 K13 ["Background"]
       92 SETTABLEKS                       R4 R3 K16 ["Hover"]
       94 SETTABLEKS                       R3 R2 K41 ["&PrimaryBrand"]
       96 NEWTABLE                         R3 0 0
       98 SETTABLEKS                       R3 R2 K42 ["&Link"]
      100 DUPTABLE                         R3 K43 [{"Padding", "Spacing"}]
      101 LOADN                            R4 5
      102 SETTABLEKS                       R4 R3 K23 ["Padding"]
      104 LOADN                            R4 5
      105 SETTABLEKS                       R4 R3 K24 ["Spacing"]
      107 SETTABLEKS                       R3 R2 K44 ["&Compact"]
      109 DUPTABLE                         R3 K43 [{"Padding", "Spacing"}]
      110 LOADN                            R4 0
      111 SETTABLEKS                       R4 R3 K23 ["Padding"]
      113 LOADN                            R4 0
      114 SETTABLEKS                       R4 R3 K24 ["Spacing"]
      116 SETTABLEKS                       R3 R2 K45 ["&IconOnly"]
      118 RETURN                           R2 1
