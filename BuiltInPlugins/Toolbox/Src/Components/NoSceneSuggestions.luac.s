PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FREE_MODELS"]
        4 GETTABLEKS                       R1 R1 K1 ["name"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U4
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R3
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R5 R5 K1 ["createElement"]
       23 GETUPVAL                         R6 6
       24 DUPTABLE                         R7 K11 [{"Text", "LinkMap", "LayoutOrder", "AutomaticSize", "Size", "TextWrapped", "TextXAlignment", "HorizontalAlignment", "TextProps"}]
       25 LOADK                            R10 K12 ["SceneSuggestions"]
       26 LOADK                            R11 K13 ["NoResults"]
       27 NAMECALL                         R8 R2 K14 ["getText"]
       29 CALL                             R8 3 1
       30 SETTABLEKS                       R8 R7 K2 ["Text"]
       32 NEWTABLE                         R8 1 0
       34 DUPTABLE                         R9 K17 [{"LinkText", "LinkCallback"}]
       35 LOADK                            R12 K18 ["General"]
       36 LOADK                            R13 K19 ["CategoryModels"]
       37 NAMECALL                         R10 R2 K14 ["getText"]
       39 CALL                             R10 3 1
       40 SETTABLEKS                       R10 R9 K15 ["LinkText"]
       42 SETTABLEKS                       R4 R9 K16 ["LinkCallback"]
       44 SETTABLEKS                       R9 R8 K20 ["[link1]"]
       46 SETTABLEKS                       R8 R7 K3 ["LinkMap"]
       48 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
       50 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       52 GETIMPORT                        R8 K23 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R8 R7 K5 ["AutomaticSize"]
       56 GETIMPORT                        R8 K26 [UDim2.fromScale]
       58 LOADN                            R9 1
       59 LOADN                            R10 0
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R7 K6 ["Size"]
       63 LOADB                            R8 1
       64 SETTABLEKS                       R8 R7 K7 ["TextWrapped"]
       66 GETIMPORT                        R8 K28 [Enum.TextXAlignment.Left]
       68 SETTABLEKS                       R8 R7 K8 ["TextXAlignment"]
       70 GETIMPORT                        R8 K29 [Enum.HorizontalAlignment.Left]
       72 SETTABLEKS                       R8 R7 K9 ["HorizontalAlignment"]
       74 DUPTABLE                         R8 K33 [{"Font", "TextColor", "TextSize"}]
       75 GETUPVAL                         R9 7
       76 GETTABLEKS                       R9 R9 K34 ["FONT"]
       78 SETTABLEKS                       R9 R8 K30 ["Font"]
       80 GETTABLEKS                       R9 R1 K35 ["itemRow"]
       82 GETTABLEKS                       R9 R9 K36 ["textColor"]
       84 SETTABLEKS                       R9 R8 K31 ["TextColor"]
       86 GETTABLEKS                       R9 R1 K35 ["itemRow"]
       88 GETTABLEKS                       R9 R9 K37 ["textSize"]
       90 SETTABLEKS                       R9 R8 K32 ["TextSize"]
       92 SETTABLEKS                       R8 R7 K10 ["TextProps"]
       94 CALL                             R5 2 -1
       95 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 GETTABLEKS                       R5 R5 K13 ["Category"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K15 ["useNavigateToCategory"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K16 ["ContextServices"]
       50 GETTABLEKS                       R6 R6 K17 ["Localization"]
       52 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       54 GETTABLEKS                       R7 R7 K18 ["Stylizer"]
       56 GETTABLEKS                       R8 R2 K19 ["UI"]
       58 GETTABLEKS                       R8 R8 K20 ["TextWithLinks"]
       60 GETTABLEKS                       R9 R1 K21 ["useCallback"]
       62 DUPCLOSURE                       R10 K22 [PROTO_1]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R3
       71 RETURN                           R10 1
