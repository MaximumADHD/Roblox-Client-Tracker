PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{["emphasizeText"], ["highlight"], ["isSelectable"], ["isSelected"], ["LayoutOrder"] = 1, ["onActivated"], ["Text"] = "10"}]
        5 GETTABLEKS                       R4 R0 K11 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["emphasizeText"]
        9 SETTABLEKS                       R4 R3 K1 ["emphasizeText"]
       11 GETTABLEKS                       R4 R0 K11 ["controls"]
       13 GETTABLEKS                       R4 R4 K2 ["highlight"]
       15 SETTABLEKS                       R4 R3 K2 ["highlight"]
       17 GETTABLEKS                       R4 R0 K11 ["controls"]
       19 GETTABLEKS                       R4 R4 K3 ["isSelectable"]
       21 SETTABLEKS                       R4 R3 K3 ["isSelectable"]
       23 GETTABLEKS                       R4 R0 K11 ["controls"]
       25 GETTABLEKS                       R4 R4 K4 ["isSelected"]
       27 SETTABLEKS                       R4 R3 K4 ["isSelected"]
       29 DUPCLOSURE                       R4 K12 [PROTO_0]
       30 SETTABLEKS                       R4 R3 K7 ["onActivated"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

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
       23 DUPTABLE                         R4 K12 [{["summary"] = "CalendarDay", ["stories"], ["controls"]}]
       24 NEWTABLE                         R5 0 1
       26 DUPTABLE                         R6 K15 [{["name"] = "CalendarDay", ["story"]}]
       27 DUPCLOSURE                       R7 K16 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R7 R6 K14 ["story"]
       32 SETLIST                          R5 R6 1 [1]
       34 SETTABLEKS                       R5 R4 K10 ["stories"]
       36 DUPTABLE                         R5 K23 [{["emphasizeText"] = True, ["highlight"] = True, ["isSelectable"] = True, ["isSelected"] = False}]
       37 SETTABLEKS                       R5 R4 K11 ["controls"]
       39 RETURN                           R4 1
