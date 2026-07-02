PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 MOVE                             R6 R2
       10 DUPTABLE                         R7 K5 [{["tag"] = "col flex-y-evenly auto-y", ["Size"], ["ref"]}]
       11 GETIMPORT                        R8 K8 [UDim2.new]
       13 GETTABLEKS                       R9 R2 K9 ["width"]
       15 GETIMPORT                        R10 K11 [UDim.new]
       17 LOADN                            R11 0
       18 LOADN                            R12 0
       19 CALL                             R10 2 -1
       20 CALL                             R8 -1 1
       21 SETTABLEKS                       R8 R7 K3 ["Size"]
       23 SETTABLEKS                       R1 R7 K4 ["ref"]
       25 CALL                             R5 2 1
       26 DUPTABLE                         R6 K13 [{"AccordionContext"}]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K0 ["createElement"]
       30 GETUPVAL                         R8 5
       31 GETTABLEKS                       R8 R8 K14 ["Provider"]
       33 DUPTABLE                         R9 K16 [{"value"}]
       34 DUPTABLE                         R10 K20 [{"onAccordionItemActivated", "itemSize", "testId"}]
       35 GETTABLEKS                       R11 R2 K21 ["onActivated"]
       37 SETTABLEKS                       R11 R10 K17 ["onAccordionItemActivated"]
       39 GETTABLEKS                       R11 R2 K22 ["size"]
       41 SETTABLEKS                       R11 R10 K18 ["itemSize"]
       43 GETTABLEKS                       R11 R2 K19 ["testId"]
       45 SETTABLEKS                       R11 R10 K19 ["testId"]
       47 SETTABLEKS                       R10 R9 K15 ["value"]
       49 GETTABLEKS                       R10 R2 K23 ["children"]
       51 CALL                             R7 3 1
       52 SETTABLEKS                       R7 R6 K12 ["AccordionContext"]
       54 CALL                             R3 3 -1
       55 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["withCommonProps"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Utility"]
       39 GETTABLEKS                       R7 R7 K13 ["withDefaults"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K14 ["AccordionContext"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R9 R9 K4 ["Parent"]
       57 GETTABLEKS                       R9 R9 K15 ["useAccordion"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K16 ["Enums"]
       64 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       66 CALL                             R9 1 1
       67 DUPTABLE                         R10 K22 [{["size"], ["width"], ["testId"] = "--foundation-accordion"}]
       68 GETTABLEKS                       R11 R9 K23 ["Medium"]
       70 SETTABLEKS                       R11 R10 K18 ["size"]
       72 GETIMPORT                        R11 K26 [UDim.new]
       74 LOADN                            R12 1
       75 LOADN                            R13 0
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K19 ["width"]
       79 DUPCLOSURE                       R11 K27 [PROTO_0]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 GETTABLEKS                       R12 R2 K28 ["memo"]
       88 GETTABLEKS                       R13 R2 K29 ["forwardRef"]
       90 MOVE                             R14 R11
       91 CALL                             R13 1 -1
       92 CALL                             R12 -1 -1
       93 RETURN                           R12 -1
