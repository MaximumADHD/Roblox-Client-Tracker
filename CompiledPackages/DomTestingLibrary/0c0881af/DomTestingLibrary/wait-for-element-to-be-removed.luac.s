PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 JUMPIF                           R1 ; [+14]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["isArray"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
       16 LENGTH                           R3 R0
       17 CALL                             R2 1 1
       18 NOT                              R1 R2
       19 RETURN                           R1 1
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 JUMPIF                           R1 ; [+14]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["isArray"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
       16 LENGTH                           R3 R0
       17 CALL                             R2 1 1
       18 NOT                              R1 R2
       19 JUMP                             ; [+1]
       20 LOADB                            R1 0
       21 JUMPIFNOT                        R1 ; [+8]
       22 GETIMPORT                        R1 K3 [error]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K4 ["new"]
       27 LOADK                            R3 K5 ["The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."]
       28 CALL                             R2 1 -1
       29 CALL                             R1 -1 0
       30 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["IsAncestorOf"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 GETUPVAL                         R0 1
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 DUPCLOSURE                       R2 K1 [PROTO_2]
        5 CLOSEUPVALS                      R1
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["Parent"]
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R1 R1 K0 ["Parent"]
       12 JUMPBACK                         ; [-6]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          REF R1
       15 CAPTURE                          VAL R0
       16 CLOSEUPVALS                      R1
       17 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R1 R0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filter"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["map"]
        6 GETUPVAL                         R2 1
        7 DUPCLOSURE                       R3 K2 [PROTO_5]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["toJSBoolean"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+11]
        8 GETTABLEKS                       R3 R2 K2 ["name"]
       10 JUMPIFNOTEQKS                    R3 K3 ["TestingLibraryElementError"] ; [+4]
       12 LOADNIL                          R3
       13 CLOSEUPVALS                      R0
       14 RETURN                           R3 1
       15 GETIMPORT                        R3 K5 [error]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 MOVE                             R4 R0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K6 ["toJSBoolean"]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 1
       25 NOT                              R3 R5
       26 JUMPIF                           R3 ; [+14]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K7 ["isArray"]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 1
       32 JUMPIFNOT                        R5 ; [+7]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K6 ["toJSBoolean"]
       36 LENGTH                           R6 R4
       37 CALL                             R5 1 1
       38 NOT                              R3 R5
       39 JUMP                             ; [+1]
       40 LOADB                            R3 0
       41 JUMPIF                           R3 ; [+4]
       42 GETIMPORT                        R3 K5 [error]
       44 GETUPVAL                         R4 3
       45 CALL                             R3 1 0
       46 LOADNIL                          R3
       47 CLOSEUPVALS                      R0
       48 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADK                            R1 K1 ["Timed out in waitForElementToBeRemoved."]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+55]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 NOT                              R2 R3
       16 JUMPIF                           R2 ; [+14]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K3 ["isArray"]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
       26 LENGTH                           R4 R1
       27 CALL                             R3 1 1
       28 NOT                              R2 R3
       29 JUMP                             ; [+1]
       30 LOADB                            R2 0
       31 JUMPIFNOT                        R2 ; [+8]
       32 GETIMPORT                        R2 K5 [error]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K0 ["new"]
       37 LOADK                            R4 K6 ["The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."]
       38 CALL                             R3 1 -1
       39 CALL                             R2 -1 0
       40 GETUPVAL                         R2 4
       41 GETTABLEKS                       R2 R2 K3 ["isArray"]
       43 GETUPVAL                         R3 2
       44 CALL                             R2 1 1
       45 JUMPIFNOT                        R2 ; [+2]
       46 GETUPVAL                         R1 2
       47 JUMP                             ; [+5]
       48 NEWTABLE                         R1 0 1
       50 GETUPVAL                         R2 2
       51 SETLIST                          R1 R2 1 [1]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K7 ["map"]
       56 MOVE                             R3 R1
       57 DUPCLOSURE                       R4 K8 [PROTO_4]
       58 CALL                             R2 2 1
       59 NEWCLOSURE                       R3 P1
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U3
       63 SETUPVAL                         R3 2
       64 GETUPVAL                         R1 2
       65 CALL                             R1 0 1
       66 GETUPVAL                         R3 3
       67 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
       69 MOVE                             R4 R1
       70 CALL                             R3 1 1
       71 NOT                              R2 R3
       72 JUMPIF                           R2 ; [+14]
       73 GETUPVAL                         R3 4
       74 GETTABLEKS                       R3 R3 K3 ["isArray"]
       76 MOVE                             R4 R1
       77 CALL                             R3 1 1
       78 JUMPIFNOT                        R3 ; [+7]
       79 GETUPVAL                         R3 3
       80 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
       82 LENGTH                           R4 R1
       83 CALL                             R3 1 1
       84 NOT                              R2 R3
       85 JUMP                             ; [+1]
       86 LOADB                            R2 0
       87 JUMPIFNOT                        R2 ; [+8]
       88 GETIMPORT                        R2 K5 [error]
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R3 R3 K0 ["new"]
       93 LOADK                            R4 K6 ["The element(s) given to waitForElementToBeRemoved are already removed. waitForElementToBeRemoved requires that the element(s) exist(s) before waiting for removal."]
       94 CALL                             R3 1 -1
       95 CALL                             R2 -1 0
       96 GETUPVAL                         R1 5
       97 NEWCLOSURE                       R2 P2
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          VAL R0
      102 GETUPVAL                         R3 6
      103 CALL                             R1 2 -1
      104 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R2 R2 K1 ["andThen"]
       14 CALL                             R2 2 -1
       15 CLOSEUPVALS                      R0
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Error"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K9 ["Promise"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K2 ["Parent"]
       29 GETTABLEKS                       R7 R7 K10 ["jsHelpers"]
       31 GETTABLEKS                       R7 R7 K11 ["isCallable"]
       33 CALL                             R6 1 1
       34 NEWTABLE                         R7 1 0
       36 GETIMPORT                        R8 K4 [require]
       38 GETIMPORT                        R10 K1 [script]
       40 GETTABLEKS                       R10 R10 K2 ["Parent"]
       42 GETTABLEKS                       R9 R10 K12 ["wait-for"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R8 R8 K13 ["waitFor"]
       47 DUPCLOSURE                       R9 K14 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R10 K15 [PROTO_1]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R11 K16 [PROTO_10]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R11 R7 K17 ["waitForElementToBeRemoved"]
       63 RETURN                           R7 1
