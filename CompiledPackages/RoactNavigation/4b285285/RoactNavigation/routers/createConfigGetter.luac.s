PROTO_0:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R1 R3
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K1 [type]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+22]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["assign"]
       15 NEWTABLE                         R5 0 0
       17 MOVE                             R6 R1
       18 MOVE                             R7 R0
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K3 ["assign"]
       22 GETIMPORT                        R9 K6 [table.clone]
       24 MOVE                             R10 R2
       25 CALL                             R9 1 1
       26 DUPTABLE                         R10 K8 [{"navigationOptions"}]
       27 SETTABLEKS                       R1 R10 K7 ["navigationOptions"]
       29 CALL                             R8 2 -1
       30 CALL                             R7 -1 -1
       31 CALL                             R4 -1 -1
       32 RETURN                           R4 -1
       33 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+11]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K3 ["assign"]
       38 GETIMPORT                        R5 K6 [table.clone]
       40 MOVE                             R6 R1
       41 CALL                             R5 1 1
       42 MOVE                             R6 R0
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1
       45 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETTABLEKS                       R2 R0 K0 ["state"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R6 R2 K1 ["routeName"]
       10 FASTCALL1                        TYPE R6 ; [+2]
       11 GETIMPORT                        R5 K3 [type]
       13 CALL                             R5 1 1
       14 JUMPIFEQKS                       R5 K4 ["string"] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 LOADK                            R5 K5 ["Cannot get config because the route does not have a routeName."]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R5 R2 K1 ["routeName"]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R6 R2 K1 ["routeName"]
       28 GETTABLE                         R4 R5 R6
       29 LOADNIL                          R5
       30 JUMPIFEQ                         R4 R3 ; [+3]
       32 GETTABLEKS                       R5 R4 K6 ["navigationOptions"]
       34 FASTCALL1                        TYPE R3 ; [+3]
       35 MOVE                             R8 R3
       36 GETIMPORT                        R7 K3 [type]
       38 CALL                             R7 1 1
       39 JUMPIFNOTEQKS                    R7 K7 ["table"] ; [+4]
       41 GETTABLEKS                       R6 R3 K6 ["navigationOptions"]
       43 JUMP                             ; [+2]
       44 NEWTABLE                         R6 0 0
       46 DUPTABLE                         R7 K10 [{"navigation", "screenProps"}]
       47 SETTABLEKS                       R0 R7 K8 ["navigation"]
       49 SETTABLEKS                       R1 R7 K9 ["screenProps"]
       51 GETUPVAL                         R8 3
       52 GETUPVAL                         R9 4
       53 NEWTABLE                         R10 0 0
       55 MOVE                             R11 R7
       56 CALL                             R8 3 1
       57 GETUPVAL                         R9 3
       58 MOVE                             R10 R6
       59 MOVE                             R11 R8
       60 MOVE                             R12 R7
       61 CALL                             R9 3 1
       62 MOVE                             R8 R9
       63 GETUPVAL                         R9 3
       64 MOVE                             R10 R5
       65 MOVE                             R11 R8
       66 MOVE                             R12 R7
       67 CALL                             R9 3 1
       68 MOVE                             R8 R9
       69 GETUPVAL                         R9 5
       70 MOVE                             R10 R8
       71 MOVE                             R11 R2
       72 CALL                             R9 2 0
       73 RETURN                           R8 1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Object"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K7 ["getScreenForRouteName"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K8 ["validateScreenOptions"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R8 R1 K9 ["utils"]
       30 GETTABLEKS                       R8 R8 K10 ["invariant"]
       32 CALL                             R7 1 1
       33 DUPCLOSURE                       R8 K11 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R9 K12 [PROTO_2]
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R8
       39 CAPTURE                          VAL R6
       40 RETURN                           R9 1
