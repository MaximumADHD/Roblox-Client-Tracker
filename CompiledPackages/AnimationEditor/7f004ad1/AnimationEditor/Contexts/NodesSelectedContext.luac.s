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
        3 GETTABLEKS                       R2 R2 K0 ["useSignalState"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R1
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 1
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K2 ["useProducer"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R2
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K3 ["createElement"]
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R5 R5 K4 ["Provider"]
       40 DUPTABLE                         R6 K6 [{"value"}]
       41 SETTABLEKS                       R3 R6 K5 ["value"]
       43 GETTABLEKS                       R7 R0 K7 ["children"]
       45 CALL                             R4 3 -1
       46 RETURN                           R4 -1

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
       39 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K14 ["useObserveSelection"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K15 ["createContext"]
       46 DUPTABLE                         R7 K18 [{["onlySelectingNodes"] = False}]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R1 K19 ["createReplicatedState"]
       50 LOADK                            R8 K20 ["NodesSelectedContext_onlySelectingNodes"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K21 [PROTO_3]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R6
       59 DUPCLOSURE                       R9 K22 [PROTO_5]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 DUPTABLE                         R10 K26 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       64 SETTABLEKS                       R6 R10 K23 ["Context"]
       66 SETTABLEKS                       R8 R10 K24 ["EditableDataModelProvider"]
       68 SETTABLEKS                       R9 R10 K25 ["UIDataModelProvider"]
       70 RETURN                           R10 1
