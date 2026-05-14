PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 1
        9 JUMPIFNOT                        R0 ; [+11]
       10 GETTABLEN                        R1 R0 1
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETTABLEN                        R1 R0 1
       13 GETTABLEKS                       R1 R1 K1 ["Value"]
       15 GETUPVAL                         R2 2
       16 JUMPIFEQKN                       R1 K2 [4] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQKN                       R1 K1 [4] ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

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
       15 LOADK                            R4 K6 ["PartyEmulator: Failed to read test mode setting:"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 2
       19 LOADB                            R4 0
       20 CALL                             R3 1 0
       21 GETUPVAL                         R5 1
       22 NAMECALL                         R3 R0 K7 ["BindAsync"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R3 R3 K8 ["Connect"]
       29 CALL                             R3 2 1
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 0
       21 CALL                             R3 2 0
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       32 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       34 GETTABLEKS                       R5 R5 K13 ["Plugin"]
       36 GETTABLEKS                       R6 R4 K14 ["fromSetting"]
       38 LOADK                            R7 K15 ["RunTools"]
       39 LOADK                            R8 K16 ["TestMode"]
       40 CALL                             R6 2 1
       41 DUPCLOSURE                       R7 K17 [PROTO_4]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R6
       45 RETURN                           R7 1
