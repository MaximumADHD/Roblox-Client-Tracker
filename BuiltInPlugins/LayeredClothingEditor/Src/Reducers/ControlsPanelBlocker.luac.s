PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isActive"}]
        7 GETTABLEKS                       R5 R1 K2 ["isActive"]
        9 SETTABLEKS                       R5 R4 K2 ["isActive"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"message"}]
        7 GETTABLEKS                       R5 R1 K2 ["message"]
        9 SETTABLEKS                       R5 R4 K2 ["message"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["createReducer"]
       25 DUPTABLE                         R4 K13 [{["isActive"] = False, ["message"] = ""}]
       26 DUPTABLE                         R5 K16 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage"}]
       27 DUPCLOSURE                       R6 K17 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R6 R5 K14 ["SetControlsPanelBlockerActivity"]
       31 DUPCLOSURE                       R6 K18 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R6 R5 K15 ["SetControlsPanelBlockerMessage"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1
