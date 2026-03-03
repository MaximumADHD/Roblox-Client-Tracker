PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K2 ["value"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K16 [{"Destroy", "getIcon", "getInputContexts", "getInputActions", "getInputBindings", "setListenersConnected"}]
       22 DUPCLOSURE                       R4 K17 [PROTO_0]
       23 SETTABLEKS                       R4 R3 K10 ["Destroy"]
       25 DUPCLOSURE                       R4 K18 [PROTO_1]
       26 SETTABLEKS                       R4 R3 K11 ["getIcon"]
       28 DUPCLOSURE                       R4 K19 [PROTO_2]
       29 SETTABLEKS                       R4 R3 K12 ["getInputContexts"]
       31 DUPCLOSURE                       R4 K20 [PROTO_3]
       32 SETTABLEKS                       R4 R3 K13 ["getInputActions"]
       34 DUPCLOSURE                       R4 K21 [PROTO_4]
       35 SETTABLEKS                       R4 R3 K14 ["getInputBindings"]
       37 DUPCLOSURE                       R4 K22 [PROTO_5]
       38 SETTABLEKS                       R4 R3 K15 ["setListenersConnected"]
       40 GETTABLEKS                       R4 R1 K23 ["createContext"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 1
       44 DUPCLOSURE                       R5 K24 [PROTO_6]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 DUPTABLE                         R6 K27 [{"Context", "Provider"}]
       48 SETTABLEKS                       R4 R6 K25 ["Context"]
       50 SETTABLEKS                       R5 R6 K26 ["Provider"]
       52 RETURN                           R6 1
