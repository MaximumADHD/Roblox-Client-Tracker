PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnButtonClicked"]
        4 GETTABLEKS                       R3 R1 K2 ["OnClose"]
        6 GETTABLEKS                       R4 R1 K3 ["Thumbnail"]
        8 GETTABLEKS                       R5 R1 K4 ["Name"]
       10 GETTABLEKS                       R6 R1 K5 ["Creator"]
       12 GETTABLEKS                       R7 R1 K6 ["Cost"]
       14 GETTABLEKS                       R8 R1 K7 ["Balance"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createElement"]
       19 GETUPVAL                         R10 1
       20 DUPTABLE                         R11 K12 [{"Buttons", "OnButtonClicked", "OnClose", "Title", "Prompt", "Thumbnail", "Balance"}]
       21 NEWTABLE                         R12 0 2
       23 DUPTABLE                         R13 K16 [{["Key"] = False, ["Text"]}]
       24 GETTABLEKS                       R14 R1 K17 ["Localization"]
       26 LOADK                            R16 K18 ["Purchase"]
       27 LOADK                            R17 K19 ["Cancel"]
       28 NAMECALL                         R14 R14 K20 ["getText"]
       30 CALL                             R14 3 1
       31 SETTABLEKS                       R14 R13 K15 ["Text"]
       33 DUPTABLE                         R14 K24 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
       34 GETTABLEKS                       R15 R1 K17 ["Localization"]
       36 LOADK                            R17 K18 ["Purchase"]
       37 LOADK                            R18 K25 ["Buy"]
       38 NAMECALL                         R15 R15 K20 ["getText"]
       40 CALL                             R15 3 1
       41 SETTABLEKS                       R15 R14 K15 ["Text"]
       43 SETLIST                          R12 R13 2 [1]
       45 SETTABLEKS                       R12 R11 K9 ["Buttons"]
       47 SETTABLEKS                       R2 R11 K1 ["OnButtonClicked"]
       49 SETTABLEKS                       R3 R11 K2 ["OnClose"]
       51 GETTABLEKS                       R12 R1 K17 ["Localization"]
       53 LOADK                            R14 K18 ["Purchase"]
       54 LOADK                            R15 K26 ["BuyTitle"]
       55 NAMECALL                         R12 R12 K20 ["getText"]
       57 CALL                             R12 3 1
       58 SETTABLEKS                       R12 R11 K10 ["Title"]
       60 GETTABLEKS                       R12 R1 K17 ["Localization"]
       62 LOADK                            R14 K18 ["Purchase"]
       63 LOADK                            R15 K27 ["BuyPrompt"]
       64 DUPTABLE                         R16 K31 [{"name", "creator", "robux"}]
       65 SETTABLEKS                       R5 R16 K28 ["name"]
       67 SETTABLEKS                       R6 R16 K29 ["creator"]
       69 SETTABLEKS                       R7 R16 K30 ["robux"]
       71 NAMECALL                         R12 R12 K20 ["getText"]
       73 CALL                             R12 4 1
       74 SETTABLEKS                       R12 R11 K11 ["Prompt"]
       76 SETTABLEKS                       R4 R11 K3 ["Thumbnail"]
       78 SETTABLEKS                       R8 R11 K7 ["Balance"]
       80 CALL                             R9 2 -1
       81 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Components"]
       29 GETTABLEKS                       R5 R5 K10 ["PurchaseFlow"]
       31 GETTABLEKS                       R5 R5 K11 ["PurchaseDialog"]
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
