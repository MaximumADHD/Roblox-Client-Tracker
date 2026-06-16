PROTO_0:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R1 R3
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K1 [type]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+24]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       15 GETTABLEKS                       R4 R4 K4 ["join"]
       17 MOVE                             R5 R1
       18 MOVE                             R6 R0
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["Dictionary"]
       22 GETTABLEKS                       R7 R7 K4 ["join"]
       24 MOVE                             R8 R2
       25 JUMPIF                           R8 ; [+2]
       26 NEWTABLE                         R8 0 0
       28 DUPTABLE                         R9 K6 [{"navigationOptions"}]
       29 SETTABLEKS                       R1 R9 K5 ["navigationOptions"]
       31 CALL                             R7 2 -1
       32 CALL                             R6 -1 -1
       33 CALL                             R4 -1 -1
       34 RETURN                           R4 -1
       35 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+10]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       40 GETTABLEKS                       R4 R4 K4 ["join"]
       42 MOVE                             R5 R1
       43 MOVE                             R6 R0
       44 CALL                             R4 2 -1
       45 RETURN                           R4 -1
       46 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETTABLEKS                       R2 R0 K0 ["state"]
        7 GETUPVAL                         R3 0
        8 FASTCALL1                        TYPE R2 ; [+3]
        9 MOVE                             R6 R2
       10 GETIMPORT                        R5 K2 [type]
       12 CALL                             R5 1 1
       13 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 LOADK                            R5 K4 ["navigation.state must be a table"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R6 R2 K5 ["routeName"]
       22 JUMPIFEQKS                       R6 K6 ["string"] ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 FASTCALL1                        TYPE R5 ; [+2]
       27 GETIMPORT                        R4 K2 [type]
       29 CALL                             R4 1 1
       30 LOADK                            R5 K7 ["routeName must be a string"]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 1
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R5 R2 K5 ["routeName"]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R6 R2 K5 ["routeName"]
       40 GETTABLE                         R4 R5 R6
       41 LOADNIL                          R5
       42 JUMPIFEQ                         R4 R3 ; [+3]
       44 GETTABLEKS                       R5 R4 K8 ["navigationOptions"]
       46 FASTCALL1                        TYPE R3 ; [+3]
       47 MOVE                             R8 R3
       48 GETIMPORT                        R7 K2 [type]
       50 CALL                             R7 1 1
       51 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+4]
       53 GETTABLEKS                       R6 R3 K8 ["navigationOptions"]
       55 JUMPIF                           R6 ; [+2]
       56 NEWTABLE                         R6 0 0
       58 DUPTABLE                         R7 K11 [{"navigation", "screenProps"}]
       59 SETTABLEKS                       R0 R7 K9 ["navigation"]
       61 SETTABLEKS                       R1 R7 K10 ["screenProps"]
       63 GETUPVAL                         R8 3
       64 GETUPVAL                         R9 4
       65 NEWTABLE                         R10 0 0
       67 MOVE                             R11 R7
       68 CALL                             R8 3 1
       69 GETUPVAL                         R9 3
       70 MOVE                             R10 R6
       71 MOVE                             R11 R8
       72 MOVE                             R12 R7
       73 CALL                             R9 3 1
       74 MOVE                             R8 R9
       75 GETUPVAL                         R9 3
       76 MOVE                             R10 R5
       77 MOVE                             R11 R8
       78 MOVE                             R12 R7
       79 CALL                             R9 3 1
       80 MOVE                             R8 R9
       81 GETUPVAL                         R9 5
       82 MOVE                             R10 R8
       83 MOVE                             R11 R2
       84 CALL                             R9 2 0
       85 RETURN                           R8 1

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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["getScreenForRouteName"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K7 ["validateScreenOptions"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Parent"]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K8 ["utils"]
       42 GETTABLEKS                       R4 R4 K9 ["validate"]
       44 CALL                             R3 1 1
       45 DUPCLOSURE                       R4 K10 [PROTO_0]
       46 CAPTURE                          VAL R0
       47 DUPCLOSURE                       R5 K11 [PROTO_2]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 RETURN                           R5 1
