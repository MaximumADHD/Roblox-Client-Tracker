PROTO_0:
        0 DUPTABLE                         R2 K4 [{"_getVersion", "_source", "_workInProgressVersionPrimary", "_workInProgressVersionSecondary"}]
        1 SETTABLEKS                       R1 R2 K0 ["_getVersion"]
        3 SETTABLEKS                       R0 R2 K1 ["_source"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K2 ["_workInProgressVersionPrimary"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K3 ["_workInProgressVersionSecondary"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K5 ["__DEV__"]
       14 JUMPIFNOT                        R3 ; [+6]
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R2 K6 ["_currentPrimaryRenderer"]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K7 ["_currentSecondaryRenderer"]
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K7 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 RETURN                           R3 1
