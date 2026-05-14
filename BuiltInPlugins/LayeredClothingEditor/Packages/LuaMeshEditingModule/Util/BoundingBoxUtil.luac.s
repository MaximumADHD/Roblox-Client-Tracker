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
        0 DUPTABLE                         R0 K6 [{"Center", "Centroid", "Width", "Height", "Depth", "CFrame"}]
        1 FASTCALL                         VECTOR ; [+2]
        2 GETIMPORT                        R1 K9 [Vector3.new]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["Center"]
        7 FASTCALL                         VECTOR ; [+2]
        8 GETIMPORT                        R1 K9 [Vector3.new]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["Centroid"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K2 ["Width"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K3 ["Height"]
       19 LOADN                            R1 0
       20 SETTABLEKS                       R1 R0 K4 ["Depth"]
       22 GETIMPORT                        R1 K10 [CFrame.new]
       24 CALL                             R1 0 1
       25 SETTABLEKS                       R1 R0 K5 ["CFrame"]
       27 RETURN                           R0 1

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
       11 JUMPIFNOT                        R1 ; [+35]
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+4]
       15 GETIMPORT                        R1 K3 [warn]
       17 LOADK                            R2 K4 ["Points was empty"]
       18 CALL                             R1 1 0
       19 DUPTABLE                         R1 K11 [{"Center", "Centroid", "Width", "Height", "Depth", "CFrame"}]
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R2 K14 [Vector3.new]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K5 ["Center"]
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R2 K14 [Vector3.new]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K6 ["Centroid"]
       32 LOADN                            R2 0
       33 SETTABLEKS                       R2 R1 K7 ["Width"]
       35 LOADN                            R2 0
       36 SETTABLEKS                       R2 R1 K8 ["Height"]
       38 LOADN                            R2 0
       39 SETTABLEKS                       R2 R1 K9 ["Depth"]
       41 GETIMPORT                        R2 K15 [CFrame.new]
       43 CALL                             R2 0 1
       44 SETTABLEKS                       R2 R1 K10 ["CFrame"]
       46 RETURN                           R1 1
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K16 ["getAxisAlignedBoundingBox"]
       50 MOVE                             R2 R0
       51 CALL                             R1 1 1
       52 JUMPIF                           R0 ; [+2]
       53 LOADB                            R2 0
       54 JUMP                             ; [+14]
       55 LOADN                            R3 0
       56 GETIMPORT                        R4 K18 [pairs]
       58 MOVE                             R5 R0
       59 CALL                             R4 1 3
       60 FORGPREP_NEXT                    R4
       61 ADDK                             R3 R3 K19 [1]
       62 FORGLOOP                         R4 1 ; [-2]
       64 JUMPIFNOTEQKN                    R3 K19 [1] ; [+3]
       66 LOADB                            R2 1
       67 JUMP                             ; [+1]
       68 LOADB                            R2 0
       69 JUMPIFNOT                        R2 ; [+1]
       70 RETURN                           R1 1
       71 GETUPVAL                         R2 2
       72 MOVE                             R3 R0
       73 MOVE                             R4 R1
       74 CALL                             R2 2 1
       75 GETUPVAL                         R3 3
       76 MOVE                             R4 R2
       77 GETTABLEKS                       R5 R1 K20 ["Direction"]
       79 CALL                             R3 2 1
       80 GETUPVAL                         R4 4
       81 MOVE                             R5 R0
       82 CALL                             R4 1 1
       83 GETIMPORT                        R6 K1 [next]
       85 MOVE                             R7 R0
       86 CALL                             R6 1 2
       87 FASTCALL1                        TYPEOF R7 ; [+3]
       88 MOVE                             R9 R7
       89 GETIMPORT                        R8 K22 [typeof]
       91 CALL                             R8 1 1
       92 JUMPIFEQKS                       R8 K12 ["Vector3"] ; [+2]
       94 LOADB                            R5 0 +1
       95 LOADB                            R5 1
       96 GETIMPORT                        R6 K18 [pairs]
       98 MOVE                             R7 R4
       99 CALL                             R6 1 3
      100 FORGPREP_NEXT                    R6
      101 JUMPIFNOT                        R5 ; [+6]
      102 NAMECALL                         R12 R3 K23 ["inverse"]
      104 CALL                             R12 1 1
      105 MUL                              R11 R12 R10
      106 SETTABLE                         R11 R4 R9
      107 JUMP                             ; [+8]
      108 NAMECALL                         R12 R3 K23 ["inverse"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R13 R10 K24 ["Position"]
      113 MUL                              R11 R12 R13
      114 SETTABLEKS                       R11 R10 K24 ["Position"]
      116 FORGLOOP                         R6 2 ; [-16]
      118 GETUPVAL                         R6 1
      119 GETTABLEKS                       R6 R6 K16 ["getAxisAlignedBoundingBox"]
      121 MOVE                             R7 R4
      122 CALL                             R6 1 1
      123 GETTABLEKS                       R8 R6 K5 ["Center"]
      125 MUL                              R7 R3 R8
      126 SETTABLEKS                       R7 R6 K5 ["Center"]
      128 GETTABLEKS                       R8 R6 K5 ["Center"]
      130 ADD                              R7 R3 R8
      131 SETTABLEKS                       R7 R6 K10 ["CFrame"]
      133 SETTABLEKS                       R2 R6 K20 ["Direction"]
      135 GETTABLEKS                       R7 R1 K6 ["Centroid"]
      137 SETTABLEKS                       R7 R6 K6 ["Centroid"]
      139 GETIMPORT                        R7 K18 [pairs]
      141 GETTABLEKS                       R8 R6 K25 ["Top"]
      143 CALL                             R7 1 3
      144 FORGPREP_NEXT                    R7
      145 GETIMPORT                        R12 K18 [pairs]
      147 MOVE                             R13 R11
      148 CALL                             R12 1 3
      149 FORGPREP_NEXT                    R12
      150 GETTABLEKS                       R18 R6 K25 ["Top"]
      152 GETTABLE                         R17 R18 R10
      153 MUL                              R18 R3 R16
      154 SETTABLE                         R18 R17 R15
      155 FORGLOOP                         R12 2 ; [-6]
      157 FORGLOOP                         R7 2 ; [-13]
      159 GETIMPORT                        R7 K18 [pairs]
      161 GETTABLEKS                       R8 R6 K26 ["Bottom"]
      163 CALL                             R7 1 3
      164 FORGPREP_NEXT                    R7
      165 GETIMPORT                        R12 K18 [pairs]
      167 MOVE                             R13 R11
      168 CALL                             R12 1 3
      169 FORGPREP_NEXT                    R12
      170 GETTABLEKS                       R18 R6 K26 ["Bottom"]
      172 GETTABLE                         R17 R18 R10
      173 MUL                              R18 R3 R16
      174 SETTABLE                         R18 R17 R15
      175 FORGLOOP                         R12 2 ; [-6]
      177 FORGLOOP                         R7 2 ; [-13]
      179 RETURN                           R6 1

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
       11 JUMPIFNOT                        R1 ; [+35]
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+4]
       15 GETIMPORT                        R1 K3 [warn]
       17 LOADK                            R2 K4 ["Points was empty"]
       18 CALL                             R1 1 0
       19 DUPTABLE                         R1 K11 [{"Center", "Centroid", "Width", "Height", "Depth", "CFrame"}]
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R2 K14 [Vector3.new]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K5 ["Center"]
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R2 K14 [Vector3.new]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K6 ["Centroid"]
       32 LOADN                            R2 0
       33 SETTABLEKS                       R2 R1 K7 ["Width"]
       35 LOADN                            R2 0
       36 SETTABLEKS                       R2 R1 K8 ["Height"]
       38 LOADN                            R2 0
       39 SETTABLEKS                       R2 R1 K9 ["Depth"]
       41 GETIMPORT                        R2 K15 [CFrame.new]
       43 CALL                             R2 0 1
       44 SETTABLEKS                       R2 R1 K10 ["CFrame"]
       46 RETURN                           R1 1
       47 GETIMPORT                        R3 K1 [next]
       49 MOVE                             R4 R0
       50 CALL                             R3 1 2
       51 FASTCALL1                        TYPEOF R4 ; [+3]
       52 MOVE                             R6 R4
       53 GETIMPORT                        R5 K17 [typeof]
       55 CALL                             R5 1 1
       56 JUMPIFEQKS                       R5 K12 ["Vector3"] ; [+2]
       58 LOADB                            R2 0 +1
       59 LOADB                            R2 1
       60 JUMPIF                           R2 ; [+32]
       61 GETIMPORT                        R3 K1 [next]
       63 MOVE                             R4 R0
       64 CALL                             R3 1 2
       65 FASTCALL1                        TYPEOF R4 ; [+3]
       66 MOVE                             R6 R4
       67 GETIMPORT                        R5 K17 [typeof]
       69 CALL                             R5 1 1
       70 JUMPIFNOTEQKS                    R5 K18 ["Instance"] ; [+7]
       72 LOADK                            R7 K19 ["BasePart"]
       73 NAMECALL                         R5 R4 K20 ["IsA"]
       75 CALL                             R5 2 1
       76 MOVE                             R2 R5
       77 JUMP                             ; [+1]
       78 LOADB                            R2 0
       79 JUMPIF                           R2 ; [+13]
       80 GETIMPORT                        R3 K1 [next]
       82 MOVE                             R4 R0
       83 CALL                             R3 1 2
       84 FASTCALL1                        TYPEOF R4 ; [+3]
       85 MOVE                             R6 R4
       86 GETIMPORT                        R5 K17 [typeof]
       88 CALL                             R5 1 1
       89 JUMPIFEQKS                       R5 K10 ["CFrame"] ; [+2]
       91 LOADB                            R2 0 +1
       92 LOADB                            R2 1
       93 FASTCALL2K                       ASSERT R2 K21 ; [+4]
       95 LOADK                            R3 K21 ["Array of points must be: BaseParts, Vector3's, or CFrames"]
       96 GETIMPORT                        R1 K23 [assert]
       98 CALL                             R1 2 0
       99 GETIMPORT                        R1 K1 [next]
      101 MOVE                             R2 R0
      102 CALL                             R1 1 2
      103 GETIMPORT                        R4 K1 [next]
      105 MOVE                             R5 R0
      106 CALL                             R4 1 2
      107 FASTCALL1                        TYPEOF R5 ; [+3]
      108 MOVE                             R7 R5
      109 GETIMPORT                        R6 K17 [typeof]
      111 CALL                             R6 1 1
      112 JUMPIFEQKS                       R6 K12 ["Vector3"] ; [+2]
      114 LOADB                            R3 0 +1
      115 LOADB                            R3 1
      116 JUMPIFNOT                        R3 ; [+3]
      117 GETTABLEKS                       R4 R2 K24 ["X"]
      119 JUMP                             ; [+4]
      120 GETTABLEKS                       R4 R2 K25 ["Position"]
      122 GETTABLEKS                       R4 R4 K24 ["X"]
      124 JUMPIFNOT                        R3 ; [+3]
      125 GETTABLEKS                       R5 R2 K26 ["Y"]
      127 JUMP                             ; [+4]
      128 GETTABLEKS                       R5 R2 K25 ["Position"]
      130 GETTABLEKS                       R5 R5 K26 ["Y"]
      132 JUMPIFNOT                        R3 ; [+3]
      133 GETTABLEKS                       R6 R2 K27 ["Z"]
      135 JUMP                             ; [+4]
      136 GETTABLEKS                       R6 R2 K25 ["Position"]
      138 GETTABLEKS                       R6 R6 K27 ["Z"]
      140 MOVE                             R7 R4
      141 MOVE                             R8 R5
      142 MOVE                             R9 R6
      143 LOADK                            R10 K28 [{0, 0, 0}]
      144 GETIMPORT                        R11 K30 [ipairs]
      146 MOVE                             R12 R0
      147 CALL                             R11 1 3
      148 FORGPREP_INEXT                   R11
      149 JUMPIFNOT                        R3 ; [+2]
      150 MOVE                             R16 R15
      151 JUMP                             ; [+2]
      152 GETTABLEKS                       R16 R15 K25 ["Position"]
      154 GETTABLEKS                       R18 R16 K24 ["X"]
      156 FASTCALL2                        MATH_MIN R18 R4 ; [+4]
      158 MOVE                             R19 R4
      159 GETIMPORT                        R17 K33 [math.min]
      161 CALL                             R17 2 1
      162 MOVE                             R4 R17
      163 GETTABLEKS                       R18 R16 K24 ["X"]
      165 FASTCALL2                        MATH_MAX R18 R7 ; [+4]
      167 MOVE                             R19 R7
      168 GETIMPORT                        R17 K35 [math.max]
      170 CALL                             R17 2 1
      171 MOVE                             R7 R17
      172 GETTABLEKS                       R18 R16 K26 ["Y"]
      174 FASTCALL2                        MATH_MIN R18 R5 ; [+4]
      176 MOVE                             R19 R5
      177 GETIMPORT                        R17 K33 [math.min]
      179 CALL                             R17 2 1
      180 MOVE                             R5 R17
      181 GETTABLEKS                       R18 R16 K26 ["Y"]
      183 FASTCALL2                        MATH_MAX R18 R8 ; [+4]
      185 MOVE                             R19 R8
      186 GETIMPORT                        R17 K35 [math.max]
      188 CALL                             R17 2 1
      189 MOVE                             R8 R17
      190 GETTABLEKS                       R18 R16 K27 ["Z"]
      192 FASTCALL2                        MATH_MIN R18 R6 ; [+4]
      194 MOVE                             R19 R6
      195 GETIMPORT                        R17 K33 [math.min]
      197 CALL                             R17 2 1
      198 MOVE                             R6 R17
      199 GETTABLEKS                       R18 R16 K27 ["Z"]
      201 FASTCALL2                        MATH_MAX R18 R9 ; [+4]
      203 MOVE                             R19 R9
      204 GETIMPORT                        R17 K35 [math.max]
      206 CALL                             R17 2 1
      207 MOVE                             R9 R17
      208 ADD                              R10 R10 R16
      209 FORGLOOP                         R11 2 [inext] ; [-61]
      211 LENGTH                           R12 R0
      212 DIV                              R11 R10 R12
      213 DUPTABLE                         R12 K38 [{"Center", "Centroid", "Width", "Height", "Depth", "Top", "Bottom"}]
      214 ADD                              R15 R7 R4
      215 ADD                              R16 R8 R5
      216 ADD                              R17 R9 R6
      217 FASTCALL                         VECTOR ; [+2]
      218 GETIMPORT                        R14 K14 [Vector3.new]
      220 CALL                             R14 3 1
      221 DIVK                             R13 R14 K39 [2]
      222 SETTABLEKS                       R13 R12 K5 ["Center"]
      224 SETTABLEKS                       R11 R12 K6 ["Centroid"]
      226 SUB                              R14 R7 R4
      227 FASTCALL1                        MATH_ABS R14 ; [+2]
      228 GETIMPORT                        R13 K41 [math.abs]
      230 CALL                             R13 1 1
      231 SETTABLEKS                       R13 R12 K7 ["Width"]
      233 SUB                              R14 R8 R5
      234 FASTCALL1                        MATH_ABS R14 ; [+2]
      235 GETIMPORT                        R13 K41 [math.abs]
      237 CALL                             R13 1 1
      238 SETTABLEKS                       R13 R12 K8 ["Height"]
      240 SUB                              R14 R9 R6
      241 FASTCALL1                        MATH_ABS R14 ; [+2]
      242 GETIMPORT                        R13 K41 [math.abs]
      244 CALL                             R13 1 1
      245 SETTABLEKS                       R13 R12 K9 ["Depth"]
      247 DUPTABLE                         R13 K44 [{"Front", "Back"}]
      248 DUPTABLE                         R14 K47 [{"Left", "Right"}]
      249 FASTCALL3                        VECTOR R4 R8 R6
      251 MOVE                             R16 R4
      252 MOVE                             R17 R8
      253 MOVE                             R18 R6
      254 GETIMPORT                        R15 K14 [Vector3.new]
      256 CALL                             R15 3 1
      257 SETTABLEKS                       R15 R14 K45 ["Left"]
      259 FASTCALL3                        VECTOR R7 R8 R6
      261 MOVE                             R16 R7
      262 MOVE                             R17 R8
      263 MOVE                             R18 R6
      264 GETIMPORT                        R15 K14 [Vector3.new]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K46 ["Right"]
      269 SETTABLEKS                       R14 R13 K42 ["Front"]
      271 DUPTABLE                         R14 K47 [{"Left", "Right"}]
      272 FASTCALL3                        VECTOR R4 R8 R9
      274 MOVE                             R16 R4
      275 MOVE                             R17 R8
      276 MOVE                             R18 R9
      277 GETIMPORT                        R15 K14 [Vector3.new]
      279 CALL                             R15 3 1
      280 SETTABLEKS                       R15 R14 K45 ["Left"]
      282 FASTCALL3                        VECTOR R7 R8 R9
      284 MOVE                             R16 R7
      285 MOVE                             R17 R8
      286 MOVE                             R18 R9
      287 GETIMPORT                        R15 K14 [Vector3.new]
      289 CALL                             R15 3 1
      290 SETTABLEKS                       R15 R14 K46 ["Right"]
      292 SETTABLEKS                       R14 R13 K43 ["Back"]
      294 SETTABLEKS                       R13 R12 K36 ["Top"]
      296 DUPTABLE                         R13 K44 [{"Front", "Back"}]
      297 DUPTABLE                         R14 K47 [{"Left", "Right"}]
      298 FASTCALL3                        VECTOR R4 R5 R6
      300 MOVE                             R16 R4
      301 MOVE                             R17 R5
      302 MOVE                             R18 R6
      303 GETIMPORT                        R15 K14 [Vector3.new]
      305 CALL                             R15 3 1
      306 SETTABLEKS                       R15 R14 K45 ["Left"]
      308 FASTCALL3                        VECTOR R7 R5 R6
      310 MOVE                             R16 R7
      311 MOVE                             R17 R5
      312 MOVE                             R18 R6
      313 GETIMPORT                        R15 K14 [Vector3.new]
      315 CALL                             R15 3 1
      316 SETTABLEKS                       R15 R14 K46 ["Right"]
      318 SETTABLEKS                       R14 R13 K42 ["Front"]
      320 DUPTABLE                         R14 K47 [{"Left", "Right"}]
      321 FASTCALL3                        VECTOR R4 R5 R9
      323 MOVE                             R16 R4
      324 MOVE                             R17 R5
      325 MOVE                             R18 R9
      326 GETIMPORT                        R15 K14 [Vector3.new]
      328 CALL                             R15 3 1
      329 SETTABLEKS                       R15 R14 K45 ["Left"]
      331 FASTCALL3                        VECTOR R7 R5 R9
      333 MOVE                             R16 R7
      334 MOVE                             R17 R5
      335 MOVE                             R18 R9
      336 GETIMPORT                        R15 K14 [Vector3.new]
      338 CALL                             R15 3 1
      339 SETTABLEKS                       R15 R14 K46 ["Right"]
      341 SETTABLEKS                       R14 R13 K43 ["Back"]
      343 SETTABLEKS                       R13 R12 K37 ["Bottom"]
      345 GETTABLEKS                       R13 R12 K7 ["Width"]
      347 GETTABLEKS                       R14 R12 K8 ["Height"]
      349 JUMPIFNOTLE                      R14 R13 ; [+12]
      351 GETTABLEKS                       R13 R12 K7 ["Width"]
      353 GETTABLEKS                       R14 R12 K9 ["Depth"]
      355 JUMPIFNOTLE                      R14 R13 ; [+6]
      357 GETIMPORT                        R13 K50 [Enum.Axis.X]
      359 SETTABLEKS                       R13 R12 K51 ["Direction"]
      361 JUMP                             ; [+21]
      362 GETTABLEKS                       R13 R12 K8 ["Height"]
      364 GETTABLEKS                       R14 R12 K7 ["Width"]
      366 JUMPIFNOTLE                      R14 R13 ; [+12]
      368 GETTABLEKS                       R13 R12 K8 ["Height"]
      370 GETTABLEKS                       R14 R12 K9 ["Depth"]
      372 JUMPIFNOTLE                      R14 R13 ; [+6]
      374 GETIMPORT                        R13 K52 [Enum.Axis.Y]
      376 SETTABLEKS                       R13 R12 K51 ["Direction"]
      378 JUMP                             ; [+4]
      379 GETIMPORT                        R13 K53 [Enum.Axis.Z]
      381 SETTABLEKS                       R13 R12 K51 ["Direction"]
      383 GETIMPORT                        R13 K15 [CFrame.new]
      385 GETTABLEKS                       R14 R12 K5 ["Center"]
      387 CALL                             R13 1 1
      388 SETTABLEKS                       R13 R12 K10 ["CFrame"]
      390 RETURN                           R12 1

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
