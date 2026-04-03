PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["subscribeAll"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["navigation"]
        4 GETTABLEKS                       R3 R1 K1 ["navigation"]
        6 JUMPIFEQ                         R2 R3 ; [+7]
        8 NAMECALL                         R2 R0 K2 ["removeAll"]
       10 CALL                             R2 1 0
       11 NAMECALL                         R2 R0 K3 ["subscribeAll"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["removeAll"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 GETTABLE                         R2 R3 R4
        5 RETURN                           R2 1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R0 R0 K0 ["getPropListener"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 MOVE                             R1 R0
        8 GETVARARGS                       R2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["navigation"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["subscriptions"]
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R0 K2 ["subscriptions"]
       14 GETTABLEKS                       R8 R1 K3 ["addListener"]
       16 MOVE                             R9 R5
       17 NEWCLOSURE                       R10 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R5
       20 CALL                             R8 2 1
       21 SETTABLE                         R8 R7 R5
       22 FORGLOOP                         R2 1 ; [-11]
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R7 R0 K0 ["subscriptions"]
        6 GETTABLE                         R6 R7 R4
        7 JUMPIFNOT                        R6 ; [+7]
        8 GETTABLEKS                       R7 R6 K1 ["remove"]
       10 CALL                             R7 0 0
       11 GETTABLEKS                       R7 R0 K0 ["subscriptions"]
       13 LOADNIL                          R8
       14 SETTABLE                         R8 R7 R4
       15 FORGLOOP                         R1 1 ; [-12]
       17 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K2 ["Parent"]
       20 GETTABLEKS                       R4 R5 K6 ["withNavigation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Events"]
       27 CALL                             R4 1 1
       28 NEWTABLE                         R5 4 0
       30 GETTABLEKS                       R6 R4 K8 ["WillFocus"]
       32 LOADK                            R7 K9 ["onWillFocus"]
       33 SETTABLE                         R7 R5 R6
       34 GETTABLEKS                       R6 R4 K10 ["DidFocus"]
       36 LOADK                            R7 K11 ["onDidFocus"]
       37 SETTABLE                         R7 R5 R6
       38 GETTABLEKS                       R6 R4 K12 ["WillBlur"]
       40 LOADK                            R7 K13 ["onWillBlur"]
       41 SETTABLE                         R7 R5 R6
       42 GETTABLEKS                       R6 R4 K14 ["DidBlur"]
       44 LOADK                            R7 K15 ["onDidBlur"]
       45 SETTABLE                         R7 R5 R6
       46 GETTABLEKS                       R6 R2 K16 ["Component"]
       48 LOADK                            R8 K17 ["NavigationEvents"]
       49 NAMECALL                         R6 R6 K18 ["extend"]
       51 CALL                             R6 2 1
       52 DUPCLOSURE                       R7 K19 [PROTO_0]
       53 SETTABLEKS                       R7 R6 K20 ["didMount"]
       55 DUPCLOSURE                       R7 K21 [PROTO_1]
       56 SETTABLEKS                       R7 R6 K22 ["didUpdate"]
       58 DUPCLOSURE                       R7 K23 [PROTO_2]
       59 SETTABLEKS                       R7 R6 K24 ["willUnmount"]
       61 DUPCLOSURE                       R7 K25 [PROTO_3]
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R7 R6 K26 ["getPropListener"]
       65 DUPCLOSURE                       R7 K27 [PROTO_5]
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R7 R6 K28 ["subscribeAll"]
       69 DUPCLOSURE                       R7 K29 [PROTO_6]
       70 CAPTURE                          VAL R5
       71 SETTABLEKS                       R7 R6 K30 ["removeAll"]
       73 DUPCLOSURE                       R7 K31 [PROTO_7]
       74 SETTABLEKS                       R7 R6 K32 ["render"]
       76 MOVE                             R7 R3
       77 MOVE                             R8 R6
       78 CALL                             R7 1 -1
       79 RETURN                           R7 -1
