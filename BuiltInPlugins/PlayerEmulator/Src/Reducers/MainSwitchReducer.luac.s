PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["enabled"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R0
        8 DUPTABLE                         R5 K4 [{"mainSwitchEnabled"}]
        9 SETTABLEKS                       R2 R5 K3 ["mainSwitchEnabled"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["createReducer"]
       25 DUPTABLE                         R4 K10 [{"mainSwitchEnabled"}]
       26 LOADB                            R5 0
       27 SETTABLEKS                       R5 R4 K9 ["mainSwitchEnabled"]
       29 DUPTABLE                         R5 K12 [{"OnPlayerEmulationEnabledChanged"}]
       30 DUPCLOSURE                       R6 K13 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K11 ["OnPlayerEmulationEnabledChanged"]
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1
