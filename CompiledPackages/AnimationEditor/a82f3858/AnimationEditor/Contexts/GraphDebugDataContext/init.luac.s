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
        0 DUPTABLE                         R0 K3 [{"setDebugDataAsync", "observeDebugData", "observeActiveDebugTargetIdentifier"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["setDebugDataAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeDebugData"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeActiveDebugTargetIdentifier"]
       10 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R7 0 1
       15 GETTABLEKS                       R8 R1 K1 ["observe"]
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R7 0 3
       31 GETTABLEKS                       R8 R1 K2 ["set"]
       33 GETTABLEKS                       R9 R2 K3 ["get"]
       35 GETTABLEKS                       R10 R2 K2 ["set"]
       37 SETLIST                          R7 R8 3 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K4 ["useConsumer"]
       43 MOVE                             R7 R5
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K0 ["useCallback"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R9 0 1
       54 MOVE                             R10 R6
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R7 2 1
       58 GETUPVAL                         R8 6
       59 GETTABLEKS                       R8 R8 K5 ["useSignalConsumer"]
       61 LOADNIL                          R9
       62 CALL                             R8 1 1
       63 GETUPVAL                         R9 7
       64 GETTABLEKS                       R9 R9 K5 ["useSignalConsumer"]
       66 LOADNIL                          R10
       67 CALL                             R9 1 1
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       71 NEWCLOSURE                       R11 P3
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R2
       75 NEWTABLE                         R12 0 2
       77 MOVE                             R13 R9
       78 GETTABLEKS                       R14 R2 K7 ["setMap"]
       80 SETLIST                          R12 R13 2 [1]
       82 CALL                             R10 2 0
       83 GETUPVAL                         R10 2
       84 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       86 NEWCLOSURE                       R11 P4
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R1
       90 NEWTABLE                         R12 0 2
       92 MOVE                             R13 R8
       93 GETTABLEKS                       R14 R1 K7 ["setMap"]
       95 SETLIST                          R12 R13 2 [1]
       97 CALL                             R10 2 0
       98 GETUPVAL                         R10 2
       99 GETTABLEKS                       R10 R10 K8 ["useMemo"]
      101 NEWCLOSURE                       R11 P5
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R12 0 3
      107 MOVE                             R13 R7
      108 MOVE                             R14 R4
      109 MOVE                             R15 R3
      110 SETLIST                          R12 R13 3 [1]
      112 CALL                             R10 2 1
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R11 R11 K9 ["createElement"]
      116 GETUPVAL                         R12 9
      117 GETTABLEKS                       R12 R12 K10 ["Provider"]
      119 DUPTABLE                         R13 K12 [{"value"}]
      120 SETTABLEKS                       R10 R13 K11 ["value"]
      122 GETTABLEKS                       R14 R0 K13 ["children"]
      124 CALL                             R11 3 -1
      125 RETURN                           R11 -1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEphemeralGraphByAssetIdAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["retrievalData"]
        6 GETTABLEKS                       R1 R1 K2 ["animationId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEphemeralGraphByAssetIdAsync"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_19:
        0 DUPTABLE                         R0 K3 [{"setDebugDataAsync", "observeDebugData", "observeActiveDebugTargetIdentifier"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["setDebugDataAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeDebugData"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeActiveDebugTargetIdentifier"]
       10 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R8 0 1
       22 GETTABLEKS                       R9 R1 K3 ["observe"]
       24 SETLIST                          R8 R9 1 [1]
       26 CALL                             R6 2 1
       27 MOVE                             R5 R6
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R8 0 3
       38 GETTABLEKS                       R9 R1 K4 ["set"]
       40 GETTABLEKS                       R10 R3 K5 ["get"]
       42 GETTABLEKS                       R11 R3 K4 ["set"]
       44 SETLIST                          R8 R9 3 [1]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       50 NEWCLOSURE                       R8 P2
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R9 0 2
       56 GETTABLEKS                       R10 R2 K7 ["setEphemeralGraphByAssetIdAsync"]
       58 MOVE                             R11 R4
       59 SETLIST                          R9 R10 2 [1]
       61 CALL                             R7 2 0
       62 GETUPVAL                         R7 7
       63 GETTABLEKS                       R7 R7 K8 ["useProducer"]
       65 MOVE                             R8 R6
       66 CALL                             R7 1 0
       67 GETUPVAL                         R7 8
       68 GETTABLEKS                       R7 R7 K9 ["useSignalProducer"]
       70 GETTABLEKS                       R8 R3 K10 ["observeMap"]
       72 CALL                             R7 1 0
       73 GETUPVAL                         R7 9
       74 GETTABLEKS                       R7 R7 K9 ["useSignalProducer"]
       76 GETTABLEKS                       R8 R1 K10 ["observeMap"]
       78 CALL                             R7 1 0
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R7 R7 K11 ["useMemo"]
       82 NEWCLOSURE                       R8 P3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 NEWTABLE                         R9 0 3
       88 MOVE                             R10 R6
       89 MOVE                             R11 R5
       90 MOVE                             R12 R4
       91 SETLIST                          R9 R10 3 [1]
       93 CALL                             R7 2 1
       94 GETUPVAL                         R8 1
       95 GETTABLEKS                       R8 R8 K12 ["createElement"]
       97 GETUPVAL                         R9 10
       98 GETTABLEKS                       R9 R9 K13 ["Provider"]
      100 DUPTABLE                         R10 K15 [{"value"}]
      101 SETTABLEKS                       R7 R10 K14 ["value"]
      103 GETTABLEKS                       R11 R0 K16 ["children"]
      105 CALL                             R8 3 -1
      106 RETURN                           R8 -1

PROTO_21:
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
      105 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      107 GETTABLEKS                       R14 R14 K26 ["useSignalDispatcher"]
      109 CALL                             R13 1 1
      110 DUPTABLE                         R14 K30 [{"setDebugDataAsync", "observeDebugData", "observeActiveDebugTargetIdentifier"}]
      111 GETTABLEKS                       R15 R7 K31 ["createUnimplemented"]
      113 LOADK                            R16 K27 ["setDebugDataAsync"]
      114 CALL                             R15 1 1
      115 SETTABLEKS                       R15 R14 K27 ["setDebugDataAsync"]
      117 GETTABLEKS                       R15 R7 K31 ["createUnimplemented"]
      119 LOADK                            R16 K28 ["observeDebugData"]
      120 CALL                             R15 1 1
      121 SETTABLEKS                       R15 R14 K28 ["observeDebugData"]
      123 GETTABLEKS                       R15 R11 K32 ["of"]
      125 LOADNIL                          R16
      126 CALL                             R15 1 1
      127 SETTABLEKS                       R15 R14 K29 ["observeActiveDebugTargetIdentifier"]
      129 GETTABLEKS                       R15 R6 K33 ["createContext"]
      131 MOVE                             R16 R14
      132 CALL                             R15 1 1
      133 GETTABLEKS                       R16 R3 K34 ["createBoundAction"]
      135 LOADK                            R17 K35 ["GraphDebugData_SetRuntimeDebugData"]
      136 DUPTABLE                         R18 K38 [{["sendToAll"] = True}]
      137 CALL                             R16 2 1
      138 GETTABLEKS                       R17 R3 K39 ["createReplicatedState"]
      140 LOADK                            R18 K40 ["GraphDebugData_DebugDataState"]
      141 CALL                             R17 1 1
      142 GETTABLEKS                       R18 R3 K39 ["createReplicatedState"]
      144 LOADK                            R19 K41 ["GraphDebugData_ActiveDebugTargetsState"]
      145 CALL                             R18 1 1
      146 DUPCLOSURE                       R19 K42 [PROTO_3]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R9
      152 DUPCLOSURE                       R20 K43 [PROTO_5]
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R2
      155 DUPCLOSURE                       R21 K44 [PROTO_13]
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R15
      166 DUPCLOSURE                       R22 K45 [PROTO_20]
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R15
      178 DUPCLOSURE                       R23 K46 [PROTO_21]
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R21
      181 DUPTABLE                         R24 K51 [{"Context", "UIDataModelProvider", "EditableDataModelProvider", "PreviewDataModelProvider"}]
      182 SETTABLEKS                       R15 R24 K47 ["Context"]
      184 SETTABLEKS                       R22 R24 K48 ["UIDataModelProvider"]
      186 SETTABLEKS                       R21 R24 K49 ["EditableDataModelProvider"]
      188 SETTABLEKS                       R23 R24 K50 ["PreviewDataModelProvider"]
      190 RETURN                           R24 1
