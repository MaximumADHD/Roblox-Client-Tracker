PROTO_0:
        0 DUPTABLE                         R2 K5 [{[1], ["_source"], ["_workInProgressVersionPrimary"] = , ["_workInProgressVersionSecondary"] = }]
        1 SETTABLEKS                       R1 R2 K0 ["_getVersion"]
        3 SETTABLEKS                       R0 R2 K1 ["_source"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K6 ["__DEV__"]
        8 JUMPIFNOT                        R3 ; [+6]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K7 ["_currentPrimaryRenderer"]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K8 ["_currentSecondaryRenderer"]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K7 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 RETURN                           R3 1
