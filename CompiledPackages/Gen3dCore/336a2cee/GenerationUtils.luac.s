PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Size"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 NAMECALL                         R1 R0 K4 ["GetBoundingBox"]
       15 CALL                             R1 1 2
       16 RETURN                           R2 1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         MATH_MAX ; [+2]
        7 GETIMPORT                        R1 K5 [math.max]
        9 CALL                             R1 3 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLE                      R1 R2 ; [+3]
       13 LOADN                            R2 1
       14 RETURN                           R2 1
       15 DIVRK                            R2 K6 [2] R1
       16 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+6]
        3 JUMPIF                           R2 ; [+5]
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 LOADN                            R4 1
        8 RETURN                           R3 2
        9 GETTABLEKS                       R3 R0 K0 ["Archivable"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R0 K0 ["Archivable"]
       14 NAMECALL                         R4 R0 K1 ["Clone"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R3 R0 K0 ["Archivable"]
       19 JUMPIF                           R4 ; [+5]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 LOADN                            R6 1
       24 RETURN                           R5 2
       25 GETUPVAL                         R5 0
       26 CALL                             R5 0 1
       27 JUMPIFNOT                        R5 ; [+7]
       28 GETTABLEKS                       R6 R0 K2 ["CFrame"]
       30 GETTABLEKS                       R7 R0 K3 ["Position"]
       32 SUB                              R5 R6 R7
       33 SETTABLEKS                       R5 R4 K2 ["CFrame"]
       35 LOADN                            R5 1
       36 JUMPIFNOT                        R2 ; [+23]
       37 GETTABLEKS                       R6 R4 K4 ["Size"]
       39 GETTABLEKS                       R8 R6 K5 ["X"]
       41 GETTABLEKS                       R9 R6 K6 ["Y"]
       43 GETTABLEKS                       R10 R6 K7 ["Z"]
       45 FASTCALL                         MATH_MAX ; [+2]
       46 GETIMPORT                        R7 K10 [math.max]
       48 CALL                             R7 3 1
       49 LOADN                            R8 0
       50 JUMPIFNOTLE                      R7 R8 ; [+3]
       52 LOADN                            R5 1
       53 JUMP                             ; [+1]
       54 DIVRK                            R5 K11 [2] R7
       55 GETTABLEKS                       R6 R4 K4 ["Size"]
       57 MUL                              R6 R6 R5
       58 SETTABLEKS                       R6 R4 K4 ["Size"]
       60 GETIMPORT                        R6 K13 [pcall]
       62 MOVE                             R7 R1
       63 MOVE                             R8 R4
       64 CALL                             R6 2 2
       65 NAMECALL                         R8 R4 K14 ["Destroy"]
       67 CALL                             R8 1 0
       68 JUMPIF                           R6 ; [+5]
       69 GETIMPORT                        R8 K16 [error]
       71 MOVE                             R9 R7
       72 LOADN                            R10 0
       73 CALL                             R8 2 0
       74 MOVE                             R8 R7
       75 MOVE                             R9 R5
       76 RETURN                           R8 2

PROTO_3:
        0 NEWTABLE                         R2 1 0
        2 GETTABLEKS                       R3 R0 K0 ["Archivable"]
        4 SETTABLE                         R3 R2 R0
        5 NAMECALL                         R3 R0 K1 ["GetDescendants"]
        7 CALL                             R3 1 1
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R0 K0 ["Archivable"]
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K0 ["Archivable"]
       17 SETTABLE                         R9 R2 R8
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K0 ["Archivable"]
       21 FORGLOOP                         R4 2 ; [-7]
       23 NAMECALL                         R4 R0 K2 ["Clone"]
       25 CALL                             R4 1 1
       26 MOVE                             R5 R2
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 SETTABLEKS                       R9 R8 K0 ["Archivable"]
       32 FORGLOOP                         R5 2 ; [-3]
       34 JUMPIFNOT                        R4 ; [+18]
       35 JUMPIFNOT                        R1 ; [+17]
       36 GETTABLE                         R5 R2 R0
       37 SETTABLEKS                       R5 R4 K0 ["Archivable"]
       39 NAMECALL                         R5 R4 K1 ["GetDescendants"]
       41 CALL                             R5 1 1
       42 MOVE                             R6 R3
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 FORGPREP                         R6
       46 GETTABLE                         R11 R5 R9
       47 JUMPIFNOT                        R11 ; [+3]
       48 GETTABLE                         R12 R2 R10
       49 SETTABLEKS                       R12 R11 K0 ["Archivable"]
       51 FORGLOOP                         R6 2 ; [-6]
       53 RETURN                           R4 1

PROTO_4:
        0 JUMPIF                           R2 ; [+2]
        1 JUMPIF                           R3 ; [+1]
        2 JUMPIFNOT                        R4 ; [+5]
        3 LOADK                            R7 K0 ["PVInstance"]
        4 NAMECALL                         R5 R0 K1 ["IsA"]
        6 CALL                             R5 2 1
        7 JUMPIF                           R5 ; [+5]
        8 MOVE                             R5 R1
        9 MOVE                             R6 R0
       10 CALL                             R5 1 1
       11 LOADN                            R6 1
       12 RETURN                           R5 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["cloneAsArchivable"]
       16 MOVE                             R6 R0
       17 CALL                             R5 1 1
       18 JUMPIF                           R5 ; [+5]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R0
       21 CALL                             R6 1 1
       22 LOADN                            R7 1
       23 RETURN                           R6 2
       24 JUMPIFNOT                        R4 ; [+3]
       25 MOVE                             R6 R4
       26 MOVE                             R7 R5
       27 CALL                             R6 1 0
       28 JUMPIFNOT                        R2 ; [+9]
       29 NAMECALL                         R6 R5 K3 ["GetPivot"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R10 R6 K4 ["Position"]
       34 SUB                              R9 R6 R10
       35 NAMECALL                         R7 R5 K5 ["PivotTo"]
       37 CALL                             R7 2 0
       38 LOADN                            R6 1
       39 JUMPIFNOT                        R3 ; [+42]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K6 ["getLocalBoundingBoxSize"]
       43 MOVE                             R8 R5
       44 CALL                             R7 1 1
       45 JUMPIFNOT                        R7 ; [+36]
       46 GETTABLEKS                       R9 R7 K7 ["X"]
       48 GETTABLEKS                       R10 R7 K8 ["Y"]
       50 GETTABLEKS                       R11 R7 K9 ["Z"]
       52 FASTCALL                         MATH_MAX ; [+2]
       53 GETIMPORT                        R8 K12 [math.max]
       55 CALL                             R8 3 1
       56 LOADN                            R9 0
       57 JUMPIFNOTLE                      R8 R9 ; [+3]
       59 LOADN                            R6 1
       60 JUMP                             ; [+1]
       61 DIVRK                            R6 K13 [2] R8
       62 LOADK                            R10 K14 ["Model"]
       63 NAMECALL                         R8 R5 K1 ["IsA"]
       65 CALL                             R8 2 1
       66 JUMPIFNOT                        R8 ; [+5]
       67 MOVE                             R10 R6
       68 NAMECALL                         R8 R5 K15 ["ScaleTo"]
       70 CALL                             R8 2 0
       71 JUMP                             ; [+10]
       72 LOADK                            R10 K16 ["BasePart"]
       73 NAMECALL                         R8 R5 K1 ["IsA"]
       75 CALL                             R8 2 1
       76 JUMPIFNOT                        R8 ; [+5]
       77 GETTABLEKS                       R8 R5 K17 ["Size"]
       79 MUL                              R8 R8 R6
       80 SETTABLEKS                       R8 R5 K17 ["Size"]
       82 GETIMPORT                        R7 K19 [pcall]
       84 MOVE                             R8 R1
       85 MOVE                             R9 R5
       86 CALL                             R7 2 2
       87 NAMECALL                         R9 R5 K20 ["Destroy"]
       89 CALL                             R9 1 0
       90 JUMPIF                           R7 ; [+5]
       91 GETIMPORT                        R9 K22 [error]
       93 MOVE                             R10 R8
       94 LOADN                            R11 0
       95 CALL                             R9 2 0
       96 MOVE                             R9 R8
       97 MOVE                             R10 R6
       98 RETURN                           R9 2

PROTO_5:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K2 ["Model"]
        7 NAMECALL                         R1 R0 K1 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 NAMECALL                         R2 R0 K3 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K0 ["MeshPart"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+4]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADNIL                          R7
       25 RETURN                           R7 1
       26 MOVE                             R1 R6
       27 FORGLOOP                         R2 2 ; [-10]
       29 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADN                            R1 0
        8 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 LOADK                            R9 K3 ["MeshPart"]
       13 NAMECALL                         R7 R6 K1 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+6]
       17 ADDK                             R1 R1 K4 [1]
       18 LOADN                            R7 1
       19 JUMPIFNOTLT                      R7 R1 ; [+3]
       21 LOADB                            R7 1
       22 RETURN                           R7 1
       23 FORGLOOP                         R2 2 ; [-12]
       25 LOADB                            R2 0
       26 RETURN                           R2 1

PROTO_7:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["Name"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+10]
       10 NAMECALL                         R1 R0 K3 ["GetChildren"]
       12 CALL                             R1 1 3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-4]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R1 K6 [table.insert]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R2
       11 MOVE                             R9 R7
       12 CALL                             R8 1 0
       13 FORGLOOP                         R3 2 ; [-4]
       15 RETURN                           R1 1

PROTO_9:
        0 JUMPIF                           R1 ; [+2]
        1 LOADN                            R2 0
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["getLocalBoundingBoxSize"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R3 R2 K1 ["X"]
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R1 K1 ["X"]
       14 GETTABLEKS                       R7 R1 K1 ["X"]
       16 DIVK                             R6 R7 K3 [2]
       17 DIVK                             R7 R3 K3 [2]
       18 ADD                              R5 R6 R7
       19 ADDK                             R4 R5 K2 [1]
       20 RETURN                           R4 1

PROTO_10:
        0 LOADK                            R4 K0 ["PVInstance"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R5 R0 K2 ["GetPivot"]
        8 CALL                             R5 1 1
        9 MUL                              R4 R1 R5
       10 NAMECALL                         R2 R0 K3 ["PivotTo"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["applyWorldTransform"]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R4 K3 [CFrame.new]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R5 K0 ["PVInstance"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["computeBesideSourceOffsetX"]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 GETIMPORT                        R7 K5 [CFrame.new]
       15 MOVE                             R8 R3
       16 LOADN                            R9 0
       17 LOADN                            R10 0
       18 CALL                             R7 3 1
       19 MUL                              R6 R1 R7
       20 NAMECALL                         R4 R0 K6 ["PivotTo"]
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["translate"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 GETUPVAL                         R8 2
        7 GETTABLE                         R7 R8 R1
        8 OR                               R6 R7 R1
        9 CALL                             R2 4 -1
       10 RETURN                           R2 -1

PROTO_14:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_15:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+18]
        7 GETIMPORT                        R1 K4 [string.find]
        9 GETIMPORT                        R2 K6 [string.lower]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 LOADK                            R3 K7 ["moderat"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+8]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K8 ["Enums"]
       19 GETTABLEKS                       R1 R1 K9 ["FailureReason"]
       21 GETTABLEKS                       R1 R1 K10 ["GenerationModerated"]
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K8 ["Enums"]
       27 GETTABLEKS                       R1 R1 K9 ["FailureReason"]
       29 GETTABLEKS                       R1 R1 K11 ["GenerationFailed"]
       31 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R7 R6
        1 JUMPIF                           R7 ; [+3]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["MAX_POLL_ATTEMPTS"]
        5 LOADN                            R8 0
        6 JUMPIFNOTLT                      R8 R7 ; [+125]
        8 ADDK                             R8 R8 K1 [1]
        9 MOVE                             R9 R0
       10 MOVE                             R10 R1
       11 CALL                             R9 1 1
       12 GETTABLEKS                       R10 R9 K2 ["ok"]
       14 JUMPIFNOTEQKB                    R10 FALSE ; [+42]
       16 GETTABLEKS                       R10 R9 K3 ["statusCode"]
       18 JUMPIFNOTEQKNIL                  R10 ; [+24]
       20 GETIMPORT                        R11 K5 [warn]
       22 LOADK                            R13 K6 ["[%*] %* transient poll failure: %*"]
       23 MOVE                             R15 R5
       24 MOVE                             R16 R1
       25 GETTABLEKS                       R18 R9 K7 ["errorMessage"]
       27 FASTCALL1                        TOSTRING R18 ; [+2]
       28 GETIMPORT                        R17 K9 [tostring]
       30 CALL                             R17 1 1
       31 NAMECALL                         R13 R13 K10 ["format"]
       33 CALL                             R13 4 1
       34 MOVE                             R12 R13
       35 CALL                             R11 1 0
       36 GETIMPORT                        R11 K13 [task.wait]
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R12 R12 K14 ["POLL_INTERVAL_SEC"]
       41 CALL                             R11 1 0
       42 JUMP                             ; [+88]
       43 GETIMPORT                        R11 K16 [error]
       45 GETTABLEKS                       R13 R9 K7 ["errorMessage"]
       47 JUMPIF                           R13 ; [+3]
       48 MOVE                             R13 R3
       49 MOVE                             R14 R4
       50 CALL                             R13 1 1
       51 FASTCALL1                        TOSTRING R13 ; [+2]
       52 GETIMPORT                        R12 K9 [tostring]
       54 CALL                             R12 1 1
       55 LOADN                            R13 0
       56 CALL                             R11 2 0
       57 GETTABLEKS                       R10 R9 K17 ["status"]
       59 JUMPIFNOTEQKS                    R10 K18 ["Completed"] ; [+30]
       61 MOVE                             R11 R2
       62 MOVE                             R12 R9
       63 CALL                             R11 1 1
       64 LOADB                            R13 0
       65 FASTCALL1                        TYPEOF R11 ; [+3]
       66 MOVE                             R15 R11
       67 GETIMPORT                        R14 K20 [typeof]
       69 CALL                             R14 1 1
       70 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+7]
       72 LENGTH                           R14 R11
       73 LOADN                            R15 0
       74 JUMPIFLT                         R15 R14 ; [+2]
       76 LOADB                            R13 0 +1
       77 LOADB                            R13 1
       78 LOADK                            R15 K22 ["%* status COMPLETED but result is missing"]
       79 MOVE                             R17 R5
       80 NAMECALL                         R15 R15 K10 ["format"]
       82 CALL                             R15 2 1
       83 MOVE                             R14 R15
       84 FASTCALL2                        ASSERT R13 R14 ; [+3]
       86 GETIMPORT                        R12 K24 [assert]
       88 CALL                             R12 2 0
       89 RETURN                           R11 1
       90 JUMPIFNOTEQKS                    R10 K25 ["Failed"] ; [+25]
       92 GETIMPORT                        R11 K5 [warn]
       94 LOADK                            R13 K26 ["[%*] %* failed at stage=%*"]
       95 MOVE                             R15 R5
       96 MOVE                             R16 R1
       97 GETTABLEKS                       R18 R9 K27 ["currentStage"]
       99 FASTCALL1                        TOSTRING R18 ; [+2]
      100 GETIMPORT                        R17 K9 [tostring]
      102 CALL                             R17 1 1
      103 NAMECALL                         R13 R13 K10 ["format"]
      105 CALL                             R13 4 1
      106 MOVE                             R12 R13
      107 CALL                             R11 1 0
      108 GETIMPORT                        R11 K16 [error]
      110 MOVE                             R12 R3
      111 MOVE                             R13 R4
      112 CALL                             R12 1 1
      113 LOADN                            R13 0
      114 CALL                             R11 2 0
      115 JUMP                             ; [+9]
      116 JUMPIFNOTEQKS                    R10 K28 ["Canceled"] ; [+8]
      118 GETIMPORT                        R11 K16 [error]
      120 MOVE                             R12 R3
      121 LOADK                            R13 K29 ["UserCancelled"]
      122 CALL                             R12 1 1
      123 LOADN                            R13 0
      124 CALL                             R11 2 0
      125 GETIMPORT                        R11 K13 [task.wait]
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R12 R12 K14 ["POLL_INTERVAL_SEC"]
      130 CALL                             R11 1 0
      131 JUMPBACK                         ; [-126]
      132 GETIMPORT                        R9 K16 [error]
      134 LOADK                            R11 K30 ["%* polling timed out after %* attempts"]
      135 MOVE                             R13 R5
      136 MOVE                             R14 R7
      137 NAMECALL                         R11 R11 K10 ["format"]
      139 CALL                             R11 3 1
      140 MOVE                             R10 R11
      141 LOADN                            R11 0
      142 CALL                             R9 2 0
      143 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R3 2
        7 CALL                             R0 3 2
        8 JUMPIF                           R0 ; [+13]
        9 GETIMPORT                        R2 K3 [warn]
       11 GETIMPORT                        R3 K6 [string.format]
       13 LOADK                            R4 K7 ["[GenerationUtils.runWithConcurrencyAsync] worker %d errored: %s"]
       14 GETUPVAL                         R5 2
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R7 R1
       17 GETIMPORT                        R6 K9 [tostring]
       19 CALL                             R6 1 1
       20 CALL                             R3 3 -1
       21 CALL                             R2 -1 0
       22 GETUPVAL                         R2 3
       23 ADDK                             R2 R2 K10 [1]
       24 SETUPVAL                         R2 3
       25 GETUPVAL                         R2 4
       26 NAMECALL                         R2 R2 K11 ["Fire"]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 5
       30 CALL                             R2 0 0
       31 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTLT                      R1 R0 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 ADDK                             R1 R1 K0 [1]
        7 SETUPVAL                         R1 0
        8 GETIMPORT                        R1 K3 [task.spawn]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_19:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 GETIMPORT                        R6 K3 [Instance.new]
        8 LOADK                            R7 K4 ["BindableEvent"]
        9 CALL                             R6 1 1
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          REF R5
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R7
       18 LOADN                            R10 1
       19 FASTCALL2                        MATH_MIN R1 R3 ; [+5]
       21 MOVE                             R12 R1
       22 MOVE                             R13 R3
       23 GETIMPORT                        R11 K7 [math.min]
       25 CALL                             R11 2 1
       26 MOVE                             R8 R11
       27 LOADN                            R9 1
       28 FORNPREP                         R8
       29 MOVE                             R11 R4
       30 JUMPIFNOTLT                      R3 R11 ; [+2]
       32 JUMP                             ; [+11]
       33 ADDK                             R4 R4 K8 [1]
       34 GETIMPORT                        R12 K11 [task.spawn]
       36 NEWCLOSURE                       R13 P1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R11
       40 CAPTURE                          REF R5
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 CALL                             R12 1 0
       44 FORNLOOP                         R8
       45 JUMPIFNOTLT                      R5 R3 ; [+7]
       47 GETTABLEKS                       R8 R6 K12 ["Event"]
       49 NAMECALL                         R8 R8 K13 ["Wait"]
       51 CALL                             R8 1 0
       52 JUMPBACK                         ; [-8]
       53 NAMECALL                         R8 R6 K14 ["Destroy"]
       55 CALL                             R8 1 0
       56 CLOSEUPVALS                      R4
       57 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 4
        6 LOADN                            R3 0
        7 LOADK                            R4 K0 [1.5707963267949]
        8 LOADK                            R5 K1 [3.14159265358979]
        9 LOADK                            R6 K2 [4.71238898038469]
       10 SETLIST                          R2 R3 4 [1]
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 MOVE                             R8 R2
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 MOVE                             R13 R2
       21 LOADNIL                          R14
       22 LOADNIL                          R15
       23 FORGPREP                         R13
       24 GETIMPORT                        R18 K5 [CFrame.Angles]
       26 MOVE                             R19 R7
       27 MOVE                             R20 R12
       28 MOVE                             R21 R17
       29 CALL                             R18 3 1
       30 GETTABLEKS                       R19 R18 K6 ["RightVector"]
       32 GETTABLEKS                       R20 R18 K7 ["UpVector"]
       34 GETTABLEKS                       R21 R18 K8 ["LookVector"]
       36 GETIMPORT                        R22 K11 [string.format]
       38 LOADK                            R23 K12 ["%d,%d,%d|%d,%d,%d|%d,%d,%d"]
       39 GETTABLEKS                       R25 R19 K13 ["X"]
       41 FASTCALL1                        MATH_ROUND R25 ; [+2]
       42 GETIMPORT                        R24 K16 [math.round]
       44 CALL                             R24 1 1
       45 GETTABLEKS                       R26 R19 K17 ["Y"]
       47 FASTCALL1                        MATH_ROUND R26 ; [+2]
       48 GETIMPORT                        R25 K16 [math.round]
       50 CALL                             R25 1 1
       51 GETTABLEKS                       R27 R19 K18 ["Z"]
       53 FASTCALL1                        MATH_ROUND R27 ; [+2]
       54 GETIMPORT                        R26 K16 [math.round]
       56 CALL                             R26 1 1
       57 GETTABLEKS                       R28 R20 K13 ["X"]
       59 FASTCALL1                        MATH_ROUND R28 ; [+2]
       60 GETIMPORT                        R27 K16 [math.round]
       62 CALL                             R27 1 1
       63 GETTABLEKS                       R29 R20 K17 ["Y"]
       65 FASTCALL1                        MATH_ROUND R29 ; [+2]
       66 GETIMPORT                        R28 K16 [math.round]
       68 CALL                             R28 1 1
       69 GETTABLEKS                       R30 R20 K18 ["Z"]
       71 FASTCALL1                        MATH_ROUND R30 ; [+2]
       72 GETIMPORT                        R29 K16 [math.round]
       74 CALL                             R29 1 1
       75 GETTABLEKS                       R31 R21 K13 ["X"]
       77 FASTCALL1                        MATH_ROUND R31 ; [+2]
       78 GETIMPORT                        R30 K16 [math.round]
       80 CALL                             R30 1 1
       81 GETTABLEKS                       R32 R21 K17 ["Y"]
       83 FASTCALL1                        MATH_ROUND R32 ; [+2]
       84 GETIMPORT                        R31 K16 [math.round]
       86 CALL                             R31 1 1
       87 GETTABLEKS                       R33 R21 K18 ["Z"]
       89 FASTCALL1                        MATH_ROUND R33 ; [+2]
       90 GETIMPORT                        R32 K16 [math.round]
       92 CALL                             R32 1 1
       93 CALL                             R22 10 1
       94 GETTABLE                         R23 R1 R22
       95 JUMPIF                           R23 ; [+9]
       96 LOADB                            R23 1
       97 SETTABLE                         R23 R1 R22
       98 FASTCALL2                        TABLE_INSERT R0 R18 ; [+5]
      100 MOVE                             R24 R0
      101 MOVE                             R25 R18
      102 GETIMPORT                        R23 K21 [table.insert]
      104 CALL                             R23 2 0
      105 FORGLOOP                         R13 2 ; [-82]
      107 FORGLOOP                         R8 2 ; [-88]
      109 FORGLOOP                         R3 2 ; [-94]
      111 RETURN                           R0 1

PROTO_21:
        0 LOADK                            R2 K0 [∞]
        1 NEWTABLE                         R3 0 0
        3 GETUPVAL                         R4 0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 MOVE                             R11 R1
        8 NAMECALL                         R9 R8 K1 ["VectorToWorldSpace"]
       10 CALL                             R9 2 1
       11 GETTABLEKS                       R12 R9 K2 ["X"]
       13 FASTCALL1                        MATH_ABS R12 ; [+2]
       14 GETIMPORT                        R11 K5 [math.abs]
       16 CALL                             R11 1 1
       17 GETTABLEKS                       R13 R9 K6 ["Y"]
       19 FASTCALL1                        MATH_ABS R13 ; [+2]
       20 GETIMPORT                        R12 K5 [math.abs]
       22 CALL                             R12 1 1
       23 GETTABLEKS                       R14 R9 K7 ["Z"]
       25 FASTCALL1                        MATH_ABS R14 ; [+2]
       26 GETIMPORT                        R13 K5 [math.abs]
       28 CALL                             R13 1 1
       29 FASTCALL                         VECTOR ; [+2]
       30 GETIMPORT                        R10 K10 [Vector3.new]
       32 CALL                             R10 3 1
       33 SUB                              R11 R10 R0
       34 MOVE                             R14 R11
       35 NAMECALL                         R12 R11 K11 ["Dot"]
       37 CALL                             R12 2 1
       38 SUBK                             R13 R2 K12 [0.0001]
       39 JUMPIFNOTLT                      R12 R13 ; [+9]
       41 MOVE                             R2 R12
       42 NEWTABLE                         R13 0 1
       44 MOVE                             R14 R8
       45 SETLIST                          R13 R14 1 [1]
       47 MOVE                             R3 R13
       48 JUMP                             ; [+10]
       49 ADDK                             R13 R2 K12 [0.0001]
       50 JUMPIFNOTLT                      R12 R13 ; [+8]
       52 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       54 MOVE                             R14 R3
       55 MOVE                             R15 R8
       56 GETIMPORT                        R13 K15 [table.insert]
       58 CALL                             R13 2 0
       59 FORGLOOP                         R4 2 ; [-53]
       61 MOVE                             R4 R3
       62 LOADNIL                          R5
       63 LOADNIL                          R6
       64 FORGPREP                         R4
       65 GETUPVAL                         R11 1
       66 LOADK                            R12 K16 [0.001]
       67 NAMECALL                         R9 R8 K17 ["FuzzyEq"]
       69 CALL                             R9 3 1
       70 JUMPIFNOT                        R9 ; [+1]
       71 RETURN                           R8 1
       72 FORGLOOP                         R4 2 ; [-8]
       74 GETTABLEN                        R4 R3 1
       75 RETURN                           R4 1

PROTO_22:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["resolveInsertAsync"]
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["resolveInsertAsync"]
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 GETUPVAL                         R5 3
       12 CALL                             R2 3 2
       13 MOVE                             R0 R2
       14 MOVE                             R1 R3
       15 JUMP                             ; [+13]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K1 ["publishAssetAsync"]
       19 GETUPVAL                         R3 3
       20 CALL                             R2 1 1
       21 MOVE                             R0 R2
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K2 ["loadAssetAsync"]
       25 GETTABLEKS                       R3 R0 K3 ["assetId"]
       27 CALL                             R2 1 1
       28 MOVE                             R1 R2
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K4 ["assembleResult"]
       32 MOVE                             R3 R1
       33 GETUPVAL                         R4 4
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 5
       36 JUMPIFNOT                        R3 ; [+3]
       37 GETUPVAL                         R3 5
       38 GETTABLEKS                       R3 R3 K5 ["processLoadedModel"]
       40 JUMPIFNOT                        R3 ; [+3]
       41 MOVE                             R4 R3
       42 MOVE                             R5 R2
       43 CALL                             R4 1 0
       44 LOADNIL                          R4
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K6 ["applyInPlace"]
       48 JUMPIFNOT                        R5 ; [+28]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K6 ["applyInPlace"]
       52 MOVE                             R6 R2
       53 DUPTABLE                         R7 K12 [{"sourceInstance", "sourceParent", "sourcePivotCFrame", "sourceLocalSize", "replaceInPlace"}]
       54 GETUPVAL                         R8 6
       55 SETTABLEKS                       R8 R7 K7 ["sourceInstance"]
       57 GETUPVAL                         R8 7
       58 SETTABLEKS                       R8 R7 K8 ["sourceParent"]
       60 GETUPVAL                         R8 8
       61 SETTABLEKS                       R8 R7 K9 ["sourcePivotCFrame"]
       63 GETUPVAL                         R8 9
       64 SETTABLEKS                       R8 R7 K10 ["sourceLocalSize"]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K11 ["replaceInPlace"]
       69 JUMPIFEQKB                       R9 TRUE ; [+2]
       71 LOADB                            R8 0 +1
       72 LOADB                            R8 1
       73 SETTABLEKS                       R8 R7 K11 ["replaceInPlace"]
       75 CALL                             R5 2 1
       76 MOVE                             R4 R5
       77 JUMPIFNOT                        R4 ; [+2]
       78 MOVE                             R2 R4
       79 JUMP                             ; [+69]
       80 GETUPVAL                         R5 4
       81 GETTABLEKS                       R5 R5 K11 ["replaceInPlace"]
       83 JUMPIFNOT                        R5 ; [+38]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K13 ["applyReplaceTransform"]
       87 MOVE                             R6 R2
       88 DUPTABLE                         R7 K15 [{"sourcePivotCFrame", "sourceMeshCFrame"}]
       89 GETUPVAL                         R8 8
       90 SETTABLEKS                       R8 R7 K9 ["sourcePivotCFrame"]
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K14 ["sourceMeshCFrame"]
       95 SETTABLEKS                       R8 R7 K14 ["sourceMeshCFrame"]
       97 CALL                             R5 2 0
       98 GETUPVAL                         R5 6
       99 GETTABLEKS                       R5 R5 K16 ["Name"]
      101 SETTABLEKS                       R5 R2 K16 ["Name"]
      103 GETUPVAL                         R5 6
      104 LOADNIL                          R6
      105 SETTABLEKS                       R6 R5 K17 ["Parent"]
      107 GETUPVAL                         R5 1
      108 GETUPVAL                         R6 6
      109 SETTABLEKS                       R6 R5 K18 ["replacedInstance"]
      111 GETUPVAL                         R5 1
      112 GETUPVAL                         R6 7
      113 SETTABLEKS                       R6 R5 K19 ["replacedInstanceParent"]
      115 GETUPVAL                         R5 7
      116 JUMPIF                           R5 ; [+2]
      117 GETIMPORT                        R5 K21 [workspace]
      119 SETTABLEKS                       R5 R2 K17 ["Parent"]
      121 JUMP                             ; [+27]
      122 GETUPVAL                         R5 0
      123 GETTABLEKS                       R5 R5 K22 ["placeBesideSource"]
      125 JUMPIF                           R5 ; [+3]
      126 GETUPVAL                         R5 10
      127 GETTABLEKS                       R5 R5 K23 ["placeAssetNextToSource"]
      129 MOVE                             R6 R5
      130 MOVE                             R7 R2
      131 GETUPVAL                         R8 8
      132 GETUPVAL                         R9 9
      133 CALL                             R6 3 0
      134 GETUPVAL                         R7 6
      135 GETTABLEKS                       R7 R7 K16 ["Name"]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K24 ["suffix"]
      140 CONCAT                           R6 R7 R8
      141 SETTABLEKS                       R6 R2 K16 ["Name"]
      143 GETUPVAL                         R6 7
      144 JUMPIF                           R6 ; [+2]
      145 GETIMPORT                        R6 K21 [workspace]
      147 SETTABLEKS                       R6 R2 K17 ["Parent"]
      149 GETUPVAL                         R5 1
      150 GETUPVAL                         R6 11
      151 GETTABLEKS                       R6 R6 K25 ["captureAIGeneratedMarks"]
      153 MOVE                             R7 R2
      154 CALL                             R6 1 1
      155 SETTABLEKS                       R6 R5 K26 ["priorAIMarks"]
      157 GETUPVAL                         R7 12
      158 GETTABLEKS                       R7 R7 K27 ["getUniqueTag"]
      160 GETUPVAL                         R8 0
      161 GETTABLEKS                       R8 R8 K28 ["tagKind"]
      163 GETUPVAL                         R9 13
      164 CALL                             R7 2 -1
      165 NAMECALL                         R5 R2 K29 ["AddTag"]
      167 CALL                             R5 -1 0
      168 GETUPVAL                         R5 11
      169 GETTABLEKS                       R5 R5 K30 ["markAsAIGeneratedAsset"]
      171 MOVE                             R6 R2
      172 GETTABLEKS                       R7 R0 K31 ["generationId"]
      174 GETUPVAL                         R8 0
      175 GETTABLEKS                       R8 R8 K32 ["generationType"]
      177 CALL                             R5 3 0
      178 GETUPVAL                         R5 1
      179 SETTABLEKS                       R2 R5 K33 ["loadedModel"]
      181 GETUPVAL                         R5 4
      182 GETTABLEKS                       R5 R5 K34 ["selectInserted"]
      184 JUMPIFNOTEQKB                    R5 FALSE ; [+8]
      186 GETUPVAL                         R5 4
      187 GETTABLEKS                       R5 R5 K11 ["replaceInPlace"]
      189 JUMPIFNOTEQKB                    R5 TRUE ; [+14]
      191 GETUPVAL                         R5 14
      192 JUMPIFNOT                        R5 ; [+11]
      193 GETUPVAL                         R5 15
      194 GETTABLEKS                       R5 R5 K35 ["selection"]
      196 GETTABLEKS                       R5 R5 K36 ["set"]
      198 NEWTABLE                         R6 0 1
      200 MOVE                             R7 R2
      201 SETLIST                          R6 R7 1 [1]
      203 CALL                             R5 1 0
      204 GETUPVAL                         R5 1
      205 GETTABLEKS                       R5 R5 K37 ["previewAssets"]
      207 JUMPIFNOT                        R5 ; [+7]
      208 NAMECALL                         R6 R5 K38 ["Destroy"]
      210 CALL                             R6 1 0
      211 GETUPVAL                         R6 1
      212 LOADNIL                          R7
      213 SETTABLEKS                       R7 R6 K37 ["previewAssets"]
      215 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["%* failed (requestId=%*, generationId=%*): %*\n%*"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["opName"]
        6 GETUPVAL                         R6 1
        7 GETUPVAL                         R7 2
        8 MOVE                             R8 R0
        9 GETIMPORT                        R9 K6 [debug.traceback]
       11 CALL                             R9 0 1
       12 NAMECALL                         R3 R3 K7 ["format"]
       14 CALL                             R3 6 1
       15 MOVE                             R2 R3
       16 CALL                             R1 1 0
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K9 [tostring]
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R5 R0 K0 ["requestId"]
        2 GETTABLEKS                       R6 R2 K1 ["getGenerationSession"]
        4 MOVE                             R7 R5
        5 CALL                             R6 1 1
        6 GETTABLEKS                       R7 R6 K2 ["generationId"]
        8 FASTCALL1                        TYPEOF R7 ; [+3]
        9 MOVE                             R11 R7
       10 GETIMPORT                        R10 K4 [typeof]
       12 CALL                             R10 1 1
       13 JUMPIFEQKS                       R10 K5 ["string"] ; [+2]
       15 LOADB                            R9 0 +1
       16 LOADB                            R9 1
       17 FASTCALL2K                       ASSERT R9 K6 ; [+4]
       19 LOADK                            R10 K6 ["generationId not found in session"]
       20 GETIMPORT                        R8 K8 [assert]
       22 CALL                             R8 2 0
       23 GETTABLEKS                       R8 R6 K9 ["sourceInstance"]
       25 FASTCALL2K                       ASSERT R8 K10 ; [+5]
       27 MOVE                             R10 R8
       28 LOADK                            R11 K10 ["Source instance not found in session"]
       29 GETIMPORT                        R9 K8 [assert]
       31 CALL                             R9 2 0
       32 GETTABLEKS                       R9 R3 K11 ["requireService"]
       34 MOVE                             R10 R1
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R10 R8 K12 ["Parent"]
       38 GETTABLEKS                       R11 R3 K13 ["computeSourcePivot"]
       40 MOVE                             R12 R0
       41 MOVE                             R13 R8
       42 MOVE                             R14 R6
       43 CALL                             R11 3 1
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K14 ["getLocalBoundingBoxSize"]
       47 MOVE                             R13 R8
       48 CALL                             R12 1 1
       49 LOADB                            R13 0
       50 GETTABLEKS                       R14 R1 K15 ["selection"]
       52 GETTABLEKS                       R14 R14 K16 ["get"]
       54 CALL                             R14 0 3
       55 FORGPREP                         R14
       56 JUMPIFNOTEQ                      R18 R8 ; [+3]
       58 LOADB                            R13 1
       59 JUMP                             ; [+2]
       60 FORGLOOP                         R14 2 ; [-5]
       62 GETTABLEKS                       R14 R1 K17 ["recording"]
       64 LOADB                            R15 0
       65 JUMPIFNOT                        R14 ; [+13]
       66 GETTABLEKS                       R16 R14 K18 ["startRecording"]
       68 MOVE                             R17 R5
       69 LOADK                            R19 K19 ["%* %*"]
       70 GETTABLEKS                       R21 R3 K20 ["recordingLabel"]
       72 MOVE                             R22 R5
       73 NAMECALL                         R19 R19 K21 ["format"]
       75 CALL                             R19 3 1
       76 MOVE                             R18 R19
       77 CALL                             R16 2 1
       78 MOVE                             R15 R16
       79 LOADNIL                          R16
       80 GETIMPORT                        R17 K23 [xpcall]
       82 NEWCLOSURE                       R18 P0
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R12
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          VAL R5
       97 CAPTURE                          REF R13
       98 CAPTURE                          VAL R1
       99 NEWCLOSURE                       R19 P1
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R7
      103 CAPTURE                          REF R16
      104 CALL                             R17 2 0
      105 JUMPIFNOT                        R14 ; [+5]
      106 JUMPIFNOT                        R15 ; [+4]
      107 GETTABLEKS                       R17 R14 K24 ["endRecording"]
      109 MOVE                             R18 R5
      110 CALL                             R17 1 0
      111 JUMPIFEQKNIL                     R16 ; [+6]
      113 GETIMPORT                        R17 K26 [error]
      115 MOVE                             R18 R16
      116 LOADN                            R19 0
      117 CALL                             R17 2 0
      118 CLOSEUPVALS                      R13
      119 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+31]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 2
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K0 ["selection"]
       12 GETTABLEKS                       R1 R1 K1 ["set"]
       14 NEWTABLE                         R2 0 1
       16 MOVE                             R3 R0
       17 SETLIST                          R2 R3 1 [1]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 1
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K2 ["loadedModel"]
       24 GETUPVAL                         R1 1
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K3 ["reappliedTarget"]
       28 GETUPVAL                         R1 1
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K4 ["reappliedClone"]
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 4
       34 GETUPVAL                         R1 5
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R0 K5 ["Parent"]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K6 ["replacedInstanceParent"]
       41 SETTABLEKS                       R2 R1 K5 ["Parent"]
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K0 ["selection"]
       46 GETTABLEKS                       R2 R2 K1 ["set"]
       48 NEWTABLE                         R3 0 1
       50 MOVE                             R4 R1
       51 SETLIST                          R3 R4 1 [1]
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 1
       55 LOADNIL                          R3
       56 SETTABLEKS                       R3 R2 K2 ["loadedModel"]
       58 GETUPVAL                         R2 1
       59 LOADNIL                          R3
       60 SETTABLEKS                       R3 R2 K7 ["replacedInstance"]
       62 GETUPVAL                         R2 1
       63 LOADNIL                          R3
       64 SETTABLEKS                       R3 R2 K6 ["replacedInstanceParent"]
       66 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["%* failed (requestId=%*): %*\n%*"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["opName"]
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R0
        8 GETIMPORT                        R8 K6 [debug.traceback]
       10 CALL                             R8 0 1
       11 NAMECALL                         R3 R3 K7 ["format"]
       13 CALL                             R3 5 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K9 [tostring]
       20 CALL                             R1 1 1
       21 SETUPVAL                         R1 2
       22 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R4 R0 K0 ["requestId"]
        2 GETTABLEKS                       R5 R2 K1 ["getGenerationSession"]
        4 MOVE                             R6 R4
        5 CALL                             R5 1 1
        6 GETTABLEKS                       R6 R5 K2 ["replacedInstance"]
        8 GETTABLEKS                       R7 R5 K3 ["loadedModel"]
       10 GETTABLEKS                       R9 R5 K4 ["reappliedTarget"]
       12 JUMPIFEQKNIL                     R9 ; [+4]
       14 GETTABLEKS                       R8 R3 K5 ["revertInPlace"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R8
       18 JUMPIFNOTEQKNIL                  R8 ; [+7]
       20 JUMPIFEQKNIL                     R6 ; [+3]
       22 JUMPIFNOTEQKNIL                  R7 ; [+3]
       24 LOADB                            R9 0
       25 RETURN                           R9 1
       26 GETTABLEKS                       R9 R1 K6 ["recording"]
       28 LOADB                            R10 0
       29 JUMPIFNOT                        R9 ; [+13]
       30 GETTABLEKS                       R11 R9 K7 ["startRecording"]
       32 MOVE                             R12 R4
       33 LOADK                            R14 K8 ["%* %*"]
       34 GETTABLEKS                       R16 R3 K9 ["recordingLabel"]
       36 MOVE                             R17 R4
       37 NAMECALL                         R14 R14 K10 ["format"]
       39 CALL                             R14 3 1
       40 MOVE                             R13 R14
       41 CALL                             R11 2 1
       42 MOVE                             R10 R11
       43 LOADNIL                          R11
       44 LOADB                            R12 0
       45 GETIMPORT                        R13 K12 [xpcall]
       47 NEWCLOSURE                       R14 P0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R5
       50 CAPTURE                          REF R12
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 NEWCLOSURE                       R15 P1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          REF R11
       58 CALL                             R13 2 0
       59 JUMPIFNOT                        R9 ; [+5]
       60 JUMPIFNOT                        R10 ; [+4]
       61 GETTABLEKS                       R13 R9 K13 ["endRecording"]
       63 MOVE                             R14 R4
       64 CALL                             R13 1 0
       65 JUMPIFEQKNIL                     R11 ; [+6]
       67 GETIMPORT                        R13 K15 [error]
       69 MOVE                             R14 R11
       70 LOADN                            R15 0
       71 CALL                             R13 2 0
       72 NOT                              R13 R12
       73 CLOSEUPVALS                      R11
       74 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Constants"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Gen3dTypes"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["GenerationSessions"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["HostSurface"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K4 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["Flags"]
       45 GETTABLEKS                       R5 R5 K10 ["getFFlagGen3dExportMeshAtOrigin"]
       47 CALL                             R4 1 1
       48 NEWTABLE                         R5 32 0
       50 DUPCLOSURE                       R6 K11 [PROTO_0]
       51 SETTABLEKS                       R6 R5 K12 ["getLocalBoundingBoxSize"]
       53 DUPCLOSURE                       R6 K13 [PROTO_1]
       54 DUPCLOSURE                       R7 K14 [PROTO_2]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R7 R5 K15 ["exportMeshToGlbAsync"]
       58 DUPCLOSURE                       R7 K16 [PROTO_3]
       59 SETTABLEKS                       R7 R5 K17 ["cloneAsArchivable"]
       61 DUPCLOSURE                       R7 K18 [PROTO_4]
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R7 R5 K19 ["exportInstanceToGlbAsync"]
       65 DUPCLOSURE                       R7 K20 [PROTO_5]
       66 SETTABLEKS                       R7 R5 K21 ["resolveSingleMeshPart"]
       68 DUPCLOSURE                       R7 K22 [PROTO_6]
       69 SETTABLEKS                       R7 R5 K23 ["isMultiMeshModel"]
       71 LOADK                            R7 K24 ["world"]
       72 SETTABLEKS                       R7 R5 K25 ["WORLD_WRAPPER_NAME"]
       74 NEWTABLE                         R7 2 0
       76 LOADB                            R8 1
       77 SETTABLEKS                       R8 R7 K26 ["Roblox Generated Object"]
       79 GETTABLEKS                       R8 R5 K25 ["WORLD_WRAPPER_NAME"]
       81 LOADB                            R9 1
       82 SETTABLE                         R9 R7 R8
       83 DUPCLOSURE                       R8 K27 [PROTO_8]
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R8 R5 K28 ["collectFlattenedParts"]
       87 DUPCLOSURE                       R8 K29 [PROTO_9]
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R8 R5 K30 ["computeBesideSourceOffsetX"]
       91 DUPCLOSURE                       R8 K31 [PROTO_10]
       92 SETTABLEKS                       R8 R5 K32 ["applyWorldTransform"]
       94 DUPCLOSURE                       R8 K33 [PROTO_11]
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R8 R5 K34 ["translateAssetBy"]
       98 DUPCLOSURE                       R8 K35 [PROTO_12]
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R8 R5 K36 ["placeAssetNextToSource"]
      102 DUPCLOSURE                       R8 K37 [PROTO_14]
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R8 R5 K38 ["makeTranslator"]
      106 DUPCLOSURE                       R8 K39 [PROTO_15]
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R8 R5 K40 ["classifyFailureReason"]
      110 DUPCLOSURE                       R8 K41 [PROTO_16]
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R8 R5 K42 ["pollForCompletedStatus"]
      114 DUPCLOSURE                       R8 K43 [PROTO_19]
      115 SETTABLEKS                       R8 R5 K44 ["runWithConcurrencyAsync"]
      117 DUPCLOSURE                       R8 K45 [PROTO_20]
      118 MOVE                             R9 R8
      119 CALL                             R9 0 1
      120 GETIMPORT                        R10 K48 [CFrame.Angles]
      122 LOADN                            R11 0
      123 LOADK                            R12 K49 [3.14159265358979]
      124 LOADN                            R13 0
      125 CALL                             R10 3 1
      126 DUPCLOSURE                       R11 K50 [PROTO_21]
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R10
      129 SETTABLEKS                       R11 R5 K51 ["guessAxisFlipCFrame"]
      131 DUPCLOSURE                       R11 K52 [PROTO_24]
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R1
      134 SETTABLEKS                       R11 R5 K53 ["insertGeneratedModelAsync"]
      136 DUPCLOSURE                       R11 K54 [PROTO_27]
      137 SETTABLEKS                       R11 R5 K55 ["revertInsertedModelAsync"]
      139 RETURN                           R5 1
