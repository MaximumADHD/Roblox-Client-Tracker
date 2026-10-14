PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R3 R0 K0 ["camera"]
        3 FASTCALL1                        TYPEOF R3 ; [+2]
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+15]
        9 DUPTABLE                         R2 K6 [{"extrinsic", "intrinsic"}]
       10 GETTABLEKS                       R3 R0 K0 ["camera"]
       12 GETTABLEKS                       R3 R3 K4 ["extrinsic"]
       14 SETTABLEKS                       R3 R2 K4 ["extrinsic"]
       16 GETTABLEKS                       R3 R0 K0 ["camera"]
       18 GETTABLEKS                       R3 R3 K5 ["intrinsic"]
       20 SETTABLEKS                       R3 R2 K5 ["intrinsic"]
       22 MOVE                             R1 R2
       23 DUPTABLE                         R2 K8 [{"imageUrls", "camera"}]
       24 GETTABLEKS                       R3 R0 K7 ["imageUrls"]
       26 SETTABLEKS                       R3 R2 K7 ["imageUrls"]
       28 SETTABLEKS                       R1 R2 K0 ["camera"]
       30 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+4]
        7 NEWTABLE                         R1 0 0
        9 RETURN                           R1 1
       10 GETTABLEKS                       R2 R0 K3 ["result"]
       12 FASTCALL1                        TYPEOF R2 ; [+2]
       13 GETIMPORT                        R1 K1 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFEQKS                       R1 K2 ["table"] ; [+4]
       18 NEWTABLE                         R1 0 0
       20 RETURN                           R1 1
       21 GETTABLEKS                       R1 R0 K3 ["result"]
       23 GETTABLEN                        R3 R1 1
       24 FASTCALL1                        TYPEOF R3 ; [+2]
       25 GETIMPORT                        R2 K1 [typeof]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+53]
       30 NEWTABLE                         R2 0 0
       32 LOADNIL                          R3
       33 MOVE                             R4 R1
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 FASTCALL1                        TYPEOF R8 ; [+3]
       38 MOVE                             R10 R8
       39 GETIMPORT                        R9 K1 [typeof]
       41 CALL                             R9 1 1
       42 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+31]
       44 GETUPVAL                         R9 0
       45 MOVE                             R10 R8
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R11 R9 K4 ["imageUrls"]
       49 FASTCALL1                        TYPEOF R11 ; [+2]
       50 GETIMPORT                        R10 K1 [typeof]
       52 CALL                             R10 1 1
       53 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+15]
       55 GETTABLEKS                       R10 R9 K4 ["imageUrls"]
       57 LOADNIL                          R11
       58 LOADNIL                          R12
       59 FORGPREP                         R10
       60 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
       62 MOVE                             R16 R2
       63 MOVE                             R17 R14
       64 GETIMPORT                        R15 K6 [table.insert]
       66 CALL                             R15 2 0
       67 FORGLOOP                         R10 2 ; [-8]
       69 MOVE                             R10 R3
       70 JUMPIF                           R10 ; [+2]
       71 GETTABLEKS                       R10 R9 K7 ["camera"]
       73 MOVE                             R3 R10
       74 FORGLOOP                         R4 2 ; [-38]
       76 DUPTABLE                         R4 K8 [{"imageUrls", "camera"}]
       77 SETTABLEKS                       R2 R4 K4 ["imageUrls"]
       79 SETTABLEKS                       R3 R4 K7 ["camera"]
       81 RETURN                           R4 1
       82 GETUPVAL                         R2 0
       83 MOVE                             R3 R1
       84 CALL                             R2 1 1
       85 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R4 K5 [{"ok", "statusCode", "status", "result", "errorMessage"}]
        1 SETTABLEKS                       R0 R4 K0 ["ok"]
        3 SETTABLEKS                       R1 R4 K1 ["statusCode"]
        5 FASTCALL1                        TYPEOF R2 ; [+3]
        6 MOVE                             R7 R2
        7 GETIMPORT                        R6 K7 [typeof]
        9 CALL                             R6 1 1
       10 JUMPIFNOTEQKS                    R6 K8 ["table"] ; [+4]
       12 GETTABLEKS                       R5 R2 K2 ["status"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R5
       16 SETTABLEKS                       R5 R4 K2 ["status"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K9 ["extractResult"]
       21 MOVE                             R6 R2
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R4 K3 ["result"]
       25 SETTABLEKS                       R3 R4 K4 ["errorMessage"]
       27 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Gen3dTypes"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["HostSurface"]
       22 CALL                             R1 1 1
       23 NEWTABLE                         R2 4 0
       25 DUPTABLE                         R3 K10 [{["Failed"] = True, ["Terminated"] = True}]
       26 SETTABLEKS                       R3 R2 K11 ["FAILED_STATUSES"]
       28 DUPCLOSURE                       R3 K12 [PROTO_0]
       29 DUPCLOSURE                       R4 K13 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R4 R2 K14 ["extractResult"]
       33 DUPCLOSURE                       R4 K15 [PROTO_2]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R2 K16 ["toGetStatusResult"]
       37 RETURN                           R2 1
