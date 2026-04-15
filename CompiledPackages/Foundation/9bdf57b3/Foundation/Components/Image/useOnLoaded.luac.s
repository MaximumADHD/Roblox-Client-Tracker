PROTO_0:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        3 JUMPIFEQ                         R0 R2 ; [+12]
        5 LOADB                            R1 1
        6 GETIMPORT                        R2 K5 [Enum.AssetFetchStatus.Failure]
        8 JUMPIFEQ                         R0 R2 ; [+7]
       10 GETIMPORT                        R2 K7 [Enum.AssetFetchStatus.TimedOut]
       12 JUMPIFEQ                         R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        3 JUMPIFEQ                         R0 R2 ; [+12]
        5 LOADB                            R1 1
        6 GETIMPORT                        R2 K5 [Enum.AssetFetchStatus.Failure]
        8 JUMPIFEQ                         R0 R2 ; [+7]
       10 GETIMPORT                        R2 K7 [Enum.AssetFetchStatus.TimedOut]
       12 JUMPIFEQ                         R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+3]
       17 GETUPVAL                         R1 0
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K0 ["GetAssetFetchStatus"]
        7 CALL                             R2 2 1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K4 [Enum.AssetFetchStatus.Success]
       11 JUMPIFEQ                         R2 R4 ; [+12]
       13 LOADB                            R3 1
       14 GETIMPORT                        R4 K6 [Enum.AssetFetchStatus.Failure]
       16 JUMPIFEQ                         R2 R4 ; [+7]
       18 GETIMPORT                        R4 K8 [Enum.AssetFetchStatus.TimedOut]
       20 JUMPIFEQ                         R2 R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIFNOT                        R3 ; [+4]
       25 MOVE                             R3 R1
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 0
       30 MOVE                             R5 R0
       31 NAMECALL                         R3 R3 K9 ["GetAssetFetchStatusChangedSignal"]
       33 CALL                             R3 2 1
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          VAL R1
       36 NAMECALL                         R3 R3 K10 ["Connect"]
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 2
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADNIL                          R0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          REF R0
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K0 ["isBinding"]
       12 GETUPVAL                         R4 2
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+22]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 3
       17 NAMECALL                         R5 R3 K1 ["getValue"]
       19 CALL                             R5 1 1
       20 MOVE                             R6 R2
       21 CALL                             R4 2 1
       22 MOVE                             R0 R4
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R4 R5 K2 ["__subscribeToBinding"]
       26 MOVE                             R5 R3
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          REF R0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R2
       31 CALL                             R4 2 1
       32 NEWCLOSURE                       R5 P3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          REF R0
       35 CLOSEUPVALS                      R0
       36 RETURN                           R5 1
       37 GETUPVAL                         R3 2
       38 GETUPVAL                         R4 3
       39 MOVE                             R5 R3
       40 MOVE                             R6 R2
       41 CALL                             R4 2 1
       42 MOVE                             R0 R4
       43 NEWCLOSURE                       R4 P4
       44 CAPTURE                          REF R0
       45 CLOSEUPVALS                      R0
       46 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 NEWTABLE                         R4 0 2
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Wrappers"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R6 R4 K11 ["Services"]
       28 GETTABLEKS                       R5 R6 K12 ["ContentProvider"]
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R0 K13 ["Components"]
       34 GETTABLEKS                       R7 R8 K14 ["Types"]
       36 CALL                             R6 1 1
       37 DUPCLOSURE                       R7 K15 [PROTO_0]
       38 DUPCLOSURE                       R8 K16 [PROTO_2]
       39 CAPTURE                          VAL R5
       40 DUPCLOSURE                       R9 K17 [PROTO_9]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R8
       44 RETURN                           R9 1
