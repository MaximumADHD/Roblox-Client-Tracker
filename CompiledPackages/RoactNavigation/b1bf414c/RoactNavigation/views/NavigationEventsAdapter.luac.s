PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["subscriptions"]
        4 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["props"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R2 R3
        6 ORK                              R0 R1 K0 []
        7 JUMPIFNOT                        R0 ; [+20]
        8 GETUPVAL                         R1 2
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K3 [type]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K4 ["function"] ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 LOADK                            R3 K5 ["Value for event '%s' must be a function callback"]
       19 GETUPVAL                         R5 1
       20 FASTCALL1                        TOSTRING R5 ; [+2]
       21 GETIMPORT                        R4 K7 [tostring]
       23 CALL                             R4 1 1
       24 CALL                             R1 3 0
       25 MOVE                             R1 R0
       26 GETVARARGS                       R2 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       10 LOADK                            R4 K2 ["NavigationEventsAdapter can only be used within the view hierarchy of a navigator."]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETIMPORT                        R2 K6 [pairs]
       16 GETUPVAL                         R3 0
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 GETTABLEKS                       R7 R0 K7 ["subscriptions"]
       21 GETTABLEKS                       R8 R1 K8 ["addListener"]
       23 MOVE                             R9 R6
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          UPVAL U1
       28 CALL                             R8 2 1
       29 SETTABLE                         R8 R7 R6
       30 FORGLOOP                         R2 2 ; [-12]
       32 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETTABLEKS                       R7 R0 K2 ["subscriptions"]
        7 GETTABLE                         R6 R7 R5
        8 JUMPIFNOT                        R6 ; [+7]
        9 GETTABLEKS                       R7 R6 K3 ["disconnect"]
       11 CALL                             R7 0 0
       12 GETTABLEKS                       R7 R0 K2 ["subscriptions"]
       14 LOADNIL                          R8
       15 SETTABLE                         R8 R7 R5
       16 FORGLOOP                         R1 2 ; [-12]
       18 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_subscribeAll"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["_disconnectAll"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["navigation"]
        4 GETTABLEKS                       R3 R1 K1 ["navigation"]
        6 JUMPIFEQ                         R2 R3 ; [+7]
        8 NAMECALL                         R2 R0 K2 ["_disconnectAll"]
       10 CALL                             R2 1 0
       11 NAMECALL                         R2 R0 K3 ["_subscribeAll"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Folder"]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R5 R0 K2 ["props"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K3 ["Children"]
       10 GETTABLE                         R4 R5 R6
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["AppNavigationContext"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["NavigationEvents"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K4 ["Parent"]
       42 GETTABLEKS                       R4 R4 K8 ["utils"]
       44 GETTABLEKS                       R4 R4 K9 ["validate"]
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R4 R0 K10 ["Component"]
       49 LOADK                            R6 K11 ["NavigationEventsAdapter"]
       50 NAMECALL                         R4 R4 K12 ["extend"]
       52 CALL                             R4 2 1
       53 DUPCLOSURE                       R5 K13 [PROTO_0]
       54 SETTABLEKS                       R5 R4 K14 ["init"]
       56 DUPCLOSURE                       R5 K15 [PROTO_2]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R5 R4 K16 ["_subscribeAll"]
       61 DUPCLOSURE                       R5 K17 [PROTO_3]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R5 R4 K18 ["_disconnectAll"]
       65 DUPCLOSURE                       R5 K19 [PROTO_4]
       66 SETTABLEKS                       R5 R4 K20 ["didMount"]
       68 DUPCLOSURE                       R5 K21 [PROTO_5]
       69 SETTABLEKS                       R5 R4 K22 ["willUnmount"]
       71 DUPCLOSURE                       R5 K23 [PROTO_6]
       72 SETTABLEKS                       R5 R4 K24 ["didUpdate"]
       74 DUPCLOSURE                       R5 K25 [PROTO_7]
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R5 R4 K26 ["render"]
       78 GETTABLEKS                       R5 R1 K27 ["connect"]
       80 MOVE                             R6 R4
       81 CALL                             R5 1 -1
       82 RETURN                           R5 -1
