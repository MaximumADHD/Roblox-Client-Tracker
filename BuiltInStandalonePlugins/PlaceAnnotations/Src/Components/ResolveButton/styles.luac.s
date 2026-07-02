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
       19 LOADK                            R4 K10 [".Component-ResolveButton"]
       20 DUPTABLE                         R5 K16 [{["Text"] = "", ["Size"], ["BackgroundTransparency"] = 1}]
       21 GETIMPORT                        R6 K19 [UDim2.fromOffset]
       23 LOADN                            R7 20
       24 LOADN                            R8 20
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K13 ["Size"]
       28 NEWTABLE                         R6 0 7
       30 MOVE                             R7 R2
       31 LOADK                            R8 K20 ["::UIPadding"]
       32 DUPTABLE                         R9 K25 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
       33 GETIMPORT                        R10 K28 [UDim.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 2
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K21 ["PaddingTop"]
       40 GETIMPORT                        R10 K28 [UDim.new]
       42 LOADN                            R11 0
       43 LOADN                            R12 2
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K22 ["PaddingLeft"]
       47 GETIMPORT                        R10 K28 [UDim.new]
       49 LOADN                            R11 0
       50 LOADN                            R12 2
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K23 ["PaddingRight"]
       54 GETIMPORT                        R10 K28 [UDim.new]
       56 LOADN                            R11 0
       57 LOADN                            R12 2
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K24 ["PaddingBottom"]
       61 CALL                             R7 2 1
       62 MOVE                             R8 R2
       63 LOADK                            R9 K29 [":hover"]
       64 DUPTABLE                         R10 K33 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift200Transparency"}]
       65 CALL                             R8 2 1
       66 MOVE                             R9 R2
       67 LOADK                            R10 K34 [":press"]
       68 DUPTABLE                         R11 K36 [{["BackgroundColor3"] = "$Shift200Color", ["BackgroundTransparency"] = "$Shift100Transparency"}]
       69 CALL                             R9 2 1
       70 MOVE                             R10 R2
       71 LOADK                            R11 K37 ["::UICorner"]
       72 DUPTABLE                         R12 K39 [{"CornerRadius"}]
       73 GETIMPORT                        R13 K28 [UDim.new]
       75 LOADN                            R14 0
       76 LOADN                            R15 4
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K38 ["CornerRadius"]
       80 CALL                             R10 2 1
       81 MOVE                             R11 R2
       82 LOADK                            R12 K40 ["> ImageLabel"]
       83 DUPTABLE                         R13 K45 [{["AnchorPoint"], ["Position"], ["Size"], ["Image"] = "$ResolveIcon", ["BackgroundTransparency"] = 1}]
       84 GETIMPORT                        R14 K47 [Vector2.new]
       86 LOADK                            R15 K48 [0.5]
       87 LOADK                            R16 K48 [0.5]
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K41 ["AnchorPoint"]
       91 GETIMPORT                        R14 K50 [UDim2.fromScale]
       93 LOADK                            R15 K48 [0.5]
       94 LOADK                            R16 K48 [0.5]
       95 CALL                             R14 2 1
       96 SETTABLEKS                       R14 R13 K42 ["Position"]
       98 GETIMPORT                        R14 K19 [UDim2.fromOffset]
      100 LOADN                            R15 15
      101 LOADN                            R16 15
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K13 ["Size"]
      105 CALL                             R11 2 1
      106 MOVE                             R12 R2
      107 LOADK                            R13 K51 [".Resolved"]
      108 NEWTABLE                         R14 0 0
      110 NEWTABLE                         R15 0 1
      112 MOVE                             R16 R2
      113 LOADK                            R17 K40 ["> ImageLabel"]
      114 DUPTABLE                         R18 K53 [{["Image"] = "$ResolveIconResolved"}]
      115 CALL                             R16 2 -1
      116 SETLIST                          R15 R16 -1 [1]
      118 CALL                             R12 3 1
      119 MOVE                             R13 R2
      120 LOADK                            R14 K54 [".Disabled"]
      121 NEWTABLE                         R15 0 0
      123 NEWTABLE                         R16 0 1
      125 MOVE                             R17 R2
      126 LOADK                            R18 K40 ["> ImageLabel"]
      127 DUPTABLE                         R19 K57 [{["ImageTransparency"] = 0.4}]
      128 CALL                             R17 2 -1
      129 SETLIST                          R16 R17 -1 [1]
      131 CALL                             R13 3 -1
      132 SETLIST                          R6 R7 -1 [1]
      134 CALL                             R3 3 -1
      135 RETURN                           R3 -1
