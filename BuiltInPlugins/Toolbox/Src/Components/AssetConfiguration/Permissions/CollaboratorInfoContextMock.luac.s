PROTO_0:
        0 JUMPIFNOT                        R1 ; [+2]
        1 LOADN                            R2 65
        2 JUMP                             ; [+1]
        3 LOADN                            R2 97
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADN                            R3 90
        6 JUMP                             ; [+1]
        7 LOADN                            R3 122
        8 MOVE                             R7 R2
        9 MOVE                             R8 R3
       10 NAMECALL                         R5 R0 K0 ["NextInteger"]
       12 CALL                             R5 3 -1
       13 FASTCALL                         STRING_CHAR ; [+2]
       14 GETIMPORT                        R4 K3 [string.char]
       16 CALL                             R4 -1 1
       17 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Random.new]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 LOADN                            R3 4
        5 LOADN                            R4 8
        6 GETIMPORT                        R5 K6 [Enum.CreatorType.Group]
        8 JUMPIFNOTEQ                      R0 R5 ; [+3]
       10 LOADN                            R3 7
       11 LOADN                            R4 4
       12 LOADN                            R8 65
       13 LOADN                            R9 90
       14 NAMECALL                         R6 R2 K7 ["NextInteger"]
       16 CALL                             R6 3 -1
       17 FASTCALL                         STRING_CHAR ; [+2]
       18 GETIMPORT                        R5 K10 [string.char]
       20 CALL                             R5 -1 1
       21 LOADN                            R8 2
       22 MOVE                             R6 R3
       23 LOADN                            R7 1
       24 FORNPREP                         R6
       25 MOVE                             R9 R5
       26 LOADN                            R13 97
       27 LOADN                            R14 122
       28 NAMECALL                         R11 R2 K7 ["NextInteger"]
       30 CALL                             R11 3 -1
       31 FASTCALL                         STRING_CHAR ; [+2]
       32 GETIMPORT                        R10 K10 [string.char]
       34 CALL                             R10 -1 1
       35 CONCAT                           R5 R9 R10
       36 FORNLOOP                         R6
       37 MOVE                             R6 R5
       38 LOADK                            R7 K11 [" "]
       39 LOADN                            R11 65
       40 LOADN                            R12 90
       41 NAMECALL                         R9 R2 K7 ["NextInteger"]
       43 CALL                             R9 3 -1
       44 FASTCALL                         STRING_CHAR ; [+2]
       45 GETIMPORT                        R8 K10 [string.char]
       47 CALL                             R8 -1 1
       48 CONCAT                           R5 R6 R8
       49 LOADN                            R8 2
       50 MOVE                             R6 R4
       51 LOADN                            R7 1
       52 FORNPREP                         R6
       53 MOVE                             R9 R5
       54 LOADN                            R13 97
       55 LOADN                            R14 122
       56 NAMECALL                         R11 R2 K7 ["NextInteger"]
       58 CALL                             R11 3 -1
       59 FASTCALL                         STRING_CHAR ; [+2]
       60 GETIMPORT                        R10 K10 [string.char]
       62 CALL                             R10 -1 1
       63 CONCAT                           R5 R9 R10
       64 FORNLOOP                         R6
       65 RETURN                           R5 1

PROTO_2:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K2 [task.wait]
        3 LOADN                            R2 1
        4 CALL                             R1 1 0
        5 GETIMPORT                        R1 K4 [tick]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 0
        9 SUB                              R0 R1 R2
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 LOADN                            R1 2
       14 JUMPIFLT                         R1 R0 ; [+2]
       16 JUMPBACK                         ; [-16]
       17 GETIMPORT                        R1 K6 [print]
       19 LOADK                            R2 K7 ["don"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MockLoadTime"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R1 R2 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["MockLoadTime"]
       10 JUMPIFNOT                        R1 ; [+13]
       11 GETIMPORT                        R1 K4 [Random.new]
       13 GETTABLEKS                       R2 R0 K0 ["Id"]
       15 CALL                             R1 1 1
       16 LOADN                            R3 0
       17 LOADN                            R4 2
       18 NAMECALL                         R1 R1 K5 ["NextInteger"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R2 1
       22 JUMPIFNOTLT                      R1 R2 ; [+8]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R2 R0 K6 ["Type"]
       27 GETTABLEKS                       R3 R0 K0 ["Id"]
       29 CALL                             R1 2 1
       30 RETURN                           R1 1
       31 LOADNIL                          R1
       32 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R1 R2 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R2 R0 K1 ["Type"]
        9 GETIMPORT                        R3 K5 [Enum.CreatorType.User]
       11 JUMPIFNOTEQ                      R2 R3 ; [+3]
       13 GETUPVAL                         R1 0
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R5 R0 K0 ["Id"]
       18 LENGTH                           R6 R1
       19 MOD                              R4 R5 R6
       20 ADDK                             R3 R4 K6 [1]
       21 GETTABLE                         R2 R1 R3
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K7 ["GetThumbnail"]
       25 DUPTABLE                         R4 K8 [{"Type", "Id"}]
       26 GETTABLEKS                       R5 R0 K1 ["Type"]
       28 SETTABLEKS                       R5 R4 K1 ["Type"]
       30 SETTABLEKS                       R2 R4 K0 ["Id"]
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 GETIMPORT                        R3 K4 [tick]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["useState"]
       18 LOADN                            R4 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R7 0 1
       29 GETTABLEKS                       R8 R0 K7 ["MockLoadTime"]
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 0
       34 DUPTABLE                         R5 K10 [{"GetDisplayName", "GetThumbnail"}]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U2
       39 SETTABLEKS                       R6 R5 K8 ["GetDisplayName"]
       41 NEWCLOSURE                       R6 P2
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R6 R5 K9 ["GetThumbnail"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K11 ["createElement"]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K1 ["Context"]
       53 GETTABLEKS                       R7 R7 K12 ["Provider"]
       55 DUPTABLE                         R8 K14 [{"value"}]
       56 SETTABLEKS                       R5 R8 K13 ["value"]
       58 GETTABLEKS                       R9 R0 K15 ["children"]
       60 CALL                             R6 3 -1
       61 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K8 ["Parent"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R3 K9 ["CollaboratorInfo"]
       22 CALL                             R4 1 1
       23 NEWTABLE                         R5 0 5
       25 LOADN                            R6 1
       26 LOADN                            R7 2
       27 LOADN                            R8 3
       28 LOADN                            R9 4
       29 LOADN                            R10 156
       30 SETLIST                          R5 R6 5 [1]
       32 NEWTABLE                         R6 0 4
       34 LOADK                            R7 K10 [1200769]
       35 LOADK                            R8 K11 [14649879]
       36 LOADK                            R9 K12 [32973243]
       37 LOADK                            R10 K13 [2523540]
       38 SETLIST                          R6 R7 4 [1]
       40 DUPCLOSURE                       R7 K14 [PROTO_0]
       41 DUPCLOSURE                       R8 K15 [PROTO_1]
       42 DUPCLOSURE                       R9 K16 [PROTO_6]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 RETURN                           R9 1
