PROTO_0:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K3 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K4 ["Vector3"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K3 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K4 ["Instance"] ; [+6]
       11 LOADK                            R5 K5 ["BasePart"]
       12 NAMECALL                         R3 R2 K6 ["IsA"]
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1
       16 LOADB                            R3 0
       17 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K3 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K4 ["CFrame"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 RETURN                           R3 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K1 [next]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 2
        7 JUMPIF                           R2 ; [+2]
        8 LOADB                            R3 1
        9 RETURN                           R3 1
       10 LOADB                            R3 0
       11 RETURN                           R3 1

PROTO_4:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADN                            R1 0
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 ADDK                             R1 R1 K0 [1]
        9 FORGLOOP                         R2 1 ; [-2]
       11 JUMPIFNOTEQKN                    R1 K0 [1] ; [+3]
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 LOADB                            R2 0
       16 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R0 K7 [{[1], ["Centroid"], ["Width"] = 0, ["Height"] = 0, ["Depth"] = 0, ["CFrame"]}]
        1 FASTCALL                         VECTOR ; [+2]
        2 GETIMPORT                        R1 K10 [Vector3.new]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["Center"]
        7 FASTCALL                         VECTOR ; [+2]
        8 GETIMPORT                        R1 K10 [Vector3.new]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["Centroid"]
       13 GETIMPORT                        R1 K11 [CFrame.new]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K6 ["CFrame"]
       18 RETURN                           R0 1

PROTO_6:
        0 LOADK                            R2 K0 [{0, 0, 1}]
        1 LOADK                            R3 K1 [{0, 1, 0}]
        2 LOADK                            R4 K2 [{1, 0, 0}]
        3 GETIMPORT                        R5 K6 [Enum.Axis.Z]
        5 JUMPIFNOTEQ                      R1 R5 ; [+20]
        7 MOVE                             R2 R0
        8 MOVE                             R7 R3
        9 NAMECALL                         R5 R2 K7 ["FuzzyEq"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 MOVE                             R3 R4
       14 JUMP                             ; [0]
       15 MOVE                             R7 R2
       16 NAMECALL                         R5 R3 K8 ["Cross"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 MOVE                             R7 R4
       21 NAMECALL                         R5 R2 K8 ["Cross"]
       23 CALL                             R5 2 1
       24 MOVE                             R3 R5
       25 JUMP                             ; [+41]
       26 GETIMPORT                        R5 K10 [Enum.Axis.Y]
       28 JUMPIFNOTEQ                      R1 R5 ; [+20]
       30 MOVE                             R3 R0
       31 MOVE                             R7 R3
       32 NAMECALL                         R5 R2 K7 ["FuzzyEq"]
       34 CALL                             R5 2 1
       35 JUMPIFNOT                        R5 ; [+2]
       36 MOVE                             R2 R4
       37 JUMP                             ; [0]
       38 MOVE                             R7 R2
       39 NAMECALL                         R5 R3 K8 ["Cross"]
       41 CALL                             R5 2 1
       42 MOVE                             R4 R5
       43 MOVE                             R7 R3
       44 NAMECALL                         R5 R4 K8 ["Cross"]
       46 CALL                             R5 2 1
       47 MOVE                             R2 R5
       48 JUMP                             ; [+18]
       49 MOVE                             R4 R0
       50 MOVE                             R7 R3
       51 NAMECALL                         R5 R4 K7 ["FuzzyEq"]
       53 CALL                             R5 2 1
       54 JUMPIFNOT                        R5 ; [+2]
       55 MOVE                             R3 R2
       56 JUMP                             ; [0]
       57 MOVE                             R7 R3
       58 NAMECALL                         R5 R4 K8 ["Cross"]
       60 CALL                             R5 2 1
       61 MOVE                             R2 R5
       62 MOVE                             R7 R4
       63 NAMECALL                         R5 R2 K8 ["Cross"]
       65 CALL                             R5 2 1
       66 MOVE                             R3 R5
       67 GETIMPORT                        R5 K13 [CFrame.fromMatrix]
       69 LOADK                            R6 K14 [{0, 0, 0}]
       70 GETTABLEKS                       R7 R4 K15 ["Unit"]
       72 GETTABLEKS                       R8 R3 K15 ["Unit"]
       74 GETTABLEKS                       R9 R2 K15 ["Unit"]
       76 CALL                             R5 4 -1
       77 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["Center"]
        2 GETTABLEKS                       R3 R1 K1 ["Direction"]
        4 NEWTABLE                         R4 0 0
        6 NEWTABLE                         R5 0 0
        8 GETIMPORT                        R7 K3 [next]
       10 MOVE                             R8 R0
       11 CALL                             R7 1 2
       12 FASTCALL1                        TYPEOF R8 ; [+3]
       13 MOVE                             R10 R8
       14 GETIMPORT                        R9 K5 [typeof]
       16 CALL                             R9 1 1
       17 JUMPIFEQKS                       R9 K6 ["Vector3"] ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 MOVE                             R7 R0
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 FORGPREP                         R7
       25 JUMPIFNOT                        R6 ; [+2]
       26 MOVE                             R12 R11
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R12 R11 K7 ["Position"]
       30 GETIMPORT                        R13 K11 [Enum.Axis.Z]
       32 JUMPIFNOTEQ                      R3 R13 ; [+23]
       34 GETTABLEKS                       R13 R12 K10 ["Z"]
       36 GETTABLEKS                       R14 R2 K10 ["Z"]
       38 JUMPIFNOTLE                      R14 R13 ; [+9]
       40 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       42 MOVE                             R14 R4
       43 MOVE                             R15 R12
       44 GETIMPORT                        R13 K14 [table.insert]
       46 CALL                             R13 2 0
       47 JUMP                             ; [+55]
       48 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       50 MOVE                             R14 R5
       51 MOVE                             R15 R12
       52 GETIMPORT                        R13 K14 [table.insert]
       54 CALL                             R13 2 0
       55 JUMP                             ; [+47]
       56 GETIMPORT                        R13 K16 [Enum.Axis.Y]
       58 JUMPIFNOTEQ                      R3 R13 ; [+23]
       60 GETTABLEKS                       R13 R12 K15 ["Y"]
       62 GETTABLEKS                       R14 R2 K15 ["Y"]
       64 JUMPIFNOTLE                      R14 R13 ; [+9]
       66 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       68 MOVE                             R14 R4
       69 MOVE                             R15 R12
       70 GETIMPORT                        R13 K14 [table.insert]
       72 CALL                             R13 2 0
       73 JUMP                             ; [+29]
       74 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       76 MOVE                             R14 R5
       77 MOVE                             R15 R12
       78 GETIMPORT                        R13 K14 [table.insert]
       80 CALL                             R13 2 0
       81 JUMP                             ; [+21]
       82 GETTABLEKS                       R13 R12 K17 ["X"]
       84 GETTABLEKS                       R14 R2 K17 ["X"]
       86 JUMPIFNOTLE                      R14 R13 ; [+9]
       88 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       90 MOVE                             R14 R4
       91 MOVE                             R15 R12
       92 GETIMPORT                        R13 K14 [table.insert]
       94 CALL                             R13 2 0
       95 JUMP                             ; [+7]
       96 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       98 MOVE                             R14 R5
       99 MOVE                             R15 R12
      100 GETIMPORT                        R13 K14 [table.insert]
      102 CALL                             R13 2 0
      103 FORGLOOP                         R7 2 ; [-79]
      105 GETUPVAL                         R7 0
      106 GETTABLEKS                       R7 R7 K18 ["getAxisAlignedBoundingBox"]
      108 MOVE                             R8 R4
      109 CALL                             R7 1 1
      110 GETUPVAL                         R8 0
      111 GETTABLEKS                       R8 R8 K18 ["getAxisAlignedBoundingBox"]
      113 MOVE                             R9 R5
      114 CALL                             R8 1 1
      115 GETTABLEKS                       R10 R7 K19 ["Centroid"]
      117 GETTABLEKS                       R11 R8 K19 ["Centroid"]
      119 SUB                              R9 R10 R11
      120 GETTABLEKS                       R9 R9 K20 ["Unit"]
      122 RETURN                           R9 1

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 1
        2 JUMP                             ; [+8]
        3 GETIMPORT                        R2 K1 [next]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 2
        7 JUMPIF                           R3 ; [+2]
        8 LOADB                            R1 1
        9 JUMP                             ; [+1]
       10 LOADB                            R1 0
       11 JUMPIFNOT                        R1 ; [+19]
       12 DUPTABLE                         R1 K9 [{["Center"], ["Centroid"], ["Width"] = 0, ["Height"] = 0, ["Depth"] = 0, ["CFrame"]}]
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R2 K12 [Vector3.new]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K2 ["Center"]
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R2 K12 [Vector3.new]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K3 ["Centroid"]
       25 GETIMPORT                        R2 K13 [CFrame.new]
       27 CALL                             R2 0 1
       28 SETTABLEKS                       R2 R1 K8 ["CFrame"]
       30 RETURN                           R1 1
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K14 ["getAxisAlignedBoundingBox"]
       34 MOVE                             R2 R0
       35 CALL                             R1 1 1
       36 JUMPIF                           R0 ; [+2]
       37 LOADB                            R2 0
       38 JUMP                             ; [+13]
       39 LOADN                            R3 0
       40 MOVE                             R4 R0
       41 LOADNIL                          R5
       42 LOADNIL                          R6
       43 FORGPREP                         R4
       44 ADDK                             R3 R3 K15 [1]
       45 FORGLOOP                         R4 1 ; [-2]
       47 JUMPIFNOTEQKN                    R3 K15 [1] ; [+3]
       49 LOADB                            R2 1
       50 JUMP                             ; [+1]
       51 LOADB                            R2 0
       52 JUMPIFNOT                        R2 ; [+1]
       53 RETURN                           R1 1
       54 GETUPVAL                         R2 1
       55 MOVE                             R3 R0
       56 MOVE                             R4 R1
       57 CALL                             R2 2 1
       58 GETUPVAL                         R3 2
       59 MOVE                             R4 R2
       60 GETTABLEKS                       R5 R1 K16 ["Direction"]
       62 CALL                             R3 2 1
       63 GETUPVAL                         R4 3
       64 MOVE                             R5 R0
       65 CALL                             R4 1 1
       66 GETIMPORT                        R6 K1 [next]
       68 MOVE                             R7 R0
       69 CALL                             R6 1 2
       70 FASTCALL1                        TYPEOF R7 ; [+3]
       71 MOVE                             R9 R7
       72 GETIMPORT                        R8 K18 [typeof]
       74 CALL                             R8 1 1
       75 JUMPIFEQKS                       R8 K10 ["Vector3"] ; [+2]
       77 LOADB                            R5 0 +1
       78 LOADB                            R5 1
       79 MOVE                             R6 R4
       80 LOADNIL                          R7
       81 LOADNIL                          R8
       82 FORGPREP                         R6
       83 JUMPIFNOT                        R5 ; [+6]
       84 NAMECALL                         R12 R3 K19 ["inverse"]
       86 CALL                             R12 1 1
       87 MUL                              R11 R12 R10
       88 SETTABLE                         R11 R4 R9
       89 JUMP                             ; [+8]
       90 NAMECALL                         R12 R3 K19 ["inverse"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R10 K20 ["Position"]
       95 MUL                              R11 R12 R13
       96 SETTABLEKS                       R11 R10 K20 ["Position"]
       98 FORGLOOP                         R6 2 ; [-16]
      100 GETUPVAL                         R6 0
      101 GETTABLEKS                       R6 R6 K14 ["getAxisAlignedBoundingBox"]
      103 MOVE                             R7 R4
      104 CALL                             R6 1 1
      105 GETTABLEKS                       R8 R6 K2 ["Center"]
      107 MUL                              R7 R3 R8
      108 SETTABLEKS                       R7 R6 K2 ["Center"]
      110 GETTABLEKS                       R8 R6 K2 ["Center"]
      112 ADD                              R7 R3 R8
      113 SETTABLEKS                       R7 R6 K8 ["CFrame"]
      115 SETTABLEKS                       R2 R6 K16 ["Direction"]
      117 GETTABLEKS                       R7 R1 K3 ["Centroid"]
      119 SETTABLEKS                       R7 R6 K3 ["Centroid"]
      121 GETTABLEKS                       R7 R6 K21 ["Top"]
      123 LOADNIL                          R8
      124 LOADNIL                          R9
      125 FORGPREP                         R7
      126 MOVE                             R12 R11
      127 LOADNIL                          R13
      128 LOADNIL                          R14
      129 FORGPREP                         R12
      130 GETTABLEKS                       R18 R6 K21 ["Top"]
      132 GETTABLE                         R17 R18 R10
      133 MUL                              R18 R3 R16
      134 SETTABLE                         R18 R17 R15
      135 FORGLOOP                         R12 2 ; [-6]
      137 FORGLOOP                         R7 2 ; [-12]
      139 GETTABLEKS                       R7 R6 K22 ["Bottom"]
      141 LOADNIL                          R8
      142 LOADNIL                          R9
      143 FORGPREP                         R7
      144 MOVE                             R12 R11
      145 LOADNIL                          R13
      146 LOADNIL                          R14
      147 FORGPREP                         R12
      148 GETTABLEKS                       R18 R6 K22 ["Bottom"]
      150 GETTABLE                         R17 R18 R10
      151 MUL                              R18 R3 R16
      152 SETTABLE                         R18 R17 R15
      153 FORGLOOP                         R12 2 ; [-6]
      155 FORGLOOP                         R7 2 ; [-12]
      157 RETURN                           R6 1

PROTO_9:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 1
        2 JUMP                             ; [+8]
        3 GETIMPORT                        R2 K1 [next]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 2
        7 JUMPIF                           R3 ; [+2]
        8 LOADB                            R1 1
        9 JUMP                             ; [+1]
       10 LOADB                            R1 0
       11 JUMPIFNOT                        R1 ; [+19]
       12 DUPTABLE                         R1 K9 [{["Center"], ["Centroid"], ["Width"] = 0, ["Height"] = 0, ["Depth"] = 0, ["CFrame"]}]
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R2 K12 [Vector3.new]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K2 ["Center"]
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R2 K12 [Vector3.new]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K3 ["Centroid"]
       25 GETIMPORT                        R2 K13 [CFrame.new]
       27 CALL                             R2 0 1
       28 SETTABLEKS                       R2 R1 K8 ["CFrame"]
       30 RETURN                           R1 1
       31 GETIMPORT                        R3 K1 [next]
       33 MOVE                             R4 R0
       34 CALL                             R3 1 2
       35 FASTCALL1                        TYPEOF R4 ; [+3]
       36 MOVE                             R6 R4
       37 GETIMPORT                        R5 K15 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFEQKS                       R5 K10 ["Vector3"] ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 JUMPIF                           R2 ; [+32]
       45 GETIMPORT                        R3 K1 [next]
       47 MOVE                             R4 R0
       48 CALL                             R3 1 2
       49 FASTCALL1                        TYPEOF R4 ; [+3]
       50 MOVE                             R6 R4
       51 GETIMPORT                        R5 K15 [typeof]
       53 CALL                             R5 1 1
       54 JUMPIFNOTEQKS                    R5 K16 ["Instance"] ; [+7]
       56 LOADK                            R7 K17 ["BasePart"]
       57 NAMECALL                         R5 R4 K18 ["IsA"]
       59 CALL                             R5 2 1
       60 MOVE                             R2 R5
       61 JUMP                             ; [+1]
       62 LOADB                            R2 0
       63 JUMPIF                           R2 ; [+13]
       64 GETIMPORT                        R3 K1 [next]
       66 MOVE                             R4 R0
       67 CALL                             R3 1 2
       68 FASTCALL1                        TYPEOF R4 ; [+3]
       69 MOVE                             R6 R4
       70 GETIMPORT                        R5 K15 [typeof]
       72 CALL                             R5 1 1
       73 JUMPIFEQKS                       R5 K8 ["CFrame"] ; [+2]
       75 LOADB                            R2 0 +1
       76 LOADB                            R2 1
       77 FASTCALL2K                       ASSERT R2 K19 ; [+4]
       79 LOADK                            R3 K19 ["Array of points must be: BaseParts, Vector3's, or CFrames"]
       80 GETIMPORT                        R1 K21 [assert]
       82 CALL                             R1 2 0
       83 GETIMPORT                        R1 K1 [next]
       85 MOVE                             R2 R0
       86 CALL                             R1 1 2
       87 GETIMPORT                        R4 K1 [next]
       89 MOVE                             R5 R0
       90 CALL                             R4 1 2
       91 FASTCALL1                        TYPEOF R5 ; [+3]
       92 MOVE                             R7 R5
       93 GETIMPORT                        R6 K15 [typeof]
       95 CALL                             R6 1 1
       96 JUMPIFEQKS                       R6 K10 ["Vector3"] ; [+2]
       98 LOADB                            R3 0 +1
       99 LOADB                            R3 1
      100 JUMPIFNOT                        R3 ; [+3]
      101 GETTABLEKS                       R4 R2 K22 ["X"]
      103 JUMP                             ; [+4]
      104 GETTABLEKS                       R4 R2 K23 ["Position"]
      106 GETTABLEKS                       R4 R4 K22 ["X"]
      108 JUMPIFNOT                        R3 ; [+3]
      109 GETTABLEKS                       R5 R2 K24 ["Y"]
      111 JUMP                             ; [+4]
      112 GETTABLEKS                       R5 R2 K23 ["Position"]
      114 GETTABLEKS                       R5 R5 K24 ["Y"]
      116 JUMPIFNOT                        R3 ; [+3]
      117 GETTABLEKS                       R6 R2 K25 ["Z"]
      119 JUMP                             ; [+4]
      120 GETTABLEKS                       R6 R2 K23 ["Position"]
      122 GETTABLEKS                       R6 R6 K25 ["Z"]
      124 MOVE                             R7 R4
      125 MOVE                             R8 R5
      126 MOVE                             R9 R6
      127 LOADK                            R10 K26 [{0, 0, 0}]
      128 MOVE                             R11 R0
      129 LOADNIL                          R12
      130 LOADNIL                          R13
      131 FORGPREP                         R11
      132 JUMPIFNOT                        R3 ; [+2]
      133 MOVE                             R16 R15
      134 JUMP                             ; [+2]
      135 GETTABLEKS                       R16 R15 K23 ["Position"]
      137 GETTABLEKS                       R18 R16 K22 ["X"]
      139 FASTCALL2                        MATH_MIN R18 R4 ; [+4]
      141 MOVE                             R19 R4
      142 GETIMPORT                        R17 K29 [math.min]
      144 CALL                             R17 2 1
      145 MOVE                             R4 R17
      146 GETTABLEKS                       R18 R16 K22 ["X"]
      148 FASTCALL2                        MATH_MAX R18 R7 ; [+4]
      150 MOVE                             R19 R7
      151 GETIMPORT                        R17 K31 [math.max]
      153 CALL                             R17 2 1
      154 MOVE                             R7 R17
      155 GETTABLEKS                       R18 R16 K24 ["Y"]
      157 FASTCALL2                        MATH_MIN R18 R5 ; [+4]
      159 MOVE                             R19 R5
      160 GETIMPORT                        R17 K29 [math.min]
      162 CALL                             R17 2 1
      163 MOVE                             R5 R17
      164 GETTABLEKS                       R18 R16 K24 ["Y"]
      166 FASTCALL2                        MATH_MAX R18 R8 ; [+4]
      168 MOVE                             R19 R8
      169 GETIMPORT                        R17 K31 [math.max]
      171 CALL                             R17 2 1
      172 MOVE                             R8 R17
      173 GETTABLEKS                       R18 R16 K25 ["Z"]
      175 FASTCALL2                        MATH_MIN R18 R6 ; [+4]
      177 MOVE                             R19 R6
      178 GETIMPORT                        R17 K29 [math.min]
      180 CALL                             R17 2 1
      181 MOVE                             R6 R17
      182 GETTABLEKS                       R18 R16 K25 ["Z"]
      184 FASTCALL2                        MATH_MAX R18 R9 ; [+4]
      186 MOVE                             R19 R9
      187 GETIMPORT                        R17 K31 [math.max]
      189 CALL                             R17 2 1
      190 MOVE                             R9 R17
      191 ADD                              R10 R10 R16
      192 FORGLOOP                         R11 2 ; [-61]
      194 LENGTH                           R12 R0
      195 DIV                              R11 R10 R12
      196 DUPTABLE                         R12 K34 [{"Center", "Centroid", "Width", "Height", "Depth", "Top", "Bottom"}]
      197 ADD                              R15 R7 R4
      198 ADD                              R16 R8 R5
      199 ADD                              R17 R9 R6
      200 FASTCALL                         VECTOR ; [+2]
      201 GETIMPORT                        R14 K12 [Vector3.new]
      203 CALL                             R14 3 1
      204 DIVK                             R13 R14 K35 [2]
      205 SETTABLEKS                       R13 R12 K2 ["Center"]
      207 SETTABLEKS                       R11 R12 K3 ["Centroid"]
      209 SUB                              R14 R7 R4
      210 FASTCALL1                        MATH_ABS R14 ; [+2]
      211 GETIMPORT                        R13 K37 [math.abs]
      213 CALL                             R13 1 1
      214 SETTABLEKS                       R13 R12 K4 ["Width"]
      216 SUB                              R14 R8 R5
      217 FASTCALL1                        MATH_ABS R14 ; [+2]
      218 GETIMPORT                        R13 K37 [math.abs]
      220 CALL                             R13 1 1
      221 SETTABLEKS                       R13 R12 K6 ["Height"]
      223 SUB                              R14 R9 R6
      224 FASTCALL1                        MATH_ABS R14 ; [+2]
      225 GETIMPORT                        R13 K37 [math.abs]
      227 CALL                             R13 1 1
      228 SETTABLEKS                       R13 R12 K7 ["Depth"]
      230 DUPTABLE                         R13 K40 [{"Front", "Back"}]
      231 DUPTABLE                         R14 K43 [{"Left", "Right"}]
      232 FASTCALL3                        VECTOR R4 R8 R6
      234 MOVE                             R16 R4
      235 MOVE                             R17 R8
      236 MOVE                             R18 R6
      237 GETIMPORT                        R15 K12 [Vector3.new]
      239 CALL                             R15 3 1
      240 SETTABLEKS                       R15 R14 K41 ["Left"]
      242 FASTCALL3                        VECTOR R7 R8 R6
      244 MOVE                             R16 R7
      245 MOVE                             R17 R8
      246 MOVE                             R18 R6
      247 GETIMPORT                        R15 K12 [Vector3.new]
      249 CALL                             R15 3 1
      250 SETTABLEKS                       R15 R14 K42 ["Right"]
      252 SETTABLEKS                       R14 R13 K38 ["Front"]
      254 DUPTABLE                         R14 K43 [{"Left", "Right"}]
      255 FASTCALL3                        VECTOR R4 R8 R9
      257 MOVE                             R16 R4
      258 MOVE                             R17 R8
      259 MOVE                             R18 R9
      260 GETIMPORT                        R15 K12 [Vector3.new]
      262 CALL                             R15 3 1
      263 SETTABLEKS                       R15 R14 K41 ["Left"]
      265 FASTCALL3                        VECTOR R7 R8 R9
      267 MOVE                             R16 R7
      268 MOVE                             R17 R8
      269 MOVE                             R18 R9
      270 GETIMPORT                        R15 K12 [Vector3.new]
      272 CALL                             R15 3 1
      273 SETTABLEKS                       R15 R14 K42 ["Right"]
      275 SETTABLEKS                       R14 R13 K39 ["Back"]
      277 SETTABLEKS                       R13 R12 K32 ["Top"]
      279 DUPTABLE                         R13 K40 [{"Front", "Back"}]
      280 DUPTABLE                         R14 K43 [{"Left", "Right"}]
      281 FASTCALL3                        VECTOR R4 R5 R6
      283 MOVE                             R16 R4
      284 MOVE                             R17 R5
      285 MOVE                             R18 R6
      286 GETIMPORT                        R15 K12 [Vector3.new]
      288 CALL                             R15 3 1
      289 SETTABLEKS                       R15 R14 K41 ["Left"]
      291 FASTCALL3                        VECTOR R7 R5 R6
      293 MOVE                             R16 R7
      294 MOVE                             R17 R5
      295 MOVE                             R18 R6
      296 GETIMPORT                        R15 K12 [Vector3.new]
      298 CALL                             R15 3 1
      299 SETTABLEKS                       R15 R14 K42 ["Right"]
      301 SETTABLEKS                       R14 R13 K38 ["Front"]
      303 DUPTABLE                         R14 K43 [{"Left", "Right"}]
      304 FASTCALL3                        VECTOR R4 R5 R9
      306 MOVE                             R16 R4
      307 MOVE                             R17 R5
      308 MOVE                             R18 R9
      309 GETIMPORT                        R15 K12 [Vector3.new]
      311 CALL                             R15 3 1
      312 SETTABLEKS                       R15 R14 K41 ["Left"]
      314 FASTCALL3                        VECTOR R7 R5 R9
      316 MOVE                             R16 R7
      317 MOVE                             R17 R5
      318 MOVE                             R18 R9
      319 GETIMPORT                        R15 K12 [Vector3.new]
      321 CALL                             R15 3 1
      322 SETTABLEKS                       R15 R14 K42 ["Right"]
      324 SETTABLEKS                       R14 R13 K39 ["Back"]
      326 SETTABLEKS                       R13 R12 K33 ["Bottom"]
      328 GETTABLEKS                       R13 R12 K4 ["Width"]
      330 GETTABLEKS                       R14 R12 K6 ["Height"]
      332 JUMPIFNOTLE                      R14 R13 ; [+12]
      334 GETTABLEKS                       R13 R12 K4 ["Width"]
      336 GETTABLEKS                       R14 R12 K7 ["Depth"]
      338 JUMPIFNOTLE                      R14 R13 ; [+6]
      340 GETIMPORT                        R13 K46 [Enum.Axis.X]
      342 SETTABLEKS                       R13 R12 K47 ["Direction"]
      344 JUMP                             ; [+21]
      345 GETTABLEKS                       R13 R12 K6 ["Height"]
      347 GETTABLEKS                       R14 R12 K4 ["Width"]
      349 JUMPIFNOTLE                      R14 R13 ; [+12]
      351 GETTABLEKS                       R13 R12 K6 ["Height"]
      353 GETTABLEKS                       R14 R12 K7 ["Depth"]
      355 JUMPIFNOTLE                      R14 R13 ; [+6]
      357 GETIMPORT                        R13 K48 [Enum.Axis.Y]
      359 SETTABLEKS                       R13 R12 K47 ["Direction"]
      361 JUMP                             ; [+4]
      362 GETIMPORT                        R13 K49 [Enum.Axis.Z]
      364 SETTABLEKS                       R13 R12 K47 ["Direction"]
      366 GETIMPORT                        R13 K13 [CFrame.new]
      368 GETTABLEKS                       R14 R12 K2 ["Center"]
      370 CALL                             R13 1 1
      371 SETTABLEKS                       R13 R12 K8 ["CFrame"]
      373 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["deepCopy"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 2 0
       12 DUPCLOSURE                       R3 K6 [PROTO_0]
       13 DUPCLOSURE                       R4 K7 [PROTO_1]
       14 DUPCLOSURE                       R5 K8 [PROTO_2]
       15 DUPCLOSURE                       R6 K9 [PROTO_3]
       16 DUPCLOSURE                       R7 K10 [PROTO_4]
       17 DUPCLOSURE                       R8 K11 [PROTO_5]
       18 DUPCLOSURE                       R9 K12 [PROTO_6]
       19 DUPCLOSURE                       R10 K13 [PROTO_7]
       20 CAPTURE                          VAL R2
       21 DUPCLOSURE                       R11 K14 [PROTO_8]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R10
       24 CAPTURE                          VAL R9
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R11 R2 K15 ["getWeightBalanceOrientedBoundingBox"]
       28 DUPCLOSURE                       R11 K16 [PROTO_9]
       29 SETTABLEKS                       R11 R2 K17 ["getAxisAlignedBoundingBox"]
       31 RETURN                           R2 1
