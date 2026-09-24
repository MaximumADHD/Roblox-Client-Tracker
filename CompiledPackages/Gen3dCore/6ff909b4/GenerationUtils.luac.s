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
       28 JUMPIFNOT                        R2 ; [+25]
       29 GETUPVAL                         R6 1
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+13]
       32 LOADK                            R8 K3 ["BasePart"]
       33 NAMECALL                         R6 R5 K1 ["IsA"]
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+8]
       37 GETTABLEKS                       R6 R5 K4 ["CFrame"]
       39 GETTABLEKS                       R7 R5 K5 ["Position"]
       41 SUB                              R6 R6 R7
       42 SETTABLEKS                       R6 R5 K4 ["CFrame"]
       44 JUMP                             ; [+9]
       45 NAMECALL                         R6 R5 K6 ["GetPivot"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R10 R6 K5 ["Position"]
       50 SUB                              R9 R6 R10
       51 NAMECALL                         R7 R5 K7 ["PivotTo"]
       53 CALL                             R7 2 0
       54 LOADN                            R6 1
       55 JUMPIFNOT                        R3 ; [+42]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K8 ["getLocalBoundingBoxSize"]
       59 MOVE                             R8 R5
       60 CALL                             R7 1 1
       61 JUMPIFNOT                        R7 ; [+36]
       62 GETTABLEKS                       R9 R7 K9 ["X"]
       64 GETTABLEKS                       R10 R7 K10 ["Y"]
       66 GETTABLEKS                       R11 R7 K11 ["Z"]
       68 FASTCALL                         MATH_MAX ; [+2]
       69 GETIMPORT                        R8 K14 [math.max]
       71 CALL                             R8 3 1
       72 LOADN                            R9 0
       73 JUMPIFNOTLE                      R8 R9 ; [+3]
       75 LOADN                            R6 1
       76 JUMP                             ; [+1]
       77 DIVRK                            R6 K15 [2] R8
       78 LOADK                            R10 K16 ["Model"]
       79 NAMECALL                         R8 R5 K1 ["IsA"]
       81 CALL                             R8 2 1
       82 JUMPIFNOT                        R8 ; [+5]
       83 MOVE                             R10 R6
       84 NAMECALL                         R8 R5 K17 ["ScaleTo"]
       86 CALL                             R8 2 0
       87 JUMP                             ; [+10]
       88 LOADK                            R10 K3 ["BasePart"]
       89 NAMECALL                         R8 R5 K1 ["IsA"]
       91 CALL                             R8 2 1
       92 JUMPIFNOT                        R8 ; [+5]
       93 GETTABLEKS                       R8 R5 K18 ["Size"]
       95 MUL                              R8 R8 R6
       96 SETTABLEKS                       R8 R5 K18 ["Size"]
       98 GETIMPORT                        R7 K20 [pcall]
      100 MOVE                             R8 R1
      101 MOVE                             R9 R5
      102 CALL                             R7 2 2
      103 NAMECALL                         R9 R5 K21 ["Destroy"]
      105 CALL                             R9 1 0
      106 JUMPIF                           R7 ; [+5]
      107 GETIMPORT                        R9 K23 [error]
      109 MOVE                             R10 R8
      110 LOADN                            R11 0
      111 CALL                             R9 2 0
      112 MOVE                             R9 R8
      113 MOVE                             R10 R6
      114 RETURN                           R9 2

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
        0 LOADK                            R3 K0 ["PVInstance"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R4 R0 K2 ["GetPivot"]
        8 CALL                             R4 1 1
        9 GETIMPORT                        R5 K5 [CFrame.Angles]
       11 LOADN                            R6 0
       12 LOADK                            R7 K6 [3.14159265358979]
       13 LOADN                            R8 0
       14 CALL                             R5 3 1
       15 MUL                              R3 R4 R5
       16 NAMECALL                         R1 R0 K7 ["PivotTo"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_16:
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

PROTO_17:
        0 MOVE                             R7 R6
        1 JUMPIF                           R7 ; [+3]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["MAX_POLL_ATTEMPTS"]
        5 LOADN                            R8 0
        6 JUMPIFNOTLT                      R8 R7 ; [+122]
        8 ADDK                             R8 R8 K1 [1]
        9 MOVE                             R9 R0
       10 MOVE                             R10 R1
       11 CALL                             R9 1 1
       12 GETTABLEKS                       R10 R9 K2 ["ok"]
       14 JUMPIFNOTEQKB                    R10 FALSE ; [+41]
       16 GETTABLEKS                       R10 R9 K3 ["statusCode"]
       18 JUMPIFNOTEQKNIL                  R10 ; [+23]
       20 GETIMPORT                        R11 K5 [warn]
       22 LOADK                            R12 K6 ["[%*] %* transient poll failure: %*"]
       23 MOVE                             R14 R5
       24 MOVE                             R15 R1
       25 GETTABLEKS                       R17 R9 K7 ["errorMessage"]
       27 FASTCALL1                        TOSTRING R17 ; [+2]
       28 GETIMPORT                        R16 K9 [tostring]
       30 CALL                             R16 1 1
       31 NAMECALL                         R12 R12 K10 ["format"]
       33 CALL                             R12 4 1
       34 CALL                             R11 1 0
       35 GETIMPORT                        R11 K13 [task.wait]
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K14 ["POLL_INTERVAL_SEC"]
       40 CALL                             R11 1 0
       41 JUMP                             ; [+86]
       42 GETIMPORT                        R11 K16 [error]
       44 GETTABLEKS                       R13 R9 K7 ["errorMessage"]
       46 JUMPIF                           R13 ; [+3]
       47 MOVE                             R13 R3
       48 MOVE                             R14 R4
       49 CALL                             R13 1 1
       50 FASTCALL1                        TOSTRING R13 ; [+2]
       51 GETIMPORT                        R12 K9 [tostring]
       53 CALL                             R12 1 1
       54 LOADN                            R13 0
       55 CALL                             R11 2 0
       56 GETTABLEKS                       R10 R9 K17 ["status"]
       58 JUMPIFNOTEQKS                    R10 K18 ["Completed"] ; [+29]
       60 MOVE                             R11 R2
       61 MOVE                             R12 R9
       62 CALL                             R11 1 1
       63 LOADB                            R13 0
       64 FASTCALL1                        TYPEOF R11 ; [+3]
       65 MOVE                             R15 R11
       66 GETIMPORT                        R14 K20 [typeof]
       68 CALL                             R14 1 1
       69 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+7]
       71 LENGTH                           R14 R11
       72 LOADN                            R15 0
       73 JUMPIFLT                         R15 R14 ; [+2]
       75 LOADB                            R13 0 +1
       76 LOADB                            R13 1
       77 LOADK                            R14 K22 ["%* status COMPLETED but result is missing"]
       78 MOVE                             R16 R5
       79 NAMECALL                         R14 R14 K10 ["format"]
       81 CALL                             R14 2 1
       82 FASTCALL2                        ASSERT R13 R14 ; [+3]
       84 GETIMPORT                        R12 K24 [assert]
       86 CALL                             R12 2 0
       87 RETURN                           R11 1
       88 JUMPIFNOTEQKS                    R10 K25 ["Failed"] ; [+24]
       90 GETIMPORT                        R11 K5 [warn]
       92 LOADK                            R12 K26 ["[%*] %* failed at stage=%*"]
       93 MOVE                             R14 R5
       94 MOVE                             R15 R1
       95 GETTABLEKS                       R17 R9 K27 ["currentStage"]
       97 FASTCALL1                        TOSTRING R17 ; [+2]
       98 GETIMPORT                        R16 K9 [tostring]
      100 CALL                             R16 1 1
      101 NAMECALL                         R12 R12 K10 ["format"]
      103 CALL                             R12 4 1
      104 CALL                             R11 1 0
      105 GETIMPORT                        R11 K16 [error]
      107 MOVE                             R12 R3
      108 MOVE                             R13 R4
      109 CALL                             R12 1 1
      110 LOADN                            R13 0
      111 CALL                             R11 2 0
      112 JUMP                             ; [+9]
      113 JUMPIFNOTEQKS                    R10 K28 ["Canceled"] ; [+8]
      115 GETIMPORT                        R11 K16 [error]
      117 MOVE                             R12 R3
      118 LOADK                            R13 K29 ["UserCancelled"]
      119 CALL                             R12 1 1
      120 LOADN                            R13 0
      121 CALL                             R11 2 0
      122 GETIMPORT                        R11 K13 [task.wait]
      124 GETUPVAL                         R12 0
      125 GETTABLEKS                       R12 R12 K14 ["POLL_INTERVAL_SEC"]
      127 CALL                             R11 1 0
      128 JUMPBACK                         ; [-123]
      129 GETIMPORT                        R9 K16 [error]
      131 LOADK                            R10 K30 ["%* polling timed out after %* attempts"]
      132 MOVE                             R12 R5
      133 MOVE                             R13 R7
      134 NAMECALL                         R10 R10 K10 ["format"]
      136 CALL                             R10 3 1
      137 LOADN                            R11 0
      138 CALL                             R9 2 0
      139 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       79 JUMP                             ; [+85]
       80 GETUPVAL                         R5 4
       81 GETTABLEKS                       R5 R5 K11 ["replaceInPlace"]
       83 JUMPIFNOT                        R5 ; [+46]
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
      121 GETUPVAL                         R5 10
      122 CALL                             R5 0 1
      123 JUMPIFNOT                        R5 ; [+41]
      124 GETUPVAL                         R5 11
      125 GETTABLEKS                       R5 R5 K22 ["compensateImportRotation"]
      127 MOVE                             R6 R2
      128 CALL                             R5 1 0
      129 JUMP                             ; [+35]
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K23 ["placeBesideSource"]
      133 JUMPIF                           R5 ; [+3]
      134 GETUPVAL                         R5 11
      135 GETTABLEKS                       R5 R5 K24 ["placeAssetNextToSource"]
      137 MOVE                             R6 R5
      138 MOVE                             R7 R2
      139 GETUPVAL                         R8 8
      140 GETUPVAL                         R9 9
      141 CALL                             R6 3 0
      142 GETUPVAL                         R7 6
      143 GETTABLEKS                       R7 R7 K16 ["Name"]
      145 GETUPVAL                         R8 0
      146 GETTABLEKS                       R8 R8 K25 ["suffix"]
      148 CONCAT                           R6 R7 R8
      149 SETTABLEKS                       R6 R2 K16 ["Name"]
      151 GETUPVAL                         R6 7
      152 JUMPIF                           R6 ; [+2]
      153 GETIMPORT                        R6 K21 [workspace]
      155 SETTABLEKS                       R6 R2 K17 ["Parent"]
      157 GETUPVAL                         R6 10
      158 CALL                             R6 0 1
      159 JUMPIFNOT                        R6 ; [+5]
      160 GETUPVAL                         R6 11
      161 GETTABLEKS                       R6 R6 K22 ["compensateImportRotation"]
      163 MOVE                             R7 R2
      164 CALL                             R6 1 0
      165 GETUPVAL                         R5 1
      166 GETUPVAL                         R6 12
      167 GETTABLEKS                       R6 R6 K26 ["captureAIGeneratedMarks"]
      169 MOVE                             R7 R2
      170 CALL                             R6 1 1
      171 SETTABLEKS                       R6 R5 K27 ["priorAIMarks"]
      173 GETUPVAL                         R7 13
      174 GETTABLEKS                       R7 R7 K28 ["getUniqueTag"]
      176 GETUPVAL                         R8 0
      177 GETTABLEKS                       R8 R8 K29 ["tagKind"]
      179 GETUPVAL                         R9 14
      180 CALL                             R7 2 -1
      181 NAMECALL                         R5 R2 K30 ["AddTag"]
      183 CALL                             R5 -1 0
      184 GETUPVAL                         R5 12
      185 GETTABLEKS                       R5 R5 K31 ["markAsAIGeneratedAsset"]
      187 MOVE                             R6 R2
      188 GETTABLEKS                       R7 R0 K32 ["generationId"]
      190 GETUPVAL                         R8 0
      191 GETTABLEKS                       R8 R8 K33 ["generationType"]
      193 CALL                             R5 3 0
      194 GETUPVAL                         R5 1
      195 SETTABLEKS                       R2 R5 K34 ["loadedModel"]
      197 GETUPVAL                         R5 4
      198 GETTABLEKS                       R5 R5 K35 ["selectInserted"]
      200 JUMPIFNOTEQKB                    R5 FALSE ; [+8]
      202 GETUPVAL                         R5 4
      203 GETTABLEKS                       R5 R5 K11 ["replaceInPlace"]
      205 JUMPIFNOTEQKB                    R5 TRUE ; [+14]
      207 GETUPVAL                         R5 15
      208 JUMPIFNOT                        R5 ; [+11]
      209 GETUPVAL                         R5 16
      210 GETTABLEKS                       R5 R5 K36 ["selection"]
      212 GETTABLEKS                       R5 R5 K37 ["set"]
      214 NEWTABLE                         R6 0 1
      216 MOVE                             R7 R2
      217 SETLIST                          R6 R7 1 [1]
      219 CALL                             R5 1 0
      220 GETUPVAL                         R5 1
      221 GETTABLEKS                       R5 R5 K38 ["previewAssets"]
      223 JUMPIFNOT                        R5 ; [+7]
      224 NAMECALL                         R6 R5 K39 ["Destroy"]
      226 CALL                             R6 1 0
      227 GETUPVAL                         R6 1
      228 LOADNIL                          R7
      229 SETTABLEKS                       R7 R6 K38 ["previewAssets"]
      231 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["%* failed (requestId=%*, generationId=%*): %*\n%*"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["opName"]
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R6 2
        8 MOVE                             R7 R0
        9 GETIMPORT                        R8 K6 [debug.traceback]
       11 CALL                             R8 0 1
       12 NAMECALL                         R2 R2 K7 ["format"]
       14 CALL                             R2 6 1
       15 CALL                             R1 1 0
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K9 [tostring]
       20 CALL                             R1 1 1
       21 SETUPVAL                         R1 3
       22 RETURN                           R0 0

PROTO_23:
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
       65 JUMPIFNOT                        R14 ; [+12]
       66 GETTABLEKS                       R16 R14 K18 ["startRecording"]
       68 MOVE                             R17 R5
       69 LOADK                            R18 K19 ["%* %*"]
       70 GETTABLEKS                       R20 R3 K20 ["recordingLabel"]
       72 MOVE                             R21 R5
       73 NAMECALL                         R18 R18 K21 ["format"]
       75 CALL                             R18 3 1
       76 CALL                             R16 2 1
       77 MOVE                             R15 R16
       78 LOADNIL                          R16
       79 GETIMPORT                        R17 K23 [xpcall]
       81 NEWCLOSURE                       R18 P0
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R12
       92 CAPTURE                          UPVAL U1
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U2
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

PROTO_24:
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

PROTO_25:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["%* failed (requestId=%*): %*\n%*"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["opName"]
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 GETIMPORT                        R7 K6 [debug.traceback]
       10 CALL                             R7 0 1
       11 NAMECALL                         R2 R2 K7 ["format"]
       13 CALL                             R2 5 1
       14 CALL                             R1 1 0
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K9 [tostring]
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 2
       21 RETURN                           R0 0

PROTO_26:
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
       29 JUMPIFNOT                        R9 ; [+12]
       30 GETTABLEKS                       R11 R9 K7 ["startRecording"]
       32 MOVE                             R12 R4
       33 LOADK                            R13 K8 ["%* %*"]
       34 GETTABLEKS                       R15 R3 K9 ["recordingLabel"]
       36 MOVE                             R16 R4
       37 NAMECALL                         R13 R13 K10 ["format"]
       39 CALL                             R13 3 1
       40 CALL                             R11 2 1
       41 MOVE                             R10 R11
       42 LOADNIL                          R11
       43 LOADB                            R12 0
       44 GETIMPORT                        R13 K12 [xpcall]
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R5
       49 CAPTURE                          REF R12
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 NEWCLOSURE                       R15 P1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          REF R11
       57 CALL                             R13 2 0
       58 JUMPIFNOT                        R9 ; [+5]
       59 JUMPIFNOT                        R10 ; [+4]
       60 GETTABLEKS                       R13 R9 K13 ["endRecording"]
       62 MOVE                             R14 R4
       63 CALL                             R13 1 0
       64 JUMPIFEQKNIL                     R11 ; [+6]
       66 GETIMPORT                        R13 K15 [error]
       68 MOVE                             R14 R11
       69 LOADN                            R15 0
       70 CALL                             R13 2 0
       71 NOT                              R13 R12
       72 CLOSEUPVALS                      R11
       73 RETURN                           R13 1

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
       45 GETTABLEKS                       R5 R5 K10 ["getFFlagGen3dCompensateImportRotation"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K1 [require]
       50 GETIMPORT                        R6 K3 [script]
       52 GETTABLEKS                       R6 R6 K4 ["Parent"]
       54 GETTABLEKS                       R6 R6 K9 ["Flags"]
       56 GETTABLEKS                       R6 R6 K11 ["getFFlagGen3dExportMeshAtOrigin"]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K1 [require]
       61 GETIMPORT                        R7 K3 [script]
       63 GETTABLEKS                       R7 R7 K4 ["Parent"]
       65 GETTABLEKS                       R7 R7 K9 ["Flags"]
       67 GETTABLEKS                       R7 R7 K12 ["getFFlagGen3dExportOriginBasePartCFrameFix"]
       69 CALL                             R6 1 1
       70 NEWTABLE                         R7 32 0
       72 DUPCLOSURE                       R8 K13 [PROTO_0]
       73 SETTABLEKS                       R8 R7 K14 ["getLocalBoundingBoxSize"]
       75 DUPCLOSURE                       R8 K15 [PROTO_1]
       76 DUPCLOSURE                       R9 K16 [PROTO_2]
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R9 R7 K17 ["exportMeshToGlbAsync"]
       80 DUPCLOSURE                       R9 K18 [PROTO_3]
       81 SETTABLEKS                       R9 R7 K19 ["cloneAsArchivable"]
       83 DUPCLOSURE                       R9 K20 [PROTO_4]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R9 R7 K21 ["exportInstanceToGlbAsync"]
       88 DUPCLOSURE                       R9 K22 [PROTO_5]
       89 SETTABLEKS                       R9 R7 K23 ["resolveSingleMeshPart"]
       91 DUPCLOSURE                       R9 K24 [PROTO_6]
       92 SETTABLEKS                       R9 R7 K25 ["isMultiMeshModel"]
       94 LOADK                            R9 K26 ["world"]
       95 SETTABLEKS                       R9 R7 K27 ["WORLD_WRAPPER_NAME"]
       97 NEWTABLE                         R9 2 0
       99 LOADB                            R10 1
      100 SETTABLEKS                       R10 R9 K28 ["Roblox Generated Object"]
      102 GETTABLEKS                       R10 R7 K27 ["WORLD_WRAPPER_NAME"]
      104 LOADB                            R11 1
      105 SETTABLE                         R11 R9 R10
      106 DUPCLOSURE                       R10 K29 [PROTO_8]
      107 CAPTURE                          VAL R9
      108 SETTABLEKS                       R10 R7 K30 ["collectFlattenedParts"]
      110 DUPCLOSURE                       R10 K31 [PROTO_9]
      111 CAPTURE                          VAL R7
      112 SETTABLEKS                       R10 R7 K32 ["computeBesideSourceOffsetX"]
      114 DUPCLOSURE                       R10 K33 [PROTO_10]
      115 SETTABLEKS                       R10 R7 K34 ["applyWorldTransform"]
      117 DUPCLOSURE                       R10 K35 [PROTO_11]
      118 CAPTURE                          VAL R7
      119 SETTABLEKS                       R10 R7 K36 ["translateAssetBy"]
      121 DUPCLOSURE                       R10 K37 [PROTO_12]
      122 SETTABLEKS                       R10 R7 K38 ["compensateImportRotation"]
      124 DUPCLOSURE                       R10 K39 [PROTO_13]
      125 CAPTURE                          VAL R7
      126 SETTABLEKS                       R10 R7 K40 ["placeAssetNextToSource"]
      128 DUPCLOSURE                       R10 K41 [PROTO_15]
      129 CAPTURE                          VAL R3
      130 SETTABLEKS                       R10 R7 K42 ["makeTranslator"]
      132 DUPCLOSURE                       R10 K43 [PROTO_16]
      133 CAPTURE                          VAL R1
      134 SETTABLEKS                       R10 R7 K44 ["classifyFailureReason"]
      136 DUPCLOSURE                       R10 K45 [PROTO_17]
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R10 R7 K46 ["pollForCompletedStatus"]
      140 DUPCLOSURE                       R10 K47 [PROTO_20]
      141 SETTABLEKS                       R10 R7 K48 ["runWithConcurrencyAsync"]
      143 DUPCLOSURE                       R10 K49 [PROTO_23]
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R10 R7 K50 ["insertGeneratedModelAsync"]
      149 DUPCLOSURE                       R10 K51 [PROTO_26]
      150 SETTABLEKS                       R10 R7 K52 ["revertInsertedModelAsync"]
      152 RETURN                           R7 1
