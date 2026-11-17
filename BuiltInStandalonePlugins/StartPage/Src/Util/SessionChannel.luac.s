PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADK                            R0 K0 [""]
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 RETURN                           R0 1

PROTO_1:
        0 ORK                              R1 R0 K0 [""]
        1 SETUPVAL                         R1 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["visible"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R0 K1 ["entries"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K2 ["launchable"]
       15 JUMPIFEQKB                       R7 FALSE ; [+8]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K5 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-12]
       26 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["switchableEntries"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K1 ["id"]
        8 JUMPIFNOTEQ                      R7 R1 ; [+3]
       10 LOADB                            R7 1
       11 RETURN                           R7 1
       12 FORGLOOP                         R2 2 ; [-7]
       14 LOADB                            R2 0
       15 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StartPageManager"]
        3 NAMECALL                         R0 R0 K1 ["getChannelSwitcherStateAsync"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R0 ; [+3]
       12 JUMPIFNOT                        R1 ; [+2]
       13 MOVE                             R2 R1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 JUMPIFNOT                        R2 ; [+28]
       17 SETUPVAL                         R2 3
       18 GETIMPORT                        R3 K5 [os.clock]
       20 CALL                             R3 0 1
       21 SETUPVAL                         R3 4
       22 GETUPVAL                         R3 5
       23 JUMPIFEQKS                       R3 K6 [""] ; [+22]
       25 GETUPVAL                         R5 5
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R6 R6 K7 ["switchableEntries"]
       29 MOVE                             R7 R2
       30 CALL                             R6 1 3
       31 FORGPREP                         R6
       32 GETTABLEKS                       R11 R10 K8 ["id"]
       34 JUMPIFNOTEQ                      R11 R5 ; [+3]
       36 LOADB                            R3 1
       37 JUMP                             ; [+3]
       38 FORGLOOP                         R6 2 ; [-7]
       40 LOADB                            R3 0
       41 JUMPIF                           R3 ; [+4]
       42 LOADK                            R3 K6 [""]
       43 SETUPVAL                         R3 5
       44 JUMP                             ; [+1]
       45 GETUPVAL                         R2 3
       46 LOADNIL                          R3
       47 SETUPVAL                         R3 7
       48 GETUPVAL                         R3 8
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 FORGPREP                         R3
       52 MOVE                             R8 R7
       53 MOVE                             R9 R2
       54 CALL                             R8 1 0
       55 FORGLOOP                         R3 2 ; [-4]
       57 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETIMPORT                        R2 K2 [os.clock]
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 1
        6 SUB                              R1 R2 R3
        7 LOADN                            R2 600
        8 JUMPIFNOTLT                      R1 R2 ; [+5]
       10 MOVE                             R1 R0
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 JUMPIFNOT                        R1 ; [+8]
       16 GETUPVAL                         R2 2
       17 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R1 K5 [table.insert]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0
       24 NEWTABLE                         R1 0 1
       26 MOVE                             R2 R0
       27 SETLIST                          R1 R2 1 [1]
       29 SETUPVAL                         R1 2
       30 GETUPVAL                         R2 3
       31 GETIMPORT                        R3 K8 [task.spawn]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R1
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R0 K0 [""]
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 LOADN                            R0 0
        5 SETUPVAL                         R0 2
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 3
        8 GETUPVAL                         R0 4
        9 ADDK                             R0 R0 K1 [1]
       10 SETUPVAL                         R0 4
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagStudioChannelSwitcherUI"]
       31 CALL                             R3 1 1
       32 LOADK                            R4 K12 [""]
       33 LOADNIL                          R5
       34 LOADN                            R6 0
       35 LOADNIL                          R7
       36 LOADN                            R8 0
       37 NEWTABLE                         R9 8 0
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          REF R4
       42 SETTABLEKS                       R10 R9 K13 ["get"]
       44 NEWCLOSURE                       R10 P1
       45 CAPTURE                          REF R4
       46 SETTABLEKS                       R10 R9 K14 ["set"]
       48 DUPCLOSURE                       R10 K15 [PROTO_2]
       49 SETTABLEKS                       R10 R9 K16 ["switchableEntries"]
       51 DUPCLOSURE                       R10 K17 [PROTO_3]
       52 CAPTURE                          VAL R9
       53 NEWCLOSURE                       R11 P4
       54 CAPTURE                          REF R5
       55 CAPTURE                          REF R6
       56 CAPTURE                          REF R7
       57 CAPTURE                          REF R8
       58 CAPTURE                          VAL R1
       59 CAPTURE                          REF R4
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R11 R9 K18 ["fetchState"]
       63 NEWCLOSURE                       R11 P5
       64 CAPTURE                          REF R4
       65 CAPTURE                          REF R5
       66 CAPTURE                          REF R6
       67 CAPTURE                          REF R7
       68 CAPTURE                          REF R8
       69 SETTABLEKS                       R11 R9 K19 ["reset"]
       71 CLOSEUPVALS                      R4
       72 RETURN                           R9 1
