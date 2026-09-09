PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLEKS                       R2 R1 K1 ["currentThreadId"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+4]
        7 GETTABLEKS                       R2 R1 K2 ["currentInputEnabled"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R3 R1 K3 ["allThreadInputStates"]
       12 GETTABLE                         R2 R3 R0
       13 LOADB                            R3 1
       14 JUMPIFEQKNIL                     R2 ; [+3]
       16 GETTABLEKS                       R3 R2 K4 ["inputEnabled"]
       18 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["threadId"]
       11 GETTABLE                         R0 R1 R2
       12 JUMPIFNOT                        R0 ; [+25]
       13 GETTABLEKS                       R1 R0 K2 ["token"]
       15 GETUPVAL                         R2 3
       16 JUMPIFNOTEQ                      R1 R2 ; [+21]
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K3 ["key"]
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K0 ["current"]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K1 ["threadId"]
       32 LOADNIL                          R3
       33 SETTABLE                         R3 R1 R2
       34 GETUPVAL                         R1 5
       35 NEWTABLE                         R2 0 0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["run"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+18]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R4 K4 ["useThreadWorkQueue: work %* errored: %*"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["key"]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K7 [tostring]
       17 CALL                             R7 1 1
       18 NAMECALL                         R4 R4 K8 ["format"]
       20 CALL                             R4 3 1
       21 MOVE                             R3 R4
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 1
       24 CALL                             R2 0 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R2 K0 ["current"]
        6 ADDK                             R3 R3 K1 [1]
        7 SETTABLEKS                       R3 R2 K0 ["current"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 GETTABLEKS                       R3 R0 K2 ["threadId"]
       14 DUPTABLE                         R4 K5 [{"key", "token"}]
       15 GETTABLEKS                       R5 R0 K3 ["key"]
       17 SETTABLEKS                       R5 R4 K3 ["key"]
       19 SETTABLEKS                       R1 R4 K4 ["token"]
       21 SETTABLE                         R4 R2 R3
       22 LOADB                            R2 0
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K6 ["FFlagAssistantExternalInterface"]
       33 JUMPIFNOT                        R4 ; [+7]
       34 GETIMPORT                        R4 K9 [task.spawn]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 CALL                             R4 1 0
       40 JUMP                             ; [+6]
       41 GETIMPORT                        R4 K9 [task.spawn]
       43 GETTABLEKS                       R5 R0 K10 ["run"]
       45 MOVE                             R6 R3
       46 CALL                             R4 2 0
       47 CLOSEUPVALS                      R2
       48 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["current"]
       11 GETTABLEKS                       R3 R2 K1 ["currentThreadId"]
       13 JUMPIFNOTEQ                      R0 R3 ; [+4]
       15 GETTABLEKS                       R1 R2 K2 ["currentInputEnabled"]
       17 JUMP                             ; [+8]
       18 GETTABLEKS                       R4 R2 K3 ["allThreadInputStates"]
       20 GETTABLE                         R3 R4 R0
       21 LOADB                            R1 1
       22 JUMPIFEQKNIL                     R3 ; [+3]
       24 GETTABLEKS                       R1 R3 K4 ["inputEnabled"]
       26 JUMPIF                           R1 ; [+2]
       27 LOADB                            R1 0
       28 RETURN                           R1 1
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K0 ["current"]
       32 GETTABLE                         R1 R2 R0
       33 JUMPIFNOT                        R1 ; [+3]
       34 LENGTH                           R2 R1
       35 JUMPIFNOTEQKN                    R2 K5 [0] ; [+3]
       37 LOADB                            R2 0
       38 RETURN                           R2 1
       39 GETIMPORT                        R2 K8 [table.remove]
       41 MOVE                             R3 R1
       42 LOADN                            R4 1
       43 CALL                             R2 2 1
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantExternalInterface"]
       47 JUMPIFNOT                        R3 ; [+8]
       48 LENGTH                           R3 R1
       49 JUMPIFNOTEQKN                    R3 K5 [0] ; [+6]
       51 GETUPVAL                         R3 2
       52 GETTABLEKS                       R3 R3 K0 ["current"]
       54 LOADNIL                          R4
       55 SETTABLE                         R4 R3 R0
       56 JUMPIF                           R2 ; [+11]
       57 GETIMPORT                        R3 K11 [warn]
       59 LOADK                            R5 K12 ["useThreadWorkQueue: Expected work to be present for thread %*, but queue was empty."]
       60 MOVE                             R7 R0
       61 NAMECALL                         R5 R5 K13 ["format"]
       63 CALL                             R5 2 1
       64 MOVE                             R4 R5
       65 CALL                             R3 1 0
       66 LOADB                            R3 0
       67 RETURN                           R3 1
       68 GETUPVAL                         R3 4
       69 MOVE                             R4 R2
       70 CALL                             R3 1 0
       71 LOADB                            R3 1
       72 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       15 MOVE                             R7 R0
       16 MOVE                             R8 R4
       17 GETIMPORT                        R6 K3 [table.insert]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-8]
       22 MOVE                             R1 R0
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 FORGPREP                         R1
       26 GETUPVAL                         R6 2
       27 MOVE                             R7 R5
       28 CALL                             R6 1 0
       29 FORGLOOP                         R1 2 ; [-4]
       31 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["key"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 GETTABLEKS                       R2 R0 K1 ["key"]
       13 LOADB                            R3 1
       14 SETTABLE                         R3 R1 R2
       15 GETTABLEKS                       R1 R0 K2 ["threadId"]
       17 JUMPIF                           R1 ; [+5]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 GETTABLEKS                       R1 R1 K3 ["currentThreadId"]
       23 DUPTABLE                         R2 K5 [{"key", "threadId", "run"}]
       24 GETTABLEKS                       R3 R0 K1 ["key"]
       26 SETTABLEKS                       R3 R2 K1 ["key"]
       28 SETTABLEKS                       R1 R2 K2 ["threadId"]
       30 GETTABLEKS                       R3 R0 K4 ["run"]
       32 SETTABLEKS                       R3 R2 K4 ["run"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K0 ["current"]
       37 GETTABLE                         R3 R4 R1
       38 JUMPIF                           R3 ; [+6]
       39 NEWTABLE                         R3 0 0
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K0 ["current"]
       44 SETTABLE                         R3 R4 R1
       45 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
       47 MOVE                             R5 R3
       48 MOVE                             R6 R2
       49 GETIMPORT                        R4 K8 [table.insert]
       51 CALL                             R4 2 0
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K9 ["FFlagAssistantExternalInterface"]
       55 JUMPIFNOT                        R4 ; [+14]
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K0 ["current"]
       59 GETTABLE                         R4 R5 R1
       60 JUMPIF                           R4 ; [+9]
       61 GETUPVAL                         R4 5
       62 MOVE                             R5 R1
       63 CALL                             R4 1 1
       64 JUMPIFNOT                        R4 ; [+5]
       65 GETUPVAL                         R4 4
       66 GETTABLEKS                       R4 R4 K0 ["current"]
       68 LOADB                            R5 1
       69 SETTABLE                         R5 R4 R1
       70 GETUPVAL                         R4 6
       71 NEWTABLE                         R5 0 0
       73 CALL                             R4 1 0
       74 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R1 R0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 MOVE                             R6 R5
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 GETTABLEKS                       R11 R10 K1 ["key"]
       23 JUMPIFNOTEQ                      R11 R0 ; [+7]
       25 GETIMPORT                        R11 K4 [table.remove]
       27 MOVE                             R12 R5
       28 MOVE                             R13 R9
       29 CALL                             R11 2 0
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R6 2 ; [-11]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K5 ["FFlagAssistantExternalInterface"]
       36 JUMPIFNOT                        R6 ; [+8]
       37 LENGTH                           R6 R5
       38 JUMPIFNOTEQKN                    R6 K6 [0] ; [+6]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K0 ["current"]
       43 LOADNIL                          R7
       44 SETTABLE                         R7 R6 R4
       45 FORGLOOP                         R1 2 ; [-29]
       47 GETUPVAL                         R1 3
       48 GETTABLEKS                       R1 R1 K0 ["current"]
       50 LOADNIL                          R2
       51 LOADNIL                          R3
       52 FORGPREP                         R1
       53 JUMPIFNOT                        R5 ; [+9]
       54 GETTABLEKS                       R6 R5 K1 ["key"]
       56 JUMPIFNOTEQ                      R6 R0 ; [+6]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K0 ["current"]
       61 LOADNIL                          R7
       62 SETTABLE                         R7 R6 R4
       63 FORGLOOP                         R1 2 ; [-11]
       65 GETUPVAL                         R1 4
       66 NEWTABLE                         R2 0 0
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_10:
        0 DUPTABLE                         R0 K3 [{"enqueue", "forget", "has"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["enqueue"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["forget"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["has"]
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["useRef"]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["useRef"]
       18 NEWTABLE                         R4 0 0
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K2 ["useRef"]
       24 NEWTABLE                         R5 0 0
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K2 ["useRef"]
       30 LOADN                            R6 0
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K3 ["useState"]
       35 NEWTABLE                         R7 0 0
       37 CALL                             R6 1 2
       38 GETTABLEKS                       R8 R1 K4 ["allThreadInputStates"]
       40 GETTABLEKS                       R9 R1 K5 ["inputEnabled"]
       42 GETUPVAL                         R10 3
       43 DUPTABLE                         R11 K8 [{"currentThreadId", "currentInputEnabled", "allThreadInputStates"}]
       44 SETTABLEKS                       R0 R11 K6 ["currentThreadId"]
       46 SETTABLEKS                       R9 R11 K7 ["currentInputEnabled"]
       48 SETTABLEKS                       R8 R11 K4 ["allThreadInputStates"]
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R11 R11 K2 ["useRef"]
       54 NEWTABLE                         R12 0 0
       56 CALL                             R11 1 1
       57 NEWCLOSURE                       R12 P0
       58 CAPTURE                          VAL R10
       59 NEWCLOSURE                       R13 P1
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R7
       64 CAPTURE                          UPVAL U4
       65 NEWCLOSURE                       R14 P2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R13
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R15 R15 K9 ["useEffect"]
       74 NEWCLOSURE                       R16 P3
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R14
       78 NEWTABLE                         R17 0 4
       80 MOVE                             R18 R6
       81 MOVE                             R19 R8
       82 MOVE                             R20 R9
       83 MOVE                             R21 R0
       84 SETLIST                          R17 R18 4 [1]
       86 CALL                             R15 2 0
       87 GETUPVAL                         R15 1
       88 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       90 NEWCLOSURE                       R16 P4
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R2
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R7
       98 NEWTABLE                         R17 0 0
      100 CALL                             R15 2 1
      101 GETUPVAL                         R16 1
      102 GETTABLEKS                       R16 R16 K10 ["useCallback"]
      104 NEWCLOSURE                       R17 P5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R2
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R18 0 0
      112 CALL                             R16 2 1
      113 GETUPVAL                         R17 1
      114 GETTABLEKS                       R17 R17 K10 ["useCallback"]
      116 NEWCLOSURE                       R18 P6
      117 CAPTURE                          VAL R3
      118 NEWTABLE                         R19 0 0
      120 CALL                             R17 2 1
      121 GETUPVAL                         R18 1
      122 GETTABLEKS                       R18 R18 K11 ["useMemo"]
      124 NEWCLOSURE                       R19 P7
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R17
      128 NEWTABLE                         R20 0 3
      130 MOVE                             R21 R15
      131 MOVE                             R22 R16
      132 MOVE                             R23 R17
      133 SETLIST                          R20 R21 3 [1]
      135 CALL                             R18 2 1
      136 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["InputStateContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       37 GETTABLEKS                       R6 R6 K14 ["useLatest"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       44 GETTABLEKS                       R7 R7 K15 ["useThreadId"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K16 [PROTO_11]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 RETURN                           R7 1
