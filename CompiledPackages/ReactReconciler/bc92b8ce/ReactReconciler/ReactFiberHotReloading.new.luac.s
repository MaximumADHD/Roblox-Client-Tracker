PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+10]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 1
       12 GETTABLEKS                       R2 R1 K3 ["current"]
       14 RETURN                           R2 1
       15 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 MOVE                             R1 R0
        6 RETURN                           R1 1
        7 LOADNIL                          R2
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+3]
       12 MOVE                             R1 R0
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R2 K3 ["current"]
       16 RETURN                           R1 1
       17 MOVE                             R1 R0
       18 RETURN                           R1 1
       19 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+64]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+56]
       11 JUMPIFEQKNIL                     R0 ; [+53]
       13 GETTABLEKS                       R3 R0 K3 ["render"]
       15 FASTCALL1                        TYPEOF R3 ; [+2]
       16 GETIMPORT                        R2 K5 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K6 ["function"] ; [+45]
       21 GETTABLEKS                       R3 R0 K3 ["render"]
       23 GETIMPORT                        R5 K1 [_G]
       25 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
       27 JUMPIFNOT                        R4 ; [+12]
       28 MOVE                             R2 R3
       29 JUMP                             ; [+12]
       30 LOADNIL                          R4
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKNIL                  R4 ; [+3]
       35 MOVE                             R2 R3
       36 JUMP                             ; [+5]
       37 GETTABLEKS                       R2 R4 K7 ["current"]
       39 JUMP                             ; [+2]
       40 MOVE                             R2 R3
       41 JUMP                             ; [0]
       42 GETTABLEKS                       R3 R0 K3 ["render"]
       44 JUMPIFEQ                         R3 R2 ; [+20]
       46 NEWTABLE                         R3 4 0
       48 GETUPVAL                         R4 0
       49 SETTABLEKS                       R4 R3 K8 ["$$typeof"]
       51 SETTABLEKS                       R2 R3 K3 ["render"]
       53 LOADNIL                          R4
       54 SETTABLEKS                       R4 R3 K9 ["displayName"]
       56 GETTABLEKS                       R4 R0 K9 ["displayName"]
       58 JUMPIFEQKNIL                     R4 ; [+5]
       60 GETTABLEKS                       R4 R0 K9 ["displayName"]
       62 SETTABLEKS                       R4 R3 K9 ["displayName"]
       64 RETURN                           R3 1
       65 RETURN                           R0 1
       66 GETTABLEKS                       R2 R1 K7 ["current"]
       68 RETURN                           R2 1
       69 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [warn]
        2 LOADK                            R3 K2 ["isCompatibleFamilyForHotReloading is stubbed (returns false)"]
        3 CALL                             R2 1 0
        4 LOADB                            R2 0
        5 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 JUMPIFNOTEQKNIL                  R1 ; [+4]
        9 NEWTABLE                         R1 0 0
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R2 0
       13 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R1 K5 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["ReactInternalTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["Shared"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R3 R4 K7 ["ReactSymbols"]
       28 GETTABLEKS                       R4 R3 K8 ["REACT_FORWARD_REF_TYPE"]
       30 LOADNIL                          R5
       31 NEWTABLE                         R6 8 0
       33 DUPCLOSURE                       R7 K9 [PROTO_0]
       34 SETTABLEKS                       R7 R6 K10 ["resolveFunctionForHotReloading"]
       36 DUPCLOSURE                       R8 K11 [PROTO_1]
       37 SETTABLEKS                       R8 R6 K12 ["resolveClassForHotReloading"]
       39 DUPCLOSURE                       R9 K13 [PROTO_2]
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R9 R6 K14 ["resolveForwardRefForHotReloading"]
       43 DUPCLOSURE                       R10 K15 [PROTO_3]
       44 SETTABLEKS                       R10 R6 K16 ["isCompatibleFamilyForHotReloading"]
       46 NEWCLOSURE                       R10 P4
       47 CAPTURE                          REF R5
       48 SETTABLEKS                       R10 R6 K17 ["markFailedErrorBoundaryForHotReloading"]
       50 CLOSEUPVALS                      R5
       51 RETURN                           R6 1
