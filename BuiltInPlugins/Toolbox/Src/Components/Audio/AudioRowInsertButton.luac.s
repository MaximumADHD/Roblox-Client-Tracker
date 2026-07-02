PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClick"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R5 R5 K5 ["itemRow"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K6 ["createElement"]
       15 LOADK                            R7 K7 ["Frame"]
       16 DUPTABLE                         R8 K11 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1}]
       17 GETIMPORT                        R9 K14 [UDim2.new]
       19 LOADN                            R10 0
       20 LOADN                            R11 50
       21 LOADN                            R12 1
       22 LOADN                            R13 0
       23 CALL                             R9 4 1
       24 SETTABLEKS                       R9 R8 K8 ["Size"]
       26 SETTABLEKS                       R3 R8 K2 ["LayoutOrder"]
       28 DUPTABLE                         R9 K17 [{"Layout", "Button"}]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K6 ["createElement"]
       32 LOADK                            R11 K18 ["UIListLayout"]
       33 DUPTABLE                         R12 K22 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
       34 GETIMPORT                        R13 K25 [Enum.FillDirection.Vertical]
       36 SETTABLEKS                       R13 R12 K19 ["FillDirection"]
       38 GETIMPORT                        R13 K26 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R13 R12 K20 ["SortOrder"]
       42 GETIMPORT                        R13 K28 [Enum.VerticalAlignment.Center]
       44 SETTABLEKS                       R13 R12 K21 ["VerticalAlignment"]
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K15 ["Layout"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K6 ["createElement"]
       52 LOADK                            R11 K29 ["TextButton"]
       53 NEWTABLE                         R12 8 0
       55 GETTABLEKS                       R13 R5 K30 ["insertButtonTextColor"]
       57 SETTABLEKS                       R13 R12 K31 ["TextColor3"]
       59 GETUPVAL                         R13 1
       60 GETTABLEKS                       R13 R13 K32 ["FONT"]
       62 SETTABLEKS                       R13 R12 K33 ["Font"]
       64 LOADN                            R13 15
       65 SETTABLEKS                       R13 R12 K34 ["TextSize"]
       67 LOADK                            R15 K35 ["Common"]
       68 LOADK                            R16 K36 ["Insert"]
       69 NAMECALL                         R13 R2 K37 ["getText"]
       71 CALL                             R13 3 1
       72 SETTABLEKS                       R13 R12 K38 ["Text"]
       74 GETIMPORT                        R13 K14 [UDim2.new]
       76 LOADN                            R14 1
       77 LOADN                            R15 0
       78 LOADN                            R16 0
       79 LOADN                            R17 20
       80 CALL                             R13 4 1
       81 SETTABLEKS                       R13 R12 K8 ["Size"]
       83 GETTABLEKS                       R13 R5 K39 ["insertButtonColor"]
       85 SETTABLEKS                       R13 R12 K40 ["BackgroundColor3"]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K41 ["Event"]
       90 GETTABLEKS                       R13 R13 K42 ["MouseButton1Click"]
       92 SETTABLE                         R4 R12 R13
       93 DUPTABLE                         R13 K44 [{"UICorner"}]
       94 GETUPVAL                         R14 0
       95 GETTABLEKS                       R14 R14 K6 ["createElement"]
       97 LOADK                            R15 K43 ["UICorner"]
       98 DUPTABLE                         R16 K46 [{"CornerRadius"}]
       99 GETIMPORT                        R17 K48 [UDim.new]
      101 LOADN                            R18 0
      102 LOADN                            R19 5
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K45 ["CornerRadius"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K43 ["UICorner"]
      109 CALL                             R10 3 1
      110 SETTABLEKS                       R10 R9 K16 ["Button"]
      112 CALL                             R6 3 -1
      113 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R4 K10 ["Util"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["Constants"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       30 GETTABLEKS                       R7 R6 K13 ["withContext"]
       32 GETTABLEKS                       R8 R2 K14 ["PureComponent"]
       34 LOADK                            R10 K15 ["AudioRowInsertButtonMetadata"]
       35 NAMECALL                         R8 R8 K16 ["extend"]
       37 CALL                             R8 2 1
       38 DUPCLOSURE                       R9 K17 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R9 R8 K18 ["render"]
       43 MOVE                             R9 R7
       44 DUPTABLE                         R10 K21 [{"Localization", "Stylizer"}]
       45 GETTABLEKS                       R11 R6 K19 ["Localization"]
       47 SETTABLEKS                       R11 R10 K19 ["Localization"]
       49 GETTABLEKS                       R11 R6 K20 ["Stylizer"]
       51 SETTABLEKS                       R11 R10 K20 ["Stylizer"]
       53 CALL                             R9 1 1
       54 MOVE                             R10 R8
       55 CALL                             R9 1 1
       56 MOVE                             R8 R9
       57 RETURN                           R8 1
