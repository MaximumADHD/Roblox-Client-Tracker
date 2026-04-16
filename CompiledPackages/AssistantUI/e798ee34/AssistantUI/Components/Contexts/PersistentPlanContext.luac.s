PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R0 K0 ["no_active_plan"]
        1 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R0 K0 ["no_active_plan"]
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getRuntime"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["runtime"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["runtime"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["getRuntime"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["sessionId"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K3 ["threadId"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getPlan"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getPlan"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K1 ["subscribe"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_8:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+8]
        7 MOVE                             R1 R0
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R2 R2 K3 ["getPlan"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 JUMP                             ; [+1]
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 0
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K4 ["setPlan"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearPlan"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["setTodoStateByIndex"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["completeTodoByIndex"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R0 K6 [{"plan", "setPlan", "clearPlan", "setTodoStateByIndex", "completeTodoByIndex", "getRuntime"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["plan"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setPlan"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["clearPlan"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setTodoStateByIndex"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["completeTodoByIndex"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U5
       18 SETTABLEKS                       R1 R0 K5 ["getRuntime"]
       20 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R5 0 3
       24 GETTABLEKS                       R6 R0 K3 ["runtime"]
       26 GETTABLEKS                       R7 R1 K4 ["sessionId"]
       28 GETTABLEKS                       R8 R2 K5 ["threadId"]
       30 SETLIST                          R5 R6 3 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K6 ["useState"]
       36 NAMECALL                         R5 R3 K7 ["getPlan"]
       38 CALL                             R5 1 -1
       39 CALL                             R4 -1 2
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K8 ["useEffect"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R3
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 0
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K9 ["useCallback"]
       55 NEWCLOSURE                       R7 P2
       56 CAPTURE                          VAL R3
       57 NEWTABLE                         R8 0 1
       59 MOVE                             R9 R3
       60 SETLIST                          R8 R9 1 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R7 R8 K9 ["useCallback"]
       66 NEWCLOSURE                       R8 P3
       67 CAPTURE                          VAL R3
       68 NEWTABLE                         R9 0 1
       70 MOVE                             R10 R3
       71 SETLIST                          R9 R10 1 [1]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R8 R9 K9 ["useCallback"]
       77 NEWCLOSURE                       R9 P4
       78 CAPTURE                          VAL R3
       79 NEWTABLE                         R10 0 1
       81 MOVE                             R11 R3
       82 SETLIST                          R10 R11 1 [1]
       84 CALL                             R8 2 1
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R9 R10 K9 ["useCallback"]
       88 NEWCLOSURE                       R10 P5
       89 CAPTURE                          VAL R3
       90 NEWTABLE                         R11 0 1
       92 MOVE                             R12 R3
       93 SETLIST                          R11 R12 1 [1]
       95 CALL                             R9 2 1
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R10 R11 K2 ["useMemo"]
       99 NEWCLOSURE                       R11 P6
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R3
      106 NEWTABLE                         R12 0 5
      108 MOVE                             R13 R4
      109 MOVE                             R14 R7
      110 MOVE                             R15 R8
      111 MOVE                             R16 R9
      112 MOVE                             R17 R3
      113 SETLIST                          R12 R13 5 [1]
      115 CALL                             R10 2 1
      116 GETUPVAL                         R11 4
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R12 R13 K10 ["Provider"]
      120 DUPTABLE                         R13 K12 [{"value"}]
      121 SETTABLEKS                       R10 R13 K11 ["value"]
      123 GETTABLEKS                       R14 R0 K13 ["children"]
      125 CALL                             R11 3 -1
      126 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PersistentPlanRuntime"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K11 ["SessionIdContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Components"]
       32 GETTABLEKS                       R6 R7 K10 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K12 ["ThreadIdContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K14 ["createElement"]
       44 DUPTABLE                         R7 K21 [{"plan", "setPlan", "clearPlan", "setTodoStateByIndex", "completeTodoByIndex", "getRuntime"}]
       45 LOADNIL                          R8
       46 SETTABLEKS                       R8 R7 K15 ["plan"]
       48 DUPCLOSURE                       R8 K22 [PROTO_0]
       49 SETTABLEKS                       R8 R7 K16 ["setPlan"]
       51 DUPCLOSURE                       R8 K23 [PROTO_1]
       52 SETTABLEKS                       R8 R7 K17 ["clearPlan"]
       54 DUPCLOSURE                       R8 K24 [PROTO_2]
       55 SETTABLEKS                       R8 R7 K18 ["setTodoStateByIndex"]
       57 DUPCLOSURE                       R8 K25 [PROTO_3]
       58 SETTABLEKS                       R8 R7 K19 ["completeTodoByIndex"]
       60 DUPCLOSURE                       R8 K26 [PROTO_4]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R8 R7 K20 ["getRuntime"]
       64 GETTABLEKS                       R8 R2 K27 ["createContext"]
       66 MOVE                             R9 R7
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K28 [PROTO_14]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R8
       75 DUPTABLE                         R10 K31 [{"Context", "Provider"}]
       76 SETTABLEKS                       R8 R10 K29 ["Context"]
       78 SETTABLEKS                       R9 R10 K30 ["Provider"]
       80 RETURN                           R10 1
