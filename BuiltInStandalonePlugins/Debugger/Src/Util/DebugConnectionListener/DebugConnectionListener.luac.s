PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["store"]
        4 NAMECALL                         R3 R3 K1 ["getState"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R3 R3 K2 ["Common"]
        9 GETTABLEKS                       R3 R3 K3 ["debuggerConnectionIdToDST"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["debuggerConnectionId"]
       14 GETTABLE                         R2 R3 R4
       15 JUMPIFEQ                         R1 R2 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["ThreadId"]
        7 GETUPVAL                         R4 3
        8 LOADN                            R5 0
        9 GETUPVAL                         R6 4
       10 CALL                             R2 4 -1
       11 NAMECALL                         R0 R0 K2 ["dispatch"]
       13 CALL                             R0 -1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K0 ["store"]
       17 GETUPVAL                         R2 5
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K1 ["ThreadId"]
       21 CALL                             R2 1 -1
       22 NAMECALL                         R0 R0 K2 ["dispatch"]
       24 CALL                             R0 -1 0
       25 GETUPVAL                         R0 2
       26 LOADN                            R2 0
       27 NAMECALL                         R0 R0 K3 ["GetFrame"]
       29 CALL                             R0 2 1
       30 GETUPVAL                         R1 4
       31 GETTABLEKS                       R3 R0 K4 ["Script"]
       33 GETUPVAL                         R4 6
       34 GETTABLEKS                       R4 R4 K5 ["currentDebuggerConnectionId"]
       36 GETTABLEKS                       R5 R0 K6 ["Line"]
       38 LOADB                            R6 1
       39 NAMECALL                         R1 R1 K7 ["SetScriptLineMarker"]
       41 CALL                             R1 5 0
       42 GETUPVAL                         R1 4
       43 GETTABLEKS                       R3 R0 K4 ["Script"]
       45 GETUPVAL                         R4 6
       46 GETTABLEKS                       R4 R4 K5 ["currentDebuggerConnectionId"]
       48 GETTABLEKS                       R5 R0 K6 ["Line"]
       50 LOADB                            R6 0
       51 NAMECALL                         R1 R1 K8 ["OpenScriptAtLine"]
       53 CALL                             R1 5 0
       54 GETUPVAL                         R1 7
       55 JUMPIFNOT                        R1 ; [+9]
       56 GETUPVAL                         R1 4
       57 GETUPVAL                         R3 8
       58 GETTABLEKS                       R3 R3 K9 ["ExceptionText"]
       60 GETTABLEKS                       R4 R0 K6 ["Line"]
       62 NAMECALL                         R1 R1 K10 ["OpenExceptionMessagePopup"]
       64 CALL                             R1 3 0
       65 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["store"]
        4 NAMECALL                         R4 R4 K1 ["getState"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R4 R4 K2 ["Common"]
        9 GETTABLEKS                       R4 R4 K3 ["debuggerConnectionIdToDST"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["debuggerConnectionId"]
       14 GETTABLE                         R3 R4 R5
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 MOVE                             R2 R1
       32 CALL                             R2 0 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["store"]
        5 NAMECALL                         R4 R4 K1 ["getState"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R4 R4 K2 ["Common"]
       10 GETTABLEKS                       R4 R4 K3 ["debuggerConnectionIdToDST"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["debuggerConnectionId"]
       15 GETTABLE                         R3 R4 R5
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 NEWCLOSURE                       R1 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U9
       32 MOVE                             R2 R1
       33 CALL                             R2 0 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["store"]
        4 NAMECALL                         R4 R4 K1 ["getState"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R4 R4 K2 ["Common"]
        9 GETTABLEKS                       R4 R4 K3 ["debuggerConnectionIdToDST"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["debuggerConnectionId"]
       14 GETTABLE                         R3 R4 R5
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 NAMECALL                         R2 R0 K5 ["GetArg"]
       33 CALL                             R2 1 1
       34 LENGTH                           R4 R2
       35 LOADN                            R5 0
       36 JUMPIFNOTLT                      R5 R4 ; [+3]
       38 GETTABLEN                        R3 R2 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R3
       41 GETIMPORT                        R4 K7 [pairs]
       43 MOVE                             R5 R2
       44 CALL                             R4 1 3
       45 FORGPREP_NEXT                    R4
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R9 R9 K0 ["store"]
       49 GETUPVAL                         R11 9
       50 GETTABLEKS                       R12 R8 K8 ["ThreadId"]
       52 GETTABLEKS                       R13 R8 K9 ["ThreadName"]
       54 GETUPVAL                         R14 0
       55 CALL                             R11 3 -1
       56 NAMECALL                         R9 R9 K10 ["dispatch"]
       58 CALL                             R9 -1 0
       59 GETTABLEKS                       R9 R8 K8 ["ThreadId"]
       61 GETUPVAL                         R10 8
       62 GETTABLEKS                       R10 R10 K8 ["ThreadId"]
       64 JUMPIFNOTEQ                      R9 R10 ; [+2]
       66 MOVE                             R3 R8
       67 FORGLOOP                         R4 2 ; [-22]
       69 LENGTH                           R4 R2
       70 LOADN                            R5 0
       71 JUMPIFNOTLT                      R5 R4 ; [+24]
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R4 R4 K0 ["store"]
       76 GETUPVAL                         R6 10
       77 MOVE                             R7 R3
       78 GETUPVAL                         R8 3
       79 GETUPVAL                         R9 0
       80 GETUPVAL                         R10 11
       81 NEWCLOSURE                       R11 P1
       82 CAPTURE                          REF R3
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          UPVAL U8
       92 CALL                             R6 5 -1
       93 NAMECALL                         R4 R4 K10 ["dispatch"]
       95 CALL                             R4 -1 0
       96 CLOSEUPVALS                      R3
       97 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R6 R0 K0 ["bufferedPauseEvents"]
        2 SETTABLE                         R2 R6 R3
        3 GETIMPORT                        R6 K2 [wait]
        5 LOADK                            R7 K3 [0.1]
        6 CALL                             R6 1 0
        7 GETTABLEKS                       R7 R0 K0 ["bufferedPauseEvents"]
        9 GETTABLE                         R6 R7 R3
       10 JUMPIFEQ                         R6 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R7 R0 K4 ["debuggerConnections"]
       15 GETTABLEKS                       R8 R1 K5 ["Id"]
       17 GETTABLE                         R6 R7 R8
       18 JUMPIFNOTEQKNIL                  R6 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R6 R0 K6 ["store"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R9 R1 K5 ["Id"]
       26 CALL                             R8 1 -1
       27 NAMECALL                         R6 R6 K7 ["dispatch"]
       29 CALL                             R6 -1 0
       30 GETTABLEKS                       R6 R0 K6 ["store"]
       32 NAMECALL                         R6 R6 K8 ["getState"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R6 K9 ["Common"]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K10 ["fromData"]
       40 DUPTABLE                         R9 K12 [{"debuggerConnectionId"}]
       41 GETTABLEKS                       R10 R1 K5 ["Id"]
       43 SETTABLEKS                       R10 R9 K11 ["debuggerConnectionId"]
       45 CALL                             R8 1 1
       46 FASTCALL1                        TOSTRING R3 ; [+3]
       47 MOVE                             R10 R3
       48 GETIMPORT                        R9 K14 [tostring]
       50 CALL                             R9 1 1
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K15 ["DebuggerPauseReason"]
       54 GETTABLEKS                       R10 R10 K16 ["Breakpoint"]
       56 JUMPIFNOTEQ                      R9 R10 ; [+17]
       58 GETTABLEKS                       R9 R2 K16 ["Breakpoint"]
       60 JUMPIFEQKNIL                     R9 ; [+13]
       62 GETTABLEKS                       R9 R0 K6 ["store"]
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R12 R2 K16 ["Breakpoint"]
       67 GETTABLEKS                       R12 R12 K17 ["MetaBreakpointId"]
       69 CALL                             R11 1 -1
       70 NAMECALL                         R9 R9 K7 ["dispatch"]
       72 CALL                             R9 -1 0
       73 JUMP                             ; [0]
       74 NEWCLOSURE                       R9 P0
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R0
       77 FASTCALL1                        TOSTRING R3 ; [+3]
       78 MOVE                             R12 R3
       79 GETIMPORT                        R11 K14 [tostring]
       81 CALL                             R11 1 1
       82 GETUPVAL                         R12 2
       83 GETTABLEKS                       R12 R12 K15 ["DebuggerPauseReason"]
       85 GETTABLEKS                       R12 R12 K18 ["Exception"]
       87 JUMPIFEQ                         R11 R12 ; [+2]
       89 LOADB                            R10 0 +1
       90 LOADB                            R10 1
       91 GETTABLEKS                       R11 R0 K6 ["store"]
       93 GETUPVAL                         R13 4
       94 MOVE                             R14 R8
       95 GETTABLEKS                       R15 R2 K19 ["ThreadId"]
       97 MOVE                             R16 R10
       98 CALL                             R13 3 -1
       99 NAMECALL                         R11 R11 K7 ["dispatch"]
      101 CALL                             R11 -1 0
      102 NEWCLOSURE                       R13 P1
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U5
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R4
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R2
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          VAL R5
      115 NAMECALL                         R11 R1 K20 ["GetThreads"]
      117 CALL                             R11 2 0
      118 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["store"]
        2 NAMECALL                         R4 R4 K1 ["getState"]
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R5 R4 K2 ["Common"]
        7 GETTABLEKS                       R7 R5 K3 ["debuggerConnectionIdToDST"]
        9 GETTABLEKS                       R8 R1 K4 ["Id"]
       11 GETTABLE                         R6 R7 R8
       12 JUMPIFNOT                        R6 ; [+16]
       13 GETTABLEKS                       R9 R1 K4 ["Id"]
       15 LOADB                            R10 1
       16 NAMECALL                         R7 R3 K5 ["RemoveScriptLineMarkers"]
       18 CALL                             R7 3 0
       19 GETTABLEKS                       R7 R0 K0 ["store"]
       21 GETUPVAL                         R9 0
       22 MOVE                             R10 R6
       23 GETTABLEKS                       R11 R2 K6 ["ThreadId"]
       25 CALL                             R9 2 -1
       26 NAMECALL                         R7 R7 K7 ["dispatch"]
       28 CALL                             R7 -1 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 GETUPVAL                         R7 2
        5 GETUPVAL                         R8 3
        6 NAMECALL                         R2 R2 K0 ["onExecutionPaused"]
        8 CALL                             R2 6 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R1 R1 K0 ["onExecutionResumed"]
        6 CALL                             R1 4 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R5 R0 K0 ["store"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R8 R2 K1 ["Id"]
        5 CALL                             R7 1 -1
        6 NAMECALL                         R5 R5 K2 ["dispatch"]
        8 CALL                             R5 -1 0
        9 NEWTABLE                         R5 0 0
       11 GETTABLEKS                       R6 R2 K3 ["Paused"]
       13 NEWCLOSURE                       R8 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R4
       18 NAMECALL                         R6 R6 K4 ["Connect"]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K5 ["paused"]
       23 GETTABLEKS                       R6 R2 K6 ["Resumed"]
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 NAMECALL                         R6 R6 K4 ["Connect"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K7 ["resumed"]
       34 GETTABLEKS                       R6 R0 K8 ["connectionEventConnections"]
       36 SETTABLE                         R5 R6 R1
       37 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R5 R1
        1 JUMPIFNOT                        R5 ; [+6]
        2 GETTABLEKS                       R6 R1 K0 ["Id"]
        4 JUMPIFNOTEQKN                    R6 K1 [0] ; [+2]
        6 LOADB                            R5 0 +1
        7 LOADB                            R5 1
        8 FASTCALL1                        ASSERT R5 ; [+2]
        9 GETIMPORT                        R4 K3 [assert]
       11 CALL                             R4 1 0
       12 GETTABLEKS                       R4 R0 K4 ["debuggerConnections"]
       14 GETTABLEKS                       R5 R1 K0 ["Id"]
       16 SETTABLE                         R1 R4 R5
       17 GETTABLEKS                       R6 R1 K0 ["Id"]
       19 MOVE                             R7 R1
       20 MOVE                             R8 R2
       21 MOVE                             R9 R3
       22 NAMECALL                         R4 R0 K5 ["connectEvents"]
       24 CALL                             R4 5 0
       25 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R5 R1
        1 JUMPIFNOT                        R5 ; [+6]
        2 GETTABLEKS                       R6 R1 K0 ["Id"]
        4 JUMPIFNOTEQKN                    R6 K1 [0] ; [+2]
        6 LOADB                            R5 0 +1
        7 LOADB                            R5 1
        8 FASTCALL1                        ASSERT R5 ; [+2]
        9 GETIMPORT                        R4 K3 [assert]
       11 CALL                             R4 1 0
       12 JUMPIFEQKNIL                     R3 ; [+7]
       14 GETTABLEKS                       R6 R1 K0 ["Id"]
       16 LOADB                            R7 1
       17 NAMECALL                         R4 R3 K4 ["RemoveScriptLineMarkers"]
       19 CALL                             R4 3 0
       20 GETTABLEKS                       R4 R0 K5 ["store"]
       22 NAMECALL                         R4 R4 K6 ["getState"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K7 ["Common"]
       27 GETTABLEKS                       R7 R5 K8 ["debuggerConnectionIdToDST"]
       29 GETTABLEKS                       R8 R1 K0 ["Id"]
       31 GETTABLE                         R6 R7 R8
       32 JUMPIFNOT                        R6 ; [+8]
       33 GETTABLEKS                       R7 R0 K5 ["store"]
       35 GETUPVAL                         R9 0
       36 MOVE                             R10 R6
       37 CALL                             R9 1 -1
       38 NAMECALL                         R7 R7 K9 ["dispatch"]
       40 CALL                             R7 -1 0
       41 GETTABLEKS                       R8 R0 K10 ["connectionEventConnections"]
       43 GETTABLEKS                       R9 R1 K0 ["Id"]
       45 GETTABLE                         R7 R8 R9
       46 JUMPIFNOT                        R7 ; [+14]
       47 GETIMPORT                        R7 K12 [pairs]
       49 GETTABLEKS                       R10 R0 K10 ["connectionEventConnections"]
       51 GETTABLEKS                       R11 R1 K0 ["Id"]
       53 GETTABLE                         R8 R10 R11
       54 CALL                             R7 1 3
       55 FORGPREP_NEXT                    R7
       56 NAMECALL                         R12 R11 K13 ["Disconnect"]
       58 CALL                             R12 1 0
       59 FORGLOOP                         R7 2 ; [-4]
       61 GETTABLEKS                       R7 R0 K10 ["connectionEventConnections"]
       63 GETTABLEKS                       R8 R1 K0 ["Id"]
       65 LOADNIL                          R9
       66 SETTABLE                         R9 R7 R8
       67 GETTABLEKS                       R7 R0 K14 ["debuggerConnections"]
       69 GETTABLEKS                       R8 R1 K0 ["Id"]
       71 LOADNIL                          R9
       72 SETTABLE                         R9 R7 R8
       73 RETURN                           R0 0

PROTO_12:
        0 JUMPIFEQKNIL                     R1 ; [+4]
        2 GETTABLEKS                       R2 R1 K0 ["Id"]
        4 JUMP                             ; [+3]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["kInvalidDebuggerConnectionId"]
        8 GETTABLEKS                       R3 R0 K2 ["store"]
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R2
       12 CALL                             R5 1 -1
       13 NAMECALL                         R3 R3 K3 ["dispatch"]
       15 CALL                             R3 -1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R1 R1 K0 ["onConnectionStarted"]
        6 CALL                             R1 4 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETUPVAL                         R6 1
        4 NAMECALL                         R2 R2 K0 ["onConnectionEnded"]
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onFocusChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+6]
        2 GETIMPORT                        R4 K1 [game]
        4 LOADK                            R6 K2 ["DebuggerConnectionManager"]
        5 NAMECALL                         R4 R4 K3 ["GetService"]
        7 CALL                             R4 2 1
        8 MOVE                             R5 R2
        9 JUMPIF                           R5 ; [+6]
       10 GETIMPORT                        R5 K1 [game]
       12 LOADK                            R7 K4 ["DebuggerUIService"]
       13 NAMECALL                         R5 R5 K3 ["GetService"]
       15 CALL                             R5 2 1
       16 MOVE                             R6 R3
       17 JUMPIF                           R6 ; [+6]
       18 GETIMPORT                        R6 K1 [game]
       20 LOADK                            R8 K5 ["CrossDMScriptChangeListener"]
       21 NAMECALL                         R6 R6 K3 ["GetService"]
       23 CALL                             R6 2 1
       24 GETTABLEKS                       R7 R4 K6 ["ConnectionStarted"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R6
       30 NAMECALL                         R7 R7 K7 ["Connect"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R0 K8 ["_connectionStartedConnection"]
       35 GETTABLEKS                       R7 R4 K9 ["ConnectionEnded"]
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R5
       40 NAMECALL                         R7 R7 K7 ["Connect"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R0 K10 ["_connectionEndedConnection"]
       45 GETTABLEKS                       R7 R4 K11 ["FocusChanged"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R7 R7 K7 ["Connect"]
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R0 K12 ["_focusChangedConnection"]
       54 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R4 K1 [{"store"}]
        1 SETTABLEKS                       R0 R4 K0 ["store"]
        3 NEWTABLE                         R5 0 0
        5 SETTABLEKS                       R5 R4 K2 ["debuggerConnections"]
        7 NEWTABLE                         R5 0 0
        9 SETTABLEKS                       R5 R4 K3 ["connectionEventConnections"]
       11 GETUPVAL                         R5 0
       12 MOVE                             R6 R4
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R3
       16 CALL                             R5 4 0
       17 GETUPVAL                         R7 1
       18 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       20 MOVE                             R6 R4
       21 GETIMPORT                        R5 K5 [setmetatable]
       23 CALL                             R5 2 0
       24 MOVE                             R5 R1
       25 JUMPIF                           R5 ; [+6]
       26 GETIMPORT                        R5 K7 [game]
       28 LOADK                            R7 K8 ["DebuggerConnectionManager"]
       29 NAMECALL                         R5 R5 K9 ["GetService"]
       31 CALL                             R5 2 1
       32 NAMECALL                         R6 R5 K10 ["getAvailableConnection"]
       34 CALL                             R6 1 1
       35 JUMPIFNOT                        R6 ; [+22]
       36 MOVE                             R7 R2
       37 JUMPIF                           R7 ; [+6]
       38 GETIMPORT                        R7 K7 [game]
       40 LOADK                            R9 K11 ["DebuggerUIService"]
       41 NAMECALL                         R7 R7 K9 ["GetService"]
       43 CALL                             R7 2 1
       44 MOVE                             R8 R3
       45 JUMPIF                           R8 ; [+6]
       46 GETIMPORT                        R8 K7 [game]
       48 LOADK                            R10 K12 ["CrossDMScriptChangeListener"]
       49 NAMECALL                         R8 R8 K9 ["GetService"]
       51 CALL                             R8 2 1
       52 MOVE                             R11 R6
       53 MOVE                             R12 R7
       54 MOVE                             R13 R8
       55 NAMECALL                         R9 R4 K13 ["onConnectionStarted"]
       57 CALL                             R9 4 0
       58 RETURN                           R4 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["store"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["kInvalidDebuggerConnectionId"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R1 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETTABLEKS                       R1 R0 K3 ["_connectionStartedConnection"]
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETTABLEKS                       R1 R0 K3 ["_connectionStartedConnection"]
       15 NAMECALL                         R1 R1 K4 ["Disconnect"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K3 ["_connectionStartedConnection"]
       21 GETTABLEKS                       R1 R0 K5 ["_connectionEndedConnection"]
       23 JUMPIFNOT                        R1 ; [+8]
       24 GETTABLEKS                       R1 R0 K5 ["_connectionEndedConnection"]
       26 NAMECALL                         R1 R1 K4 ["Disconnect"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K5 ["_connectionEndedConnection"]
       32 GETTABLEKS                       R1 R0 K6 ["_focusChangedConnection"]
       34 JUMPIFNOT                        R1 ; [+8]
       35 GETTABLEKS                       R1 R0 K6 ["_focusChangedConnection"]
       37 NAMECALL                         R1 R1 K4 ["Disconnect"]
       39 CALL                             R1 1 0
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K6 ["_focusChangedConnection"]
       43 GETIMPORT                        R1 K8 [pairs]
       45 GETTABLEKS                       R2 R0 K9 ["debuggerConnections"]
       47 CALL                             R1 1 3
       48 FORGPREP_NEXT                    R1
       49 MOVE                             R8 R5
       50 LOADN                            R9 0
       51 NAMECALL                         R6 R0 K10 ["onConnectionEnded"]
       53 CALL                             R6 3 0
       54 FORGLOOP                         R1 2 ; [-6]
       56 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Actions"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Callstack"]
       15 GETTABLEKS                       R3 R3 K7 ["AddThreadId"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K8 ["Common"]
       22 GETTABLEKS                       R4 R4 K9 ["Resumed"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["Common"]
       29 GETTABLEKS                       R5 R5 K10 ["SimPaused"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K6 ["Callstack"]
       36 GETTABLEKS                       R6 R6 K11 ["SetCurrentThread"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R1 K8 ["Common"]
       43 GETTABLEKS                       R7 R7 K12 ["SetCurrentBreakpointId"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R1 K8 ["Common"]
       50 GETTABLEKS                       R8 R8 K13 ["SetFocusedDebuggerConnection"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R1 K8 ["Common"]
       57 GETTABLEKS                       R9 R9 K14 ["ClearConnectionData"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R0 K15 ["Thunks"]
       64 GETTABLEKS                       R10 R10 K16 ["Watch"]
       66 GETTABLEKS                       R10 R10 K17 ["LoadAllVariablesForThreadAndFrame"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K15 ["Thunks"]
       73 GETTABLEKS                       R11 R11 K6 ["Callstack"]
       75 GETTABLEKS                       R11 R11 K18 ["PopulateCallstackThreadThunk"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R0 K19 ["Models"]
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R11 K20 ["DebuggerStateToken"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETTABLEKS                       R14 R0 K21 ["Util"]
       89 GETTABLEKS                       R14 R14 K22 ["Constants"]
       91 CALL                             R13 1 1
       92 NEWTABLE                         R14 16 0
       94 SETTABLEKS                       R14 R14 K23 ["__index"]
       96 NEWTABLE                         R15 0 0
       98 SETTABLEKS                       R15 R14 K24 ["bufferedPauseEvents"]
      100 DUPCLOSURE                       R15 K25 [PROTO_5]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R10
      110 SETTABLEKS                       R15 R14 K26 ["onExecutionPaused"]
      112 DUPCLOSURE                       R15 K27 [PROTO_6]
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R15 R14 K28 ["onExecutionResumed"]
      116 DUPCLOSURE                       R15 K29 [PROTO_9]
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R15 R14 K30 ["connectEvents"]
      120 DUPCLOSURE                       R15 K31 [PROTO_10]
      121 SETTABLEKS                       R15 R14 K32 ["onConnectionStarted"]
      123 DUPCLOSURE                       R15 K33 [PROTO_11]
      124 CAPTURE                          VAL R8
      125 SETTABLEKS                       R15 R14 K34 ["onConnectionEnded"]
      127 DUPCLOSURE                       R15 K35 [PROTO_12]
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R7
      130 SETTABLEKS                       R15 R14 K36 ["onFocusChanged"]
      132 DUPCLOSURE                       R15 K37 [PROTO_16]
      133 DUPCLOSURE                       R16 K38 [PROTO_17]
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R14
      136 SETTABLEKS                       R16 R14 K39 ["new"]
      138 DUPCLOSURE                       R16 K40 [PROTO_18]
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R13
      141 SETTABLEKS                       R16 R14 K41 ["destroy"]
      143 RETURN                           R14 1
