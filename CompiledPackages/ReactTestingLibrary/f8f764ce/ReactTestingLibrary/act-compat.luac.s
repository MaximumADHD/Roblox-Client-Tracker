PROTO_0:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.pack]
        3 GETVARARGS                       R1 -1
        4 CALL                             R0 -1 1
        5 GETTABLEN                        R3 R0 1
        6 FASTCALL1                        TYPEOF R3 ; [+2]
        7 GETIMPORT                        R2 K4 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFEQKS                       R2 K5 ["string"] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+12]
       15 GETIMPORT                        R2 K7 [string.find]
       17 GETTABLEN                        R3 R0 1
       18 LOADK                            R4 K8 ["Do not await the result of calling act(...) with sync logic, it is not a Promise."]
       19 LOADN                            R5 1
       20 LOADB                            R6 1
       21 CALL                             R2 4 1
       22 JUMPIFNOTEQKN                    R2 K9 [1] ; [+4]
       24 LOADB                            R2 0
       25 SETUPVAL                         R2 0
       26 RETURN                           R0 0
       27 JUMPIFNOT                        R1 ; [+10]
       28 GETIMPORT                        R2 K7 [string.find]
       30 GETTABLEN                        R3 R0 1
       31 LOADK                            R4 K10 ["Warning: The callback passed to ReactTestUtils.act(...) function must not return anything"]
       32 LOADN                            R5 1
       33 LOADB                            R6 1
       34 CALL                             R2 4 1
       35 JUMPIFNOTEQKN                    R2 K9 [1] ; [+2]
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 1
       39 GETVARARGS                       R3 -1
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U2
        3 CAPTURE                          UPVAL U3
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["error"]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R0 3
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLEKS                       R2 R1 K0 ["error"]
        4 LOADB                            R1 1
        5 SETUPVAL                         R1 2
        6 GETUPVAL                         R1 3
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_5]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["andThen"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["error"]
        3 GETUPVAL                         R3 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R2
        7 SETTABLEKS                       R4 R3 K0 ["error"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETIMPORT                        R5 K2 [pcall]
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          REF R4
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          REF R3
       17 CAPTURE                          UPVAL U3
       18 CALL                             R5 1 2
       19 JUMPIF                           R5 ; [+8]
       20 GETUPVAL                         R7 0
       21 SETTABLEKS                       R2 R7 K0 ["error"]
       23 MOVE                             R7 R1
       24 MOVE                             R8 R6
       25 CALL                             R7 1 0
       26 CLOSEUPVALS                      R3
       27 RETURN                           R0 0
       28 NEWCLOSURE                       R9 P2
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R0
       33 NEWCLOSURE                       R10 P3
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 NAMECALL                         R7 R4 K3 ["andThen"]
       40 CALL                             R7 3 0
       41 GETUPVAL                         R7 1
       42 JUMPIFNOTEQKB                    R7 FALSE ; [+21]
       44 GETUPVAL                         R7 0
       45 SETTABLEKS                       R2 R7 K0 ["error"]
       47 GETUPVAL                         R7 4
       48 JUMPIF                           R7 ; [+7]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K0 ["error"]
       52 LOADK                            R8 K4 ["It looks like you're using a version of react-dom that supports the \"act\" function, but not an awaitable version of \"act\" which you will need. Please upgrade to at least react-dom@16.9.0 to remove this warning."]
       53 CALL                             R7 1 0
       54 LOADB                            R7 1
       55 SETUPVAL                         R7 4
       56 NEWCLOSURE                       R9 P4
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 MOVE                             R10 R1
       61 NAMECALL                         R7 R3 K3 ["andThen"]
       63 CALL                             R7 3 0
       64 CLOSEUPVALS                      R3
       65 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_10]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 DUPCLOSURE                       R2 K1 [PROTO_11]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R0 R0 K2 ["andThen"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_14]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 DUPCLOSURE                       R2 K1 [PROTO_15]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R0 R0 K2 ["andThen"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKB                    R1 TRUE ; [+39]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+14]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["new"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U6
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1
       19 GETUPVAL                         R1 1
       20 JUMPIFNOTEQKB                    R1 FALSE ; [+16]
       22 LOADNIL                          R1
       23 GETUPVAL                         R2 6
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          REF R1
       26 CAPTURE                          VAL R0
       27 CALL                             R2 1 0
       28 DUPCLOSURE                       R4 K1 [PROTO_12]
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U6
       31 NAMECALL                         R2 R1 K2 ["andThen"]
       33 CALL                             R2 2 1
       34 CLOSEUPVALS                      R1
       35 RETURN                           R2 1
       36 CLOSEUPVALS                      R1
       37 GETUPVAL                         R1 6
       38 MOVE                             R2 R0
       39 CALL                             R1 1 -1
       40 RETURN                           R1 -1
       41 LOADNIL                          R1
       42 GETUPVAL                         R2 6
       43 NEWCLOSURE                       R3 P3
       44 CAPTURE                          REF R1
       45 CAPTURE                          VAL R0
       46 CALL                             R2 1 0
       47 DUPCLOSURE                       R4 K3 [PROTO_16]
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U6
       50 NAMECALL                         R2 R1 K2 ["andThen"]
       52 CALL                             R2 2 -1
       53 CLOSEUPVALS                      R1
       54 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["console"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Promise"]
       18 CALL                             R3 1 1
       19 NEWTABLE                         R4 2 0
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R8 K1 [script]
       25 GETTABLEKS                       R8 R8 K2 ["Parent"]
       27 GETTABLEKS                       R8 R8 K10 ["jsHelpers"]
       29 GETTABLEKS                       R7 R8 K9 ["react-dom"]
       31 GETTABLEKS                       R6 R7 K8 ["test-utils"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K11 ["act"]
       36 JUMPIFNOTEQKNIL                  R6 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 LOADB                            R8 0
       41 LOADNIL                          R9
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          VAL R7
       44 CAPTURE                          REF R9
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          REF R8
       49 CAPTURE                          VAL R6
       50 SETTABLEKS                       R6 R4 K12 ["default"]
       52 SETTABLEKS                       R10 R4 K13 ["asyncAct"]
       54 CLOSEUPVALS                      R8
       55 RETURN                           R4 1
