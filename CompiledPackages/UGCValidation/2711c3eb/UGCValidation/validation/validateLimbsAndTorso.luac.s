PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["Name"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_1:
        0 LENGTH                           R3 R0
        1 LENGTH                           R4 R1
        2 JUMPIFEQ                         R3 R4 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETIMPORT                        R9 K1 [pairs]
       15 MOVE                             R10 R0
       16 CALL                             R9 1 3
       17 FORGPREP_NEXT                    R9
       18 GETTABLEKS                       R14 R13 K2 ["Name"]
       20 JUMPIFNOTEQ                      R14 R7 ; [+3]
       22 MOVE                             R8 R13
       23 JUMP                             ; [+3]
       24 FORGLOOP                         R9 2 ; [-7]
       26 LOADNIL                          R8
       27 JUMPIFNOT                        R8 ; [+4]
       28 GETTABLEKS                       R9 R8 K3 ["ClassName"]
       30 JUMPIFEQKS                       R9 K4 ["Folder"] ; [+3]
       32 LOADB                            R9 0
       33 RETURN                           R9 1
       34 FORGLOOP                         R3 2 ; [-22]
       36 LOADB                            R3 1
       37 RETURN                           R3 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["GetFullName"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [string.find]
        5 MOVE                             R4 R2
        6 MOVE                             R6 R1
        7 LOADK                            R7 K4 ["%."]
        8 CONCAT                           R5 R6 R7
        9 CALL                             R3 2 2
       10 AND                              R6 R3 R4
       11 FASTCALL1                        ASSERT R6 ; [+2]
       12 GETIMPORT                        R5 K6 [assert]
       14 CALL                             R5 1 0
       15 ADDK                             R7 R4 K7 [1]
       16 LENGTH                           R8 R2
       17 FASTCALL3                        STRING_SUB R2 R7 R8
       19 MOVE                             R6 R2
       20 GETIMPORT                        R5 K9 [string.sub]
       22 CALL                             R5 3 1
       23 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLE                         R9 R1 R7
        9 JUMPIFEQKNIL                     R9 ; [+4]
       11 GETTABLE                         R9 R1 R7
       12 JUMPIFEQ                         R9 R8 ; [+26]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K1 ["reportFailure"]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K2 ["ErrorType"]
       20 GETTABLEKS                       R10 R10 K3 ["validateLimbsAndTorso_FolderInfoMismatch"]
       22 LOADNIL                          R11
       23 MOVE                             R12 R2
       24 CALL                             R9 3 0
       25 LOADB                            R11 0
       26 NEWTABLE                         R12 0 1
       28 LOADK                            R14 K4 ["Attribute %* has different values in different children folders. You need to use the same value in all folders."]
       29 MOVE                             R16 R7
       30 NAMECALL                         R14 R14 K5 ["format"]
       32 CALL                             R14 2 1
       33 MOVE                             R13 R14
       34 SETLIST                          R12 R13 1 [1]
       36 NAMECALL                         R9 R3 K6 ["updateReasons"]
       38 CALL                             R9 3 0
       39 FORGLOOP                         R4 2 ; [-32]
       41 NAMECALL                         R4 R3 K7 ["getFinalResults"]
       43 CALL                             R4 1 -1
       44 RETURN                           R4 -1

PROTO_4:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [1] ; [+3]
        3 LOADB                            R3 1
        4 RETURN                           R3 1
        5 LOADNIL                          R3
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["new"]
        9 CALL                             R4 0 1
       10 MOVE                             R5 R1
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R10 R10 K2 ["FOLDER_NAMES"]
       17 GETTABLEKS                       R10 R10 K3 ["R6"]
       19 JUMPIFEQ                         R9 R10 ; [+89]
       21 GETIMPORT                        R11 K5 [pairs]
       23 MOVE                             R12 R0
       24 CALL                             R11 1 3
       25 FORGPREP_NEXT                    R11
       26 GETTABLEKS                       R16 R15 K6 ["Name"]
       28 JUMPIFNOTEQ                      R16 R9 ; [+3]
       30 MOVE                             R10 R15
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R11 2 ; [-7]
       34 LOADNIL                          R10
       35 FASTCALL1                        ASSERT R10 ; [+3]
       36 MOVE                             R12 R10
       37 GETIMPORT                        R11 K8 [assert]
       39 CALL                             R11 1 0
       40 NEWTABLE                         R11 0 0
       42 NAMECALL                         R12 R10 K9 ["GetDescendants"]
       44 CALL                             R12 1 3
       45 FORGPREP                         R12
       46 GETUPVAL                         R18 1
       47 GETTABLEKS                       R18 R18 K10 ["CONTENT_ID_FIELDS"]
       49 GETTABLEKS                       R19 R16 K11 ["ClassName"]
       51 GETTABLE                         R17 R18 R19
       52 JUMPIFNOT                        R17 ; [+35]
       53 MOVE                             R18 R17
       54 LOADNIL                          R19
       55 LOADNIL                          R20
       56 FORGPREP                         R18
       57 NAMECALL                         R27 R16 K12 ["GetFullName"]
       59 CALL                             R27 1 1
       60 GETIMPORT                        R28 K15 [string.find]
       62 MOVE                             R29 R27
       63 MOVE                             R31 R9
       64 LOADK                            R32 K16 ["%."]
       65 CONCAT                           R30 R31 R32
       66 CALL                             R28 2 2
       67 AND                              R31 R28 R29
       68 FASTCALL1                        ASSERT R31 ; [+2]
       69 GETIMPORT                        R30 K8 [assert]
       71 CALL                             R30 1 0
       72 ADDK                             R32 R29 K0 [1]
       73 LENGTH                           R33 R27
       74 FASTCALL3                        STRING_SUB R27 R32 R33
       76 MOVE                             R31 R27
       77 GETIMPORT                        R30 K18 [string.sub]
       79 CALL                             R30 3 1
       80 MOVE                             R24 R30
       81 LOADK                            R25 K19 ["."]
       82 MOVE                             R26 R22
       83 CONCAT                           R23 R24 R26
       84 GETTABLE                         R24 R16 R22
       85 SETTABLE                         R24 R11 R23
       86 FORGLOOP                         R18 2 ; [-30]
       88 FORGLOOP                         R12 2 ; [-43]
       90 JUMPIF                           R3 ; [+2]
       91 MOVE                             R3 R11
       92 JUMP                             ; [+16]
       93 GETUPVAL                         R14 2
       94 MOVE                             R15 R3
       95 MOVE                             R16 R11
       96 MOVE                             R17 R2
       97 CALL                             R14 3 -1
       98 NAMECALL                         R12 R4 K20 ["updateReasons"]
      100 CALL                             R12 -1 0
      101 GETUPVAL                         R14 2
      102 MOVE                             R15 R11
      103 MOVE                             R16 R3
      104 MOVE                             R17 R2
      105 CALL                             R14 3 -1
      106 NAMECALL                         R12 R4 K20 ["updateReasons"]
      108 CALL                             R12 -1 0
      109 FORGLOOP                         R5 2 ; [-96]
      111 NAMECALL                         R5 R4 K21 ["getFinalResults"]
      113 CALL                             R5 1 -1
      114 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 NAMECALL                         R5 R0 K1 ["GetChildren"]
        6 CALL                             R5 1 1
        7 LENGTH                           R4 R5
        8 LOADN                            R5 0
        9 JUMPIFNOTLT                      R5 R4 ; [+26]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["reportFailure"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["ErrorType"]
       17 GETTABLEKS                       R5 R5 K4 ["validateLimbsAndTorso_R6FolderHasChildren"]
       19 LOADNIL                          R6
       20 MOVE                             R7 R2
       21 CALL                             R4 3 0
       22 LOADB                            R6 0
       23 NEWTABLE                         R7 0 1
       25 GETIMPORT                        R8 K7 [string.format]
       27 LOADK                            R9 K8 ["Deprecated R6 folder for '%s' should be empty. You need to clear that folder and try again."]
       28 GETTABLEKS                       R10 R1 K9 ["Name"]
       30 CALL                             R8 2 -1
       31 SETLIST                          R7 R8 -1 [1]
       33 NAMECALL                         R4 R3 K10 ["updateReasons"]
       35 CALL                             R4 3 0
       36 GETUPVAL                         R6 2
       37 MOVE                             R7 R0
       38 MOVE                             R8 R2
       39 CALL                             R6 2 -1
       40 NAMECALL                         R4 R3 K10 ["updateReasons"]
       42 CALL                             R4 -1 0
       43 GETUPVAL                         R4 3
       44 CALL                             R4 0 1
       45 JUMPIFNOT                        R4 ; [+3]
       46 GETUPVAL                         R4 4
       47 CALL                             R4 0 1
       48 JUMPIF                           R4 ; [+15]
       49 GETUPVAL                         R6 5
       50 MOVE                             R7 R0
       51 MOVE                             R8 R1
       52 MOVE                             R9 R2
       53 CALL                             R6 3 -1
       54 NAMECALL                         R4 R3 K10 ["updateReasons"]
       56 CALL                             R4 -1 0
       57 GETUPVAL                         R6 6
       58 MOVE                             R7 R0
       59 MOVE                             R8 R2
       60 CALL                             R6 2 -1
       61 NAMECALL                         R4 R3 K10 ["updateReasons"]
       63 CALL                             R4 -1 0
       64 NAMECALL                         R4 R3 K11 ["getFinalResults"]
       66 CALL                             R4 1 -1
       67 RETURN                           R4 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["instances"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["instances required in validationContext for validateLimbsAndTorso"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K0 ["instances"]
       14 GETTABLEKS                       R4 R0 K4 ["assetTypeEnum"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       22 LOADK                            R4 K5 ["assetTypeEnum required in validationContext for validateLimbsAndTorso"]
       23 GETIMPORT                        R2 K3 [assert]
       25 CALL                             R2 2 0
       26 GETTABLEKS                       R2 R0 K6 ["requireAllFolders"]
       28 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       30 NEWTABLE                         R4 0 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["FOLDER_NAMES"]
       35 GETTABLEKS                       R5 R5 K8 ["R15ArtistIntent"]
       37 SETLIST                          R4 R5 1 [1]
       39 JUMPIFNOT                        R2 ; [+22]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K7 ["FOLDER_NAMES"]
       43 GETTABLEKS                       R7 R7 K9 ["R15Fixed"]
       45 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       47 MOVE                             R6 R4
       48 GETIMPORT                        R5 K12 [table.insert]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K7 ["FOLDER_NAMES"]
       54 GETTABLEKS                       R7 R7 K13 ["R6"]
       56 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       58 MOVE                             R6 R4
       59 GETIMPORT                        R5 K12 [table.insert]
       61 CALL                             R5 2 0
       62 GETUPVAL                         R5 1
       63 MOVE                             R6 R1
       64 MOVE                             R7 R4
       65 CALL                             R5 2 1
       66 JUMPIF                           R5 ; [+24]
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R5 R5 K14 ["reportFailure"]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K15 ["ErrorType"]
       73 GETTABLEKS                       R6 R6 K16 ["validateLimbsAndTorso_TopLevelFolders"]
       75 LOADNIL                          R7
       76 MOVE                             R8 R0
       77 CALL                             R5 3 0
       78 LOADB                            R5 0
       79 NEWTABLE                         R6 0 1
       81 LOADK                            R8 K17 ["Incorrect hierarchy for asset with the following missing folders: "]
       82 GETIMPORT                        R9 K19 [table.concat]
       84 MOVE                             R10 R4
       85 LOADK                            R11 K20 [", "]
       86 CALL                             R9 2 1
       87 CONCAT                           R7 R8 R9
       88 SETLIST                          R6 R7 1 [1]
       90 RETURN                           R5 2
       91 MOVE                             R5 R4
       92 LOADNIL                          R6
       93 LOADNIL                          R7
       94 FORGPREP                         R5
       95 GETIMPORT                        R11 K22 [pairs]
       97 MOVE                             R12 R1
       98 CALL                             R11 1 3
       99 FORGPREP_NEXT                    R11
      100 GETTABLEKS                       R16 R15 K23 ["Name"]
      102 JUMPIFNOTEQ                      R16 R9 ; [+3]
      104 MOVE                             R10 R15
      105 JUMP                             ; [+3]
      106 FORGLOOP                         R11 2 ; [-7]
      108 LOADNIL                          R10
      109 LOADNIL                          R11
      110 LOADNIL                          R12
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R13 R13 K7 ["FOLDER_NAMES"]
      114 GETTABLEKS                       R13 R13 K13 ["R6"]
      116 JUMPIFNOTEQ                      R9 R13 ; [+9]
      118 GETUPVAL                         R13 3
      119 MOVE                             R14 R10
      120 MOVE                             R15 R3
      121 MOVE                             R16 R0
      122 CALL                             R13 3 2
      123 MOVE                             R11 R13
      124 MOVE                             R12 R14
      125 JUMP                             ; [+11]
      126 GETUPVAL                         R13 4
      127 MOVE                             R14 R10
      128 GETUPVAL                         R15 5
      129 MOVE                             R16 R3
      130 MOVE                             R17 R9
      131 MOVE                             R18 R0
      132 CALL                             R15 3 1
      133 MOVE                             R16 R0
      134 CALL                             R13 3 2
      135 MOVE                             R11 R13
      136 MOVE                             R12 R14
      137 JUMPIF                           R11 ; [+1]
      138 RETURN                           R11 2
      139 FORGLOOP                         R5 2 ; [-45]
      141 GETUPVAL                         R5 6
      142 MOVE                             R6 R1
      143 MOVE                             R7 R4
      144 MOVE                             R8 R0
      145 CALL                             R5 3 -1
      146 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["validation"]
       21 GETTABLEKS                       R4 R4 K8 ["validateMeshPartBodyPart"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K7 ["validation"]
       28 GETTABLEKS                       R5 R5 K9 ["validateTags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K7 ["validation"]
       35 GETTABLEKS                       R6 R6 K10 ["validatePropertyRequirements"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K7 ["validation"]
       42 GETTABLEKS                       R7 R7 K11 ["validateAttributes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R0 K12 ["util"]
       49 GETTABLEKS                       R8 R8 K13 ["FailureReasonsAccumulator"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R9 R0 K12 ["util"]
       56 GETTABLEKS                       R9 R9 K14 ["createLimbsAndTorsoSchema"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R10 R0 K12 ["util"]
       63 GETTABLEKS                       R10 R10 K15 ["Types"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R11 R0 K16 ["flags"]
       70 GETTABLEKS                       R11 R11 K17 ["getFFlagUGCValidateMigrateSchemaProperties"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K4 [require]
       75 GETTABLEKS                       R12 R0 K16 ["flags"]
       77 GETTABLEKS                       R12 R12 K18 ["getFFlagUGCValidationCombineEntrypointResults"]
       79 CALL                             R11 1 1
       80 DUPCLOSURE                       R12 K19 [PROTO_0]
       81 DUPCLOSURE                       R13 K20 [PROTO_1]
       82 DUPCLOSURE                       R14 K21 [PROTO_2]
       83 DUPCLOSURE                       R15 K22 [PROTO_3]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R1
       86 DUPCLOSURE                       R16 K23 [PROTO_4]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R15
       90 DUPCLOSURE                       R17 K24 [PROTO_5]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 DUPCLOSURE                       R18 K25 [PROTO_6]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R16
      106 RETURN                           R18 1
