PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["hidden"]
        2 GETTABLEKS                       R3 R3 K2 ["TopLeft"]
        4 GETTABLEKS                       R4 R0 K1 ["hidden"]
        6 GETTABLEKS                       R4 R4 K3 ["BottomRight"]
        8 ADD                              R2 R3 R4
        9 MULK                             R1 R2 K0 [0.5]
       10 SETTABLEKS                       R1 R0 K4 ["Center"]
       12 GETTABLEKS                       R1 R0 K1 ["hidden"]
       14 GETTABLEKS                       R2 R0 K1 ["hidden"]
       16 GETTABLEKS                       R2 R2 K2 ["TopLeft"]
       18 GETTABLEKS                       R2 R2 K5 ["X"]
       20 SETTABLEKS                       R2 R1 K6 ["Left"]
       22 GETTABLEKS                       R1 R0 K1 ["hidden"]
       24 GETTABLEKS                       R2 R0 K1 ["hidden"]
       26 GETTABLEKS                       R2 R2 K3 ["BottomRight"]
       28 GETTABLEKS                       R2 R2 K5 ["X"]
       30 SETTABLEKS                       R2 R1 K7 ["Right"]
       32 GETTABLEKS                       R1 R0 K1 ["hidden"]
       34 GETTABLEKS                       R2 R0 K1 ["hidden"]
       36 GETTABLEKS                       R2 R2 K2 ["TopLeft"]
       38 GETTABLEKS                       R2 R2 K8 ["Y"]
       40 SETTABLEKS                       R2 R1 K9 ["Top"]
       42 GETTABLEKS                       R1 R0 K1 ["hidden"]
       44 GETTABLEKS                       R2 R0 K1 ["hidden"]
       46 GETTABLEKS                       R2 R2 K3 ["BottomRight"]
       48 GETTABLEKS                       R2 R2 K8 ["Y"]
       50 SETTABLEKS                       R2 R1 K10 ["Bottom"]
       52 GETTABLEKS                       R1 R0 K1 ["hidden"]
       54 GETIMPORT                        R2 K13 [Vector2.new]
       56 GETTABLEKS                       R3 R0 K7 ["Right"]
       58 GETTABLEKS                       R4 R0 K9 ["Top"]
       60 CALL                             R2 2 1
       61 SETTABLEKS                       R2 R1 K14 ["TopRight"]
       63 GETTABLEKS                       R1 R0 K1 ["hidden"]
       65 GETIMPORT                        R2 K13 [Vector2.new]
       67 GETTABLEKS                       R3 R0 K6 ["Left"]
       69 GETTABLEKS                       R4 R0 K10 ["Bottom"]
       71 CALL                             R2 2 1
       72 SETTABLEKS                       R2 R1 K15 ["BottomLeft"]
       74 GETTABLEKS                       R2 R0 K1 ["hidden"]
       76 GETTABLEKS                       R2 R2 K7 ["Right"]
       78 GETTABLEKS                       R3 R0 K1 ["hidden"]
       80 GETTABLEKS                       R3 R3 K6 ["Left"]
       82 SUB                              R1 R2 R3
       83 SETTABLEKS                       R1 R0 K16 ["Width"]
       85 GETTABLEKS                       R2 R0 K1 ["hidden"]
       87 GETTABLEKS                       R2 R2 K10 ["Bottom"]
       89 GETTABLEKS                       R3 R0 K1 ["hidden"]
       91 GETTABLEKS                       R3 R3 K9 ["Top"]
       93 SUB                              R1 R2 R3
       94 SETTABLEKS                       R1 R0 K17 ["Height"]
       96 GETIMPORT                        R1 K13 [Vector2.new]
       98 GETTABLEKS                       R2 R0 K16 ["Width"]
      100 GETTABLEKS                       R3 R0 K17 ["Height"]
      102 CALL                             R1 2 1
      103 SETTABLEKS                       R1 R0 K18 ["Size"]
      105 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R3 1
        2 RETURN                           R3 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R3 K0 ["getGuiObjectsAtPoint"]
        7 CALL                             R3 2 1
        8 LOADN                            R6 1
        9 LENGTH                           R4 R3
       10 LOADN                            R5 1
       11 FORNPREP                         R4
       12 GETTABLE                         R7 R3 R6
       13 JUMPIFNOTEQ                      R7 R0 ; [+3]
       15 LOADB                            R7 1
       16 RETURN                           R7 1
       17 MOVE                             R7 R2
       18 GETTABLE                         R8 R3 R6
       19 CALL                             R7 1 1
       20 JUMPIF                           R7 ; [+2]
       21 LOADB                            R7 0
       22 RETURN                           R7 1
       23 FORNLOOP                         R4
       24 LOADB                            R4 0
       25 RETURN                           R4 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 1
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K0 ["getGuiObjectsAtPoint"]
        7 CALL                             R2 2 1
        8 LOADN                            R5 1
        9 LENGTH                           R3 R2
       10 LOADN                            R4 1
       11 FORNPREP                         R3
       12 GETTABLE                         R6 R2 R5
       13 JUMPIFNOTEQ                      R6 R0 ; [+3]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 GETUPVAL                         R6 1
       18 GETTABLE                         R8 R2 R5
       19 NAMECALL                         R6 R6 K1 ["canSeeThrough"]
       21 CALL                             R6 2 1
       22 JUMPIF                           R6 ; [+2]
       23 LOADB                            R6 0
       24 RETURN                           R6 1
       25 FORNLOOP                         R3
       26 LOADB                            R3 0
       27 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["hidden"]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R1
        4 GETTABLEKS                       R6 R0 K0 ["hidden"]
        6 GETTABLEKS                       R6 R6 K1 ["TopLeft"]
        8 MOVE                             R7 R2
        9 CALL                             R4 3 1
       10 SETTABLEKS                       R4 R3 K2 ["TopLeftVisible"]
       12 GETTABLEKS                       R3 R0 K0 ["hidden"]
       14 GETUPVAL                         R4 0
       15 MOVE                             R5 R1
       16 GETTABLEKS                       R6 R0 K0 ["hidden"]
       18 GETTABLEKS                       R6 R6 K3 ["TopRight"]
       20 MOVE                             R7 R2
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K4 ["TopRightVisible"]
       24 GETTABLEKS                       R3 R0 K0 ["hidden"]
       26 GETUPVAL                         R4 0
       27 MOVE                             R5 R1
       28 GETTABLEKS                       R6 R0 K0 ["hidden"]
       30 GETTABLEKS                       R6 R6 K5 ["BottomLeft"]
       32 MOVE                             R7 R2
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K6 ["BottomLeftVisible"]
       36 GETTABLEKS                       R3 R0 K0 ["hidden"]
       38 GETUPVAL                         R4 0
       39 MOVE                             R5 R1
       40 GETTABLEKS                       R6 R0 K0 ["hidden"]
       42 GETTABLEKS                       R6 R6 K7 ["BottomRight"]
       44 MOVE                             R7 R2
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K8 ["BottomRightVisible"]
       48 GETTABLEKS                       R3 R0 K0 ["hidden"]
       50 GETUPVAL                         R4 0
       51 MOVE                             R5 R1
       52 GETTABLEKS                       R6 R0 K9 ["Center"]
       54 MOVE                             R7 R2
       55 CALL                             R4 3 1
       56 SETTABLEKS                       R4 R3 K10 ["CenterVisible"]
       58 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["hidden"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 GETTABLEKS                       R5 R0 K0 ["hidden"]
        6 GETTABLEKS                       R5 R5 K1 ["TopLeft"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K2 ["TopLeftVisible"]
       11 GETTABLEKS                       R2 R0 K0 ["hidden"]
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R1
       15 GETTABLEKS                       R5 R0 K0 ["hidden"]
       17 GETTABLEKS                       R5 R5 K3 ["TopRight"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K4 ["TopRightVisible"]
       22 GETTABLEKS                       R2 R0 K0 ["hidden"]
       24 GETUPVAL                         R3 0
       25 MOVE                             R4 R1
       26 GETTABLEKS                       R5 R0 K0 ["hidden"]
       28 GETTABLEKS                       R5 R5 K5 ["BottomLeft"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K6 ["BottomLeftVisible"]
       33 GETTABLEKS                       R2 R0 K0 ["hidden"]
       35 GETUPVAL                         R3 0
       36 MOVE                             R4 R1
       37 GETTABLEKS                       R5 R0 K0 ["hidden"]
       39 GETTABLEKS                       R5 R5 K7 ["BottomRight"]
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K8 ["BottomRightVisible"]
       44 GETTABLEKS                       R2 R0 K0 ["hidden"]
       46 GETUPVAL                         R3 0
       47 MOVE                             R4 R1
       48 GETTABLEKS                       R5 R0 K9 ["Center"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K10 ["CenterVisible"]
       53 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 LOADN                            R4 1
        7 LENGTH                           R2 R1
        8 LOADN                            R3 1
        9 FORNPREP                         R2
       10 GETTABLEKS                       R5 R0 K0 ["hidden"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R8 R0 K0 ["hidden"]
       15 GETTABLEKS                       R8 R8 K1 ["TopLeft"]
       17 GETTABLE                         R9 R1 R4
       18 NAMECALL                         R6 R6 K2 ["minVector2"]
       20 CALL                             R6 3 1
       21 SETTABLEKS                       R6 R5 K1 ["TopLeft"]
       23 GETTABLEKS                       R5 R0 K0 ["hidden"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R8 R0 K0 ["hidden"]
       28 GETTABLEKS                       R8 R8 K3 ["BottomRight"]
       30 GETTABLE                         R9 R1 R4
       31 NAMECALL                         R6 R6 K4 ["maxVector2"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K3 ["BottomRight"]
       36 FORNLOOP                         R2
       37 GETUPVAL                         R2 1
       38 MOVE                             R3 R0
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 LENGTH                           R2 R1
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+25]
       10 GETTABLEKS                       R2 R0 K0 ["hidden"]
       12 GETTABLEN                        R3 R1 1
       13 SETTABLEKS                       R3 R2 K1 ["TopLeft"]
       15 GETTABLEKS                       R2 R0 K0 ["hidden"]
       17 GETTABLEN                        R3 R1 1
       18 SETTABLEKS                       R3 R2 K2 ["BottomRight"]
       20 GETIMPORT                        R2 K5 [table.remove]
       22 MOVE                             R3 R1
       23 LOADN                            R4 1
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 0
       26 MOVE                             R3 R0
       27 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       28 MOVE                             R5 R1
       29 GETIMPORT                        R4 K7 [unpack]
       31 CALL                             R4 1 -1
       32 CALL                             R2 -1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 1
       35 MOVE                             R3 R0
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["hidden"]
        2 GETTABLEKS                       R4 R0 K0 ["hidden"]
        4 GETTABLEKS                       R4 R4 K1 ["TopLeft"]
        6 ADD                              R3 R4 R1
        7 SETTABLEKS                       R3 R2 K1 ["TopLeft"]
        9 GETTABLEKS                       R2 R0 K0 ["hidden"]
       11 GETTABLEKS                       R4 R0 K0 ["hidden"]
       13 GETTABLEKS                       R4 R4 K2 ["BottomRight"]
       15 ADD                              R3 R4 R1
       16 SETTABLEKS                       R3 R2 K2 ["BottomRight"]
       18 GETUPVAL                         R2 0
       19 MOVE                             R3 R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["hidden"]
        2 GETTABLEKS                       R4 R0 K0 ["hidden"]
        4 GETTABLEKS                       R4 R4 K1 ["TopLeft"]
        6 ADD                              R3 R4 R1
        7 SETTABLEKS                       R3 R2 K2 ["BottomRight"]
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 MULK                             R2 R1 K0 [0.5]
        1 GETTABLEKS                       R4 R0 K1 ["TopLeft"]
        3 SUB                              R3 R4 R2
        4 SETTABLEKS                       R3 R0 K1 ["TopLeft"]
        6 GETTABLEKS                       R4 R0 K2 ["BottomRight"]
        8 ADD                              R3 R4 R2
        9 SETTABLEKS                       R3 R0 K2 ["BottomRight"]
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R0
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["canSeeThrough"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 JUMPIFNOTEQKS                    R1 K0 ["extend"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKS                    R1 K1 ["set"] ; [+3]
        6 GETUPVAL                         R2 1
        7 RETURN                           R2 1
        8 JUMPIFNOTEQKS                    R1 K2 ["TopLeft"] ; [+6]
       10 GETTABLEKS                       R2 R0 K3 ["hidden"]
       12 GETTABLEKS                       R2 R2 K2 ["TopLeft"]
       14 RETURN                           R2 1
       15 JUMPIFNOTEQKS                    R1 K4 ["BottomRight"] ; [+6]
       17 GETTABLEKS                       R2 R0 K3 ["hidden"]
       19 GETTABLEKS                       R2 R2 K4 ["BottomRight"]
       21 RETURN                           R2 1
       22 JUMPIFNOTEQKS                    R1 K5 ["TopRight"] ; [+6]
       24 GETTABLEKS                       R2 R0 K3 ["hidden"]
       26 GETTABLEKS                       R2 R2 K5 ["TopRight"]
       28 RETURN                           R2 1
       29 JUMPIFNOTEQKS                    R1 K6 ["BottomLeft"] ; [+6]
       31 GETTABLEKS                       R2 R0 K3 ["hidden"]
       33 GETTABLEKS                       R2 R2 K6 ["BottomLeft"]
       35 RETURN                           R2 1
       36 JUMPIFNOTEQKS                    R1 K7 ["Top"] ; [+6]
       38 GETTABLEKS                       R2 R0 K3 ["hidden"]
       40 GETTABLEKS                       R2 R2 K7 ["Top"]
       42 RETURN                           R2 1
       43 JUMPIFNOTEQKS                    R1 K8 ["Bottom"] ; [+6]
       45 GETTABLEKS                       R2 R0 K3 ["hidden"]
       47 GETTABLEKS                       R2 R2 K8 ["Bottom"]
       49 RETURN                           R2 1
       50 JUMPIFNOTEQKS                    R1 K9 ["Left"] ; [+6]
       52 GETTABLEKS                       R2 R0 K3 ["hidden"]
       54 GETTABLEKS                       R2 R2 K9 ["Left"]
       56 RETURN                           R2 1
       57 JUMPIFNOTEQKS                    R1 K10 ["Right"] ; [+6]
       59 GETTABLEKS                       R2 R0 K3 ["hidden"]
       61 GETTABLEKS                       R2 R2 K10 ["Right"]
       63 RETURN                           R2 1
       64 JUMPIFNOTEQKS                    R1 K11 ["TopLeftVisible"] ; [+7]
       66 GETUPVAL                         R2 2
       67 GETTABLEKS                       R2 R2 K3 ["hidden"]
       69 GETTABLEKS                       R2 R2 K11 ["TopLeftVisible"]
       71 RETURN                           R2 1
       72 JUMPIFNOTEQKS                    R1 K12 ["TopRightVisible"] ; [+7]
       74 GETUPVAL                         R2 2
       75 GETTABLEKS                       R2 R2 K3 ["hidden"]
       77 GETTABLEKS                       R2 R2 K12 ["TopRightVisible"]
       79 RETURN                           R2 1
       80 JUMPIFNOTEQKS                    R1 K13 ["BottomLeftVisible"] ; [+7]
       82 GETUPVAL                         R2 2
       83 GETTABLEKS                       R2 R2 K3 ["hidden"]
       85 GETTABLEKS                       R2 R2 K13 ["BottomLeftVisible"]
       87 RETURN                           R2 1
       88 JUMPIFNOTEQKS                    R1 K14 ["BottomRightVisible"] ; [+7]
       90 GETUPVAL                         R2 2
       91 GETTABLEKS                       R2 R2 K3 ["hidden"]
       93 GETTABLEKS                       R2 R2 K14 ["BottomRightVisible"]
       95 RETURN                           R2 1
       96 JUMPIFNOTEQKS                    R1 K15 ["TopVisible"] ; [+13]
       98 GETUPVAL                         R2 2
       99 GETTABLEKS                       R2 R2 K3 ["hidden"]
      101 GETTABLEKS                       R2 R2 K11 ["TopLeftVisible"]
      103 JUMPIF                           R2 ; [+5]
      104 GETUPVAL                         R2 2
      105 GETTABLEKS                       R2 R2 K3 ["hidden"]
      107 GETTABLEKS                       R2 R2 K12 ["TopRightVisible"]
      109 RETURN                           R2 1
      110 JUMPIFNOTEQKS                    R1 K16 ["BottomVisible"] ; [+13]
      112 GETUPVAL                         R2 2
      113 GETTABLEKS                       R2 R2 K3 ["hidden"]
      115 GETTABLEKS                       R2 R2 K13 ["BottomLeftVisible"]
      117 JUMPIF                           R2 ; [+5]
      118 GETUPVAL                         R2 2
      119 GETTABLEKS                       R2 R2 K3 ["hidden"]
      121 GETTABLEKS                       R2 R2 K14 ["BottomRightVisible"]
      123 RETURN                           R2 1
      124 JUMPIFNOTEQKS                    R1 K17 ["LeftVisible"] ; [+13]
      126 GETUPVAL                         R2 2
      127 GETTABLEKS                       R2 R2 K3 ["hidden"]
      129 GETTABLEKS                       R2 R2 K11 ["TopLeftVisible"]
      131 JUMPIF                           R2 ; [+5]
      132 GETUPVAL                         R2 2
      133 GETTABLEKS                       R2 R2 K3 ["hidden"]
      135 GETTABLEKS                       R2 R2 K13 ["BottomLeftVisible"]
      137 RETURN                           R2 1
      138 JUMPIFNOTEQKS                    R1 K18 ["RightVisible"] ; [+13]
      140 GETUPVAL                         R2 2
      141 GETTABLEKS                       R2 R2 K3 ["hidden"]
      143 GETTABLEKS                       R2 R2 K12 ["TopRightVisible"]
      145 JUMPIF                           R2 ; [+5]
      146 GETUPVAL                         R2 2
      147 GETTABLEKS                       R2 R2 K3 ["hidden"]
      149 GETTABLEKS                       R2 R2 K14 ["BottomRightVisible"]
      151 RETURN                           R2 1
      152 JUMPIFNOTEQKS                    R1 K19 ["CenterVisible"] ; [+7]
      154 GETUPVAL                         R2 2
      155 GETTABLEKS                       R2 R2 K3 ["hidden"]
      157 GETTABLEKS                       R2 R2 K19 ["CenterVisible"]
      159 RETURN                           R2 1
      160 JUMPIFNOTEQKS                    R1 K20 ["translate"] ; [+4]
      162 GETGLOBAL                        R2 K20 ["translate"]
      164 RETURN                           R2 1
      165 JUMPIFNOTEQKS                    R1 K21 ["resize"] ; [+4]
      167 GETGLOBAL                        R2 K21 ["resize"]
      169 RETURN                           R2 1
      170 JUMPIFNOTEQKS                    R1 K22 ["expandFromCenter"] ; [+4]
      172 GETGLOBAL                        R2 K22 ["expandFromCenter"]
      174 RETURN                           R2 1
      175 JUMPIFNOTEQKS                    R1 K23 ["refreshVisibility"] ; [+3]
      177 GETUPVAL                         R2 3
      178 RETURN                           R2 1
      179 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKS                    R1 K0 ["TopLeft"] ; [+6]
        2 GETTABLEKS                       R3 R0 K1 ["hidden"]
        4 SETTABLEKS                       R2 R3 K0 ["TopLeft"]
        6 JUMP                             ; [+124]
        7 JUMPIFNOTEQKS                    R1 K2 ["BottomRight"] ; [+6]
        9 GETTABLEKS                       R3 R0 K1 ["hidden"]
       11 SETTABLEKS                       R2 R3 K2 ["BottomRight"]
       13 JUMP                             ; [+117]
       14 JUMPIFNOTEQKS                    R1 K3 ["TopRight"] ; [+28]
       16 GETTABLEKS                       R3 R0 K1 ["hidden"]
       18 GETIMPORT                        R4 K6 [Vector2.new]
       20 GETTABLEKS                       R5 R0 K1 ["hidden"]
       22 GETTABLEKS                       R5 R5 K7 ["Left"]
       24 GETTABLEKS                       R6 R2 K8 ["Y"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K0 ["TopLeft"]
       29 GETTABLEKS                       R3 R0 K1 ["hidden"]
       31 GETIMPORT                        R4 K6 [Vector2.new]
       33 GETTABLEKS                       R5 R2 K9 ["X"]
       35 GETTABLEKS                       R6 R0 K1 ["hidden"]
       37 GETTABLEKS                       R6 R6 K10 ["Bottom"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K2 ["BottomRight"]
       42 JUMP                             ; [+88]
       43 JUMPIFNOTEQKS                    R1 K11 ["BottomLeft"] ; [+28]
       45 GETTABLEKS                       R3 R0 K1 ["hidden"]
       47 GETIMPORT                        R4 K6 [Vector2.new]
       49 GETTABLEKS                       R5 R2 K9 ["X"]
       51 GETTABLEKS                       R6 R0 K1 ["hidden"]
       53 GETTABLEKS                       R6 R6 K12 ["Top"]
       55 CALL                             R4 2 1
       56 SETTABLEKS                       R4 R3 K0 ["TopLeft"]
       58 GETTABLEKS                       R3 R0 K1 ["hidden"]
       60 GETIMPORT                        R4 K6 [Vector2.new]
       62 GETTABLEKS                       R5 R0 K1 ["hidden"]
       64 GETTABLEKS                       R5 R5 K13 ["Right"]
       66 GETTABLEKS                       R6 R2 K8 ["Y"]
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K2 ["BottomRight"]
       71 JUMP                             ; [+59]
       72 JUMPIFNOTEQKS                    R1 K12 ["Top"] ; [+14]
       74 GETTABLEKS                       R3 R0 K1 ["hidden"]
       76 GETIMPORT                        R4 K6 [Vector2.new]
       78 GETTABLEKS                       R5 R0 K1 ["hidden"]
       80 GETTABLEKS                       R5 R5 K7 ["Left"]
       82 MOVE                             R6 R2
       83 CALL                             R4 2 1
       84 SETTABLEKS                       R4 R3 K0 ["TopLeft"]
       86 JUMP                             ; [+44]
       87 JUMPIFNOTEQKS                    R1 K10 ["Bottom"] ; [+14]
       89 GETTABLEKS                       R3 R0 K1 ["hidden"]
       91 GETIMPORT                        R4 K6 [Vector2.new]
       93 GETTABLEKS                       R5 R0 K1 ["hidden"]
       95 GETTABLEKS                       R5 R5 K13 ["Right"]
       97 MOVE                             R6 R2
       98 CALL                             R4 2 1
       99 SETTABLEKS                       R4 R3 K2 ["BottomRight"]
      101 JUMP                             ; [+29]
      102 JUMPIFNOTEQKS                    R1 K7 ["Left"] ; [+14]
      104 GETTABLEKS                       R3 R0 K1 ["hidden"]
      106 GETIMPORT                        R4 K6 [Vector2.new]
      108 MOVE                             R5 R2
      109 GETTABLEKS                       R6 R0 K1 ["hidden"]
      111 GETTABLEKS                       R6 R6 K12 ["Top"]
      113 CALL                             R4 2 1
      114 SETTABLEKS                       R4 R3 K0 ["TopLeft"]
      116 JUMP                             ; [+14]
      117 JUMPIFNOTEQKS                    R1 K13 ["Right"] ; [+13]
      119 GETTABLEKS                       R3 R0 K1 ["hidden"]
      121 GETIMPORT                        R4 K6 [Vector2.new]
      123 MOVE                             R5 R2
      124 GETTABLEKS                       R6 R0 K1 ["hidden"]
      126 GETTABLEKS                       R6 R6 K10 ["Bottom"]
      128 CALL                             R4 2 1
      129 SETTABLEKS                       R4 R3 K2 ["BottomRight"]
      131 GETUPVAL                         R3 0
      132 MOVE                             R4 R0
      133 CALL                             R3 1 0
      134 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["map"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K1 ["mt"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["hidden"]
       15 GETTABLEKS                       R1 R0 K2 ["hidden"]
       17 GETIMPORT                        R2 K5 [Vector2.new]
       19 LOADN                            R3 0
       20 LOADN                            R4 0
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K6 ["TopLeft"]
       24 GETTABLEKS                       R1 R0 K2 ["hidden"]
       26 GETIMPORT                        R2 K5 [Vector2.new]
       28 LOADN                            R3 0
       29 LOADN                            R4 0
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K7 ["BottomRight"]
       33 GETUPVAL                         R1 0
       34 MOVE                             R2 R0
       35 GETVARARGS                       R3 -1
       36 CALL                             R1 -1 0
       37 DUPCLOSURE                       R1 K8 [PROTO_10]
       38 CAPTURE                          UPVAL U1
       39 GETUPVAL                         R2 2
       40 MOVE                             R3 R0
       41 LOADNIL                          R4
       42 MOVE                             R5 R1
       43 CALL                             R2 3 0
       44 NEWCLOSURE                       R2 P1
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U2
       49 GETTABLEKS                       R3 R0 K1 ["mt"]
       51 SETTABLEKS                       R2 R3 K9 ["__index"]
       53 DUPCLOSURE                       R2 K10 [PROTO_12]
       54 CAPTURE                          UPVAL U4
       55 GETTABLEKS                       R3 R0 K1 ["mt"]
       57 SETTABLEKS                       R2 R3 K11 ["__newindex"]
       59 GETTABLEKS                       R4 R0 K1 ["mt"]
       61 FASTCALL2                        SETMETATABLE R0 R4 ; [+4]
       63 MOVE                             R3 R0
       64 GETIMPORT                        R2 K13 [setmetatable]
       66 CALL                             R2 2 0
       67 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["cloneTable"]
        4 CALL                             R3 2 1
        5 GETGLOBAL                        R4 K1 ["translate"]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 CALL                             R4 2 0
       10 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["cloneTable"]
        4 CALL                             R3 2 1
        5 GETGLOBAL                        R4 K1 ["resize"]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 0
       10 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["cloneTable"]
        4 CALL                             R3 2 1
        5 GETGLOBAL                        R4 K1 ["expandFromCenter"]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 0
       10 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETIMPORT                        R3 K2 [Vector2.new]
        5 LOADN                            R4 0
        6 LOADN                            R5 0
        7 CALL                             R3 2 -1
        8 CALL                             R2 -1 1
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R2
       11 GETTABLEKS                       R5 R1 K3 ["AbsolutePosition"]
       13 GETTABLEKS                       R7 R1 K3 ["AbsolutePosition"]
       15 GETTABLEKS                       R8 R1 K4 ["AbsoluteSize"]
       17 ADD                              R6 R7 R8
       18 CALL                             R3 3 0
       19 RETURN                           R2 1

PROTO_18:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 GETIMPORT                        R3 K3 [Vector2.new]
       10 LOADN                            R4 0
       11 LOADN                            R5 0
       12 CALL                             R3 2 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R2
       16 GETTABLEN                        R5 R1 1
       17 GETTABLEKS                       R5 R5 K4 ["AbsolutePosition"]
       19 GETTABLEN                        R7 R1 1
       20 GETTABLEKS                       R7 R7 K4 ["AbsolutePosition"]
       22 GETTABLEN                        R8 R1 1
       23 GETTABLEKS                       R8 R8 K5 ["AbsoluteSize"]
       25 ADD                              R6 R7 R8
       26 CALL                             R3 3 0
       27 LOADN                            R5 2
       28 LENGTH                           R3 R1
       29 LOADN                            R4 1
       30 FORNPREP                         R3
       31 GETUPVAL                         R6 2
       32 MOVE                             R7 R2
       33 GETTABLE                         R8 R1 R5
       34 GETTABLEKS                       R8 R8 K4 ["AbsolutePosition"]
       36 GETTABLE                         R10 R1 R5
       37 GETTABLEKS                       R10 R10 K4 ["AbsolutePosition"]
       39 GETTABLE                         R11 R1 R5
       40 GETTABLEKS                       R11 R11 K5 ["AbsoluteSize"]
       42 ADD                              R9 R10 R11
       43 CALL                             R6 3 0
       44 FORNLOOP                         R3
       45 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FFlag"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["InstanceInfo"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Utility"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["Select"]
       36 CALL                             R3 1 1
       37 DUPCLOSURE                       R4 K9 [PROTO_0]
       38 DUPCLOSURE                       R5 K10 [PROTO_1]
       39 CAPTURE                          VAL R3
       40 DUPCLOSURE                       R6 K11 [PROTO_2]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 DUPCLOSURE                       R7 K12 [PROTO_3]
       44 CAPTURE                          VAL R5
       45 DUPCLOSURE                       R8 K13 [PROTO_4]
       46 CAPTURE                          VAL R6
       47 DUPCLOSURE                       R9 K14 [PROTO_5]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 DUPCLOSURE                       R10 K15 [PROTO_6]
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R4
       53 DUPCLOSURE                       R11 K16 [PROTO_7]
       54 CAPTURE                          VAL R4
       55 SETGLOBAL                        R11 K17 ["translate"]
       57 DUPCLOSURE                       R11 K18 [PROTO_8]
       58 CAPTURE                          VAL R4
       59 SETGLOBAL                        R11 K19 ["resize"]
       61 DUPCLOSURE                       R11 K20 [PROTO_9]
       62 CAPTURE                          VAL R4
       63 SETGLOBAL                        R11 K21 ["expandFromCenter"]
       65 NEWTABLE                         R11 8 0
       67 DUPCLOSURE                       R12 K22 [PROTO_13]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R12 R11 K23 ["new"]
       75 DUPCLOSURE                       R12 K24 [PROTO_14]
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R12 R11 K17 ["translate"]
       79 DUPCLOSURE                       R12 K25 [PROTO_15]
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R12 R11 K19 ["resize"]
       83 DUPCLOSURE                       R12 K26 [PROTO_16]
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R12 R11 K21 ["expandFromCenter"]
       87 DUPCLOSURE                       R12 K27 [PROTO_17]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R10
       90 SETTABLEKS                       R12 R11 K28 ["getExtentsFromGui"]
       92 DUPCLOSURE                       R12 K29 [PROTO_18]
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R12 R11 K30 ["getExtentsFromGuis"]
       98 RETURN                           R11 1
