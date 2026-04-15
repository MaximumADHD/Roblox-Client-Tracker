PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R1 R2 K0 ["state"]
        4 GETTABLEKS                       R2 R1 K1 ["routes"]
        6 GETTABLEKS                       R3 R1 K2 ["index"]
        8 LOADB                            R4 1
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETTABLE                         R6 R2 R3
       12 GETTABLEKS                       R5 R6 K3 ["key"]
       14 JUMPIFEQ                         R5 R0 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Action"]
        3 JUMPIFEQ                         R0 R2 ; [+6]
        5 DUPTABLE                         R2 K2 [{"remove"}]
        6 DUPCLOSURE                       R3 K3 [PROTO_4]
        7 SETTABLEKS                       R3 R2 K1 ["remove"]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 1
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R1
       13 DUPTABLE                         R2 K2 [{"remove"}]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K1 ["remove"]
       19 RETURN                           R2 1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["dispatch"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLE                         R1 R2 R3
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R6 R0 K0 ["getActionCreators"]
        2 MOVE                             R7 R1
        3 LOADNIL                          R8
        4 CALL                             R6 2 1
        5 DUPTABLE                         R7 K9 [{"actions", "router", "state", "dispatch", "getScreenProps", "_dangerouslyGetParent", "isFirstRouteInParent", "_childrenNavigation"}]
        6 SETTABLEKS                       R6 R7 K1 ["actions"]
        8 SETTABLEKS                       R0 R7 K2 ["router"]
       10 SETTABLEKS                       R1 R7 K3 ["state"]
       12 SETTABLEKS                       R2 R7 K4 ["dispatch"]
       14 SETTABLEKS                       R4 R7 K5 ["getScreenProps"]
       16 DUPCLOSURE                       R8 K10 [PROTO_0]
       17 SETTABLEKS                       R8 R7 K6 ["_dangerouslyGetParent"]
       19 DUPCLOSURE                       R8 K11 [PROTO_1]
       20 SETTABLEKS                       R8 R7 K7 ["isFirstRouteInParent"]
       22 GETUPVAL                         R8 0
       23 MOVE                             R9 R5
       24 CALL                             R9 0 -1
       25 CALL                             R8 -1 1
       26 SETTABLEKS                       R8 R7 K8 ["_childrenNavigation"]
       28 NEWCLOSURE                       R8 P2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R5
       32 SETTABLEKS                       R8 R7 K12 ["getChildNavigation"]
       34 NEWCLOSURE                       R8 P3
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R8 R7 K13 ["isFocused"]
       38 NEWCLOSURE                       R8 P4
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R8 R7 K14 ["addListener"]
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R8 R9 K15 ["assign"]
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R10 R7 K3 ["state"]
       49 CALL                             R9 1 1
       50 MOVE                             R10 R6
       51 CALL                             R8 2 1
       52 MOVE                             R9 R8
       53 LOADNIL                          R10
       54 LOADNIL                          R11
       55 FORGPREP                         R9
       56 NEWCLOSURE                       R14 P5
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R12
       60 SETTABLE                         R14 R7 R12
       61 FORGLOOP                         R9 2 ; [-6]
       63 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Object"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["Events"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R7 R0 K8 ["routers"]
       23 GETTABLEKS                       R6 R7 K9 ["getNavigationActionCreators"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R0 K10 ["getChildNavigation"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R0 K11 ["getChildrenNavigationCache"]
       35 CALL                             R7 1 1
       36 DUPCLOSURE                       R8 K12 [PROTO_8]
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 RETURN                           R8 1
