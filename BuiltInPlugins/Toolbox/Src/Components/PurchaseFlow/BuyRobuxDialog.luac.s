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
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K8 ["createElement"]
       20 GETUPVAL                         R11 1
       21 DUPTABLE                         R12 K12 [{"Buttons", "OnButtonClicked", "OnClose", "Title", "Prompt", "Thumbnail", "Balance"}]
       22 NEWTABLE                         R13 0 2
       24 DUPTABLE                         R14 K15 [{"Key", "Text"}]
       25 LOADB                            R15 0
       26 SETTABLEKS                       R15 R14 K13 ["Key"]
       28 GETTABLEKS                       R15 R1 K16 ["Localization"]
       30 LOADK                            R17 K17 ["Purchase"]
       31 LOADK                            R18 K18 ["Cancel"]
       32 NAMECALL                         R15 R15 K19 ["getText"]
       34 CALL                             R15 3 1
       35 SETTABLEKS                       R15 R14 K14 ["Text"]
       37 DUPTABLE                         R15 K21 [{"Key", "Text", "Style"}]
       38 LOADB                            R16 1
       39 SETTABLEKS                       R16 R15 K13 ["Key"]
       41 GETTABLEKS                       R16 R1 K16 ["Localization"]
       43 LOADK                            R18 K17 ["Purchase"]
       44 LOADK                            R19 K22 ["BuyRobux"]
       45 NAMECALL                         R16 R16 K19 ["getText"]
       47 CALL                             R16 3 1
       48 SETTABLEKS                       R16 R15 K14 ["Text"]
       50 LOADK                            R16 K23 ["RoundPrimary"]
       51 SETTABLEKS                       R16 R15 K20 ["Style"]
       53 SETLIST                          R13 R14 2 [1]
       55 SETTABLEKS                       R13 R12 K9 ["Buttons"]
       57 SETTABLEKS                       R2 R12 K1 ["OnButtonClicked"]
       59 SETTABLEKS                       R3 R12 K2 ["OnClose"]
       61 GETTABLEKS                       R13 R1 K16 ["Localization"]
       63 LOADK                            R15 K17 ["Purchase"]
       64 LOADK                            R16 K24 ["InsufficientTitle"]
       65 NAMECALL                         R13 R13 K19 ["getText"]
       67 CALL                             R13 3 1
       68 SETTABLEKS                       R13 R12 K10 ["Title"]
       70 GETTABLEKS                       R13 R1 K16 ["Localization"]
       72 LOADK                            R15 K17 ["Purchase"]
       73 LOADK                            R16 K25 ["InsufficientPrompt"]
       74 DUPTABLE                         R17 K29 [{"robux", "name", "creator"}]
       75 SETTABLEKS                       R9 R17 K26 ["robux"]
       77 SETTABLEKS                       R5 R17 K27 ["name"]
       79 SETTABLEKS                       R6 R17 K28 ["creator"]
       81 NAMECALL                         R13 R13 K19 ["getText"]
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K11 ["Prompt"]
       86 SETTABLEKS                       R4 R12 K3 ["Thumbnail"]
       88 SETTABLEKS                       R8 R12 K7 ["Balance"]
       90 CALL                             R10 2 -1
       91 RETURN                           R10 -1

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
