PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["%q is not a valid member of NavigationActions"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K3 [{"type", "key", "immediate"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["key"]
       10 SETTABLEKS                       R3 R2 K1 ["key"]
       12 GETTABLEKS                       R3 R1 K2 ["immediate"]
       14 SETTABLEKS                       R3 R2 K2 ["immediate"]
       16 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K2 [{"type", "params"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["params"]
       10 SETTABLEKS                       R3 R2 K1 ["params"]
       12 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K5 [{"type", "routeName", "params", "action", "key"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 GETTABLEKS                       R3 R1 K1 ["routeName"]
       10 SETTABLEKS                       R3 R2 K1 ["routeName"]
       12 GETTABLEKS                       R3 R1 K2 ["params"]
       14 SETTABLEKS                       R3 R2 K2 ["params"]
       16 GETTABLEKS                       R3 R1 K3 ["action"]
       18 SETTABLEKS                       R3 R2 K3 ["action"]
       20 GETTABLEKS                       R3 R1 K4 ["key"]
       22 SETTABLEKS                       R3 R2 K4 ["key"]
       24 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K4 [{"type", "preserveFocus", "key", "params"}]
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K1 ["preserveFocus"]
       11 GETTABLEKS                       R3 R1 K2 ["key"]
       13 SETTABLEKS                       R3 R2 K2 ["key"]
       15 GETTABLEKS                       R3 R1 K3 ["params"]
       17 SETTABLEKS                       R3 R2 K3 ["params"]
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["NavigationSymbol"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 LOADK                            R2 K6 ["BACK"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["INIT"]
       15 CALL                             R2 1 1
       16 MOVE                             R3 R0
       17 LOADK                            R4 K8 ["NAVIGATE"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R0
       20 LOADK                            R5 K9 ["SET_PARAMS"]
       21 CALL                             R4 1 1
       22 DUPTABLE                         R5 K14 [{"Back", "Init", "Navigate", "SetParams"}]
       23 SETTABLEKS                       R1 R5 K10 ["Back"]
       25 SETTABLEKS                       R2 R5 K11 ["Init"]
       27 SETTABLEKS                       R3 R5 K12 ["Navigate"]
       29 SETTABLEKS                       R4 R5 K13 ["SetParams"]
       31 DUPTABLE                         R8 K16 [{"__index"}]
       32 DUPCLOSURE                       R9 K17 [PROTO_0]
       33 SETTABLEKS                       R9 R8 K15 ["__index"]
       35 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       37 MOVE                             R7 R5
       38 GETIMPORT                        R6 K19 [setmetatable]
       40 CALL                             R6 2 0
       41 DUPCLOSURE                       R6 K20 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K21 ["back"]
       45 DUPCLOSURE                       R6 K22 [PROTO_2]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R6 R5 K23 ["init"]
       49 DUPCLOSURE                       R6 K24 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R6 R5 K25 ["navigate"]
       53 DUPCLOSURE                       R6 K26 [PROTO_4]
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R6 R5 K27 ["setParams"]
       57 RETURN                           R5 1
