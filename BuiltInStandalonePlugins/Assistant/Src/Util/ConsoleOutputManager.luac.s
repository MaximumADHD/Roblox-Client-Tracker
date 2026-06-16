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
        6 GETTABLEKS                       R8 R6 K0 ["message"]
        8 LOADN                            R11 1
        9 LOADN                            R12 21
       10 FASTCALL3                        STRING_SUB R8 R11 R12
       12 MOVE                             R10 R8
       13 GETIMPORT                        R9 K3 [string.sub]
       15 CALL                             R9 3 1
       16 JUMPIFEQKS                       R9 K4 ["[Networking] [Studio]"] ; [+2]
       18 LOADB                            R7 0 +1
       19 LOADB                            R7 1
       20 JUMPIF                           R7 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R6
       25 GETIMPORT                        R7 K7 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-23]
       30 LENGTH                           R2 R1
       31 LOADN                            R3 0
       32 JUMPIFNOTLT                      R3 R2 ; [+12]
       34 GETUPVAL                         R2 0
       35 LOADK                            R4 K8 ["ConsoleOutputNetworkKey"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K9 ["Types"]
       39 GETTABLEKS                       R5 R5 K10 ["Standalone"]
       41 MOVE                             R6 R1
       42 NAMECALL                         R2 R2 K11 ["FireGuest"]
       44 CALL                             R2 4 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R3
        5 MOVE                             R6 R2
        6 CALL                             R4 2 1
        7 GETTABLEKS                       R5 R0 K0 ["Unloading"]
        9 NEWCLOSURE                       R7 P1
       10 CAPTURE                          VAL R4
       11 NAMECALL                         R5 R5 K1 ["Connect"]
       13 CALL                             R5 2 0
       14 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R4 K0 ["ConsoleOutputNetworkKey"]
        1 DUPCLOSURE                       R5 K1 [PROTO_7]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R1 K2 ["OnGuestEvent"]
        5 CALL                             R2 3 2
        6 GETTABLEKS                       R4 R0 K3 ["Unloading"]
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          VAL R3
       10 NAMECALL                         R4 R4 K4 ["Connect"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

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
       35 DUPCLOSURE                       R6 K16 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 DUPCLOSURE                       R7 K17 [PROTO_2]
       38 DUPCLOSURE                       R8 K18 [PROTO_5]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 DUPCLOSURE                       R9 K19 [PROTO_6]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R10 K20 [PROTO_9]
       44 CAPTURE                          VAL R5
       45 DUPCLOSURE                       R11 K21 [PROTO_10]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R10
       48 CAPTURE                          VAL R8
       49 DUPTABLE                         R12 K23 [{"init"}]
       50 SETTABLEKS                       R11 R12 K22 ["init"]
       52 RETURN                           R12 1
