PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["renderContent"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["title"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["titleWidth"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["Stylizer"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K6 ["createElement"]
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K11 [{"BackgroundTransparency", "contentPadding", "FillDirection", "LayoutOrder", "width"}]
       25 LOADN                            R9 1
       26 SETTABLEKS                       R9 R8 K7 ["BackgroundTransparency"]
       28 GETIMPORT                        R9 K14 [UDim.new]
       30 LOADN                            R10 0
       31 LOADN                            R11 20
       32 CALL                             R9 2 1
       33 SETTABLEKS                       R9 R8 K8 ["contentPadding"]
       35 GETIMPORT                        R9 K17 [Enum.FillDirection.Horizontal]
       37 SETTABLEKS                       R9 R8 K9 ["FillDirection"]
       39 SETTABLEKS                       R1 R8 K1 ["LayoutOrder"]
       41 GETIMPORT                        R9 K14 [UDim.new]
       43 LOADN                            R10 1
       44 LOADN                            R11 0
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K10 ["width"]
       48 DUPTABLE                         R9 K20 [{"Title", "Container"}]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K6 ["createElement"]
       52 GETUPVAL                         R11 2
       53 DUPTABLE                         R12 K26 [{"BackgroundTransparency", "Font", "LayoutOrder", "Text", "TextColor3", "TextXAlignment", "TextSize", "width"}]
       54 LOADN                            R13 1
       55 SETTABLEKS                       R13 R12 K7 ["BackgroundTransparency"]
       57 GETTABLEKS                       R13 R5 K21 ["Font"]
       59 SETTABLEKS                       R13 R12 K21 ["Font"]
       61 LOADN                            R13 1
       62 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       64 SETTABLEKS                       R3 R12 K22 ["Text"]
       66 GETTABLEKS                       R13 R5 K27 ["SubTextColor"]
       68 SETTABLEKS                       R13 R12 K23 ["TextColor3"]
       70 GETIMPORT                        R13 K29 [Enum.TextXAlignment.Left]
       72 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
       74 LOADN                            R13 18
       75 SETTABLEKS                       R13 R12 K25 ["TextSize"]
       77 GETIMPORT                        R13 K14 [UDim.new]
       79 LOADN                            R14 0
       80 MOVE                             R15 R4
       81 CALL                             R13 2 1
       82 SETTABLEKS                       R13 R12 K10 ["width"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K18 ["Title"]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K6 ["createElement"]
       90 GETUPVAL                         R11 1
       91 DUPTABLE                         R12 K30 [{"BackgroundTransparency", "LayoutOrder", "width"}]
       92 LOADN                            R13 1
       93 SETTABLEKS                       R13 R12 K7 ["BackgroundTransparency"]
       95 LOADN                            R13 2
       96 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       98 GETIMPORT                        R13 K14 [UDim.new]
      100 LOADN                            R14 1
      101 MINUS                            R16 R4
      102 SUBK                             R15 R16 K31 [20]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K10 ["width"]
      106 DUPTABLE                         R13 K33 [{"Content"}]
      107 MOVE                             R14 R2
      108 CALL                             R14 0 1
      109 SETTABLEKS                       R14 R13 K32 ["Content"]
      111 CALL                             R10 3 1
      112 SETTABLEKS                       R10 R9 K19 ["Container"]
      114 CALL                             R6 3 -1
      115 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["FitFrame"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Packages"]
       38 GETTABLEKS                       R5 R5 K11 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       43 GETTABLEKS                       R5 R4 K13 ["withContext"]
       45 GETTABLEKS                       R6 R2 K14 ["FitFrameVertical"]
       47 GETTABLEKS                       R7 R2 K15 ["FitTextLabel"]
       49 GETTABLEKS                       R8 R1 K16 ["Component"]
       51 LOADK                            R10 K17 ["ListItem"]
       52 NAMECALL                         R8 R8 K18 ["extend"]
       54 CALL                             R8 2 1
       55 DUPTABLE                         R9 K22 [{"renderContent", "title", "titleWidth"}]
       56 DUPCLOSURE                       R10 K23 [PROTO_0]
       57 SETTABLEKS                       R10 R9 K19 ["renderContent"]
       59 LOADK                            R10 K24 [""]
       60 SETTABLEKS                       R10 R9 K20 ["title"]
       62 GETTABLEKS                       R10 R3 K25 ["LIST_ITEM_TITLE_WIDTH"]
       64 SETTABLEKS                       R10 R9 K21 ["titleWidth"]
       66 SETTABLEKS                       R9 R8 K26 ["defaultProps"]
       68 DUPCLOSURE                       R9 K27 [PROTO_1]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R9 R8 K28 ["render"]
       74 MOVE                             R9 R5
       75 DUPTABLE                         R10 K30 [{"Stylizer"}]
       76 GETTABLEKS                       R11 R4 K29 ["Stylizer"]
       78 SETTABLEKS                       R11 R10 K29 ["Stylizer"]
       80 CALL                             R9 1 1
       81 MOVE                             R10 R8
       82 CALL                             R9 1 1
       83 MOVE                             R8 R9
       84 RETURN                           R8 1
