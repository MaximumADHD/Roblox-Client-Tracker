PROTO_0:
        0 DUPTABLE                         R1 K1 [{"_items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_items"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+2]
        7 RETURN                           R0 1
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["thread"] ; [+2]
       15 RETURN                           R0 1
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K1 [typeof]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKS                    R1 K4 ["RBXScriptConnection"] ; [+2]
       23 RETURN                           R0 1
       24 FASTCALL1                        TYPEOF R0 ; [+3]
       25 MOVE                             R2 R0
       26 GETIMPORT                        R1 K1 [typeof]
       28 CALL                             R1 1 1
       29 JUMPIFNOTEQKS                    R1 K5 ["Instance"] ; [+2]
       31 RETURN                           R0 1
       32 FASTCALL1                        TYPEOF R0 ; [+3]
       33 MOVE                             R2 R0
       34 GETIMPORT                        R1 K1 [typeof]
       36 CALL                             R1 1 1
       37 JUMPIFNOTEQKS                    R1 K6 ["table"] ; [+11]
       39 GETTABLEKS                       R1 R0 K7 ["Disconnect"]
       41 JUMPIFEQKNIL                     R1 ; [+2]
       43 RETURN                           R0 1
       44 GETTABLEKS                       R1 R0 K8 ["Destroy"]
       46 JUMPIFEQKNIL                     R1 ; [+2]
       48 RETURN                           R0 1
       49 LOADNIL                          R1
       50 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+4]
        7 MOVE                             R1 R0
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K1 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K3 ["thread"] ; [+11]
       17 GETIMPORT                        R1 K6 [coroutine.running]
       19 CALL                             R1 0 1
       20 JUMPIFEQ                         R1 R0 ; [+52]
       22 GETIMPORT                        R1 K9 [task.cancel]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K1 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFNOTEQKS                    R1 K10 ["RBXScriptConnection"] ; [+5]
       34 NAMECALL                         R1 R0 K11 ["Disconnect"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0
       38 FASTCALL1                        TYPEOF R0 ; [+3]
       39 MOVE                             R2 R0
       40 GETIMPORT                        R1 K1 [typeof]
       42 CALL                             R1 1 1
       43 JUMPIFNOTEQKS                    R1 K12 ["Instance"] ; [+5]
       45 NAMECALL                         R1 R0 K13 ["Destroy"]
       47 CALL                             R1 1 0
       48 RETURN                           R0 0
       49 FASTCALL1                        TYPEOF R0 ; [+3]
       50 MOVE                             R2 R0
       51 GETIMPORT                        R1 K1 [typeof]
       53 CALL                             R1 1 1
       54 JUMPIFNOTEQKS                    R1 K14 ["table"] ; [+18]
       56 GETTABLEKS                       R1 R0 K11 ["Disconnect"]
       58 JUMPIFEQKNIL                     R1 ; [+6]
       60 GETTABLEKS                       R1 R0 K11 ["Disconnect"]
       62 MOVE                             R2 R0
       63 CALL                             R1 1 0
       64 RETURN                           R0 0
       65 GETTABLEKS                       R1 R0 K13 ["Destroy"]
       67 JUMPIFEQKNIL                     R1 ; [+5]
       69 GETTABLEKS                       R1 R0 K13 ["Destroy"]
       71 MOVE                             R2 R0
       72 CALL                             R1 1 0
       73 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R3 K1 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+3]
       11 MOVE                             R2 R1
       12 JUMP                             ; [+47]
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K1 [typeof]
       17 CALL                             R3 1 1
       18 JUMPIFNOTEQKS                    R3 K3 ["thread"] ; [+3]
       20 MOVE                             R2 R1
       21 JUMP                             ; [+38]
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R3 K1 [typeof]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K4 ["RBXScriptConnection"] ; [+3]
       29 MOVE                             R2 R1
       30 JUMP                             ; [+29]
       31 FASTCALL1                        TYPEOF R1 ; [+3]
       32 MOVE                             R4 R1
       33 GETIMPORT                        R3 K1 [typeof]
       35 CALL                             R3 1 1
       36 JUMPIFNOTEQKS                    R3 K5 ["Instance"] ; [+3]
       38 MOVE                             R2 R1
       39 JUMP                             ; [+20]
       40 FASTCALL1                        TYPEOF R1 ; [+3]
       41 MOVE                             R4 R1
       42 GETIMPORT                        R3 K1 [typeof]
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+13]
       47 GETTABLEKS                       R3 R1 K7 ["Disconnect"]
       49 JUMPIFEQKNIL                     R3 ; [+3]
       51 MOVE                             R2 R1
       52 JUMP                             ; [+7]
       53 GETTABLEKS                       R3 R1 K8 ["Destroy"]
       55 JUMPIFEQKNIL                     R3 ; [+3]
       57 MOVE                             R2 R1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R2
       60 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       62 MOVE                             R4 R2
       63 LOADK                            R5 K9 ["Bin:Add expects an Instance, connection, thread, function, or object with a Destroy or Disconnect method"]
       64 GETIMPORT                        R3 K11 [assert]
       66 CALL                             R3 2 0
       67 GETTABLEKS                       R4 R0 K12 ["_items"]
       69 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       71 MOVE                             R5 R2
       72 GETIMPORT                        R3 K14 [table.insert]
       74 CALL                             R3 2 0
       75 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_items"]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R0 K0 ["_items"]
        6 LENGTH                           R4 R1
        7 LOADN                            R2 1
        8 LOADN                            R3 -1
        9 FORNPREP                         R2
       10 GETUPVAL                         R5 0
       11 GETTABLE                         R6 R1 R4
       12 CALL                             R5 1 0
       13 FORNLOOP                         R2
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 DUPCLOSURE                       R2 K4 [PROTO_2]
       11 DUPCLOSURE                       R3 K5 [PROTO_3]
       12 SETTABLEKS                       R3 R0 K6 ["Add"]
       14 DUPCLOSURE                       R3 K7 [PROTO_4]
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R0 K8 ["Destroy"]
       18 RETURN                           R0 1
