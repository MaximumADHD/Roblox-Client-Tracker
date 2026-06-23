PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Color"]
        6 GETTABLEKS                       R4 R2 K3 ["BorderColor"]
        8 GETTABLEKS                       R5 R2 K4 ["Transparency"]
       10 GETTABLEKS                       R6 R2 K5 ["BorderTransparency"]
       12 GETTABLEKS                       R7 R2 K6 ["BackgroundImage"]
       14 GETTABLEKS                       R8 R2 K7 ["BorderImage"]
       16 GETTABLEKS                       R9 R2 K8 ["SliceCenter"]
       18 GETTABLEKS                       R10 R2 K9 ["ZIndex"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K10 ["createElement"]
       23 LOADK                            R12 K11 ["ImageLabel"]
       24 DUPTABLE                         R13 K19 [{"Size", "BackgroundTransparency", "ImageTransparency", "ImageColor3", "BorderSizePixel", "Image", "ScaleType", "SliceCenter", "ZIndex"}]
       25 GETIMPORT                        R14 K22 [UDim2.new]
       27 LOADN                            R15 1
       28 LOADN                            R16 0
       29 LOADN                            R17 1
       30 LOADN                            R18 0
       31 CALL                             R14 4 1
       32 SETTABLEKS                       R14 R13 K12 ["Size"]
       34 LOADN                            R14 1
       35 SETTABLEKS                       R14 R13 K13 ["BackgroundTransparency"]
       37 SETTABLEKS                       R5 R13 K14 ["ImageTransparency"]
       39 SETTABLEKS                       R3 R13 K15 ["ImageColor3"]
       41 LOADN                            R14 0
       42 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
       44 SETTABLEKS                       R7 R13 K17 ["Image"]
       46 GETIMPORT                        R14 K25 [Enum.ScaleType.Slice]
       48 SETTABLEKS                       R14 R13 K18 ["ScaleType"]
       50 SETTABLEKS                       R9 R13 K8 ["SliceCenter"]
       52 SETTABLEKS                       R10 R13 K9 ["ZIndex"]
       54 DUPTABLE                         R14 K27 [{"Border"}]
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R15 R15 K10 ["createElement"]
       58 LOADK                            R16 K11 ["ImageLabel"]
       59 DUPTABLE                         R17 K28 [{"Size", "BackgroundTransparency", "ImageTransparency", "ImageColor3", "BorderSizePixel", "Image", "ScaleType", "SliceCenter"}]
       60 GETIMPORT                        R18 K22 [UDim2.new]
       62 LOADN                            R19 1
       63 LOADN                            R20 0
       64 LOADN                            R21 1
       65 LOADN                            R22 0
       66 CALL                             R18 4 1
       67 SETTABLEKS                       R18 R17 K12 ["Size"]
       69 LOADN                            R18 1
       70 SETTABLEKS                       R18 R17 K13 ["BackgroundTransparency"]
       72 SETTABLEKS                       R6 R17 K14 ["ImageTransparency"]
       74 SETTABLEKS                       R4 R17 K15 ["ImageColor3"]
       76 LOADN                            R18 0
       77 SETTABLEKS                       R18 R17 K16 ["BorderSizePixel"]
       79 SETTABLEKS                       R8 R17 K17 ["Image"]
       81 GETIMPORT                        R18 K25 [Enum.ScaleType.Slice]
       83 SETTABLEKS                       R18 R17 K18 ["ScaleType"]
       85 SETTABLEKS                       R9 R17 K8 ["SliceCenter"]
       87 GETUPVAL                         R19 0
       88 GETTABLEKS                       R19 R19 K29 ["Children"]
       90 GETTABLE                         R18 R1 R19
       91 CALL                             R15 3 1
       92 SETTABLEKS                       R15 R14 K26 ["Border"]
       94 CALL                             R11 3 -1
       95 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["Typecheck"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["RoundBox"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R4 K15 ["wrap"]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R8 K1 [script]
       43 CALL                             R6 2 0
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K17 ["render"]
       48 MOVE                             R6 R3
       49 DUPTABLE                         R7 K19 [{"Stylizer"}]
       50 GETTABLEKS                       R8 R2 K18 ["Stylizer"]
       52 SETTABLEKS                       R8 R7 K18 ["Stylizer"]
       54 CALL                             R6 1 1
       55 MOVE                             R7 R5
       56 CALL                             R6 1 1
       57 MOVE                             R5 R6
       58 RETURN                           R5 1
