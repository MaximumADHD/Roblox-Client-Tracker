PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["debuggerConnectionIdToCurrentThreadId"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["currentDebuggerConnectionId"]
        6 GETTABLEKS                       R4 R1 K2 ["currentThreadId"]
        8 SETTABLE                         R4 R2 R3
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["Dictionary"]
       12 GETTABLEKS                       R3 R3 K4 ["join"]
       14 MOVE                             R4 R0
       15 DUPTABLE                         R5 K5 [{"debuggerConnectionIdToCurrentThreadId"}]
       16 SETTABLEKS                       R2 R5 K0 ["debuggerConnectionIdToCurrentThreadId"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["currentFrameMap"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R6 R0 K1 ["currentDebuggerConnectionId"]
        6 GETTABLE                         R5 R2 R6
        7 JUMPIFNOTEQKNIL                  R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL1                        ASSERT R4 ; [+2]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 1 0
       15 GETTABLEKS                       R4 R0 K1 ["currentDebuggerConnectionId"]
       17 GETTABLE                         R3 R2 R4
       18 GETTABLEKS                       R4 R1 K4 ["threadId"]
       20 GETTABLEKS                       R5 R1 K5 ["currentFrame"]
       22 SETTABLE                         R5 R3 R4
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K6 ["Dictionary"]
       26 GETTABLEKS                       R3 R3 K7 ["join"]
       28 MOVE                             R4 R0
       29 DUPTABLE                         R5 K8 [{"currentFrameMap"}]
       30 SETTABLEKS                       R2 R5 K0 ["currentFrameMap"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K9 [{["debuggerConnectionIdToDST"], ["debuggerConnectionIdToCurrentThreadId"], ["currentFrameMap"], ["isPaused"] = False, ["hitException"], ["pausedDebuggerConnectionIds"]}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["debuggerConnectionIdToDST"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K10 ["debuggerStateToken"]
       18 GETTABLEKS                       R8 R8 K11 ["debuggerConnectionId"]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K12 ["None"]
       23 SETTABLE                         R9 R7 R8
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K2 ["debuggerConnectionIdToDST"]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K3 ["debuggerConnectionIdToCurrentThreadId"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K4 ["currentFrameMap"]
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K7 ["hitException"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       42 GETTABLEKS                       R5 R5 K1 ["join"]
       44 GETTABLEKS                       R6 R0 K8 ["pausedDebuggerConnectionIds"]
       46 NEWTABLE                         R7 1 0
       48 GETTABLEKS                       R8 R1 K10 ["debuggerStateToken"]
       50 GETTABLEKS                       R8 R8 K11 ["debuggerConnectionId"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K12 ["None"]
       55 SETTABLE                         R9 R7 R8
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K8 ["pausedDebuggerConnectionIds"]
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["debuggerStateToken"]
        2 GETTABLEKS                       R2 R2 K1 ["debuggerConnectionId"]
        4 GETTABLEKS                       R3 R0 K2 ["isPaused"]
        6 GETTABLEKS                       R4 R0 K3 ["currentDebuggerConnectionId"]
        8 GETTABLEKS                       R5 R0 K3 ["currentDebuggerConnectionId"]
       10 JUMPIFNOTEQ                      R2 R5 ; [+5]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["kInvalidDebuggerConnectionId"]
       15 LOADB                            R3 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K5 ["Dictionary"]
       19 GETTABLEKS                       R5 R5 K6 ["join"]
       21 GETTABLEKS                       R6 R0 K7 ["pausedDebuggerConnectionIds"]
       23 NEWTABLE                         R7 1 0
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K8 ["None"]
       28 SETTABLE                         R8 R7 R2
       29 CALL                             R5 2 1
       30 GETIMPORT                        R6 K10 [next]
       32 MOVE                             R7 R5
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKNIL                  R6 ; [+2]
       36 LOADB                            R3 0
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R7 R0 K11 ["hitException"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R8 R0 K12 ["currentFrameMap"]
       43 GETTABLE                         R7 R8 R2
       44 JUMPIFNOT                        R7 ; [+23]
       45 GETIMPORT                        R7 K14 [pairs]
       47 GETTABLEKS                       R10 R0 K12 ["currentFrameMap"]
       49 GETTABLE                         R8 R10 R2
       50 CALL                             R7 1 3
       51 FORGPREP_NEXT                    R7
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R12 R12 K5 ["Dictionary"]
       55 GETTABLEKS                       R12 R12 K6 ["join"]
       57 MOVE                             R13 R6
       58 NEWTABLE                         R14 1 0
       60 GETUPVAL                         R15 1
       61 GETTABLEKS                       R15 R15 K8 ["None"]
       63 SETTABLE                         R15 R14 R10
       64 CALL                             R12 2 1
       65 MOVE                             R6 R12
       66 FORGLOOP                         R7 2 ; [-15]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       71 GETTABLEKS                       R7 R7 K6 ["join"]
       73 MOVE                             R8 R0
       74 DUPTABLE                         R9 K17 [{"debuggerConnectionIdToDST", "currentDebuggerConnectionId", "debuggerConnectionIdToCurrentThreadId", "currentFrameMap", "isPaused", "hitException", "pausedDebuggerConnectionIds"}]
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R10 R10 K5 ["Dictionary"]
       78 GETTABLEKS                       R10 R10 K6 ["join"]
       80 GETTABLEKS                       R11 R0 K15 ["debuggerConnectionIdToDST"]
       82 NEWTABLE                         R12 1 0
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R13 R13 K8 ["None"]
       87 SETTABLE                         R13 R12 R2
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K15 ["debuggerConnectionIdToDST"]
       91 SETTABLEKS                       R4 R9 K3 ["currentDebuggerConnectionId"]
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K18 ["List"]
       96 GETTABLEKS                       R10 R10 K19 ["removeValue"]
       98 GETTABLEKS                       R11 R0 K16 ["debuggerConnectionIdToCurrentThreadId"]
      100 MOVE                             R12 R2
      101 CALL                             R10 2 1
      102 SETTABLEKS                       R10 R9 K16 ["debuggerConnectionIdToCurrentThreadId"]
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K18 ["List"]
      107 GETTABLEKS                       R10 R10 K19 ["removeValue"]
      109 GETTABLEKS                       R11 R0 K12 ["currentFrameMap"]
      111 MOVE                             R12 R2
      112 CALL                             R10 2 1
      113 SETTABLEKS                       R10 R9 K12 ["currentFrameMap"]
      115 SETTABLEKS                       R3 R9 K2 ["isPaused"]
      117 SETTABLEKS                       R6 R9 K11 ["hitException"]
      119 SETTABLEKS                       R5 R9 K7 ["pausedDebuggerConnectionIds"]
      121 CALL                             R7 2 -1
      122 RETURN                           R7 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["debuggerStateToken"]
        2 GETTABLEKS                       R2 R2 K1 ["debuggerConnectionId"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
        7 GETTABLEKS                       R3 R3 K3 ["join"]
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K11 [{["debuggerConnectionIdToDST"], ["isPaused"] = True, ["hitException"], ["pausedDebuggerConnectionIds"], ["debuggerConnectionIdToCurrentThreadId"], ["currentFrameMap"]}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       14 GETTABLEKS                       R6 R6 K3 ["join"]
       16 GETTABLEKS                       R7 R0 K4 ["debuggerConnectionIdToDST"]
       18 NEWTABLE                         R8 1 0
       20 GETTABLEKS                       R9 R1 K0 ["debuggerStateToken"]
       22 GETTABLEKS                       R9 R9 K1 ["debuggerConnectionId"]
       24 GETTABLEKS                       R10 R1 K0 ["debuggerStateToken"]
       26 SETTABLE                         R10 R8 R9
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K4 ["debuggerConnectionIdToDST"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       33 GETTABLEKS                       R6 R6 K3 ["join"]
       35 GETTABLEKS                       R7 R0 K7 ["hitException"]
       37 NEWTABLE                         R8 1 0
       39 GETTABLEKS                       R9 R1 K12 ["threadId"]
       41 GETTABLEKS                       R10 R1 K7 ["hitException"]
       43 SETTABLE                         R10 R8 R9
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K7 ["hitException"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       50 GETTABLEKS                       R6 R6 K3 ["join"]
       52 GETTABLEKS                       R7 R0 K8 ["pausedDebuggerConnectionIds"]
       54 NEWTABLE                         R8 1 0
       56 SETTABLE                         R2 R8 R2
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K8 ["pausedDebuggerConnectionIds"]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       63 GETTABLEKS                       R6 R6 K3 ["join"]
       65 GETTABLEKS                       R7 R0 K9 ["debuggerConnectionIdToCurrentThreadId"]
       67 NEWTABLE                         R8 1 0
       69 LOADNIL                          R9
       70 SETTABLE                         R9 R8 R2
       71 CALL                             R6 2 1
       72 SETTABLEKS                       R6 R5 K9 ["debuggerConnectionIdToCurrentThreadId"]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       77 GETTABLEKS                       R6 R6 K3 ["join"]
       79 GETTABLEKS                       R7 R0 K10 ["currentFrameMap"]
       81 NEWTABLE                         R8 1 0
       83 LOADNIL                          R9
       84 SETTABLE                         R9 R8 R2
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R5 K10 ["currentFrameMap"]
       88 CALL                             R3 2 -1
       89 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentBreakpointId"}]
        7 GETTABLEKS                       R5 R1 K4 ["breakpointId"]
        9 SETTABLEKS                       R5 R4 K2 ["currentBreakpointId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["pause"]
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
        6 GETTABLEKS                       R2 R2 K2 ["join"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K4 [{"isPaused"}]
       10 GETTABLEKS                       R5 R1 K0 ["pause"]
       12 SETTABLEKS                       R5 R4 K3 ["isPaused"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       19 GETTABLEKS                       R2 R2 K2 ["join"]
       21 MOVE                             R3 R0
       22 DUPTABLE                         R4 K6 [{"isPaused", "debuggerConnectionIdToCurrentThreadId"}]
       23 GETTABLEKS                       R5 R1 K0 ["pause"]
       25 SETTABLEKS                       R5 R4 K3 ["isPaused"]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K5 ["debuggerConnectionIdToCurrentThreadId"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_7:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R0 K0 ["debuggerConnectionIdToCurrentThreadId"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["debuggerConnectionIdToCurrentThreadId"]
        8 GETTABLEKS                       R4 R2 K0 ["debuggerConnectionIdToCurrentThreadId"]
       10 GETTABLEKS                       R5 R0 K1 ["currentDebuggerConnectionId"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIFNOTEQKNIL                  R3 ; [+8]
       15 GETTABLEKS                       R3 R2 K0 ["debuggerConnectionIdToCurrentThreadId"]
       17 GETTABLEKS                       R4 R0 K1 ["currentDebuggerConnectionId"]
       19 GETTABLEKS                       R5 R1 K2 ["threadId"]
       21 SETTABLE                         R5 R3 R4
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R4 R0 K3 ["currentFrameMap"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K3 ["currentFrameMap"]
       28 GETTABLEKS                       R4 R2 K3 ["currentFrameMap"]
       30 GETTABLEKS                       R5 R0 K1 ["currentDebuggerConnectionId"]
       32 GETTABLE                         R3 R4 R5
       33 JUMPIFNOTEQKNIL                  R3 ; [+8]
       35 GETTABLEKS                       R3 R2 K3 ["currentFrameMap"]
       37 GETTABLEKS                       R4 R0 K1 ["currentDebuggerConnectionId"]
       39 NEWTABLE                         R5 0 0
       41 SETTABLE                         R5 R3 R4
       42 GETTABLEKS                       R4 R2 K3 ["currentFrameMap"]
       44 GETTABLEKS                       R5 R0 K1 ["currentDebuggerConnectionId"]
       46 GETTABLE                         R3 R4 R5
       47 GETTABLEKS                       R4 R1 K2 ["threadId"]
       49 LOADN                            R5 1
       50 SETTABLE                         R5 R3 R4
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K4 ["Dictionary"]
       54 GETTABLEKS                       R3 R3 K5 ["join"]
       56 MOVE                             R4 R0
       57 MOVE                             R5 R2
       58 CALL                             R3 2 -1
       59 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"currentDebuggerConnectionId"}]
        7 GETTABLEKS                       R5 R1 K4 ["debuggerConnectionId"]
        9 SETTABLEKS                       R5 R4 K2 ["currentDebuggerConnectionId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R0 K8 ["Src"]
       34 GETTABLEKS                       R4 R4 K11 ["Actions"]
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R4 K12 ["Callstack"]
       40 GETTABLEKS                       R6 R6 K13 ["SetCurrentThread"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R4 K12 ["Callstack"]
       47 GETTABLEKS                       R7 R7 K14 ["SetCurrentFrameNumber"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R4 K15 ["Common"]
       54 GETTABLEKS                       R8 R8 K16 ["Resumed"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K4 [require]
       59 GETTABLEKS                       R9 R4 K15 ["Common"]
       61 GETTABLEKS                       R9 R9 K17 ["SetPausedState"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K4 [require]
       66 GETTABLEKS                       R10 R4 K15 ["Common"]
       68 GETTABLEKS                       R10 R10 K18 ["SimPaused"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K4 [require]
       73 GETTABLEKS                       R11 R4 K15 ["Common"]
       75 GETTABLEKS                       R11 R11 K19 ["SetCurrentBreakpointId"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K4 [require]
       80 GETTABLEKS                       R12 R4 K15 ["Common"]
       82 GETTABLEKS                       R12 R12 K20 ["ClearConnectionData"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K4 [require]
       87 GETTABLEKS                       R13 R4 K12 ["Callstack"]
       89 GETTABLEKS                       R13 R13 K21 ["AddThreadId"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K4 [require]
       94 GETTABLEKS                       R14 R4 K15 ["Common"]
       96 GETTABLEKS                       R14 R14 K22 ["SetFocusedDebuggerConnection"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K4 [require]
      101 GETTABLEKS                       R15 R0 K5 ["Packages"]
      103 GETTABLEKS                       R15 R15 K23 ["Framework"]
      105 CALL                             R14 1 1
      106 GETTABLEKS                       R15 R14 K9 ["Util"]
      108 GETTABLEKS                       R16 R15 K24 ["deepCopy"]
      110 GETIMPORT                        R17 K4 [require]
      112 GETTABLEKS                       R18 R0 K8 ["Src"]
      114 GETTABLEKS                       R18 R18 K25 ["Models"]
      116 GETTABLEKS                       R18 R18 K26 ["DebuggerStateToken"]
      118 CALL                             R17 1 1
      119 DUPTABLE                         R18 K37 [{["debuggerConnectionIdToDST"], ["currentDebuggerConnectionId"], ["debuggerConnectionIdToCurrentThreadId"], ["currentFrameMap"], ["currentBreakpointId"] = , ["isPaused"] = False, ["hitException"], ["pausedDebuggerConnectionIds"]}]
      120 NEWTABLE                         R19 0 0
      122 SETTABLEKS                       R19 R18 K27 ["debuggerConnectionIdToDST"]
      124 GETTABLEKS                       R19 R3 K38 ["kInvalidDebuggerConnectionId"]
      126 SETTABLEKS                       R19 R18 K28 ["currentDebuggerConnectionId"]
      128 NEWTABLE                         R19 0 0
      130 SETTABLEKS                       R19 R18 K29 ["debuggerConnectionIdToCurrentThreadId"]
      132 NEWTABLE                         R19 0 0
      134 SETTABLEKS                       R19 R18 K30 ["currentFrameMap"]
      136 NEWTABLE                         R19 0 0
      138 SETTABLEKS                       R19 R18 K35 ["hitException"]
      140 NEWTABLE                         R19 0 0
      142 SETTABLEKS                       R19 R18 K36 ["pausedDebuggerConnectionIds"]
      144 GETTABLEKS                       R19 R1 K39 ["createReducer"]
      146 MOVE                             R20 R18
      147 NEWTABLE                         R21 16 0
      149 GETTABLEKS                       R22 R5 K40 ["name"]
      151 DUPCLOSURE                       R23 K41 [PROTO_0]
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R2
      154 SETTABLE                         R23 R21 R22
      155 GETTABLEKS                       R22 R6 K40 ["name"]
      157 DUPCLOSURE                       R23 K42 [PROTO_1]
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R2
      160 SETTABLE                         R23 R21 R22
      161 GETTABLEKS                       R22 R7 K40 ["name"]
      163 DUPCLOSURE                       R23 K43 [PROTO_2]
      164 CAPTURE                          VAL R2
      165 SETTABLE                         R23 R21 R22
      166 GETTABLEKS                       R22 R11 K40 ["name"]
      168 DUPCLOSURE                       R23 K44 [PROTO_3]
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R16
      172 SETTABLE                         R23 R21 R22
      173 GETTABLEKS                       R22 R9 K40 ["name"]
      175 DUPCLOSURE                       R23 K45 [PROTO_4]
      176 CAPTURE                          VAL R2
      177 SETTABLE                         R23 R21 R22
      178 GETTABLEKS                       R22 R10 K40 ["name"]
      180 DUPCLOSURE                       R23 K46 [PROTO_5]
      181 CAPTURE                          VAL R2
      182 SETTABLE                         R23 R21 R22
      183 GETTABLEKS                       R22 R8 K40 ["name"]
      185 DUPCLOSURE                       R23 K47 [PROTO_6]
      186 CAPTURE                          VAL R2
      187 SETTABLE                         R23 R21 R22
      188 GETTABLEKS                       R22 R12 K40 ["name"]
      190 DUPCLOSURE                       R23 K48 [PROTO_7]
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R2
      193 SETTABLE                         R23 R21 R22
      194 GETTABLEKS                       R22 R13 K40 ["name"]
      196 DUPCLOSURE                       R23 K49 [PROTO_8]
      197 CAPTURE                          VAL R2
      198 SETTABLE                         R23 R21 R22
      199 CALL                             R19 2 -1
      200 RETURN                           R19 -1
