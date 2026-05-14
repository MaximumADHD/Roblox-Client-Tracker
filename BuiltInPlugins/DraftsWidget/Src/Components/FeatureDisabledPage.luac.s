PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Text"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["createElement"]
       11 LOADK                            R4 K4 ["Frame"]
       12 DUPTABLE                         R5 K7 [{"BackgroundTransparency", "Size"}]
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       16 GETIMPORT                        R6 K10 [UDim2.new]
       18 LOADN                            R7 1
       19 LOADN                            R8 0
       20 LOADN                            R9 1
       21 LOADN                            R10 0
       22 CALL                             R6 4 1
       23 SETTABLEKS                       R6 R5 K6 ["Size"]
       25 DUPTABLE                         R6 K13 [{"UIPadding", "Error"}]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K3 ["createElement"]
       29 LOADK                            R8 K11 ["UIPadding"]
       30 DUPTABLE                         R9 K18 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
       31 GETIMPORT                        R10 K20 [UDim.new]
       33 LOADN                            R11 0
       34 LOADN                            R12 16
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K14 ["PaddingBottom"]
       38 GETIMPORT                        R10 K20 [UDim.new]
       40 LOADN                            R11 0
       41 LOADN                            R12 16
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K15 ["PaddingTop"]
       45 GETIMPORT                        R10 K20 [UDim.new]
       47 LOADN                            R11 0
       48 LOADN                            R12 16
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K16 ["PaddingLeft"]
       52 GETIMPORT                        R10 K20 [UDim.new]
       54 LOADN                            R11 0
       55 LOADN                            R12 16
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K17 ["PaddingRight"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K11 ["UIPadding"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K3 ["createElement"]
       65 LOADK                            R8 K21 ["TextLabel"]
       66 DUPTABLE                         R9 K28 [{"Size", "BackgroundTransparency", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
       67 GETIMPORT                        R10 K10 [UDim2.new]
       69 LOADN                            R11 1
       70 LOADN                            R12 0
       71 LOADN                            R13 1
       72 LOADN                            R14 0
       73 CALL                             R10 4 1
       74 SETTABLEKS                       R10 R9 K6 ["Size"]
       76 LOADN                            R10 1
       77 SETTABLEKS                       R10 R9 K5 ["BackgroundTransparency"]
       79 SETTABLEKS                       R2 R9 K2 ["Text"]
       81 GETTABLEKS                       R10 R1 K29 ["labels"]
       83 GETTABLEKS                       R10 R10 K30 ["MainFont"]
       85 SETTABLEKS                       R10 R9 K22 ["Font"]
       87 GETTABLEKS                       R10 R1 K29 ["labels"]
       89 GETTABLEKS                       R10 R10 K31 ["MainText"]
       91 SETTABLEKS                       R10 R9 K23 ["TextColor3"]
       93 LOADN                            R10 18
       94 SETTABLEKS                       R10 R9 K24 ["TextSize"]
       96 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Center]
       98 SETTABLEKS                       R10 R9 K25 ["TextXAlignment"]
      100 GETIMPORT                        R10 K35 [Enum.TextYAlignment.Center]
      102 SETTABLEKS                       R10 R9 K26 ["TextYAlignment"]
      104 LOADB                            R10 1
      105 SETTABLEKS                       R10 R9 K27 ["TextWrapped"]
      107 CALL                             R7 2 1
      108 SETTABLEKS                       R7 R6 K12 ["Error"]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R1 K10 ["Component"]
       29 LOADK                            R7 K11 ["FeatureDisabledPage"]
       30 NAMECALL                         R5 R5 K12 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R6 R5 K14 ["render"]
       37 MOVE                             R6 R4
       38 DUPTABLE                         R7 K16 [{"Stylizer"}]
       39 GETTABLEKS                       R8 R3 K15 ["Stylizer"]
       41 SETTABLEKS                       R8 R7 K15 ["Stylizer"]
       43 CALL                             R6 1 1
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 MOVE                             R5 R6
       47 RETURN                           R5 1
