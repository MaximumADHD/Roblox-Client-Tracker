PROTO_0:
        0 DUPTABLE                         R1 K2 [{"value", "onUpdate"}]
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K1 ["onUpdate"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 DUPTABLE                         R2 K2 [{"value", "onUpdate"}]
        3 SETTABLEKS                       R3 R2 K0 ["value"]
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 SETTABLEKS                       R4 R2 K1 ["onUpdate"]
        9 SETTABLEKS                       R2 R0 K3 ["contextEntry"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["key"]
       14 GETTABLEKS                       R5 R0 K3 ["contextEntry"]
       16 NAMECALL                         R2 R0 K5 ["__addContext"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["value"]
        6 JUMPIFEQ                         R2 R3 ; [+7]
        8 GETTABLEKS                       R2 R0 K2 ["contextEntry"]
       10 GETTABLEKS                       R3 R1 K0 ["value"]
       12 SETTABLEKS                       R3 R2 K0 ["value"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["value"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["value"]
        6 JUMPIFEQ                         R2 R3 ; [+12]
        8 GETTABLEKS                       R2 R0 K2 ["contextEntry"]
       10 GETTABLEKS                       R2 R2 K3 ["onUpdate"]
       12 GETTABLEKS                       R4 R0 K1 ["props"]
       14 GETTABLEKS                       R4 R4 K0 ["value"]
       16 NAMECALL                         R2 R2 K4 ["fire"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R2 R3 R4
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Provider"]
        2 NAMECALL                         R1 R1 K1 ["extend"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K2 ["init"]
       10 DUPCLOSURE                       R2 K3 [PROTO_2]
       11 SETTABLEKS                       R2 R1 K4 ["willUpdate"]
       13 DUPCLOSURE                       R2 K5 [PROTO_3]
       14 SETTABLEKS                       R2 R1 K6 ["didUpdate"]
       16 DUPCLOSURE                       R2 K7 [PROTO_4]
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K8 ["render"]
       21 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["render"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K3 ["function"] ; [+4]
        8 LOADB                            R1 0
        9 LOADK                            R2 K4 ["Consumer expects a `render` function"]
       10 RETURN                           R1 2
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["key"]
        3 NAMECALL                         R2 R0 K1 ["__getContext"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K2 ["contextEntry"]
        8 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["contextEntry"]
        3 JUMPIFEQKNIL                     R2 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["contextEntry"]
        7 GETTABLEKS                       R1 R2 K1 ["value"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["defaultValue"]
       13 GETTABLEKS                       R2 R0 K3 ["props"]
       15 GETTABLEKS                       R2 R2 K4 ["render"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["contextEntry"]
        2 JUMPIFEQKNIL                     R1 ; [+7]
        4 GETTABLEKS                       R1 R0 K0 ["contextEntry"]
        6 GETTABLEKS                       R1 R1 K1 ["value"]
        8 SETTABLEKS                       R1 R0 K2 ["lastValue"]
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["lastValue"]
        3 JUMPIFEQ                         R0 R1 ; [+7]
        5 GETUPVAL                         R1 0
        6 NEWTABLE                         R3 0 0
        8 NAMECALL                         R1 R1 K1 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["contextEntry"]
        2 JUMPIFEQKNIL                     R1 ; [+12]
        4 GETTABLEKS                       R1 R0 K0 ["contextEntry"]
        6 GETTABLEKS                       R1 R1 K1 ["onUpdate"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K2 ["subscribe"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K3 ["disconnect"]
       15 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["disconnect"]
        2 JUMPIFEQKNIL                     R1 ; [+7]
        4 GETTABLEKS                       R1 R0 K0 ["disconnect"]
        6 CALL                             R1 0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["disconnect"]
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Consumer"]
        2 NAMECALL                         R1 R1 K1 ["extend"]
        4 CALL                             R1 2 1
        5 DUPCLOSURE                       R2 K2 [PROTO_6]
        6 SETTABLEKS                       R2 R1 K3 ["validateProps"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K4 ["init"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K5 ["render"]
       16 DUPCLOSURE                       R2 K6 [PROTO_9]
       17 SETTABLEKS                       R2 R1 K7 ["didUpdate"]
       19 DUPCLOSURE                       R2 K8 [PROTO_11]
       20 SETTABLEKS                       R2 R1 K9 ["didMount"]
       22 DUPCLOSURE                       R2 K10 [PROTO_12]
       23 SETTABLEKS                       R2 R1 K11 ["willUnmount"]
       25 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R2 K2 [{"defaultValue", "key"}]
        1 SETTABLEKS                       R0 R2 K0 ["defaultValue"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["named"]
        6 LOADK                            R4 K4 ["ContextKey"]
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K1 ["key"]
       10 GETUPVAL                         R3 1
       11 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       13 GETIMPORT                        R1 K6 [setmetatable]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R1 K0 ["RoactContext"]
        1 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K3 [{"Provider", "Consumer"}]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["Provider"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["Consumer"]
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["createFragment"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["createSignal"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["PropMarkers"]
       36 GETTABLEKS                       R4 R4 K9 ["Children"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K1 [require]
       41 GETIMPORT                        R5 K3 [script]
       43 GETTABLEKS                       R5 R5 K4 ["Parent"]
       45 GETTABLEKS                       R5 R5 K10 ["Component"]
       47 CALL                             R4 1 1
       48 DUPCLOSURE                       R5 K11 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R6 K12 [PROTO_5]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 DUPCLOSURE                       R7 K13 [PROTO_13]
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R8 4 0
       59 SETTABLEKS                       R8 R8 K14 ["__index"]
       61 DUPCLOSURE                       R9 K15 [PROTO_14]
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R9 R8 K16 ["new"]
       66 DUPCLOSURE                       R9 K17 [PROTO_15]
       67 SETTABLEKS                       R9 R8 K18 ["__tostring"]
       69 DUPCLOSURE                       R9 K19 [PROTO_16]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 RETURN                           R9 1
