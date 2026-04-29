PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R1 K0 ["client"]
        6 GETTABLEKS                       R2 R3 K1 ["ConnectionState"]
        8 GETIMPORT                        R3 K5 [Enum.WebStreamClientState.Closed]
       10 JUMPIFEQ                         R2 R3 ; [+6]
       12 GETTABLEKS                       R2 R1 K0 ["client"]
       14 NAMECALL                         R2 R2 K6 ["Close"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R1 K7 ["openedConnection"]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETTABLEKS                       R2 R1 K7 ["openedConnection"]
       22 NAMECALL                         R2 R2 K8 ["Disconnect"]
       24 CALL                             R2 1 0
       25 GETTABLEKS                       R2 R1 K9 ["messageReceivedConnection"]
       27 JUMPIFNOT                        R2 ; [+5]
       28 GETTABLEKS                       R2 R1 K9 ["messageReceivedConnection"]
       30 NAMECALL                         R2 R2 K8 ["Disconnect"]
       32 CALL                             R2 1 0
       33 GETTABLEKS                       R2 R1 K10 ["errorConnection"]
       35 JUMPIFNOT                        R2 ; [+5]
       36 GETTABLEKS                       R2 R1 K10 ["errorConnection"]
       38 NAMECALL                         R2 R2 K8 ["Disconnect"]
       40 CALL                             R2 1 0
       41 GETTABLEKS                       R2 R1 K11 ["closedConnection"]
       43 JUMPIFNOT                        R2 ; [+5]
       44 GETTABLEKS                       R2 R1 K11 ["closedConnection"]
       46 NAMECALL                         R2 R2 K8 ["Disconnect"]
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 0
       50 LOADNIL                          R3
       51 SETTABLE                         R3 R2 R0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onOpen"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["headerStringToTable"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onError"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["onError"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 2
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 ADDK                             R3 R3 K0 [1]
        2 SETUPVAL                         R3 0
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["connectStreamingClient"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R2
       12 DUPTABLE                         R5 K5 [{"client", "id", "disconnect"}]
       13 SETTABLEKS                       R3 R5 K2 ["client"]
       15 SETTABLEKS                       R2 R5 K3 ["id"]
       17 SETTABLEKS                       R4 R5 K4 ["disconnect"]
       19 GETTABLEKS                       R6 R1 K6 ["onOpen"]
       21 JUMPIFNOT                        R6 ; [+10]
       22 GETTABLEKS                       R6 R3 K7 ["Opened"]
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U3
       27 NAMECALL                         R6 R6 K8 ["Connect"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K9 ["openedConnection"]
       32 GETTABLEKS                       R6 R1 K10 ["onMessage"]
       34 JUMPIFNOT                        R6 ; [+9]
       35 GETTABLEKS                       R6 R3 K11 ["MessageReceived"]
       37 GETTABLEKS                       R8 R1 K10 ["onMessage"]
       39 NAMECALL                         R6 R6 K8 ["Connect"]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K12 ["messageReceivedConnection"]
       44 GETTABLEKS                       R6 R3 K13 ["Error"]
       46 NEWCLOSURE                       R8 P2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R2
       50 NAMECALL                         R6 R6 K8 ["Connect"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K14 ["errorConnection"]
       55 GETTABLEKS                       R6 R3 K15 ["Closed"]
       57 NEWCLOSURE                       R8 P3
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R2
       61 NAMECALL                         R6 R6 K8 ["Connect"]
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K16 ["closedConnection"]
       66 GETUPVAL                         R6 4
       67 SETTABLE                         R5 R6 R2
       68 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R3
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R1
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R4 P2
        8 CAPTURE                          REF R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R3
       16 DUPTABLE                         R6 K2 [{"createClient", "disconnectAll"}]
       17 SETTABLEKS                       R4 R6 K0 ["createClient"]
       19 SETTABLEKS                       R5 R6 K1 ["disconnectAll"]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Http"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["StreamableHttpClient"]
       18 GETTABLEKS                       R3 R4 K9 ["StreamingClientFactory"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 1 0
       23 DUPCLOSURE                       R4 K10 [PROTO_8]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R4 R3 K11 ["new"]
       28 RETURN                           R3 1
