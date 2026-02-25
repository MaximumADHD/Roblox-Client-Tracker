PROTO_0:
        0 DUPTABLE                         R1 K1 [{"_tasks"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_tasks"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 GETTABLEKS                       R2 R0 K3 ["ClassName"]
       10 JUMPIFEQKS                       R2 K4 ["Maid"] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R0 K0 ["_tasks"]
        8 GETTABLE                         R2 R3 R1
        9 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFEQKNIL                     R3 ; [+14]
        4 GETIMPORT                        R3 K1 [error]
        6 GETIMPORT                        R4 K4 [string.format]
        8 LOADK                            R5 K5 ["Cannot use '%s' as a Maid key"]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R7 R1
       11 GETIMPORT                        R6 K7 [tostring]
       13 CALL                             R6 1 1
       14 CALL                             R4 2 1
       15 LOADN                            R5 2
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R0 K8 ["_tasks"]
       19 GETTABLE                         R4 R3 R1
       20 JUMPIFNOTEQ                      R4 R2 ; [+2]
       22 RETURN                           R0 0
       23 SETTABLE                         R2 R3 R1
       24 JUMPIFNOT                        R4 ; [+71]
       25 FASTCALL1                        TYPE R4 ; [+3]
       26 MOVE                             R6 R4
       27 GETIMPORT                        R5 K10 [type]
       29 CALL                             R5 1 1
       30 JUMPIFNOTEQKS                    R5 K11 ["function"] ; [+4]
       32 MOVE                             R5 R4
       33 CALL                             R5 0 0
       34 RETURN                           R0 0
       35 FASTCALL1                        TYPE R4 ; [+3]
       36 MOVE                             R6 R4
       37 GETIMPORT                        R5 K10 [type]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K12 ["thread"] ; [+20]
       42 LOADNIL                          R5
       43 GETIMPORT                        R6 K15 [coroutine.running]
       45 CALL                             R6 0 1
       46 JUMPIFEQ                         R6 R4 ; [+7]
       48 GETIMPORT                        R6 K17 [pcall]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R4
       52 CALL                             R6 1 1
       53 MOVE                             R5 R6
       54 JUMPIF                           R5 ; [+41]
       55 GETIMPORT                        R6 K20 [task.defer]
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          VAL R4
       59 CALL                             R6 1 0
       60 RETURN                           R0 0
       61 FASTCALL1                        TYPEOF R4 ; [+3]
       62 MOVE                             R6 R4
       63 GETIMPORT                        R5 K22 [typeof]
       65 CALL                             R5 1 1
       66 JUMPIFNOTEQKS                    R5 K23 ["RBXScriptConnection"] ; [+5]
       68 NAMECALL                         R5 R4 K24 ["Disconnect"]
       70 CALL                             R5 1 0
       71 RETURN                           R0 0
       72 FASTCALL1                        TYPEOF R4 ; [+3]
       73 MOVE                             R6 R4
       74 GETIMPORT                        R5 K22 [typeof]
       76 CALL                             R5 1 1
       77 JUMPIFNOTEQKS                    R5 K25 ["Instance"] ; [+5]
       79 NAMECALL                         R5 R4 K26 ["Destroy"]
       81 CALL                             R5 1 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R5 R4 K27 ["destroy"]
       85 JUMPIFNOT                        R5 ; [+4]
       86 NAMECALL                         R5 R4 K27 ["destroy"]
       88 CALL                             R5 1 0
       89 RETURN                           R0 0
       90 GETTABLEKS                       R5 R4 K26 ["Destroy"]
       92 JUMPIFNOT                        R5 ; [+3]
       93 NAMECALL                         R5 R4 K26 ["Destroy"]
       95 CALL                             R5 1 0
       96 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R1 ; [+5]
        1 GETIMPORT                        R2 K1 [error]
        3 LOADK                            R3 K2 ["Task cannot be false or nil"]
        4 LOADN                            R4 2
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R4 R0 K4 ["_tasks"]
        8 LENGTH                           R3 R4
        9 ADDK                             R2 R3 K3 [1]
       10 SETTABLE                         R1 R0 R2
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K6 [type]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K7 ["table"] ; [+15]
       18 GETTABLEKS                       R2 R1 K8 ["destroy"]
       20 JUMPIF                           R2 ; [+11]
       21 GETTABLEKS                       R2 R1 K9 ["Destroy"]
       23 JUMPIF                           R2 ; [+8]
       24 GETIMPORT                        R2 K11 [warn]
       26 LOADK                            R4 K12 ["[Maid.giveTask] - Gave table task without .Destroy\n\n"]
       27 GETIMPORT                        R5 K15 [debug.traceback]
       29 CALL                             R5 0 1
       30 CONCAT                           R3 R4 R5
       31 CALL                             R2 1 0
       32 RETURN                           R1 1

PROTO_7:
        0 JUMPIF                           R1 ; [+5]
        1 GETIMPORT                        R2 K1 [error]
        3 LOADK                            R3 K2 ["Task cannot be false or nil"]
        4 LOADN                            R4 2
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R4 R0 K4 ["_tasks"]
        8 LENGTH                           R3 R4
        9 ADDK                             R2 R3 K3 [1]
       10 SETTABLE                         R1 R0 R2
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K6 [type]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K7 ["table"] ; [+15]
       18 GETTABLEKS                       R3 R1 K8 ["destroy"]
       20 JUMPIF                           R3 ; [+11]
       21 GETTABLEKS                       R3 R1 K9 ["Destroy"]
       23 JUMPIF                           R3 ; [+8]
       24 GETIMPORT                        R3 K11 [warn]
       26 LOADK                            R5 K12 ["[Maid.giveTask] - Gave table task without .Destroy\n\n"]
       27 GETIMPORT                        R6 K15 [debug.traceback]
       29 CALL                             R6 0 1
       30 CONCAT                           R4 R5 R6
       31 CALL                             R3 1 0
       32 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_tasks"]
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K2 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K3 ["RBXScriptConnection"] ; [+6]
       13 LOADNIL                          R7
       14 SETTABLE                         R7 R1 R5
       15 NAMECALL                         R7 R6 K4 ["Disconnect"]
       17 CALL                             R7 1 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 GETIMPORT                        R2 K6 [next]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 2
       24 JUMPIFEQKNIL                     R3 ; [+82]
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R1 R2
       28 FASTCALL1                        TYPE R3 ; [+3]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K8 [type]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKS                    R4 K9 ["function"] ; [+4]
       35 MOVE                             R4 R3
       36 CALL                             R4 0 0
       37 JUMP                             ; [+62]
       38 FASTCALL1                        TYPE R3 ; [+3]
       39 MOVE                             R5 R3
       40 GETIMPORT                        R4 K8 [type]
       42 CALL                             R4 1 1
       43 JUMPIFNOTEQKS                    R4 K10 ["thread"] ; [+21]
       45 LOADNIL                          R4
       46 GETIMPORT                        R5 K13 [coroutine.running]
       48 CALL                             R5 0 1
       49 JUMPIFEQ                         R5 R3 ; [+7]
       51 GETIMPORT                        R5 K15 [pcall]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          REF R3
       55 CALL                             R5 1 1
       56 MOVE                             R4 R5
       57 JUMPIF                           R4 ; [+42]
       58 MOVE                             R5 R3
       59 GETIMPORT                        R6 K18 [task.defer]
       61 NEWCLOSURE                       R7 P1
       62 CAPTURE                          VAL R5
       63 CALL                             R6 1 0
       64 JUMP                             ; [+35]
       65 FASTCALL1                        TYPEOF R3 ; [+3]
       66 MOVE                             R5 R3
       67 GETIMPORT                        R4 K2 [typeof]
       69 CALL                             R4 1 1
       70 JUMPIFNOTEQKS                    R4 K3 ["RBXScriptConnection"] ; [+5]
       72 NAMECALL                         R4 R3 K4 ["Disconnect"]
       74 CALL                             R4 1 0
       75 JUMP                             ; [+24]
       76 FASTCALL1                        TYPEOF R3 ; [+3]
       77 MOVE                             R5 R3
       78 GETIMPORT                        R4 K2 [typeof]
       80 CALL                             R4 1 1
       81 JUMPIFNOTEQKS                    R4 K19 ["Instance"] ; [+5]
       83 NAMECALL                         R4 R3 K20 ["Destroy"]
       85 CALL                             R4 1 0
       86 JUMP                             ; [+13]
       87 GETTABLEKS                       R4 R3 K21 ["destroy"]
       89 JUMPIFNOT                        R4 ; [+4]
       90 NAMECALL                         R4 R3 K21 ["destroy"]
       92 CALL                             R4 1 0
       93 JUMP                             ; [+6]
       94 GETTABLEKS                       R4 R3 K20 ["Destroy"]
       96 JUMPIFNOT                        R4 ; [+3]
       97 NAMECALL                         R4 R3 K20 ["Destroy"]
       99 CALL                             R4 1 0
      100 GETIMPORT                        R4 K6 [next]
      102 MOVE                             R5 R1
      103 CALL                             R4 1 2
      104 MOVE                             R2 R4
      105 MOVE                             R3 R5
      106 JUMPBACK                         ; [-83]
      107 CLOSEUPVALS                      R3
      108 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K1 ["new"]
        7 DUPCLOSURE                       R1 K2 [PROTO_1]
        8 SETTABLEKS                       R1 R0 K3 ["isMaid"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["__index"]
       14 DUPCLOSURE                       R1 K6 [PROTO_5]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["__newindex"]
       18 DUPCLOSURE                       R1 K8 [PROTO_6]
       19 SETTABLEKS                       R1 R0 K9 ["add"]
       21 DUPCLOSURE                       R1 K10 [PROTO_7]
       22 SETTABLEKS                       R1 R0 K11 ["giveTask"]
       24 DUPCLOSURE                       R1 K12 [PROTO_10]
       25 SETTABLEKS                       R1 R0 K13 ["destroy"]
       27 RETURN                           R0 1
