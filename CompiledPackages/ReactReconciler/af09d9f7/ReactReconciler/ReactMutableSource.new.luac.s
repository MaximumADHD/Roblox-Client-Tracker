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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+39]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+19]
        6 GETTABLEKS                       R1 R0 K1 ["_currentPrimaryRenderer"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+5]
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R1 R0 K1 ["_currentPrimaryRenderer"]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R1 R0 K1 ["_currentPrimaryRenderer"]
       16 GETUPVAL                         R2 2
       17 JUMPIFEQ                         R1 R2 ; [+25]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R1 R2 K2 ["error"]
       22 LOADK                            R2 K3 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R1 R0 K4 ["_currentSecondaryRenderer"]
       27 JUMPIFNOTEQKNIL                  R1 ; [+5]
       29 GETUPVAL                         R1 2
       30 SETTABLEKS                       R1 R0 K4 ["_currentSecondaryRenderer"]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R1 R0 K4 ["_currentSecondaryRenderer"]
       35 GETUPVAL                         R2 2
       36 JUMPIFEQ                         R1 R2 ; [+6]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R1 R2 K2 ["error"]
       41 LOADK                            R2 K3 ["Detected multiple renderers concurrently rendering the same mutable source. This is currently unsupported."]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

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
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["Shared"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R2 R3 K7 ["console"]
       19 NEWTABLE                         R3 8 0
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Shared"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETIMPORT                        R8 K1 [script]
       30 GETTABLEKS                       R7 R8 K2 ["Parent"]
       32 GETTABLEKS                       R6 R7 K8 ["ReactInternalTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R7 K4 [require]
       37 GETIMPORT                        R10 K1 [script]
       39 GETTABLEKS                       R9 R10 K2 ["Parent"]
       41 GETTABLEKS                       R8 R9 K9 ["ReactFiberHostConfig"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R6 R7 K10 ["isPrimaryRenderer"]
       46 NEWTABLE                         R7 0 0
       48 LOADNIL                          R8
       49 GETTABLEKS                       R9 R1 K11 ["__DEV__"]
       51 JUMPIFNOT                        R9 ; [+2]
       52 NEWTABLE                         R8 0 0
       54 DUPCLOSURE                       R9 K12 [PROTO_0]
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R9 R3 K13 ["markSourceAsDirty"]
       58 DUPCLOSURE                       R9 K14 [PROTO_1]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R9 R3 K15 ["resetWorkInProgressVersions"]
       63 DUPCLOSURE                       R9 K16 [PROTO_2]
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R9 R3 K17 ["getWorkInProgressVersion"]
       67 DUPCLOSURE                       R9 K18 [PROTO_3]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 SETTABLEKS                       R9 R3 K19 ["setWorkInProgressVersion"]
       72 NEWCLOSURE                       R9 P4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          REF R8
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R9 R3 K20 ["warnAboutMultipleRenderersDEV"]
       79 DUPCLOSURE                       R9 K21 [PROTO_5]
       80 SETTABLEKS                       R9 R3 K22 ["registerMutableSourceForHydration"]
       82 CLOSEUPVALS                      R8
       83 RETURN                           R3 1
