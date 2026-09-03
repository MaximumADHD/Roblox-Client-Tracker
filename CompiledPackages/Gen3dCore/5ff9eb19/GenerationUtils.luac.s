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
        0 NEWTABLE                         R1 1 0
        2 GETTABLEKS                       R2 R0 K0 ["Archivable"]
        4 SETTABLE                         R2 R1 R0
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R0 K0 ["Archivable"]
        8 NAMECALL                         R2 R0 K1 ["GetDescendants"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K0 ["Archivable"]
       14 SETTABLE                         R7 R1 R6
       15 LOADB                            R7 1
       16 SETTABLEKS                       R7 R6 K0 ["Archivable"]
       18 FORGLOOP                         R2 2 ; [-7]
       20 NAMECALL                         R2 R0 K2 ["Clone"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R1
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 SETTABLEKS                       R7 R6 K0 ["Archivable"]
       29 FORGLOOP                         R3 2 ; [-3]
       31 RETURN                           R2 1

PROTO_4:
        0 JUMPIF                           R2 ; [+1]
        1 JUMPIFNOT                        R3 ; [+5]
        2 LOADK                            R6 K0 ["PVInstance"]
        3 NAMECALL                         R4 R0 K1 ["IsA"]
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+5]
        7 MOVE                             R4 R1
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 LOADN                            R5 1
       11 RETURN                           R4 2
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R0
       14 CALL                             R4 1 1
       15 JUMPIF                           R4 ; [+5]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R0
       18 CALL                             R5 1 1
       19 LOADN                            R6 1
       20 RETURN                           R5 2
       21 JUMPIFNOT                        R2 ; [+9]
       22 NAMECALL                         R5 R4 K2 ["GetPivot"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R9 R5 K3 ["Position"]
       27 SUB                              R8 R5 R9
       28 NAMECALL                         R6 R4 K4 ["PivotTo"]
       30 CALL                             R6 2 0
       31 LOADN                            R5 1
       32 JUMPIFNOT                        R3 ; [+42]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K5 ["getLocalBoundingBoxSize"]
       36 MOVE                             R7 R4
       37 CALL                             R6 1 1
       38 JUMPIFNOT                        R6 ; [+36]
       39 GETTABLEKS                       R8 R6 K6 ["X"]
       41 GETTABLEKS                       R9 R6 K7 ["Y"]
       43 GETTABLEKS                       R10 R6 K8 ["Z"]
       45 FASTCALL                         MATH_MAX ; [+2]
       46 GETIMPORT                        R7 K11 [math.max]
       48 CALL                             R7 3 1
       49 LOADN                            R8 0
       50 JUMPIFNOTLE                      R7 R8 ; [+3]
       52 LOADN                            R5 1
       53 JUMP                             ; [+1]
       54 DIVRK                            R5 K12 [2] R7
       55 LOADK                            R9 K13 ["Model"]
       56 NAMECALL                         R7 R4 K1 ["IsA"]
       58 CALL                             R7 2 1
       59 JUMPIFNOT                        R7 ; [+5]
       60 MOVE                             R9 R5
       61 NAMECALL                         R7 R4 K14 ["ScaleTo"]
       63 CALL                             R7 2 0
       64 JUMP                             ; [+10]
       65 LOADK                            R9 K15 ["BasePart"]
       66 NAMECALL                         R7 R4 K1 ["IsA"]
       68 CALL                             R7 2 1
       69 JUMPIFNOT                        R7 ; [+5]
       70 GETTABLEKS                       R7 R4 K16 ["Size"]
       72 MUL                              R7 R7 R5
       73 SETTABLEKS                       R7 R4 K16 ["Size"]
       75 GETIMPORT                        R6 K18 [pcall]
       77 MOVE                             R7 R1
       78 MOVE                             R8 R4
       79 CALL                             R6 2 2
       80 NAMECALL                         R8 R4 K19 ["Destroy"]
       82 CALL                             R8 1 0
       83 JUMPIF                           R6 ; [+5]
       84 GETIMPORT                        R8 K21 [error]
       86 MOVE                             R9 R7
       87 LOADN                            R10 0
       88 CALL                             R8 2 0
       89 MOVE                             R8 R7
       90 MOVE                             R9 R5
       91 RETURN                           R8 2

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
        6 GETIMPORT                        R5 K4 [CFrame.new]
        8 MOVE                             R6 R1
        9 CALL                             R5 1 1
       10 NAMECALL                         R6 R0 K5 ["GetPivot"]
       12 CALL                             R6 1 1
       13 MUL                              R4 R5 R6
       14 NAMECALL                         R2 R0 K6 ["PivotTo"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K6 ["replaceInPlace"]
       47 JUMPIFNOT                        R4 ; [+32]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K7 ["applyReplaceTransform"]
       51 MOVE                             R5 R2
       52 DUPTABLE                         R6 K10 [{"sourcePivotCFrame", "sourceMeshCFrame"}]
       53 GETUPVAL                         R7 6
       54 SETTABLEKS                       R7 R6 K8 ["sourcePivotCFrame"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K9 ["sourceMeshCFrame"]
       59 SETTABLEKS                       R7 R6 K9 ["sourceMeshCFrame"]
       61 CALL                             R4 2 0
       62 GETUPVAL                         R4 7
       63 GETTABLEKS                       R4 R4 K11 ["Name"]
       65 SETTABLEKS                       R4 R2 K11 ["Name"]
       67 GETUPVAL                         R4 7
       68 LOADNIL                          R5
       69 SETTABLEKS                       R5 R4 K12 ["Parent"]
       71 GETUPVAL                         R4 1
       72 GETUPVAL                         R5 7
       73 SETTABLEKS                       R5 R4 K13 ["replacedInstance"]
       75 GETUPVAL                         R4 1
       76 GETUPVAL                         R5 8
       77 SETTABLEKS                       R5 R4 K14 ["replacedInstanceParent"]
       79 JUMP                             ; [+21]
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K15 ["placeBesideSource"]
       83 JUMPIF                           R4 ; [+3]
       84 GETUPVAL                         R4 9
       85 GETTABLEKS                       R4 R4 K16 ["placeAssetNextToSource"]
       87 MOVE                             R5 R4
       88 MOVE                             R6 R2
       89 GETUPVAL                         R7 6
       90 GETUPVAL                         R8 10
       91 CALL                             R5 3 0
       92 GETUPVAL                         R6 7
       93 GETTABLEKS                       R6 R6 K11 ["Name"]
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R7 R7 K17 ["suffix"]
       98 CONCAT                           R5 R6 R7
       99 SETTABLEKS                       R5 R2 K11 ["Name"]
      101 GETUPVAL                         R4 8
      102 JUMPIF                           R4 ; [+2]
      103 GETIMPORT                        R4 K19 [workspace]
      105 SETTABLEKS                       R4 R2 K12 ["Parent"]
      107 GETUPVAL                         R6 11
      108 GETTABLEKS                       R6 R6 K20 ["getUniqueTag"]
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R7 R7 K21 ["tagKind"]
      113 GETUPVAL                         R8 12
      114 CALL                             R6 2 -1
      115 NAMECALL                         R4 R2 K22 ["AddTag"]
      117 CALL                             R4 -1 0
      118 GETUPVAL                         R4 13
      119 GETTABLEKS                       R4 R4 K23 ["markAsAIGeneratedAsset"]
      121 MOVE                             R5 R2
      122 GETTABLEKS                       R6 R0 K24 ["generationId"]
      124 GETUPVAL                         R7 0
      125 GETTABLEKS                       R7 R7 K25 ["generationType"]
      127 CALL                             R4 3 0
      128 GETUPVAL                         R4 1
      129 SETTABLEKS                       R2 R4 K26 ["loadedModel"]
      131 GETUPVAL                         R4 14
      132 GETTABLEKS                       R4 R4 K27 ["selection"]
      134 GETTABLEKS                       R4 R4 K28 ["set"]
      136 NEWTABLE                         R5 0 1
      138 MOVE                             R6 R2
      139 SETLIST                          R5 R6 1 [1]
      141 CALL                             R4 1 0
      142 GETUPVAL                         R4 1
      143 GETTABLEKS                       R4 R4 K29 ["previewAssets"]
      145 JUMPIFNOT                        R4 ; [+7]
      146 NAMECALL                         R5 R4 K30 ["Destroy"]
      148 CALL                             R5 1 0
      149 GETUPVAL                         R5 1
      150 LOADNIL                          R6
      151 SETTABLEKS                       R6 R5 K29 ["previewAssets"]
      153 RETURN                           R0 0

PROTO_22:
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
       49 GETTABLEKS                       R13 R1 K15 ["recording"]
       51 LOADB                            R14 0
       52 JUMPIFNOT                        R13 ; [+13]
       53 GETTABLEKS                       R15 R13 K16 ["startRecording"]
       55 MOVE                             R16 R5
       56 LOADK                            R18 K17 ["%* %*"]
       57 GETTABLEKS                       R20 R3 K18 ["recordingLabel"]
       59 MOVE                             R21 R5
       60 NAMECALL                         R18 R18 K19 ["format"]
       62 CALL                             R18 3 1
       63 MOVE                             R17 R18
       64 CALL                             R15 2 1
       65 MOVE                             R14 R15
       66 LOADNIL                          R15
       67 GETIMPORT                        R16 K21 [xpcall]
       69 NEWCLOSURE                       R17 P0
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R10
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R12
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 NEWCLOSURE                       R18 P1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R7
       89 CAPTURE                          REF R15
       90 CALL                             R16 2 0
       91 JUMPIFNOT                        R13 ; [+5]
       92 JUMPIFNOT                        R14 ; [+4]
       93 GETTABLEKS                       R16 R13 K22 ["endRecording"]
       95 MOVE                             R17 R5
       96 CALL                             R16 1 0
       97 JUMPIFEQKNIL                     R15 ; [+6]
       99 GETIMPORT                        R16 K24 [error]
      101 MOVE                             R17 R15
      102 LOADN                            R18 0
      103 CALL                             R16 2 0
      104 CLOSEUPVALS                      R15
      105 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["replacedInstanceParent"]
        8 SETTABLEKS                       R1 R0 K0 ["Parent"]
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K2 ["selection"]
       13 GETTABLEKS                       R0 R0 K3 ["set"]
       15 NEWTABLE                         R1 0 1
       17 GETUPVAL                         R2 1
       18 SETLIST                          R1 R2 1 [1]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 2
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K4 ["loadedModel"]
       25 GETUPVAL                         R0 2
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K5 ["replacedInstance"]
       29 GETUPVAL                         R0 2
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K1 ["replacedInstanceParent"]
       33 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETTABLEKS                       R4 R0 K0 ["requestId"]
        2 GETTABLEKS                       R5 R2 K1 ["getGenerationSession"]
        4 MOVE                             R6 R4
        5 CALL                             R5 1 1
        6 GETTABLEKS                       R6 R5 K2 ["replacedInstance"]
        8 GETTABLEKS                       R7 R5 K3 ["loadedModel"]
       10 JUMPIFEQKNIL                     R6 ; [+3]
       12 JUMPIFNOTEQKNIL                  R7 ; [+3]
       14 LOADB                            R8 0
       15 RETURN                           R8 1
       16 GETTABLEKS                       R8 R1 K4 ["recording"]
       18 LOADB                            R9 0
       19 JUMPIFNOT                        R8 ; [+13]
       20 GETTABLEKS                       R10 R8 K5 ["startRecording"]
       22 MOVE                             R11 R4
       23 LOADK                            R13 K6 ["%* %*"]
       24 GETTABLEKS                       R15 R3 K7 ["recordingLabel"]
       26 MOVE                             R16 R4
       27 NAMECALL                         R13 R13 K8 ["format"]
       29 CALL                             R13 3 1
       30 MOVE                             R12 R13
       31 CALL                             R10 2 1
       32 MOVE                             R9 R10
       33 LOADNIL                          R10
       34 GETIMPORT                        R11 K10 [xpcall]
       36 NEWCLOSURE                       R12 P0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R1
       41 NEWCLOSURE                       R13 P1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          REF R10
       45 CALL                             R11 2 0
       46 JUMPIFNOT                        R8 ; [+5]
       47 JUMPIFNOT                        R9 ; [+4]
       48 GETTABLEKS                       R11 R8 K11 ["endRecording"]
       50 MOVE                             R12 R4
       51 CALL                             R11 1 0
       52 JUMPIFEQKNIL                     R10 ; [+6]
       54 GETIMPORT                        R11 K13 [error]
       56 MOVE                             R12 R10
       57 LOADN                            R13 0
       58 CALL                             R11 2 0
       59 LOADB                            R11 1
       60 CLOSEUPVALS                      R10
       61 RETURN                           R11 1

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
       59 DUPCLOSURE                       R8 K17 [PROTO_4]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R8 R5 K18 ["exportInstanceToGlbAsync"]
       64 DUPCLOSURE                       R8 K19 [PROTO_5]
       65 SETTABLEKS                       R8 R5 K20 ["resolveSingleMeshPart"]
       67 DUPCLOSURE                       R8 K21 [PROTO_6]
       68 SETTABLEKS                       R8 R5 K22 ["isMultiMeshModel"]
       70 LOADK                            R8 K23 ["world"]
       71 SETTABLEKS                       R8 R5 K24 ["WORLD_WRAPPER_NAME"]
       73 NEWTABLE                         R8 2 0
       75 LOADB                            R9 1
       76 SETTABLEKS                       R9 R8 K25 ["Roblox Generated Object"]
       78 GETTABLEKS                       R9 R5 K24 ["WORLD_WRAPPER_NAME"]
       80 LOADB                            R10 1
       81 SETTABLE                         R10 R8 R9
       82 DUPCLOSURE                       R9 K26 [PROTO_8]
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R9 R5 K27 ["collectFlattenedParts"]
       86 DUPCLOSURE                       R9 K28 [PROTO_9]
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R9 R5 K29 ["computeBesideSourceOffsetX"]
       90 DUPCLOSURE                       R9 K30 [PROTO_10]
       91 SETTABLEKS                       R9 R5 K31 ["translateAssetBy"]
       93 DUPCLOSURE                       R9 K32 [PROTO_11]
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R9 R5 K33 ["placeAssetNextToSource"]
       97 DUPCLOSURE                       R9 K34 [PROTO_13]
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R9 R5 K35 ["makeTranslator"]
      101 DUPCLOSURE                       R9 K36 [PROTO_14]
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R9 R5 K37 ["classifyFailureReason"]
      105 DUPCLOSURE                       R9 K38 [PROTO_15]
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R9 R5 K39 ["pollForCompletedStatus"]
      109 DUPCLOSURE                       R9 K40 [PROTO_18]
      110 SETTABLEKS                       R9 R5 K41 ["runWithConcurrencyAsync"]
      112 DUPCLOSURE                       R9 K42 [PROTO_19]
      113 MOVE                             R10 R9
      114 CALL                             R10 0 1
      115 GETIMPORT                        R11 K45 [CFrame.Angles]
      117 LOADN                            R12 0
      118 LOADK                            R13 K46 [3.14159265358979]
      119 LOADN                            R14 0
      120 CALL                             R11 3 1
      121 DUPCLOSURE                       R12 K47 [PROTO_20]
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 SETTABLEKS                       R12 R5 K48 ["guessAxisFlipCFrame"]
      126 DUPCLOSURE                       R12 K49 [PROTO_23]
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R12 R5 K50 ["insertGeneratedModelAsync"]
      131 DUPCLOSURE                       R12 K51 [PROTO_26]
      132 SETTABLEKS                       R12 R5 K52 ["revertInsertedModelAsync"]
      134 RETURN                           R5 1
