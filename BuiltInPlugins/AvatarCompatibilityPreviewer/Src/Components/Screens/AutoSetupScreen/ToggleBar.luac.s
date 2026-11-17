PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K11 [{["Size"], ["LayoutOrder"], ["AnchorPoint"], ["HorizontalAlignment"], ["Position"], ["Transparency"] = 0, ["Style"] = "SubtleBorderBox"}]
        9 GETIMPORT                        R5 K14 [UDim2.new]
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 GETTABLEKS                       R9 R0 K15 ["Height"]
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R4 K2 ["Size"]
       19 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       21 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       23 GETIMPORT                        R5 K17 [Vector2.new]
       25 LOADK                            R6 K18 [0.5]
       26 LOADN                            R7 1
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K4 ["AnchorPoint"]
       30 GETIMPORT                        R5 K21 [Enum.HorizontalAlignment.Center]
       32 SETTABLEKS                       R5 R4 K5 ["HorizontalAlignment"]
       34 GETIMPORT                        R5 K23 [UDim2.fromScale]
       36 LOADK                            R6 K18 [0.5]
       37 LOADN                            R7 1
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K6 ["Position"]
       41 DUPTABLE                         R5 K26 [{"Label", "Toggle"}]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K1 ["createElement"]
       45 GETUPVAL                         R7 3
       46 DUPTABLE                         R8 K29 [{"Text", "TextTruncate"}]
       47 LOADK                            R11 K30 ["ToggleBar"]
       48 LOADK                            R12 K31 ["ConfigureModels"]
       49 NAMECALL                         R9 R1 K32 ["getText"]
       51 CALL                             R9 3 1
       52 SETTABLEKS                       R9 R8 K27 ["Text"]
       54 GETIMPORT                        R9 K34 [Enum.TextTruncate.AtEnd]
       56 SETTABLEKS                       R9 R8 K28 ["TextTruncate"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K24 ["Label"]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R6 R6 K1 ["createElement"]
       64 GETUPVAL                         R7 2
       65 DUPTABLE                         R8 K38 [{["LayoutOrder"] = 1, ["AutomaticSize"], ["OnClick"], ["AnchorPoint"], ["Position"]}]
       66 GETIMPORT                        R9 K40 [Enum.AutomaticSize.XY]
       68 SETTABLEKS                       R9 R8 K36 ["AutomaticSize"]
       70 GETTABLEKS                       R9 R0 K25 ["Toggle"]
       72 SETTABLEKS                       R9 R8 K37 ["OnClick"]
       74 GETIMPORT                        R9 K17 [Vector2.new]
       76 LOADN                            R10 1
       77 LOADK                            R11 K18 [0.5]
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K4 ["AnchorPoint"]
       81 GETIMPORT                        R9 K14 [UDim2.new]
       83 LOADN                            R10 1
       84 LOADN                            R11 0
       85 LOADK                            R12 K18 [0.5]
       86 LOADN                            R13 0
       87 CALL                             R9 4 1
       88 SETTABLEKS                       R9 R8 K6 ["Position"]
       90 DUPTABLE                         R9 K42 [{"Icon"}]
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R10 R10 K1 ["createElement"]
       94 GETUPVAL                         R11 4
       95 DUPTABLE                         R12 K46 [{["Rotation"], ["Style"] = "Collapse", ["ImageColor3"]}]
       96 GETTABLEKS                       R14 R0 K47 ["isTableHidden"]
       98 JUMPIFNOT                        R14 ; [+2]
       99 LOADN                            R13 180
      100 JUMP                             ; [+1]
      101 LOADN                            R13 0
      102 SETTABLEKS                       R13 R12 K43 ["Rotation"]
      104 GETTABLEKS                       R13 R0 K48 ["ButtonColor"]
      106 SETTABLEKS                       R13 R12 K45 ["ImageColor3"]
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K41 ["Icon"]
      111 CALL                             R6 3 1
      112 SETTABLEKS                       R6 R5 K25 ["Toggle"]
      114 CALL                             R2 3 -1
      115 RETURN                           R2 -1

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
