PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_tasks"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_tasks"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R3 R0 K0 ["_tasks"]
        5 GETTABLE                         R2 R3 R1
        6 RETURN                           R2 1

PROTO_2:
        0 FASTCALL2                        RAWGET R0 R1 ; [+5]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K1 [rawget]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+12]
        8 GETIMPORT                        R3 K3 [error]
       10 GETIMPORT                        R4 K6 [string.format]
       12 LOADK                            R5 K7 ["Cannot use %q as a Maid key"]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R6 K9 [tostring]
       17 CALL                             R6 1 1
       18 CALL                             R4 2 -1
       19 CALL                             R3 -1 0
       20 GETTABLEKS                       R3 R0 K10 ["_tasks"]
       22 GETTABLE                         R4 R3 R1
       23 JUMPIFNOTEQ                      R4 R2 ; [+2]
       25 RETURN                           R0 0
       26 SETTABLE                         R2 R3 R1
       27 JUMPIFNOT                        R4 ; [+5]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K11 ["cleanupTask"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_tasks"]
        2 LENGTH                           R4 R2
        3 ADDK                             R3 R4 K1 [1]
        4 SETTABLE                         R1 R2 R3
        5 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+4]
        7 MOVE                             R2 R0
        8 CALL                             R2 0 0
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKS                    R1 K3 ["RBXScriptConnection"] ; [+5]
       12 NAMECALL                         R2 R0 K4 ["Disconnect"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K5 ["Destroy"]
       18 JUMPIFNOT                        R2 ; [+4]
       19 NAMECALL                         R2 R0 K5 ["Destroy"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R2 R0 K6 ["destroy"]
       25 JUMPIFNOT                        R2 ; [+4]
       26 NAMECALL                         R2 R0 K6 ["destroy"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K8 [error]
       32 LOADK                            R3 K9 ["Unable to cleanup unknown task"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_tasks"]
        2 GETIMPORT                        R2 K2 [pairs]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL1                        TYPEOF R6 ; [+3]
        8 MOVE                             R8 R6
        9 GETIMPORT                        R7 K4 [typeof]
       11 CALL                             R7 1 1
       12 JUMPIFNOTEQKS                    R7 K5 ["RBXScriptConnection"] ; [+6]
       14 LOADNIL                          R7
       15 SETTABLE                         R7 R1 R5
       16 NAMECALL                         R7 R6 K6 ["Disconnect"]
       18 CALL                             R7 1 0
       19 FORGLOOP                         R2 2 ; [-13]
       21 GETIMPORT                        R2 K8 [next]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 2
       25 JUMPIFEQKNIL                     R3 ; [+15]
       27 LOADNIL                          R4
       28 SETTABLE                         R4 R1 R2
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K9 ["cleanupTask"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETIMPORT                        R4 K8 [next]
       36 MOVE                             R5 R1
       37 CALL                             R4 1 2
       38 MOVE                             R2 R4
       39 MOVE                             R3 R5
       40 JUMPBACK                         ; [-16]
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K1 ["new"]
        7 DUPCLOSURE                       R1 K2 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["__index"]
       11 DUPCLOSURE                       R1 K4 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K5 ["__newindex"]
       15 DUPCLOSURE                       R1 K6 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K7 ["give"]
       18 DUPCLOSURE                       R1 K8 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K9 ["cleanupTask"]
       21 DUPCLOSURE                       R1 K10 [PROTO_5]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K11 ["clean"]
       25 GETTABLEKS                       R1 R0 K11 ["clean"]
       27 SETTABLEKS                       R1 R0 K12 ["destroy"]
       29 RETURN                           R0 1
