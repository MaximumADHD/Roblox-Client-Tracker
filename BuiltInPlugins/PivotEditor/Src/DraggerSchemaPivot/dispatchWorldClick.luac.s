PROTO_0:
        0 DUPTABLE                         R3 K2 [{"ClickedSelectable", "HandleId"}]
        1 GETTABLEKS                       R4 R2 K0 ["ClickedSelectable"]
        3 SETTABLEKS                       R4 R3 K0 ["ClickedSelectable"]
        5 LOADK                            R4 K3 ["Part"]
        6 SETTABLEKS                       R4 R3 K1 ["HandleId"]
        8 RETURN                           R3 1

PROTO_1:
        0 NAMECALL                         R3 R1 K0 ["doesAllowFreeformDrag"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+20]
        4 GETTABLEKS                       R3 R2 K1 ["SelectionNowContainsSelectable"]
        6 JUMPIFNOT                        R3 ; [+17]
        7 GETTABLEKS                       R3 R2 K2 ["ClickedSelectable"]
        9 LOADK                            R5 K3 ["PVInstance"]
       10 NAMECALL                         R3 R3 K4 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+10]
       14 LOADK                            R3 K5 ["FreeformSelectionDrag"]
       15 DUPTABLE                         R4 K7 [{"ClickedSelectable", "HandleId"}]
       16 GETTABLEKS                       R5 R2 K2 ["ClickedSelectable"]
       18 SETTABLEKS                       R5 R4 K2 ["ClickedSelectable"]
       20 LOADK                            R5 K8 ["Part"]
       21 SETTABLEKS                       R5 R4 K6 ["HandleId"]
       23 RETURN                           R3 2
       24 LOADK                            R3 K9 ["Ready"]
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
