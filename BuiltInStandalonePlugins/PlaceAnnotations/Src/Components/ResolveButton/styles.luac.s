MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-ResolveButton"]
       20 DUPTABLE                         R5 K14 [{"Text", "Size", "BackgroundTransparency"}]
       21 LOADK                            R6 K15 [""]
       22 SETTABLEKS                       R6 R5 K11 ["Text"]
       24 GETIMPORT                        R6 K18 [UDim2.fromOffset]
       26 LOADN                            R7 20
       27 LOADN                            R8 20
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K12 ["Size"]
       31 LOADN                            R6 1
       32 SETTABLEKS                       R6 R5 K13 ["BackgroundTransparency"]
       34 NEWTABLE                         R6 0 7
       36 MOVE                             R7 R2
       37 LOADK                            R8 K19 ["::UIPadding"]
       38 DUPTABLE                         R9 K24 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
       39 GETIMPORT                        R10 K27 [UDim.new]
       41 LOADN                            R11 0
       42 LOADN                            R12 2
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K20 ["PaddingTop"]
       46 GETIMPORT                        R10 K27 [UDim.new]
       48 LOADN                            R11 0
       49 LOADN                            R12 2
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K21 ["PaddingLeft"]
       53 GETIMPORT                        R10 K27 [UDim.new]
       55 LOADN                            R11 0
       56 LOADN                            R12 2
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K22 ["PaddingRight"]
       60 GETIMPORT                        R10 K27 [UDim.new]
       62 LOADN                            R11 0
       63 LOADN                            R12 2
       64 CALL                             R10 2 1
       65 SETTABLEKS                       R10 R9 K23 ["PaddingBottom"]
       67 CALL                             R7 2 1
       68 MOVE                             R8 R2
       69 LOADK                            R9 K28 [":hover"]
       70 DUPTABLE                         R10 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
       71 LOADK                            R11 K31 ["$Shift200Color"]
       72 SETTABLEKS                       R11 R10 K29 ["BackgroundColor3"]
       74 LOADK                            R11 K32 ["$Shift200Transparency"]
       75 SETTABLEKS                       R11 R10 K13 ["BackgroundTransparency"]
       77 CALL                             R8 2 1
       78 MOVE                             R9 R2
       79 LOADK                            R10 K33 [":press"]
       80 DUPTABLE                         R11 K30 [{"BackgroundColor3", "BackgroundTransparency"}]
       81 LOADK                            R12 K31 ["$Shift200Color"]
       82 SETTABLEKS                       R12 R11 K29 ["BackgroundColor3"]
       84 LOADK                            R12 K34 ["$Shift100Transparency"]
       85 SETTABLEKS                       R12 R11 K13 ["BackgroundTransparency"]
       87 CALL                             R9 2 1
       88 MOVE                             R10 R2
       89 LOADK                            R11 K35 ["::UICorner"]
       90 DUPTABLE                         R12 K37 [{"CornerRadius"}]
       91 GETIMPORT                        R13 K27 [UDim.new]
       93 LOADN                            R14 0
       94 LOADN                            R15 4
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K36 ["CornerRadius"]
       98 CALL                             R10 2 1
       99 MOVE                             R11 R2
      100 LOADK                            R12 K38 ["> ImageLabel"]
      101 DUPTABLE                         R13 K42 [{"AnchorPoint", "Position", "Size", "Image", "BackgroundTransparency"}]
      102 GETIMPORT                        R14 K44 [Vector2.new]
      104 LOADK                            R15 K45 [0.5]
      105 LOADK                            R16 K45 [0.5]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K39 ["AnchorPoint"]
      109 GETIMPORT                        R14 K47 [UDim2.fromScale]
      111 LOADK                            R15 K45 [0.5]
      112 LOADK                            R16 K45 [0.5]
      113 CALL                             R14 2 1
      114 SETTABLEKS                       R14 R13 K40 ["Position"]
      116 GETIMPORT                        R14 K18 [UDim2.fromOffset]
      118 LOADN                            R15 15
      119 LOADN                            R16 15
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K12 ["Size"]
      123 LOADK                            R14 K48 ["$ResolveIcon"]
      124 SETTABLEKS                       R14 R13 K41 ["Image"]
      126 LOADN                            R14 1
      127 SETTABLEKS                       R14 R13 K13 ["BackgroundTransparency"]
      129 CALL                             R11 2 1
      130 MOVE                             R12 R2
      131 LOADK                            R13 K49 [".Resolved"]
      132 NEWTABLE                         R14 0 0
      134 NEWTABLE                         R15 0 1
      136 MOVE                             R16 R2
      137 LOADK                            R17 K38 ["> ImageLabel"]
      138 DUPTABLE                         R18 K50 [{"Image"}]
      139 LOADK                            R19 K51 ["$ResolveIconResolved"]
      140 SETTABLEKS                       R19 R18 K41 ["Image"]
      142 CALL                             R16 2 -1
      143 SETLIST                          R15 R16 -1 [1]
      145 CALL                             R12 3 1
      146 MOVE                             R13 R2
      147 LOADK                            R14 K52 [".Disabled"]
      148 NEWTABLE                         R15 0 0
      150 NEWTABLE                         R16 0 1
      152 MOVE                             R17 R2
      153 LOADK                            R18 K38 ["> ImageLabel"]
      154 DUPTABLE                         R19 K54 [{"ImageTransparency"}]
      155 LOADK                            R20 K55 [0.4]
      156 SETTABLEKS                       R20 R19 K53 ["ImageTransparency"]
      158 CALL                             R17 2 -1
      159 SETLIST                          R16 R17 -1 [1]
      161 CALL                             R13 3 -1
      162 SETLIST                          R6 R7 -1 [1]
      164 CALL                             R3 3 -1
      165 RETURN                           R3 -1
