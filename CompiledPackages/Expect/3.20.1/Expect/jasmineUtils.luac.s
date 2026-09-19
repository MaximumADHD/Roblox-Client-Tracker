PROTO_0:
        0 LOADK                            R1 K0 ["[Function]"]
        1 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        GETMETATABLE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [getmetatable]
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+9]
        7 FASTCALL1                        GETMETATABLE R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K1 [getmetatable]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K2 ["__index"]
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_4:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 GETIMPORT                        R2 K1 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+5]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 RETURN                           R4 1
       15 GETIMPORT                        R4 K3 [error]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["RobloxShared"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R2 K7 ["expect"]
       19 GETTABLEKS                       R4 R4 K8 ["equals"]
       21 GETTABLEKS                       R5 R2 K7 ["expect"]
       23 GETTABLEKS                       R5 R5 K9 ["isA"]
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 DUPCLOSURE                       R7 K11 [PROTO_1]
       27 DUPCLOSURE                       R8 K12 [PROTO_2]
       28 DUPCLOSURE                       R9 K13 [PROTO_4]
       29 DUPTABLE                         R10 K18 [{"equals", "isA", "fnNameFor", "isUndefined", "getPrototype", "hasProperty"}]
       30 SETTABLEKS                       R4 R10 K8 ["equals"]
       32 SETTABLEKS                       R5 R10 K9 ["isA"]
       34 SETTABLEKS                       R6 R10 K14 ["fnNameFor"]
       36 SETTABLEKS                       R7 R10 K15 ["isUndefined"]
       38 SETTABLEKS                       R8 R10 K16 ["getPrototype"]
       40 SETTABLEKS                       R9 R10 K17 ["hasProperty"]
       42 RETURN                           R10 1
