PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["MockThreadMap"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        ASSERT R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 LOADN                            R4 0
        6 GETTABLE                         R3 R1 R4
        7 FASTCALL1                        ASSERT R3 ; [+2]
        8 GETIMPORT                        R2 K1 [assert]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["MockThreadIdToCallstackMap"]
       14 SETTABLE                         R1 R2 R0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["MockCallstackFrameToDebuggerVariables"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["new"]
        5 LOADN                            R3 1
        6 LOADK                            R4 K1 ["Alex"]
        7 LOADK                            R5 K2 ["Instance"]
        8 LOADK                            R6 K3 ["Map"]
        9 CALL                             R2 4 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["new"]
       13 LOADN                            R4 3
       14 LOADK                            R5 K4 ["Alex2"]
       15 LOADK                            R6 K5 ["somePreview"]
       16 LOADK                            R7 K6 ["map"]
       17 CALL                             R3 4 1
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R3
       21 SETLIST                          R6 R7 1 [1]
       23 NAMECALL                         R4 R2 K7 ["MockSetChildren"]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K0 ["new"]
       29 LOADN                            R5 2
       30 LOADK                            R6 K8 ["UnitedStates"]
       31 LOADK                            R7 K2 ["Instance"]
       32 LOADK                            R8 K3 ["Map"]
       33 CALL                             R4 4 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K0 ["new"]
       37 LOADN                            R6 4
       38 LOADK                            R7 K9 ["Wisconsin"]
       39 LOADK                            R8 K2 ["Instance"]
       40 LOADK                            R9 K3 ["Map"]
       41 CALL                             R5 4 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K0 ["new"]
       45 LOADN                            R7 5
       46 LOADK                            R8 K10 ["Madison"]
       47 LOADK                            R9 K5 ["somePreview"]
       48 LOADK                            R10 K6 ["map"]
       49 CALL                             R6 4 1
       50 NEWTABLE                         R9 0 1
       52 MOVE                             R10 R6
       53 SETLIST                          R9 R10 1 [1]
       55 NAMECALL                         R7 R5 K7 ["MockSetChildren"]
       57 CALL                             R7 2 0
       58 NEWTABLE                         R9 0 1
       60 MOVE                             R10 R5
       61 SETLIST                          R9 R10 1 [1]
       63 NAMECALL                         R7 R4 K7 ["MockSetChildren"]
       65 CALL                             R7 2 0
       66 NEWTABLE                         R7 0 5
       68 SETTABLEN                        R2 R7 1
       69 SETTABLEN                        R4 R7 2
       70 SETTABLEN                        R3 R7 3
       71 SETTABLEN                        R5 R7 4
       72 SETTABLEN                        R6 R7 5
       73 SETTABLEKS                       R7 R1 K11 ["VariableMap"]
       75 NEWTABLE                         R7 2 0
       77 SETTABLEKS                       R2 R7 K1 ["Alex"]
       79 SETTABLEKS                       R4 R7 K12 ["UnitedStatesMockDebugger"]
       81 SETTABLEKS                       R7 R1 K13 ["watchMap"]
       83 NEWTABLE                         R7 0 0
       85 SETTABLEKS                       R7 R1 K14 ["MockThreadMap"]
       87 NEWTABLE                         R7 0 0
       89 SETTABLEKS                       R7 R1 K15 ["MockThreadIdToCallstackMap"]
       91 NEWTABLE                         R7 0 0
       93 SETTABLEKS                       R7 R1 K16 ["MockCallstackFrameToDebuggerVariables"]
       95 SETTABLEKS                       R0 R1 K17 ["Id"]
       97 GETUPVAL                         R8 1
       98 GETTABLEKS                       R7 R8 K0 ["new"]
      100 CALL                             R7 0 1
      101 SETTABLEKS                       R7 R1 K18 ["Paused"]
      103 GETUPVAL                         R8 1
      104 GETTABLEKS                       R7 R8 K0 ["new"]
      106 CALL                             R7 0 1
      107 SETTABLEKS                       R7 R1 K19 ["Resumed"]
      109 NEWCLOSURE                       R7 P0
      110 CAPTURE                          VAL R1
      111 SETTABLEKS                       R7 R1 K20 ["MockSetThreadStateById"]
      113 NEWCLOSURE                       R7 P1
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R7 R1 K21 ["MockSetCallstackByThreadId"]
      117 NEWCLOSURE                       R7 P2
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R7 R1 K22 ["MockSetDebuggerVariablesByCallstackFrame"]
      121 GETUPVAL                         R9 2
      122 FASTCALL2                        SETMETATABLE R1 R9 ; [+4]
      124 MOVE                             R8 R1
      125 GETIMPORT                        R7 K24 [setmetatable]
      127 CALL                             R7 2 0
      128 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["MockThreadMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R3 R0
        1 GETUPVAL                         R4 0
        2 CALL                             R3 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["watchMap"]
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["watchMap"]
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R1 R2 R3
       13 JUMP                             ; [+5]
       14 DUPTABLE                         R2 K2 [{"VariableId"}]
       15 LOADN                            R3 1
       16 SETTABLEKS                       R3 R2 K1 ["VariableId"]
       18 MOVE                             R1 R2
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K3 ["new"]
       22 MOVE                             R3 R1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R5 R6 K4 ["DebuggerStatus"]
       26 GETTABLEKS                       R4 R5 K5 ["Success"]
       28 CALL                             R2 2 1
       29 MOVE                             R3 R0
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R3
        5 CALL                             R4 1 1
        6 NEWCLOSURE                       R7 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R5 R4 K1 ["andThen"]
       13 CALL                             R5 2 0
       14 LOADN                            R5 0
       15 RETURN                           R5 1

PROTO_8:
        0 MOVE                             R3 R0
        1 GETUPVAL                         R4 0
        2 CALL                             R3 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["MockThreadMap"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K2 ["DebuggerStatus"]
        9 GETTABLEKS                       R3 R4 K3 ["Success"]
       11 CALL                             R1 2 1
       12 MOVE                             R2 R0
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 1
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R3 R2 K1 ["andThen"]
       12 CALL                             R3 2 0
       13 LOADN                            R3 0
       14 RETURN                           R3 1

PROTO_11:
        0 MOVE                             R3 R0
        1 GETUPVAL                         R4 0
        2 CALL                             R3 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["Populated"]
        2 JUMPIF                           R3 ; [+23]
        3 GETTABLEKS                       R3 R1 K1 ["PopulatableType"]
        5 JUMPIFNOTEQKS                    R3 K2 ["ThreadState"] ; [+10]
        7 GETTABLEKS                       R6 R0 K3 ["MockThreadIdToCallstackMap"]
        9 GETTABLEKS                       R7 R1 K4 ["ThreadId"]
       11 GETTABLE                         R5 R6 R7
       12 NAMECALL                         R3 R1 K5 ["MockSetChildren"]
       14 CALL                             R3 2 0
       15 JUMP                             ; [+10]
       16 GETTABLEKS                       R3 R1 K1 ["PopulatableType"]
       18 JUMPIFNOTEQKS                    R3 K6 ["StackFrame"] ; [+7]
       20 GETTABLEKS                       R6 R0 K7 ["MockCallstackFrameToDebuggerVariables"]
       22 GETTABLE                         R5 R6 R1
       23 NAMECALL                         R3 R1 K5 ["MockSetChildren"]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K8 ["new"]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R2
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R6 K9 [PROTO_12]
       33 NAMECALL                         R4 R3 K10 ["andThen"]
       35 CALL                             R4 2 0
       36 LOADN                            R4 0
       37 RETURN                           R4 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["VariableMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_15:
        0 SETTABLEKS                       R1 R0 K0 ["selectedThreadId"]
        2 SETTABLEKS                       R2 R0 K1 ["selectedFrameNumber"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["Signal"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETIMPORT                        R6 K1 [script]
       24 GETTABLEKS                       R5 R6 K2 ["Parent"]
       26 GETTABLEKS                       R4 R5 K9 ["ThreadState"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R6 R7 K2 ["Parent"]
       35 GETTABLEKS                       R5 R6 K10 ["StackFrame"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETIMPORT                        R8 K1 [script]
       42 GETTABLEKS                       R7 R8 K2 ["Parent"]
       44 GETTABLEKS                       R6 R7 K11 ["DebuggerVariable"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETIMPORT                        R9 K1 [script]
       51 GETTABLEKS                       R8 R9 K2 ["Parent"]
       53 GETTABLEKS                       R7 R8 K12 ["MockDebuggerLuaResponse"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETIMPORT                        R12 K1 [script]
       60 GETTABLEKS                       R11 R12 K2 ["Parent"]
       62 GETTABLEKS                       R10 R11 K2 ["Parent"]
       64 GETTABLEKS                       R9 R10 K7 ["Util"]
       66 GETTABLEKS                       R8 R9 K13 ["Constants"]
       68 CALL                             R7 1 1
       69 GETTABLEKS                       R9 R1 K7 ["Util"]
       71 GETTABLEKS                       R8 R9 K14 ["Promise"]
       73 NEWTABLE                         R9 8 0
       75 SETTABLEKS                       R9 R9 K15 ["__index"]
       77 DUPCLOSURE                       R10 K16 [PROTO_3]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R9
       81 SETTABLEKS                       R10 R9 K17 ["new"]
       83 DUPCLOSURE                       R10 K18 [PROTO_4]
       84 SETTABLEKS                       R10 R9 K19 ["GetThreadById"]
       86 DUPCLOSURE                       R10 K20 [PROTO_7]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R10 R9 K21 ["EvaluateWatch"]
       92 DUPCLOSURE                       R10 K22 [PROTO_10]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R10 R9 K23 ["GetThreads"]
       98 DUPCLOSURE                       R10 K24 [PROTO_13]
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R10 R9 K25 ["Populate"]
      102 DUPCLOSURE                       R10 K26 [PROTO_14]
      103 SETTABLEKS                       R10 R9 K27 ["GetVariableById"]
      105 DUPCLOSURE                       R10 K28 [PROTO_15]
      106 SETTABLEKS                       R10 R9 K29 ["UpdateSelectedFrame"]
      108 RETURN                           R9 1
