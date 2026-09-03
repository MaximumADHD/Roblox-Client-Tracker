PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K2 ["isSelected"]
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADB                            R6 1
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-6]
       15 LOADB                            R1 0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        5 GETTABLEKS                       R1 R1 K1 ["getMap"]
        7 CALL                             R1 0 3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K2 ["isSelected"]
       11 JUMPIFNOT                        R6 ; [+7]
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETIMPORT                        R6 K5 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-11]
       21 RETURN                           R0 1

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["selectNodes"]
        5 NEWTABLE                         R3 0 0
        7 LOADB                            R4 0
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 2
       13 LOADB                            R3 0
       14 JUMPIFEQKNIL                     R0 ; [+5]
       16 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+9]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 LENGTH                           R1 R2
        7 LOADN                            R2 0
        8 JUMPIFLT                         R2 R1 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+17]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["deleteTransition"]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 GETUPVAL                         R3 0
       13 CALL                             R1 2 -1
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R0 4
       16 LOADNIL                          R1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 5
       20 CALL                             R0 0 1
       21 LENGTH                           R1 R0
       22 LOADN                            R2 0
       23 JUMPIFNOTLT                      R2 R1 ; [+6]
       25 GETUPVAL                         R1 6
       26 GETTABLEKS                       R1 R1 K2 ["removeNodes"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 DUPTABLE                         R1 K5 [{"selectedTransitionId", "transitionPopupOpen", "selectTransition", "hasDeletableSelection", "deleteSelection"}]
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R2 R1 K0 ["selectedTransitionId"]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K1 ["transitionPopupOpen"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 SETTABLEKS                       R2 R1 K2 ["selectTransition"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K3 ["hasDeletableSelection"]
       20 NEWCLOSURE                       R2 P3
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 SETTABLEKS                       R2 R1 K4 ["deleteSelection"]
       30 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useState"]
       12 LOADNIL                          R3
       13 CALL                             R2 1 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["useState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K4 ["useRef"]
       22 GETTABLEKS                       R7 R0 K5 ["data"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R0 K5 ["data"]
       27 SETTABLEKS                       R7 R6 K6 ["current"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K4 ["useRef"]
       32 GETTABLEKS                       R8 R0 K7 ["onDataChanged"]
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R8 R0 K7 ["onDataChanged"]
       37 SETTABLEKS                       R8 R7 K6 ["current"]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R10 0 1
       47 GETTABLEKS                       R11 R1 K9 ["nodeRenderInfoDispatcher"]
       49 SETLIST                          R10 R11 1 [1]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K10 ["useSignalState"]
       55 MOVE                             R10 R8
       56 CALL                             R9 1 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K11 ["useEffect"]
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 NEWTABLE                         R12 0 1
       66 MOVE                             R13 R9
       67 SETLIST                          R12 R13 1 [1]
       69 CALL                             R10 2 0
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R12 0 5
       84 MOVE                             R13 R2
       85 MOVE                             R14 R4
       86 GETTABLEKS                       R15 R1 K9 ["nodeRenderInfoDispatcher"]
       88 GETTABLEKS                       R16 R1 K12 ["selectNodes"]
       90 GETTABLEKS                       R17 R1 K13 ["removeNodes"]
       92 SETLIST                          R12 R13 5 [1]
       94 CALL                             R10 2 1
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K14 ["createElement"]
       98 GETUPVAL                         R12 5
       99 GETTABLEKS                       R12 R12 K15 ["Provider"]
      101 DUPTABLE                         R13 K17 [{"value"}]
      102 SETTABLEKS                       R10 R13 K16 ["value"]
      104 GETTABLEKS                       R14 R0 K18 ["children"]
      106 CALL                             R11 3 -1
      107 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Data"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineData"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Data"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineTypes"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K14 [PROTO_0]
       50 DUPTABLE                         R8 K22 [{["selectedTransitionId"] = , ["transitionPopupOpen"] = False, ["selectTransition"], ["hasDeletableSelection"], ["deleteSelection"]}]
       51 SETTABLEKS                       R7 R8 K19 ["selectTransition"]
       53 DUPCLOSURE                       R9 K23 [PROTO_1]
       54 SETTABLEKS                       R9 R8 K20 ["hasDeletableSelection"]
       56 SETTABLEKS                       R7 R8 K21 ["deleteSelection"]
       58 GETTABLEKS                       R9 R2 K24 ["createContext"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K25 [PROTO_10]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R9
       69 DUPTABLE                         R11 K28 [{"Context", "Provider"}]
       70 SETTABLEKS                       R9 R11 K26 ["Context"]
       72 SETTABLEKS                       R10 R11 K27 ["Provider"]
       74 RETURN                           R11 1
