PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K9 [{"ShowSearchIcon", "ShowSearchButton", "OnTextChanged", "OnSearchRequested", "LayoutOrder", "Size", "SearchTerm"}]
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K2 ["ShowSearchIcon"]
       10 LOADB                            R5 0
       11 SETTABLEKS                       R5 R4 K3 ["ShowSearchButton"]
       13 GETTABLEKS                       R5 R1 K10 ["onFilterTextChanged"]
       15 SETTABLEKS                       R5 R4 K4 ["OnTextChanged"]
       17 GETTABLEKS                       R5 R1 K11 ["onSearchRequested"]
       19 SETTABLEKS                       R5 R4 K5 ["OnSearchRequested"]
       21 GETTABLEKS                       R5 R1 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       25 GETTABLEKS                       R5 R1 K7 ["Size"]
       27 SETTABLEKS                       R5 R4 K7 ["Size"]
       29 GETTABLEKS                       R5 R1 K8 ["SearchTerm"]
       31 SETTABLEKS                       R5 R4 K8 ["SearchTerm"]
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Watch"]
        2 DUPTABLE                         R3 K2 [{"SearchTerm"}]
        3 GETTABLEKS                       R4 R2 K3 ["filterText"]
        5 SETTABLEKS                       R4 R3 K1 ["SearchTerm"]
        7 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"onFilterTextChanged", "onSearchRequested"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onFilterTextChanged"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["onSearchRequested"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["UI"]
       34 GETTABLEKS                       R5 R4 K10 ["SearchBar"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K12 ["Thunks"]
       42 GETTABLEKS                       R7 R7 K13 ["Watch"]
       44 GETTABLEKS                       R7 R7 K14 ["FilterWatchDataThunk"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R1 K15 ["PureComponent"]
       49 LOADK                            R9 K16 ["SearchBarField"]
       50 NAMECALL                         R7 R7 K17 ["extend"]
       52 CALL                             R7 2 1
       53 DUPCLOSURE                       R8 K18 [PROTO_0]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R8 R7 K19 ["render"]
       58 GETTABLEKS                       R8 R2 K20 ["connect"]
       60 DUPCLOSURE                       R9 K21 [PROTO_1]
       61 DUPCLOSURE                       R10 K22 [PROTO_4]
       62 CAPTURE                          VAL R6
       63 CALL                             R8 2 1
       64 MOVE                             R9 R7
       65 CALL                             R8 1 1
       66 MOVE                             R7 R8
       67 RETURN                           R7 1
