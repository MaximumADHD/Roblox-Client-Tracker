PROTO_0:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R1 R0
        6 RETURN                           R1 1
        7 MOVE                             R1 R0
        8 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [warn]
        2 LOADK                            R3 K2 ["isCompatibleFamilyForHotReloading is stubbed (returns false)"]
        3 CALL                             R2 1 0
        4 LOADB                            R2 0
        5 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K2 ["Parent"]
       18 GETTABLEKS                       R3 R3 K6 ["ReactInternalTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Shared"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K7 ["ReactSymbols"]
       28 GETTABLEKS                       R4 R3 K8 ["REACT_FORWARD_REF_TYPE"]
       30 LOADNIL                          R5
       31 NEWTABLE                         R6 8 0
       33 DUPCLOSURE                       R7 K9 [PROTO_0]
       34 SETTABLEKS                       R7 R6 K10 ["resolveFunctionForHotReloading"]
       36 DUPCLOSURE                       R8 K11 [PROTO_1]
       37 SETTABLEKS                       R8 R6 K12 ["resolveClassForHotReloading"]
       39 DUPCLOSURE                       R9 K13 [PROTO_2]
       40 SETTABLEKS                       R9 R6 K14 ["resolveForwardRefForHotReloading"]
       42 DUPCLOSURE                       R10 K15 [PROTO_3]
       43 SETTABLEKS                       R10 R6 K16 ["isCompatibleFamilyForHotReloading"]
       45 DUPCLOSURE                       R10 K17 [PROTO_4]
       46 SETTABLEKS                       R10 R6 K18 ["markFailedErrorBoundaryForHotReloading"]
       48 RETURN                           R6 1
