PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["event"]
        3 GETTABLEKS                       R4 R0 K1 ["payload"]
        5 NAMECALL                         R1 R1 K2 ["emit"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["overrideValueAtPath"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [setmetatable]
        9 CALL                             R1 2 1
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["_isShutdown"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["_messageQueue"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K5 ["_timeoutID"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K6 ["_wallUnlisten"]
       23 SETTABLEKS                       R0 R1 K7 ["_wall"]
       25 GETTABLEKS                       R3 R0 K9 ["listen"]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R1
       29 CALL                             R3 1 1
       30 ORK                              R2 R3 K8 []
       31 SETTABLEKS                       R2 R1 K6 ["_wallUnlisten"]
       33 LOADK                            R4 K10 ["overrideValueAtPath"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R1
       36 NAMECALL                         R2 R1 K11 ["addListener"]
       38 CALL                             R2 3 0
       39 SETTABLEKS                       R0 R1 K12 ["wall"]
       41 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_flush"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 GETTABLEKS                       R3 R0 K0 ["_isShutdown"]
        8 JUMPIFNOT                        R3 ; [+10]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["warn"]
       12 GETIMPORT                        R4 K4 [string.format]
       14 LOADK                            R5 K5 ["Cannot send message \"%s\" through a Bridge that has been shutdown."]
       15 MOVE                             R6 R1
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R4 R0 K6 ["_messageQueue"]
       21 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R3 K9 [table.insert]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R4 R0 K6 ["_messageQueue"]
       29 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       31 MOVE                             R5 R2
       32 GETIMPORT                        R3 K9 [table.insert]
       34 CALL                             R3 2 0
       35 GETTABLEKS                       R3 R0 K10 ["_timeoutID"]
       37 JUMPIF                           R3 ; [+9]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K11 ["setTimeout"]
       41 NEWCLOSURE                       R4 P0
       42 CAPTURE                          VAL R0
       43 LOADN                            R5 0
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R0 K10 ["_timeoutID"]
       47 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_isShutdown"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["warn"]
        6 LOADK                            R2 K2 ["Bridge was already shutdown."]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 LOADK                            R3 K3 ["shutdown"]
       10 NAMECALL                         R1 R0 K4 ["send"]
       12 CALL                             R1 2 0
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K0 ["_isShutdown"]
       16 DUPCLOSURE                       R1 K5 [PROTO_5]
       17 SETTABLEKS                       R1 R0 K6 ["addListener"]
       19 DUPCLOSURE                       R1 K7 [PROTO_6]
       20 SETTABLEKS                       R1 R0 K8 ["emit"]
       22 NAMECALL                         R1 R0 K9 ["removeAllListeners"]
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K10 ["_wallUnlisten"]
       27 JUMPIFNOT                        R1 ; [+2]
       28 MOVE                             R2 R1
       29 CALL                             R2 0 0
       30 NAMECALL                         R2 R0 K11 ["_flush"]
       32 CALL                             R2 1 0
       33 GETTABLEKS                       R3 R0 K12 ["_messageQueue"]
       35 LENGTH                           R2 R3
       36 JUMPIFEQKN                       R2 K13 [0] ; [+2]
       38 JUMPBACK                         ; [-9]
       39 GETTABLEKS                       R2 R0 K14 ["_timeoutID"]
       41 JUMPIFEQKNIL                     R2 ; [+10]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K15 ["clearTimeout"]
       46 GETTABLEKS                       R3 R0 K14 ["_timeoutID"]
       48 CALL                             R2 1 0
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R0 K14 ["_timeoutID"]
       52 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_flush"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_timeoutID"]
        2 JUMPIFEQKNIL                     R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["clearTimeout"]
        7 GETTABLEKS                       R2 R0 K0 ["_timeoutID"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["_timeoutID"]
       13 GETTABLEKS                       R2 R0 K2 ["_messageQueue"]
       15 LENGTH                           R1 R2
       16 LOADN                            R2 0
       17 JUMPIFNOTLT                      R2 R1 ; [+39]
       19 LOADN                            R1 1
       20 GETTABLEKS                       R3 R0 K2 ["_messageQueue"]
       22 LENGTH                           R2 R3
       23 JUMPIFNOTLT                      R1 R2 ; [+19]
       25 GETTABLEKS                       R2 R0 K3 ["_wall"]
       27 GETTABLEKS                       R2 R2 K4 ["send"]
       29 GETTABLEKS                       R4 R0 K2 ["_messageQueue"]
       31 GETTABLE                         R3 R4 R1
       32 GETTABLEKS                       R6 R0 K2 ["_messageQueue"]
       34 ADDK                             R7 R1 K5 [1]
       35 GETTABLE                         R5 R6 R7
       36 FASTCALL1                        TABLE_UNPACK R5 ; [+2]
       37 GETIMPORT                        R4 K8 [table.unpack]
       39 CALL                             R4 1 -1
       40 CALL                             R2 -1 0
       41 ADDK                             R1 R1 K9 [2]
       42 JUMPBACK                         ; [-23]
       43 GETIMPORT                        R2 K11 [table.clear]
       45 GETTABLEKS                       R3 R0 K2 ["_messageQueue"]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K12 ["setTimeout"]
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          VAL R0
       53 LOADN                            R4 100
       54 CALL                             R2 2 1
       55 SETTABLEKS                       R2 R0 K0 ["_timeoutID"]
       57 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K1 ["path"]
        4 GETTABLEKS                       R4 R1 K2 ["rendererID"]
        6 GETTABLEKS                       R5 R1 K3 ["type"]
        8 GETTABLEKS                       R6 R1 K4 ["value"]
       10 JUMPIFNOTEQKS                    R5 K5 ["context"] ; [+15]
       12 LOADK                            R9 K6 ["overrideContext"]
       13 DUPTABLE                         R10 K9 [{[1], ["path"], ["rendererID"], ["wasForwarded"] = True, ["value"]}]
       14 SETTABLEKS                       R2 R10 K0 ["id"]
       16 SETTABLEKS                       R3 R10 K1 ["path"]
       18 SETTABLEKS                       R4 R10 K2 ["rendererID"]
       20 SETTABLEKS                       R6 R10 K4 ["value"]
       22 NAMECALL                         R7 R0 K10 ["send"]
       24 CALL                             R7 3 0
       25 RETURN                           R0 0
       26 JUMPIFNOTEQKS                    R5 K11 ["hooks"] ; [+15]
       28 LOADK                            R9 K12 ["overrideHookState"]
       29 DUPTABLE                         R10 K9 [{[1], ["path"], ["rendererID"], ["wasForwarded"] = True, ["value"]}]
       30 SETTABLEKS                       R2 R10 K0 ["id"]
       32 SETTABLEKS                       R3 R10 K1 ["path"]
       34 SETTABLEKS                       R4 R10 K2 ["rendererID"]
       36 SETTABLEKS                       R6 R10 K4 ["value"]
       38 NAMECALL                         R7 R0 K10 ["send"]
       40 CALL                             R7 3 0
       41 RETURN                           R0 0
       42 JUMPIFNOTEQKS                    R5 K13 ["props"] ; [+15]
       44 LOADK                            R9 K14 ["overrideProps"]
       45 DUPTABLE                         R10 K9 [{[1], ["path"], ["rendererID"], ["wasForwarded"] = True, ["value"]}]
       46 SETTABLEKS                       R2 R10 K0 ["id"]
       48 SETTABLEKS                       R3 R10 K1 ["path"]
       50 SETTABLEKS                       R4 R10 K2 ["rendererID"]
       52 SETTABLEKS                       R6 R10 K4 ["value"]
       54 NAMECALL                         R7 R0 K10 ["send"]
       56 CALL                             R7 3 0
       57 RETURN                           R0 0
       58 JUMPIFNOTEQKS                    R5 K15 ["state"] ; [+14]
       60 LOADK                            R9 K16 ["overrideState"]
       61 DUPTABLE                         R10 K9 [{[1], ["path"], ["rendererID"], ["wasForwarded"] = True, ["value"]}]
       62 SETTABLEKS                       R2 R10 K0 ["id"]
       64 SETTABLEKS                       R3 R10 K1 ["path"]
       66 SETTABLEKS                       R4 R10 K2 ["rendererID"]
       68 SETTABLEKS                       R6 R10 K4 ["value"]
       70 NAMECALL                         R7 R0 K10 ["send"]
       72 CALL                             R7 3 0
       73 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["console"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K2 ["Parent"]
       25 GETTABLEKS                       R4 R4 K8 ["events"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K2 ["Parent"]
       34 GETTABLEKS                       R5 R5 K9 ["types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K2 ["Parent"]
       43 GETTABLEKS                       R6 R6 K10 ["backend"]
       45 GETTABLEKS                       R6 R6 K9 ["types"]
       47 CALL                             R5 1 1
       48 NEWTABLE                         R7 0 0
       50 DUPTABLE                         R8 K12 [{"__index"}]
       51 SETTABLEKS                       R3 R8 K11 ["__index"]
       53 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       55 GETIMPORT                        R6 K14 [setmetatable]
       57 CALL                             R6 2 1
       58 DUPTABLE                         R7 K12 [{"__index"}]
       59 SETTABLEKS                       R6 R7 K11 ["__index"]
       61 DUPCLOSURE                       R8 K15 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R8 R6 K16 ["new"]
       66 DUPCLOSURE                       R8 K17 [PROTO_4]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R8 R6 K18 ["send"]
       71 DUPCLOSURE                       R8 K19 [PROTO_7]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R8 R6 K20 ["shutdown"]
       76 DUPCLOSURE                       R8 K21 [PROTO_9]
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R8 R6 K22 ["_flush"]
       80 DUPCLOSURE                       R8 K23 [PROTO_10]
       81 SETTABLEKS                       R8 R6 K24 ["overrideValueAtPath"]
       83 RETURN                           R6 1
