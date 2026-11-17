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
       16 DUPTABLE                         R5 K18 [{["isDisabled"], ["LayoutOrder"], ["variant"], ["label"] = "", ["size"], ["width"], ["maxHeight"], ["items"], ["value"], ["onItemChanged"], ["testId"]}]
       17 GETTABLEKS                       R6 R0 K19 ["readonly"]
       19 SETTABLEKS                       R6 R5 K6 ["isDisabled"]
       21 GETTABLEKS                       R6 R0 K20 ["layoutOrder"]
       23 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K21 ["Contrast"]
       28 SETTABLEKS                       R6 R5 K8 ["variant"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K22 ["XSmall"]
       33 SETTABLEKS                       R6 R5 K11 ["size"]
       35 GETIMPORT                        R6 K25 [UDim.new]
       37 LOADN                            R7 1
       38 LOADN                            R8 0
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K12 ["width"]
       42 LOADK                            R7 K26 [10.5]
       43 MUL                              R6 R7 R2
       44 SETTABLEKS                       R6 R5 K13 ["maxHeight"]
       46 GETTABLEKS                       R6 R0 K14 ["items"]
       48 SETTABLEKS                       R6 R5 K14 ["items"]
       50 GETTABLEKS                       R6 R0 K15 ["value"]
       52 SETTABLEKS                       R6 R5 K15 ["value"]
       54 GETTABLEKS                       R6 R0 K16 ["onItemChanged"]
       56 SETTABLEKS                       R6 R5 K16 ["onItemChanged"]
       58 GETTABLEKS                       R6 R0 K17 ["testId"]
       60 SETTABLEKS                       R6 R5 K17 ["testId"]
       62 CALL                             R3 2 -1
       63 RETURN                           R3 -1

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
       23 GETTABLEKS                       R5 R2 K9 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["InputVariant"]
       27 GETTABLEKS                       R6 R3 K12 ["createElement"]
       29 DUPCLOSURE                       R7 K13 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 RETURN                           R7 1
