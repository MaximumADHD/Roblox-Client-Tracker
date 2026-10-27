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
        1 JUMPIFEQKNIL                     R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 GETTABLEKS                       R0 R0 K1 ["deleteTransition"]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 CALL                             R0 0 1
       16 LENGTH                           R1 R0
       17 LOADN                            R2 0
       18 JUMPIFNOTLT                      R2 R1 ; [+6]
       20 GETUPVAL                         R1 4
       21 GETTABLEKS                       R1 R1 K2 ["removeNodes"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

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
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 SETTABLEKS                       R2 R1 K4 ["deleteSelection"]
       28 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useState"]
       19 LOADNIL                          R4
       20 CALL                             R3 1 2
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["useState"]
       24 LOADB                            R6 0
       25 CALL                             R5 1 2
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K4 ["useRef"]
       29 MOVE                             R8 R2
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R2 R7 K5 ["current"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R10 0 1
       41 GETTABLEKS                       R11 R1 K7 ["nodeRenderInfoDispatcher"]
       43 SETLIST                          R10 R11 1 [1]
       45 CALL                             R8 2 1
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R9 R9 K8 ["useSignalState"]
       49 MOVE                             R10 R8
       50 CALL                             R9 1 1
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K9 ["useEffect"]
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 NEWTABLE                         R12 0 1
       60 MOVE                             R13 R9
       61 SETLIST                          R12 R13 1 [1]
       63 CALL                             R10 2 0
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       67 NEWCLOSURE                       R11 P2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R12 0 5
       76 MOVE                             R13 R3
       77 MOVE                             R14 R5
       78 GETTABLEKS                       R15 R1 K7 ["nodeRenderInfoDispatcher"]
       80 GETTABLEKS                       R16 R1 K10 ["selectNodes"]
       82 GETTABLEKS                       R17 R1 K11 ["removeNodes"]
       84 SETLIST                          R12 R13 5 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K12 ["createElement"]
       90 GETUPVAL                         R12 5
       91 GETTABLEKS                       R12 R12 K13 ["Provider"]
       93 DUPTABLE                         R13 K15 [{"value"}]
       94 SETTABLEKS                       R10 R13 K14 ["value"]
       96 GETTABLEKS                       R14 R0 K16 ["children"]
       98 CALL                             R11 3 -1
       99 RETURN                           R11 -1

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
       37 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineDataContext"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_0]
       43 DUPTABLE                         R7 K21 [{["selectedTransitionId"] = , ["transitionPopupOpen"] = False, ["selectTransition"], ["hasDeletableSelection"], ["deleteSelection"]}]
       44 SETTABLEKS                       R6 R7 K18 ["selectTransition"]
       46 DUPCLOSURE                       R8 K22 [PROTO_1]
       47 SETTABLEKS                       R8 R7 K19 ["hasDeletableSelection"]
       49 SETTABLEKS                       R6 R7 K20 ["deleteSelection"]
       51 GETTABLEKS                       R8 R2 K23 ["createContext"]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 DUPCLOSURE                       R9 K24 [PROTO_10]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R8
       62 DUPTABLE                         R10 K27 [{"Context", "Provider"}]
       63 SETTABLEKS                       R8 R10 K25 ["Context"]
       65 SETTABLEKS                       R9 R10 K26 ["Provider"]
       67 RETURN                           R10 1
