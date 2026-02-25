PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 1
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETTABLEN                        R1 R0 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETTABLEN                        R2 R0 1
       13 GETTABLEKS                       R1 R2 K1 ["Value"]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Settings"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K3 [pcall]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+8]
       13 GETIMPORT                        R3 K5 [warn]
       15 LOADK                            R4 K6 ["PartyEmulator: Failed to read player count setting:"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 2
       19 LOADN                            R4 0
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 3
       22 LOADB                            R4 1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R5 1
       25 NAMECALL                         R3 R0 K7 ["BindAsync"]
       27 CALL                             R3 2 1
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          UPVAL U2
       30 NAMECALL                         R3 R3 K8 ["Connect"]
       32 CALL                             R3 2 1
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["useState"]
       10 LOADN                            R2 0
       11 CALL                             R1 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["useState"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K3 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R3
       30 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R2 K10 ["Util"]
       30 GETTABLEKS                       R4 R5 K11 ["StudioUri"]
       32 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       34 GETTABLEKS                       R5 R6 K13 ["Plugin"]
       36 GETTABLEKS                       R6 R4 K14 ["fromSetting"]
       38 LOADK                            R7 K15 ["RunTools"]
       39 LOADK                            R8 K16 ["PlayersMode"]
       40 CALL                             R6 2 1
       41 DUPCLOSURE                       R7 K17 [PROTO_4]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R6
       45 RETURN                           R7 1
