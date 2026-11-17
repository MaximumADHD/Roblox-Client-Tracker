PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSetting"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSetting"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"setSetting", "getSetting"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["setSetting"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["getSetting"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useCallback"]
       11 DUPCLOSURE                       R3 K2 [PROTO_1]
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K4 ["createElement"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K5 ["Provider"]
       31 DUPTABLE                         R6 K7 [{"value"}]
       32 SETTABLEKS                       R3 R6 K6 ["value"]
       34 GETTABLEKS                       R7 R0 K8 ["children"]
       36 CALL                             R4 3 -1
       37 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"setSetting", "getSetting"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["setSetting"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["getSetting"]
        9 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["createElement"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K3 ["Provider"]
       20 DUPTABLE                         R5 K5 [{"value"}]
       21 SETTABLEKS                       R2 R5 K4 ["value"]
       23 GETTABLEKS                       R6 R0 K6 ["children"]
       25 CALL                             R3 3 -1
       26 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Packages"]
       13 GETTABLEKS                       R3 R3 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K12 [{"setSetting", "getSetting"}]
       24 GETTABLEKS                       R5 R3 K13 ["createUnimplemented"]
       26 LOADK                            R6 K10 ["setSetting"]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R4 K10 ["setSetting"]
       30 GETTABLEKS                       R5 R3 K13 ["createUnimplemented"]
       32 LOADK                            R6 K11 ["getSetting"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K11 ["getSetting"]
       36 GETTABLEKS                       R5 R2 K14 ["createContext"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K15 [PROTO_3]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 DUPCLOSURE                       R7 K16 [PROTO_7]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 DUPTABLE                         R8 K20 [{"Context", "Provider", "MockProvider"}]
       48 SETTABLEKS                       R5 R8 K17 ["Context"]
       50 SETTABLEKS                       R6 R8 K18 ["Provider"]
       52 SETTABLEKS                       R7 R8 K19 ["MockProvider"]
       54 RETURN                           R8 1
