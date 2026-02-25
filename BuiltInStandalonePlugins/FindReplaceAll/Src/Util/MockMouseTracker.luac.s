PROTO_0:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"RegisterMouseTrackingRelativeToWidgetAsync"}]
        1 DUPCLOSURE                       R2 K2 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R2 R1 K0 ["RegisterMouseTrackingRelativeToWidgetAsync"]
        5 DUPTABLE                         R4 K4 [{"__index"}]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K3 ["__index"]
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K6 [setmetatable]
       14 CALL                             R2 2 0
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["MockMouseTrackerInstance"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 SETTABLEKS                       R2 R2 K9 ["__index"]
       20 DUPCLOSURE                       R3 K10 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K11 ["new"]
       25 RETURN                           R2 1
