PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 8 0
       14 GETTABLEKS                       R3 R1 K6 ["__LOCALSTORAGE__"]
       16 JUMPIFNOTEQKNIL                  R3 ; [+5]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R1 K6 ["__LOCALSTORAGE__"]
       22 GETTABLEKS                       R3 R1 K7 ["__SESSIONSTORAGE__"]
       24 JUMPIFNOTEQKNIL                  R3 ; [+5]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R1 K7 ["__SESSIONSTORAGE__"]
       30 GETTABLEKS                       R3 R1 K6 ["__LOCALSTORAGE__"]
       32 GETTABLEKS                       R4 R1 K7 ["__SESSIONSTORAGE__"]
       34 DUPCLOSURE                       R5 K8 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R2 K9 ["localStorageGetItem"]
       38 DUPCLOSURE                       R5 K10 [PROTO_1]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R2 K11 ["localStorageRemoveItem"]
       42 DUPCLOSURE                       R5 K12 [PROTO_2]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R5 R2 K13 ["localStorageSetItem"]
       46 DUPCLOSURE                       R5 K14 [PROTO_3]
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R5 R2 K15 ["sessionStorageGetItem"]
       50 DUPCLOSURE                       R5 K16 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R5 R2 K17 ["sessionStorageRemoveItem"]
       54 DUPCLOSURE                       R5 K18 [PROTO_5]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R5 R2 K19 ["sessionStorageSetItem"]
       58 RETURN                           R2 1
