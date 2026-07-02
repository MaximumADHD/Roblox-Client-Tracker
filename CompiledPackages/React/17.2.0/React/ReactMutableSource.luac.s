PROTO_0:
        0 DUPTABLE                         R2 K5 [{[1], ["_source"], ["_workInProgressVersionPrimary"] = , ["_workInProgressVersionSecondary"] = }]
        1 SETTABLEKS                       R1 R2 K0 ["_getVersion"]
        3 SETTABLEKS                       R0 R2 K1 ["_source"]
        5 GETIMPORT                        R3 K7 [_G]
        7 GETTABLEKS                       R3 R3 K8 ["__DEV__"]
        9 JUMPIFNOT                        R3 ; [+6]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K9 ["_currentPrimaryRenderer"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K10 ["_currentSecondaryRenderer"]
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
