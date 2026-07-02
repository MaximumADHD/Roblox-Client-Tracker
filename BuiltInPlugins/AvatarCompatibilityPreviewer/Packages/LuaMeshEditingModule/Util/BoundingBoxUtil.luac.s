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
       11 JUMPIFNOT                        R1 ; [+26]
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+4]
       15 GETIMPORT                        R1 K3 [warn]
       17 LOADK                            R2 K4 ["Points was empty"]
       18 CALL                             R1 1 0
       19 DUPTABLE                         R1 K12 [{["Center"], ["Centroid"], ["Width"] = 0, ["Height"] = 0, ["Depth"] = 0, ["CFrame"]}]
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R2 K15 [Vector3.new]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K5 ["Center"]
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R2 K15 [Vector3.new]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K6 ["Centroid"]
       32 GETIMPORT                        R2 K16 [CFrame.new]
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R1 K11 ["CFrame"]
       37 RETURN                           R1 1
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K17 ["getAxisAlignedBoundingBox"]
       41 MOVE                             R2 R0
       42 CALL                             R1 1 1
       43 JUMPIF                           R0 ; [+2]
       44 LOADB                            R2 0
       45 JUMP                             ; [+13]
       46 LOADN                            R3 0
       47 MOVE                             R4 R0
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 FORGPREP                         R4
       51 ADDK                             R3 R3 K18 [1]
       52 FORGLOOP                         R4 1 ; [-2]
       54 JUMPIFNOTEQKN                    R3 K18 [1] ; [+3]
       56 LOADB                            R2 1
       57 JUMP                             ; [+1]
       58 LOADB                            R2 0
       59 JUMPIFNOT                        R2 ; [+1]
       60 RETURN                           R1 1
       61 GETUPVAL                         R2 2
       62 MOVE                             R3 R0
       63 MOVE                             R4 R1
       64 CALL                             R2 2 1
       65 GETUPVAL                         R3 3
       66 MOVE                             R4 R2
       67 GETTABLEKS                       R5 R1 K19 ["Direction"]
       69 CALL                             R3 2 1
       70 GETUPVAL                         R4 4
       71 MOVE                             R5 R0
       72 CALL                             R4 1 1
       73 GETIMPORT                        R6 K1 [next]
       75 MOVE                             R7 R0
       76 CALL                             R6 1 2
       77 FASTCALL1                        TYPEOF R7 ; [+3]
       78 MOVE                             R9 R7
       79 GETIMPORT                        R8 K21 [typeof]
       81 CALL                             R8 1 1
       82 JUMPIFEQKS                       R8 K13 ["Vector3"] ; [+2]
       84 LOADB                            R5 0 +1
       85 LOADB                            R5 1
       86 MOVE                             R6 R4
       87 LOADNIL                          R7
       88 LOADNIL                          R8
       89 FORGPREP                         R6
       90 JUMPIFNOT                        R5 ; [+6]
       91 NAMECALL                         R12 R3 K22 ["inverse"]
       93 CALL                             R12 1 1
       94 MUL                              R11 R12 R10
       95 SETTABLE                         R11 R4 R9
       96 JUMP                             ; [+8]
       97 NAMECALL                         R12 R3 K22 ["inverse"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R10 K23 ["Position"]
      102 MUL                              R11 R12 R13
      103 SETTABLEKS                       R11 R10 K23 ["Position"]
      105 FORGLOOP                         R6 2 ; [-16]
      107 GETUPVAL                         R6 1
      108 GETTABLEKS                       R6 R6 K17 ["getAxisAlignedBoundingBox"]
      110 MOVE                             R7 R4
      111 CALL                             R6 1 1
      112 GETTABLEKS                       R8 R6 K5 ["Center"]
      114 MUL                              R7 R3 R8
      115 SETTABLEKS                       R7 R6 K5 ["Center"]
      117 GETTABLEKS                       R8 R6 K5 ["Center"]
      119 ADD                              R7 R3 R8
      120 SETTABLEKS                       R7 R6 K11 ["CFrame"]
      122 SETTABLEKS                       R2 R6 K19 ["Direction"]
      124 GETTABLEKS                       R7 R1 K6 ["Centroid"]
      126 SETTABLEKS                       R7 R6 K6 ["Centroid"]
      128 GETTABLEKS                       R7 R6 K24 ["Top"]
      130 LOADNIL                          R8
      131 LOADNIL                          R9
      132 FORGPREP                         R7
      133 MOVE                             R12 R11
      134 LOADNIL                          R13
      135 LOADNIL                          R14
      136 FORGPREP                         R12
      137 GETTABLEKS                       R18 R6 K24 ["Top"]
      139 GETTABLE                         R17 R18 R10
      140 MUL                              R18 R3 R16
      141 SETTABLE                         R18 R17 R15
      142 FORGLOOP                         R12 2 ; [-6]
      144 FORGLOOP                         R7 2 ; [-12]
      146 GETTABLEKS                       R7 R6 K25 ["Bottom"]
      148 LOADNIL                          R8
      149 LOADNIL                          R9
      150 FORGPREP                         R7
      151 MOVE                             R12 R11
      152 LOADNIL                          R13
      153 LOADNIL                          R14
      154 FORGPREP                         R12
      155 GETTABLEKS                       R18 R6 K25 ["Bottom"]
      157 GETTABLE                         R17 R18 R10
      158 MUL                              R18 R3 R16
      159 SETTABLE                         R18 R17 R15
      160 FORGLOOP                         R12 2 ; [-6]
      162 FORGLOOP                         R7 2 ; [-12]
      164 RETURN                           R6 1

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
       11 JUMPIFNOT                        R1 ; [+26]
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+4]
       15 GETIMPORT                        R1 K3 [warn]
       17 LOADK                            R2 K4 ["Points was empty"]
       18 CALL                             R1 1 0
       19 DUPTABLE                         R1 K12 [{["Center"], ["Centroid"], ["Width"] = 0, ["Height"] = 0, ["Depth"] = 0, ["CFrame"]}]
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R2 K15 [Vector3.new]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K5 ["Center"]
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R2 K15 [Vector3.new]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K6 ["Centroid"]
       32 GETIMPORT                        R2 K16 [CFrame.new]
       34 CALL                             R2 0 1
       35 SETTABLEKS                       R2 R1 K11 ["CFrame"]
       37 RETURN                           R1 1
       38 GETIMPORT                        R3 K1 [next]
       40 MOVE                             R4 R0
       41 CALL                             R3 1 2
       42 FASTCALL1                        TYPEOF R4 ; [+3]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K18 [typeof]
       46 CALL                             R5 1 1
       47 JUMPIFEQKS                       R5 K13 ["Vector3"] ; [+2]
       49 LOADB                            R2 0 +1
       50 LOADB                            R2 1
       51 JUMPIF                           R2 ; [+32]
       52 GETIMPORT                        R3 K1 [next]
       54 MOVE                             R4 R0
       55 CALL                             R3 1 2
       56 FASTCALL1                        TYPEOF R4 ; [+3]
       57 MOVE                             R6 R4
       58 GETIMPORT                        R5 K18 [typeof]
       60 CALL                             R5 1 1
       61 JUMPIFNOTEQKS                    R5 K19 ["Instance"] ; [+7]
       63 LOADK                            R7 K20 ["BasePart"]
       64 NAMECALL                         R5 R4 K21 ["IsA"]
       66 CALL                             R5 2 1
       67 MOVE                             R2 R5
       68 JUMP                             ; [+1]
       69 LOADB                            R2 0
       70 JUMPIF                           R2 ; [+13]
       71 GETIMPORT                        R3 K1 [next]
       73 MOVE                             R4 R0
       74 CALL                             R3 1 2
       75 FASTCALL1                        TYPEOF R4 ; [+3]
       76 MOVE                             R6 R4
       77 GETIMPORT                        R5 K18 [typeof]
       79 CALL                             R5 1 1
       80 JUMPIFEQKS                       R5 K11 ["CFrame"] ; [+2]
       82 LOADB                            R2 0 +1
       83 LOADB                            R2 1
       84 FASTCALL2K                       ASSERT R2 K22 ; [+4]
       86 LOADK                            R3 K22 ["Array of points must be: BaseParts, Vector3's, or CFrames"]
       87 GETIMPORT                        R1 K24 [assert]
       89 CALL                             R1 2 0
       90 GETIMPORT                        R1 K1 [next]
       92 MOVE                             R2 R0
       93 CALL                             R1 1 2
       94 GETIMPORT                        R4 K1 [next]
       96 MOVE                             R5 R0
       97 CALL                             R4 1 2
       98 FASTCALL1                        TYPEOF R5 ; [+3]
       99 MOVE                             R7 R5
      100 GETIMPORT                        R6 K18 [typeof]
      102 CALL                             R6 1 1
      103 JUMPIFEQKS                       R6 K13 ["Vector3"] ; [+2]
      105 LOADB                            R3 0 +1
      106 LOADB                            R3 1
      107 JUMPIFNOT                        R3 ; [+3]
      108 GETTABLEKS                       R4 R2 K25 ["X"]
      110 JUMP                             ; [+4]
      111 GETTABLEKS                       R4 R2 K26 ["Position"]
      113 GETTABLEKS                       R4 R4 K25 ["X"]
      115 JUMPIFNOT                        R3 ; [+3]
      116 GETTABLEKS                       R5 R2 K27 ["Y"]
      118 JUMP                             ; [+4]
      119 GETTABLEKS                       R5 R2 K26 ["Position"]
      121 GETTABLEKS                       R5 R5 K27 ["Y"]
      123 JUMPIFNOT                        R3 ; [+3]
      124 GETTABLEKS                       R6 R2 K28 ["Z"]
      126 JUMP                             ; [+4]
      127 GETTABLEKS                       R6 R2 K26 ["Position"]
      129 GETTABLEKS                       R6 R6 K28 ["Z"]
      131 MOVE                             R7 R4
      132 MOVE                             R8 R5
      133 MOVE                             R9 R6
      134 LOADK                            R10 K29 [{0, 0, 0}]
      135 MOVE                             R11 R0
      136 LOADNIL                          R12
      137 LOADNIL                          R13
      138 FORGPREP                         R11
      139 JUMPIFNOT                        R3 ; [+2]
      140 MOVE                             R16 R15
      141 JUMP                             ; [+2]
      142 GETTABLEKS                       R16 R15 K26 ["Position"]
      144 GETTABLEKS                       R18 R16 K25 ["X"]
      146 FASTCALL2                        MATH_MIN R18 R4 ; [+4]
      148 MOVE                             R19 R4
      149 GETIMPORT                        R17 K32 [math.min]
      151 CALL                             R17 2 1
      152 MOVE                             R4 R17
      153 GETTABLEKS                       R18 R16 K25 ["X"]
      155 FASTCALL2                        MATH_MAX R18 R7 ; [+4]
      157 MOVE                             R19 R7
      158 GETIMPORT                        R17 K34 [math.max]
      160 CALL                             R17 2 1
      161 MOVE                             R7 R17
      162 GETTABLEKS                       R18 R16 K27 ["Y"]
      164 FASTCALL2                        MATH_MIN R18 R5 ; [+4]
      166 MOVE                             R19 R5
      167 GETIMPORT                        R17 K32 [math.min]
      169 CALL                             R17 2 1
      170 MOVE                             R5 R17
      171 GETTABLEKS                       R18 R16 K27 ["Y"]
      173 FASTCALL2                        MATH_MAX R18 R8 ; [+4]
      175 MOVE                             R19 R8
      176 GETIMPORT                        R17 K34 [math.max]
      178 CALL                             R17 2 1
      179 MOVE                             R8 R17
      180 GETTABLEKS                       R18 R16 K28 ["Z"]
      182 FASTCALL2                        MATH_MIN R18 R6 ; [+4]
      184 MOVE                             R19 R6
      185 GETIMPORT                        R17 K32 [math.min]
      187 CALL                             R17 2 1
      188 MOVE                             R6 R17
      189 GETTABLEKS                       R18 R16 K28 ["Z"]
      191 FASTCALL2                        MATH_MAX R18 R9 ; [+4]
      193 MOVE                             R19 R9
      194 GETIMPORT                        R17 K34 [math.max]
      196 CALL                             R17 2 1
      197 MOVE                             R9 R17
      198 ADD                              R10 R10 R16
      199 FORGLOOP                         R11 2 ; [-61]
      201 LENGTH                           R12 R0
      202 DIV                              R11 R10 R12
      203 DUPTABLE                         R12 K37 [{"Center", "Centroid", "Width", "Height", "Depth", "Top", "Bottom"}]
      204 ADD                              R15 R7 R4
      205 ADD                              R16 R8 R5
      206 ADD                              R17 R9 R6
      207 FASTCALL                         VECTOR ; [+2]
      208 GETIMPORT                        R14 K15 [Vector3.new]
      210 CALL                             R14 3 1
      211 DIVK                             R13 R14 K38 [2]
      212 SETTABLEKS                       R13 R12 K5 ["Center"]
      214 SETTABLEKS                       R11 R12 K6 ["Centroid"]
      216 SUB                              R14 R7 R4
      217 FASTCALL1                        MATH_ABS R14 ; [+2]
      218 GETIMPORT                        R13 K40 [math.abs]
      220 CALL                             R13 1 1
      221 SETTABLEKS                       R13 R12 K7 ["Width"]
      223 SUB                              R14 R8 R5
      224 FASTCALL1                        MATH_ABS R14 ; [+2]
      225 GETIMPORT                        R13 K40 [math.abs]
      227 CALL                             R13 1 1
      228 SETTABLEKS                       R13 R12 K9 ["Height"]
      230 SUB                              R14 R9 R6
      231 FASTCALL1                        MATH_ABS R14 ; [+2]
      232 GETIMPORT                        R13 K40 [math.abs]
      234 CALL                             R13 1 1
      235 SETTABLEKS                       R13 R12 K10 ["Depth"]
      237 DUPTABLE                         R13 K43 [{"Front", "Back"}]
      238 DUPTABLE                         R14 K46 [{"Left", "Right"}]
      239 FASTCALL3                        VECTOR R4 R8 R6
      241 MOVE                             R16 R4
      242 MOVE                             R17 R8
      243 MOVE                             R18 R6
      244 GETIMPORT                        R15 K15 [Vector3.new]
      246 CALL                             R15 3 1
      247 SETTABLEKS                       R15 R14 K44 ["Left"]
      249 FASTCALL3                        VECTOR R7 R8 R6
      251 MOVE                             R16 R7
      252 MOVE                             R17 R8
      253 MOVE                             R18 R6
      254 GETIMPORT                        R15 K15 [Vector3.new]
      256 CALL                             R15 3 1
      257 SETTABLEKS                       R15 R14 K45 ["Right"]
      259 SETTABLEKS                       R14 R13 K41 ["Front"]
      261 DUPTABLE                         R14 K46 [{"Left", "Right"}]
      262 FASTCALL3                        VECTOR R4 R8 R9
      264 MOVE                             R16 R4
      265 MOVE                             R17 R8
      266 MOVE                             R18 R9
      267 GETIMPORT                        R15 K15 [Vector3.new]
      269 CALL                             R15 3 1
      270 SETTABLEKS                       R15 R14 K44 ["Left"]
      272 FASTCALL3                        VECTOR R7 R8 R9
      274 MOVE                             R16 R7
      275 MOVE                             R17 R8
      276 MOVE                             R18 R9
      277 GETIMPORT                        R15 K15 [Vector3.new]
      279 CALL                             R15 3 1
      280 SETTABLEKS                       R15 R14 K45 ["Right"]
      282 SETTABLEKS                       R14 R13 K42 ["Back"]
      284 SETTABLEKS                       R13 R12 K35 ["Top"]
      286 DUPTABLE                         R13 K43 [{"Front", "Back"}]
      287 DUPTABLE                         R14 K46 [{"Left", "Right"}]
      288 FASTCALL3                        VECTOR R4 R5 R6
      290 MOVE                             R16 R4
      291 MOVE                             R17 R5
      292 MOVE                             R18 R6
      293 GETIMPORT                        R15 K15 [Vector3.new]
      295 CALL                             R15 3 1
      296 SETTABLEKS                       R15 R14 K44 ["Left"]
      298 FASTCALL3                        VECTOR R7 R5 R6
      300 MOVE                             R16 R7
      301 MOVE                             R17 R5
      302 MOVE                             R18 R6
      303 GETIMPORT                        R15 K15 [Vector3.new]
      305 CALL                             R15 3 1
      306 SETTABLEKS                       R15 R14 K45 ["Right"]
      308 SETTABLEKS                       R14 R13 K41 ["Front"]
      310 DUPTABLE                         R14 K46 [{"Left", "Right"}]
      311 FASTCALL3                        VECTOR R4 R5 R9
      313 MOVE                             R16 R4
      314 MOVE                             R17 R5
      315 MOVE                             R18 R9
      316 GETIMPORT                        R15 K15 [Vector3.new]
      318 CALL                             R15 3 1
      319 SETTABLEKS                       R15 R14 K44 ["Left"]
      321 FASTCALL3                        VECTOR R7 R5 R9
      323 MOVE                             R16 R7
      324 MOVE                             R17 R5
      325 MOVE                             R18 R9
      326 GETIMPORT                        R15 K15 [Vector3.new]
      328 CALL                             R15 3 1
      329 SETTABLEKS                       R15 R14 K45 ["Right"]
      331 SETTABLEKS                       R14 R13 K42 ["Back"]
      333 SETTABLEKS                       R13 R12 K36 ["Bottom"]
      335 GETTABLEKS                       R13 R12 K7 ["Width"]
      337 GETTABLEKS                       R14 R12 K9 ["Height"]
      339 JUMPIFNOTLE                      R14 R13 ; [+12]
      341 GETTABLEKS                       R13 R12 K7 ["Width"]
      343 GETTABLEKS                       R14 R12 K10 ["Depth"]
      345 JUMPIFNOTLE                      R14 R13 ; [+6]
      347 GETIMPORT                        R13 K49 [Enum.Axis.X]
      349 SETTABLEKS                       R13 R12 K50 ["Direction"]
      351 JUMP                             ; [+21]
      352 GETTABLEKS                       R13 R12 K9 ["Height"]
      354 GETTABLEKS                       R14 R12 K7 ["Width"]
      356 JUMPIFNOTLE                      R14 R13 ; [+12]
      358 GETTABLEKS                       R13 R12 K9 ["Height"]
      360 GETTABLEKS                       R14 R12 K10 ["Depth"]
      362 JUMPIFNOTLE                      R14 R13 ; [+6]
      364 GETIMPORT                        R13 K51 [Enum.Axis.Y]
      366 SETTABLEKS                       R13 R12 K50 ["Direction"]
      368 JUMP                             ; [+4]
      369 GETIMPORT                        R13 K52 [Enum.Axis.Z]
      371 SETTABLEKS                       R13 R12 K50 ["Direction"]
      373 GETIMPORT                        R13 K16 [CFrame.new]
      375 GETTABLEKS                       R14 R12 K5 ["Center"]
      377 CALL                             R13 1 1
      378 SETTABLEKS                       R13 R12 K11 ["CFrame"]
      380 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [script]
       16 GETTABLEKS                       R2 R2 K8 ["Parent"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K9 ["deepCopy"]
       22 CALL                             R3 1 1
       23 NEWTABLE                         R4 2 0
       25 DUPCLOSURE                       R5 K10 [PROTO_0]
       26 DUPCLOSURE                       R6 K11 [PROTO_1]
       27 DUPCLOSURE                       R7 K12 [PROTO_2]
       28 DUPCLOSURE                       R8 K13 [PROTO_3]
       29 DUPCLOSURE                       R9 K14 [PROTO_4]
       30 DUPCLOSURE                       R10 K15 [PROTO_5]
       31 DUPCLOSURE                       R11 K16 [PROTO_6]
       32 DUPCLOSURE                       R12 K17 [PROTO_7]
       33 CAPTURE                          VAL R4
       34 DUPCLOSURE                       R13 K18 [PROTO_8]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R12
       38 CAPTURE                          VAL R11
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R13 R4 K19 ["getWeightBalanceOrientedBoundingBox"]
       42 DUPCLOSURE                       R13 K20 [PROTO_9]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R13 R4 K21 ["getAxisAlignedBoundingBox"]
       46 RETURN                           R4 1
