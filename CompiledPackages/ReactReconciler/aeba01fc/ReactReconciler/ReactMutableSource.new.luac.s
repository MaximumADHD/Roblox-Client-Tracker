PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 JUMPIFNOT                        R5 ; [+4]
        6 LOADNIL                          R5
        7 SETTABLEKS                       R5 R4 K0 ["_workInProgressVersionPrimary"]
        9 JUMP                             ; [+3]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K1 ["_workInProgressVersionSecondary"]
       13 FORGLOOP                         R0 2 ; [-10]
       15 GETIMPORT                        R0 K4 [table.clear]
       17 GETUPVAL                         R1 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["_workInProgressVersionPrimary"]
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["_workInProgressVersionSecondary"]
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 SETTABLEKS                       R1 R0 K0 ["_workInProgressVersionPrimary"]
        4 JUMP                             ; [+2]
        5 SETTABLEKS                       R1 R0 K1 ["_workInProgressVersionSecondary"]
        7 GETUPVAL                         R3 1
        8 FASTCALL2                        TABLE_INSERT R3 R0 ; [+4]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R2 K4 [table.insert]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+39]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+19]
        7 GETTABLEKS                       R1 R0 K3 ["_currentPrimaryRenderer"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+5]
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R1 R0 K3 ["_currentPrimaryRenderer"]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R1 R0 K3 ["_currentPrimaryRenderer"]
       17 GETUPVAL                         R2 1
       18 JUMPIFEQ                         R1 R2 ; [+25]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K4 ["error"]
       23 LOADK                            R2 K5 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R1 R0 K6 ["_currentSecondaryRenderer"]
       28 JUMPIFNOTEQKNIL                  R1 ; [+5]
       30 GETUPVAL                         R1 1
       31 SETTABLEKS                       R1 R0 K6 ["_currentSecondaryRenderer"]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R1 R0 K6 ["_currentSecondaryRenderer"]
       36 GETUPVAL                         R2 1
       37 JUMPIFEQ                         R1 R2 ; [+6]
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R1 R2 K4 ["error"]
       42 LOADK                            R2 K5 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["_getVersion"]
        2 MOVE                             R3 R2
        3 GETTABLEKS                       R4 R1 K1 ["_source"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R0 K2 ["mutableSourceEagerHydrationData"]
        8 JUMPIFNOTEQKNIL                  R4 ; [+10]
       10 NEWTABLE                         R4 0 2
       12 MOVE                             R5 R1
       13 MOVE                             R6 R3
       14 SETLIST                          R4 R5 2 [1]
       16 SETTABLEKS                       R4 R0 K2 ["mutableSourceEagerHydrationData"]
       18 RETURN                           R0 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Shared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["console"]
       14 NEWTABLE                         R2 8 0
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Shared"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K2 ["Parent"]
       27 GETTABLEKS                       R5 R6 K7 ["ReactInternalTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R8 R9 K2 ["Parent"]
       36 GETTABLEKS                       R7 R8 K8 ["ReactFiberHostConfig"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R5 R6 K9 ["isPrimaryRenderer"]
       41 NEWTABLE                         R6 0 0
       43 LOADNIL                          R7
       44 GETIMPORT                        R9 K11 [_G]
       46 GETTABLEKS                       R8 R9 K12 ["__DEV__"]
       48 JUMPIFNOT                        R8 ; [+2]
       49 NEWTABLE                         R7 0 0
       51 DUPCLOSURE                       R8 K13 [PROTO_0]
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R8 R2 K14 ["markSourceAsDirty"]
       55 DUPCLOSURE                       R8 K15 [PROTO_1]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R8 R2 K16 ["resetWorkInProgressVersions"]
       60 DUPCLOSURE                       R8 K17 [PROTO_2]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R8 R2 K18 ["getWorkInProgressVersion"]
       64 DUPCLOSURE                       R8 K19 [PROTO_3]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R8 R2 K20 ["setWorkInProgressVersion"]
       69 NEWCLOSURE                       R8 P4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          REF R7
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R8 R2 K21 ["warnAboutMultipleRenderersDEV"]
       75 DUPCLOSURE                       R8 K22 [PROTO_5]
       76 SETTABLEKS                       R8 R2 K23 ["registerMutableSourceForHydration"]
       78 CLOSEUPVALS                      R7
       79 RETURN                           R2 1
