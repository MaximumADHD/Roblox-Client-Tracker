PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["threads"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K1 ["messageLoadState"]
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["current"]
       14 GETUPVAL                         R3 1
       15 GETTABLE                         R1 R2 R3
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K2 ["current"]
       21 GETUPVAL                         R2 1
       22 LOADB                            R3 1
       23 SETTABLE                         R3 R1 R2
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K3 ["getCoordinator"]
       27 CALL                             R1 0 1
       28 GETTABLEKS                       R2 R1 K4 ["requestLoad"]
       30 DUPTABLE                         R3 K8 [{"scope", "threadId", "loadUntilMessageId"}]
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K9 ["Messages"]
       34 SETTABLEKS                       R4 R3 K5 ["scope"]
       36 GETUPVAL                         R4 1
       37 SETTABLEKS                       R4 R3 K6 ["threadId"]
       39 GETUPVAL                         R5 5
       40 CALL                             R5 0 1
       41 JUMPIFNOT                        R5 ; [+8]
       42 GETTABLEKS                       R5 R0 K10 ["metadata"]
       44 JUMPIFNOT                        R5 ; [+5]
       45 GETTABLEKS                       R4 R0 K10 ["metadata"]
       47 GETTABLEKS                       R4 R4 K7 ["loadUntilMessageId"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K7 ["loadUntilMessageId"]
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["conversation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useRef"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K4 ["threadId"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["useContext"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K1 ["Context"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R5 K5 ["sessionId"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R9 0 1
       40 MOVE                             R10 R1
       41 SETLIST                          R9 R10 1 [1]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K3 ["useRef"]
       47 NEWTABLE                         R8 0 0
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R7
       55 NEWTABLE                         R10 0 1
       57 MOVE                             R11 R6
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 0
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       64 NEWCLOSURE                       R9 P2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U6
       71 NEWTABLE                         R10 0 2
       73 MOVE                             R11 R1
       74 MOVE                             R12 R4
       75 SETLIST                          R10 R11 2 [1]
       77 CALL                             R8 2 0
       78 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["threads"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["threads"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R9 R7 K4 ["threadId"]
       17 GETTABLE                         R8 R2 R9
       18 JUMPIF                           R8 ; [+3]
       19 GETTABLEKS                       R8 R7 K4 ["threadId"]
       21 SETTABLE                         R7 R2 R8
       22 FORGLOOP                         R3 2 ; [-8]
       24 SETTABLEKS                       R2 R1 K3 ["threads"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K5 ["Loaded"]
       29 SETTABLEKS                       R3 R1 K6 ["threadLoadState"]
       31 DUPTABLE                         R3 K8 [{"nextCursor"}]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K7 ["nextCursor"]
       35 SETTABLEKS                       R4 R3 K7 ["nextCursor"]
       37 SETTABLEKS                       R3 R1 K9 ["threadPageState"]
       39 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["createdAt"]
        2 GETTABLEKS                       R3 R1 K0 ["createdAt"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["createdAt"]
        8 GETTABLEKS                       R4 R1 K0 ["createdAt"]
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K1 ["messageId"]
       17 GETTABLEKS                       R4 R1 K1 ["messageId"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["createdAt"]
        2 GETTABLEKS                       R3 R1 K0 ["createdAt"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["createdAt"]
        8 GETTABLEKS                       R4 R1 K0 ["createdAt"]
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K1 ["contentId"]
       17 GETTABLEKS                       R4 R1 K1 ["contentId"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["messages"]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["messages"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLE                         R8 R1 R6
       11 JUMPIF                           R8 ; [+7]
       12 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       14 MOVE                             R9 R2
       15 MOVE                             R10 R7
       16 GETIMPORT                        R8 K3 [table.insert]
       18 CALL                             R8 2 0
       19 FORGLOOP                         R3 2 ; [-10]
       21 GETIMPORT                        R3 K5 [table.sort]
       23 MOVE                             R4 R2
       24 DUPCLOSURE                       R5 K6 [PROTO_5]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R4 R0 K8 ["messageCountLoaded"]
       28 ORK                              R3 R4 K7 [0]
       29 MOVE                             R4 R2
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 MINUS                            R10 R3
       34 SUB                              R9 R10 R7
       35 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       37 NEWTABLE                         R9 0 0
       39 GETTABLEKS                       R10 R8 K10 ["contents"]
       41 LOADNIL                          R11
       42 LOADNIL                          R12
       43 FORGPREP                         R10
       44 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       46 MOVE                             R16 R9
       47 MOVE                             R17 R14
       48 GETIMPORT                        R15 K3 [table.insert]
       50 CALL                             R15 2 0
       51 FORGLOOP                         R10 2 ; [-8]
       53 GETIMPORT                        R10 K5 [table.sort]
       55 MOVE                             R11 R9
       56 DUPCLOSURE                       R12 K11 [PROTO_6]
       57 CALL                             R10 2 0
       58 GETTABLEKS                       R11 R8 K12 ["contentCountLoaded"]
       60 ORK                              R10 R11 K7 [0]
       61 MOVE                             R11 R9
       62 LOADNIL                          R12
       63 LOADNIL                          R13
       64 FORGPREP                         R11
       65 MINUS                            R17 R10
       66 SUB                              R16 R17 R14
       67 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
       69 FORGLOOP                         R11 2 ; [-5]
       71 LENGTH                           R12 R9
       72 ADD                              R11 R10 R12
       73 SETTABLEKS                       R11 R8 K12 ["contentCountLoaded"]
       75 GETTABLEKS                       R11 R8 K13 ["messageId"]
       77 SETTABLE                         R8 R1 R11
       78 FORGLOOP                         R4 2 ; [-46]
       80 SETTABLEKS                       R1 R0 K0 ["messages"]
       82 LENGTH                           R5 R2
       83 ADD                              R4 R3 R5
       84 SETTABLEKS                       R4 R0 K8 ["messageCountLoaded"]
       86 GETUPVAL                         R4 1
       87 GETTABLEKS                       R4 R4 K14 ["Loaded"]
       89 SETTABLEKS                       R4 R0 K15 ["messageLoadState"]
       91 DUPTABLE                         R4 K17 [{"nextCursor"}]
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R5 R5 K16 ["nextCursor"]
       95 SETTABLEKS                       R5 R4 K16 ["nextCursor"]
       97 SETTABLEKS                       R4 R0 K18 ["messagePageState"]
       99 MOVE                             R4 R0
      100 DUPTABLE                         R5 K21 [{["rawTransformValues"] = True}]
      101 RETURN                           R4 2

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+7]
        7 GETUPVAL                         R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["scope"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["Messages"]
       18 JUMPIFNOTEQ                      R1 R2 ; [+27]
       20 GETTABLEKS                       R1 R0 K3 ["messages"]
       22 LOADNIL                          R2
       23 LOADNIL                          R3
       24 FORGPREP                         R1
       25 GETTABLEKS                       R6 R5 K4 ["contents"]
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R11 R11 K5 ["hydrate"]
       33 MOVE                             R12 R10
       34 CALL                             R11 1 0
       35 FORGLOOP                         R6 2 ; [-6]
       37 FORGLOOP                         R1 2 ; [-13]
       39 GETUPVAL                         R1 4
       40 GETTABLEKS                       R2 R0 K6 ["threadId"]
       42 NEWCLOSURE                       R3 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U2
       45 CALL                             R1 2 0
       46 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadLoadState"]
        7 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["messageLoadState"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["scope"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+6]
        7 GETUPVAL                         R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K0 ["scope"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["Messages"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+7]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R3 R1 K3 ["threadId"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["threads"]
        3 SETLIST                          R1 R2 1 [1]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 4
        9 JUMPIF                           R2 ; [+19]
       10 GETIMPORT                        R6 K2 [warn]
       12 LOADK                            R7 K3 ["Failed to clone path for clearing dirty:"]
       13 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R8 K6 [table.unpack]
       17 CALL                             R8 1 -1
       18 CALL                             R6 -1 0
       19 GETIMPORT                        R6 K2 [warn]
       21 LOADK                            R8 K7 ["Failed at key: %*"]
       22 MOVE                             R10 R5
       23 NAMECALL                         R8 R8 K8 ["format"]
       25 CALL                             R8 2 1
       26 MOVE                             R7 R8
       27 CALL                             R6 1 0
       28 RETURN                           R0 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K9 ["threadIds"]
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 GETTABLE                         R11 R4 R9
       36 JUMPIFNOT                        R11 ; [+12]
       37 GETTABLEKS                       R12 R11 K10 ["updatedAt"]
       39 JUMPIFNOTEQ                      R12 R10 ; [+9]
       41 GETIMPORT                        R12 K12 [table.clone]
       43 MOVE                             R13 R11
       44 CALL                             R12 1 1
       45 LOADB                            R13 0
       46 SETTABLEKS                       R13 R12 K13 ["isDirty"]
       48 SETTABLE                         R12 R4 R9
       49 FORGLOOP                         R6 2 ; [-15]
       51 RETURN                           R3 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["messages"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R2 K3 [table.clone]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K4 ["messageIds"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLE                         R8 R2 R6
       15 JUMPIFNOT                        R8 ; [+12]
       16 GETTABLEKS                       R9 R8 K5 ["updatedAt"]
       18 JUMPIFNOTEQ                      R9 R7 ; [+9]
       20 GETIMPORT                        R9 K3 [table.clone]
       22 MOVE                             R10 R8
       23 CALL                             R9 1 1
       24 LOADB                            R10 0
       25 SETTABLEKS                       R10 R9 K6 ["isDirty"]
       27 SETTABLE                         R9 R2 R6
       28 FORGLOOP                         R3 2 ; [-15]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K7 ["contentIds"]
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 GETTABLE                         R8 R2 R6
       37 JUMPIFNOT                        R8 ; [+42]
       38 LOADNIL                          R9
       39 MOVE                             R10 R7
       40 LOADNIL                          R11
       41 LOADNIL                          R12
       42 FORGPREP                         R10
       43 MOVE                             R15 R9
       44 JUMPIF                           R15 ; [+2]
       45 GETTABLEKS                       R15 R8 K8 ["contents"]
       47 GETTABLE                         R16 R15 R13
       48 JUMPIFNOT                        R16 ; [+20]
       49 GETTABLEKS                       R17 R16 K5 ["updatedAt"]
       51 JUMPIFNOTEQ                      R17 R14 ; [+17]
       53 JUMPIFNOTEQKNIL                  R9 ; [+7]
       55 GETIMPORT                        R17 K3 [table.clone]
       57 GETTABLEKS                       R18 R8 K8 ["contents"]
       59 CALL                             R17 1 1
       60 MOVE                             R9 R17
       61 GETIMPORT                        R17 K3 [table.clone]
       63 MOVE                             R18 R16
       64 CALL                             R17 1 1
       65 LOADB                            R18 0
       66 SETTABLEKS                       R18 R17 K6 ["isDirty"]
       68 SETTABLE                         R17 R9 R13
       69 FORGLOOP                         R10 2 ; [-27]
       71 JUMPIFEQKNIL                     R9 ; [+8]
       73 GETIMPORT                        R10 K3 [table.clone]
       75 MOVE                             R11 R8
       76 CALL                             R10 1 1
       77 SETTABLEKS                       R9 R10 K8 ["contents"]
       79 SETTABLE                         R10 R2 R6
       80 FORGLOOP                         R3 2 ; [-45]
       82 SETTABLEKS                       R2 R0 K0 ["messages"]
       84 MOVE                             R3 R0
       85 DUPTABLE                         R4 K11 [{["rawTransformValues"] = True}]
       86 RETURN                           R3 2

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["scope"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Threads"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+7]
        7 GETUPVAL                         R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["scope"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["Messages"]
       18 JUMPIFNOTEQ                      R1 R2 ; [+7]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R2 R0 K3 ["threadId"]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          VAL R0
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getCoordinator"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["onLoadReady"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R2 R0 K2 ["onLoadStateChanged"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U5
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R0 K3 ["onClearDirty"]
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U5
       27 CALL                             R3 1 1
       28 NEWCLOSURE                       R4 P3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+26]
       11 GETTABLEKS                       R3 R2 K1 ["threads"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R8 R8 K2 ["getPlanMessageIdForThread"]
       19 MOVE                             R9 R6
       20 CALL                             R8 1 1
       21 JUMPIFNOT                        R8 ; [+13]
       22 GETTABLEKS                       R9 R7 K3 ["metadata"]
       24 JUMPIF                           R9 ; [+6]
       25 DUPTABLE                         R9 K5 [{"loadUntilMessageId"}]
       26 SETTABLEKS                       R8 R9 K4 ["loadUntilMessageId"]
       28 SETTABLEKS                       R9 R7 K3 ["metadata"]
       30 JUMP                             ; [+4]
       31 GETTABLEKS                       R9 R7 K3 ["metadata"]
       33 SETTABLEKS                       R8 R9 K4 ["loadUntilMessageId"]
       35 FORGLOOP                         R3 2 ; [-20]
       37 GETIMPORT                        R3 K7 [next]
       39 GETTABLEKS                       R4 R2 K1 ["threads"]
       41 CALL                             R3 1 1
       42 JUMPIFNOT                        R3 ; [+18]
       43 GETUPVAL                         R3 4
       44 GETTABLEKS                       R3 R3 K8 ["provideSaveData"]
       46 DUPTABLE                         R4 K10 [{"scope", "threads", "metadata"}]
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R5 R5 K11 ["Threads"]
       50 SETTABLEKS                       R5 R4 K9 ["scope"]
       52 GETTABLEKS                       R5 R2 K1 ["threads"]
       54 SETTABLEKS                       R5 R4 K1 ["threads"]
       56 GETTABLEKS                       R5 R0 K3 ["metadata"]
       58 SETTABLEKS                       R5 R4 K3 ["metadata"]
       60 CALL                             R3 1 0
       61 GETTABLEKS                       R3 R2 K12 ["messages"]
       63 LOADNIL                          R4
       64 LOADNIL                          R5
       65 FORGPREP                         R3
       66 NEWTABLE                         R8 0 0
       68 GETTABLEKS                       R10 R2 K13 ["contents"]
       70 GETTABLE                         R9 R10 R6
       71 JUMPIFNOT                        R9 ; [+14]
       72 MOVE                             R10 R7
       73 LOADNIL                          R11
       74 LOADNIL                          R12
       75 FORGPREP                         R10
       76 GETIMPORT                        R15 K16 [table.clone]
       78 MOVE                             R16 R14
       79 CALL                             R15 1 1
       80 GETTABLE                         R16 R9 R13
       81 SETTABLEKS                       R16 R15 K13 ["contents"]
       83 SETTABLE                         R15 R8 R13
       84 FORGLOOP                         R10 2 ; [-9]
       86 GETUPVAL                         R10 4
       87 GETTABLEKS                       R10 R10 K8 ["provideSaveData"]
       89 DUPTABLE                         R11 K18 [{"scope", "threadId", "messages", "metadata"}]
       90 GETUPVAL                         R12 5
       91 GETTABLEKS                       R12 R12 K19 ["Messages"]
       93 SETTABLEKS                       R12 R11 K9 ["scope"]
       95 SETTABLEKS                       R6 R11 K17 ["threadId"]
       97 SETTABLEKS                       R8 R11 K12 ["messages"]
       99 GETTABLEKS                       R12 R0 K3 ["metadata"]
      101 SETTABLEKS                       R12 R11 K3 ["metadata"]
      103 CALL                             R10 1 0
      104 FORGLOOP                         R3 2 ; [-39]
      106 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getCoordinator"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["onSaveRequested"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U5
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 3
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U8
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R7 R1
       27 MOVE                             R8 R3
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          UPVAL U10
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U5
       41 NEWTABLE                         R6 0 0
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Persistence"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["PersistentPlanRuntime"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Util"]
       39 GETTABLEKS                       R6 R6 K14 ["Serializer"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["SessionIdContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K16 ["ThreadIdContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K9 ["Util"]
       69 GETTABLEKS                       R10 R10 K18 ["clonePath"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K9 ["Util"]
       76 GETTABLEKS                       R11 R11 K10 ["Persistence"]
       78 GETTABLEKS                       R11 R11 K19 ["getDirtyConversationState"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K21 ["useEditThread"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K22 ["Flags"]
       92 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantMarkdownPlanMode"]
       94 CALL                             R12 1 1
       95 GETTABLEKS                       R13 R8 K24 ["PersistenceLoadStates"]
       97 GETTABLEKS                       R14 R8 K25 ["ScopeTypes"]
       99 DUPCLOSURE                       R15 K26 [PROTO_3]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 DUPCLOSURE                       R16 K27 [PROTO_20]
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R3
      120 RETURN                           R16 1
