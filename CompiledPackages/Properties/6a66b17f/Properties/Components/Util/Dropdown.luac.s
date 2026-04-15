PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Dropdown"]
        4 GETTABLEKS                       R2 R3 K1 ["Root"]
        6 DUPTABLE                         R3 K10 [{"LayoutOrder", "label", "size", "width", "items", "value", "onItemChanged", "testId"}]
        7 GETTABLEKS                       R4 R0 K11 ["layoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K12 [""]
       12 SETTABLEKS                       R4 R3 K3 ["label"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K13 ["XSmall"]
       17 SETTABLEKS                       R4 R3 K4 ["size"]
       19 GETIMPORT                        R4 K16 [UDim.new]
       21 LOADN                            R5 1
       22 LOADN                            R6 0
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K5 ["width"]
       26 GETTABLEKS                       R4 R0 K6 ["items"]
       28 SETTABLEKS                       R4 R3 K6 ["items"]
       30 GETTABLEKS                       R4 R0 K7 ["value"]
       32 SETTABLEKS                       R4 R3 K7 ["value"]
       34 GETTABLEKS                       R4 R0 K8 ["onItemChanged"]
       36 SETTABLEKS                       R4 R3 K8 ["onItemChanged"]
       38 GETTABLEKS                       R4 R0 K9 ["testId"]
       40 SETTABLEKS                       R4 R3 K9 ["testId"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

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
       19 GETTABLEKS                       R5 R2 K9 ["Enums"]
       21 GETTABLEKS                       R4 R5 K10 ["InputSize"]
       23 GETTABLEKS                       R5 R3 K11 ["createElement"]
       25 DUPCLOSURE                       R6 K12 [PROTO_0]
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 RETURN                           R6 1
