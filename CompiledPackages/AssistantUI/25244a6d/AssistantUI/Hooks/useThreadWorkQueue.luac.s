PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 2
        6 GETTABLE                         R1 R2 R0
        7 LOADB                            R2 1
        8 JUMPIFEQKNIL                     R1 ; [+3]
       10 GETTABLEKS                       R2 R1 K0 ["inputEnabled"]
       12 RETURN                           R2 1

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
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K0 ["current"]
       11 GETTABLE                         R6 R7 R4
       12 JUMPIFNOTEQKNIL                  R6 ; [+64]
       14 LENGTH                           R6 R5
       15 JUMPIFEQKN                       R6 K1 [0] ; [+61]
       17 GETUPVAL                         R7 2
       18 JUMPIFNOTEQ                      R4 R7 ; [+3]
       20 GETUPVAL                         R6 3
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R8 4
       23 GETTABLE                         R7 R8 R4
       24 LOADB                            R6 1
       25 JUMPIFEQKNIL                     R7 ; [+3]
       27 GETTABLEKS                       R6 R7 K2 ["inputEnabled"]
       29 JUMPIFNOT                        R6 ; [+47]
       30 GETIMPORT                        R6 K5 [table.remove]
       32 MOVE                             R7 R5
       33 LOADN                            R8 1
       34 CALL                             R6 2 1
       35 JUMPIF                           R6 ; [+10]
       36 GETIMPORT                        R7 K7 [warn]
       38 LOADK                            R9 K8 ["useThreadWorkQueue: Expected work to be present for thread %*, but queue was empty."]
       39 MOVE                             R11 R4
       40 NAMECALL                         R9 R9 K9 ["format"]
       42 CALL                             R9 2 1
       43 MOVE                             R8 R9
       44 CALL                             R7 1 0
       45 JUMP                             ; [+31]
       46 GETUPVAL                         R7 5
       47 GETTABLEKS                       R7 R7 K0 ["current"]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R9 R8 K0 ["current"]
       52 ADDK                             R9 R9 K10 [1]
       53 SETTABLEKS                       R9 R8 K0 ["current"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K0 ["current"]
       58 DUPTABLE                         R9 K13 [{"key", "token"}]
       59 GETTABLEKS                       R10 R6 K11 ["key"]
       61 SETTABLEKS                       R10 R9 K11 ["key"]
       63 SETTABLEKS                       R7 R9 K12 ["token"]
       65 SETTABLE                         R9 R8 R4
       66 DUPTABLE                         R10 K15 [{"work", "token"}]
       67 SETTABLEKS                       R6 R10 K14 ["work"]
       69 SETTABLEKS                       R7 R10 K12 ["token"]
       71 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       73 MOVE                             R9 R0
       74 GETIMPORT                        R8 K17 [table.insert]
       76 CALL                             R8 2 0
       77 FORGLOOP                         R1 2 ; [-70]
       79 MOVE                             R1 R0
       80 LOADNIL                          R2
       81 LOADNIL                          R3
       82 FORGPREP                         R1
       83 GETTABLEKS                       R6 R5 K14 ["work"]
       85 GETTABLEKS                       R7 R5 K12 ["token"]
       87 LOADB                            R8 0
       88 GETIMPORT                        R9 K20 [task.spawn]
       90 GETTABLEKS                       R10 R6 K21 ["run"]
       92 NEWCLOSURE                       R11 P0
       93 CAPTURE                          REF R8
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R7
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U7
       99 CALL                             R9 2 0
      100 CLOSEUPVALS                      R8
      101 FORGLOOP                         R1 2 ; [-19]
      103 RETURN                           R0 0

PROTO_3:
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
       17 JUMPIF                           R1 ; [+1]
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R2 K4 [{"key", "threadId", "run"}]
       20 GETTABLEKS                       R3 R0 K1 ["key"]
       22 SETTABLEKS                       R3 R2 K1 ["key"]
       24 SETTABLEKS                       R1 R2 K2 ["threadId"]
       26 GETTABLEKS                       R3 R0 K3 ["run"]
       28 SETTABLEKS                       R3 R2 K3 ["run"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K0 ["current"]
       33 GETTABLE                         R3 R4 R1
       34 JUMPIF                           R3 ; [+6]
       35 NEWTABLE                         R3 0 0
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K0 ["current"]
       40 SETTABLE                         R3 R4 R1
       41 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
       43 MOVE                             R5 R3
       44 MOVE                             R6 R2
       45 GETIMPORT                        R4 K7 [table.insert]
       47 CALL                             R4 2 0
       48 GETUPVAL                         R4 3
       49 NEWTABLE                         R5 0 0
       51 CALL                             R4 1 0
       52 RETURN                           R0 0

PROTO_4:
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
       33 FORGLOOP                         R1 2 ; [-17]
       35 GETUPVAL                         R1 2
       36 GETTABLEKS                       R1 R1 K0 ["current"]
       38 LOADNIL                          R2
       39 LOADNIL                          R3
       40 FORGPREP                         R1
       41 JUMPIFNOT                        R5 ; [+9]
       42 GETTABLEKS                       R6 R5 K1 ["key"]
       44 JUMPIFNOTEQ                      R6 R0 ; [+6]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K0 ["current"]
       49 LOADNIL                          R7
       50 SETTABLE                         R7 R6 R4
       51 FORGLOOP                         R1 2 ; [-11]
       53 GETUPVAL                         R1 3
       54 NEWTABLE                         R2 0 0
       56 CALL                             R1 1 0
       57 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_6:
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
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R9
       45 CAPTURE                          VAL R8
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       49 NEWCLOSURE                       R12 P1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R13 0 4
       60 MOVE                             R14 R6
       61 MOVE                             R15 R8
       62 MOVE                             R16 R9
       63 MOVE                             R17 R0
       64 SETLIST                          R13 R14 4 [1]
       66 CALL                             R11 2 0
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       70 NEWCLOSURE                       R12 P2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R7
       75 NEWTABLE                         R13 0 1
       77 MOVE                             R14 R0
       78 SETLIST                          R13 R14 1 [1]
       80 CALL                             R11 2 1
       81 GETUPVAL                         R12 1
       82 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       84 NEWCLOSURE                       R13 P3
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R7
       89 NEWTABLE                         R14 0 0
       91 CALL                             R12 2 1
       92 GETUPVAL                         R13 1
       93 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       95 NEWCLOSURE                       R14 P4
       96 CAPTURE                          VAL R3
       97 NEWTABLE                         R15 0 0
       99 CALL                             R13 2 1
      100 DUPTABLE                         R14 K11 [{"enqueue", "forget", "has"}]
      101 SETTABLEKS                       R11 R14 K8 ["enqueue"]
      103 SETTABLEKS                       R12 R14 K9 ["forget"]
      105 SETTABLEKS                       R13 R14 K10 ["has"]
      107 RETURN                           R14 1

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
       32 GETTABLEKS                       R5 R5 K13 ["useThreadId"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K14 [PROTO_6]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 RETURN                           R5 1
