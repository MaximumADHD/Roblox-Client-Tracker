PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["observeState"]
        8 MOVE                             R8 R0
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+3]
       11 GETTABLEKS                       R8 R7 K1 ["Outputs"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R8
       15 FASTCALL1                        TYPE R8 ; [+3]
       16 MOVE                             R10 R8
       17 GETIMPORT                        R9 K3 [type]
       19 CALL                             R9 1 1
       20 JUMPIFNOTEQKS                    R9 K4 ["table"] ; [+5]
       22 GETTABLEKS                       R10 R6 K5 ["outputName"]
       24 GETTABLE                         R9 R8 R10
       25 SETTABLE                         R9 R1 R5
       26 FORGLOOP                         R2 2 ; [-21]
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["of"]
        6 NEWTABLE                         R1 0 0
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1
       10 NEWTABLE                         R0 0 0
       12 GETUPVAL                         R1 2
       13 JUMPIF                           R1 ; [+2]
       14 NEWTABLE                         R1 0 0
       16 MOVE                             R2 R1
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 JUMPIFNOT                        R6 ; [+20]
       21 GETTABLEKS                       R7 R6 K1 ["isValueNodeConnection"]
       23 JUMPIFNOT                        R7 ; [+17]
       24 GETTABLEKS                       R7 R6 K2 ["outputNodeId"]
       26 JUMPIFNOT                        R7 ; [+14]
       27 DUPTABLE                         R7 K5 [{"observeState", "outputName"}]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K6 ["observeNodeStateById"]
       31 GETTABLEKS                       R9 R6 K2 ["outputNodeId"]
       33 CALL                             R8 1 1
       34 SETTABLEKS                       R8 R7 K3 ["observeState"]
       36 GETTABLEKS                       R8 R6 K7 ["outputNodePinId"]
       38 SETTABLEKS                       R8 R7 K4 ["outputName"]
       40 SETTABLE                         R7 R0 R5
       41 FORGLOOP                         R2 2 ; [-22]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K8 ["Experimental"]
       46 GETTABLEKS                       R2 R2 K9 ["createComputed"]
       48 NEWCLOSURE                       R3 P0
       49 CAPTURE                          VAL R0
       50 CALL                             R2 1 -1
       51 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R4 0 2
       17 MOVE                             R5 R0
       18 GETTABLEKS                       R6 R1 K3 ["observeNodeStateById"]
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R3 R3 K4 ["useSignalState"]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 -1
       28 RETURN                           R3 -1

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
       30 GETTABLEKS                       R5 R5 K11 ["Signals"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["SignalsReact"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["SignalsUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Flags"]
       51 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K16 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 RETURN                           R8 1
