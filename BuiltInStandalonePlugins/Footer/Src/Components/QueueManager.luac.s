PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManagerUIBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K6 [{["Category"] = "Queue", ["ItemId"] = "MainQueue"}]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toString"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K2 [ipairs]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 3
        9 FORGPREP_INEXT                   R2
       10 GETTABLEKS                       R7 R6 K3 ["id"]
       12 JUMPIFNOTEQ                      R7 R1 ; [+14]
       14 GETUPVAL                         R7 2
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R9 R6 K4 ["signals"]
       18 CALL                             R7 2 0
       19 GETIMPORT                        R7 K7 [table.freeze]
       21 GETIMPORT                        R8 K9 [table.clone]
       23 MOVE                             R9 R0
       24 CALL                             R8 1 -1
       25 CALL                             R7 -1 -1
       26 RETURN                           R7 -1
       27 FORGLOOP                         R2 2 [inext] ; [-18]
       29 GETUPVAL                         R2 4
       30 CALL                             R2 0 1
       31 GETUPVAL                         R3 2
       32 GETUPVAL                         R4 3
       33 MOVE                             R5 R2
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K10 ["wrap"]
       38 GETUPVAL                         R4 1
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K7 [table.freeze]
       42 DUPTABLE                         R5 K13 [{"uri", "id", "signals", "insertedAt"}]
       43 SETTABLEKS                       R3 R5 K11 ["uri"]
       45 SETTABLEKS                       R1 R5 K3 ["id"]
       47 SETTABLEKS                       R2 R5 K4 ["signals"]
       49 GETIMPORT                        R6 K16 [os.clock]
       51 CALL                             R6 0 1
       52 SETTABLEKS                       R6 R5 K12 ["insertedAt"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K9 [table.clone]
       57 MOVE                             R6 R0
       58 CALL                             R5 1 1
       59 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       61 MOVE                             R7 R5
       62 MOVE                             R8 R4
       63 GETIMPORT                        R6 K18 [table.insert]
       65 CALL                             R6 2 0
       66 GETIMPORT                        R6 K7 [table.freeze]
       68 MOVE                             R7 R5
       69 CALL                             R6 1 -1
       70 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["toString"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       11 NAMECALL                         R0 R0 K1 ["Connect"]
       13 CALL                             R0 2 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["UpdateQueueItem"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U3
       21 NAMECALL                         R1 R1 K1 ["Connect"]
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K3 ["RemoveQueueItem"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U2
       30 NAMECALL                         R2 R2 K1 ["Connect"]
       32 CALL                             R2 2 1
       33 NEWCLOSURE                       R3 P3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R3 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["uri"]
        4 NAMECALL                         R0 R0 K1 ["ItemViewedAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_18]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queueStatusBarSignals"]
        3 GETTABLEKS                       R0 R0 K1 ["setIsPanelOpen"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_21:
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
       81 CAPTURE                          VAL R7
       82 NEWTABLE                         R10 0 3
       84 MOVE                             R11 R2
       85 MOVE                             R12 R4
       86 MOVE                             R13 R7
       87 SETLIST                          R10 R11 3 [1]
       89 CALL                             R8 2 0
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       93 NEWCLOSURE                       R9 P5
       94 CAPTURE                          VAL R3
       95 NEWTABLE                         R10 0 1
       97 MOVE                             R11 R3
       98 SETLIST                          R10 R11 1 [1]
      100 CALL                             R8 2 1
      101 GETUPVAL                         R9 1
      102 GETTABLEKS                       R9 R9 K11 ["useCallback"]
      104 NEWCLOSURE                       R10 P6
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R11 0 2
      109 MOVE                             R12 R3
      110 MOVE                             R13 R2
      111 SETLIST                          R11 R12 2 [1]
      113 CALL                             R9 2 1
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R10 R10 K11 ["useCallback"]
      117 NEWCLOSURE                       R11 P7
      118 CAPTURE                          VAL R4
      119 NEWTABLE                         R12 0 1
      121 MOVE                             R13 R4
      122 SETLIST                          R12 R13 1 [1]
      124 CALL                             R10 2 1
      125 GETUPVAL                         R11 1
      126 GETTABLEKS                       R11 R11 K11 ["useCallback"]
      128 NEWCLOSURE                       R12 P8
      129 CAPTURE                          VAL R0
      130 NEWTABLE                         R13 0 1
      132 GETTABLEKS                       R14 R0 K8 ["queueStatusBarSignals"]
      134 SETLIST                          R13 R14 1 [1]
      136 CALL                             R11 2 1
      137 JUMPIF                           R5 ; [+2]
      138 LOADNIL                          R12
      139 RETURN                           R12 1
      140 LOADB                            R12 0
      141 GETIMPORT                        R13 K13 [ipairs]
      143 MOVE                             R14 R3
      144 CALL                             R13 1 3
      145 FORGPREP_INEXT                   R13
      146 GETTABLEKS                       R18 R17 K14 ["signals"]
      148 GETTABLEKS                       R18 R18 K15 ["getStatus"]
      150 CALL                             R18 0 1
      151 JUMPIFNOTEQKS                    R18 K16 ["Complete"] ; [+3]
      153 LOADB                            R12 1
      154 JUMP                             ; [+2]
      155 FORGLOOP                         R13 2 [inext] ; [-10]
      157 GETUPVAL                         R13 6
      158 GETUPVAL                         R14 7
      159 DUPTABLE                         R15 K25 [{["uri"], ["title"] = "Background Tasks", ["items"], ["onClearCompleted"], ["hasCompletedTasks"], ["onClose"], ["onViewItem"]}]
      160 SETTABLEKS                       R6 R15 K17 ["uri"]
      162 SETTABLEKS                       R8 R15 K20 ["items"]
      164 SETTABLEKS                       R10 R15 K21 ["onClearCompleted"]
      166 SETTABLEKS                       R12 R15 K22 ["hasCompletedTasks"]
      168 SETTABLEKS                       R11 R15 K23 ["onClose"]
      170 SETTABLEKS                       R9 R15 K24 ["onViewItem"]
      172 CALL                             R13 2 -1
      173 RETURN                           R13 -1

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
       62 GETTABLEKS                       R8 R1 K17 ["ContextServices"]
       64 GETTABLEKS                       R8 R8 K18 ["Plugin"]
       66 GETTABLEKS                       R9 R5 K14 ["Util"]
       68 GETTABLEKS                       R9 R9 K19 ["StudioUri"]
       70 GETTABLEKS                       R10 R3 K20 ["createElement"]
       72 DUPCLOSURE                       R11 K21 [PROTO_0]
       73 DUPCLOSURE                       R12 K22 [PROTO_21]
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R2
       82 GETTABLEKS                       R13 R3 K23 ["memo"]
       84 MOVE                             R14 R12
       85 CALL                             R13 1 -1
       86 RETURN                           R13 -1
