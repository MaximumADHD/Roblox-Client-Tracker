PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R0 R1 R2
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 SETTABLE                         R2 R1 R0
        5 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pointerOver"]
        7 GETVARARGS                       R1 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["pointerOut"]
        7 GETVARARGS                       R1 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["focusOut"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 1
        7 GETVARARGS                       R1 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["focusIn"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 1
        7 GETVARARGS                       R1 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["DomTestingLibrary"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R5 R5 K9 ["fireEvent"]
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CAPTURE                          VAL R5
       27 NEWTABLE                         R8 0 0
       29 DUPTABLE                         R9 K12 [{"__call"}]
       30 SETTABLEKS                       R6 R9 K11 ["__call"]
       32 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
       34 GETIMPORT                        R7 K14 [setmetatable]
       36 CALL                             R7 2 1
       37 GETTABLEKS                       R8 R2 K15 ["forEach"]
       39 GETTABLEKS                       R9 R3 K16 ["keys"]
       41 MOVE                             R10 R5
       42 CALL                             R9 1 1
       43 DUPCLOSURE                       R10 K17 [PROTO_2]
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R5
       46 CALL                             R8 2 0
       47 GETTABLEKS                       R8 R7 K18 ["pointerEnter"]
       49 GETTABLEKS                       R9 R7 K19 ["pointerLeave"]
       51 DUPCLOSURE                       R10 K20 [PROTO_3]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R10 R7 K18 ["pointerEnter"]
       56 DUPCLOSURE                       R10 K21 [PROTO_4]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R10 R7 K19 ["pointerLeave"]
       61 GETTABLEKS                       R10 R7 K22 ["blur"]
       63 GETTABLEKS                       R11 R7 K23 ["focus"]
       65 DUPCLOSURE                       R12 K24 [PROTO_5]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R10
       68 SETTABLEKS                       R12 R7 K22 ["blur"]
       70 DUPCLOSURE                       R12 K25 [PROTO_6]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R11
       73 SETTABLEKS                       R12 R7 K23 ["focus"]
       75 SETTABLEKS                       R7 R4 K9 ["fireEvent"]
       77 RETURN                           R4 1
