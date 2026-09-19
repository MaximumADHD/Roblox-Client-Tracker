PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"threadId", "setThreadId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["threadId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setThreadId"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useState"]
       15 DUPCLOSURE                       R2 K5 [PROTO_1]
       16 CAPTURE                          UPVAL U1
       17 CALL                             R1 1 2
       18 GETTABLEKS                       R4 R0 K6 ["threadId"]
       20 OR                               R3 R4 R1
       21 GETTABLEKS                       R5 R0 K7 ["setThreadId"]
       23 OR                               R4 R5 R2
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R7 0 2
       32 MOVE                             R8 R3
       33 MOVE                             R9 R4
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 2
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K9 ["Provider"]
       41 DUPTABLE                         R8 K11 [{"value"}]
       42 SETTABLEKS                       R5 R8 K10 ["value"]
       44 GETTABLEKS                       R9 R0 K12 ["children"]
       46 CALL                             R6 3 -1
       47 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["createNewThread"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K11 ["createElement"]
       28 DUPTABLE                         R5 K17 [{["default"] = True, ["threadId"] = "", ["setThreadId"]}]
       29 DUPCLOSURE                       R6 K18 [PROTO_0]
       30 SETTABLEKS                       R6 R5 K16 ["setThreadId"]
       32 GETTABLEKS                       R6 R1 K19 ["createContext"]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K20 [PROTO_3]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 DUPTABLE                         R8 K23 [{"Context", "Provider"}]
       42 SETTABLEKS                       R6 R8 K21 ["Context"]
       44 SETTABLEKS                       R7 R8 K22 ["Provider"]
       46 RETURN                           R8 1
