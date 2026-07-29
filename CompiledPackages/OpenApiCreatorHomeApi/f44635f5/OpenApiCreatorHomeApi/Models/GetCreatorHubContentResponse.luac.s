PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R4 R0 K7 ["banners"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       33 LOADK                            R6 K8 ["%*\"banners\" > Expected table, got %*"]
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R10 R0 K7 ["banners"]
       37 FASTCALL1                        TYPEOF R10 ; [+2]
       38 GETIMPORT                        R9 K1 [typeof]
       40 CALL                             R9 1 1
       41 NAMECALL                         R6 R6 K4 ["format"]
       43 CALL                             R6 3 1
       44 MOVE                             R5 R6
       45 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       47 MOVE                             R4 R1
       48 GETIMPORT                        R3 K6 [table.insert]
       50 CALL                             R3 2 0
       51 RETURN                           R0 1
       52 GETTABLEKS                       R3 R0 K7 ["banners"]
       54 LOADNIL                          R4
       55 LOADNIL                          R5
       56 FORGPREP                         R3
       57 FASTCALL1                        TYPEOF R6 ; [+3]
       58 MOVE                             R9 R6
       59 GETIMPORT                        R8 K1 [typeof]
       61 CALL                             R8 1 1
       62 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
       64 LOADK                            R11 K10 ["%*\"banners\" > Expected index of type number, got %* as %*"]
       65 MOVE                             R13 R2
       66 MOVE                             R14 R6
       67 FASTCALL1                        TYPEOF R6 ; [+3]
       68 MOVE                             R16 R6
       69 GETIMPORT                        R15 K1 [typeof]
       71 CALL                             R15 1 1
       72 NAMECALL                         R11 R11 K4 ["format"]
       74 CALL                             R11 4 1
       75 MOVE                             R10 R11
       76 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       78 MOVE                             R9 R1
       79 GETIMPORT                        R8 K6 [table.insert]
       81 CALL                             R8 2 0
       82 JUMP                             ; [+16]
       83 GETTABLEKS                       R8 R0 K7 ["banners"]
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
       88 MOVE                             R10 R7
       89 MOVE                             R11 R1
       90 LOADK                            R13 K12 ["%*\"banners\" > [%*] > "]
       91 MOVE                             R15 R2
       92 MOVE                             R16 R6
       93 NAMECALL                         R13 R13 K4 ["format"]
       95 CALL                             R13 3 1
       96 MOVE                             R12 R13
       97 CALL                             R9 3 1
       98 SETTABLE                         R9 R8 R6
       99 FORGLOOP                         R3 2 ; [-43]
      101 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["banners"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K3 ["banners"]
       11 GETTABLEKS                       R2 R1 K3 ["banners"]
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R1 K3 ["banners"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       21 MOVE                             R9 R6
       22 CALL                             R8 1 1
       23 SETTABLE                         R8 R7 R5
       24 FORGLOOP                         R2 2 ; [-9]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["BannerConfiguration"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 GETIMPORT                        R6 K14 [table.freeze]
       27 DUPTABLE                         R7 K17 [{"fromResponse", "toRequest"}]
       28 SETTABLEKS                       R4 R7 K15 ["fromResponse"]
       30 SETTABLEKS                       R5 R7 K16 ["toRequest"]
       32 CALL                             R6 1 1
       33 RETURN                           R6 1
