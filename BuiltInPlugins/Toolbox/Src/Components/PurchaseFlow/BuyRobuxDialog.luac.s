PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnButtonClicked"]
        4 GETTABLEKS                       R3 R1 K2 ["OnClose"]
        6 GETTABLEKS                       R4 R1 K3 ["Thumbnail"]
        8 GETTABLEKS                       R5 R1 K4 ["Name"]
       10 GETTABLEKS                       R6 R1 K5 ["Creator"]
       12 GETTABLEKS                       R7 R1 K6 ["Cost"]
       14 GETTABLEKS                       R8 R1 K7 ["Balance"]
       16 SUB                              R9 R7 R8
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R10 R10 K8 ["createElement"]
       20 GETUPVAL                         R11 1
       21 DUPTABLE                         R12 K12 [{"Buttons", "OnButtonClicked", "OnClose", "Title", "Prompt", "Thumbnail", "Balance"}]
       22 NEWTABLE                         R13 0 2
       24 DUPTABLE                         R14 K16 [{["Key"] = False, ["Text"]}]
       25 GETTABLEKS                       R15 R1 K17 ["Localization"]
       27 LOADK                            R17 K18 ["Purchase"]
       28 LOADK                            R18 K19 ["Cancel"]
       29 NAMECALL                         R15 R15 K20 ["getText"]
       31 CALL                             R15 3 1
       32 SETTABLEKS                       R15 R14 K15 ["Text"]
       34 DUPTABLE                         R15 K24 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
       35 GETTABLEKS                       R16 R1 K17 ["Localization"]
       37 LOADK                            R18 K18 ["Purchase"]
       38 LOADK                            R19 K25 ["BuyRobux"]
       39 NAMECALL                         R16 R16 K20 ["getText"]
       41 CALL                             R16 3 1
       42 SETTABLEKS                       R16 R15 K15 ["Text"]
       44 SETLIST                          R13 R14 2 [1]
       46 SETTABLEKS                       R13 R12 K9 ["Buttons"]
       48 SETTABLEKS                       R2 R12 K1 ["OnButtonClicked"]
       50 SETTABLEKS                       R3 R12 K2 ["OnClose"]
       52 GETTABLEKS                       R13 R1 K17 ["Localization"]
       54 LOADK                            R15 K18 ["Purchase"]
       55 LOADK                            R16 K26 ["InsufficientTitle"]
       56 NAMECALL                         R13 R13 K20 ["getText"]
       58 CALL                             R13 3 1
       59 SETTABLEKS                       R13 R12 K10 ["Title"]
       61 GETTABLEKS                       R13 R1 K17 ["Localization"]
       63 LOADK                            R15 K18 ["Purchase"]
       64 LOADK                            R16 K27 ["InsufficientPrompt"]
       65 DUPTABLE                         R17 K31 [{"robux", "name", "creator"}]
       66 SETTABLEKS                       R9 R17 K28 ["robux"]
       68 SETTABLEKS                       R5 R17 K29 ["name"]
       70 SETTABLEKS                       R6 R17 K30 ["creator"]
       72 NAMECALL                         R13 R13 K20 ["getText"]
       74 CALL                             R13 4 1
       75 SETTABLEKS                       R13 R12 K11 ["Prompt"]
       77 SETTABLEKS                       R4 R12 K3 ["Thumbnail"]
       79 SETTABLEKS                       R8 R12 K7 ["Balance"]
       81 CALL                             R10 2 -1
       82 RETURN                           R10 -1

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
       40 LOADK                            R9 K15 ["BuyRobuxDialog"]
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
