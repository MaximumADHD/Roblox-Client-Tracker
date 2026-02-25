PROTO_0:
        0 DUPTABLE                         R2 K4 [{"_getVersion", "_source", "_workInProgressVersionPrimary", "_workInProgressVersionSecondary"}]
        1 SETTABLEKS                       R1 R2 K0 ["_getVersion"]
        3 SETTABLEKS                       R0 R2 K1 ["_source"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K2 ["_workInProgressVersionPrimary"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K3 ["_workInProgressVersionSecondary"]
       11 GETIMPORT                        R4 K6 [_G]
       13 GETTABLEKS                       R3 R4 K7 ["__DEV__"]
       15 JUMPIFNOT                        R3 ; [+6]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K8 ["_currentPrimaryRenderer"]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K9 ["_currentSecondaryRenderer"]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
