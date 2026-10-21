PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["editProperty"]
        3 GETTABLEKS                       R3 R0 K1 ["partConfig"]
        5 GETTABLEKS                       R3 R3 K2 ["name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K9 [{"LayoutOrder", "Visible", "propertyPart", "readonly", "onEdit", "chip"}]
       11 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 GETTABLEKS                       R5 R0 K4 ["Visible"]
       17 SETTABLEKS                       R5 R4 K4 ["Visible"]
       19 GETTABLEKS                       R5 R0 K10 ["part"]
       21 SETTABLEKS                       R5 R4 K5 ["propertyPart"]
       23 GETTABLEKS                       R5 R0 K6 ["readonly"]
       25 SETTABLEKS                       R5 R4 K6 ["readonly"]
       27 SETTABLEKS                       R1 R4 K7 ["onEdit"]
       29 GETTABLEKS                       R5 R0 K1 ["partConfig"]
       31 GETTABLEKS                       R5 R5 K8 ["chip"]
       33 SETTABLEKS                       R5 R4 K8 ["chip"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Expressions"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["PropertyTypes"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["RpcTypes"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K7 ["Util"]
       37 GETTABLEKS                       R7 R7 K13 ["Number"]
       39 GETTABLEKS                       R7 R7 K14 ["SingleNumberInput"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       46 GETTABLEKS                       R8 R8 K16 ["useEditValue"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R4 K17 ["createElement"]
       51 DUPCLOSURE                       R9 K18 [PROTO_0]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R6
       55 RETURN                           R9 1
