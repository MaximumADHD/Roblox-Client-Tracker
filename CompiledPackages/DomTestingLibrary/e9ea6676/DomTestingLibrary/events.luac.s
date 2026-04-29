PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+8]
        2 GETIMPORT                        R0 K1 [error]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K2 ["new"]
        7 LOADK                            R2 K3 ["Unable to fire an event - please provide an event object."]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 GETUPVAL                         R0 2
       11 JUMPIF                           R0 ; [+12]
       12 GETIMPORT                        R0 K1 [error]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["new"]
       17 LOADK                            R2 K4 ["Unable to fire a \"%s\" event - please provide an Instance."]
       18 GETUPVAL                         R4 0
       19 NAMECALL                         R2 R2 K5 ["format"]
       21 CALL                             R2 2 -1
       22 CALL                             R1 -1 -1
       23 CALL                             R0 -1 0
       24 GETUPVAL                         R0 3
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 4
       28 CALL                             R0 3 -1
       29 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 GETTABLEKS                       R4 R5 K0 ["eventWrapper"]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CALL                             R4 1 -1
       11 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 SETTABLE                         R2 R1 R0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETIMPORT                        R9 K1 [script]
       22 GETTABLEKS                       R8 R9 K2 ["Parent"]
       24 GETTABLEKS                       R7 R8 K9 ["jsHelpers"]
       26 GETTABLEKS                       R6 R7 K10 ["dispatchEvent"]
       28 CALL                             R5 1 1
       29 NEWTABLE                         R6 1 0
       31 GETIMPORT                        R8 K4 [require]
       33 GETIMPORT                        R11 K1 [script]
       35 GETTABLEKS                       R10 R11 K2 ["Parent"]
       37 GETTABLEKS                       R9 R10 K11 ["config"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R7 R8 K12 ["getConfig"]
       42 GETIMPORT                        R9 K4 [require]
       44 GETIMPORT                        R12 K1 [script]
       46 GETTABLEKS                       R11 R12 K2 ["Parent"]
       48 GETTABLEKS                       R10 R11 K13 ["helpers"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R8 R9 K14 ["getWindowFromNode"]
       53 GETIMPORT                        R9 K4 [require]
       55 GETIMPORT                        R12 K1 [script]
       57 GETTABLEKS                       R11 R12 K2 ["Parent"]
       59 GETTABLEKS                       R10 R11 K15 ["event-map"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R9 K16 ["eventMap"]
       64 GETTABLEKS                       R11 R9 K17 ["eventAliasMap"]
       66 DUPCLOSURE                       R12 K18 [PROTO_1]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R14 0 0
       72 DUPTABLE                         R15 K20 [{"__call"}]
       73 SETTABLEKS                       R12 R15 K19 ["__call"]
       75 FASTCALL2                        SETMETATABLE R14 R15 ; [+3]
       77 GETIMPORT                        R13 K22 [setmetatable]
       79 CALL                             R13 2 1
       80 GETTABLEKS                       R14 R2 K23 ["forEach"]
       82 GETTABLEKS                       R15 R4 K24 ["keys"]
       84 MOVE                             R16 R10
       85 CALL                             R15 1 1
       86 DUPCLOSURE                       R16 K25 [PROTO_3]
       87 CAPTURE                          VAL R13
       88 CALL                             R14 2 0
       89 SETTABLEKS                       R13 R6 K26 ["fireEvent"]
       91 RETURN                           R6 1
