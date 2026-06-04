PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "LayoutOrder", "onActivated", "Text"}]
        5 GETTABLEKS                       R4 R0 K9 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["emphasizeText"]
        9 SETTABLEKS                       R4 R3 K1 ["emphasizeText"]
       11 GETTABLEKS                       R4 R0 K9 ["controls"]
       13 GETTABLEKS                       R4 R4 K2 ["highlight"]
       15 SETTABLEKS                       R4 R3 K2 ["highlight"]
       17 GETTABLEKS                       R4 R0 K9 ["controls"]
       19 GETTABLEKS                       R4 R4 K3 ["isSelectable"]
       21 SETTABLEKS                       R4 R3 K3 ["isSelectable"]
       23 GETTABLEKS                       R4 R0 K9 ["controls"]
       25 GETTABLEKS                       R4 R4 K4 ["isSelected"]
       27 SETTABLEKS                       R4 R3 K4 ["isSelected"]
       29 LOADN                            R4 1
       30 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       32 DUPCLOSURE                       R4 K10 [PROTO_0]
       33 SETTABLEKS                       R4 R3 K6 ["onActivated"]
       35 LOADK                            R4 K11 ["10"]
       36 SETTABLEKS                       R4 R3 K7 ["Text"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["CalendarDay"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K12 [{"summary", "stories", "controls"}]
       24 LOADK                            R5 K8 ["CalendarDay"]
       25 SETTABLEKS                       R5 R4 K9 ["summary"]
       27 NEWTABLE                         R5 0 1
       29 DUPTABLE                         R6 K15 [{"name", "story"}]
       30 LOADK                            R7 K8 ["CalendarDay"]
       31 SETTABLEKS                       R7 R6 K13 ["name"]
       33 DUPCLOSURE                       R7 K16 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R7 R6 K14 ["story"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K10 ["stories"]
       42 DUPTABLE                         R5 K21 [{"emphasizeText", "highlight", "isSelectable", "isSelected"}]
       43 LOADB                            R6 1
       44 SETTABLEKS                       R6 R5 K17 ["emphasizeText"]
       46 LOADB                            R6 1
       47 SETTABLEKS                       R6 R5 K18 ["highlight"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K19 ["isSelectable"]
       52 LOADB                            R6 0
       53 SETTABLEKS                       R6 R5 K20 ["isSelected"]
       55 SETTABLEKS                       R5 R4 K11 ["controls"]
       57 RETURN                           R4 1
