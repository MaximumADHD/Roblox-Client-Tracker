PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StyleSheet"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"Disconnect"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["fn"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["Disconnect"]
        7 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"Connect"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_1]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["Connect"]
        5 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"get", "getSignal"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K0 ["get"]
        4 DUPCLOSURE                       R1 K4 [PROTO_2]
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K1 ["getSignal"]
        8 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_5:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["."]
        2 MOVE                             R6 R2
        3 CONCAT                           R3 R4 R6
        4 RETURN                           R3 1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"getLocale", "getText"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_4]
        2 SETTABLEKS                       R1 R0 K0 ["getLocale"]
        4 DUPCLOSURE                       R1 K4 [PROTO_5]
        5 SETTABLEKS                       R1 R0 K1 ["getText"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fn"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R6
        7 CALL                             R7 1 1
        8 GETTABLEKS                       R7 R7 K2 ["toBeDefined"]
       10 CALL                             R7 0 0
       11 FORGLOOP                         R2 2 ; [-7]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["createElement"]
       16 LOADK                            R3 K4 ["Frame"]
       17 NEWTABLE                         R4 0 0
       19 MOVE                             R5 R1
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1

PROTO_9:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["requireActual"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["Packages"]
        8 GETTABLEKS                       R2 R2 K5 ["Framework"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 1
       12 GETTABLEKS                       R1 R0 K6 ["Styling"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K7 ["fn"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K8 ["registerPluginStyles"]
       20 NEWTABLE                         R1 8 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K9 ["new"]
       25 CALL                             R2 0 1
       26 SETLIST                          R1 R2 1 [1]
       28 GETUPVAL                         R3 3
       29 CALL                             R3 0 1
       30 SETTABLEKS                       R3 R1 K10 ["Mouse"]
       32 GETTABLEKS                       R3 R0 K11 ["ContextServices"]
       34 GETTABLEKS                       R3 R3 K12 ["Focus"]
       36 SETTABLEKS                       R3 R1 K12 ["Focus"]
       38 GETUPVAL                         R3 4
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R1 K13 ["Plugin"]
       42 DUPTABLE                         R3 K15 [{"new", "use"}]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K7 ["fn"]
       46 CALL                             R4 0 1
       47 SETTABLEKS                       R4 R3 K9 ["new"]
       49 DUPCLOSURE                       R4 K16 [PROTO_3]
       50 CAPTURE                          UPVAL U0
       51 SETTABLEKS                       R4 R3 K14 ["use"]
       53 SETTABLEKS                       R3 R1 K17 ["Design"]
       55 DUPTABLE                         R3 K18 [{"use", "new"}]
       56 DUPCLOSURE                       R4 K19 [PROTO_6]
       57 SETTABLEKS                       R4 R3 K14 ["use"]
       59 DUPCLOSURE                       R4 K20 [PROTO_7]
       60 CAPTURE                          UPVAL U0
       61 SETTABLEKS                       R4 R3 K9 ["new"]
       63 SETTABLEKS                       R3 R1 K21 ["Localization"]
       65 DUPCLOSURE                       R3 K22 [PROTO_8]
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 SETTABLEKS                       R3 R1 K23 ["provide"]
       70 SETTABLEKS                       R1 R0 K11 ["ContextServices"]
       72 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["JestGlobals"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["jest"]
       25 GETTABLEKS                       R4 R2 K11 ["expect"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       33 GETTABLEKS                       R6 R6 K14 ["InputListenerContext"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K15 ["tests"]
       42 GETTABLEKS                       R7 R7 K16 ["Util"]
       44 GETTABLEKS                       R7 R7 K17 ["createMockPlugin"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Src"]
       51 GETTABLEKS                       R8 R8 K15 ["tests"]
       53 GETTABLEKS                       R8 R8 K16 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["createMockMouse"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K19 [PROTO_9]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R1
       66 RETURN                           R8 1
