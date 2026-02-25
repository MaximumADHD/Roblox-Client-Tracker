PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClick"]
        8 GETTABLEKS                       R6 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R5 R6 K5 ["itemRow"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K6 ["createElement"]
       15 LOADK                            R7 K7 ["Frame"]
       16 DUPTABLE                         R8 K10 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
       17 GETIMPORT                        R9 K13 [UDim2.new]
       19 LOADN                            R10 0
       20 LOADN                            R11 50
       21 LOADN                            R12 1
       22 LOADN                            R13 0
       23 CALL                             R9 4 1
       24 SETTABLEKS                       R9 R8 K8 ["Size"]
       26 SETTABLEKS                       R3 R8 K2 ["LayoutOrder"]
       28 LOADN                            R9 1
       29 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
       31 DUPTABLE                         R9 K16 [{"Layout", "Button"}]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R10 R11 K6 ["createElement"]
       35 LOADK                            R11 K17 ["UIListLayout"]
       36 DUPTABLE                         R12 K21 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
       37 GETIMPORT                        R13 K24 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R13 R12 K18 ["FillDirection"]
       41 GETIMPORT                        R13 K25 [Enum.SortOrder.LayoutOrder]
       43 SETTABLEKS                       R13 R12 K19 ["SortOrder"]
       45 GETIMPORT                        R13 K27 [Enum.VerticalAlignment.Center]
       47 SETTABLEKS                       R13 R12 K20 ["VerticalAlignment"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K14 ["Layout"]
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R10 R11 K6 ["createElement"]
       55 LOADK                            R11 K28 ["TextButton"]
       56 NEWTABLE                         R12 8 0
       58 GETTABLEKS                       R13 R5 K29 ["insertButtonTextColor"]
       60 SETTABLEKS                       R13 R12 K30 ["TextColor3"]
       62 GETUPVAL                         R14 1
       63 GETTABLEKS                       R13 R14 K31 ["FONT"]
       65 SETTABLEKS                       R13 R12 K32 ["Font"]
       67 LOADN                            R13 15
       68 SETTABLEKS                       R13 R12 K33 ["TextSize"]
       70 LOADK                            R15 K34 ["Common"]
       71 LOADK                            R16 K35 ["Insert"]
       72 NAMECALL                         R13 R2 K36 ["getText"]
       74 CALL                             R13 3 1
       75 SETTABLEKS                       R13 R12 K37 ["Text"]
       77 GETIMPORT                        R13 K13 [UDim2.new]
       79 LOADN                            R14 1
       80 LOADN                            R15 0
       81 LOADN                            R16 0
       82 LOADN                            R17 20
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K8 ["Size"]
       86 GETTABLEKS                       R13 R5 K38 ["insertButtonColor"]
       88 SETTABLEKS                       R13 R12 K39 ["BackgroundColor3"]
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R14 R15 K40 ["Event"]
       93 GETTABLEKS                       R13 R14 K41 ["MouseButton1Click"]
       95 SETTABLE                         R4 R12 R13
       96 DUPTABLE                         R13 K43 [{"UICorner"}]
       97 GETUPVAL                         R15 0
       98 GETTABLEKS                       R14 R15 K6 ["createElement"]
      100 LOADK                            R15 K42 ["UICorner"]
      101 DUPTABLE                         R16 K45 [{"CornerRadius"}]
      102 GETIMPORT                        R17 K47 [UDim.new]
      104 LOADN                            R18 0
      105 LOADN                            R19 5
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K44 ["CornerRadius"]
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K42 ["UICorner"]
      112 CALL                             R10 3 1
      113 SETTABLEKS                       R10 R9 K15 ["Button"]
      115 CALL                             R6 3 -1
      116 RETURN                           R6 -1

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
       19 GETTABLEKS                       R5 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Util"]
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
