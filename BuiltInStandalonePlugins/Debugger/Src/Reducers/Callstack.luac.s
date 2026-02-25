PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"stateTokenToCallstackVars"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["stateTokenToCallstackVars"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["debuggerStateToken"]
       18 DUPTABLE                         R9 K7 [{"threadList", "threadIdToFrameList"}]
       19 GETUPVAL                         R12 0
       20 GETTABLEKS                       R11 R12 K8 ["List"]
       22 GETTABLEKS                       R10 R11 K1 ["join"]
       24 GETTABLEKS                       R13 R0 K2 ["stateTokenToCallstackVars"]
       26 GETTABLEKS                       R14 R1 K4 ["debuggerStateToken"]
       28 GETTABLE                         R12 R13 R14
       29 GETTABLEKS                       R11 R12 K5 ["threadList"]
       31 NEWTABLE                         R12 0 1
       33 GETUPVAL                         R14 1
       34 GETTABLEKS                       R13 R14 K9 ["fromData"]
       36 MOVE                             R14 R1
       37 CALL                             R13 1 -1
       38 SETLIST                          R12 R13 -1 [1]
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K5 ["threadList"]
       43 GETTABLEKS                       R12 R0 K2 ["stateTokenToCallstackVars"]
       45 GETTABLEKS                       R13 R1 K4 ["debuggerStateToken"]
       47 GETTABLE                         R11 R12 R13
       48 GETTABLEKS                       R10 R11 K6 ["threadIdToFrameList"]
       50 SETTABLEKS                       R10 R9 K6 ["threadIdToFrameList"]
       52 SETTABLE                         R9 R7 R8
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K2 ["stateTokenToCallstackVars"]
       56 CALL                             R2 2 -1
       57 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["stateTokenToCallstackVars"]
        2 GETTABLEKS                       R4 R1 K1 ["debuggerStateToken"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOTEQKNIL                  R2 ; [+7]
        7 LOADB                            R3 0
        8 FASTCALL1                        ASSERT R3 ; [+2]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 1 0
       12 RETURN                           R0 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["Dictionary"]
       16 GETTABLEKS                       R2 R3 K5 ["join"]
       18 MOVE                             R3 R0
       19 DUPTABLE                         R4 K6 [{"stateTokenToCallstackVars"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K4 ["Dictionary"]
       23 GETTABLEKS                       R5 R6 K5 ["join"]
       25 GETTABLEKS                       R6 R0 K0 ["stateTokenToCallstackVars"]
       27 NEWTABLE                         R7 1 0
       29 GETTABLEKS                       R8 R1 K1 ["debuggerStateToken"]
       31 DUPTABLE                         R9 K9 [{"threadIdToFrameList", "threadList"}]
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R11 R12 K4 ["Dictionary"]
       35 GETTABLEKS                       R10 R11 K5 ["join"]
       37 GETTABLEKS                       R13 R0 K0 ["stateTokenToCallstackVars"]
       39 GETTABLEKS                       R14 R1 K1 ["debuggerStateToken"]
       41 GETTABLE                         R12 R13 R14
       42 GETTABLEKS                       R11 R12 K7 ["threadIdToFrameList"]
       44 NEWTABLE                         R12 1 0
       46 GETTABLEKS                       R13 R1 K10 ["threadId"]
       48 GETTABLEKS                       R14 R1 K11 ["frameList"]
       50 SETTABLE                         R14 R12 R13
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K7 ["threadIdToFrameList"]
       54 GETTABLEKS                       R12 R0 K0 ["stateTokenToCallstackVars"]
       56 GETTABLEKS                       R13 R1 K1 ["debuggerStateToken"]
       58 GETTABLE                         R11 R12 R13
       59 GETTABLEKS                       R10 R11 K8 ["threadList"]
       61 SETTABLEKS                       R10 R9 K8 ["threadList"]
       63 SETTABLE                         R9 R7 R8
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K0 ["stateTokenToCallstackVars"]
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1

PROTO_2:
        0 LOADB                            R3 1
        1 GETTABLEKS                       R5 R0 K0 ["stateTokenToCallstackVars"]
        3 GETTABLEKS                       R6 R1 K1 ["debuggerStateToken"]
        5 GETTABLE                         R4 R5 R6
        6 JUMPIFEQKNIL                     R4 ; [+15]
        8 GETTABLEKS                       R7 R0 K0 ["stateTokenToCallstackVars"]
       10 GETTABLEKS                       R8 R1 K1 ["debuggerStateToken"]
       12 GETTABLE                         R6 R7 R8
       13 GETTABLEKS                       R5 R6 K2 ["threadIdToFrameList"]
       15 GETTABLEKS                       R6 R1 K3 ["threadId"]
       17 GETTABLE                         R4 R5 R6
       18 JUMPIFEQKNIL                     R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 FASTCALL1                        ASSERT R3 ; [+2]
       23 GETIMPORT                        R2 K5 [assert]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K6 ["Dictionary"]
       29 GETTABLEKS                       R2 R3 K7 ["join"]
       31 MOVE                             R3 R0
       32 DUPTABLE                         R4 K8 [{"stateTokenToCallstackVars"}]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K6 ["Dictionary"]
       36 GETTABLEKS                       R5 R6 K7 ["join"]
       38 GETTABLEKS                       R6 R0 K0 ["stateTokenToCallstackVars"]
       40 NEWTABLE                         R7 1 0
       42 GETTABLEKS                       R8 R1 K1 ["debuggerStateToken"]
       44 DUPTABLE                         R9 K10 [{"threadList", "threadIdToFrameList"}]
       45 GETTABLEKS                       R12 R0 K0 ["stateTokenToCallstackVars"]
       47 GETTABLEKS                       R13 R1 K1 ["debuggerStateToken"]
       49 GETTABLE                         R11 R12 R13
       50 JUMPIFNOT                        R11 ; [+8]
       51 GETTABLEKS                       R12 R0 K0 ["stateTokenToCallstackVars"]
       53 GETTABLEKS                       R13 R1 K1 ["debuggerStateToken"]
       55 GETTABLE                         R11 R12 R13
       56 GETTABLEKS                       R10 R11 K9 ["threadList"]
       58 JUMPIF                           R10 ; [+2]
       59 NEWTABLE                         R10 0 0
       61 SETTABLEKS                       R10 R9 K9 ["threadList"]
       63 GETTABLEKS                       R12 R0 K0 ["stateTokenToCallstackVars"]
       65 GETTABLEKS                       R13 R1 K1 ["debuggerStateToken"]
       67 GETTABLE                         R11 R12 R13
       68 JUMPIFNOT                        R11 ; [+8]
       69 GETTABLEKS                       R12 R0 K0 ["stateTokenToCallstackVars"]
       71 GETTABLEKS                       R13 R1 K1 ["debuggerStateToken"]
       73 GETTABLE                         R11 R12 R13
       74 GETTABLEKS                       R10 R11 K2 ["threadIdToFrameList"]
       76 JUMPIF                           R10 ; [+2]
       77 NEWTABLE                         R10 0 0
       79 SETTABLEKS                       R10 R9 K2 ["threadIdToFrameList"]
       81 SETTABLE                         R9 R7 R8
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K0 ["stateTokenToCallstackVars"]
       85 CALL                             R2 2 -1
       86 RETURN                           R2 -1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 GETTABLEKS                       R7 R0 K2 ["stateTokenToCallstackVars"]
        6 GETTABLEKS                       R8 R1 K3 ["debuggerStateToken"]
        8 GETTABLE                         R6 R7 R8
        9 GETTABLEKS                       R4 R6 K4 ["threadList"]
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 GETTABLEKS                       R8 R7 K5 ["threadId"]
       15 GETTABLEKS                       R9 R1 K5 ["threadId"]
       17 JUMPIFEQ                         R8 R9 ; [+8]
       19 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R7
       23 GETIMPORT                        R8 K8 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R3 2 [inext] ; [-14]
       28 GETTABLEKS                       R6 R0 K2 ["stateTokenToCallstackVars"]
       30 GETTABLEKS                       R7 R1 K3 ["debuggerStateToken"]
       32 GETTABLE                         R5 R6 R7
       33 JUMPIFNOTEQKNIL                  R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 FASTCALL1                        ASSERT R4 ; [+2]
       38 GETIMPORT                        R3 K10 [assert]
       40 CALL                             R3 1 0
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K11 ["Dictionary"]
       44 GETTABLEKS                       R3 R4 K12 ["join"]
       46 GETTABLEKS                       R6 R0 K2 ["stateTokenToCallstackVars"]
       48 GETTABLEKS                       R7 R1 K3 ["debuggerStateToken"]
       50 GETTABLE                         R5 R6 R7
       51 GETTABLEKS                       R4 R5 K13 ["threadIdToFrameList"]
       53 NEWTABLE                         R5 0 0
       55 CALL                             R3 2 1
       56 GETTABLEKS                       R4 R1 K5 ["threadId"]
       58 LOADNIL                          R5
       59 SETTABLE                         R5 R3 R4
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R5 R6 K11 ["Dictionary"]
       63 GETTABLEKS                       R4 R5 K12 ["join"]
       65 MOVE                             R5 R0
       66 DUPTABLE                         R6 K14 [{"stateTokenToCallstackVars"}]
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R8 R9 K11 ["Dictionary"]
       70 GETTABLEKS                       R7 R8 K12 ["join"]
       72 GETTABLEKS                       R8 R0 K2 ["stateTokenToCallstackVars"]
       74 NEWTABLE                         R9 1 0
       76 GETTABLEKS                       R10 R1 K3 ["debuggerStateToken"]
       78 DUPTABLE                         R11 K15 [{"threadIdToFrameList", "threadList"}]
       79 SETTABLEKS                       R3 R11 K13 ["threadIdToFrameList"]
       81 SETTABLEKS                       R2 R11 K4 ["threadList"]
       83 SETTABLE                         R11 R9 R10
       84 CALL                             R7 2 1
       85 SETTABLEKS                       R7 R6 K2 ["stateTokenToCallstackVars"]
       87 CALL                             R4 2 -1
       88 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"stateTokenToCallstackVars"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["stateTokenToCallstackVars"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["debuggerStateToken"]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R9 R10 K5 ["None"]
       21 SETTABLE                         R9 R7 R8
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K2 ["stateTokenToCallstackVars"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"listOfEnabledColumns"}]
        7 GETTABLEKS                       R5 R1 K2 ["listOfEnabledColumns"]
        9 SETTABLEKS                       R5 R4 K2 ["listOfEnabledColumns"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R4 K9 ["Actions"]
       27 GETTABLEKS                       R5 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R5 K10 ["Models"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R3 K11 ["Callstack"]
       35 GETTABLEKS                       R6 R7 K12 ["AddCallstack"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R3 K11 ["Callstack"]
       42 GETTABLEKS                       R7 R8 K13 ["AddThreadId"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R3 K14 ["Common"]
       49 GETTABLEKS                       R8 R9 K15 ["Resumed"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R3 K14 ["Common"]
       56 GETTABLEKS                       R9 R10 K16 ["ClearConnectionData"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R11 R3 K14 ["Common"]
       63 GETTABLEKS                       R10 R11 K17 ["SimPaused"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R12 R3 K11 ["Callstack"]
       70 GETTABLEKS                       R11 R12 K18 ["ColumnFilterChange"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K4 [require]
       75 GETTABLEKS                       R12 R4 K19 ["ThreadInfo"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R13 R4 K20 ["DebuggerStateToken"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K4 [require]
       85 GETTABLEKS                       R15 R4 K11 ["Callstack"]
       87 GETTABLEKS                       R14 R15 K21 ["CallstackRow"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K4 [require]
       92 GETTABLEKS                       R16 R4 K11 ["Callstack"]
       94 GETTABLEKS                       R15 R16 K22 ["ColumnEnum"]
       96 CALL                             R14 1 1
       97 DUPTABLE                         R15 K25 [{"stateTokenToCallstackVars", "listOfEnabledColumns"}]
       98 NEWTABLE                         R16 0 0
      100 SETTABLEKS                       R16 R15 K23 ["stateTokenToCallstackVars"]
      102 NEWTABLE                         R16 0 4
      104 GETTABLEKS                       R17 R14 K26 ["Frame"]
      106 GETTABLEKS                       R18 R14 K27 ["Source"]
      108 GETTABLEKS                       R19 R14 K28 ["Function"]
      110 GETTABLEKS                       R20 R14 K29 ["Line"]
      112 SETLIST                          R16 R17 4 [1]
      114 SETTABLEKS                       R16 R15 K24 ["listOfEnabledColumns"]
      116 GETTABLEKS                       R16 R1 K30 ["createReducer"]
      118 MOVE                             R17 R15
      119 NEWTABLE                         R18 8 0
      121 GETTABLEKS                       R19 R6 K31 ["name"]
      123 DUPCLOSURE                       R20 K32 [PROTO_0]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R11
      126 SETTABLE                         R20 R18 R19
      127 GETTABLEKS                       R19 R5 K31 ["name"]
      129 DUPCLOSURE                       R20 K33 [PROTO_1]
      130 CAPTURE                          VAL R2
      131 SETTABLE                         R20 R18 R19
      132 GETTABLEKS                       R19 R9 K31 ["name"]
      134 DUPCLOSURE                       R20 K34 [PROTO_2]
      135 CAPTURE                          VAL R2
      136 SETTABLE                         R20 R18 R19
      137 GETTABLEKS                       R19 R7 K31 ["name"]
      139 DUPCLOSURE                       R20 K35 [PROTO_3]
      140 CAPTURE                          VAL R2
      141 SETTABLE                         R20 R18 R19
      142 GETTABLEKS                       R19 R8 K31 ["name"]
      144 DUPCLOSURE                       R20 K36 [PROTO_4]
      145 CAPTURE                          VAL R2
      146 SETTABLE                         R20 R18 R19
      147 GETTABLEKS                       R19 R10 K31 ["name"]
      149 DUPCLOSURE                       R20 K37 [PROTO_5]
      150 CAPTURE                          VAL R2
      151 SETTABLE                         R20 R18 R19
      152 CALL                             R16 2 -1
      153 RETURN                           R16 -1
