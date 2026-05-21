PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Size"]
        8 GETTABLEKS                       R2 R2 K3 ["Size_600"]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["Dropdown"]
       14 GETTABLEKS                       R4 R4 K5 ["Root"]
       16 DUPTABLE                         R5 K15 [{"LayoutOrder", "label", "size", "width", "maxHeight", "items", "value", "onItemChanged", "testId"}]
       17 GETTABLEKS                       R6 R0 K16 ["layoutOrder"]
       19 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       21 LOADK                            R6 K17 [""]
       22 SETTABLEKS                       R6 R5 K7 ["label"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K18 ["XSmall"]
       27 SETTABLEKS                       R6 R5 K8 ["size"]
       29 GETIMPORT                        R6 K21 [UDim.new]
       31 LOADN                            R7 1
       32 LOADN                            R8 0
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K9 ["width"]
       36 LOADK                            R7 K22 [10.5]
       37 MUL                              R6 R7 R2
       38 SETTABLEKS                       R6 R5 K10 ["maxHeight"]
       40 GETTABLEKS                       R6 R0 K11 ["items"]
       42 SETTABLEKS                       R6 R5 K11 ["items"]
       44 GETTABLEKS                       R6 R0 K12 ["value"]
       46 SETTABLEKS                       R6 R5 K12 ["value"]
       48 GETTABLEKS                       R6 R0 K13 ["onItemChanged"]
       50 SETTABLEKS                       R6 R5 K13 ["onItemChanged"]
       52 GETTABLEKS                       R6 R0 K14 ["testId"]
       54 SETTABLEKS                       R6 R5 K14 ["testId"]
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["Enums"]
       21 GETTABLEKS                       R4 R4 K10 ["InputSize"]
       23 GETTABLEKS                       R5 R3 K11 ["createElement"]
       25 DUPCLOSURE                       R6 K12 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 RETURN                           R6 1
