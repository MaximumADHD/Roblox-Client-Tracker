PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GenerationAngleHelp"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["createElement"]
       16 GETUPVAL                         R5 4
       17 DUPTABLE                         R6 K10 [{"AnchorPoint", "LayoutOrder", "Position", "Text", "TextXAlignment", "Child"}]
       18 GETTABLEKS                       R7 R1 K4 ["AnchorPoint"]
       20 SETTABLEKS                       R7 R6 K4 ["AnchorPoint"]
       22 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       24 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       26 GETTABLEKS                       R7 R1 K6 ["Position"]
       28 SETTABLEKS                       R7 R6 K6 ["Position"]
       30 LOADK                            R9 K0 ["GenerationAngleHelp"]
       31 LOADK                            R10 K11 ["Tooltip"]
       32 NAMECALL                         R7 R2 K12 ["getText"]
       34 CALL                             R7 3 1
       35 SETTABLEKS                       R7 R6 K7 ["Text"]
       37 GETIMPORT                        R7 K15 [Enum.TextXAlignment.Left]
       39 SETTABLEKS                       R7 R6 K8 ["TextXAlignment"]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K3 ["createElement"]
       44 GETUPVAL                         R8 5
       45 DUPTABLE                         R9 K23 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing", "VerticalAlignment", "ZIndex"}]
       46 GETIMPORT                        R10 K25 [Enum.AutomaticSize.X]
       48 SETTABLEKS                       R10 R9 K16 ["AutomaticSize"]
       50 GETIMPORT                        R10 K26 [Enum.HorizontalAlignment.Left]
       52 SETTABLEKS                       R10 R9 K17 ["HorizontalAlignment"]
       54 GETIMPORT                        R10 K29 [Enum.FillDirection.Horizontal]
       56 SETTABLEKS                       R10 R9 K18 ["Layout"]
       58 GETTABLEKS                       R10 R1 K19 ["Padding"]
       60 SETTABLEKS                       R10 R9 K19 ["Padding"]
       62 GETTABLEKS                       R10 R1 K20 ["Spacing"]
       64 SETTABLEKS                       R10 R9 K20 ["Spacing"]
       66 GETIMPORT                        R10 K31 [Enum.VerticalAlignment.Center]
       68 SETTABLEKS                       R10 R9 K21 ["VerticalAlignment"]
       70 GETTABLEKS                       R10 R1 K22 ["ZIndex"]
       72 SETTABLEKS                       R10 R9 K22 ["ZIndex"]
       74 DUPTABLE                         R10 K34 [{"TextLabel", "Image"}]
       75 GETUPVAL                         R11 3
       76 GETTABLEKS                       R11 R11 K3 ["createElement"]
       78 GETUPVAL                         R12 6
       79 DUPTABLE                         R13 K36 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
       80 GETIMPORT                        R14 K25 [Enum.AutomaticSize.X]
       82 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
       84 NAMECALL                         R14 R3 K37 ["getNextOrder"]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       89 GETTABLEKS                       R14 R1 K38 ["TextStyle"]
       91 SETTABLEKS                       R14 R13 K35 ["Style"]
       93 LOADK                            R16 K0 ["GenerationAngleHelp"]
       94 LOADK                            R17 K7 ["Text"]
       95 NAMECALL                         R14 R2 K12 ["getText"]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K7 ["Text"]
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K32 ["TextLabel"]
      103 GETUPVAL                         R11 3
      104 GETTABLEKS                       R11 R11 K3 ["createElement"]
      106 GETUPVAL                         R12 7
      107 DUPTABLE                         R13 K39 [{"LayoutOrder", "Style"}]
      108 NAMECALL                         R14 R3 K37 ["getNextOrder"]
      110 CALL                             R14 1 1
      111 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      113 GETTABLEKS                       R14 R1 K40 ["HelpImage"]
      115 SETTABLEKS                       R14 R13 K35 ["Style"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K33 ["Image"]
      120 CALL                             R7 3 1
      121 SETTABLEKS                       R7 R6 K9 ["Child"]
      123 CALL                             R4 2 -1
      124 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
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
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R3 K11 ["Stylizer"]
       27 GETTABLEKS                       R6 R1 K12 ["UI"]
       29 GETTABLEKS                       R7 R6 K13 ["Image"]
       31 GETTABLEKS                       R8 R6 K14 ["Pane"]
       33 GETTABLEKS                       R9 R6 K15 ["TextLabel"]
       35 GETTABLEKS                       R10 R6 K16 ["Tooltip"]
       37 GETTABLEKS                       R11 R1 K17 ["Util"]
       39 GETTABLEKS                       R11 R11 K18 ["LayoutOrderIterator"]
       41 GETIMPORT                        R12 K5 [require]
       43 GETTABLEKS                       R13 R0 K19 ["Src"]
       45 GETTABLEKS                       R13 R13 K20 ["Resources"]
       47 GETTABLEKS                       R13 R13 K21 ["Theme"]
       49 CALL                             R12 1 1
       50 DUPCLOSURE                       R13 K22 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 RETURN                           R13 1
