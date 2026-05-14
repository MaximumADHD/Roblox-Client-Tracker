PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnClose"]
        4 GETTABLEKS                       R3 R1 K2 ["OnOpen"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["new"]
       15 CALL                             R7 0 1
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K7 ["createElement"]
       19 GETUPVAL                         R9 2
       20 DUPTABLE                         R10 K14 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder", "AutomaticSize", "Spacing", "Padding"}]
       21 GETIMPORT                        R11 K18 [Enum.FillDirection.Horizontal]
       23 SETTABLEKS                       R11 R10 K8 ["Layout"]
       25 GETIMPORT                        R11 K20 [Enum.HorizontalAlignment.Right]
       27 SETTABLEKS                       R11 R10 K9 ["HorizontalAlignment"]
       29 GETIMPORT                        R11 K22 [Enum.VerticalAlignment.Top]
       31 SETTABLEKS                       R11 R10 K10 ["VerticalAlignment"]
       33 SETTABLEKS                       R4 R10 K3 ["LayoutOrder"]
       35 GETIMPORT                        R11 K24 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R11 R10 K11 ["AutomaticSize"]
       39 GETTABLEKS                       R11 R6 K12 ["Spacing"]
       41 SETTABLEKS                       R11 R10 K12 ["Spacing"]
       43 GETTABLEKS                       R11 R6 K13 ["Padding"]
       45 SETTABLEKS                       R11 R10 K13 ["Padding"]
       47 DUPTABLE                         R11 K27 [{"Close", "GoTo"}]
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K7 ["createElement"]
       51 GETUPVAL                         R13 3
       52 DUPTABLE                         R14 K32 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
       53 LOADK                            R15 K33 ["Round"]
       54 SETTABLEKS                       R15 R14 K28 ["Style"]
       56 LOADK                            R17 K34 ["PublishingBlockedAction"]
       57 LOADK                            R18 K25 ["Close"]
       58 NAMECALL                         R15 R5 K35 ["getText"]
       60 CALL                             R15 3 1
       61 SETTABLEKS                       R15 R14 K29 ["Text"]
       63 GETTABLEKS                       R15 R6 K36 ["CloseButtonSize"]
       65 SETTABLEKS                       R15 R14 K30 ["Size"]
       67 SETTABLEKS                       R2 R14 K31 ["OnClick"]
       69 NAMECALL                         R15 R7 K37 ["getNextOrder"]
       71 CALL                             R15 1 1
       72 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K25 ["Close"]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K7 ["createElement"]
       80 GETUPVAL                         R13 3
       81 DUPTABLE                         R14 K32 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
       82 LOADK                            R15 K38 ["RoundPrimary"]
       83 SETTABLEKS                       R15 R14 K28 ["Style"]
       85 LOADK                            R17 K34 ["PublishingBlockedAction"]
       86 LOADK                            R18 K26 ["GoTo"]
       87 NAMECALL                         R15 R5 K35 ["getText"]
       89 CALL                             R15 3 1
       90 SETTABLEKS                       R15 R14 K29 ["Text"]
       92 GETTABLEKS                       R15 R6 K39 ["GoToButtonSize"]
       94 SETTABLEKS                       R15 R14 K30 ["Size"]
       96 SETTABLEKS                       R3 R14 K31 ["OnClick"]
       98 NAMECALL                         R15 R7 K37 ["getNextOrder"]
      100 CALL                             R15 1 1
      101 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K26 ["GoTo"]
      106 CALL                             R8 3 -1
      107 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Pane"]
       27 GETTABLEKS                       R6 R4 K12 ["Button"]
       29 GETTABLEKS                       R7 R1 K13 ["Util"]
       31 GETTABLEKS                       R8 R7 K14 ["LayoutOrderIterator"]
       33 GETTABLEKS                       R9 R2 K15 ["PureComponent"]
       35 LOADK                            R11 K16 ["Buttons"]
       36 NAMECALL                         R9 R9 K17 ["extend"]
       38 CALL                             R9 2 1
       39 DUPCLOSURE                       R10 K18 [PROTO_0]
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R10 R9 K19 ["render"]
       46 GETTABLEKS                       R10 R3 K20 ["withContext"]
       48 DUPTABLE                         R11 K23 [{"Stylizer", "Localization"}]
       49 GETTABLEKS                       R12 R3 K21 ["Stylizer"]
       51 SETTABLEKS                       R12 R11 K21 ["Stylizer"]
       53 GETTABLEKS                       R12 R3 K22 ["Localization"]
       55 SETTABLEKS                       R12 R11 K22 ["Localization"]
       57 CALL                             R10 1 1
       58 MOVE                             R11 R9
       59 CALL                             R10 1 1
       60 MOVE                             R9 R10
       61 RETURN                           R9 1
