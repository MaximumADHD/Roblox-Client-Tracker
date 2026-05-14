PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K9 [{"Size", "LayoutOrder", "AnchorPoint", "HorizontalAlignment", "Position", "Transparency", "Style"}]
        9 GETIMPORT                        R5 K12 [UDim2.new]
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 GETTABLEKS                       R9 R0 K13 ["Height"]
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R4 K2 ["Size"]
       19 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       21 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       23 GETIMPORT                        R5 K15 [Vector2.new]
       25 LOADK                            R6 K16 [0.5]
       26 LOADN                            R7 1
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K4 ["AnchorPoint"]
       30 GETIMPORT                        R5 K19 [Enum.HorizontalAlignment.Center]
       32 SETTABLEKS                       R5 R4 K5 ["HorizontalAlignment"]
       34 GETIMPORT                        R5 K21 [UDim2.fromScale]
       36 LOADK                            R6 K16 [0.5]
       37 LOADN                            R7 1
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K6 ["Position"]
       41 LOADN                            R5 0
       42 SETTABLEKS                       R5 R4 K7 ["Transparency"]
       44 LOADK                            R5 K22 ["SubtleBorderBox"]
       45 SETTABLEKS                       R5 R4 K8 ["Style"]
       47 DUPTABLE                         R5 K25 [{"Label", "Toggle"}]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K1 ["createElement"]
       51 GETUPVAL                         R7 3
       52 DUPTABLE                         R8 K28 [{"Text", "TextTruncate"}]
       53 LOADK                            R11 K29 ["ToggleBar"]
       54 LOADK                            R12 K30 ["ConfigureModels"]
       55 NAMECALL                         R9 R1 K31 ["getText"]
       57 CALL                             R9 3 1
       58 SETTABLEKS                       R9 R8 K26 ["Text"]
       60 GETIMPORT                        R9 K33 [Enum.TextTruncate.AtEnd]
       62 SETTABLEKS                       R9 R8 K27 ["TextTruncate"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K23 ["Label"]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K1 ["createElement"]
       70 GETUPVAL                         R7 2
       71 DUPTABLE                         R8 K36 [{"LayoutOrder", "AutomaticSize", "OnClick", "AnchorPoint", "Position"}]
       72 LOADN                            R9 1
       73 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       75 GETIMPORT                        R9 K38 [Enum.AutomaticSize.XY]
       77 SETTABLEKS                       R9 R8 K34 ["AutomaticSize"]
       79 GETTABLEKS                       R9 R0 K24 ["Toggle"]
       81 SETTABLEKS                       R9 R8 K35 ["OnClick"]
       83 GETIMPORT                        R9 K15 [Vector2.new]
       85 LOADN                            R10 1
       86 LOADK                            R11 K16 [0.5]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K4 ["AnchorPoint"]
       90 GETIMPORT                        R9 K12 [UDim2.new]
       92 LOADN                            R10 1
       93 LOADN                            R11 0
       94 LOADK                            R12 K16 [0.5]
       95 LOADN                            R13 0
       96 CALL                             R9 4 1
       97 SETTABLEKS                       R9 R8 K6 ["Position"]
       99 DUPTABLE                         R9 K40 [{"Icon"}]
      100 GETUPVAL                         R10 1
      101 GETTABLEKS                       R10 R10 K1 ["createElement"]
      103 GETUPVAL                         R11 4
      104 DUPTABLE                         R12 K43 [{"Rotation", "Style", "ImageColor3"}]
      105 GETTABLEKS                       R14 R0 K44 ["isTableHidden"]
      107 JUMPIFNOT                        R14 ; [+2]
      108 LOADN                            R13 180
      109 JUMP                             ; [+1]
      110 LOADN                            R13 0
      111 SETTABLEKS                       R13 R12 K41 ["Rotation"]
      113 LOADK                            R13 K45 ["Collapse"]
      114 SETTABLEKS                       R13 R12 K8 ["Style"]
      116 GETTABLEKS                       R13 R0 K46 ["ButtonColor"]
      118 SETTABLEKS                       R13 R12 K42 ["ImageColor3"]
      120 CALL                             R10 2 1
      121 SETTABLEKS                       R10 R9 K39 ["Icon"]
      123 CALL                             R6 3 1
      124 SETTABLEKS                       R6 R5 K24 ["Toggle"]
      126 CALL                             R2 3 -1
      127 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Image"]
       25 GETTABLEKS                       R5 R3 K11 ["Pane"]
       27 GETTABLEKS                       R6 R3 K12 ["TextLabel"]
       29 GETTABLEKS                       R7 R1 K13 ["ContextServices"]
       31 GETTABLEKS                       R7 R7 K14 ["Localization"]
       33 DUPCLOSURE                       R8 K15 [PROTO_0]
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R4
       39 RETURN                           R8 1
