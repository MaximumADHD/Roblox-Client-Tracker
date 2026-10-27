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
        6 JUMPIF                           R0 ; [+17]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["useThreadWorkQueue: work %* errored: %*"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K5 ["key"]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R6 K7 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R3 R3 K8 ["format"]
       20 CALL                             R3 3 1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 1
       23 CALL                             R2 0 0
       24 RETURN                           R0 0

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
       30 GETIMPORT                        R4 K8 [task.spawn]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 CALL                             R4 1 0
       36 CLOSEUPVALS                      R2
       37 RETURN                           R0 0

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
       44 LENGTH                           R3 R1
       45 JUMPIFNOTEQKN                    R3 K5 [0] ; [+6]
       47 GETUPVAL                         R3 2
       48 GETTABLEKS                       R3 R3 K0 ["current"]
       50 LOADNIL                          R4
       51 SETTABLE                         R4 R3 R0
       52 JUMPIF                           R2 ; [+10]
       53 GETIMPORT                        R3 K10 [warn]
       55 LOADK                            R4 K11 ["useThreadWorkQueue: Expected work to be present for thread %*, but queue was empty."]
       56 MOVE                             R6 R0
       57 NAMECALL                         R4 R4 K12 ["format"]
       59 CALL                             R4 2 1
       60 CALL                             R3 1 0
       61 LOADB                            R3 0
       62 RETURN                           R3 1
       63 GETUPVAL                         R3 3
       64 MOVE                             R4 R2
       65 CALL                             R3 1 0
       66 LOADB                            R3 1
       67 RETURN                           R3 1

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
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R5 R5 K0 ["current"]
       55 GETTABLE                         R4 R5 R1
       56 JUMPIF                           R4 ; [+9]
       57 GETUPVAL                         R4 4
       58 MOVE                             R5 R1
       59 CALL                             R4 1 1
       60 JUMPIFNOT                        R4 ; [+5]
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K0 ["current"]
       64 LOADB                            R5 1
       65 SETTABLE                         R5 R4 R1
       66 GETUPVAL                         R4 5
       67 NEWTABLE                         R5 0 0
       69 CALL                             R4 1 0
       70 RETURN                           R0 0

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
       33 LENGTH                           R6 R5
       34 JUMPIFNOTEQKN                    R6 K5 [0] ; [+6]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K0 ["current"]
       39 LOADNIL                          R7
       40 SETTABLE                         R7 R6 R4
       41 FORGLOOP                         R1 2 ; [-25]
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R1 R1 K0 ["current"]
       46 LOADNIL                          R2
       47 LOADNIL                          R3
       48 FORGPREP                         R1
       49 JUMPIFNOT                        R5 ; [+9]
       50 GETTABLEKS                       R6 R5 K1 ["key"]
       52 JUMPIFNOTEQ                      R6 R0 ; [+6]
       54 GETUPVAL                         R6 2
       55 GETTABLEKS                       R6 R6 K0 ["current"]
       57 LOADNIL                          R7
       58 SETTABLE                         R7 R6 R4
       59 FORGLOOP                         R1 2 ; [-11]
       61 GETUPVAL                         R1 3
       62 NEWTABLE                         R2 0 0
       64 CALL                             R1 1 0
       65 RETURN                           R0 0

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
       64 NEWCLOSURE                       R14 P2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R13
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R15 R15 K9 ["useEffect"]
       72 NEWCLOSURE                       R16 P3
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R14
       76 NEWTABLE                         R17 0 4
       78 MOVE                             R18 R6
       79 MOVE                             R19 R8
       80 MOVE                             R20 R9
       81 MOVE                             R21 R0
       82 SETLIST                          R17 R18 4 [1]
       84 CALL                             R15 2 0
       85 GETUPVAL                         R15 1
       86 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       88 NEWCLOSURE                       R16 P4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R7
       95 NEWTABLE                         R17 0 0
       97 CALL                             R15 2 1
       98 GETUPVAL                         R16 1
       99 GETTABLEKS                       R16 R16 K10 ["useCallback"]
      101 NEWCLOSURE                       R17 P5
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R7
      106 NEWTABLE                         R18 0 0
      108 CALL                             R16 2 1
      109 GETUPVAL                         R17 1
      110 GETTABLEKS                       R17 R17 K10 ["useCallback"]
      112 NEWCLOSURE                       R18 P6
      113 CAPTURE                          VAL R3
      114 NEWTABLE                         R19 0 0
      116 CALL                             R17 2 1
      117 GETUPVAL                         R18 1
      118 GETTABLEKS                       R18 R18 K11 ["useMemo"]
      120 NEWCLOSURE                       R19 P7
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R17
      124 NEWTABLE                         R20 0 3
      126 MOVE                             R21 R15
      127 MOVE                             R22 R16
      128 MOVE                             R23 R17
      129 SETLIST                          R20 R21 3 [1]
      131 CALL                             R18 2 1
      132 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["InputStateContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K13 ["useLatest"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K14 ["useThreadId"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K15 [PROTO_11]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 RETURN                           R6 1
