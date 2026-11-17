PROTO_0:
        0 DUPTABLE                         R1 K1 [{"text"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K12 [{"dropdownRef", "enterPressedSignalRef", "headerInfo", "itemData", "onItemClicked", "placeholderText", "selectedItemIndex", "setSelectedItemIndex", "session"}]
       11 GETTABLEKS                       R5 R0 K3 ["dropdownRef"]
       13 SETTABLEKS                       R5 R4 K3 ["dropdownRef"]
       15 GETTABLEKS                       R5 R0 K4 ["enterPressedSignalRef"]
       17 SETTABLEKS                       R5 R4 K4 ["enterPressedSignalRef"]
       19 DUPTABLE                         R5 K14 [{"titleText"}]
       20 LOADK                            R8 K15 ["HistoryDropdown"]
       21 LOADK                            R9 K16 ["TitleText"]
       22 NAMECALL                         R6 R1 K17 ["getText"]
       24 CALL                             R6 3 1
       25 SETTABLEKS                       R6 R5 K13 ["titleText"]
       27 SETTABLEKS                       R5 R4 K5 ["headerInfo"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R6 R0 K18 ["searchHistory"]
       32 DUPCLOSURE                       R7 K19 [PROTO_0]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K6 ["itemData"]
       36 GETTABLEKS                       R5 R0 K7 ["onItemClicked"]
       38 SETTABLEKS                       R5 R4 K7 ["onItemClicked"]
       40 LOADK                            R7 K15 ["HistoryDropdown"]
       41 LOADK                            R8 K20 ["PlaceholderText"]
       42 NAMECALL                         R5 R1 K17 ["getText"]
       44 CALL                             R5 3 1
       45 SETTABLEKS                       R5 R4 K8 ["placeholderText"]
       47 GETTABLEKS                       R5 R0 K9 ["selectedItemIndex"]
       49 SETTABLEKS                       R5 R4 K9 ["selectedItemIndex"]
       51 GETTABLEKS                       R5 R0 K10 ["setSelectedItemIndex"]
       53 SETTABLEKS                       R5 R4 K10 ["setSelectedItemIndex"]
       55 GETTABLEKS                       R5 R0 K11 ["session"]
       57 SETTABLEKS                       R5 R4 K11 ["session"]
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["SearchBox"]
       13 GETTABLEKS                       R2 R2 K8 ["Dropdown"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["RpcTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Signal"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["mapValues"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K16 ["createElement"]
       51 DUPCLOSURE                       R8 K17 [PROTO_1]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 RETURN                           R8 1
