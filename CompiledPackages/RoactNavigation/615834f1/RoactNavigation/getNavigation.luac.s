PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R2 R3 K0 ["state"]
        4 GETTABLEKS                       R1 R2 K1 ["routes"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R3 R4 K0 ["state"]
       10 GETTABLEKS                       R2 R3 K2 ["index"]
       12 NOT                              R3 R0
       13 JUMPIF                           R3 ; [+7]
       14 GETTABLE                         R5 R1 R2
       15 GETTABLEKS                       R4 R5 K3 ["key"]
       17 JUMPIFEQ                         R4 R0 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Action"]
        3 JUMPIFEQ                         R0 R2 ; [+6]
        5 DUPTABLE                         R2 K2 [{"disconnect"}]
        6 DUPCLOSURE                       R3 K3 [PROTO_2]
        7 SETTABLEKS                       R3 R2 K1 ["disconnect"]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 1
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R1
       13 DUPTABLE                         R2 K2 [{"disconnect"}]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K1 ["disconnect"]
       19 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R6 R0 K0 ["getActionCreators"]
        2 MOVE                             R7 R1
        3 LOADNIL                          R8
        4 CALL                             R6 2 1
        5 DUPTABLE                         R7 K7 [{"actions", "router", "state", "dispatch", "getScreenProps", "_childrenNavigation"}]
        6 SETTABLEKS                       R6 R7 K1 ["actions"]
        8 SETTABLEKS                       R0 R7 K2 ["router"]
       10 SETTABLEKS                       R1 R7 K3 ["state"]
       12 SETTABLEKS                       R2 R7 K4 ["dispatch"]
       14 SETTABLEKS                       R4 R7 K5 ["getScreenProps"]
       16 GETUPVAL                         R8 0
       17 MOVE                             R9 R5
       18 CALL                             R9 0 -1
       19 CALL                             R8 -1 1
       20 SETTABLEKS                       R8 R7 K6 ["_childrenNavigation"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R8 R7 K8 ["getChildNavigation"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          VAL R5
       30 SETTABLEKS                       R8 R7 K9 ["isFocused"]
       32 NEWCLOSURE                       R8 P2
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R8 R7 K10 ["addListener"]
       37 GETUPVAL                         R10 3
       38 GETTABLEKS                       R9 R10 K11 ["Dictionary"]
       40 GETTABLEKS                       R8 R9 K12 ["join"]
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R10 R7 K3 ["state"]
       45 CALL                             R9 1 1
       46 MOVE                             R10 R6
       47 CALL                             R8 2 1
       48 GETIMPORT                        R9 K14 [pairs]
       50 MOVE                             R10 R8
       51 CALL                             R9 1 3
       52 FORGPREP_NEXT                    R9
       53 NEWCLOSURE                       R14 P3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R12
       57 SETTABLE                         R14 R7 R12
       58 FORGLOOP                         R9 2 ; [-6]
       60 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Cryo"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R3 R4 K4 ["Parent"]
       18 GETTABLEKS                       R2 R3 K6 ["NavigationEvents"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R6 K3 [script]
       25 GETTABLEKS                       R5 R6 K4 ["Parent"]
       27 GETTABLEKS                       R4 R5 K7 ["routers"]
       29 GETTABLEKS                       R3 R4 K8 ["getNavigationActionCreators"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R6 K3 [script]
       36 GETTABLEKS                       R5 R6 K4 ["Parent"]
       38 GETTABLEKS                       R4 R5 K9 ["getChildNavigation"]
       40 CALL                             R3 1 1
       41 GETIMPORT                        R4 K1 [require]
       43 GETIMPORT                        R7 K3 [script]
       45 GETTABLEKS                       R6 R7 K4 ["Parent"]
       47 GETTABLEKS                       R5 R6 K10 ["getChildrenNavigationCache"]
       49 CALL                             R4 1 1
       50 DUPCLOSURE                       R5 K11 [PROTO_6]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 RETURN                           R5 1
