PROTO_0:
        0 DUPTABLE                         R1 K6 [{[1], ["nodeStack"], ["contextStack"], ["expectationContextStack"], ["hasFocusNodes"] = False}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K7 ["new"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["results"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K1 ["nodeStack"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K2 ["contextStack"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K3 ["expectationContextStack"]
       20 GETUPVAL                         R4 1
       21 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K9 [setmetatable]
       26 CALL                             R2 2 0
       27 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 GETTABLEKS                       R2 R0 K1 ["planNode"]
        4 GETTABLEKS                       R2 R2 K2 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["NodeType"]
        9 GETTABLEKS                       R3 R3 K4 ["It"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+45]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["TestStatus"]
       16 GETTABLEKS                       R3 R3 K6 ["Success"]
       18 JUMPIFNOTEQ                      R1 R3 ; [+9]
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K8 ["successCount"]
       24 ADDK                             R4 R5 K7 [1]
       25 SETTABLEKS                       R4 R3 K8 ["successCount"]
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["TestStatus"]
       31 GETTABLEKS                       R3 R3 K9 ["Failure"]
       33 JUMPIFNOTEQ                      R1 R3 ; [+9]
       35 GETUPVAL                         R3 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K10 ["failureCount"]
       39 ADDK                             R4 R5 K7 [1]
       40 SETTABLEKS                       R4 R3 K10 ["failureCount"]
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K5 ["TestStatus"]
       46 GETTABLEKS                       R3 R3 K11 ["Skipped"]
       48 JUMPIFNOTEQ                      R1 R3 ; [+8]
       50 GETUPVAL                         R3 1
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K12 ["skippedCount"]
       54 ADDK                             R4 R5 K7 [1]
       55 SETTABLEKS                       R4 R3 K12 ["skippedCount"]
       57 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["results"]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R1 K1 ["successCount"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K2 ["failureCount"]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K3 ["skippedCount"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 NAMECALL                         R2 R1 K4 ["visitAllNodes"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["errors"]
        2 LENGTH                           R1 R2
        3 LOADN                            R2 0
        4 JUMPIFNOTLT                      R2 R1 ; [+26]
        6 GETIMPORT                        R1 K2 [ipairs]
        8 GETTABLEKS                       R2 R0 K0 ["errors"]
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K0 ["errors"]
       15 DUPTABLE                         R8 K5 [{"message", "phrase"}]
       16 SETTABLEKS                       R5 R8 K3 ["message"]
       18 GETTABLEKS                       R9 R0 K6 ["planNode"]
       20 GETTABLEKS                       R9 R9 K4 ["phrase"]
       22 SETTABLEKS                       R9 R8 K4 ["phrase"]
       24 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       26 GETIMPORT                        R6 K9 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 [inext] ; [-18]
       31 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["results"]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R1 K1 ["errors"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R2 R1 K2 ["visitAllNodes"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["nodeStack"]
        2 LENGTH                           R1 R2
        3 JUMPIFEQKN                       R1 K1 [0] ; [+6]
        5 GETIMPORT                        R1 K3 [error]
        7 LOADK                            R2 K4 ["Cannot finalize TestResults with nodes still on the stack!"]
        8 LOADN                            R3 2
        9 CALL                             R1 2 0
       10 NAMECALL                         R1 R0 K5 ["calculateTotals"]
       12 CALL                             R1 1 0
       13 NAMECALL                         R1 R0 K6 ["gatherErrors"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K7 ["results"]
       18 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createNode"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R0 K1 ["nodeStack"]
        7 GETTABLEKS                       R6 R0 K1 ["nodeStack"]
        9 LENGTH                           R5 R6
       10 GETTABLE                         R3 R4 R5
       11 JUMPIF                           R3 ; [+2]
       12 GETTABLEKS                       R3 R0 K2 ["results"]
       14 GETTABLEKS                       R5 R3 K3 ["children"]
       16 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       18 MOVE                             R6 R2
       19 GETIMPORT                        R4 K6 [table.insert]
       21 CALL                             R4 2 0
       22 GETTABLEKS                       R5 R0 K1 ["nodeStack"]
       24 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       26 MOVE                             R6 R2
       27 GETIMPORT                        R4 K6 [table.insert]
       29 CALL                             R4 2 0
       30 GETTABLEKS                       R5 R0 K7 ["contextStack"]
       32 GETTABLEKS                       R7 R0 K7 ["contextStack"]
       34 LENGTH                           R6 R7
       35 GETTABLE                         R4 R5 R6
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K8 ["new"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R7 R0 K7 ["contextStack"]
       43 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       45 MOVE                             R8 R5
       46 GETIMPORT                        R6 K6 [table.insert]
       48 CALL                             R6 2 0
       49 GETTABLEKS                       R7 R0 K9 ["expectationContextStack"]
       51 GETTABLEKS                       R9 R0 K9 ["expectationContextStack"]
       53 LENGTH                           R8 R9
       54 GETTABLE                         R6 R7 R8
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K8 ["new"]
       58 MOVE                             R8 R6
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R9 R0 K9 ["expectationContextStack"]
       62 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       64 MOVE                             R10 R7
       65 GETIMPORT                        R8 K6 [table.insert]
       67 CALL                             R8 2 0
       68 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Tried to pop from an empty node stack!"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K6 [table.remove]
       16 GETTABLEKS                       R2 R0 K0 ["nodeStack"]
       18 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
       20 LENGTH                           R3 R4
       21 CALL                             R1 2 0
       22 GETIMPORT                        R1 K6 [table.remove]
       24 GETTABLEKS                       R2 R0 K7 ["contextStack"]
       26 GETTABLEKS                       R4 R0 K7 ["contextStack"]
       28 LENGTH                           R3 R4
       29 CALL                             R1 2 0
       30 GETIMPORT                        R1 K6 [table.remove]
       32 GETTABLEKS                       R2 R0 K8 ["expectationContextStack"]
       34 GETTABLEKS                       R4 R0 K8 ["expectationContextStack"]
       36 LENGTH                           R3 R4
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["contextStack"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Tried to get context from an empty stack!"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["contextStack"]
       16 GETTABLEKS                       R4 R0 K0 ["contextStack"]
       18 LENGTH                           R3 R4
       19 GETTABLE                         R1 R2 R3
       20 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["expectationContextStack"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Tried to get expectationContext from an empty stack!"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["expectationContextStack"]
       16 GETTABLEKS                       R4 R0 K0 ["expectationContextStack"]
       18 LENGTH                           R3 R4
       19 GETTABLE                         R1 R2 R3
       20 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["hasFocusNodes"]
        2 JUMPIFNOT                        R1 ; [+38]
        3 GETTABLEKS                       R4 R0 K1 ["nodeStack"]
        5 LENGTH                           R3 R4
        6 LOADN                            R1 1
        7 LOADN                            R2 -1
        8 FORNPREP                         R1
        9 GETTABLEKS                       R5 R0 K1 ["nodeStack"]
       11 GETTABLE                         R4 R5 R3
       12 GETTABLEKS                       R5 R4 K2 ["planNode"]
       14 GETTABLEKS                       R5 R5 K3 ["modifier"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K4 ["NodeModifier"]
       19 GETTABLEKS                       R6 R6 K5 ["Skip"]
       21 JUMPIFNOTEQ                      R5 R6 ; [+3]
       23 LOADB                            R5 1
       24 RETURN                           R5 1
       25 GETTABLEKS                       R5 R4 K2 ["planNode"]
       27 GETTABLEKS                       R5 R5 K3 ["modifier"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["NodeModifier"]
       32 GETTABLEKS                       R6 R6 K6 ["Focus"]
       34 JUMPIFNOTEQ                      R5 R6 ; [+3]
       36 LOADB                            R5 0
       37 RETURN                           R5 1
       38 FORNLOOP                         R1
       39 LOADB                            R1 1
       40 RETURN                           R1 1
       41 GETTABLEKS                       R4 R0 K1 ["nodeStack"]
       43 LENGTH                           R3 R4
       44 LOADN                            R1 1
       45 LOADN                            R2 -1
       46 FORNPREP                         R1
       47 GETTABLEKS                       R5 R0 K1 ["nodeStack"]
       49 GETTABLE                         R4 R5 R3
       50 GETTABLEKS                       R5 R4 K2 ["planNode"]
       52 GETTABLEKS                       R5 R5 K3 ["modifier"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K4 ["NodeModifier"]
       57 GETTABLEKS                       R6 R6 K5 ["Skip"]
       59 JUMPIFNOTEQ                      R5 R6 ; [+3]
       61 LOADB                            R5 1
       62 RETURN                           R5 1
       63 FORNLOOP                         R1
       64 LOADB                            R1 0
       65 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Attempting to set success status on empty stack"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["nodeStack"]
       16 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
       18 LENGTH                           R3 R4
       19 GETTABLE                         R1 R2 R3
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["TestStatus"]
       23 GETTABLEKS                       R2 R2 K5 ["Success"]
       25 SETTABLEKS                       R2 R1 K6 ["status"]
       27 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Attempting to set skipped status on empty stack"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["nodeStack"]
       16 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
       18 LENGTH                           R3 R4
       19 GETTABLE                         R1 R2 R3
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["TestStatus"]
       23 GETTABLEKS                       R2 R2 K5 ["Skipped"]
       25 SETTABLEKS                       R2 R1 K6 ["status"]
       27 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R5 R0 K0 ["nodeStack"]
        2 LENGTH                           R4 R5
        3 LOADN                            R5 0
        4 JUMPIFLT                         R5 R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["Attempting to set error status on empty stack"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R3 R0 K0 ["nodeStack"]
       16 GETTABLEKS                       R5 R0 K0 ["nodeStack"]
       18 LENGTH                           R4 R5
       19 GETTABLE                         R2 R3 R4
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["TestStatus"]
       23 GETTABLEKS                       R3 R3 K5 ["Failure"]
       25 SETTABLEKS                       R3 R2 K6 ["status"]
       27 GETTABLEKS                       R4 R2 K7 ["errors"]
       29 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       31 MOVE                             R5 R1
       32 GETIMPORT                        R3 K10 [table.insert]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R5 K2 [{"type", "phrase"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K3 ["NodeType"]
        4 GETTABLEKS                       R6 R6 K4 ["It"]
        6 SETTABLEKS                       R6 R5 K0 ["type"]
        8 SETTABLEKS                       R1 R5 K1 ["phrase"]
       10 NAMECALL                         R3 R0 K5 ["pushNode"]
       12 CALL                             R3 2 0
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R0 K6 ["setError"]
       16 CALL                             R3 2 0
       17 NAMECALL                         R3 R0 K7 ["popNode"]
       19 CALL                             R3 1 0
       20 GETTABLEKS                       R4 R0 K8 ["nodeStack"]
       22 GETTABLEKS                       R6 R0 K8 ["nodeStack"]
       24 LENGTH                           R5 R6
       25 GETTABLE                         R3 R4 R5
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K9 ["TestStatus"]
       29 GETTABLEKS                       R4 R4 K10 ["Failure"]
       31 SETTABLEKS                       R4 R3 K11 ["status"]
       33 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       10 LOADK                            R3 K1 ["Attempting to set status from children on empty stack"]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["nodeStack"]
       16 GETTABLEKS                       R4 R0 K0 ["nodeStack"]
       18 LENGTH                           R3 R4
       19 GETTABLE                         R1 R2 R3
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["TestStatus"]
       23 GETTABLEKS                       R2 R2 K5 ["Success"]
       25 LOADB                            R3 1
       26 GETIMPORT                        R4 K7 [ipairs]
       28 GETTABLEKS                       R5 R1 K8 ["children"]
       30 CALL                             R4 1 3
       31 FORGPREP_INEXT                   R4
       32 GETTABLEKS                       R9 R8 K9 ["status"]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R10 R10 K4 ["TestStatus"]
       37 GETTABLEKS                       R10 R10 K10 ["Skipped"]
       39 JUMPIFEQ                         R9 R10 ; [+16]
       41 LOADB                            R3 0
       42 GETTABLEKS                       R9 R8 K9 ["status"]
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K4 ["TestStatus"]
       47 GETTABLEKS                       R10 R10 K11 ["Failure"]
       49 JUMPIFNOTEQ                      R9 R10 ; [+6]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K4 ["TestStatus"]
       54 GETTABLEKS                       R2 R9 K11 ["Failure"]
       56 FORGLOOP                         R4 2 [inext] ; [-25]
       58 JUMPIFNOT                        R3 ; [+5]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K4 ["TestStatus"]
       62 GETTABLEKS                       R2 R4 K10 ["Skipped"]
       64 SETTABLEKS                       R2 R1 K9 ["status"]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TestEnum"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["TestResults"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Context"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["ExpectationContext"]
       36 CALL                             R3 1 1
       37 NEWTABLE                         R4 16 0
       39 SETTABLEKS                       R4 R4 K9 ["__index"]
       41 DUPCLOSURE                       R5 K10 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R5 R4 K11 ["new"]
       46 DUPCLOSURE                       R5 K12 [PROTO_2]
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R5 R4 K13 ["calculateTotals"]
       50 DUPCLOSURE                       R5 K14 [PROTO_4]
       51 SETTABLEKS                       R5 R4 K15 ["gatherErrors"]
       53 DUPCLOSURE                       R5 K16 [PROTO_5]
       54 SETTABLEKS                       R5 R4 K17 ["finalize"]
       56 DUPCLOSURE                       R5 K18 [PROTO_6]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R5 R4 K19 ["pushNode"]
       62 DUPCLOSURE                       R5 K20 [PROTO_7]
       63 SETTABLEKS                       R5 R4 K21 ["popNode"]
       65 DUPCLOSURE                       R5 K22 [PROTO_8]
       66 SETTABLEKS                       R5 R4 K23 ["getContext"]
       68 DUPCLOSURE                       R5 K24 [PROTO_9]
       69 SETTABLEKS                       R5 R4 K25 ["getExpectationContext"]
       71 DUPCLOSURE                       R5 K26 [PROTO_10]
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R5 R4 K27 ["shouldSkip"]
       75 DUPCLOSURE                       R5 K28 [PROTO_11]
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R5 R4 K29 ["setSuccess"]
       79 DUPCLOSURE                       R5 K30 [PROTO_12]
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R5 R4 K31 ["setSkipped"]
       83 DUPCLOSURE                       R5 K32 [PROTO_13]
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R5 R4 K33 ["setError"]
       87 DUPCLOSURE                       R5 K34 [PROTO_14]
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R5 R4 K35 ["addDummyError"]
       91 DUPCLOSURE                       R5 K36 [PROTO_15]
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R5 R4 K37 ["setStatusFromChildren"]
       95 RETURN                           R4 1
