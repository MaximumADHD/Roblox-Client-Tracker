PROTO_0:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 CALL                             R1 0 1
        6 SETTABLEKS                       R1 R0 K1 ["listenersMap"]
        8 GETUPVAL                         R3 1
        9 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K3 [setmetatable]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["listenersMap"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["get"]
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+13]
        8 GETTABLEKS                       R4 R0 K0 ["listenersMap"]
       10 MOVE                             R6 R1
       11 NEWTABLE                         R7 0 1
       13 MOVE                             R8 R2
       14 SETLIST                          R7 R8 1 [1]
       16 NAMECALL                         R4 R4 K2 ["set"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K3 ["indexOf"]
       23 MOVE                             R5 R3
       24 MOVE                             R6 R2
       25 CALL                             R4 2 1
       26 LOADN                            R5 1
       27 JUMPIFNOTLT                      R4 R5 ; [+8]
       29 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
       31 MOVE                             R6 R3
       32 MOVE                             R7 R2
       33 GETIMPORT                        R5 K6 [table.insert]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_3:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["listenersMap"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["get"]
        6 CALL                             R2 2 1
        7 JUMPIFEQKNIL                     R2 ; [+39]
        9 LENGTH                           R3 R2
       10 JUMPIFNOTEQKN                    R3 K2 [1] ; [+6]
       12 GETTABLEN                        R3 R2 1
       13 MOVE                             R4 R3
       14 GETVARARGS                       R5 -1
       15 CALL                             R4 -1 0
       16 RETURN                           R0 0
       17 LOADB                            R3 0
       18 LOADNIL                          R4
       19 GETIMPORT                        R5 K5 [table.clone]
       21 MOVE                             R6 R2
       22 CALL                             R5 1 1
       23 MOVE                             R6 R5
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETIMPORT                        R11 K7 [pcall]
       29 NEWCLOSURE                       R12 P0
       30 CAPTURE                          VAL R10
       31 GETVARARGS                       R13 -1
       32 CALL                             R11 -1 2
       33 JUMPIF                           R11 ; [+2]
       34 LOADB                            R3 1
       35 MOVE                             R4 R12
       36 FORGLOOP                         R6 2 ; [-10]
       38 JUMPIFNOT                        R3 ; [+8]
       39 GETIMPORT                        R6 K9 [error]
       41 FASTCALL1                        TOSTRING R4 ; [+3]
       42 MOVE                             R8 R4
       43 GETIMPORT                        R7 K11 [tostring]
       45 CALL                             R7 1 1
       46 CALL                             R6 1 0
       47 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["listenersMap"]
        2 NAMECALL                         R1 R1 K1 ["clear"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["listenersMap"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["get"]
        5 CALL                             R3 2 1
        6 JUMPIFEQKNIL                     R3 ; [+17]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["indexOf"]
       11 MOVE                             R5 R3
       12 MOVE                             R6 R2
       13 CALL                             R4 2 1
       14 LOADN                            R5 1
       15 JUMPIFNOTLE                      R5 R4 ; [+8]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["splice"]
       20 MOVE                             R6 R3
       21 MOVE                             R7 R4
       22 LOADN                            R8 1
       23 CALL                             R5 3 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Map"]
       16 NEWTABLE                         R4 0 0
       18 DUPTABLE                         R5 K9 [{"__index"}]
       19 SETTABLEKS                       R4 R5 K8 ["__index"]
       21 DUPCLOSURE                       R6 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R5
       24 SETTABLEKS                       R6 R4 K11 ["new"]
       26 DUPCLOSURE                       R6 K12 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R6 R4 K13 ["addListener"]
       30 DUPCLOSURE                       R6 K14 [PROTO_3]
       31 SETTABLEKS                       R6 R4 K15 ["emit"]
       33 DUPCLOSURE                       R6 K16 [PROTO_4]
       34 SETTABLEKS                       R6 R4 K17 ["removeAllListeners"]
       36 DUPCLOSURE                       R6 K18 [PROTO_5]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R6 R4 K19 ["removeListener"]
       40 RETURN                           R4 1
