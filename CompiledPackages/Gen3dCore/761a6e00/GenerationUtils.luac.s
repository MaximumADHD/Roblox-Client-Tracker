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
        0 LOADN                            R5 0
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["MAX_POLL_ATTEMPTS"]
        4 JUMPIFNOTLT                      R5 R6 ; [+83]
        6 ADDK                             R5 R5 K1 [1]
        7 MOVE                             R6 R0
        8 MOVE                             R7 R1
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R7 R6 K2 ["ok"]
       12 JUMPIF                           R7 ; [+17]
       13 GETIMPORT                        R7 K4 [error]
       15 MOVE                             R12 R2
       16 MOVE                             R13 R3
       17 CALL                             R12 1 1
       18 MOVE                             R9 R12
       19 LOADK                            R10 K5 [": "]
       20 GETTABLEKS                       R13 R6 K7 ["errorMessage"]
       22 ORK                              R12 R13 K6 ["unknown"]
       23 FASTCALL1                        TOSTRING R12 ; [+2]
       24 GETIMPORT                        R11 K9 [tostring]
       26 CALL                             R11 1 1
       27 CONCAT                           R8 R9 R11
       28 LOADN                            R9 0
       29 CALL                             R7 2 0
       30 GETTABLEKS                       R7 R6 K10 ["status"]
       32 JUMPIFNOTEQKS                    R7 K11 ["Completed"] ; [+29]
       34 GETTABLEKS                       R8 R6 K12 ["modelRbxmUrl"]
       36 LOADB                            R10 0
       37 FASTCALL1                        TYPEOF R8 ; [+3]
       38 MOVE                             R12 R8
       39 GETIMPORT                        R11 K14 [typeof]
       41 CALL                             R11 1 1
       42 JUMPIFNOTEQKS                    R11 K15 ["string"] ; [+7]
       44 LENGTH                           R11 R8
       45 LOADN                            R12 0
       46 JUMPIFLT                         R12 R11 ; [+2]
       48 LOADB                            R10 0 +1
       49 LOADB                            R10 1
       50 LOADK                            R12 K16 ["%* status COMPLETED but modelRbxmUrl is missing"]
       51 MOVE                             R14 R4
       52 NAMECALL                         R12 R12 K17 ["format"]
       54 CALL                             R12 2 1
       55 MOVE                             R11 R12
       56 FASTCALL2                        ASSERT R10 R11 ; [+3]
       58 GETIMPORT                        R9 K19 [assert]
       60 CALL                             R9 2 0
       61 RETURN                           R8 1
       62 JUMPIFNOTEQKS                    R7 K20 ["Failed"] ; [+9]
       64 GETIMPORT                        R8 K4 [error]
       66 MOVE                             R9 R2
       67 MOVE                             R10 R3
       68 CALL                             R9 1 1
       69 LOADN                            R10 0
       70 CALL                             R8 2 0
       71 JUMP                             ; [+9]
       72 JUMPIFNOTEQKS                    R7 K21 ["Canceled"] ; [+8]
       74 GETIMPORT                        R8 K4 [error]
       76 MOVE                             R9 R2
       77 LOADK                            R10 K22 ["UserCancelled"]
       78 CALL                             R9 1 1
       79 LOADN                            R10 0
       80 CALL                             R8 2 0
       81 GETIMPORT                        R8 K25 [task.wait]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K26 ["POLL_INTERVAL_SEC"]
       86 CALL                             R8 1 0
       87 JUMPBACK                         ; [-87]
       88 GETIMPORT                        R6 K4 [error]
       90 LOADK                            R8 K27 ["%* polling timed out after %* attempts"]
       91 MOVE                             R10 R4
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K0 ["MAX_POLL_ATTEMPTS"]
       95 NAMECALL                         R8 R8 K17 ["format"]
       97 CALL                             R8 3 1
       98 MOVE                             R7 R8
       99 LOADN                            R8 0
      100 CALL                             R6 2 0
      101 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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
       19 NEWTABLE                         R2 4 0
       21 DUPCLOSURE                       R3 K7 [PROTO_0]
       22 SETTABLEKS                       R3 R2 K8 ["getLocalBoundingBoxSize"]
       24 DUPCLOSURE                       R3 K9 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R3 R2 K10 ["pollForCompletedStatus"]
       28 DUPCLOSURE                       R3 K11 [PROTO_2]
       29 MOVE                             R4 R3
       30 CALL                             R4 0 1
       31 GETIMPORT                        R5 K14 [CFrame.Angles]
       33 LOADN                            R6 0
       34 LOADK                            R7 K15 [3.14159265358979]
       35 LOADN                            R8 0
       36 CALL                             R5 3 1
       37 DUPCLOSURE                       R6 K16 [PROTO_3]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R6 R2 K17 ["guessAxisFlipCFrame"]
       42 RETURN                           R2 1
