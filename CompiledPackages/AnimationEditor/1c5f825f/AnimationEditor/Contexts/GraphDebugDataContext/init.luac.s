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
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["sanitizeDebugData"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["debugTargetIdentifierToId"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K2 ["get"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKNIL                  R1 ; [+8]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K3 ["set"]
       27 MOVE                             R5 R2
       28 LOADNIL                          R6
       29 CALL                             R4 2 0
       30 JUMP                             ; [+10]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K3 ["set"]
       34 MOVE                             R5 R2
       35 DUPTABLE                         R6 K6 [{"debugTargetIdentifier", "debugDataMap"}]
       36 SETTABLEKS                       R0 R6 K4 ["debugTargetIdentifier"]
       38 SETTABLEKS                       R1 R6 K5 ["debugDataMap"]
       40 CALL                             R4 2 0
       41 NEWTABLE                         R4 0 0
       43 JUMPIFNOT                        R3 ; [+12]
       44 GETTABLEKS                       R5 R3 K5 ["debugDataMap"]
       46 JUMPIFNOT                        R5 ; [+9]
       47 GETTABLEKS                       R5 R3 K5 ["debugDataMap"]
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 LOADB                            R10 1
       53 SETTABLE                         R10 R4 R8
       54 FORGLOOP                         R5 1 ; [-3]
       56 JUMPIFNOT                        R1 ; [+20]
       57 MOVE                             R5 R1
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 FORGPREP                         R5
       61 LOADNIL                          R10
       62 SETTABLE                         R10 R4 R8
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K7 ["toLookupKey"]
       66 MOVE                             R11 R0
       67 MOVE                             R12 R8
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K3 ["set"]
       72 MOVE                             R12 R10
       73 MOVE                             R13 R9
       74 CALL                             R11 2 0
       75 FORGLOOP                         R5 2 ; [-15]
       77 MOVE                             R5 R4
       78 LOADNIL                          R6
       79 LOADNIL                          R7
       80 FORGPREP                         R5
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K7 ["toLookupKey"]
       84 MOVE                             R11 R0
       85 MOVE                             R12 R8
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 3
       88 GETTABLEKS                       R11 R11 K3 ["set"]
       90 MOVE                             R12 R10
       91 LOADNIL                          R13
       92 CALL                             R11 2 0
       93 FORGLOOP                         R5 1 ; [-13]
       95 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["sanitizeDebugData"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["setMap"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["setMap"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setMap"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+121]
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
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R7 0 1
       34 GETTABLEKS                       R8 R1 K2 ["set"]
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 6
       40 GETTABLEKS                       R6 R6 K3 ["useConsumer"]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K0 ["useCallback"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R6
       51 NEWTABLE                         R9 0 1
       53 MOVE                             R10 R6
       54 SETLIST                          R9 R10 1 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R8 7
       58 GETTABLEKS                       R8 R8 K4 ["useSignalConsumer"]
       60 LOADNIL                          R9
       61 CALL                             R8 1 1
       62 GETUPVAL                         R9 8
       63 GETTABLEKS                       R9 R9 K4 ["useSignalConsumer"]
       65 LOADNIL                          R10
       66 CALL                             R9 1 1
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       70 NEWCLOSURE                       R11 P3
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R2
       74 NEWTABLE                         R12 0 2
       76 MOVE                             R13 R8
       77 GETTABLEKS                       R14 R2 K6 ["setMap"]
       79 SETLIST                          R12 R13 2 [1]
       81 CALL                             R10 2 0
       82 GETUPVAL                         R10 3
       83 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       85 NEWCLOSURE                       R11 P4
       86 CAPTURE                          UPVAL U9
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R1
       89 NEWTABLE                         R12 0 2
       91 MOVE                             R13 R8
       92 GETTABLEKS                       R14 R1 K6 ["setMap"]
       94 SETLIST                          R12 R13 2 [1]
       96 CALL                             R10 2 0
       97 GETUPVAL                         R10 3
       98 GETTABLEKS                       R10 R10 K7 ["useMemo"]
      100 NEWCLOSURE                       R11 P5
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R12 0 3
      107 MOVE                             R13 R7
      108 MOVE                             R14 R4
      109 MOVE                             R15 R3
      110 SETLIST                          R12 R13 3 [1]
      112 CALL                             R10 2 1
      113 GETUPVAL                         R11 3
      114 GETTABLEKS                       R11 R11 K8 ["createElement"]
      116 GETUPVAL                         R12 11
      117 GETTABLEKS                       R12 R12 K9 ["Provider"]
      119 DUPTABLE                         R13 K11 [{"value"}]
      120 SETTABLEKS                       R10 R13 K10 ["value"]
      122 GETTABLEKS                       R14 R0 K12 ["children"]
      124 CALL                             R11 3 -1
      125 RETURN                           R11 -1
      126 GETUPVAL                         R2 3
      127 GETTABLEKS                       R2 R2 K13 ["useState"]
      129 NEWTABLE                         R3 0 0
      131 CALL                             R2 1 2
      132 GETUPVAL                         R4 3
      133 GETTABLEKS                       R4 R4 K0 ["useCallback"]
      135 NEWCLOSURE                       R5 P6
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R1
      138 NEWTABLE                         R6 0 2
      140 MOVE                             R7 R1
      141 GETTABLEKS                       R8 R1 K6 ["setMap"]
      143 SETLIST                          R6 R7 2 [1]
      145 CALL                             R4 2 1
      146 GETUPVAL                         R5 12
      147 GETTABLEKS                       R5 R5 K14 ["useReplicatedState"]
      149 LOADK                            R6 K15 ["GraphDebugData_DebugData_DEPRECATED"]
      150 MOVE                             R7 R2
      151 CALL                             R5 2 0
      152 GETUPVAL                         R5 12
      153 GETTABLEKS                       R5 R5 K16 ["useBoundAction"]
      155 LOADK                            R6 K17 ["GraphDebugData_SetDebugData_DEPRECATED"]
      156 MOVE                             R7 R4
      157 CALL                             R5 2 0
      158 GETUPVAL                         R5 3
      159 GETTABLEKS                       R5 R5 K7 ["useMemo"]
      161 NEWCLOSURE                       R6 P7
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R1
      164 CAPTURE                          UPVAL U10
      165 CAPTURE                          UPVAL U13
      166 NEWTABLE                         R7 0 2
      168 MOVE                             R8 R4
      169 GETTABLEKS                       R9 R1 K1 ["observe"]
      171 SETLIST                          R7 R8 2 [1]
      173 CALL                             R5 2 1
      174 GETUPVAL                         R6 3
      175 GETTABLEKS                       R6 R6 K8 ["createElement"]
      177 GETUPVAL                         R7 11
      178 GETTABLEKS                       R7 R7 K9 ["Provider"]
      180 DUPTABLE                         R8 K11 [{"value"}]
      181 SETTABLEKS                       R5 R8 K10 ["value"]
      183 GETTABLEKS                       R9 R0 K12 ["children"]
      185 CALL                             R6 3 -1
      186 RETURN                           R6 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["sanitizeDebugData"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["debugTargetIdentifierToId"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K2 ["get"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKNIL                  R1 ; [+8]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K3 ["set"]
       27 MOVE                             R5 R2
       28 LOADNIL                          R6
       29 CALL                             R4 2 0
       30 JUMP                             ; [+10]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K3 ["set"]
       34 MOVE                             R5 R2
       35 DUPTABLE                         R6 K6 [{"debugTargetIdentifier", "debugDataMap"}]
       36 SETTABLEKS                       R0 R6 K4 ["debugTargetIdentifier"]
       38 SETTABLEKS                       R1 R6 K5 ["debugDataMap"]
       40 CALL                             R4 2 0
       41 NEWTABLE                         R4 0 0
       43 JUMPIFNOT                        R3 ; [+12]
       44 GETTABLEKS                       R5 R3 K5 ["debugDataMap"]
       46 JUMPIFNOT                        R5 ; [+9]
       47 GETTABLEKS                       R5 R3 K5 ["debugDataMap"]
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 LOADB                            R10 1
       53 SETTABLE                         R10 R4 R8
       54 FORGLOOP                         R5 1 ; [-3]
       56 JUMPIFNOT                        R1 ; [+20]
       57 MOVE                             R5 R1
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 FORGPREP                         R5
       61 LOADNIL                          R10
       62 SETTABLE                         R10 R4 R8
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K7 ["toLookupKey"]
       66 MOVE                             R11 R0
       67 MOVE                             R12 R8
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K3 ["set"]
       72 MOVE                             R12 R10
       73 MOVE                             R13 R9
       74 CALL                             R11 2 0
       75 FORGLOOP                         R5 2 ; [-15]
       77 MOVE                             R5 R4
       78 LOADNIL                          R6
       79 LOADNIL                          R7
       80 FORGPREP                         R5
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K7 ["toLookupKey"]
       84 MOVE                             R11 R0
       85 MOVE                             R12 R8
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 3
       88 GETTABLEKS                       R11 R11 K3 ["set"]
       90 MOVE                             R12 R10
       91 LOADNIL                          R13
       92 CALL                             R11 2 0
       93 FORGLOOP                         R5 1 ; [-13]
       95 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEphemeralGraphByAssetIdAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["retrievalData"]
        6 GETTABLEKS                       R1 R1 K2 ["animationId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEphemeralGraphByAssetIdAsync"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+102]
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
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R8 0 1
       41 GETTABLEKS                       R9 R1 K4 ["set"]
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R9 0 2
       55 GETTABLEKS                       R10 R2 K6 ["setEphemeralGraphByAssetIdAsync"]
       57 MOVE                             R11 R4
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R7 8
       62 GETTABLEKS                       R7 R7 K7 ["useProducer"]
       64 MOVE                             R8 R6
       65 CALL                             R7 1 0
       66 GETUPVAL                         R7 9
       67 GETTABLEKS                       R7 R7 K8 ["useSignalProducer"]
       69 GETTABLEKS                       R8 R3 K9 ["observeMap"]
       71 CALL                             R7 1 0
       72 GETUPVAL                         R7 10
       73 GETTABLEKS                       R7 R7 K8 ["useSignalProducer"]
       75 GETTABLEKS                       R8 R1 K9 ["observeMap"]
       77 CALL                             R7 1 0
       78 GETUPVAL                         R7 2
       79 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       81 NEWCLOSURE                       R8 P3
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 NEWTABLE                         R9 0 3
       88 MOVE                             R10 R6
       89 MOVE                             R11 R5
       90 MOVE                             R12 R4
       91 SETLIST                          R9 R10 3 [1]
       93 CALL                             R7 2 1
       94 GETUPVAL                         R8 2
       95 GETTABLEKS                       R8 R8 K11 ["createElement"]
       97 GETUPVAL                         R9 12
       98 GETTABLEKS                       R9 R9 K12 ["Provider"]
      100 DUPTABLE                         R10 K14 [{"value"}]
      101 SETTABLEKS                       R7 R10 K13 ["value"]
      103 GETTABLEKS                       R11 R0 K15 ["children"]
      105 CALL                             R8 3 -1
      106 RETURN                           R8 -1
      107 GETUPVAL                         R2 13
      108 GETTABLEKS                       R2 R2 K16 ["useReplicatedStateListenerCallback"]
      110 LOADK                            R3 K17 ["GraphDebugData_DebugData_DEPRECATED"]
      111 GETTABLEKS                       R4 R1 K18 ["setMap"]
      113 CALL                             R2 2 0
      114 GETUPVAL                         R2 13
      115 GETTABLEKS                       R2 R2 K19 ["useBoundAction"]
      117 LOADK                            R3 K20 ["GraphDebugData_SetDebugData_DEPRECATED"]
      118 CALL                             R2 1 1
      119 GETUPVAL                         R3 2
      120 GETTABLEKS                       R3 R3 K10 ["useMemo"]
      122 NEWCLOSURE                       R4 P4
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R1
      125 CAPTURE                          UPVAL U11
      126 CAPTURE                          UPVAL U14
      127 NEWTABLE                         R5 0 2
      129 MOVE                             R6 R2
      130 GETTABLEKS                       R7 R1 K3 ["observe"]
      132 SETLIST                          R5 R6 2 [1]
      134 CALL                             R3 2 1
      135 GETUPVAL                         R4 2
      136 GETTABLEKS                       R4 R4 K11 ["createElement"]
      138 GETUPVAL                         R5 12
      139 GETTABLEKS                       R5 R5 K12 ["Provider"]
      141 DUPTABLE                         R6 K14 [{"value"}]
      142 SETTABLEKS                       R3 R6 K13 ["value"]
      144 GETTABLEKS                       R7 R0 K15 ["children"]
      146 CALL                             R4 3 -1
      147 RETURN                           R4 -1

PROTO_24:
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
      100 GETTABLEKS                       R13 R13 K24 ["getFFlagAnimGraphUI_FixInstanceAttrNetworkError"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K23 ["Flags"]
      107 GETTABLEKS                       R14 R14 K25 ["getFFlagAnimGraphUI_RunTimeDebug"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K26 ["Hooks"]
      114 GETTABLEKS                       R15 R15 K27 ["useSignalDispatcher"]
      116 CALL                             R14 1 1
      117 DUPTABLE                         R15 K33 [{"setDebugDataAsync_DEPRECATED", "observeDebugData_DEPRECATED", "setDebugDataAsync", "observeDebugData", "observeActiveDebugTargetIdentifier"}]
      118 GETTABLEKS                       R16 R7 K34 ["createUnimplemented"]
      120 LOADK                            R17 K28 ["setDebugDataAsync_DEPRECATED"]
      121 CALL                             R16 1 1
      122 SETTABLEKS                       R16 R15 K28 ["setDebugDataAsync_DEPRECATED"]
      124 GETTABLEKS                       R16 R7 K34 ["createUnimplemented"]
      126 LOADK                            R17 K29 ["observeDebugData_DEPRECATED"]
      127 CALL                             R16 1 1
      128 SETTABLEKS                       R16 R15 K29 ["observeDebugData_DEPRECATED"]
      130 GETTABLEKS                       R16 R7 K34 ["createUnimplemented"]
      132 LOADK                            R17 K30 ["setDebugDataAsync"]
      133 CALL                             R16 1 1
      134 SETTABLEKS                       R16 R15 K30 ["setDebugDataAsync"]
      136 GETTABLEKS                       R16 R7 K34 ["createUnimplemented"]
      138 LOADK                            R17 K31 ["observeDebugData"]
      139 CALL                             R16 1 1
      140 SETTABLEKS                       R16 R15 K31 ["observeDebugData"]
      142 GETTABLEKS                       R16 R11 K35 ["of"]
      144 LOADNIL                          R17
      145 CALL                             R16 1 1
      146 SETTABLEKS                       R16 R15 K32 ["observeActiveDebugTargetIdentifier"]
      148 GETTABLEKS                       R16 R6 K36 ["createContext"]
      150 MOVE                             R17 R15
      151 CALL                             R16 1 1
      152 DUPTABLE                         R17 K39 [{["RUNTIME_DEBUG_INFO_DEPRECATED"] = "GraphDebugData_DebugData_DEPRECATED"}]
      153 DUPTABLE                         R18 K42 [{["SET_RUNTIME_DEBUG_INFO_DEPRECATED"] = "GraphDebugData_SetDebugData_DEPRECATED"}]
      154 GETTABLEKS                       R19 R3 K43 ["createBoundAction"]
      156 LOADK                            R20 K44 ["GraphDebugData_SetRuntimeDebugData"]
      157 DUPTABLE                         R21 K47 [{["sendToAll"] = True}]
      158 CALL                             R19 2 1
      159 GETTABLEKS                       R20 R3 K48 ["createReplicatedState"]
      161 LOADK                            R21 K49 ["GraphDebugData_DebugDataState"]
      162 CALL                             R20 1 1
      163 GETTABLEKS                       R21 R3 K48 ["createReplicatedState"]
      165 LOADK                            R22 K50 ["GraphDebugData_ActiveDebugTargetsState"]
      166 CALL                             R21 1 1
      167 DUPCLOSURE                       R22 K51 [PROTO_3]
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R9
      173 DUPCLOSURE                       R23 K52 [PROTO_5]
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R2
      176 DUPCLOSURE                       R24 K53 [PROTO_15]
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R11
      191 DUPCLOSURE                       R25 K54 [PROTO_23]
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R11
      207 DUPCLOSURE                       R26 K55 [PROTO_24]
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R24
      210 DUPTABLE                         R27 K60 [{"Context", "UIDataModelProvider", "EditableDataModelProvider", "PreviewDataModelProvider"}]
      211 SETTABLEKS                       R16 R27 K56 ["Context"]
      213 SETTABLEKS                       R25 R27 K57 ["UIDataModelProvider"]
      215 SETTABLEKS                       R24 R27 K58 ["EditableDataModelProvider"]
      217 SETTABLEKS                       R26 R27 K59 ["PreviewDataModelProvider"]
      219 RETURN                           R27 1
