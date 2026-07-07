PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 MOVE                             R2 R1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 LOADK                            R9 K1 ["AnimationNodeDefinition"]
       13 NAMECALL                         R7 R6 K2 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIF                           R7 ; [+2]
       17 LOADB                            R7 0
       18 RETURN                           R7 1
       19 FORGLOOP                         R2 2 ; [-8]
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"onlySelectingNodes"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["onlySelectingNodes"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 MOVE                             R3 R1
        8 JUMP                             ; [+1]
        9 MOVE                             R3 R2
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K0 ["useSignalState"]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R7 0 1
       21 MOVE                             R8 R3
       22 SETLIST                          R7 R8 1 [1]
       24 CALL                             R5 2 -1
       25 CALL                             R4 -1 1
       26 GETUPVAL                         R5 6
       27 GETTABLEKS                       R5 R5 K2 ["useProducer"]
       29 MOVE                             R6 R4
       30 CALL                             R5 1 0
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R7 0 1
       38 MOVE                             R8 R4
       39 SETLIST                          R7 R8 1 [1]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K3 ["createElement"]
       45 GETUPVAL                         R7 7
       46 GETTABLEKS                       R7 R7 K4 ["Provider"]
       48 DUPTABLE                         R8 K6 [{"value"}]
       49 SETTABLEKS                       R5 R8 K5 ["value"]
       51 GETTABLEKS                       R9 R0 K7 ["children"]
       53 CALL                             R6 3 -1
       54 RETURN                           R6 -1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"onlySelectingNodes"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["onlySelectingNodes"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useConsumer"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["createElement"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K3 ["Provider"]
       22 DUPTABLE                         R5 K5 [{"value"}]
       23 SETTABLEKS                       R2 R5 K4 ["value"]
       25 GETTABLEKS                       R6 R0 K6 ["children"]
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Signals"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["SignalsReact"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Flags"]
       41 GETTABLEKS                       R6 R6 K14 ["getFFlagAnimGraphUIStudioActionOverrides"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K16 ["useObserveNodeSelection"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K17 ["useObserveSelection"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R2 K18 ["createContext"]
       60 DUPTABLE                         R9 K21 [{["onlySelectingNodes"] = False}]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R1 K22 ["createReplicatedState"]
       64 LOADK                            R10 K23 ["NodesSelectedContext_onlySelectingNodes"]
       65 CALL                             R9 1 1
       66 DUPCLOSURE                       R10 K24 [PROTO_3]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R11 K25 [PROTO_5]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R8
       79 DUPTABLE                         R12 K29 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       80 SETTABLEKS                       R8 R12 K26 ["Context"]
       82 SETTABLEKS                       R10 R12 K27 ["EditableDataModelProvider"]
       84 SETTABLEKS                       R11 R12 K28 ["UIDataModelProvider"]
       86 RETURN                           R12 1
