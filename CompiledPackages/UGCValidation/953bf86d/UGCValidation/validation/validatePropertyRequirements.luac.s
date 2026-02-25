PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["COMPARISON_METHODS"]
        3 GETTABLEKS                       R3 R4 K1 ["SMALLER"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+6]
        7 JUMPIFLT                         R0 R1 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["COMPARISON_METHODS"]
       15 GETTABLEKS                       R3 R4 K2 ["SMALLER_EQ"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+6]
       19 JUMPIFLE                         R0 R1 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K0 ["COMPARISON_METHODS"]
       27 GETTABLEKS                       R3 R4 K3 ["FUZZY_EQ"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+12]
       31 SUB                              R5 R0 R1
       32 FASTCALL1                        MATH_ABS R5 ; [+2]
       33 GETIMPORT                        R4 K6 [math.abs]
       35 CALL                             R4 1 1
       36 LOADK                            R5 K7 [1E-05]
       37 JUMPIFLE                         R4 R5 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 RETURN                           R3 1
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K0 ["COMPARISON_METHODS"]
       45 GETTABLEKS                       R3 R4 K8 ["EXACT_EQ"]
       47 JUMPIFNOTEQ                      R2 R3 ; [+6]
       49 JUMPIFEQ                         R0 R1 ; [+2]
       51 LOADB                            R3 0 +1
       52 LOADB                            R3 1
       53 RETURN                           R3 1
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R4 R5 K0 ["COMPARISON_METHODS"]
       57 GETTABLEKS                       R3 R4 K9 ["GREATER_EQ"]
       59 JUMPIFNOTEQ                      R2 R3 ; [+6]
       61 JUMPIFLE                         R1 R0 ; [+2]
       63 LOADB                            R3 0 +1
       64 LOADB                            R3 1
       65 RETURN                           R3 1
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R4 R5 K0 ["COMPARISON_METHODS"]
       69 GETTABLEKS                       R3 R4 K10 ["GREATER"]
       71 JUMPIFNOTEQ                      R2 R3 ; [+6]
       73 JUMPIFLT                         R1 R0 ; [+2]
       75 LOADB                            R3 0 +1
       76 LOADB                            R3 1
       77 RETURN                           R3 1
       78 GETIMPORT                        R3 K12 [error]
       80 LOADK                            R5 K13 ["Invalid comparitor method: "]
       81 MOVE                             R6 R2
       82 CONCAT                           R4 R5 R6
       83 CALL                             R3 1 0
       84 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["None"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+6]
        5 JUMPIFEQKNIL                     R0 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+34]
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K2 [typeof]
       17 CALL                             R3 1 1
       18 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+28]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["COMPARISON_METHODS"]
       23 GETTABLEKS                       R3 R4 K5 ["FOUND_IN"]
       25 JUMPIFNOTEQ                      R2 R3 ; [+21]
       27 LOADB                            R3 0
       28 MOVE                             R4 R1
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 MOVE                             R9 R3
       33 JUMPIF                           R9 ; [+9]
       34 GETUPVAL                         R9 3
       35 MOVE                             R10 R0
       36 MOVE                             R11 R8
       37 GETUPVAL                         R14 2
       38 GETTABLEKS                       R13 R14 K4 ["COMPARISON_METHODS"]
       40 GETTABLEKS                       R12 R13 K6 ["EXACT_EQ"]
       42 CALL                             R9 3 1
       43 MOVE                             R3 R9
       44 FORGLOOP                         R4 2 ; [-13]
       46 RETURN                           R3 1
       47 FASTCALL1                        TYPEOF R0 ; [+3]
       48 MOVE                             R4 R0
       49 GETIMPORT                        R3 K2 [typeof]
       51 CALL                             R3 1 1
       52 FASTCALL1                        TYPEOF R1 ; [+3]
       53 MOVE                             R5 R1
       54 GETIMPORT                        R4 K2 [typeof]
       56 CALL                             R4 1 1
       57 JUMPIFEQ                         R3 R4 ; [+3]
       59 LOADB                            R3 0
       60 RETURN                           R3 1
       61 FASTCALL1                        TYPEOF R1 ; [+3]
       62 MOVE                             R4 R1
       63 GETIMPORT                        R3 K2 [typeof]
       65 CALL                             R3 1 1
       66 JUMPIFNOTEQKS                    R3 K7 ["number"] ; [+7]
       68 GETUPVAL                         R3 4
       69 MOVE                             R4 R0
       70 MOVE                             R5 R1
       71 MOVE                             R6 R2
       72 CALL                             R3 3 -1
       73 RETURN                           R3 -1
       74 FASTCALL1                        TYPEOF R1 ; [+3]
       75 MOVE                             R4 R1
       76 GETIMPORT                        R3 K2 [typeof]
       78 CALL                             R3 1 1
       79 JUMPIFNOTEQKS                    R3 K8 ["Vector3"] ; [+25]
       81 GETUPVAL                         R3 4
       82 GETTABLEKS                       R4 R0 K9 ["X"]
       84 GETTABLEKS                       R5 R1 K9 ["X"]
       86 MOVE                             R6 R2
       87 CALL                             R3 3 1
       88 JUMPIFNOT                        R3 ; [+15]
       89 GETUPVAL                         R3 4
       90 GETTABLEKS                       R4 R0 K10 ["Y"]
       92 GETTABLEKS                       R5 R1 K10 ["Y"]
       94 MOVE                             R6 R2
       95 CALL                             R3 3 1
       96 JUMPIFNOT                        R3 ; [+7]
       97 GETUPVAL                         R3 4
       98 GETTABLEKS                       R4 R0 K11 ["Z"]
      100 GETTABLEKS                       R5 R1 K11 ["Z"]
      102 MOVE                             R6 R2
      103 CALL                             R3 3 1
      104 RETURN                           R3 1
      105 FASTCALL1                        TYPEOF R1 ; [+3]
      106 MOVE                             R4 R1
      107 GETIMPORT                        R3 K2 [typeof]
      109 CALL                             R3 1 1
      110 JUMPIFNOTEQKS                    R3 K12 ["Color3"] ; [+25]
      112 GETUPVAL                         R3 4
      113 GETTABLEKS                       R4 R0 K13 ["R"]
      115 GETTABLEKS                       R5 R1 K13 ["R"]
      117 MOVE                             R6 R2
      118 CALL                             R3 3 1
      119 JUMPIFNOT                        R3 ; [+15]
      120 GETUPVAL                         R3 4
      121 GETTABLEKS                       R4 R0 K14 ["G"]
      123 GETTABLEKS                       R5 R1 K14 ["G"]
      125 MOVE                             R6 R2
      126 CALL                             R3 3 1
      127 JUMPIFNOT                        R3 ; [+7]
      128 GETUPVAL                         R3 4
      129 GETTABLEKS                       R4 R0 K15 ["B"]
      131 GETTABLEKS                       R5 R1 K15 ["B"]
      133 MOVE                             R6 R2
      134 CALL                             R3 3 1
      135 RETURN                           R3 1
      136 JUMPIFEQ                         R0 R1 ; [+2]
      138 LOADB                            R3 0 +1
      139 LOADB                            R3 1
      140 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R3
        2 MOVE                             R8 R4
        3 MOVE                             R9 R5
        4 CALL                             R6 3 1
        5 JUMPIF                           R6 ; [+29]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K0 ["reportFailure"]
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R8 R9 K1 ["ErrorType"]
       12 GETTABLEKS                       R7 R8 K2 ["validateProperties_PropertyMismatch"]
       14 LOADNIL                          R8
       15 MOVE                             R9 R0
       16 CALL                             R6 3 0
       17 LOADB                            R6 0
       18 NEWTABLE                         R7 0 1
       20 GETIMPORT                        R8 K5 [string.format]
       22 LOADK                            R9 K6 ["Property %s of %s is invalid. Expected to be %s %s."]
       23 MOVE                             R10 R2
       24 NAMECALL                         R11 R1 K7 ["GetFullName"]
       26 CALL                             R11 1 1
       27 MOVE                             R12 R5
       28 GETUPVAL                         R13 2
       29 MOVE                             R14 R4
       30 CALL                             R13 1 -1
       31 CALL                             R8 -1 -1
       32 SETLIST                          R7 R8 -1 [1]
       34 RETURN                           R6 2
       35 LOADB                            R6 1
       36 RETURN                           R6 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["CFrame"] ; [+9]
        7 JUMPIFNOTEQKS                    R0 K3 ["PositionMagnitude"] ; [+7]
        9 LOADB                            R2 1
       10 GETTABLEKS                       R4 R1 K4 ["Position"]
       12 GETTABLEKS                       R3 R4 K5 ["Magnitude"]
       14 RETURN                           R2 2
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K1 [typeof]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K2 ["CFrame"] ; [+12]
       22 JUMPIFNOTEQKS                    R0 K6 ["Orientation"] ; [+10]
       24 LOADB                            R2 1
       25 NAMECALL                         R4 R1 K7 ["ToOrientation"]
       27 CALL                             R4 1 -1
       28 FASTCALL                         VECTOR ; [+2]
       29 GETIMPORT                        R3 K10 [Vector3.new]
       31 CALL                             R3 -1 1
       32 RETURN                           R2 2
       33 GETUPVAL                         R2 0
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+13]
       36 FASTCALL1                        TYPEOF R1 ; [+3]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K1 [typeof]
       40 CALL                             R2 1 1
       41 JUMPIFNOTEQKS                    R2 K2 ["CFrame"] ; [+7]
       43 JUMPIFNOTEQKS                    R0 K4 ["Position"] ; [+5]
       45 LOADB                            R2 1
       46 GETTABLEKS                       R3 R1 K4 ["Position"]
       48 RETURN                           R2 2
       49 LOADB                            R2 0
       50 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R5 R3
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+18]
        7 NEWTABLE                         R4 0 1
        9 NEWTABLE                         R5 0 4
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 MOVE                             R8 R3
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R10 R11 K3 ["COMPARISON_METHODS"]
       17 GETTABLEKS                       R9 R10 K4 ["FUZZY_EQ"]
       19 SETLIST                          R5 R6 4 [1]
       21 SETLIST                          R4 R5 1 [1]
       23 RETURN                           R4 1
       24 MOVE                             R4 R3
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R10 R11 K5 ["INCLUSION_METHODS"]
       31 GETTABLEKS                       R9 R10 K6 ["INCLUSION_LIST"]
       33 JUMPIFNOTEQ                      R7 R9 ; [+12]
       35 GETIMPORT                        R9 K8 [table.find]
       37 MOVE                             R10 R8
       38 MOVE                             R11 R0
       39 CALL                             R9 2 1
       40 JUMPIFNOTEQKNIL                  R9 ; [+22]
       42 NEWTABLE                         R9 0 0
       44 RETURN                           R9 1
       45 JUMP                             ; [+17]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K5 ["INCLUSION_METHODS"]
       49 GETTABLEKS                       R9 R10 K9 ["EXCLUSION_LIST"]
       51 JUMPIFNOTEQ                      R7 R9 ; [+11]
       53 GETIMPORT                        R9 K8 [table.find]
       55 MOVE                             R10 R8
       56 MOVE                             R11 R0
       57 CALL                             R9 2 1
       58 JUMPIFEQKNIL                     R9 ; [+4]
       60 NEWTABLE                         R9 0 0
       62 RETURN                           R9 1
       63 FORGLOOP                         R4 2 ; [-36]
       65 NEWTABLE                         R4 0 0
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R5 R8 K3 ["COMPARISON_METHODS"]
       70 LOADNIL                          R6
       71 LOADNIL                          R7
       72 FORGPREP                         R5
       73 GETTABLE                         R10 R3 R9
       74 JUMPIFEQKNIL                     R10 ; [+15]
       76 NEWTABLE                         R12 0 4
       78 MOVE                             R13 R1
       79 MOVE                             R14 R2
       80 GETTABLE                         R15 R3 R9
       81 MOVE                             R16 R9
       82 SETLIST                          R12 R13 4 [1]
       84 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       86 MOVE                             R11 R4
       87 GETIMPORT                        R10 K11 [table.insert]
       89 CALL                             R10 2 0
       90 FORGLOOP                         R5 2 ; [-18]
       92 LOADN                            R5 1
       93 GETTABLE                         R6 R3 R5
       94 JUMPIFEQKNIL                     R6 ; [+18]
       96 GETUPVAL                         R6 1
       97 MOVE                             R7 R0
       98 MOVE                             R8 R1
       99 MOVE                             R9 R2
      100 GETTABLE                         R10 R3 R5
      101 CALL                             R6 4 1
      102 GETIMPORT                        R7 K13 [table.move]
      104 MOVE                             R8 R6
      105 LOADN                            R9 1
      106 LENGTH                           R10 R6
      107 LENGTH                           R12 R4
      108 ADDK                             R11 R12 K14 [1]
      109 MOVE                             R12 R4
      110 CALL                             R7 5 0
      111 ADDK                             R5 R5 K14 [1]
      112 JUMPBACK                         ; [-20]
      113 MOVE                             R6 R3
      114 LOADNIL                          R7
      115 LOADNIL                          R8
      116 FORGPREP                         R6
      117 GETUPVAL                         R11 2
      118 MOVE                             R12 R9
      119 MOVE                             R13 R2
      120 CALL                             R11 2 2
      121 JUMPIFNOT                        R11 ; [+24]
      122 GETUPVAL                         R13 1
      123 MOVE                             R14 R0
      124 MOVE                             R15 R9
      125 MOVE                             R16 R12
      126 MOVE                             R17 R10
      127 CALL                             R13 4 1
      128 MOVE                             R14 R13
      129 LOADNIL                          R15
      130 LOADNIL                          R16
      131 FORGPREP                         R14
      132 MOVE                             R20 R1
      133 LOADK                            R21 K15 ["."]
      134 GETTABLEN                        R22 R18 1
      135 CONCAT                           R19 R20 R22
      136 SETTABLEN                        R19 R18 1
      137 FASTCALL2                        TABLE_INSERT R4 R18 ; [+5]
      139 MOVE                             R20 R4
      140 MOVE                             R21 R18
      141 GETIMPORT                        R19 K11 [table.insert]
      143 CALL                             R19 2 0
      144 FORGLOOP                         R14 2 ; [-13]
      146 FORGLOOP                         R6 2 ; [-30]
      148 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 GETTABLEKS                       R1 R2 K0 ["assetTypeEnum"]
        4 NAMECALL                         R3 R0 K1 ["GetDescendants"]
        6 CALL                             R3 1 1
        7 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        9 MOVE                             R5 R3
       10 MOVE                             R6 R0
       11 GETIMPORT                        R4 K4 [table.insert]
       13 CALL                             R4 2 0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K5 ["new"]
       17 CALL                             R4 0 1
       18 MOVE                             R5 R3
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETUPVAL                         R13 1
       23 GETTABLEKS                       R10 R13 K6 ["PROPERTIES"]
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 MOVE                             R17 R13
       29 NAMECALL                         R15 R9 K7 ["IsA"]
       31 CALL                             R15 2 1
       32 JUMPIFNOT                        R15 ; [+69]
       33 MOVE                             R15 R14
       34 LOADNIL                          R16
       35 LOADNIL                          R17
       36 FORGPREP                         R15
       37 GETIMPORT                        R20 K9 [pcall]
       39 NEWCLOSURE                       R21 P0
       40 CAPTURE                          VAL R9
       41 CAPTURE                          VAL R18
       42 CALL                             R20 1 2
       43 JUMPIF                           R20 ; [+28]
       44 GETUPVAL                         R23 2
       45 GETTABLEKS                       R22 R23 K10 ["reportFailure"]
       47 GETUPVAL                         R25 2
       48 GETTABLEKS                       R24 R25 K11 ["ErrorType"]
       50 GETTABLEKS                       R23 R24 K12 ["validateProperties_PropertyDoesNotExist"]
       52 LOADNIL                          R24
       53 MOVE                             R25 R2
       54 CALL                             R22 3 0
       55 LOADB                            R24 0
       56 NEWTABLE                         R25 0 1
       58 GETIMPORT                        R26 K15 [string.format]
       60 LOADK                            R27 K16 ["Property '%s' not found in '%s'"]
       61 MOVE                             R28 R18
       62 NAMECALL                         R29 R9 K17 ["GetFullName"]
       64 CALL                             R29 1 -1
       65 CALL                             R26 -1 -1
       66 SETLIST                          R25 R26 -1 [1]
       68 NAMECALL                         R22 R4 K18 ["updateReasons"]
       70 CALL                             R22 3 0
       71 JUMP                             ; [+28]
       72 GETUPVAL                         R22 3
       73 MOVE                             R23 R1
       74 MOVE                             R24 R18
       75 MOVE                             R25 R21
       76 MOVE                             R26 R19
       77 CALL                             R22 4 1
       78 MOVE                             R23 R22
       79 LOADNIL                          R24
       80 LOADNIL                          R25
       81 FORGPREP                         R23
       82 FASTCALL1                        TABLE_UNPACK R27 ; [+3]
       83 MOVE                             R29 R27
       84 GETIMPORT                        R28 K20 [table.unpack]
       86 CALL                             R28 1 4
       87 GETUPVAL                         R34 4
       88 MOVE                             R35 R2
       89 MOVE                             R36 R9
       90 MOVE                             R37 R28
       91 MOVE                             R38 R29
       92 MOVE                             R39 R30
       93 MOVE                             R40 R31
       94 CALL                             R34 6 -1
       95 NAMECALL                         R32 R4 K18 ["updateReasons"]
       97 CALL                             R32 -1 0
       98 FORGLOOP                         R23 2 ; [-17]
      100 FORGLOOP                         R15 2 ; [-64]
      102 FORGLOOP                         R10 2 ; [-75]
      104 FORGLOOP                         R5 2 ; [-83]
      106 NAMECALL                         R5 R4 K21 ["getFinalResults"]
      108 CALL                             R5 1 -1
      109 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Analytics"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Constants"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K8 ["util"]
       28 GETTABLEKS                       R5 R6 K9 ["Types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K8 ["util"]
       35 GETTABLEKS                       R6 R7 K10 ["valueToString"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K8 ["util"]
       42 GETTABLEKS                       R7 R8 K11 ["FailureReasonsAccumulator"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R0 K12 ["flags"]
       49 GETTABLEKS                       R8 R9 K13 ["getFFlagUGCValidateBindOffset"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K12 ["flags"]
       56 GETTABLEKS                       R9 R10 K14 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K15 [PROTO_0]
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R10 K16 [PROTO_1]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R9
       67 DUPCLOSURE                       R11 K17 [PROTO_2]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 DUPCLOSURE                       R12 K18 [PROTO_3]
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R13 K19 [PROTO_4]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R12
       77 DUPCLOSURE                       R14 K20 [PROTO_6]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R11
       83 RETURN                           R14 1
