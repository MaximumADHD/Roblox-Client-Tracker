PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnButtonClicked"]
        4 GETTABLEKS                       R3 R1 K2 ["OnClose"]
        6 GETTABLEKS                       R4 R1 K3 ["Thumbnail"]
        8 GETTABLEKS                       R5 R1 K4 ["Name"]
       10 GETTABLEKS                       R6 R1 K5 ["Creator"]
       12 GETTABLEKS                       R7 R1 K6 ["Cost"]
       14 GETTABLEKS                       R8 R1 K7 ["Balance"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["createElement"]
       19 GETUPVAL                         R10 1
       20 DUPTABLE                         R11 K12 [{"Buttons", "OnButtonClicked", "OnClose", "Title", "Prompt", "Thumbnail", "Balance"}]
       21 NEWTABLE                         R12 0 2
       23 DUPTABLE                         R13 K15 [{"Key", "Text"}]
       24 LOADB                            R14 0
       25 SETTABLEKS                       R14 R13 K13 ["Key"]
       27 GETTABLEKS                       R14 R1 K16 ["Localization"]
       29 LOADK                            R16 K17 ["Purchase"]
       30 LOADK                            R17 K18 ["Cancel"]
       31 NAMECALL                         R14 R14 K19 ["getText"]
       33 CALL                             R14 3 1
       34 SETTABLEKS                       R14 R13 K14 ["Text"]
       36 DUPTABLE                         R14 K21 [{"Key", "Text", "Style"}]
       37 LOADB                            R15 1
       38 SETTABLEKS                       R15 R14 K13 ["Key"]
       40 GETTABLEKS                       R15 R1 K16 ["Localization"]
       42 LOADK                            R17 K17 ["Purchase"]
       43 LOADK                            R18 K22 ["Buy"]
       44 NAMECALL                         R15 R15 K19 ["getText"]
       46 CALL                             R15 3 1
       47 SETTABLEKS                       R15 R14 K14 ["Text"]
       49 LOADK                            R15 K23 ["RoundPrimary"]
       50 SETTABLEKS                       R15 R14 K20 ["Style"]
       52 SETLIST                          R12 R13 2 [1]
       54 SETTABLEKS                       R12 R11 K9 ["Buttons"]
       56 SETTABLEKS                       R2 R11 K1 ["OnButtonClicked"]
       58 SETTABLEKS                       R3 R11 K2 ["OnClose"]
       60 GETTABLEKS                       R12 R1 K16 ["Localization"]
       62 LOADK                            R14 K17 ["Purchase"]
       63 LOADK                            R15 K24 ["BuyTitle"]
       64 NAMECALL                         R12 R12 K19 ["getText"]
       66 CALL                             R12 3 1
       67 SETTABLEKS                       R12 R11 K10 ["Title"]
       69 GETTABLEKS                       R12 R1 K16 ["Localization"]
       71 LOADK                            R14 K17 ["Purchase"]
       72 LOADK                            R15 K25 ["BuyPrompt"]
       73 DUPTABLE                         R16 K29 [{"name", "creator", "robux"}]
       74 SETTABLEKS                       R5 R16 K26 ["name"]
       76 SETTABLEKS                       R6 R16 K27 ["creator"]
       78 SETTABLEKS                       R7 R16 K28 ["robux"]
       80 NAMECALL                         R12 R12 K19 ["getText"]
       82 CALL                             R12 4 1
       83 SETTABLEKS                       R12 R11 K11 ["Prompt"]
       85 SETTABLEKS                       R4 R11 K3 ["Thumbnail"]
       87 SETTABLEKS                       R8 R11 K7 ["Balance"]
       89 CALL                             R9 2 -1
       90 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R8 R0 K8 ["Src"]
       27 GETTABLEKS                       R7 R8 K9 ["Components"]
       29 GETTABLEKS                       R6 R7 K10 ["PurchaseFlow"]
       31 GETTABLEKS                       R5 R6 K11 ["PurchaseDialog"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K13 ["withContext"]
       38 GETTABLEKS                       R7 R2 K14 ["PureComponent"]
       40 LOADK                            R9 K15 ["BuyPluginDialog"]
       41 NAMECALL                         R7 R7 K16 ["extend"]
       43 CALL                             R7 2 1
       44 DUPCLOSURE                       R8 K17 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R8 R7 K18 ["render"]
       49 MOVE                             R8 R6
       50 DUPTABLE                         R9 K20 [{"Localization"}]
       51 GETTABLEKS                       R10 R5 K19 ["Localization"]
       53 SETTABLEKS                       R10 R9 K19 ["Localization"]
       55 CALL                             R8 1 1
       56 MOVE                             R9 R7
       57 CALL                             R8 1 1
       58 MOVE                             R7 R8
       59 RETURN                           R7 1
