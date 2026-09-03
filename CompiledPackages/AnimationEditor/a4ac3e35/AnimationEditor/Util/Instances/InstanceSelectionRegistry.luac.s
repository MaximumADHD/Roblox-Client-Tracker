PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["_lastSelectionSet"]
        6 GETIMPORT                        R3 K3 [table.clone]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 0
       12 NEWTABLE                         R5 0 0
       14 MOVE                             R6 R1
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 LOADB                            R11 1
       19 SETTABLE                         R11 R5 R10
       20 LOADNIL                          R11
       21 SETTABLE                         R11 R3 R10
       22 GETTABLE                         R11 R2 R10
       23 JUMPIF                           R11 ; [+2]
       24 LOADB                            R11 1
       25 SETTABLE                         R11 R4 R10
       26 FORGLOOP                         R6 2 ; [-9]
       28 GETUPVAL                         R6 1
       29 GETIMPORT                        R7 K5 [table.freeze]
       31 MOVE                             R8 R5
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K0 ["_lastSelectionSet"]
       35 MOVE                             R6 R3
       36 LOADNIL                          R7
       37 LOADNIL                          R8
       38 FORGPREP                         R6
       39 GETUPVAL                         R12 1
       40 GETTABLEKS                       R12 R12 K6 ["_selectionListeners"]
       42 GETTABLE                         R11 R12 R9
       43 JUMPIFNOT                        R11 ; [+8]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K6 ["_selectionListeners"]
       47 GETTABLE                         R11 R12 R9
       48 GETTABLEKS                       R11 R11 K7 ["setIsSelected"]
       50 LOADB                            R12 0
       51 CALL                             R11 1 0
       52 FORGLOOP                         R6 1 ; [-14]
       54 MOVE                             R6 R4
       55 LOADNIL                          R7
       56 LOADNIL                          R8
       57 FORGPREP                         R6
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R12 R12 K6 ["_selectionListeners"]
       61 GETTABLE                         R11 R12 R9
       62 JUMPIFNOT                        R11 ; [+8]
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R12 R12 K6 ["_selectionListeners"]
       66 GETTABLE                         R11 R12 R9
       67 GETTABLEKS                       R11 R11 K7 ["setIsSelected"]
       69 LOADB                            R12 1
       70 CALL                             R11 1 0
       71 FORGLOOP                         R6 1 ; [-14]
       73 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R3 0 0
       10 DUPTABLE                         R4 K4 [{["__mode"] = "kv"}]
       11 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       13 GETIMPORT                        R2 K1 [setmetatable]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R1 K5 ["_selectionListeners"]
       18 GETIMPORT                        R2 K8 [table.freeze]
       20 NEWTABLE                         R3 0 0
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K9 ["_lastSelectionSet"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K10 ["createEffect"]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K11 ["_dispose"]
       34 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["This assertion keeps the listener alive while the signal is alive"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K4 ["_lastSelectionSet"]
       10 GETUPVAL                         R3 2
       11 GETTABLE                         R1 R2 R3
       12 ORK                              R0 R1 K3 [False]
       13 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_selectionListeners"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETTABLEKS                       R3 R0 K0 ["_selectionListeners"]
        6 GETTABLE                         R2 R3 R1
        7 GETTABLEKS                       R2 R2 K1 ["isSelected"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["createSignal"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          REF R2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R3 1 2
       19 DUPTABLE                         R5 K5 [{"instance", "isSelected", "setIsSelected"}]
       20 SETTABLEKS                       R1 R5 K3 ["instance"]
       22 SETTABLEKS                       R3 R5 K1 ["isSelected"]
       24 SETTABLEKS                       R4 R5 K4 ["setIsSelected"]
       26 MOVE                             R2 R5
       27 GETTABLEKS                       R5 R0 K0 ["_selectionListeners"]
       29 SETTABLE                         R2 R5 R1
       30 GETTABLEKS                       R5 R2 K1 ["isSelected"]
       32 CLOSEUPVALS                      R2
       33 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K1 ["_lastSelectionSet"]
        2 GETTABLE                         R3 R4 R1
        3 ORK                              R2 R3 K0 [False]
        4 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_dispose"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_dispose"]
        5 CALL                             R1 0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["_dispose"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K1 ["_lastSelectionSet"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K2 ["_selectionListeners"]
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 SETTABLEKS                       R2 R2 K8 ["__index"]
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K10 ["new"]
       23 DUPCLOSURE                       R3 K11 [PROTO_3]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K12 ["observeIsSelected"]
       27 DUPCLOSURE                       R3 K13 [PROTO_4]
       28 SETTABLEKS                       R3 R2 K14 ["isSelected"]
       30 DUPCLOSURE                       R3 K15 [PROTO_5]
       31 SETTABLEKS                       R3 R2 K16 ["destroy"]
       33 RETURN                           R2 1
