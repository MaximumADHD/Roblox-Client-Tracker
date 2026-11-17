PROTO_0:
        0 NEWTABLE                         R2 1 0
        2 LOADB                            R3 1
        3 SETTABLE                         R3 R2 R0
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 LOADN                            R4 1
       10 LENGTH                           R5 R3
       11 JUMPIFNOTLE                      R4 R5 ; [+36]
       13 GETTABLE                         R5 R3 R4
       14 ADDK                             R4 R4 K0 [1]
       15 GETTABLE                         R6 R1 R5
       16 JUMPIFNOT                        R6 ; [+30]
       17 GETTABLEKS                       R7 R6 K1 ["inputPinToConnectionMap"]
       19 LOADNIL                          R8
       20 LOADNIL                          R9
       21 FORGPREP                         R7
       22 JUMPIFEQKNIL                     R11 ; [+22]
       24 GETTABLEKS                       R12 R11 K2 ["outputNodeId"]
       26 JUMPIFEQKNIL                     R12 ; [+18]
       28 GETTABLEKS                       R13 R11 K2 ["outputNodeId"]
       30 GETTABLE                         R12 R2 R13
       31 JUMPIFNOTEQKNIL                  R12 ; [+13]
       33 GETTABLEKS                       R12 R11 K2 ["outputNodeId"]
       35 LOADB                            R13 1
       36 SETTABLE                         R13 R2 R12
       37 GETTABLEKS                       R14 R11 K2 ["outputNodeId"]
       39 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       41 MOVE                             R13 R3
       42 GETIMPORT                        R12 K5 [table.insert]
       44 CALL                             R12 2 0
       45 FORGLOOP                         R7 2 ; [-24]
       47 JUMPBACK                         ; [-38]
       48 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodePayloadDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 JUMPIFEQKNIL                     R2 ; [+12]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["current"]
       15 GETTABLE                         R2 R1 R3
       16 JUMPIFNOTEQKNIL                  R2 ; [+6]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K3 ["setSpotlightedNodeId"]
       21 LOADNIL                          R3
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["spotlightedNodeId"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["nodePayloadDispatcher"]
       10 GETTABLEKS                       R1 R1 K2 ["observeMap"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["spotlightedNodeId"]
       17 GETTABLE                         R2 R1 R3
       18 JUMPIFNOTEQKNIL                  R2 ; [+3]
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETUPVAL                         R2 2
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["spotlightedNodeId"]
       26 MOVE                             R4 R1
       27 CALL                             R2 2 1
       28 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"spotlightedNodeId", "setSpotlightedNodeId", "observeSpotlightedSubtree"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["spotlightedNodeId"]
        4 SETTABLEKS                       R1 R0 K0 ["spotlightedNodeId"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["setSpotlightedNodeId"]
        9 SETTABLEKS                       R1 R0 K1 ["setSpotlightedNodeId"]
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R1 R0 K2 ["observeSpotlightedSubtree"]
       14 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 GETTABLEKS                       R3 R0 K3 ["spotlightedNodeId"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R0 K3 ["spotlightedNodeId"]
       15 SETTABLEKS                       R3 R2 K4 ["current"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["useLayoutEffect"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R5 0 2
       27 GETTABLEKS                       R6 R0 K6 ["setSpotlightedNodeId"]
       29 GETTABLEKS                       R7 R1 K7 ["nodePayloadDispatcher"]
       31 GETTABLEKS                       R7 R7 K8 ["observeMap"]
       33 SETLIST                          R5 R6 2 [1]
       35 CALL                             R3 2 0
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K9 ["useMemo"]
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U3
       44 NEWTABLE                         R5 0 2
       46 GETTABLEKS                       R6 R0 K3 ["spotlightedNodeId"]
       48 GETTABLEKS                       R7 R1 K7 ["nodePayloadDispatcher"]
       50 GETTABLEKS                       R7 R7 K8 ["observeMap"]
       52 SETLIST                          R5 R6 2 [1]
       54 CALL                             R3 2 1
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K9 ["useMemo"]
       58 NEWCLOSURE                       R5 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 NEWTABLE                         R6 0 3
       63 GETTABLEKS                       R7 R0 K3 ["spotlightedNodeId"]
       65 GETTABLEKS                       R8 R0 K6 ["setSpotlightedNodeId"]
       67 MOVE                             R9 R3
       68 SETLIST                          R6 R7 3 [1]
       70 CALL                             R4 2 1
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K10 ["createElement"]
       74 GETUPVAL                         R6 4
       75 GETTABLEKS                       R6 R6 K11 ["Provider"]
       77 DUPTABLE                         R7 K13 [{"value"}]
       78 SETTABLEKS                       R4 R7 K12 ["value"]
       80 GETTABLEKS                       R8 R0 K14 ["children"]
       82 CALL                             R5 3 -1
       83 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["Signals"]
       39 CALL                             R5 1 1
       40 DUPTABLE                         R6 K17 [{["spotlightedNodeId"] = , ["setSpotlightedNodeId"], ["observeSpotlightedSubtree"]}]
       41 GETTABLEKS                       R7 R4 K18 ["createUnimplemented"]
       43 LOADK                            R8 K15 ["setSpotlightedNodeId"]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K15 ["setSpotlightedNodeId"]
       47 GETTABLEKS                       R7 R5 K19 ["createSignal"]
       49 LOADNIL                          R8
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K16 ["observeSpotlightedSubtree"]
       53 GETTABLEKS                       R7 R3 K20 ["createContext"]
       55 MOVE                             R8 R6
       56 CALL                             R7 1 1
       57 DUPCLOSURE                       R8 K21 [PROTO_0]
       58 DUPCLOSURE                       R9 K22 [PROTO_6]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 DUPTABLE                         R10 K25 [{"Context", "Provider"}]
       65 SETTABLEKS                       R7 R10 K23 ["Context"]
       67 SETTABLEKS                       R9 R10 K24 ["Provider"]
       69 RETURN                           R10 1
