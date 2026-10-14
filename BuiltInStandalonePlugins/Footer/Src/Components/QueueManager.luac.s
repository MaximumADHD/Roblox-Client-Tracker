PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R3 K1 ["%*:%*"]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 3 1
       14 RETURN                           R3 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Title"]
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["setMessage"]
        6 GETTABLEKS                       R3 R0 K0 ["Title"]
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R0 K2 ["Message"]
       11 JUMPIFEQKNIL                     R2 ; [+6]
       13 GETTABLEKS                       R2 R1 K3 ["setDetails"]
       15 GETTABLEKS                       R3 R0 K2 ["Message"]
       17 CALL                             R2 1 0
       18 GETTABLEKS                       R2 R0 K4 ["Progress"]
       20 JUMPIFEQKNIL                     R2 ; [+6]
       22 GETTABLEKS                       R2 R1 K5 ["setProgress"]
       24 GETTABLEKS                       R3 R0 K4 ["Progress"]
       26 CALL                             R2 1 0
       27 GETTABLEKS                       R2 R0 K6 ["Result"]
       29 JUMPIFEQKNIL                     R2 ; [+6]
       31 GETTABLEKS                       R2 R1 K7 ["setStatus"]
       33 GETTABLEKS                       R3 R0 K6 ["Result"]
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 LOADN                            R2 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 GETUPVAL                         R4 0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLEKS                       R8 R7 K2 ["signals"]
       11 GETTABLEKS                       R8 R8 K3 ["getStatus"]
       13 CALL                             R8 0 1
       14 JUMPIFNOTEQKS                    R8 K4 ["Complete"] ; [+3]
       16 ADDK                             R1 R1 K5 [1]
       17 JUMP                             ; [+3]
       18 JUMPIFNOTEQKS                    R8 K6 ["Error"] ; [+2]
       20 ADDK                             R2 R2 K5 [1]
       21 FORGLOOP                         R3 2 [inext] ; [-13]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K7 ["queueStatusBarSignals"]
       26 GETTABLEKS                       R3 R3 K8 ["setTotal"]
       28 MOVE                             R4 R0
       29 CALL                             R3 1 0
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K7 ["queueStatusBarSignals"]
       33 GETTABLEKS                       R3 R3 K9 ["setCompleted"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K7 ["queueStatusBarSignals"]
       40 GETTABLEKS                       R3 R3 K10 ["setErrors"]
       42 MOVE                             R4 R2
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K6 [{["Category"] = "Queue", ["ItemId"] = "MainQueue"}]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["id"]
        9 GETUPVAL                         R8 0
       10 JUMPIFEQ                         R7 R8 ; [+8]
       12 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R6
       16 GETIMPORT                        R7 K5 [table.insert]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 [inext] ; [-13]
       21 GETIMPORT                        R2 K7 [table.freeze]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["toString"]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 3
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+8]
       10 LOADK                            R5 K1 ["%*:%*"]
       11 MOVE                             R7 R3
       12 MOVE                             R8 R4
       13 NAMECALL                         R5 R5 K2 ["format"]
       15 CALL                             R5 3 1
       16 MOVE                             R1 R5
       17 JUMP                             ; [+1]
       18 MOVE                             R1 R4
       19 GETIMPORT                        R2 K4 [ipairs]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 3
       23 FORGPREP_INEXT                   R2
       24 GETTABLEKS                       R7 R6 K5 ["id"]
       26 JUMPIFNOTEQ                      R7 R1 ; [+14]
       28 GETUPVAL                         R7 4
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R9 R6 K6 ["signals"]
       32 CALL                             R7 2 0
       33 GETIMPORT                        R7 K9 [table.freeze]
       35 GETIMPORT                        R8 K11 [table.clone]
       37 MOVE                             R9 R0
       38 CALL                             R8 1 -1
       39 CALL                             R7 -1 -1
       40 RETURN                           R7 -1
       41 FORGLOOP                         R2 2 [inext] ; [-18]
       43 GETUPVAL                         R2 6
       44 CALL                             R2 0 1
       45 GETUPVAL                         R3 4
       46 GETUPVAL                         R4 5
       47 MOVE                             R5 R2
       48 CALL                             R3 2 0
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R3 R3 K12 ["wrap"]
       52 GETUPVAL                         R4 0
       53 CALL                             R3 1 1
       54 GETIMPORT                        R4 K9 [table.freeze]
       56 DUPTABLE                         R5 K16 [{"uri", "id", "dmId", "signals", "insertedAt"}]
       57 SETTABLEKS                       R3 R5 K13 ["uri"]
       59 SETTABLEKS                       R1 R5 K5 ["id"]
       61 GETUPVAL                         R6 1
       62 SETTABLEKS                       R6 R5 K14 ["dmId"]
       64 SETTABLEKS                       R2 R5 K6 ["signals"]
       66 GETIMPORT                        R6 K19 [os.clock]
       68 CALL                             R6 0 1
       69 SETTABLEKS                       R6 R5 K15 ["insertedAt"]
       71 CALL                             R4 1 1
       72 GETIMPORT                        R5 K11 [table.clone]
       74 MOVE                             R6 R0
       75 CALL                             R5 1 1
       76 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       78 MOVE                             R7 R5
       79 MOVE                             R8 R4
       80 GETIMPORT                        R6 K21 [table.insert]
       82 CALL                             R6 2 0
       83 GETIMPORT                        R6 K9 [table.freeze]
       85 MOVE                             R7 R5
       86 CALL                             R6 1 -1
       87 RETURN                           R6 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U4
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["id"]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOTEQ                      R6 R7 ; [+7]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R8 R5 K3 ["signals"]
       14 CALL                             R6 2 0
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R1 2 [inext] ; [-12]
       18 GETIMPORT                        R1 K6 [table.freeze]
       20 GETIMPORT                        R2 K8 [table.clone]
       22 MOVE                             R3 R0
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 -1
       25 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toString"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 1
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+8]
        8 LOADK                            R5 K1 ["%*:%*"]
        9 MOVE                             R7 R2
       10 MOVE                             R8 R4
       11 NAMECALL                         R5 R5 K2 ["format"]
       13 CALL                             R5 3 1
       14 MOVE                             R3 R5
       15 JUMP                             ; [+1]
       16 MOVE                             R3 R4
       17 GETUPVAL                         R4 2
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["toString"]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 GETUPVAL                         R5 2
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+8]
        9 LOADK                            R5 K1 ["%*:%*"]
       10 MOVE                             R7 R1
       11 MOVE                             R8 R4
       12 NAMECALL                         R5 R5 K2 ["format"]
       14 CALL                             R5 3 1
       15 MOVE                             R3 R5
       16 JUMP                             ; [+1]
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["AddQueueItem"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["UpdateQueueItem"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U4
       23 NAMECALL                         R1 R1 K1 ["Connect"]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K3 ["RemoveQueueItem"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R2 R2 K1 ["Connect"]
       35 CALL                             R2 2 1
       36 NEWCLOSURE                       R3 P3
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K1 ["signals"]
        3 GETTABLEKS                       R5 R5 K2 ["getStatus"]
        5 CALL                             R5 0 1
        6 GETTABLE                         R3 R4 R5
        7 ORK                              R2 R3 K0 [99]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R6 R1 K1 ["signals"]
       11 GETTABLEKS                       R6 R6 K2 ["getStatus"]
       13 CALL                             R6 0 1
       14 GETTABLE                         R4 R5 R6
       15 ORK                              R3 R4 K0 [99]
       16 JUMPIFEQ                         R2 R3 ; [+6]
       18 JUMPIFLT                         R2 R3 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 RETURN                           R4 1
       23 GETTABLEKS                       R5 R0 K3 ["insertedAt"]
       25 GETTABLEKS                       R6 R1 K3 ["insertedAt"]
       27 JUMPIFLT                         R6 R5 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 RETURN                           R4 1

PROTO_16:
        0 DUPTABLE                         R0 K6 [{[1] = 1, ["Loading"] = 2, ["Complete"] = 3}]
        1 GETIMPORT                        R1 K9 [table.clone]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K11 [table.sort]
        7 MOVE                             R3 R1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["uri"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["dmId"]
        7 NAMECALL                         R0 R0 K2 ["ItemViewedAsync"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [ipairs]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 3
        7 FORGPREP_INEXT                   R1
        8 GETTABLEKS                       R6 R5 K2 ["id"]
       10 JUMPIFNOTEQ                      R6 R0 ; [+8]
       12 GETIMPORT                        R6 K5 [task.spawn]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R5
       17 CALL                             R6 1 0
       18 RETURN                           R0 0
       19 FORGLOOP                         R1 2 [inext] ; [-12]
       21 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["signals"]
        9 GETTABLEKS                       R7 R7 K3 ["getStatus"]
       11 CALL                             R7 0 1
       12 JUMPIFEQKS                       R7 K4 ["Complete"] ; [+8]
       14 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       16 MOVE                             R8 R1
       17 MOVE                             R9 R6
       18 GETIMPORT                        R7 K7 [table.insert]
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 [inext] ; [-15]
       23 GETIMPORT                        R2 K9 [table.freeze]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_19]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queueStatusBarSignals"]
        3 GETTABLEKS                       R0 R0 K1 ["setIsPanelOpen"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R1
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["useState"]
       21 GETIMPORT                        R4 K6 [table.freeze]
       23 NEWTABLE                         R5 0 0
       25 CALL                             R4 1 1
       26 CALL                             R3 1 2
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K7 ["useSignalState"]
       30 GETTABLEKS                       R6 R0 K8 ["queueStatusBarSignals"]
       32 GETTABLEKS                       R6 R6 K9 ["getIsPanelOpen"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R8 0 2
       43 MOVE                             R9 R3
       44 GETTABLEKS                       R10 R0 K8 ["queueStatusBarSignals"]
       46 SETLIST                          R8 R9 2 [1]
       48 CALL                             R6 2 0
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       52 NEWCLOSURE                       R7 P2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R8 0 1
       57 MOVE                             R9 R1
       58 SETLIST                          R8 R9 1 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K11 ["useCallback"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R9 0 1
       68 MOVE                             R10 R4
       69 SETLIST                          R9 R10 1 [1]
       71 CALL                             R7 2 1
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       75 NEWCLOSURE                       R9 P4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          VAL R7
       83 NEWTABLE                         R10 0 3
       85 MOVE                             R11 R2
       86 MOVE                             R12 R4
       87 MOVE                             R13 R7
       88 SETLIST                          R10 R11 3 [1]
       90 CALL                             R8 2 0
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       94 NEWCLOSURE                       R9 P5
       95 CAPTURE                          VAL R3
       96 NEWTABLE                         R10 0 1
       98 MOVE                             R11 R3
       99 SETLIST                          R10 R11 1 [1]
      101 CALL                             R8 2 1
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R9 R9 K11 ["useCallback"]
      105 NEWCLOSURE                       R10 P6
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 NEWTABLE                         R11 0 2
      110 MOVE                             R12 R3
      111 MOVE                             R13 R2
      112 SETLIST                          R11 R12 2 [1]
      114 CALL                             R9 2 1
      115 GETUPVAL                         R10 1
      116 GETTABLEKS                       R10 R10 K11 ["useCallback"]
      118 NEWCLOSURE                       R11 P7
      119 CAPTURE                          VAL R4
      120 NEWTABLE                         R12 0 1
      122 MOVE                             R13 R4
      123 SETLIST                          R12 R13 1 [1]
      125 CALL                             R10 2 1
      126 GETUPVAL                         R11 1
      127 GETTABLEKS                       R11 R11 K11 ["useCallback"]
      129 NEWCLOSURE                       R12 P8
      130 CAPTURE                          VAL R0
      131 NEWTABLE                         R13 0 1
      133 GETTABLEKS                       R14 R0 K8 ["queueStatusBarSignals"]
      135 SETLIST                          R13 R14 1 [1]
      137 CALL                             R11 2 1
      138 JUMPIF                           R5 ; [+2]
      139 LOADNIL                          R12
      140 RETURN                           R12 1
      141 LOADB                            R12 0
      142 GETIMPORT                        R13 K13 [ipairs]
      144 MOVE                             R14 R3
      145 CALL                             R13 1 3
      146 FORGPREP_INEXT                   R13
      147 GETTABLEKS                       R18 R17 K14 ["signals"]
      149 GETTABLEKS                       R18 R18 K15 ["getStatus"]
      151 CALL                             R18 0 1
      152 JUMPIFNOTEQKS                    R18 K16 ["Complete"] ; [+3]
      154 LOADB                            R12 1
      155 JUMP                             ; [+2]
      156 FORGLOOP                         R13 2 [inext] ; [-10]
      158 GETUPVAL                         R13 7
      159 GETUPVAL                         R14 8
      160 DUPTABLE                         R15 K25 [{["uri"], ["title"] = "Background Tasks", ["items"], ["onClearCompleted"], ["hasCompletedTasks"], ["onClose"], ["onViewItem"]}]
      161 SETTABLEKS                       R6 R15 K17 ["uri"]
      163 SETTABLEKS                       R8 R15 K20 ["items"]
      165 SETTABLEKS                       R10 R15 K21 ["onClearCompleted"]
      167 SETTABLEKS                       R12 R15 K22 ["hasCompletedTasks"]
      169 SETTABLEKS                       R11 R15 K23 ["onClose"]
      171 SETTABLEKS                       R9 R15 K24 ["onViewItem"]
      173 CALL                             R13 2 -1
      174 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["QueuePanel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["SignalsReact"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["createQueueItemSignals"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Src"]
       57 GETTABLEKS                       R8 R8 K14 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["createQueueStatusSignals"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K18 ["getStudioDialogManagerMultiDataModel"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R1 K19 ["ContextServices"]
       73 GETTABLEKS                       R9 R9 K20 ["Plugin"]
       75 GETTABLEKS                       R10 R5 K14 ["Util"]
       77 GETTABLEKS                       R10 R10 K21 ["StudioUri"]
       79 GETTABLEKS                       R11 R3 K22 ["createElement"]
       81 DUPCLOSURE                       R12 K23 [PROTO_0]
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R8
       84 DUPCLOSURE                       R13 K24 [PROTO_1]
       85 DUPCLOSURE                       R14 K25 [PROTO_22]
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R2
       95 GETTABLEKS                       R15 R3 K26 ["memo"]
       97 MOVE                             R16 R14
       98 CALL                             R15 1 -1
       99 RETURN                           R15 -1
