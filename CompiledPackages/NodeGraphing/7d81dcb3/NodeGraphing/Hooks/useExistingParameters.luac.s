PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 LOADB                            R6 1
       12 SETTABLE                         R6 R0 R4
       13 FORGLOOP                         R1 1 ; [-3]
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 2
       17 JUMPIF                           R0 ; [+3]
       18 NEWTABLE                         R0 0 0
       20 RETURN                           R0 1
       21 NEWTABLE                         R0 0 0
       23 GETUPVAL                         R1 2
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 GETTABLEKS                       R6 R5 K0 ["name"]
       29 JUMPIFNOT                        R6 ; [+12]
       30 GETTABLE                         R7 R0 R6
       31 JUMPIF                           R7 ; [+10]
       32 GETTABLEKS                       R8 R5 K1 ["nodeType"]
       34 FASTCALL1                        TYPE R8 ; [+2]
       35 GETIMPORT                        R7 K3 [type]
       37 CALL                             R7 1 1
       38 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+3]
       40 LOADB                            R7 1
       41 SETTABLE                         R7 R0 R6
       42 FORGLOOP                         R1 2 ; [-16]
       44 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 2
       13 JUMPIFEQKNIL                     R6 ; [+8]
       15 GETUPVAL                         R7 2
       16 GETTABLE                         R6 R7 R4
       17 JUMPIFEQKNIL                     R6 ; [+4]
       19 GETUPVAL                         R7 2
       20 GETTABLE                         R6 R7 R4
       21 SETTABLE                         R6 R0 R4
       22 FORGLOOP                         R1 1 ; [-11]
       24 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       17 GETTABLEKS                       R3 R1 K3 ["nodePayloadDispatcher"]
       19 GETTABLEKS                       R3 R3 K4 ["observeMap"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       25 GETTABLEKS                       R4 R0 K5 ["observeParameterDefinitions"]
       27 JUMPIF                           R4 ; [+1]
       28 GETUPVAL                         R4 4
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R6 0 2
       39 MOVE                             R7 R2
       40 MOVE                             R8 R3
       41 SETLIST                          R6 R7 2 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K2 ["useSignalState"]
       47 GETTABLEKS                       R6 R0 K7 ["observeParameters"]
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R8 0 2
       59 MOVE                             R9 R4
       60 MOVE                             R10 R5
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 -1
       64 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["ParameterContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["SignalsUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUIAddInsertExistingParameters"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R5 K16 ["of"]
       58 LOADNIL                          R9
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K17 [PROTO_2]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R6
       68 RETURN                           R9 1
