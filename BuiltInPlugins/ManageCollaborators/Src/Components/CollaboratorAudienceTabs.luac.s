PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnActivated"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-x-large"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 DUPTABLE                         R4 K6 [{"Tabs"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K12 [{"activeTabId", "onActivated", "tabs", "size", "fillBehavior"}]
       15 GETTABLEKS                       R8 R0 K13 ["ActiveTabId"]
       17 SETTABLEKS                       R8 R7 K7 ["activeTabId"]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       23 GETTABLEKS                       R8 R0 K5 ["Tabs"]
       25 SETTABLEKS                       R8 R7 K9 ["tabs"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K14 ["Enums"]
       30 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       32 GETTABLEKS                       R8 R8 K16 ["Small"]
       34 SETTABLEKS                       R8 R7 K10 ["size"]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K14 ["Enums"]
       39 GETTABLEKS                       R8 R8 K17 ["FillBehavior"]
       41 GETTABLEKS                       R8 R8 K18 ["Fill"]
       43 SETTABLEKS                       R8 R7 K11 ["fillBehavior"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K5 ["Tabs"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Tabs"]
       25 GETTABLEKS                       R4 R2 K9 ["View"]
       27 DUPCLOSURE                       R5 K10 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 RETURN                           R5 1
