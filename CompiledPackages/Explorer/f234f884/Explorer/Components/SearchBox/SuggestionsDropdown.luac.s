PROTO_0:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K2 [string.find]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K3 ["="]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+6]
        8 ADDK                             R5 R2 K4 [1]
        9 NAMECALL                         R3 R0 K5 ["sub"]
       11 CALL                             R3 2 1
       12 MOVE                             R1 R3
       13 GETIMPORT                        R3 K2 [string.find]
       15 MOVE                             R4 R0
       16 LOADK                            R5 K6 [":"]
       17 CALL                             R3 2 1
       18 JUMPIFEQKNIL                     R3 ; [+6]
       20 ADDK                             R6 R3 K4 [1]
       21 NAMECALL                         R4 R0 K5 ["sub"]
       23 CALL                             R4 2 1
       24 MOVE                             R1 R4
       25 DUPTABLE                         R4 K9 [{"displayText", "text"}]
       26 SETTABLEKS                       R1 R4 K7 ["displayText"]
       28 SETTABLEKS                       R0 R4 K8 ["text"]
       30 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K7 [{"dropdownRef", "enterPressedSignalRef", "itemData", "onItemClicked", "selectedItemIndex", "setSelectedItemIndex", "session"}]
        3 GETTABLEKS                       R4 R0 K0 ["dropdownRef"]
        5 SETTABLEKS                       R4 R3 K0 ["dropdownRef"]
        7 GETTABLEKS                       R4 R0 K1 ["enterPressedSignalRef"]
        9 SETTABLEKS                       R4 R3 K1 ["enterPressedSignalRef"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R5 R0 K8 ["suggestions"]
       14 DUPCLOSURE                       R6 K9 [PROTO_0]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K2 ["itemData"]
       18 GETTABLEKS                       R4 R0 K3 ["onItemClicked"]
       20 SETTABLEKS                       R4 R3 K3 ["onItemClicked"]
       22 GETTABLEKS                       R4 R0 K4 ["selectedItemIndex"]
       24 SETTABLEKS                       R4 R3 K4 ["selectedItemIndex"]
       26 GETTABLEKS                       R4 R0 K5 ["setSelectedItemIndex"]
       28 SETTABLEKS                       R4 R3 K5 ["setSelectedItemIndex"]
       30 GETTABLEKS                       R4 R0 K6 ["session"]
       32 SETTABLEKS                       R4 R3 K6 ["session"]
       34 CALL                             R1 2 -1
       35 RETURN                           R1 -1

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
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["RpcTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Signal"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Util"]
       39 GETTABLEKS                       R6 R6 K14 ["mapValues"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K15 ["createElement"]
       44 DUPCLOSURE                       R7 K16 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 RETURN                           R7 1
