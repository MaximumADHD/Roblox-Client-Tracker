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
       22 DUPTABLE                         R10 K11 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       23 SETTABLEKS                       R5 R10 K4 ["Size"]
       25 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       27 DUPTABLE                         R11 K13 [{"SelectScreen"}]
       28 LOADB                            R12 0
       29 JUMPIFNOTEQKNIL                  R7 ; [+51]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K7 ["createElement"]
       34 LOADK                            R13 K14 ["TextLabel"]
       35 DUPTABLE                         R14 K21 [{"Size", "Text", "Font", "TextSize", "TextColor3", "TextTruncate", "BackgroundColor3"}]
       36 GETIMPORT                        R15 K24 [UDim2.new]
       38 LOADN                            R16 1
       39 LOADN                            R17 0
       40 LOADN                            R18 1
       41 LOADN                            R19 0
       42 CALL                             R15 4 1
       43 SETTABLEKS                       R15 R14 K4 ["Size"]
       45 LOADK                            R17 K25 ["Title"]
       46 LOADK                            R18 K26 ["SelectARig"]
       47 NAMECALL                         R15 R2 K27 ["getText"]
       49 CALL                             R15 3 1
       50 SETTABLEKS                       R15 R14 K15 ["Text"]
       52 GETTABLEKS                       R15 R1 K28 ["font"]
       54 SETTABLEKS                       R15 R14 K16 ["Font"]
       56 GETTABLEKS                       R15 R3 K29 ["textSize"]
       58 SETTABLEKS                       R15 R14 K17 ["TextSize"]
       60 GETTABLEKS                       R15 R3 K30 ["textColor"]
       62 SETTABLEKS                       R15 R14 K18 ["TextColor3"]
       64 GETIMPORT                        R15 K33 [Enum.TextTruncate.AtEnd]
       66 SETTABLEKS                       R15 R14 K19 ["TextTruncate"]
       68 GETTABLEKS                       R15 R1 K34 ["backgroundColor"]
       70 SETTABLEKS                       R15 R14 K20 ["BackgroundColor3"]
       72 DUPTABLE                         R15 K36 [{"CaptureFocus"}]
       73 GETUPVAL                         R16 0
       74 GETTABLEKS                       R16 R16 K7 ["createElement"]
       76 GETUPVAL                         R17 1
       77 CALL                             R16 1 1
       78 SETTABLEKS                       R16 R15 K35 ["CaptureFocus"]
       80 CALL                             R12 3 1
       81 SETTABLEKS                       R12 R11 K12 ["SelectScreen"]
       83 CALL                             R8 3 -1
       84 RETURN                           R8 -1

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
