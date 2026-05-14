PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["ImageLabel"]
        4 DUPTABLE                         R3 K5 [{"Name", "Size", "BackgroundColor3"}]
        5 LOADK                            R4 K6 ["LoadingPrompt"]
        6 SETTABLEKS                       R4 R3 K2 ["Name"]
        8 GETIMPORT                        R4 K9 [UDim2.new]
       10 LOADN                            R5 1
       11 LOADN                            R6 0
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 CALL                             R4 4 1
       15 SETTABLEKS                       R4 R3 K3 ["Size"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K10 ["Theme"]
       20 GETIMPORT                        R6 K14 [Enum.StudioStyleGuideColor.MainBackground]
       22 GETIMPORT                        R7 K17 [Enum.StudioStyleGuideModifier.Default]
       24 NAMECALL                         R4 R4 K18 ["GetColor"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K4 ["BackgroundColor3"]
       29 DUPTABLE                         R4 K20 [{"description"}]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 LOADK                            R6 K21 ["TextLabel"]
       34 DUPTABLE                         R7 K31 [{"AnchorPoint", "BackgroundTransparency", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
       35 GETIMPORT                        R8 K33 [Vector2.new]
       37 LOADK                            R9 K34 [0.5]
       38 LOADK                            R10 K34 [0.5]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K22 ["AnchorPoint"]
       42 LOADN                            R8 1
       43 SETTABLEKS                       R8 R7 K23 ["BackgroundTransparency"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K35 ["FONT"]
       48 SETTABLEKS                       R8 R7 K24 ["Font"]
       50 LOADK                            R8 K36 ["Description"]
       51 SETTABLEKS                       R8 R7 K2 ["Name"]
       53 GETIMPORT                        R8 K9 [UDim2.new]
       55 LOADK                            R9 K34 [0.5]
       56 LOADN                            R10 0
       57 LOADK                            R11 K34 [0.5]
       58 LOADN                            R12 0
       59 CALL                             R8 4 1
       60 SETTABLEKS                       R8 R7 K25 ["Position"]
       62 GETIMPORT                        R8 K9 [UDim2.new]
       64 LOADN                            R9 1
       65 LOADN                            R10 0
       66 LOADN                            R11 1
       67 LOADN                            R12 0
       68 CALL                             R8 4 1
       69 SETTABLEKS                       R8 R7 K3 ["Size"]
       71 LOADK                            R8 K37 ["Importing Avatar, please wait..."]
       72 SETTABLEKS                       R8 R7 K26 ["Text"]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R8 R8 K38 ["FONT_SIZE_MEDIUM"]
       77 SETTABLEKS                       R8 R7 K27 ["TextSize"]
       79 GETIMPORT                        R8 K40 [Enum.TextXAlignment.Center]
       81 SETTABLEKS                       R8 R7 K28 ["TextXAlignment"]
       83 GETIMPORT                        R8 K41 [Enum.TextYAlignment.Center]
       85 SETTABLEKS                       R8 R7 K29 ["TextYAlignment"]
       87 GETUPVAL                         R8 1
       88 GETTABLEKS                       R8 R8 K10 ["Theme"]
       90 GETIMPORT                        R10 K43 [Enum.StudioStyleGuideColor.MainText]
       92 GETIMPORT                        R11 K17 [Enum.StudioStyleGuideModifier.Default]
       94 NAMECALL                         R8 R8 K18 ["GetColor"]
       96 CALL                             R8 3 1
       97 SETTABLEKS                       R8 R7 K30 ["TextColor3"]
       99 CALL                             R5 2 1
      100 SETTABLEKS                       R5 R4 K19 ["description"]
      102 CALL                             R1 3 -1
      103 RETURN                           R1 -1

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
       16 GETIMPORT                        R2 K8 [settings]
       18 CALL                             R2 0 1
       19 GETTABLEKS                       R2 R2 K9 ["Studio"]
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K10 ["src"]
       25 GETTABLEKS                       R4 R4 K11 ["Constants"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K12 ["Component"]
       30 LOADK                            R6 K13 ["LoadingPrompt"]
       31 NAMECALL                         R4 R4 K14 ["extend"]
       33 CALL                             R4 2 1
       34 DUPCLOSURE                       R5 K15 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K16 ["render"]
       40 RETURN                           R4 1
