PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_data"]
        2 GETTABLEKS                       R3 R0 K1 ["_head"]
        4 SETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R2 R0 K2 ["_tail"]
        7 LOADN                            R3 1
        8 JUMPIFNOTLT                      R2 R3 ; [+6]
       10 GETTABLEKS                       R2 R0 K1 ["_head"]
       12 SETTABLEKS                       R2 R0 K2 ["_tail"]
       14 JUMP                             ; [+20]
       15 GETTABLEKS                       R2 R0 K2 ["_tail"]
       17 GETTABLEKS                       R3 R0 K1 ["_head"]
       19 JUMPIFNOTEQ                      R2 R3 ; [+15]
       21 GETTABLEKS                       R2 R0 K2 ["_tail"]
       23 ADDK                             R2 R2 K3 [1]
       24 SETTABLEKS                       R2 R0 K2 ["_tail"]
       26 GETTABLEKS                       R2 R0 K2 ["_tail"]
       28 GETTABLEKS                       R3 R0 K4 ["_maxSize"]
       30 JUMPIFNOTLT                      R3 R2 ; [+4]
       32 LOADN                            R2 1
       33 SETTABLEKS                       R2 R0 K2 ["_tail"]
       35 GETTABLEKS                       R2 R0 K1 ["_head"]
       37 ADDK                             R2 R2 K3 [1]
       38 SETTABLEKS                       R2 R0 K1 ["_head"]
       40 GETTABLEKS                       R2 R0 K1 ["_head"]
       42 GETTABLEKS                       R3 R0 K4 ["_maxSize"]
       44 JUMPIFNOTLT                      R3 R2 ; [+4]
       46 LOADN                            R2 1
       47 SETTABLEKS                       R2 R0 K1 ["_head"]
       49 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_tail"]
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R1 R2 ; [+9]
        5 LOADB                            R2 0
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["tried to pop from ring buffer while it was empty"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["_tail"]
       15 ADDK                             R1 R1 K4 [1]
       16 SETTABLEKS                       R1 R0 K0 ["_tail"]
       18 GETTABLEKS                       R1 R0 K0 ["_tail"]
       20 GETTABLEKS                       R2 R0 K5 ["_maxSize"]
       22 JUMPIFNOTLT                      R2 R1 ; [+4]
       24 LOADN                            R1 1
       25 SETTABLEKS                       R1 R0 K0 ["_tail"]
       27 GETTABLEKS                       R1 R0 K0 ["_tail"]
       29 GETTABLEKS                       R2 R0 K6 ["_head"]
       31 JUMPIFNOTEQ                      R1 R2 ; [+4]
       33 LOADN                            R1 0
       34 SETTABLEKS                       R1 R0 K0 ["_tail"]
       36 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_tail"]
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R1 R2 ; [+3]
        5 LOADN                            R1 0
        6 RETURN                           R1 1
        7 GETTABLEKS                       R2 R0 K1 ["_head"]
        9 GETTABLEKS                       R3 R0 K0 ["_tail"]
       11 SUB                              R1 R2 R3
       12 LOADN                            R2 1
       13 JUMPIFNOTLT                      R1 R2 ; [+4]
       15 GETTABLEKS                       R2 R0 K2 ["_maxSize"]
       17 ADD                              R1 R1 R2
       18 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+16]
        7 LOADB                            R3 0
        8 LOADK                            R5 K3 ["cannot index into ring buffer with "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R7 R1
       11 GETIMPORT                        R6 K5 [tostring]
       13 CALL                             R6 1 1
       14 CONCAT                           R4 R5 R6
       15 FASTCALL2                        ASSERT R3 R4 ; [+3]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 LOADN                            R2 1
       23 JUMPIFLT                         R1 R2 ; [+4]
       25 LENGTH                           R2 R0
       26 JUMPIFNOTLT                      R2 R1 ; [+20]
       28 LOADB                            R3 0
       29 LOADK                            R5 K8 ["index "]
       30 FASTCALL1                        TOSTRING R1 ; [+3]
       31 MOVE                             R11 R1
       32 GETIMPORT                        R10 K5 [tostring]
       34 CALL                             R10 1 1
       35 MOVE                             R6 R10
       36 LOADK                            R7 K9 [" out of range (size = "]
       37 LENGTH                           R8 R0
       38 LOADK                            R9 K10 [")"]
       39 CONCAT                           R4 R5 R9
       40 FASTCALL2                        ASSERT R3 R4 ; [+3]
       42 GETIMPORT                        R2 K7 [assert]
       44 CALL                             R2 2 0
       45 LOADNIL                          R2
       46 RETURN                           R2 1
       47 GETTABLEKS                       R3 R0 K11 ["_head"]
       49 SUB                              R2 R3 R1
       50 LOADN                            R3 1
       51 JUMPIFNOTLT                      R2 R3 ; [+4]
       53 GETTABLEKS                       R3 R0 K12 ["_maxSize"]
       55 ADD                              R2 R2 R3
       56 GETTABLEKS                       R4 R0 K13 ["_data"]
       58 GETTABLE                         R3 R4 R2
       59 RETURN                           R3 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+15]
        7 LOADB                            R4 0
        8 LOADK                            R6 K3 ["cannot index into ring buffer with "]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K5 [tostring]
       13 CALL                             R7 1 1
       14 CONCAT                           R5 R6 R7
       15 FASTCALL2                        ASSERT R4 R5 ; [+3]
       17 GETIMPORT                        R3 K7 [assert]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 LOADN                            R3 1
       22 JUMPIFLT                         R1 R3 ; [+4]
       24 LENGTH                           R3 R0
       25 JUMPIFNOTLT                      R3 R1 ; [+19]
       27 LOADB                            R4 0
       28 LOADK                            R6 K8 ["index "]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R12 R1
       31 GETIMPORT                        R11 K5 [tostring]
       33 CALL                             R11 1 1
       34 MOVE                             R7 R11
       35 LOADK                            R8 K9 [" out of range (size = "]
       36 LENGTH                           R9 R0
       37 LOADK                            R10 K10 [")"]
       38 CONCAT                           R5 R6 R10
       39 FASTCALL2                        ASSERT R4 R5 ; [+3]
       41 GETIMPORT                        R3 K7 [assert]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R4 R0 K11 ["_head"]
       47 SUB                              R3 R4 R1
       48 LOADN                            R4 1
       49 JUMPIFNOTLT                      R3 R4 ; [+4]
       51 GETTABLEKS                       R4 R0 K12 ["_maxSize"]
       53 ADD                              R3 R3 R4
       54 GETTABLEKS                       R4 R0 K13 ["_data"]
       56 SETTABLE                         R2 R4 R3
       57 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K8 [{[1], ["_head"] = 1, ["_tail"] = 0, ["_maxSize"], ["push"], ["pop"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_data"]
        5 SETTABLEKS                       R0 R1 K5 ["_maxSize"]
        7 DUPCLOSURE                       R2 K9 [PROTO_0]
        8 SETTABLEKS                       R2 R1 K6 ["push"]
       10 DUPCLOSURE                       R2 K10 [PROTO_1]
       11 SETTABLEKS                       R2 R1 K7 ["pop"]
       13 DUPTABLE                         R2 K14 [{"__len", "__index", "__newindex"}]
       14 DUPCLOSURE                       R3 K15 [PROTO_2]
       15 SETTABLEKS                       R3 R2 K11 ["__len"]
       17 DUPCLOSURE                       R3 K16 [PROTO_3]
       18 SETTABLEKS                       R3 R2 K12 ["__index"]
       20 DUPCLOSURE                       R3 K17 [PROTO_4]
       21 SETTABLEKS                       R3 R2 K13 ["__newindex"]
       23 FASTCALL2                        SETMETATABLE R1 R2 ; [+5]
       25 MOVE                             R4 R1
       26 MOVE                             R5 R2
       27 GETIMPORT                        R3 K19 [setmetatable]
       29 CALL                             R3 2 0
       30 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K3 ["_initialTimestamp"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K4 ["_newRingBuffer"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K5 ["_changeListsPerFrame"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K6 ["_dataForCurrentFrame"]
       16 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["Volume"] ; [+8]
        3 LOADB                            R1 1
        4 JUMPIFEQKS                       R0 K1 ["PotentialAudibility"] ; [+5]
        6 JUMPIFEQKS                       R0 K2 ["Metering"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_8:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R2
        5 JUMPIF                           R4 ; [+2]
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R5 R3
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 LOADB                            R10 1
       13 JUMPIFEQKS                       R8 K0 ["Volume"] ; [+8]
       15 LOADB                            R10 1
       16 JUMPIFEQKS                       R8 K1 ["PotentialAudibility"] ; [+5]
       18 JUMPIFEQKS                       R8 K2 ["Metering"] ; [+2]
       20 LOADB                            R10 0 +1
       21 LOADB                            R10 1
       22 JUMPIF                           R10 ; [+25]
       23 FASTCALL1                        TYPEOF R9 ; [+3]
       24 MOVE                             R11 R9
       25 GETIMPORT                        R10 K4 [typeof]
       27 CALL                             R10 1 1
       28 JUMPIFEQKS                       R10 K5 ["table"] ; [+19]
       30 GETTABLE                         R10 R4 R8
       31 JUMPIFEQ                         R9 R10 ; [+16]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K6 ["SparseChanges"]
       36 DUPTABLE                         R13 K10 [{"Id", "Field", "Value"}]
       37 SETTABLEKS                       R0 R13 K7 ["Id"]
       39 SETTABLEKS                       R8 R13 K8 ["Field"]
       41 SETTABLEKS                       R9 R13 K9 ["Value"]
       43 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       45 GETIMPORT                        R11 K12 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R5 2 ; [-37]
       50 MOVE                             R5 R4
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 LOADB                            R10 1
       55 JUMPIFEQKS                       R8 K0 ["Volume"] ; [+8]
       57 LOADB                            R10 1
       58 JUMPIFEQKS                       R8 K1 ["PotentialAudibility"] ; [+5]
       60 JUMPIFEQKS                       R8 K2 ["Metering"] ; [+2]
       62 LOADB                            R10 0 +1
       63 LOADB                            R10 1
       64 JUMPIFNOT                        R10 ; [+16]
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K13 ["DenseChanges"]
       68 DUPTABLE                         R12 K10 [{"Id", "Field", "Value"}]
       69 SETTABLEKS                       R0 R12 K7 ["Id"]
       71 SETTABLEKS                       R8 R12 K8 ["Field"]
       73 SETTABLEKS                       R9 R12 K9 ["Value"]
       75 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       77 GETIMPORT                        R10 K12 [table.insert]
       79 CALL                             R10 2 0
       80 JUMP                             ; [+23]
       81 FASTCALL1                        TYPEOF R9 ; [+3]
       82 MOVE                             R11 R9
       83 GETIMPORT                        R10 K4 [typeof]
       85 CALL                             R10 1 1
       86 JUMPIFEQKS                       R10 K5 ["table"] ; [+17]
       88 GETTABLE                         R10 R3 R8
       89 JUMPIFNOTEQKNIL                  R10 ; [+14]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K6 ["SparseChanges"]
       94 DUPTABLE                         R12 K15 [{["Id"], ["Field"], ["Value"] = }]
       95 SETTABLEKS                       R0 R12 K7 ["Id"]
       97 SETTABLEKS                       R8 R12 K8 ["Field"]
       99 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      101 GETIMPORT                        R10 K12 [table.insert]
      103 CALL                             R10 2 0
      104 FORGLOOP                         R5 2 ; [-51]
      106 GETTABLEKS                       R5 R3 K16 ["Targets"]
      108 JUMPIF                           R5 ; [+2]
      109 NEWTABLE                         R5 0 0
      111 GETTABLEKS                       R6 R4 K16 ["Targets"]
      113 JUMPIF                           R6 ; [+2]
      114 NEWTABLE                         R6 0 0
      116 MOVE                             R7 R5
      117 LOADNIL                          R8
      118 LOADNIL                          R9
      119 FORGPREP                         R7
      120 GETTABLE                         R12 R6 R10
      121 JUMPIFEQKNIL                     R12 ; [+7]
      123 GETTABLEKS                       R13 R12 K17 ["ContributingGain"]
      125 GETTABLEKS                       R14 R11 K17 ["ContributingGain"]
      127 JUMPIFEQ                         R13 R14 ; [+18]
      129 GETUPVAL                         R14 0
      130 GETTABLEKS                       R14 R14 K6 ["SparseChanges"]
      132 DUPTABLE                         R15 K19 [{["Id"], ["Field"] = "Targets", ["TargetId"], ["Value"]}]
      133 SETTABLEKS                       R0 R15 K7 ["Id"]
      135 SETTABLEKS                       R10 R15 K18 ["TargetId"]
      137 GETTABLEKS                       R16 R11 K17 ["ContributingGain"]
      139 SETTABLEKS                       R16 R15 K9 ["Value"]
      141 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      143 GETIMPORT                        R13 K12 [table.insert]
      145 CALL                             R13 2 0
      146 FORGLOOP                         R7 2 ; [-27]
      148 MOVE                             R7 R6
      149 LOADNIL                          R8
      150 LOADNIL                          R9
      151 FORGPREP                         R7
      152 GETTABLE                         R12 R5 R10
      153 JUMPIFNOTEQKNIL                  R12 ; [+14]
      155 GETUPVAL                         R13 0
      156 GETTABLEKS                       R13 R13 K6 ["SparseChanges"]
      158 DUPTABLE                         R14 K20 [{["Id"], ["Field"] = "Targets", ["TargetId"], ["Value"] = }]
      159 SETTABLEKS                       R0 R14 K7 ["Id"]
      161 SETTABLEKS                       R10 R14 K18 ["TargetId"]
      163 FASTCALL2                        TABLE_INSERT R13 R14 ; [+3]
      165 GETIMPORT                        R12 K12 [table.insert]
      167 CALL                             R12 2 0
      168 FORGLOOP                         R7 2 ; [-17]
      170 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_dataForCurrentFrame"]
        2 SETTABLEKS                       R1 R0 K0 ["_dataForCurrentFrame"]
        4 DUPTABLE                         R4 K7 [{["Timestamp"], ["WasPaused"] = False, ["PeakLevel"], ["DenseChanges"], ["SparseChanges"]}]
        5 GETIMPORT                        R5 K10 [os.clock]
        7 CALL                             R5 0 1
        8 SETTABLEKS                       R5 R4 K1 ["Timestamp"]
       10 SETTABLEKS                       R2 R4 K4 ["PeakLevel"]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K5 ["DenseChanges"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K6 ["SparseChanges"]
       20 DUPCLOSURE                       R5 K11 [PROTO_7]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R4
       23 MOVE                             R7 R3
       24 LOADNIL                          R8
       25 LOADNIL                          R9
       26 FORGPREP                         R7
       27 MOVE                             R12 R6
       28 MOVE                             R13 R10
       29 MOVE                             R14 R11
       30 GETTABLE                         R15 R1 R10
       31 CALL                             R12 3 0
       32 FORGLOOP                         R7 2 ; [-6]
       34 MOVE                             R7 R1
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 FORGPREP                         R7
       38 GETTABLE                         R12 R3 R10
       39 JUMPIFNOTEQKNIL                  R12 ; [+6]
       41 MOVE                             R12 R6
       42 MOVE                             R13 R10
       43 LOADNIL                          R14
       44 MOVE                             R15 R11
       45 CALL                             R12 3 0
       46 FORGLOOP                         R7 2 ; [-9]
       48 GETTABLEKS                       R7 R0 K12 ["_changeListsPerFrame"]
       50 MOVE                             R9 R4
       51 NAMECALL                         R7 R7 K13 ["push"]
       53 CALL                             R7 2 0
       54 RETURN                           R0 0

PROTO_10:
        0 LOADN                            R4 0
        1 GETTABLEKS                       R6 R0 K0 ["_changeListsPerFrame"]
        3 LENGTH                           R5 R6
        4 FASTCALL3                        MATH_CLAMP R1 R4 R5
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [math.clamp]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 JUMPIFNOTEQKN                    R1 K4 [0] ; [+4]
       13 NEWTABLE                         R2 0 0
       15 RETURN                           R2 1
       16 NEWTABLE                         R2 0 0
       18 GETTABLEKS                       R4 R0 K0 ["_changeListsPerFrame"]
       20 GETTABLE                         R3 R4 R1
       21 GETTABLEKS                       R4 R3 K5 ["DenseChanges"]
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 FORGPREP                         R4
       26 GETTABLEKS                       R10 R8 K6 ["Id"]
       28 GETTABLE                         R9 R2 R10
       29 JUMPIFNOTEQKNIL                  R9 ; [+6]
       31 GETTABLEKS                       R9 R8 K6 ["Id"]
       33 NEWTABLE                         R10 0 0
       35 SETTABLE                         R10 R2 R9
       36 GETTABLEKS                       R10 R8 K6 ["Id"]
       38 GETTABLE                         R9 R2 R10
       39 GETTABLEKS                       R10 R8 K7 ["Field"]
       41 GETTABLEKS                       R11 R8 K8 ["Value"]
       43 SETTABLE                         R11 R9 R10
       44 FORGLOOP                         R4 2 ; [-19]
       46 MOVE                             R4 R2
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 GETTABLEKS                       R10 R0 K9 ["_dataForCurrentFrame"]
       52 GETTABLE                         R9 R10 R7
       53 JUMPIFEQKNIL                     R9 ; [+28]
       55 MOVE                             R10 R9
       56 LOADNIL                          R11
       57 LOADNIL                          R12
       58 FORGPREP                         R10
       59 JUMPIFEQKS                       R13 K10 ["Volume"] ; [+9]
       61 JUMPIFEQKS                       R13 K11 ["PotentialAudibility"] ; [+7]
       63 JUMPIFEQKS                       R13 K12 ["Metering"] ; [+5]
       65 JUMPIFEQKS                       R13 K13 ["Targets"] ; [+3]
       67 GETTABLE                         R15 R2 R7
       68 SETTABLE                         R14 R15 R13
       69 FORGLOOP                         R10 2 ; [-11]
       71 GETTABLEKS                       R10 R9 K13 ["Targets"]
       73 JUMPIFNOT                        R10 ; [+8]
       74 GETTABLE                         R10 R2 R7
       75 GETIMPORT                        R11 K16 [table.clone]
       77 GETTABLEKS                       R12 R9 K13 ["Targets"]
       79 CALL                             R11 1 1
       80 SETTABLEKS                       R11 R10 K13 ["Targets"]
       82 FORGLOOP                         R4 2 ; [-33]
       84 LOADN                            R6 1
       85 SUBK                             R4 R1 K17 [1]
       86 LOADN                            R5 1
       87 FORNPREP                         R4
       88 GETTABLEKS                       R8 R0 K0 ["_changeListsPerFrame"]
       90 GETTABLE                         R7 R8 R6
       91 GETTABLEKS                       R8 R7 K18 ["SparseChanges"]
       93 LOADNIL                          R9
       94 LOADNIL                          R10
       95 FORGPREP                         R8
       96 GETTABLEKS                       R14 R12 K6 ["Id"]
       98 GETTABLE                         R13 R2 R14
       99 JUMPIFEQKNIL                     R13 ; [+68]
      101 GETTABLEKS                       R13 R12 K7 ["Field"]
      103 JUMPIFNOTEQKS                    R13 K13 ["Targets"] ; [+56]
      105 GETTABLEKS                       R14 R12 K6 ["Id"]
      107 GETTABLE                         R13 R2 R14
      108 GETTABLEKS                       R13 R13 K13 ["Targets"]
      110 JUMPIFNOTEQKNIL                  R13 ; [+8]
      112 NEWTABLE                         R13 0 0
      114 GETTABLEKS                       R15 R12 K6 ["Id"]
      116 GETTABLE                         R14 R2 R15
      117 SETTABLEKS                       R13 R14 K13 ["Targets"]
      119 FASTCALL2K                       ASSERT R13 K19 ; [+5]
      121 MOVE                             R15 R13
      122 LOADK                            R16 K19 ["theTargets was nil"]
      123 GETIMPORT                        R14 K21 [assert]
      125 CALL                             R14 2 0
      126 GETTABLEKS                       R16 R12 K22 ["TargetId"]
      128 JUMPIFNOTEQKNIL                  R16 ; [+2]
      130 LOADB                            R15 0 +1
      131 LOADB                            R15 1
      132 FASTCALL2K                       ASSERT R15 K23 ; [+4]
      134 LOADK                            R16 K23 ["Targets change without a TargetId"]
      135 GETIMPORT                        R14 K21 [assert]
      137 CALL                             R14 2 0
      138 GETTABLEKS                       R14 R12 K8 ["Value"]
      140 JUMPIFNOTEQKNIL                  R14 ; [+6]
      142 GETTABLEKS                       R14 R12 K22 ["TargetId"]
      144 LOADNIL                          R15
      145 SETTABLE                         R15 R13 R14
      146 JUMP                             ; [+21]
      147 GETTABLEKS                       R14 R12 K22 ["TargetId"]
      149 DUPTABLE                         R15 K25 [{"Id", "ContributingGain"}]
      150 GETTABLEKS                       R16 R12 K22 ["TargetId"]
      152 SETTABLEKS                       R16 R15 K6 ["Id"]
      154 GETTABLEKS                       R16 R12 K8 ["Value"]
      156 SETTABLEKS                       R16 R15 K24 ["ContributingGain"]
      158 SETTABLE                         R15 R13 R14
      159 JUMP                             ; [+8]
      160 GETTABLEKS                       R14 R12 K6 ["Id"]
      162 GETTABLE                         R13 R2 R14
      163 GETTABLEKS                       R14 R12 K7 ["Field"]
      165 GETTABLEKS                       R15 R12 K8 ["Value"]
      167 SETTABLE                         R15 R13 R14
      168 FORGLOOP                         R8 2 ; [-73]
      170 FORNLOOP                         R4
      171 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R5 R0 K0 ["_changeListsPerFrame"]
        5 LENGTH                           R2 R5
        6 LOADN                            R3 1
        7 FORNPREP                         R2
        8 GETTABLEKS                       R8 R0 K0 ["_changeListsPerFrame"]
       10 GETTABLE                         R7 R8 R4
       11 GETTABLEKS                       R7 R7 K1 ["PeakLevel"]
       13 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       15 MOVE                             R6 R1
       16 GETIMPORT                        R5 K4 [table.insert]
       18 CALL                             R5 2 0
       19 FORNLOOP                         R2
       20 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_initialTimestamp"]
        2 RETURN                           R1 1

PROTO_13:
        0 LOADN                            R4 0
        1 GETTABLEKS                       R6 R0 K0 ["_changeListsPerFrame"]
        3 LENGTH                           R5 R6
        4 FASTCALL3                        MATH_CLAMP R1 R4 R5
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [math.clamp]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 JUMPIFNOTEQKN                    R1 K4 [0] ; [+3]
       13 LOADN                            R2 0
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K0 ["_changeListsPerFrame"]
       17 GETTABLE                         R2 R3 R1
       18 GETTABLEKS                       R2 R2 K5 ["Timestamp"]
       20 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_changeListsPerFrame"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K0 ["_changeListsPerFrame"]
        8 GETTABLEN                        R1 R2 1
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["WasPaused"]
       12 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R5 R0 K0 ["_changeListsPerFrame"]
        5 LENGTH                           R2 R5
        6 LOADN                            R3 1
        7 FORNPREP                         R2
        8 GETTABLEKS                       R6 R0 K0 ["_changeListsPerFrame"]
       10 GETTABLE                         R5 R6 R4
       11 GETTABLEKS                       R5 R5 K1 ["WasPaused"]
       13 JUMPIFNOT                        R5 ; [+7]
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       16 MOVE                             R6 R1
       17 MOVE                             R7 R4
       18 GETIMPORT                        R5 K4 [table.insert]
       20 CALL                             R5 2 0
       21 FORNLOOP                         R2
       22 RETURN                           R1 1

PROTO_16:
        0 DUPTABLE                         R1 K11 [{"_changeListsPerFrame", "_dataForCurrentFrame", "_initialTimestamp", "reset", "recordFrame", "getPastFrame", "getActivityValues", "getInitialTimestamp", "getTimestamp", "markCurrentFramePaused", "getAllPausedLookbackAmounts"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K12 ["_newRingBuffer"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["_changeListsPerFrame"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K1 ["_dataForCurrentFrame"]
       12 GETIMPORT                        R2 K15 [os.clock]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R1 K2 ["_initialTimestamp"]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K3 ["reset"]
       22 DUPCLOSURE                       R2 K16 [PROTO_9]
       23 SETTABLEKS                       R2 R1 K4 ["recordFrame"]
       25 DUPCLOSURE                       R2 K17 [PROTO_10]
       26 SETTABLEKS                       R2 R1 K5 ["getPastFrame"]
       28 DUPCLOSURE                       R2 K18 [PROTO_11]
       29 SETTABLEKS                       R2 R1 K6 ["getActivityValues"]
       31 DUPCLOSURE                       R2 K19 [PROTO_12]
       32 SETTABLEKS                       R2 R1 K7 ["getInitialTimestamp"]
       34 DUPCLOSURE                       R2 K20 [PROTO_13]
       35 SETTABLEKS                       R2 R1 K8 ["getTimestamp"]
       37 DUPCLOSURE                       R2 K21 [PROTO_14]
       38 SETTABLEKS                       R2 R1 K9 ["markCurrentFramePaused"]
       40 DUPCLOSURE                       R2 K22 [PROTO_15]
       41 SETTABLEKS                       R2 R1 K10 ["getAllPausedLookbackAmounts"]
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_5]
       17 SETTABLEKS                       R3 R2 K9 ["_newRingBuffer"]
       19 DUPCLOSURE                       R3 K10 [PROTO_16]
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R2 K11 ["new"]
       23 RETURN                           R2 1
