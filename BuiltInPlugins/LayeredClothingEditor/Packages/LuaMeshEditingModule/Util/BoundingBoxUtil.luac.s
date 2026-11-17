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
        4 GETIMPORT                        R2 K1 [pairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 ADDK                             R1 R1 K2 [1]
       10 FORGLOOP                         R2 1 ; [-2]
       12 JUMPIFNOTEQKN                    R1 K2 [1] ; [+3]
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 LOADB                            R2 0
       17 RETURN                           R2 1

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
       21 GETIMPORT                        R7 K8 [ipairs]
       23 MOVE                             R8 R0
       24 CALL                             R7 1 3
       25 FORGPREP_INEXT                   R7
       26 JUMPIFNOT                        R6 ; [+2]
       27 MOVE                             R12 R11
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R12 R11 K9 ["Position"]
       31 GETIMPORT                        R13 K13 [Enum.Axis.Z]
       33 JUMPIFNOTEQ                      R3 R13 ; [+23]
       35 GETTABLEKS                       R13 R12 K12 ["Z"]
       37 GETTABLEKS                       R14 R2 K12 ["Z"]
       39 JUMPIFNOTLE                      R14 R13 ; [+9]
       41 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       43 MOVE                             R14 R4
       44 MOVE                             R15 R12
       45 GETIMPORT                        R13 K16 [table.insert]
       47 CALL                             R13 2 0
       48 JUMP                             ; [+55]
       49 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       51 MOVE                             R14 R5
       52 MOVE                             R15 R12
       53 GETIMPORT                        R13 K16 [table.insert]
       55 CALL                             R13 2 0
       56 JUMP                             ; [+47]
       57 GETIMPORT                        R13 K18 [Enum.Axis.Y]
       59 JUMPIFNOTEQ                      R3 R13 ; [+23]
       61 GETTABLEKS                       R13 R12 K17 ["Y"]
       63 GETTABLEKS                       R14 R2 K17 ["Y"]
       65 JUMPIFNOTLE                      R14 R13 ; [+9]
       67 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       69 MOVE                             R14 R4
       70 MOVE                             R15 R12
       71 GETIMPORT                        R13 K16 [table.insert]
       73 CALL                             R13 2 0
       74 JUMP                             ; [+29]
       75 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       77 MOVE                             R14 R5
       78 MOVE                             R15 R12
       79 GETIMPORT                        R13 K16 [table.insert]
       81 CALL                             R13 2 0
       82 JUMP                             ; [+21]
       83 GETTABLEKS                       R13 R12 K19 ["X"]
       85 GETTABLEKS                       R14 R2 K19 ["X"]
       87 JUMPIFNOTLE                      R14 R13 ; [+9]
       89 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       91 MOVE                             R14 R4
       92 MOVE                             R15 R12
       93 GETIMPORT                        R13 K16 [table.insert]
       95 CALL                             R13 2 0
       96 JUMP                             ; [+7]
       97 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       99 MOVE                             R14 R5
      100 MOVE                             R15 R12
      101 GETIMPORT                        R13 K16 [table.insert]
      103 CALL                             R13 2 0
      104 FORGLOOP                         R7 2 [inext] ; [-79]
      106 GETUPVAL                         R7 0
      107 GETTABLEKS                       R7 R7 K20 ["getAxisAlignedBoundingBox"]
      109 MOVE                             R8 R4
      110 CALL                             R7 1 1
      111 GETUPVAL                         R8 0
      112 GETTABLEKS                       R8 R8 K20 ["getAxisAlignedBoundingBox"]
      114 MOVE                             R9 R5
      115 CALL                             R8 1 1
      116 GETTABLEKS                       R10 R7 K21 ["Centroid"]
      118 GETTABLEKS                       R11 R8 K21 ["Centroid"]
      120 SUB                              R9 R10 R11
      121 GETTABLEKS                       R9 R9 K22 ["Unit"]
      123 RETURN                           R9 1

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
       45 JUMP                             ; [+14]
       46 LOADN                            R3 0
       47 GETIMPORT                        R4 K19 [pairs]
       49 MOVE                             R5 R0
       50 CALL                             R4 1 3
       51 FORGPREP_NEXT                    R4
       52 ADDK                             R3 R3 K20 [1]
       53 FORGLOOP                         R4 1 ; [-2]
       55 JUMPIFNOTEQKN                    R3 K20 [1] ; [+3]
       57 LOADB                            R2 1
       58 JUMP                             ; [+1]
       59 LOADB                            R2 0
       60 JUMPIFNOT                        R2 ; [+1]
       61 RETURN                           R1 1
       62 GETUPVAL                         R2 2
       63 MOVE                             R3 R0
       64 MOVE                             R4 R1
       65 CALL                             R2 2 1
       66 GETUPVAL                         R3 3
       67 MOVE                             R4 R2
       68 GETTABLEKS                       R5 R1 K21 ["Direction"]
       70 CALL                             R3 2 1
       71 GETUPVAL                         R4 4
       72 MOVE                             R5 R0
       73 CALL                             R4 1 1
       74 GETIMPORT                        R6 K1 [next]
       76 MOVE                             R7 R0
       77 CALL                             R6 1 2
       78 FASTCALL1                        TYPEOF R7 ; [+3]
       79 MOVE                             R9 R7
       80 GETIMPORT                        R8 K23 [typeof]
       82 CALL                             R8 1 1
       83 JUMPIFEQKS                       R8 K13 ["Vector3"] ; [+2]
       85 LOADB                            R5 0 +1
       86 LOADB                            R5 1
       87 GETIMPORT                        R6 K19 [pairs]
       89 MOVE                             R7 R4
       90 CALL                             R6 1 3
       91 FORGPREP_NEXT                    R6
       92 JUMPIFNOT                        R5 ; [+6]
       93 NAMECALL                         R12 R3 K24 ["inverse"]
       95 CALL                             R12 1 1
       96 MUL                              R11 R12 R10
       97 SETTABLE                         R11 R4 R9
       98 JUMP                             ; [+8]
       99 NAMECALL                         R12 R3 K24 ["inverse"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R10 K25 ["Position"]
      104 MUL                              R11 R12 R13
      105 SETTABLEKS                       R11 R10 K25 ["Position"]
      107 FORGLOOP                         R6 2 ; [-16]
      109 GETUPVAL                         R6 1
      110 GETTABLEKS                       R6 R6 K17 ["getAxisAlignedBoundingBox"]
      112 MOVE                             R7 R4
      113 CALL                             R6 1 1
      114 GETTABLEKS                       R8 R6 K5 ["Center"]
      116 MUL                              R7 R3 R8
      117 SETTABLEKS                       R7 R6 K5 ["Center"]
      119 GETTABLEKS                       R8 R6 K5 ["Center"]
      121 ADD                              R7 R3 R8
      122 SETTABLEKS                       R7 R6 K11 ["CFrame"]
      124 SETTABLEKS                       R2 R6 K21 ["Direction"]
      126 GETTABLEKS                       R7 R1 K6 ["Centroid"]
      128 SETTABLEKS                       R7 R6 K6 ["Centroid"]
      130 GETIMPORT                        R7 K19 [pairs]
      132 GETTABLEKS                       R8 R6 K26 ["Top"]
      134 CALL                             R7 1 3
      135 FORGPREP_NEXT                    R7
      136 GETIMPORT                        R12 K19 [pairs]
      138 MOVE                             R13 R11
      139 CALL                             R12 1 3
      140 FORGPREP_NEXT                    R12
      141 GETTABLEKS                       R18 R6 K26 ["Top"]
      143 GETTABLE                         R17 R18 R10
      144 MUL                              R18 R3 R16
      145 SETTABLE                         R18 R17 R15
      146 FORGLOOP                         R12 2 ; [-6]
      148 FORGLOOP                         R7 2 ; [-13]
      150 GETIMPORT                        R7 K19 [pairs]
      152 GETTABLEKS                       R8 R6 K27 ["Bottom"]
      154 CALL                             R7 1 3
      155 FORGPREP_NEXT                    R7
      156 GETIMPORT                        R12 K19 [pairs]
      158 MOVE                             R13 R11
      159 CALL                             R12 1 3
      160 FORGPREP_NEXT                    R12
      161 GETTABLEKS                       R18 R6 K27 ["Bottom"]
      163 GETTABLE                         R17 R18 R10
      164 MUL                              R18 R3 R16
      165 SETTABLE                         R18 R17 R15
      166 FORGLOOP                         R12 2 ; [-6]
      168 FORGLOOP                         R7 2 ; [-13]
      170 RETURN                           R6 1

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
      135 GETIMPORT                        R11 K31 [ipairs]
      137 MOVE                             R12 R0
      138 CALL                             R11 1 3
      139 FORGPREP_INEXT                   R11
      140 JUMPIFNOT                        R3 ; [+2]
      141 MOVE                             R16 R15
      142 JUMP                             ; [+2]
      143 GETTABLEKS                       R16 R15 K26 ["Position"]
      145 GETTABLEKS                       R18 R16 K25 ["X"]
      147 FASTCALL2                        MATH_MIN R18 R4 ; [+4]
      149 MOVE                             R19 R4
      150 GETIMPORT                        R17 K34 [math.min]
      152 CALL                             R17 2 1
      153 MOVE                             R4 R17
      154 GETTABLEKS                       R18 R16 K25 ["X"]
      156 FASTCALL2                        MATH_MAX R18 R7 ; [+4]
      158 MOVE                             R19 R7
      159 GETIMPORT                        R17 K36 [math.max]
      161 CALL                             R17 2 1
      162 MOVE                             R7 R17
      163 GETTABLEKS                       R18 R16 K27 ["Y"]
      165 FASTCALL2                        MATH_MIN R18 R5 ; [+4]
      167 MOVE                             R19 R5
      168 GETIMPORT                        R17 K34 [math.min]
      170 CALL                             R17 2 1
      171 MOVE                             R5 R17
      172 GETTABLEKS                       R18 R16 K27 ["Y"]
      174 FASTCALL2                        MATH_MAX R18 R8 ; [+4]
      176 MOVE                             R19 R8
      177 GETIMPORT                        R17 K36 [math.max]
      179 CALL                             R17 2 1
      180 MOVE                             R8 R17
      181 GETTABLEKS                       R18 R16 K28 ["Z"]
      183 FASTCALL2                        MATH_MIN R18 R6 ; [+4]
      185 MOVE                             R19 R6
      186 GETIMPORT                        R17 K34 [math.min]
      188 CALL                             R17 2 1
      189 MOVE                             R6 R17
      190 GETTABLEKS                       R18 R16 K28 ["Z"]
      192 FASTCALL2                        MATH_MAX R18 R9 ; [+4]
      194 MOVE                             R19 R9
      195 GETIMPORT                        R17 K36 [math.max]
      197 CALL                             R17 2 1
      198 MOVE                             R9 R17
      199 ADD                              R10 R10 R16
      200 FORGLOOP                         R11 2 [inext] ; [-61]
      202 LENGTH                           R12 R0
      203 DIV                              R11 R10 R12
      204 DUPTABLE                         R12 K39 [{"Center", "Centroid", "Width", "Height", "Depth", "Top", "Bottom"}]
      205 ADD                              R15 R7 R4
      206 ADD                              R16 R8 R5
      207 ADD                              R17 R9 R6
      208 FASTCALL                         VECTOR ; [+2]
      209 GETIMPORT                        R14 K15 [Vector3.new]
      211 CALL                             R14 3 1
      212 DIVK                             R13 R14 K40 [2]
      213 SETTABLEKS                       R13 R12 K5 ["Center"]
      215 SETTABLEKS                       R11 R12 K6 ["Centroid"]
      217 SUB                              R14 R7 R4
      218 FASTCALL1                        MATH_ABS R14 ; [+2]
      219 GETIMPORT                        R13 K42 [math.abs]
      221 CALL                             R13 1 1
      222 SETTABLEKS                       R13 R12 K7 ["Width"]
      224 SUB                              R14 R8 R5
      225 FASTCALL1                        MATH_ABS R14 ; [+2]
      226 GETIMPORT                        R13 K42 [math.abs]
      228 CALL                             R13 1 1
      229 SETTABLEKS                       R13 R12 K9 ["Height"]
      231 SUB                              R14 R9 R6
      232 FASTCALL1                        MATH_ABS R14 ; [+2]
      233 GETIMPORT                        R13 K42 [math.abs]
      235 CALL                             R13 1 1
      236 SETTABLEKS                       R13 R12 K10 ["Depth"]
      238 DUPTABLE                         R13 K45 [{"Front", "Back"}]
      239 DUPTABLE                         R14 K48 [{"Left", "Right"}]
      240 FASTCALL3                        VECTOR R4 R8 R6
      242 MOVE                             R16 R4
      243 MOVE                             R17 R8
      244 MOVE                             R18 R6
      245 GETIMPORT                        R15 K15 [Vector3.new]
      247 CALL                             R15 3 1
      248 SETTABLEKS                       R15 R14 K46 ["Left"]
      250 FASTCALL3                        VECTOR R7 R8 R6
      252 MOVE                             R16 R7
      253 MOVE                             R17 R8
      254 MOVE                             R18 R6
      255 GETIMPORT                        R15 K15 [Vector3.new]
      257 CALL                             R15 3 1
      258 SETTABLEKS                       R15 R14 K47 ["Right"]
      260 SETTABLEKS                       R14 R13 K43 ["Front"]
      262 DUPTABLE                         R14 K48 [{"Left", "Right"}]
      263 FASTCALL3                        VECTOR R4 R8 R9
      265 MOVE                             R16 R4
      266 MOVE                             R17 R8
      267 MOVE                             R18 R9
      268 GETIMPORT                        R15 K15 [Vector3.new]
      270 CALL                             R15 3 1
      271 SETTABLEKS                       R15 R14 K46 ["Left"]
      273 FASTCALL3                        VECTOR R7 R8 R9
      275 MOVE                             R16 R7
      276 MOVE                             R17 R8
      277 MOVE                             R18 R9
      278 GETIMPORT                        R15 K15 [Vector3.new]
      280 CALL                             R15 3 1
      281 SETTABLEKS                       R15 R14 K47 ["Right"]
      283 SETTABLEKS                       R14 R13 K44 ["Back"]
      285 SETTABLEKS                       R13 R12 K37 ["Top"]
      287 DUPTABLE                         R13 K45 [{"Front", "Back"}]
      288 DUPTABLE                         R14 K48 [{"Left", "Right"}]
      289 FASTCALL3                        VECTOR R4 R5 R6
      291 MOVE                             R16 R4
      292 MOVE                             R17 R5
      293 MOVE                             R18 R6
      294 GETIMPORT                        R15 K15 [Vector3.new]
      296 CALL                             R15 3 1
      297 SETTABLEKS                       R15 R14 K46 ["Left"]
      299 FASTCALL3                        VECTOR R7 R5 R6
      301 MOVE                             R16 R7
      302 MOVE                             R17 R5
      303 MOVE                             R18 R6
      304 GETIMPORT                        R15 K15 [Vector3.new]
      306 CALL                             R15 3 1
      307 SETTABLEKS                       R15 R14 K47 ["Right"]
      309 SETTABLEKS                       R14 R13 K43 ["Front"]
      311 DUPTABLE                         R14 K48 [{"Left", "Right"}]
      312 FASTCALL3                        VECTOR R4 R5 R9
      314 MOVE                             R16 R4
      315 MOVE                             R17 R5
      316 MOVE                             R18 R9
      317 GETIMPORT                        R15 K15 [Vector3.new]
      319 CALL                             R15 3 1
      320 SETTABLEKS                       R15 R14 K46 ["Left"]
      322 FASTCALL3                        VECTOR R7 R5 R9
      324 MOVE                             R16 R7
      325 MOVE                             R17 R5
      326 MOVE                             R18 R9
      327 GETIMPORT                        R15 K15 [Vector3.new]
      329 CALL                             R15 3 1
      330 SETTABLEKS                       R15 R14 K47 ["Right"]
      332 SETTABLEKS                       R14 R13 K44 ["Back"]
      334 SETTABLEKS                       R13 R12 K38 ["Bottom"]
      336 GETTABLEKS                       R13 R12 K7 ["Width"]
      338 GETTABLEKS                       R14 R12 K9 ["Height"]
      340 JUMPIFNOTLE                      R14 R13 ; [+12]
      342 GETTABLEKS                       R13 R12 K7 ["Width"]
      344 GETTABLEKS                       R14 R12 K10 ["Depth"]
      346 JUMPIFNOTLE                      R14 R13 ; [+6]
      348 GETIMPORT                        R13 K51 [Enum.Axis.X]
      350 SETTABLEKS                       R13 R12 K52 ["Direction"]
      352 JUMP                             ; [+21]
      353 GETTABLEKS                       R13 R12 K9 ["Height"]
      355 GETTABLEKS                       R14 R12 K7 ["Width"]
      357 JUMPIFNOTLE                      R14 R13 ; [+12]
      359 GETTABLEKS                       R13 R12 K9 ["Height"]
      361 GETTABLEKS                       R14 R12 K10 ["Depth"]
      363 JUMPIFNOTLE                      R14 R13 ; [+6]
      365 GETIMPORT                        R13 K53 [Enum.Axis.Y]
      367 SETTABLEKS                       R13 R12 K52 ["Direction"]
      369 JUMP                             ; [+4]
      370 GETIMPORT                        R13 K54 [Enum.Axis.Z]
      372 SETTABLEKS                       R13 R12 K52 ["Direction"]
      374 GETIMPORT                        R13 K16 [CFrame.new]
      376 GETTABLEKS                       R14 R12 K5 ["Center"]
      378 CALL                             R13 1 1
      379 SETTABLEKS                       R13 R12 K11 ["CFrame"]
      381 RETURN                           R12 1

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
