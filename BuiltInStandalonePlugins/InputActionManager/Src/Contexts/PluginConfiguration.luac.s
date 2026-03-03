PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 GETTABLEKS                       R2 R0 K1 ["sizeChanged"]
        5 JUMPIF                           R2 ; [+4]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["new"]
        9 CALL                             R2 0 1
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["useRef"]
       14 GETTABLEKS                       R3 R0 K3 ["size"]
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R3 K5 [Vector2.new]
       19 LOADN                            R4 128
       20 LOADN                            R5 224
       21 CALL                             R3 2 1
       22 CALL                             R2 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K6 ["useEffect"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R5 0 0
       31 CALL                             R3 2 0
       32 DUPTABLE                         R3 K7 [{"size", "sizeChanged"}]
       33 GETTABLEKS                       R4 R2 K8 ["current"]
       35 SETTABLEKS                       R4 R3 K3 ["size"]
       37 GETTABLEKS                       R4 R1 K8 ["current"]
       39 SETTABLEKS                       R4 R3 K1 ["sizeChanged"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K9 ["createElement"]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R5 R6 K10 ["Provider"]
       47 DUPTABLE                         R6 K12 [{"value"}]
       48 SETTABLEKS                       R3 R6 K11 ["value"]
       50 GETTABLEKS                       R7 R0 K13 ["children"]
       52 CALL                             R4 3 -1
       53 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["value"]
       10 GETTABLEKS                       R4 R0 K4 ["children"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K11 [{"size", "sizeChanged"}]
       22 GETIMPORT                        R4 K14 [Vector2.new]
       24 LOADN                            R5 128
       25 LOADN                            R6 224
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K9 ["size"]
       29 GETTABLEKS                       R4 R2 K13 ["new"]
       31 CALL                             R4 0 1
       32 SETTABLEKS                       R4 R3 K10 ["sizeChanged"]
       34 GETTABLEKS                       R4 R1 K15 ["createContext"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K16 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 DUPCLOSURE                       R6 K17 [PROTO_4]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 DUPTABLE                         R7 K21 [{"Context", "Provider", "MockProvider"}]
       47 SETTABLEKS                       R4 R7 K18 ["Context"]
       49 SETTABLEKS                       R5 R7 K19 ["Provider"]
       51 SETTABLEKS                       R6 R7 K20 ["MockProvider"]
       53 RETURN                           R7 1
