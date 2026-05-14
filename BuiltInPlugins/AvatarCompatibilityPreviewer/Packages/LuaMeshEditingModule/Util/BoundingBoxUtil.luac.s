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
       54 JUMP                             ; [+13]
       55 LOADN                            R3 0
       56 MOVE                             R4 R0
       57 LOADNIL                          R5
       58 LOADNIL                          R6
       59 FORGPREP                         R4
       60 ADDK                             R3 R3 K17 [1]
       61 FORGLOOP                         R4 1 ; [-2]
       63 JUMPIFNOTEQKN                    R3 K17 [1] ; [+3]
       65 LOADB                            R2 1
       66 JUMP                             ; [+1]
       67 LOADB                            R2 0
       68 JUMPIFNOT                        R2 ; [+1]
       69 RETURN                           R1 1
       70 GETUPVAL                         R2 2
       71 MOVE                             R3 R0
       72 MOVE                             R4 R1
       73 CALL                             R2 2 1
       74 GETUPVAL                         R3 3
       75 MOVE                             R4 R2
       76 GETTABLEKS                       R5 R1 K18 ["Direction"]
       78 CALL                             R3 2 1
       79 GETUPVAL                         R4 4
       80 MOVE                             R5 R0
       81 CALL                             R4 1 1
       82 GETIMPORT                        R6 K1 [next]
       84 MOVE                             R7 R0
       85 CALL                             R6 1 2
       86 FASTCALL1                        TYPEOF R7 ; [+3]
       87 MOVE                             R9 R7
       88 GETIMPORT                        R8 K20 [typeof]
       90 CALL                             R8 1 1
       91 JUMPIFEQKS                       R8 K12 ["Vector3"] ; [+2]
       93 LOADB                            R5 0 +1
       94 LOADB                            R5 1
       95 MOVE                             R6 R4
       96 LOADNIL                          R7
       97 LOADNIL                          R8
       98 FORGPREP                         R6
       99 JUMPIFNOT                        R5 ; [+6]
      100 NAMECALL                         R12 R3 K21 ["inverse"]
      102 CALL                             R12 1 1
      103 MUL                              R11 R12 R10
      104 SETTABLE                         R11 R4 R9
      105 JUMP                             ; [+8]
      106 NAMECALL                         R12 R3 K21 ["inverse"]
      108 CALL                             R12 1 1
      109 GETTABLEKS                       R13 R10 K22 ["Position"]
      111 MUL                              R11 R12 R13
      112 SETTABLEKS                       R11 R10 K22 ["Position"]
      114 FORGLOOP                         R6 2 ; [-16]
      116 GETUPVAL                         R6 1
      117 GETTABLEKS                       R6 R6 K16 ["getAxisAlignedBoundingBox"]
      119 MOVE                             R7 R4
      120 CALL                             R6 1 1
      121 GETTABLEKS                       R8 R6 K5 ["Center"]
      123 MUL                              R7 R3 R8
      124 SETTABLEKS                       R7 R6 K5 ["Center"]
      126 GETTABLEKS                       R8 R6 K5 ["Center"]
      128 ADD                              R7 R3 R8
      129 SETTABLEKS                       R7 R6 K10 ["CFrame"]
      131 SETTABLEKS                       R2 R6 K18 ["Direction"]
      133 GETTABLEKS                       R7 R1 K6 ["Centroid"]
      135 SETTABLEKS                       R7 R6 K6 ["Centroid"]
      137 GETTABLEKS                       R7 R6 K23 ["Top"]
      139 LOADNIL                          R8
      140 LOADNIL                          R9
      141 FORGPREP                         R7
      142 MOVE                             R12 R11
      143 LOADNIL                          R13
      144 LOADNIL                          R14
      145 FORGPREP                         R12
      146 GETTABLEKS                       R18 R6 K23 ["Top"]
      148 GETTABLE                         R17 R18 R10
      149 MUL                              R18 R3 R16
      150 SETTABLE                         R18 R17 R15
      151 FORGLOOP                         R12 2 ; [-6]
      153 FORGLOOP                         R7 2 ; [-12]
      155 GETTABLEKS                       R7 R6 K24 ["Bottom"]
      157 LOADNIL                          R8
      158 LOADNIL                          R9
      159 FORGPREP                         R7
      160 MOVE                             R12 R11
      161 LOADNIL                          R13
      162 LOADNIL                          R14
      163 FORGPREP                         R12
      164 GETTABLEKS                       R18 R6 K24 ["Bottom"]
      166 GETTABLE                         R17 R18 R10
      167 MUL                              R18 R3 R16
      168 SETTABLE                         R18 R17 R15
      169 FORGLOOP                         R12 2 ; [-6]
      171 FORGLOOP                         R7 2 ; [-12]
      173 RETURN                           R6 1

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
      144 MOVE                             R11 R0
      145 LOADNIL                          R12
      146 LOADNIL                          R13
      147 FORGPREP                         R11
      148 JUMPIFNOT                        R3 ; [+2]
      149 MOVE                             R16 R15
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R16 R15 K25 ["Position"]
      153 GETTABLEKS                       R18 R16 K24 ["X"]
      155 FASTCALL2                        MATH_MIN R18 R4 ; [+4]
      157 MOVE                             R19 R4
      158 GETIMPORT                        R17 K31 [math.min]
      160 CALL                             R17 2 1
      161 MOVE                             R4 R17
      162 GETTABLEKS                       R18 R16 K24 ["X"]
      164 FASTCALL2                        MATH_MAX R18 R7 ; [+4]
      166 MOVE                             R19 R7
      167 GETIMPORT                        R17 K33 [math.max]
      169 CALL                             R17 2 1
      170 MOVE                             R7 R17
      171 GETTABLEKS                       R18 R16 K26 ["Y"]
      173 FASTCALL2                        MATH_MIN R18 R5 ; [+4]
      175 MOVE                             R19 R5
      176 GETIMPORT                        R17 K31 [math.min]
      178 CALL                             R17 2 1
      179 MOVE                             R5 R17
      180 GETTABLEKS                       R18 R16 K26 ["Y"]
      182 FASTCALL2                        MATH_MAX R18 R8 ; [+4]
      184 MOVE                             R19 R8
      185 GETIMPORT                        R17 K33 [math.max]
      187 CALL                             R17 2 1
      188 MOVE                             R8 R17
      189 GETTABLEKS                       R18 R16 K27 ["Z"]
      191 FASTCALL2                        MATH_MIN R18 R6 ; [+4]
      193 MOVE                             R19 R6
      194 GETIMPORT                        R17 K31 [math.min]
      196 CALL                             R17 2 1
      197 MOVE                             R6 R17
      198 GETTABLEKS                       R18 R16 K27 ["Z"]
      200 FASTCALL2                        MATH_MAX R18 R9 ; [+4]
      202 MOVE                             R19 R9
      203 GETIMPORT                        R17 K33 [math.max]
      205 CALL                             R17 2 1
      206 MOVE                             R9 R17
      207 ADD                              R10 R10 R16
      208 FORGLOOP                         R11 2 ; [-61]
      210 LENGTH                           R12 R0
      211 DIV                              R11 R10 R12
      212 DUPTABLE                         R12 K36 [{"Center", "Centroid", "Width", "Height", "Depth", "Top", "Bottom"}]
      213 ADD                              R15 R7 R4
      214 ADD                              R16 R8 R5
      215 ADD                              R17 R9 R6
      216 FASTCALL                         VECTOR ; [+2]
      217 GETIMPORT                        R14 K14 [Vector3.new]
      219 CALL                             R14 3 1
      220 DIVK                             R13 R14 K37 [2]
      221 SETTABLEKS                       R13 R12 K5 ["Center"]
      223 SETTABLEKS                       R11 R12 K6 ["Centroid"]
      225 SUB                              R14 R7 R4
      226 FASTCALL1                        MATH_ABS R14 ; [+2]
      227 GETIMPORT                        R13 K39 [math.abs]
      229 CALL                             R13 1 1
      230 SETTABLEKS                       R13 R12 K7 ["Width"]
      232 SUB                              R14 R8 R5
      233 FASTCALL1                        MATH_ABS R14 ; [+2]
      234 GETIMPORT                        R13 K39 [math.abs]
      236 CALL                             R13 1 1
      237 SETTABLEKS                       R13 R12 K8 ["Height"]
      239 SUB                              R14 R9 R6
      240 FASTCALL1                        MATH_ABS R14 ; [+2]
      241 GETIMPORT                        R13 K39 [math.abs]
      243 CALL                             R13 1 1
      244 SETTABLEKS                       R13 R12 K9 ["Depth"]
      246 DUPTABLE                         R13 K42 [{"Front", "Back"}]
      247 DUPTABLE                         R14 K45 [{"Left", "Right"}]
      248 FASTCALL3                        VECTOR R4 R8 R6
      250 MOVE                             R16 R4
      251 MOVE                             R17 R8
      252 MOVE                             R18 R6
      253 GETIMPORT                        R15 K14 [Vector3.new]
      255 CALL                             R15 3 1
      256 SETTABLEKS                       R15 R14 K43 ["Left"]
      258 FASTCALL3                        VECTOR R7 R8 R6
      260 MOVE                             R16 R7
      261 MOVE                             R17 R8
      262 MOVE                             R18 R6
      263 GETIMPORT                        R15 K14 [Vector3.new]
      265 CALL                             R15 3 1
      266 SETTABLEKS                       R15 R14 K44 ["Right"]
      268 SETTABLEKS                       R14 R13 K40 ["Front"]
      270 DUPTABLE                         R14 K45 [{"Left", "Right"}]
      271 FASTCALL3                        VECTOR R4 R8 R9
      273 MOVE                             R16 R4
      274 MOVE                             R17 R8
      275 MOVE                             R18 R9
      276 GETIMPORT                        R15 K14 [Vector3.new]
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K43 ["Left"]
      281 FASTCALL3                        VECTOR R7 R8 R9
      283 MOVE                             R16 R7
      284 MOVE                             R17 R8
      285 MOVE                             R18 R9
      286 GETIMPORT                        R15 K14 [Vector3.new]
      288 CALL                             R15 3 1
      289 SETTABLEKS                       R15 R14 K44 ["Right"]
      291 SETTABLEKS                       R14 R13 K41 ["Back"]
      293 SETTABLEKS                       R13 R12 K34 ["Top"]
      295 DUPTABLE                         R13 K42 [{"Front", "Back"}]
      296 DUPTABLE                         R14 K45 [{"Left", "Right"}]
      297 FASTCALL3                        VECTOR R4 R5 R6
      299 MOVE                             R16 R4
      300 MOVE                             R17 R5
      301 MOVE                             R18 R6
      302 GETIMPORT                        R15 K14 [Vector3.new]
      304 CALL                             R15 3 1
      305 SETTABLEKS                       R15 R14 K43 ["Left"]
      307 FASTCALL3                        VECTOR R7 R5 R6
      309 MOVE                             R16 R7
      310 MOVE                             R17 R5
      311 MOVE                             R18 R6
      312 GETIMPORT                        R15 K14 [Vector3.new]
      314 CALL                             R15 3 1
      315 SETTABLEKS                       R15 R14 K44 ["Right"]
      317 SETTABLEKS                       R14 R13 K40 ["Front"]
      319 DUPTABLE                         R14 K45 [{"Left", "Right"}]
      320 FASTCALL3                        VECTOR R4 R5 R9
      322 MOVE                             R16 R4
      323 MOVE                             R17 R5
      324 MOVE                             R18 R9
      325 GETIMPORT                        R15 K14 [Vector3.new]
      327 CALL                             R15 3 1
      328 SETTABLEKS                       R15 R14 K43 ["Left"]
      330 FASTCALL3                        VECTOR R7 R5 R9
      332 MOVE                             R16 R7
      333 MOVE                             R17 R5
      334 MOVE                             R18 R9
      335 GETIMPORT                        R15 K14 [Vector3.new]
      337 CALL                             R15 3 1
      338 SETTABLEKS                       R15 R14 K44 ["Right"]
      340 SETTABLEKS                       R14 R13 K41 ["Back"]
      342 SETTABLEKS                       R13 R12 K35 ["Bottom"]
      344 GETTABLEKS                       R13 R12 K7 ["Width"]
      346 GETTABLEKS                       R14 R12 K8 ["Height"]
      348 JUMPIFNOTLE                      R14 R13 ; [+12]
      350 GETTABLEKS                       R13 R12 K7 ["Width"]
      352 GETTABLEKS                       R14 R12 K9 ["Depth"]
      354 JUMPIFNOTLE                      R14 R13 ; [+6]
      356 GETIMPORT                        R13 K48 [Enum.Axis.X]
      358 SETTABLEKS                       R13 R12 K49 ["Direction"]
      360 JUMP                             ; [+21]
      361 GETTABLEKS                       R13 R12 K8 ["Height"]
      363 GETTABLEKS                       R14 R12 K7 ["Width"]
      365 JUMPIFNOTLE                      R14 R13 ; [+12]
      367 GETTABLEKS                       R13 R12 K8 ["Height"]
      369 GETTABLEKS                       R14 R12 K9 ["Depth"]
      371 JUMPIFNOTLE                      R14 R13 ; [+6]
      373 GETIMPORT                        R13 K50 [Enum.Axis.Y]
      375 SETTABLEKS                       R13 R12 K49 ["Direction"]
      377 JUMP                             ; [+4]
      378 GETIMPORT                        R13 K51 [Enum.Axis.Z]
      380 SETTABLEKS                       R13 R12 K49 ["Direction"]
      382 GETIMPORT                        R13 K15 [CFrame.new]
      384 GETTABLEKS                       R14 R12 K5 ["Center"]
      386 CALL                             R13 1 1
      387 SETTABLEKS                       R13 R12 K10 ["CFrame"]
      389 RETURN                           R12 1

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
