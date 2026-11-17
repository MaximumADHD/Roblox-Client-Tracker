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
       24 JUMPIFNOT                        R4 ; [+72]
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
       40 JUMPIFNOTEQKS                    R5 K12 ["thread"] ; [+21]
       42 LOADNIL                          R5
       43 GETIMPORT                        R6 K15 [coroutine.running]
       45 CALL                             R6 0 1
       46 JUMPIFEQ                         R6 R4 ; [+8]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R4
       50 FASTPCALL                        pcall 1 ; [+2]
       51 GETIMPORT                        R6 K17 [pcall]
       53 CALL                             R6 1 1
       54 MOVE                             R5 R6
       55 JUMPIF                           R5 ; [+41]
       56 GETIMPORT                        R6 K20 [task.defer]
       58 NEWCLOSURE                       R7 P1
       59 CAPTURE                          VAL R4
       60 CALL                             R6 1 0
       61 RETURN                           R0 0
       62 FASTCALL1                        TYPEOF R4 ; [+3]
       63 MOVE                             R6 R4
       64 GETIMPORT                        R5 K22 [typeof]
       66 CALL                             R5 1 1
       67 JUMPIFNOTEQKS                    R5 K23 ["RBXScriptConnection"] ; [+5]
       69 NAMECALL                         R5 R4 K24 ["Disconnect"]
       71 CALL                             R5 1 0
       72 RETURN                           R0 0
       73 FASTCALL1                        TYPEOF R4 ; [+3]
       74 MOVE                             R6 R4
       75 GETIMPORT                        R5 K22 [typeof]
       77 CALL                             R5 1 1
       78 JUMPIFNOTEQKS                    R5 K25 ["Instance"] ; [+5]
       80 NAMECALL                         R5 R4 K26 ["Destroy"]
       82 CALL                             R5 1 0
       83 RETURN                           R0 0
       84 GETTABLEKS                       R5 R4 K27 ["destroy"]
       86 JUMPIFNOT                        R5 ; [+4]
       87 NAMECALL                         R5 R4 K27 ["destroy"]
       89 CALL                             R5 1 0
       90 RETURN                           R0 0
       91 GETTABLEKS                       R5 R4 K26 ["Destroy"]
       93 JUMPIFNOT                        R5 ; [+3]
       94 NAMECALL                         R5 R4 K26 ["Destroy"]
       96 CALL                             R5 1 0
       97 RETURN                           R0 0

PROTO_6:
        0 SETTABLE                         R2 R0 R1
        1 RETURN                           R0 0

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

PROTO_8:
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

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
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
       24 JUMPIFEQKNIL                     R3 ; [+83]
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R1 R2
       28 FASTCALL1                        TYPE R3 ; [+3]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K8 [type]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKS                    R4 K9 ["function"] ; [+4]
       35 MOVE                             R4 R3
       36 CALL                             R4 0 0
       37 JUMP                             ; [+63]
       38 FASTCALL1                        TYPE R3 ; [+3]
       39 MOVE                             R5 R3
       40 GETIMPORT                        R4 K8 [type]
       42 CALL                             R4 1 1
       43 JUMPIFNOTEQKS                    R4 K10 ["thread"] ; [+22]
       45 LOADNIL                          R4
       46 GETIMPORT                        R5 K13 [coroutine.running]
       48 CALL                             R5 0 1
       49 JUMPIFEQ                         R5 R3 ; [+8]
       51 NEWCLOSURE                       R6 P0
       52 CAPTURE                          REF R3
       53 FASTPCALL                        pcall 1 ; [+2]
       54 GETIMPORT                        R5 K15 [pcall]
       56 CALL                             R5 1 1
       57 MOVE                             R4 R5
       58 JUMPIF                           R4 ; [+42]
       59 MOVE                             R5 R3
       60 GETIMPORT                        R6 K18 [task.defer]
       62 NEWCLOSURE                       R7 P1
       63 CAPTURE                          VAL R5
       64 CALL                             R6 1 0
       65 JUMP                             ; [+35]
       66 FASTCALL1                        TYPEOF R3 ; [+3]
       67 MOVE                             R5 R3
       68 GETIMPORT                        R4 K2 [typeof]
       70 CALL                             R4 1 1
       71 JUMPIFNOTEQKS                    R4 K3 ["RBXScriptConnection"] ; [+5]
       73 NAMECALL                         R4 R3 K4 ["Disconnect"]
       75 CALL                             R4 1 0
       76 JUMP                             ; [+24]
       77 FASTCALL1                        TYPEOF R3 ; [+3]
       78 MOVE                             R5 R3
       79 GETIMPORT                        R4 K2 [typeof]
       81 CALL                             R4 1 1
       82 JUMPIFNOTEQKS                    R4 K19 ["Instance"] ; [+5]
       84 NAMECALL                         R4 R3 K20 ["Destroy"]
       86 CALL                             R4 1 0
       87 JUMP                             ; [+13]
       88 GETTABLEKS                       R4 R3 K21 ["destroy"]
       90 JUMPIFNOT                        R4 ; [+4]
       91 NAMECALL                         R4 R3 K21 ["destroy"]
       93 CALL                             R4 1 0
       94 JUMP                             ; [+6]
       95 GETTABLEKS                       R4 R3 K20 ["Destroy"]
       97 JUMPIFNOT                        R4 ; [+3]
       98 NAMECALL                         R4 R3 K20 ["Destroy"]
      100 CALL                             R4 1 0
      101 GETIMPORT                        R4 K6 [next]
      103 MOVE                             R5 R1
      104 CALL                             R4 1 2
      105 MOVE                             R2 R4
      106 MOVE                             R3 R5
      107 JUMPBACK                         ; [-84]
      108 CLOSEUPVALS                      R3
      109 RETURN                           R0 0

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
       19 SETTABLEKS                       R1 R0 K9 ["addNamed"]
       21 DUPCLOSURE                       R1 K10 [PROTO_7]
       22 SETTABLEKS                       R1 R0 K11 ["add"]
       24 DUPCLOSURE                       R1 K12 [PROTO_8]
       25 SETTABLEKS                       R1 R0 K13 ["giveTask"]
       27 DUPCLOSURE                       R1 K14 [PROTO_11]
       28 SETTABLEKS                       R1 R0 K15 ["destroy"]
       30 RETURN                           R0 1
