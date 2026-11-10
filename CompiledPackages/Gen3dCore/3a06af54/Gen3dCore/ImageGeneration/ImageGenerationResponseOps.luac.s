PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+19]
        9 GETTABLEKS                       R3 R0 K3 ["result"]
       11 FASTCALL1                        TYPEOF R3 ; [+2]
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+11]
       17 GETTABLEKS                       R3 R0 K3 ["result"]
       19 GETTABLEKS                       R3 R3 K4 ["image"]
       21 FASTCALL1                        TYPEOF R3 ; [+2]
       22 GETIMPORT                        R2 K1 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
       27 RETURN                           R1 1
       28 GETTABLEKS                       R2 R0 K3 ["result"]
       30 GETTABLEKS                       R2 R2 K4 ["image"]
       32 GETTABLEKS                       R3 R2 K5 ["presignedUrl"]
       34 SETTABLEKS                       R3 R1 K5 ["presignedUrl"]
       36 GETTABLEKS                       R3 R2 K6 ["widthPx"]
       38 SETTABLEKS                       R3 R1 K6 ["widthPx"]
       40 GETTABLEKS                       R3 R2 K7 ["heightPx"]
       42 SETTABLEKS                       R3 R1 K7 ["heightPx"]
       44 GETTABLEKS                       R3 R2 K8 ["format"]
       46 SETTABLEKS                       R3 R1 K8 ["format"]
       48 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["FAILED_STATUSES"]
       10 GETTABLEKS                       R4 R0 K4 ["status"]
       12 GETTABLE                         R2 R3 R4
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K5 ["progressUpdates"]
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R4 R2
       20 GETIMPORT                        R3 K1 [typeof]
       22 CALL                             R3 1 1
       23 JUMPIFEQKS                       R3 K2 ["table"] ; [+3]
       25 LOADNIL                          R3
       26 RETURN                           R3 1
       27 LENGTH                           R4 R2
       28 GETTABLE                         R3 R2 R4
       29 FASTCALL1                        TYPEOF R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K1 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+13]
       36 GETTABLEKS                       R5 R3 K6 ["message"]
       38 FASTCALL1                        TYPEOF R5 ; [+2]
       39 GETIMPORT                        R4 K1 [typeof]
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKS                    R4 K7 ["string"] ; [+5]
       44 GETTABLEKS                       R4 R3 K6 ["message"]
       46 JUMPIFNOTEQKS                    R4 K8 [""] ; [+3]
       48 LOADNIL                          R4
       49 RETURN                           R4 1
       50 JUMPIFNOT                        R1 ; [+5]
       51 MOVE                             R4 R1
       52 GETTABLEKS                       R5 R3 K6 ["message"]
       54 CALL                             R4 1 -1
       55 RETURN                           R4 -1
       56 GETTABLEKS                       R4 R3 K6 ["message"]
       58 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["extractImageFields"]
        3 MOVE                             R5 R2
        4 CALL                             R4 1 1
        5 DUPTABLE                         R5 K10 [{"ok", "statusCode", "status", "currentStage", "presignedUrl", "widthPx", "heightPx", "format", "errorMessage"}]
        6 SETTABLEKS                       R0 R5 K1 ["ok"]
        8 SETTABLEKS                       R1 R5 K2 ["statusCode"]
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R8 R2
       12 GETIMPORT                        R7 K12 [typeof]
       14 CALL                             R7 1 1
       15 JUMPIFNOTEQKS                    R7 K13 ["table"] ; [+4]
       17 GETTABLEKS                       R6 R2 K3 ["status"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R6
       21 SETTABLEKS                       R6 R5 K3 ["status"]
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R8 R2
       25 GETIMPORT                        R7 K12 [typeof]
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQKS                    R7 K13 ["table"] ; [+4]
       30 GETTABLEKS                       R6 R2 K4 ["currentStage"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K4 ["currentStage"]
       36 GETTABLEKS                       R6 R4 K5 ["presignedUrl"]
       38 SETTABLEKS                       R6 R5 K5 ["presignedUrl"]
       40 GETTABLEKS                       R6 R4 K6 ["widthPx"]
       42 SETTABLEKS                       R6 R5 K6 ["widthPx"]
       44 GETTABLEKS                       R6 R4 K7 ["heightPx"]
       46 SETTABLEKS                       R6 R5 K7 ["heightPx"]
       48 GETTABLEKS                       R6 R4 K8 ["format"]
       50 SETTABLEKS                       R6 R5 K8 ["format"]
       52 SETTABLEKS                       R3 R5 K9 ["errorMessage"]
       54 RETURN                           R5 1

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
       29 SETTABLEKS                       R3 R2 K13 ["extractImageFields"]
       31 DUPCLOSURE                       R3 K14 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R3 R2 K15 ["extractFailureMessage"]
       35 DUPCLOSURE                       R3 K16 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R3 R2 K17 ["toGetStatusResult"]
       39 RETURN                           R2 1
