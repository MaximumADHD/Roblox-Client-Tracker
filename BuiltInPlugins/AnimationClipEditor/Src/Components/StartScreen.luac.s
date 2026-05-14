PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R3 R1 K3 ["startScreenTheme"]
       10 GETTABLEKS                       R4 R0 K0 ["props"]
       12 GETTABLEKS                       R5 R4 K4 ["Size"]
       14 GETTABLEKS                       R6 R4 K5 ["LayoutOrder"]
       16 GETTABLEKS                       R7 R4 K6 ["RootInstance"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K7 ["createElement"]
       21 LOADK                            R9 K8 ["Frame"]
       22 DUPTABLE                         R10 K10 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       23 SETTABLEKS                       R5 R10 K4 ["Size"]
       25 LOADN                            R11 1
       26 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       28 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       30 DUPTABLE                         R11 K12 [{"SelectScreen"}]
       31 LOADB                            R12 0
       32 JUMPIFNOTEQKNIL                  R7 ; [+51]
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K7 ["createElement"]
       37 LOADK                            R13 K13 ["TextLabel"]
       38 DUPTABLE                         R14 K20 [{"Size", "Text", "Font", "TextSize", "TextColor3", "TextTruncate", "BackgroundColor3"}]
       39 GETIMPORT                        R15 K23 [UDim2.new]
       41 LOADN                            R16 1
       42 LOADN                            R17 0
       43 LOADN                            R18 1
       44 LOADN                            R19 0
       45 CALL                             R15 4 1
       46 SETTABLEKS                       R15 R14 K4 ["Size"]
       48 LOADK                            R17 K24 ["Title"]
       49 LOADK                            R18 K25 ["SelectARig"]
       50 NAMECALL                         R15 R2 K26 ["getText"]
       52 CALL                             R15 3 1
       53 SETTABLEKS                       R15 R14 K14 ["Text"]
       55 GETTABLEKS                       R15 R1 K27 ["font"]
       57 SETTABLEKS                       R15 R14 K15 ["Font"]
       59 GETTABLEKS                       R15 R3 K28 ["textSize"]
       61 SETTABLEKS                       R15 R14 K16 ["TextSize"]
       63 GETTABLEKS                       R15 R3 K29 ["textColor"]
       65 SETTABLEKS                       R15 R14 K17 ["TextColor3"]
       67 GETIMPORT                        R15 K32 [Enum.TextTruncate.AtEnd]
       69 SETTABLEKS                       R15 R14 K18 ["TextTruncate"]
       71 GETTABLEKS                       R15 R1 K33 ["backgroundColor"]
       73 SETTABLEKS                       R15 R14 K19 ["BackgroundColor3"]
       75 DUPTABLE                         R15 K35 [{"CaptureFocus"}]
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K7 ["createElement"]
       79 GETUPVAL                         R17 1
       80 CALL                             R16 1 1
       81 SETTABLEKS                       R16 R15 K34 ["CaptureFocus"]
       83 CALL                             R12 3 1
       84 SETTABLEKS                       R12 R11 K11 ["SelectScreen"]
       86 CALL                             R8 3 -1
       87 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["CaptureFocus"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["withContext"]
       29 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       31 LOADK                            R8 K14 ["StartScreen"]
       32 NAMECALL                         R6 R6 K15 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K16 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R7 R6 K17 ["render"]
       40 MOVE                             R7 R5
       41 DUPTABLE                         R8 K20 [{"Stylizer", "Localization"}]
       42 GETTABLEKS                       R9 R4 K18 ["Stylizer"]
       44 SETTABLEKS                       R9 R8 K18 ["Stylizer"]
       46 GETTABLEKS                       R9 R4 K19 ["Localization"]
       48 SETTABLEKS                       R9 R8 K19 ["Localization"]
       50 CALL                             R7 1 1
       51 MOVE                             R8 R6
       52 CALL                             R7 1 1
       53 MOVE                             R6 R7
       54 RETURN                           R6 1
