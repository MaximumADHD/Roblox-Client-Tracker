PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["Instance"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 LOADK                            R4 K5 ["LuaSourceContainer"]
       14 NAMECALL                         R2 R0 K6 ["IsA"]
       16 CALL                             R2 2 -1
       17 FASTCALL                         ASSERT ; [+2]
       18 GETIMPORT                        R1 K4 [assert]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 GETIMPORT                        R1 K6 [pairs]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 3
       17 FORGPREP_NEXT                    R1
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R9 R5
       20 GETIMPORT                        R8 K8 [typeof]
       22 CALL                             R8 1 1
       23 JUMPIFEQKS                       R8 K9 ["Instance"] ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 FASTCALL1                        ASSERT R7 ; [+2]
       28 GETIMPORT                        R6 K4 [assert]
       30 CALL                             R6 1 0
       31 LOADK                            R9 K10 ["LuaSourceContainer"]
       32 NAMECALL                         R7 R5 K11 ["IsA"]
       34 CALL                             R7 2 -1
       35 FASTCALL                         ASSERT ; [+2]
       36 GETIMPORT                        R6 K4 [assert]
       38 CALL                             R6 -1 0
       39 FORGLOOP                         R1 2 ; [-22]
       41 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKS                       R0 K0 ["number"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 FASTCALL1                        ASSERT R2 ; [+2]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 1 0
       12 GETIMPORT                        R1 K6 [pairs]
       14 GETUPVAL                         R2 0
       15 CALL                             R1 1 3
       16 FORGPREP_NEXT                    R1
       17 JUMPIFNOTEQ                      R5 R0 ; [+2]
       19 RETURN                           R0 0
       20 FORGLOOP                         R1 2 ; [-4]
       22 LOADB                            R2 0
       23 LOADK                            R4 K7 ["Test case "]
       24 MOVE                             R5 R0
       25 LOADK                            R6 K8 [" is not valid"]
       26 CONCAT                           R3 R4 R6
       27 FASTCALL2                        ASSERT R2 R3 ; [+3]
       29 GETIMPORT                        R1 K4 [assert]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Script"]
        3 CALL                             R1 1 1
        4 LOADK                            R3 K3 ["Script"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R1 K4 ["Name"]
        9 RETURN                           R1 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 1 0
       13 NEWTABLE                         R1 0 0
       15 LOADN                            R4 1
       16 MOVE                             R2 R0
       17 LOADN                            R3 1
       18 FORNPREP                         R2
       19 GETIMPORT                        R6 K7 [Instance.new]
       21 LOADK                            R7 K8 ["Script"]
       22 CALL                             R6 1 1
       23 LOADK                            R8 K8 ["Script"]
       24 MOVE                             R9 R4
       25 CONCAT                           R7 R8 R9
       26 SETTABLEKS                       R7 R6 K9 ["Name"]
       28 MOVE                             R5 R6
       29 SETTABLE                         R5 R1 R4
       30 FORNLOOP                         R2
       31 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["DebugStudioDraftsWidgetWaitTime"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 DUPTABLE                         R1 K8 [{"DraftAdded", "DraftRemoved", "DraftStatusChanged", "EditorsListChanged", "UpdateStatusChanged", "CommitStatusChanged", "__testCase", "__drafts"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K9 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["DraftAdded"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K9 ["new"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K1 ["DraftRemoved"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K9 ["new"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K2 ["DraftStatusChanged"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K9 ["new"]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K3 ["EditorsListChanged"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K9 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R1 K4 ["UpdateStatusChanged"]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K9 ["new"]
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R1 K5 ["CommitStatusChanged"]
       37 MOVE                             R2 R0
       38 JUMPIF                           R2 ; [+3]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K10 ["DEFAULT"]
       42 SETTABLEKS                       R2 R1 K6 ["__testCase"]
       44 NEWTABLE                         R2 0 0
       46 SETTABLEKS                       R2 R1 K7 ["__drafts"]
       48 GETTABLEKS                       R2 R1 K6 ["__testCase"]
       50 JUMPIFEQKS                       R2 K11 ["number"] ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 FASTCALL1                        TYPEOF R5 ; [+2]
       55 GETIMPORT                        R4 K13 [typeof]
       57 CALL                             R4 1 1
       58 FASTCALL1                        ASSERT R4 ; [+2]
       59 GETIMPORT                        R3 K15 [assert]
       61 CALL                             R3 1 0
       62 GETIMPORT                        R3 K17 [pairs]
       64 GETUPVAL                         R4 1
       65 CALL                             R3 1 3
       66 FORGPREP_NEXT                    R3
       67 JUMPIFNOTEQ                      R7 R2 ; [+2]
       69 JUMP                             ; [+12]
       70 FORGLOOP                         R3 2 ; [-4]
       72 LOADB                            R4 0
       73 LOADK                            R6 K18 ["Test case "]
       74 MOVE                             R7 R2
       75 LOADK                            R8 K19 [" is not valid"]
       76 CONCAT                           R5 R6 R8
       77 FASTCALL2                        ASSERT R4 R5 ; [+3]
       79 GETIMPORT                        R3 K15 [assert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R2 R1 K6 ["__testCase"]
       84 GETUPVAL                         R3 1
       85 GETTABLEKS                       R3 R3 K20 ["EMPTY_TEST"]
       87 JUMPIFEQ                         R2 R3 ; [+6]
       89 GETUPVAL                         R2 2
       90 LOADN                            R3 10
       91 CALL                             R2 1 1
       92 SETTABLEKS                       R2 R1 K7 ["__drafts"]
       94 GETUPVAL                         R4 3
       95 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       97 MOVE                             R3 R1
       98 GETIMPORT                        R2 K22 [setmetatable]
      100 CALL                             R2 2 1
      101 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R1 K1 [wait]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 -1
        4 CALL                             R1 -1 0
        5 GETTABLEKS                       R1 R0 K2 ["__testCase"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["SERVICE_DISABLED"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+5]
       12 GETIMPORT                        R1 K5 [error]
       14 LOADK                            R2 K6 ["DraftsService is not available"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K7 ["__drafts"]
       18 RETURN                           R1 1

PROTO_8:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["Instance"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 LOADK                            R5 K5 ["LuaSourceContainer"]
       14 NAMECALL                         R3 R1 K6 ["IsA"]
       16 CALL                             R3 2 -1
       17 FASTCALL                         ASSERT ; [+2]
       18 GETIMPORT                        R2 K4 [assert]
       20 CALL                             R2 -1 0
       21 GETIMPORT                        R2 K10 [Enum.DraftStatusCode.OK]
       23 RETURN                           R2 1

PROTO_9:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["Instance"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 LOADK                            R5 K5 ["LuaSourceContainer"]
       14 NAMECALL                         R3 R1 K6 ["IsA"]
       16 CALL                             R3 2 -1
       17 FASTCALL                         ASSERT ; [+2]
       18 GETIMPORT                        R2 K4 [assert]
       20 CALL                             R2 -1 0
       21 NEWTABLE                         R2 0 0
       23 RETURN                           R2 1

PROTO_10:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K6 [pairs]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 FASTCALL1                        TYPEOF R6 ; [+3]
       19 MOVE                             R10 R6
       20 GETIMPORT                        R9 K8 [typeof]
       22 CALL                             R9 1 1
       23 JUMPIFEQKS                       R9 K9 ["Instance"] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 FASTCALL1                        ASSERT R8 ; [+2]
       28 GETIMPORT                        R7 K4 [assert]
       30 CALL                             R7 1 0
       31 LOADK                            R10 K10 ["LuaSourceContainer"]
       32 NAMECALL                         R8 R6 K11 ["IsA"]
       34 CALL                             R8 2 -1
       35 FASTCALL                         ASSERT ; [+2]
       36 GETIMPORT                        R7 K4 [assert]
       38 CALL                             R7 -1 0
       39 FORGLOOP                         R2 2 ; [-22]
       41 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K6 [pairs]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 FASTCALL1                        TYPEOF R6 ; [+3]
       19 MOVE                             R10 R6
       20 GETIMPORT                        R9 K8 [typeof]
       22 CALL                             R9 1 1
       23 JUMPIFEQKS                       R9 K9 ["Instance"] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 FASTCALL1                        ASSERT R8 ; [+2]
       28 GETIMPORT                        R7 K4 [assert]
       30 CALL                             R7 1 0
       31 LOADK                            R10 K10 ["LuaSourceContainer"]
       32 NAMECALL                         R8 R6 K11 ["IsA"]
       34 CALL                             R8 2 -1
       35 FASTCALL                         ASSERT ; [+2]
       36 GETIMPORT                        R7 K4 [assert]
       38 CALL                             R7 -1 0
       39 FORGLOOP                         R2 2 ; [-22]
       41 RETURN                           R0 0

PROTO_12:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K6 [pairs]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 FASTCALL1                        TYPEOF R6 ; [+3]
       19 MOVE                             R10 R6
       20 GETIMPORT                        R9 K8 [typeof]
       22 CALL                             R9 1 1
       23 JUMPIFEQKS                       R9 K9 ["Instance"] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 FASTCALL1                        ASSERT R8 ; [+2]
       28 GETIMPORT                        R7 K4 [assert]
       30 CALL                             R7 1 0
       31 LOADK                            R10 K10 ["LuaSourceContainer"]
       32 NAMECALL                         R8 R6 K11 ["IsA"]
       34 CALL                             R8 2 -1
       35 FASTCALL                         ASSERT ; [+2]
       36 GETIMPORT                        R7 K4 [assert]
       38 CALL                             R7 -1 0
       39 FORGLOOP                         R2 2 ; [-22]
       41 GETIMPORT                        R2 K13 [ipairs]
       43 MOVE                             R3 R1
       44 CALL                             R2 1 3
       45 FORGPREP_INEXT                   R2
       46 GETTABLEKS                       R7 R0 K14 ["DraftRemoved"]
       48 MOVE                             R9 R6
       49 NAMECALL                         R7 R7 K15 ["fire"]
       51 CALL                             R7 2 0
       52 FORGLOOP                         R2 2 [inext] ; [-7]
       54 RETURN                           R0 0

PROTO_13:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K6 [pairs]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 FASTCALL1                        TYPEOF R6 ; [+3]
       19 MOVE                             R10 R6
       20 GETIMPORT                        R9 K8 [typeof]
       22 CALL                             R9 1 1
       23 JUMPIFEQKS                       R9 K9 ["Instance"] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 FASTCALL1                        ASSERT R8 ; [+2]
       28 GETIMPORT                        R7 K4 [assert]
       30 CALL                             R7 1 0
       31 LOADK                            R10 K10 ["LuaSourceContainer"]
       32 NAMECALL                         R8 R6 K11 ["IsA"]
       34 CALL                             R8 2 -1
       35 FASTCALL                         ASSERT ; [+2]
       36 GETIMPORT                        R7 K4 [assert]
       38 CALL                             R7 -1 0
       39 FORGLOOP                         R2 2 ; [-22]
       41 GETIMPORT                        R2 K13 [wait]
       43 GETUPVAL                         R3 0
       44 CALL                             R3 0 -1
       45 CALL                             R2 -1 0
       46 GETIMPORT                        R2 K15 [ipairs]
       48 MOVE                             R3 R1
       49 CALL                             R2 1 3
       50 FORGPREP_INEXT                   R2
       51 GETTABLEKS                       R7 R0 K16 ["UpdateStatusChanged"]
       53 MOVE                             R9 R6
       54 GETIMPORT                        R10 K20 [Enum.DraftStatusCode.OK]
       56 NAMECALL                         R7 R7 K21 ["fire"]
       58 CALL                             R7 3 0
       59 FORGLOOP                         R2 2 [inext] ; [-9]
       61 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DraftRemoved"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_15:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K6 [pairs]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 3
       17 FORGPREP_NEXT                    R2
       18 FASTCALL1                        TYPEOF R6 ; [+3]
       19 MOVE                             R10 R6
       20 GETIMPORT                        R9 K8 [typeof]
       22 CALL                             R9 1 1
       23 JUMPIFEQKS                       R9 K9 ["Instance"] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 FASTCALL1                        ASSERT R8 ; [+2]
       28 GETIMPORT                        R7 K4 [assert]
       30 CALL                             R7 1 0
       31 LOADK                            R10 K10 ["LuaSourceContainer"]
       32 NAMECALL                         R8 R6 K11 ["IsA"]
       34 CALL                             R8 2 -1
       35 FASTCALL                         ASSERT ; [+2]
       36 GETIMPORT                        R7 K4 [assert]
       38 CALL                             R7 -1 0
       39 FORGLOOP                         R2 2 ; [-22]
       41 GETIMPORT                        R2 K13 [wait]
       43 GETUPVAL                         R3 0
       44 CALL                             R3 0 -1
       45 CALL                             R2 -1 0
       46 GETIMPORT                        R2 K15 [ipairs]
       48 MOVE                             R3 R1
       49 CALL                             R2 1 3
       50 FORGPREP_INEXT                   R2
       51 GETIMPORT                        R7 K17 [game]
       53 GETTABLEKS                       R7 R7 K18 ["ServerScriptService"]
       55 SETTABLEKS                       R7 R6 K19 ["Parent"]
       57 GETTABLEKS                       R7 R0 K20 ["CommitStatusChanged"]
       59 MOVE                             R9 R6
       60 GETIMPORT                        R10 K24 [Enum.DraftStatusCode.OK]
       62 NAMECALL                         R7 R7 K25 ["fire"]
       64 CALL                             R7 3 0
       65 GETIMPORT                        R7 K27 [delay]
       67 GETIMPORT                        R8 K17 [game]
       69 LOADK                            R10 K28 ["DebugStudioDraftsWidgetWaitTime"]
       70 NAMECALL                         R8 R8 K29 ["GetFastInt"]
       72 CALL                             R8 2 1
       73 NEWCLOSURE                       R9 P0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R6
       76 CALL                             R7 2 0
       77 FORGLOOP                         R2 2 [inext] ; [-27]
       79 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DebugStudioDraftsWidgetWaitTime"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K5 [script]
       10 GETTABLEKS                       R0 R0 K6 ["Parent"]
       12 GETTABLEKS                       R0 R0 K6 ["Parent"]
       14 GETTABLEKS                       R0 R0 K6 ["Parent"]
       16 GETIMPORT                        R1 K8 [require]
       18 GETTABLEKS                       R2 R0 K9 ["Src"]
       20 GETTABLEKS                       R2 R2 K10 ["Util"]
       22 GETTABLEKS                       R2 R2 K11 ["Signal"]
       24 CALL                             R1 1 1
       25 DUPTABLE                         R2 K18 [{["DEFAULT"] = 1, ["EMPTY_TEST"] = 2, ["SERVICE_DISABLED"] = 3}]
       26 DUPCLOSURE                       R3 K19 [PROTO_0]
       27 DUPCLOSURE                       R4 K20 [PROTO_1]
       28 DUPCLOSURE                       R5 K21 [PROTO_2]
       29 CAPTURE                          VAL R2
       30 DUPCLOSURE                       R6 K22 [PROTO_3]
       31 DUPCLOSURE                       R7 K23 [PROTO_4]
       32 DUPCLOSURE                       R8 K24 [PROTO_5]
       33 NEWTABLE                         R9 16 0
       35 SETTABLEKS                       R9 R9 K25 ["__index"]
       37 SETTABLEKS                       R2 R9 K26 ["TestCases"]
       39 DUPCLOSURE                       R10 K27 [PROTO_6]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R9
       44 SETTABLEKS                       R10 R9 K28 ["new"]
       46 DUPCLOSURE                       R10 K29 [PROTO_7]
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R10 R9 K30 ["GetDrafts"]
       51 DUPCLOSURE                       R10 K31 [PROTO_8]
       52 SETTABLEKS                       R10 R9 K32 ["GetDraftStatus"]
       54 DUPCLOSURE                       R10 K33 [PROTO_9]
       55 SETTABLEKS                       R10 R9 K34 ["GetEditors"]
       57 DUPCLOSURE                       R10 K35 [PROTO_10]
       58 SETTABLEKS                       R10 R9 K36 ["ShowDiffsAgainstBase"]
       60 DUPCLOSURE                       R10 K37 [PROTO_11]
       61 SETTABLEKS                       R10 R9 K38 ["ShowDiffsAgainstServer"]
       63 DUPCLOSURE                       R10 K39 [PROTO_12]
       64 SETTABLEKS                       R10 R9 K40 ["DiscardEdits"]
       66 DUPCLOSURE                       R10 K41 [PROTO_13]
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R10 R9 K42 ["UpdateToLatestVersion"]
       70 DUPCLOSURE                       R10 K43 [PROTO_15]
       71 CAPTURE                          VAL R8
       72 SETTABLEKS                       R10 R9 K44 ["CommitEdits"]
       74 RETURN                           R9 1
