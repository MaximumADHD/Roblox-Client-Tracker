PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SearchInput"]
        4 DUPTABLE                         R3 K13 [{["testId"] = "--appkit-search-input", ["text"], ["onChanged"], ["placeholder"], ["size"], ["variant"], ["shape"], ["isDisabled"], ["hasError"], ["width"], ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["text"]
        7 SETTABLEKS                       R4 R3 K3 ["text"]
        9 GETTABLEKS                       R4 R0 K4 ["onChanged"]
       11 SETTABLEKS                       R4 R3 K4 ["onChanged"]
       13 GETTABLEKS                       R5 R0 K5 ["placeholder"]
       15 ORK                              R4 R5 K14 ["Search"]
       16 SETTABLEKS                       R4 R3 K5 ["placeholder"]
       18 GETTABLEKS                       R4 R0 K6 ["size"]
       20 JUMPIF                           R4 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K15 ["Enums"]
       24 GETTABLEKS                       R4 R4 K16 ["InputSize"]
       26 GETTABLEKS                       R4 R4 K17 ["Medium"]
       28 SETTABLEKS                       R4 R3 K6 ["size"]
       30 GETTABLEKS                       R4 R0 K7 ["variant"]
       32 JUMPIF                           R4 ; [+7]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K15 ["Enums"]
       36 GETTABLEKS                       R4 R4 K18 ["InputVariant"]
       38 GETTABLEKS                       R4 R4 K19 ["Standard"]
       40 SETTABLEKS                       R4 R3 K7 ["variant"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K15 ["Enums"]
       45 GETTABLEKS                       R4 R4 K20 ["SearchInputShape"]
       47 GETTABLEKS                       R4 R4 K21 ["Pill"]
       49 SETTABLEKS                       R4 R3 K8 ["shape"]
       51 GETTABLEKS                       R4 R0 K9 ["isDisabled"]
       53 SETTABLEKS                       R4 R3 K9 ["isDisabled"]
       55 GETTABLEKS                       R4 R0 K10 ["hasError"]
       57 SETTABLEKS                       R4 R3 K10 ["hasError"]
       59 GETTABLEKS                       R4 R0 K11 ["width"]
       61 JUMPIF                           R4 ; [+5]
       62 GETIMPORT                        R4 K24 [UDim.new]
       64 LOADN                            R5 1
       65 LOADN                            R6 0
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R3 K11 ["width"]
       69 GETTABLEKS                       R4 R0 K12 ["LayoutOrder"]
       71 SETTABLEKS                       R4 R3 K12 ["LayoutOrder"]
       73 CALL                             R1 2 -1
       74 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.SearchInput must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R1 K12 ["createElement"]
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
