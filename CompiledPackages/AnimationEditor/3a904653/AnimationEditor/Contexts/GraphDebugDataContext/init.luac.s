PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeMap"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADNIL                          R2
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R7 K1 ["debugTargetIdentifier"]
       12 GETTABLEKS                       R8 R8 K2 ["type"]
       14 GETUPVAL                         R9 1
       15 JUMPIFNOTEQ                      R8 R9 ; [+3]
       17 GETTABLEKS                       R2 R7 K1 ["debugTargetIdentifier"]
       19 FORGLOOP                         R3 2 ; [-10]
       21 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.PlayServer]
        3 JUMPIFNOTEQ                      R0 R2 ; [+3]
        5 LOADK                            R1 K4 ["server"]
        6 JUMP                             ; [+7]
        7 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.PlayClient]
        9 JUMPIFNOTEQ                      R0 R2 ; [+3]
       11 LOADK                            R1 K7 ["client"]
       12 JUMP                             ; [+1]
       13 LOADK                            R1 K8 ["edit"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K9 ["createComputed"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          REF R1
       20 CALL                             R2 1 -1
       21 CLOSEUPVALS                      R1
       22 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getObserveCurrentDataModelType"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["switchMap"]
        8 MOVE                             R2 R0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observe"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["toLookupKey"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 -1
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["observe"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["debugTargetIdentifierToId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["get"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["set"]
       15 MOVE                             R5 R2
       16 LOADNIL                          R6
       17 CALL                             R4 2 0
       18 JUMP                             ; [+10]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K2 ["set"]
       22 MOVE                             R5 R2
       23 DUPTABLE                         R6 K5 [{"debugTargetIdentifier", "debugDataMap"}]
       24 SETTABLEKS                       R0 R6 K3 ["debugTargetIdentifier"]
       26 SETTABLEKS                       R1 R6 K4 ["debugDataMap"]
       28 CALL                             R4 2 0
       29 NEWTABLE                         R4 0 0
       31 JUMPIFNOT                        R3 ; [+12]
       32 GETTABLEKS                       R5 R3 K4 ["debugDataMap"]
       34 JUMPIFNOT                        R5 ; [+9]
       35 GETTABLEKS                       R5 R3 K4 ["debugDataMap"]
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 LOADB                            R10 1
       41 SETTABLE                         R10 R4 R8
       42 FORGLOOP                         R5 1 ; [-3]
       44 JUMPIFNOT                        R1 ; [+20]
       45 MOVE                             R5 R1
       46 LOADNIL                          R6
       47 LOADNIL                          R7
       48 FORGPREP                         R5
       49 LOADNIL                          R10
       50 SETTABLE                         R10 R4 R8
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K6 ["toLookupKey"]
       54 MOVE                             R11 R0
       55 MOVE                             R12 R8
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R11 R11 K2 ["set"]
       60 MOVE                             R12 R10
       61 MOVE                             R13 R9
       62 CALL                             R11 2 0
       63 FORGLOOP                         R5 2 ; [-15]
       65 MOVE                             R5 R4
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 FORGPREP                         R5
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K6 ["toLookupKey"]
       72 MOVE                             R11 R0
       73 MOVE                             R12 R8
       74 CALL                             R10 2 1
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R11 R11 K2 ["set"]
       78 MOVE                             R12 R10
       79 LOADNIL                          R13
       80 CALL                             R11 2 0
       81 FORGLOOP                         R5 1 ; [-13]
       83 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["setMap"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["setMap"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 DUPTABLE                         R0 K5 [{"setDebugDataAsync_DEPRECATED", "observeDebugData_DEPRECATED", "setDebugDataAsync", "observeDebugData", "observeActiveDebugTargetIdentifier"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["createUnimplemented"]
        4 LOADK                            R2 K0 ["setDebugDataAsync_DEPRECATED"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K0 ["setDebugDataAsync_DEPRECATED"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K6 ["createUnimplemented"]
       11 LOADK                            R2 K1 ["observeDebugData_DEPRECATED"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K1 ["observeDebugData_DEPRECATED"]
       15 GETUPVAL                         R1 1
       16 SETTABLEKS                       R1 R0 K2 ["setDebugDataAsync"]
       18 GETUPVAL                         R1 2
       19 SETTABLEKS                       R1 R0 K3 ["observeDebugData"]
       21 GETUPVAL                         R1 3
       22 SETTABLEKS                       R1 R0 K4 ["observeActiveDebugTargetIdentifier"]
       24 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setMap"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R0 K5 [{"setDebugDataAsync_DEPRECATED", "observeDebugData_DEPRECATED", "observeDebugData", "setDebugDataAsync", "observeActiveDebugTargetIdentifier"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["setDebugDataAsync_DEPRECATED"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K6 ["observe"]
        7 SETTABLEKS                       R1 R0 K1 ["observeDebugData_DEPRECATED"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K7 ["createUnimplemented"]
       12 LOADK                            R2 K8 ["observeDebugData requires getFFlagAnimGraphUI_RunTimeDebug"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K2 ["observeDebugData"]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K7 ["createUnimplemented"]
       19 LOADK                            R2 K9 ["setDebugDataAsync requires getFFlagAnimGraphUI_RunTimeDebug"]
       20 CALL                             R1 1 1
       21 SETTABLEKS                       R1 R0 K3 ["setDebugDataAsync"]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K10 ["of"]
       26 LOADNIL                          R2
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K4 ["observeActiveDebugTargetIdentifier"]
       30 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+107]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U4
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R1 K1 ["observe"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 1
       23 MOVE                             R4 R5
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R7 0 1
       33 GETTABLEKS                       R8 R1 K2 ["set"]
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R6 R6 K3 ["useConsumer"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 GETUPVAL                         R7 6
       44 GETTABLEKS                       R7 R7 K4 ["useSignalConsumer"]
       46 LOADNIL                          R8
       47 CALL                             R7 1 1
       48 GETUPVAL                         R8 7
       49 GETTABLEKS                       R8 R8 K4 ["useSignalConsumer"]
       51 LOADNIL                          R9
       52 CALL                             R8 1 1
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R11 0 2
       62 MOVE                             R12 R7
       63 GETTABLEKS                       R13 R2 K6 ["setMap"]
       65 SETLIST                          R11 R12 2 [1]
       67 CALL                             R9 2 0
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       71 NEWCLOSURE                       R10 P3
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R1
       75 NEWTABLE                         R11 0 2
       77 MOVE                             R12 R7
       78 GETTABLEKS                       R13 R1 K6 ["setMap"]
       80 SETLIST                          R11 R12 2 [1]
       82 CALL                             R9 2 0
       83 GETUPVAL                         R9 3
       84 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       86 NEWCLOSURE                       R10 P4
       87 CAPTURE                          UPVAL U9
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 NEWTABLE                         R11 0 3
       93 MOVE                             R12 R6
       94 MOVE                             R13 R4
       95 MOVE                             R14 R3
       96 SETLIST                          R11 R12 3 [1]
       98 CALL                             R9 2 1
       99 GETUPVAL                         R10 3
      100 GETTABLEKS                       R10 R10 K8 ["createElement"]
      102 GETUPVAL                         R11 10
      103 GETTABLEKS                       R11 R11 K9 ["Provider"]
      105 DUPTABLE                         R12 K11 [{"value"}]
      106 SETTABLEKS                       R9 R12 K10 ["value"]
      108 GETTABLEKS                       R13 R0 K12 ["children"]
      110 CALL                             R10 3 -1
      111 RETURN                           R10 -1
      112 GETUPVAL                         R2 3
      113 GETTABLEKS                       R2 R2 K13 ["useState"]
      115 NEWTABLE                         R3 0 0
      117 CALL                             R2 1 2
      118 GETUPVAL                         R4 3
      119 GETTABLEKS                       R4 R4 K0 ["useCallback"]
      121 NEWCLOSURE                       R5 P5
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R1
      124 NEWTABLE                         R6 0 2
      126 MOVE                             R7 R1
      127 GETTABLEKS                       R8 R1 K6 ["setMap"]
      129 SETLIST                          R6 R7 2 [1]
      131 CALL                             R4 2 1
      132 GETUPVAL                         R5 11
      133 GETTABLEKS                       R5 R5 K14 ["useReplicatedState"]
      135 LOADK                            R6 K15 ["GraphDebugData_DebugData_DEPRECATED"]
      136 MOVE                             R7 R2
      137 CALL                             R5 2 0
      138 GETUPVAL                         R5 11
      139 GETTABLEKS                       R5 R5 K16 ["useBoundAction"]
      141 LOADK                            R6 K17 ["GraphDebugData_SetDebugData_DEPRECATED"]
      142 MOVE                             R7 R4
      143 CALL                             R5 2 0
      144 GETUPVAL                         R5 3
      145 GETTABLEKS                       R5 R5 K7 ["useMemo"]
      147 NEWCLOSURE                       R6 P6
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R1
      150 CAPTURE                          UPVAL U9
      151 CAPTURE                          UPVAL U12
      152 NEWTABLE                         R7 0 2
      154 MOVE                             R8 R4
      155 GETTABLEKS                       R9 R1 K1 ["observe"]
      157 SETLIST                          R7 R8 2 [1]
      159 CALL                             R5 2 1
      160 GETUPVAL                         R6 3
      161 GETTABLEKS                       R6 R6 K8 ["createElement"]
      163 GETUPVAL                         R7 10
      164 GETTABLEKS                       R7 R7 K9 ["Provider"]
      166 DUPTABLE                         R8 K11 [{"value"}]
      167 SETTABLEKS                       R5 R8 K10 ["value"]
      169 GETTABLEKS                       R9 R0 K12 ["children"]
      171 CALL                             R6 3 -1
      172 RETURN                           R6 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["debugTargetIdentifierToId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["get"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K2 ["set"]
       15 MOVE                             R5 R2
       16 LOADNIL                          R6
       17 CALL                             R4 2 0
       18 JUMP                             ; [+10]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K2 ["set"]
       22 MOVE                             R5 R2
       23 DUPTABLE                         R6 K5 [{"debugTargetIdentifier", "debugDataMap"}]
       24 SETTABLEKS                       R0 R6 K3 ["debugTargetIdentifier"]
       26 SETTABLEKS                       R1 R6 K4 ["debugDataMap"]
       28 CALL                             R4 2 0
       29 NEWTABLE                         R4 0 0
       31 JUMPIFNOT                        R3 ; [+12]
       32 GETTABLEKS                       R5 R3 K4 ["debugDataMap"]
       34 JUMPIFNOT                        R5 ; [+9]
       35 GETTABLEKS                       R5 R3 K4 ["debugDataMap"]
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 LOADB                            R10 1
       41 SETTABLE                         R10 R4 R8
       42 FORGLOOP                         R5 1 ; [-3]
       44 JUMPIFNOT                        R1 ; [+20]
       45 MOVE                             R5 R1
       46 LOADNIL                          R6
       47 LOADNIL                          R7
       48 FORGPREP                         R5
       49 LOADNIL                          R10
       50 SETTABLE                         R10 R4 R8
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K6 ["toLookupKey"]
       54 MOVE                             R11 R0
       55 MOVE                             R12 R8
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R11 R11 K2 ["set"]
       60 MOVE                             R12 R10
       61 MOVE                             R13 R9
       62 CALL                             R11 2 0
       63 FORGLOOP                         R5 2 ; [-15]
       65 MOVE                             R5 R4
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 FORGPREP                         R5
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K6 ["toLookupKey"]
       72 MOVE                             R11 R0
       73 MOVE                             R12 R8
       74 CALL                             R10 2 1
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R11 R11 K2 ["set"]
       78 MOVE                             R12 R10
       79 LOADNIL                          R13
       80 CALL                             R11 2 0
       81 FORGLOOP                         R5 1 ; [-13]
       83 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEphemeralGraphByAssetIdAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["retrievalData"]
        6 GETTABLEKS                       R1 R1 K2 ["animationId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEphemeralGraphByAssetIdAsync"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+17]
        4 GETTABLEKS                       R2 R1 K0 ["retrievalData"]
        6 GETTABLEKS                       R2 R2 K1 ["animationId"]
        8 JUMPIFNOT                        R2 ; [+12]
        9 GETTABLEKS                       R2 R1 K0 ["retrievalData"]
       11 GETTABLEKS                       R2 R2 K2 ["loadAsEphemeral"]
       13 JUMPIFNOT                        R2 ; [+7]
       14 GETIMPORT                        R2 K5 [task.spawn]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [task.spawn]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_20:
        0 DUPTABLE                         R0 K5 [{"setDebugDataAsync_DEPRECATED", "observeDebugData_DEPRECATED", "setDebugDataAsync", "observeDebugData", "observeActiveDebugTargetIdentifier"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["createUnimplemented"]
        4 LOADK                            R2 K0 ["setDebugDataAsync_DEPRECATED"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K0 ["setDebugDataAsync_DEPRECATED"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K6 ["createUnimplemented"]
       11 LOADK                            R2 K1 ["observeDebugData_DEPRECATED"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K1 ["observeDebugData_DEPRECATED"]
       15 GETUPVAL                         R1 1
       16 SETTABLEKS                       R1 R0 K2 ["setDebugDataAsync"]
       18 GETUPVAL                         R1 2
       19 SETTABLEKS                       R1 R0 K3 ["observeDebugData"]
       21 GETUPVAL                         R1 3
       22 SETTABLEKS                       R1 R0 K4 ["observeActiveDebugTargetIdentifier"]
       24 RETURN                           R0 1

PROTO_21:
        0 DUPTABLE                         R0 K5 [{"setDebugDataAsync_DEPRECATED", "observeDebugData_DEPRECATED", "observeDebugData", "setDebugDataAsync", "observeActiveDebugTargetIdentifier"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["setDebugDataAsync_DEPRECATED"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K6 ["observe"]
        7 SETTABLEKS                       R1 R0 K1 ["observeDebugData_DEPRECATED"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K7 ["createUnimplemented"]
       12 LOADK                            R2 K8 ["observeDebugData requires getFFlagAnimGraphUI_RunTimeDebug"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K2 ["observeDebugData"]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K7 ["createUnimplemented"]
       19 LOADK                            R2 K9 ["setDebugDataAsync requires getFFlagAnimGraphUI_RunTimeDebug"]
       20 CALL                             R1 1 1
       21 SETTABLEKS                       R1 R0 K3 ["setDebugDataAsync"]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K10 ["of"]
       26 LOADNIL                          R2
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K4 ["observeActiveDebugTargetIdentifier"]
       30 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+101]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["Context"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 4
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U5
       23 NEWTABLE                         R8 0 1
       25 GETTABLEKS                       R9 R1 K3 ["observe"]
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 MOVE                             R5 R6
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R8 0 1
       40 GETTABLEKS                       R9 R1 K4 ["set"]
       42 SETLIST                          R8 R9 1 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R9 0 2
       54 GETTABLEKS                       R10 R2 K6 ["setEphemeralGraphByAssetIdAsync"]
       56 MOVE                             R11 R4
       57 SETLIST                          R9 R10 2 [1]
       59 CALL                             R7 2 0
       60 GETUPVAL                         R7 7
       61 GETTABLEKS                       R7 R7 K7 ["useProducer"]
       63 MOVE                             R8 R6
       64 CALL                             R7 1 0
       65 GETUPVAL                         R7 8
       66 GETTABLEKS                       R7 R7 K8 ["useSignalProducer"]
       68 GETTABLEKS                       R8 R3 K9 ["observeMap"]
       70 CALL                             R7 1 0
       71 GETUPVAL                         R7 9
       72 GETTABLEKS                       R7 R7 K8 ["useSignalProducer"]
       74 GETTABLEKS                       R8 R1 K9 ["observeMap"]
       76 CALL                             R7 1 0
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       80 NEWCLOSURE                       R8 P3
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R4
       85 NEWTABLE                         R9 0 3
       87 MOVE                             R10 R6
       88 MOVE                             R11 R5
       89 MOVE                             R12 R4
       90 SETLIST                          R9 R10 3 [1]
       92 CALL                             R7 2 1
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R8 R8 K11 ["createElement"]
       96 GETUPVAL                         R9 11
       97 GETTABLEKS                       R9 R9 K12 ["Provider"]
       99 DUPTABLE                         R10 K14 [{"value"}]
      100 SETTABLEKS                       R7 R10 K13 ["value"]
      102 GETTABLEKS                       R11 R0 K15 ["children"]
      104 CALL                             R8 3 -1
      105 RETURN                           R8 -1
      106 GETUPVAL                         R2 12
      107 GETTABLEKS                       R2 R2 K16 ["useReplicatedStateListenerCallback"]
      109 LOADK                            R3 K17 ["GraphDebugData_DebugData_DEPRECATED"]
      110 GETTABLEKS                       R4 R1 K18 ["setMap"]
      112 CALL                             R2 2 0
      113 GETUPVAL                         R2 12
      114 GETTABLEKS                       R2 R2 K19 ["useBoundAction"]
      116 LOADK                            R3 K20 ["GraphDebugData_SetDebugData_DEPRECATED"]
      117 CALL                             R2 1 1
      118 GETUPVAL                         R3 2
      119 GETTABLEKS                       R3 R3 K10 ["useMemo"]
      121 NEWCLOSURE                       R4 P4
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R1
      124 CAPTURE                          UPVAL U10
      125 CAPTURE                          UPVAL U13
      126 NEWTABLE                         R5 0 2
      128 MOVE                             R6 R2
      129 GETTABLEKS                       R7 R1 K3 ["observe"]
      131 SETLIST                          R5 R6 2 [1]
      133 CALL                             R3 2 1
      134 GETUPVAL                         R4 2
      135 GETTABLEKS                       R4 R4 K11 ["createElement"]
      137 GETUPVAL                         R5 11
      138 GETTABLEKS                       R5 R5 K12 ["Provider"]
      140 DUPTABLE                         R6 K14 [{"value"}]
      141 SETTABLEKS                       R3 R6 K13 ["value"]
      143 GETTABLEKS                       R7 R0 K15 ["children"]
      145 CALL                             R4 3 -1
      146 RETURN                           R4 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K1 ["children"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["GraphDebugDataContext"]
       20 GETTABLEKS                       R3 R3 K10 ["GraphDebugDataUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["Networking"]
       29 GETTABLEKS                       R4 R4 K13 ["NetworkUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["Signals"]
       45 GETTABLEKS                       R6 R6 K16 ["PluginSignalUtils"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K17 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Parent"]
       59 GETTABLEKS                       R8 R8 K18 ["ReactUtils"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K19 ["SelectedGraphContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Util"]
       73 GETTABLEKS                       R10 R10 K15 ["Signals"]
       75 GETTABLEKS                       R10 R10 K20 ["Experimental"]
       77 GETTABLEKS                       R10 R10 K21 ["SignalExperimentalUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Parent"]
       84 GETTABLEKS                       R11 R11 K15 ["Signals"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K11 ["Util"]
       91 GETTABLEKS                       R12 R12 K15 ["Signals"]
       93 GETTABLEKS                       R12 R12 K22 ["SignalsInstanceUtils"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K23 ["Flags"]
      100 GETTABLEKS                       R13 R13 K24 ["getFFlagAnimGraphUI_RunTimeDebug"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      107 GETTABLEKS                       R14 R14 K26 ["useSignalDispatcher"]
      109 CALL                             R13 1 1
      110 DUPTABLE                         R14 K32 [{"setDebugDataAsync_DEPRECATED", "observeDebugData_DEPRECATED", "setDebugDataAsync", "observeDebugData", "observeActiveDebugTargetIdentifier"}]
      111 GETTABLEKS                       R15 R7 K33 ["createUnimplemented"]
      113 LOADK                            R16 K27 ["setDebugDataAsync_DEPRECATED"]
      114 CALL                             R15 1 1
      115 SETTABLEKS                       R15 R14 K27 ["setDebugDataAsync_DEPRECATED"]
      117 GETTABLEKS                       R15 R7 K33 ["createUnimplemented"]
      119 LOADK                            R16 K28 ["observeDebugData_DEPRECATED"]
      120 CALL                             R15 1 1
      121 SETTABLEKS                       R15 R14 K28 ["observeDebugData_DEPRECATED"]
      123 GETTABLEKS                       R15 R7 K33 ["createUnimplemented"]
      125 LOADK                            R16 K29 ["setDebugDataAsync"]
      126 CALL                             R15 1 1
      127 SETTABLEKS                       R15 R14 K29 ["setDebugDataAsync"]
      129 GETTABLEKS                       R15 R7 K33 ["createUnimplemented"]
      131 LOADK                            R16 K30 ["observeDebugData"]
      132 CALL                             R15 1 1
      133 SETTABLEKS                       R15 R14 K30 ["observeDebugData"]
      135 GETTABLEKS                       R15 R11 K34 ["of"]
      137 LOADNIL                          R16
      138 CALL                             R15 1 1
      139 SETTABLEKS                       R15 R14 K31 ["observeActiveDebugTargetIdentifier"]
      141 GETTABLEKS                       R15 R6 K35 ["createContext"]
      143 MOVE                             R16 R14
      144 CALL                             R15 1 1
      145 DUPTABLE                         R16 K38 [{["RUNTIME_DEBUG_INFO_DEPRECATED"] = "GraphDebugData_DebugData_DEPRECATED"}]
      146 DUPTABLE                         R17 K41 [{["SET_RUNTIME_DEBUG_INFO_DEPRECATED"] = "GraphDebugData_SetDebugData_DEPRECATED"}]
      147 GETTABLEKS                       R18 R3 K42 ["createBoundAction"]
      149 LOADK                            R19 K43 ["GraphDebugData_SetRuntimeDebugData"]
      150 DUPTABLE                         R20 K46 [{["sendToAll"] = True}]
      151 CALL                             R18 2 1
      152 GETTABLEKS                       R19 R3 K47 ["createReplicatedState"]
      154 LOADK                            R20 K48 ["GraphDebugData_DebugDataState"]
      155 CALL                             R19 1 1
      156 GETTABLEKS                       R20 R3 K47 ["createReplicatedState"]
      158 LOADK                            R21 K49 ["GraphDebugData_ActiveDebugTargetsState"]
      159 CALL                             R20 1 1
      160 DUPCLOSURE                       R21 K50 [PROTO_3]
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R9
      166 DUPCLOSURE                       R22 K51 [PROTO_5]
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R2
      169 DUPCLOSURE                       R23 K52 [PROTO_14]
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R11
      183 DUPCLOSURE                       R24 K53 [PROTO_22]
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R11
      198 DUPCLOSURE                       R25 K54 [PROTO_23]
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R23
      201 DUPTABLE                         R26 K59 [{"Context", "UIDataModelProvider", "EditableDataModelProvider", "PreviewDataModelProvider"}]
      202 SETTABLEKS                       R15 R26 K55 ["Context"]
      204 SETTABLEKS                       R24 R26 K56 ["UIDataModelProvider"]
      206 SETTABLEKS                       R23 R26 K57 ["EditableDataModelProvider"]
      208 SETTABLEKS                       R25 R26 K58 ["PreviewDataModelProvider"]
      210 RETURN                           R26 1
