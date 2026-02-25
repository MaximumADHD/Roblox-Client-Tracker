PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [UDim.new]
        6 LOADN                            R3 0
        7 GETTABLEKS                       R6 R1 K5 ["creatorPill"]
        9 GETTABLEKS                       R5 R6 K6 ["spacingUnit"]
       11 DIVK                             R4 R5 K4 [2]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["new"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K7 ["createElement"]
       20 GETUPVAL                         R5 3
       21 DUPTABLE                         R6 K16 [{"AutomaticSize", "BackgroundColor3", "Layout", "LayoutOrder", "OnClick", "Padding", "Spacing", "VerticalAlignment"}]
       22 GETIMPORT                        R7 K19 [Enum.AutomaticSize.XY]
       24 SETTABLEKS                       R7 R6 K8 ["AutomaticSize"]
       26 GETTABLEKS                       R8 R1 K20 ["searchPill"]
       28 GETTABLEKS                       R7 R8 K21 ["backgroundColor"]
       30 SETTABLEKS                       R7 R6 K9 ["BackgroundColor3"]
       32 GETIMPORT                        R7 K24 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R7 R6 K10 ["Layout"]
       36 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       38 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       40 GETTABLEKS                       R7 R0 K25 ["OnActivated"]
       42 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       44 GETTABLEKS                       R7 R2 K26 ["Offset"]
       46 SETTABLEKS                       R7 R6 K13 ["Padding"]
       48 GETTABLEKS                       R7 R2 K26 ["Offset"]
       50 SETTABLEKS                       R7 R6 K14 ["Spacing"]
       52 GETIMPORT                        R7 K28 [Enum.VerticalAlignment.Center]
       54 SETTABLEKS                       R7 R6 K15 ["VerticalAlignment"]
       56 DUPTABLE                         R7 K32 [{"Corner", "CreatorLabel", "Close"}]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R8 R9 K7 ["createElement"]
       60 LOADK                            R9 K33 ["UICorner"]
       61 DUPTABLE                         R10 K35 [{"CornerRadius"}]
       62 SETTABLEKS                       R2 R10 K34 ["CornerRadius"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K29 ["Corner"]
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R8 R9 K7 ["createElement"]
       70 GETUPVAL                         R9 4
       71 DUPTABLE                         R10 K39 [{"CreatorId", "CreatorName", "CreatorType", "LayoutOrder"}]
       72 GETTABLEKS                       R11 R0 K36 ["CreatorId"]
       74 SETTABLEKS                       R11 R10 K36 ["CreatorId"]
       76 GETTABLEKS                       R11 R0 K37 ["CreatorName"]
       78 SETTABLEKS                       R11 R10 K37 ["CreatorName"]
       80 GETTABLEKS                       R11 R0 K38 ["CreatorType"]
       82 SETTABLEKS                       R11 R10 K38 ["CreatorType"]
       84 NAMECALL                         R11 R3 K40 ["getNextOrder"]
       86 CALL                             R11 1 1
       87 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       89 CALL                             R8 2 1
       90 SETTABLEKS                       R8 R7 K30 ["CreatorLabel"]
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R8 R9 K7 ["createElement"]
       95 LOADK                            R9 K41 ["ImageLabel"]
       96 DUPTABLE                         R10 K45 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
       97 LOADN                            R11 1
       98 SETTABLEKS                       R11 R10 K42 ["BackgroundTransparency"]
      100 GETUPVAL                         R12 5
      101 GETTABLEKS                       R11 R12 K46 ["CLOSE_BUTTON"]
      103 SETTABLEKS                       R11 R10 K43 ["Image"]
      105 NAMECALL                         R11 R3 K40 ["getNextOrder"]
      107 CALL                             R11 1 1
      108 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      110 GETIMPORT                        R11 K49 [UDim2.fromOffset]
      112 LOADN                            R12 16
      113 LOADN                            R13 16
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K44 ["Size"]
      117 CALL                             R8 2 1
      118 SETTABLEKS                       R8 R7 K31 ["Close"]
      120 CALL                             R4 3 -1
      121 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Components"]
       27 GETTABLEKS                       R4 R5 K11 ["CreatorLabel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Util"]
       36 GETTABLEKS                       R5 R6 K13 ["Images"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Util"]
       45 GETTABLEKS                       R6 R7 K14 ["LayoutOrderIterator"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R7 R2 K15 ["ContextServices"]
       50 GETTABLEKS                       R6 R7 K16 ["Stylizer"]
       52 GETTABLEKS                       R8 R2 K17 ["UI"]
       54 GETTABLEKS                       R7 R8 K18 ["Pane"]
       56 DUPCLOSURE                       R8 K19 [PROTO_0]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 RETURN                           R8 1
