PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["disconnect"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onConnect"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K1 ["current"]
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K2 ["setUserSettingsAsync"]
       14 LOADK                            R2 K3 ["mcp-server"]
       15 NEWTABLE                         R3 1 0
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K4 ["enabled"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["run"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 NEWTABLE                         R2 1 0
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K2 ["enabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K0 ["run"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["mcp-server"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["enabled"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADB                            R1 0
       10 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["ok"] ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["value"]
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K2 ["get"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R6 K3 ["connected"]
       18 JUMP                             ; [+1]
       19 LOADK                            R6 K4 ["disconnected"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K5 ["useCallback"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R9 0 0
       27 CALL                             R7 2 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       31 NEWCLOSURE                       R9 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R10 0 3
       39 MOVE                             R11 R4
       40 GETTABLEKS                       R12 R5 K6 ["run"]
       42 GETTABLEKS                       R13 R0 K7 ["onConnect"]
       44 SETLIST                          R10 R11 3 [1]
       46 CALL                             R8 2 1
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       50 NEWCLOSURE                       R10 P2
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 NEWTABLE                         R11 0 3
       57 MOVE                             R12 R4
       58 MOVE                             R13 R7
       59 GETTABLEKS                       R14 R5 K6 ["run"]
       61 SETLIST                          R11 R12 3 [1]
       63 CALL                             R9 2 1
       64 GETUPVAL                         R10 3
       65 NEWCLOSURE                       R11 P3
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R12 0 0
       69 CALL                             R10 2 1
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R11 R12 K8 ["useEffect"]
       73 NEWCLOSURE                       R12 P4
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R8
       76 NEWTABLE                         R13 0 2
       78 MOVE                             R14 R10
       79 MOVE                             R15 R8
       80 SETLIST                          R13 R14 2 [1]
       82 CALL                             R11 2 0
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R11 R12 K8 ["useEffect"]
       86 NEWCLOSURE                       R12 P5
       87 CAPTURE                          VAL R7
       88 NEWTABLE                         R13 0 1
       90 MOVE                             R14 R7
       91 SETLIST                          R13 R14 1 [1]
       93 CALL                             R11 2 0
       94 DUPTABLE                         R11 K13 [{"state", "start", "stop", "isBusy"}]
       95 SETTABLEKS                       R6 R11 K9 ["state"]
       97 SETTABLEKS                       R8 R11 K10 ["start"]
       99 SETTABLEKS                       R9 R11 K11 ["stop"]
      101 GETTABLEKS                       R12 R5 K14 ["isProcessing"]
      103 SETTABLEKS                       R12 R11 K12 ["isBusy"]
      105 GETUPVAL                         R12 4
      106 GETUPVAL                         R14 5
      107 GETTABLEKS                       R13 R14 K15 ["Provider"]
      109 DUPTABLE                         R14 K17 [{"value"}]
      110 SETTABLEKS                       R11 R14 K16 ["value"]
      112 GETTABLEKS                       R15 R0 K18 ["children"]
      114 CALL                             R12 3 -1
      115 RETURN                           R12 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       32 GETTABLEKS                       R5 R6 K12 ["useAsyncGuard"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K13 ["useAsync"]
       37 GETTABLEKS                       R6 R2 K14 ["createElement"]
       39 DUPTABLE                         R7 K19 [{"state", "isBusy", "start", "stop"}]
       40 LOADK                            R8 K20 ["disconnected"]
       41 SETTABLEKS                       R8 R7 K15 ["state"]
       43 LOADB                            R8 0
       44 SETTABLEKS                       R8 R7 K16 ["isBusy"]
       46 DUPCLOSURE                       R8 K21 [PROTO_0]
       47 SETTABLEKS                       R8 R7 K17 ["start"]
       49 DUPCLOSURE                       R8 K22 [PROTO_1]
       50 SETTABLEKS                       R8 R7 K18 ["stop"]
       52 GETTABLEKS                       R8 R2 K23 ["createContext"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K24 [PROTO_11]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R10 K25 [PROTO_12]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R8
       66 DUPTABLE                         R11 K29 [{"Context", "Provider", "useExternalServer"}]
       67 SETTABLEKS                       R8 R11 K26 ["Context"]
       69 SETTABLEKS                       R9 R11 K27 ["Provider"]
       71 SETTABLEKS                       R10 R11 K28 ["useExternalServer"]
       73 RETURN                           R11 1
