PROTO_0:
        0 DUPTABLE                         R2 K4 [{"dataModelType", "message", "messageType", "timestamp"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["dataModelType"]
        4 SETTABLEKS                       R0 R2 K1 ["message"]
        6 SETTABLEKS                       R1 R2 K2 ["messageType"]
        8 GETIMPORT                        R3 K7 [os.time]
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K3 ["timestamp"]
       13 GETUPVAL                         R3 1
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R2
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetLogHistory"]
        3 CALL                             R2 1 1
        4 LENGTH                           R3 R2
        5 LOADN                            R4 0
        6 JUMPIFNOTLT                      R4 R3 ; [+12]
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 SETTABLEKS                       R1 R7 K1 ["dataModelType"]
       14 FORGLOOP                         R3 2 ; [-3]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K2 ["MessageOut"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R3 R3 K3 ["Connect"]
       27 CALL                             R3 2 1
       28 RETURN                           R3 1

PROTO_2:
        0 LOADN                            R5 1
        1 LENGTH                           R6 R1
        2 FASTCALL3                        STRING_SUB R0 R5 R6
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [string.sub]
        7 CALL                             R3 3 1
        8 JUMPIFEQ                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 0
        7 GETUPVAL                         R8 0
        8 LOADNIL                          R9
        9 LOADNIL                          R10
       10 FORGPREP                         R8
       11 GETTABLEKS                       R14 R6 K0 ["message"]
       13 LOADN                            R17 1
       14 LENGTH                           R18 R12
       15 FASTCALL3                        STRING_SUB R14 R17 R18
       17 MOVE                             R16 R14
       18 GETIMPORT                        R15 K3 [string.sub]
       20 CALL                             R15 3 1
       21 JUMPIFEQ                         R15 R12 ; [+2]
       23 LOADB                            R13 0 +1
       24 LOADB                            R13 1
       25 JUMPIFNOT                        R13 ; [+2]
       26 LOADB                            R7 1
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R8 2 ; [-18]
       30 JUMPIF                           R7 ; [+7]
       31 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R6
       35 GETIMPORT                        R8 K6 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R2 2 ; [-33]
       40 LENGTH                           R2 R1
       41 LOADN                            R3 0
       42 JUMPIFNOTLT                      R3 R2 ; [+11]
       44 GETUPVAL                         R2 1
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K7 ["Identity"]
       48 GETTABLEKS                       R4 R4 K8 ["Standalone"]
       50 MOVE                             R5 R1
       51 NAMECALL                         R2 R2 K9 ["Fire"]
       53 CALL                             R2 3 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["event"]
        4 MOVE                             R5 R1
        5 LOADK                            R6 K1 ["ConsoleOutputNetworkKey"]
        6 CALL                             R4 2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R4
       10 CAPTURE                          UPVAL U2
       11 GETUPVAL                         R5 3
       12 MOVE                             R6 R3
       13 MOVE                             R7 R2
       14 CALL                             R5 2 1
       15 GETTABLEKS                       R6 R0 K2 ["Unloading"]
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          VAL R5
       19 NAMECALL                         R6 R6 K3 ["Connect"]
       21 CALL                             R6 2 0
       22 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["append"]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-6]
       11 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["append"]
        7 MOVE                             R8 R6
        8 CALL                             R7 1 0
        9 FORGLOOP                         R2 2 ; [-6]
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["event"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["ConsoleOutputNetworkKey"]
        5 CALL                             R2 2 1
        6 DUPCLOSURE                       R5 K2 [PROTO_7]
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R3 R2 K3 ["Connect"]
       10 CALL                             R3 2 1
       11 GETTABLEKS                       R4 R0 K4 ["Unloading"]
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          VAL R3
       15 NAMECALL                         R4 R4 K3 ["Connect"]
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+6]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R3 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 CALL                             R3 3 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LogService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Assistant"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["DMNetworking"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["Utils"]
       29 GETTABLEKS                       R4 R4 K14 ["DataModelType"]
       31 GETTABLEKS                       R5 R2 K13 ["Utils"]
       33 GETTABLEKS                       R5 R5 K15 ["ConsoleOutput"]
       35 GETTABLEKS                       R6 R3 K16 ["Remote"]
       37 NEWTABLE                         R7 0 2
       39 LOADK                            R8 K17 ["[DMNetworking]"]
       40 LOADK                            R9 K18 ["[Networking] [Studio]"]
       41 SETLIST                          R7 R8 2 [1]
       43 DUPCLOSURE                       R8 K19 [PROTO_1]
       44 CAPTURE                          VAL R0
       45 DUPCLOSURE                       R9 K20 [PROTO_2]
       46 DUPCLOSURE                       R10 K21 [PROTO_5]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R8
       51 DUPCLOSURE                       R11 K22 [PROTO_6]
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R12 K23 [PROTO_9]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 DUPCLOSURE                       R13 K24 [PROTO_10]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R10
       60 DUPTABLE                         R14 K26 [{"init"}]
       61 SETTABLEKS                       R13 R14 K25 ["init"]
       63 RETURN                           R14 1
