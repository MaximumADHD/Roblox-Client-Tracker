PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+25]
        7 GETTABLEKS                       R1 R0 K3 ["Disconnect"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 NAMECALL                         R1 R0 K3 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K4 ["disconnect"]
       15 JUMPIFNOT                        R1 ; [+3]
       16 NAMECALL                         R1 R0 K4 ["disconnect"]
       18 CALL                             R1 1 0
       19 GETTABLEKS                       R1 R0 K5 ["Destroy"]
       21 JUMPIFNOT                        R1 ; [+3]
       22 NAMECALL                         R1 R0 K5 ["Destroy"]
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K6 ["destroy"]
       27 JUMPIFNOT                        R1 ; [+3]
       28 NAMECALL                         R1 R0 K6 ["destroy"]
       30 CALL                             R1 1 0
       31 FASTCALL1                        TYPEOF R0 ; [+3]
       32 MOVE                             R2 R0
       33 GETIMPORT                        R1 K8 [typeof]
       35 CALL                             R1 1 1
       36 JUMPIFNOTEQKS                    R1 K9 ["Instance"] ; [+4]
       38 NAMECALL                         R1 R0 K5 ["Destroy"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"_cleanupList"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_cleanupList"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_cleanupList"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_cleanupList"]
        2 LENGTH                           R3 R4
        3 LOADN                            R1 1
        4 LOADN                            R2 255
        5 FORNPREP                         R1
        6 GETTABLEKS                       R5 R0 K0 ["_cleanupList"]
        8 GETTABLE                         R4 R5 R3
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETIMPORT                        R5 K2 [pcall]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R4
       15 CALL                             R5 1 0
       16 GETTABLEKS                       R5 R0 K0 ["_cleanupList"]
       18 LOADNIL                          R6
       19 SETTABLE                         R6 R5 R3
       20 FORNLOOP                         R1
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K0 ["_cleanupList"]
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["new"]
       10 DUPCLOSURE                       R2 K4 [PROTO_2]
       11 SETTABLEKS                       R2 R0 K5 ["add"]
       13 DUPCLOSURE                       R2 K6 [PROTO_4]
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R0 K7 ["Destroy"]
       17 RETURN                           R0 1
