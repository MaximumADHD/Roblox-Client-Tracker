PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL1                        TYPEOF R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+24]
       22 DUPTABLE                         R9 K7 [{"index", "previewUrl", "textureUrl", "moderationStatus"}]
       23 GETTABLEKS                       R10 R6 K3 ["index"]
       25 SETTABLEKS                       R10 R9 K3 ["index"]
       27 GETTABLEKS                       R10 R6 K4 ["previewUrl"]
       29 SETTABLEKS                       R10 R9 K4 ["previewUrl"]
       31 GETTABLEKS                       R10 R6 K5 ["textureUrl"]
       33 SETTABLEKS                       R10 R9 K5 ["textureUrl"]
       35 GETTABLEKS                       R10 R6 K6 ["moderationStatus"]
       37 SETTABLEKS                       R10 R9 K6 ["moderationStatus"]
       39 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R7 K9 [table.insert]
       44 CALL                             R7 2 0
       45 FORGLOOP                         R2 2 ; [-31]
       47 RETURN                           R1 1

PROTO_1:
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
       23 DUPTABLE                         R2 K9 [{"imageUrls", "images", "camera"}]
       24 GETTABLEKS                       R3 R0 K7 ["imageUrls"]
       26 SETTABLEKS                       R3 R2 K7 ["imageUrls"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R4 R0 K8 ["images"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K8 ["images"]
       34 SETTABLEKS                       R1 R2 K0 ["camera"]
       36 RETURN                           R2 1

PROTO_2:
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
       28 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+79]
       30 NEWTABLE                         R2 0 0
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 MOVE                             R5 R1
       35 LOADNIL                          R6
       36 LOADNIL                          R7
       37 FORGPREP                         R5
       38 FASTCALL1                        TYPEOF R9 ; [+3]
       39 MOVE                             R11 R9
       40 GETIMPORT                        R10 K1 [typeof]
       42 CALL                             R10 1 1
       43 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+54]
       45 GETUPVAL                         R10 0
       46 MOVE                             R11 R9
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R12 R10 K4 ["imageUrls"]
       50 FASTCALL1                        TYPEOF R12 ; [+2]
       51 GETIMPORT                        R11 K1 [typeof]
       53 CALL                             R11 1 1
       54 JUMPIFNOTEQKS                    R11 K2 ["table"] ; [+15]
       56 GETTABLEKS                       R11 R10 K4 ["imageUrls"]
       58 LOADNIL                          R12
       59 LOADNIL                          R13
       60 FORGPREP                         R11
       61 FASTCALL2                        TABLE_INSERT R2 R15 ; [+5]
       63 MOVE                             R17 R2
       64 MOVE                             R18 R15
       65 GETIMPORT                        R16 K6 [table.insert]
       67 CALL                             R16 2 0
       68 FORGLOOP                         R11 2 ; [-8]
       70 GETTABLEKS                       R11 R10 K7 ["images"]
       72 JUMPIFEQKNIL                     R11 ; [+20]
       74 MOVE                             R11 R3
       75 JUMPIF                           R11 ; [+2]
       76 NEWTABLE                         R11 0 0
       78 MOVE                             R3 R11
       79 GETTABLEKS                       R11 R10 K7 ["images"]
       81 LOADNIL                          R12
       82 LOADNIL                          R13
       83 FORGPREP                         R11
       84 FASTCALL2                        TABLE_INSERT R3 R15 ; [+5]
       86 MOVE                             R17 R3
       87 MOVE                             R18 R15
       88 GETIMPORT                        R16 K6 [table.insert]
       90 CALL                             R16 2 0
       91 FORGLOOP                         R11 2 ; [-8]
       93 MOVE                             R11 R4
       94 JUMPIF                           R11 ; [+2]
       95 GETTABLEKS                       R11 R10 K8 ["camera"]
       97 MOVE                             R4 R11
       98 FORGLOOP                         R5 2 ; [-61]
      100 DUPTABLE                         R5 K9 [{"imageUrls", "images", "camera"}]
      101 SETTABLEKS                       R2 R5 K4 ["imageUrls"]
      103 SETTABLEKS                       R3 R5 K7 ["images"]
      105 SETTABLEKS                       R4 R5 K8 ["camera"]
      107 RETURN                           R5 1
      108 GETUPVAL                         R2 0
      109 MOVE                             R3 R1
      110 CALL                             R2 1 1
      111 RETURN                           R2 1

PROTO_3:
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
       31 DUPCLOSURE                       R5 K14 [PROTO_2]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R5 R2 K15 ["extractResult"]
       35 DUPCLOSURE                       R5 K16 [PROTO_3]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R2 K17 ["toGetStatusResult"]
       39 RETURN                           R2 1
