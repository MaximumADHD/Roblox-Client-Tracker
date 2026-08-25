PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K1 ["indentWidth"]
        3 GETTABLEKS                       R6 R0 K2 ["depth"]
        5 MUL                              R4 R5 R6
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["explorerRowHeight"]
        9 ADD                              R3 R4 R5
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["iconSize"]
       13 ADD                              R2 R3 R4
       14 ADDK                             R1 R2 K0 [5]
       15 GETTABLEKS                       R2 R0 K5 ["uiState"]
       17 GETTABLEKS                       R2 R2 K6 ["textWidth"]
       19 DUPTABLE                         R3 K9 [{"leftOfName", "textWidth", "total"}]
       20 SETTABLEKS                       R1 R3 K7 ["leftOfName"]
       22 SETTABLEKS                       R2 R3 K6 ["textWidth"]
       24 ADD                              R4 R1 R2
       25 SETTABLEKS                       R4 R3 K8 ["total"]
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K9 ["useVisibleExplorerNodeRange"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
