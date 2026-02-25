PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R1 2
        2 MOVE                             R6 R0
        3 NAMECALL                         R4 R3 K0 ["pointToObjectSpace"]
        5 CALL                             R4 2 1
        6 MOVE                             R0 R4
        7 JUMPIF                           R1 ; [+2]
        8 MOVE                             R1 R0
        9 JUMP                             ; [+5]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R3 K0 ["pointToObjectSpace"]
       13 CALL                             R4 2 1
       14 MOVE                             R1 R4
       15 JUMPIF                           R2 ; [+2]
       16 MOVE                             R2 R0
       17 JUMP                             ; [+5]
       18 MOVE                             R6 R2
       19 NAMECALL                         R4 R3 K0 ["pointToObjectSpace"]
       21 CALL                             R4 2 1
       22 MOVE                             R2 R4
       23 GETTABLEKS                       R4 R0 K1 ["x"]
       25 GETTABLEKS                       R5 R1 K1 ["x"]
       27 JUMPIFNOTLT                      R4 R5 ; [+12]
       29 GETTABLEKS                       R5 R0 K1 ["x"]
       31 GETTABLEKS                       R6 R1 K2 ["y"]
       33 GETTABLEKS                       R7 R1 K3 ["z"]
       35 FASTCALL                         VECTOR ; [+2]
       36 GETIMPORT                        R4 K6 [Vector3.new]
       38 CALL                             R4 3 1
       39 MOVE                             R1 R4
       40 GETTABLEKS                       R4 R0 K2 ["y"]
       42 GETTABLEKS                       R5 R1 K2 ["y"]
       44 JUMPIFNOTLT                      R4 R5 ; [+12]
       46 GETTABLEKS                       R5 R1 K1 ["x"]
       48 GETTABLEKS                       R6 R0 K2 ["y"]
       50 GETTABLEKS                       R7 R1 K3 ["z"]
       52 FASTCALL                         VECTOR ; [+2]
       53 GETIMPORT                        R4 K6 [Vector3.new]
       55 CALL                             R4 3 1
       56 MOVE                             R1 R4
       57 GETTABLEKS                       R4 R0 K3 ["z"]
       59 GETTABLEKS                       R5 R1 K3 ["z"]
       61 JUMPIFNOTLT                      R4 R5 ; [+12]
       63 GETTABLEKS                       R5 R1 K1 ["x"]
       65 GETTABLEKS                       R6 R1 K2 ["y"]
       67 GETTABLEKS                       R7 R0 K3 ["z"]
       69 FASTCALL                         VECTOR ; [+2]
       70 GETIMPORT                        R4 K6 [Vector3.new]
       72 CALL                             R4 3 1
       73 MOVE                             R1 R4
       74 GETTABLEKS                       R4 R0 K1 ["x"]
       76 GETTABLEKS                       R5 R2 K1 ["x"]
       78 JUMPIFNOTLT                      R5 R4 ; [+12]
       80 GETTABLEKS                       R5 R0 K1 ["x"]
       82 GETTABLEKS                       R6 R2 K2 ["y"]
       84 GETTABLEKS                       R7 R2 K3 ["z"]
       86 FASTCALL                         VECTOR ; [+2]
       87 GETIMPORT                        R4 K6 [Vector3.new]
       89 CALL                             R4 3 1
       90 MOVE                             R2 R4
       91 GETTABLEKS                       R4 R0 K2 ["y"]
       93 GETTABLEKS                       R5 R2 K2 ["y"]
       95 JUMPIFNOTLT                      R5 R4 ; [+12]
       97 GETTABLEKS                       R5 R2 K1 ["x"]
       99 GETTABLEKS                       R6 R0 K2 ["y"]
      101 GETTABLEKS                       R7 R2 K3 ["z"]
      103 FASTCALL                         VECTOR ; [+2]
      104 GETIMPORT                        R4 K6 [Vector3.new]
      106 CALL                             R4 3 1
      107 MOVE                             R2 R4
      108 GETTABLEKS                       R4 R0 K3 ["z"]
      110 GETTABLEKS                       R5 R2 K3 ["z"]
      112 JUMPIFNOTLT                      R5 R4 ; [+12]
      114 GETTABLEKS                       R5 R2 K1 ["x"]
      116 GETTABLEKS                       R6 R2 K2 ["y"]
      118 GETTABLEKS                       R7 R0 K3 ["z"]
      120 FASTCALL                         VECTOR ; [+2]
      121 GETIMPORT                        R4 K6 [Vector3.new]
      123 CALL                             R4 3 1
      124 MOVE                             R2 R4
      125 MOVE                             R6 R1
      126 NAMECALL                         R4 R3 K7 ["pointToWorldSpace"]
      128 CALL                             R4 2 1
      129 MOVE                             R1 R4
      130 MOVE                             R6 R2
      131 NAMECALL                         R4 R3 K7 ["pointToWorldSpace"]
      133 CALL                             R4 2 1
      134 MOVE                             R2 R4
      135 RETURN                           R1 2

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["Lower"]
        2 JUMPIF                           R4 ; [+11]
        3 GETTABLEKS                       R4 R0 K1 ["Upper"]
        5 JUMPIF                           R4 ; [+8]
        6 DUPTABLE                         R4 K2 [{"Lower", "Upper"}]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K0 ["Lower"]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K1 ["Upper"]
       13 RETURN                           R4 1
       14 JUMPIF                           R1 ; [+2]
       15 GETTABLEKS                       R1 R0 K0 ["Lower"]
       17 JUMPIF                           R2 ; [+2]
       18 GETTABLEKS                       R2 R0 K1 ["Upper"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K3 ["minVector3"]
       23 GETTABLEKS                       R5 R0 K0 ["Lower"]
       25 MOVE                             R6 R1
       26 CALL                             R4 2 1
       27 MOVE                             R1 R4
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K4 ["maxVector3"]
       31 GETTABLEKS                       R5 R0 K1 ["Upper"]
       33 MOVE                             R6 R2
       34 CALL                             R4 2 1
       35 MOVE                             R2 R4
       36 DUPTABLE                         R4 K2 [{"Lower", "Upper"}]
       37 SETTABLEKS                       R1 R4 K0 ["Lower"]
       39 SETTABLEKS                       R2 R4 K1 ["Upper"]
       41 RETURN                           R4 1

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R1 2
        2 JUMPIF                           R1 ; [+1]
        3 MOVE                             R1 R0
        4 JUMPIF                           R2 ; [+1]
        5 MOVE                             R2 R0
        6 GETTABLEKS                       R3 R0 K0 ["x"]
        8 GETTABLEKS                       R4 R1 K0 ["x"]
       10 JUMPIFNOTLT                      R3 R4 ; [+12]
       12 GETTABLEKS                       R4 R0 K0 ["x"]
       14 GETTABLEKS                       R5 R1 K1 ["y"]
       16 GETTABLEKS                       R6 R1 K2 ["z"]
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R3 K5 [Vector3.new]
       21 CALL                             R3 3 1
       22 MOVE                             R1 R3
       23 GETTABLEKS                       R3 R0 K1 ["y"]
       25 GETTABLEKS                       R4 R1 K1 ["y"]
       27 JUMPIFNOTLT                      R3 R4 ; [+12]
       29 GETTABLEKS                       R4 R1 K0 ["x"]
       31 GETTABLEKS                       R5 R0 K1 ["y"]
       33 GETTABLEKS                       R6 R1 K2 ["z"]
       35 FASTCALL                         VECTOR ; [+2]
       36 GETIMPORT                        R3 K5 [Vector3.new]
       38 CALL                             R3 3 1
       39 MOVE                             R1 R3
       40 GETTABLEKS                       R3 R0 K2 ["z"]
       42 GETTABLEKS                       R4 R1 K2 ["z"]
       44 JUMPIFNOTLT                      R3 R4 ; [+12]
       46 GETTABLEKS                       R4 R1 K0 ["x"]
       48 GETTABLEKS                       R5 R1 K1 ["y"]
       50 GETTABLEKS                       R6 R0 K2 ["z"]
       52 FASTCALL                         VECTOR ; [+2]
       53 GETIMPORT                        R3 K5 [Vector3.new]
       55 CALL                             R3 3 1
       56 MOVE                             R1 R3
       57 GETTABLEKS                       R3 R0 K0 ["x"]
       59 GETTABLEKS                       R4 R2 K0 ["x"]
       61 JUMPIFNOTLT                      R4 R3 ; [+12]
       63 GETTABLEKS                       R4 R0 K0 ["x"]
       65 GETTABLEKS                       R5 R2 K1 ["y"]
       67 GETTABLEKS                       R6 R2 K2 ["z"]
       69 FASTCALL                         VECTOR ; [+2]
       70 GETIMPORT                        R3 K5 [Vector3.new]
       72 CALL                             R3 3 1
       73 MOVE                             R2 R3
       74 GETTABLEKS                       R3 R0 K1 ["y"]
       76 GETTABLEKS                       R4 R2 K1 ["y"]
       78 JUMPIFNOTLT                      R4 R3 ; [+12]
       80 GETTABLEKS                       R4 R2 K0 ["x"]
       82 GETTABLEKS                       R5 R0 K1 ["y"]
       84 GETTABLEKS                       R6 R2 K2 ["z"]
       86 FASTCALL                         VECTOR ; [+2]
       87 GETIMPORT                        R3 K5 [Vector3.new]
       89 CALL                             R3 3 1
       90 MOVE                             R2 R3
       91 GETTABLEKS                       R3 R0 K2 ["z"]
       93 GETTABLEKS                       R4 R2 K2 ["z"]
       95 JUMPIFNOTLT                      R4 R3 ; [+12]
       97 GETTABLEKS                       R4 R2 K0 ["x"]
       99 GETTABLEKS                       R5 R2 K1 ["y"]
      101 GETTABLEKS                       R6 R0 K2 ["z"]
      103 FASTCALL                         VECTOR ; [+2]
      104 GETIMPORT                        R3 K5 [Vector3.new]
      106 CALL                             R3 3 1
      107 MOVE                             R2 R3
      108 RETURN                           R1 2

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["Size"]
        2 DIVK                             R2 R3 K0 [2]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 GETGLOBAL                        R5 K2 ["unionVector3"]
        7 GETTABLEKS                       R6 R0 K3 ["CFrame"]
        9 LOADK                            R9 K4 [{-1, -1, -1}]
       10 MUL                              R8 R2 R9
       11 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
       13 CALL                             R6 2 1
       14 MOVE                             R7 R3
       15 MOVE                             R8 R4
       16 MOVE                             R9 R1
       17 CALL                             R5 4 2
       18 MOVE                             R3 R5
       19 MOVE                             R4 R6
       20 GETGLOBAL                        R5 K2 ["unionVector3"]
       22 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       24 LOADK                            R9 K6 [{-1, -1, 1}]
       25 MUL                              R8 R2 R9
       26 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
       28 CALL                             R6 2 1
       29 MOVE                             R7 R3
       30 MOVE                             R8 R4
       31 MOVE                             R9 R1
       32 CALL                             R5 4 2
       33 MOVE                             R3 R5
       34 MOVE                             R4 R6
       35 GETGLOBAL                        R5 K2 ["unionVector3"]
       37 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       39 LOADK                            R9 K7 [{-1, 1, -1}]
       40 MUL                              R8 R2 R9
       41 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
       43 CALL                             R6 2 1
       44 MOVE                             R7 R3
       45 MOVE                             R8 R4
       46 MOVE                             R9 R1
       47 CALL                             R5 4 2
       48 MOVE                             R3 R5
       49 MOVE                             R4 R6
       50 GETGLOBAL                        R5 K2 ["unionVector3"]
       52 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       54 LOADK                            R9 K8 [{-1, 1, 1}]
       55 MUL                              R8 R2 R9
       56 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
       58 CALL                             R6 2 1
       59 MOVE                             R7 R3
       60 MOVE                             R8 R4
       61 MOVE                             R9 R1
       62 CALL                             R5 4 2
       63 MOVE                             R3 R5
       64 MOVE                             R4 R6
       65 GETGLOBAL                        R5 K2 ["unionVector3"]
       67 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       69 LOADK                            R9 K9 [{1, -1, -1}]
       70 MUL                              R8 R2 R9
       71 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
       73 CALL                             R6 2 1
       74 MOVE                             R7 R3
       75 MOVE                             R8 R4
       76 MOVE                             R9 R1
       77 CALL                             R5 4 2
       78 MOVE                             R3 R5
       79 MOVE                             R4 R6
       80 GETGLOBAL                        R5 K2 ["unionVector3"]
       82 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       84 LOADK                            R9 K10 [{1, -1, 1}]
       85 MUL                              R8 R2 R9
       86 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
       88 CALL                             R6 2 1
       89 MOVE                             R7 R3
       90 MOVE                             R8 R4
       91 MOVE                             R9 R1
       92 CALL                             R5 4 2
       93 MOVE                             R3 R5
       94 MOVE                             R4 R6
       95 GETGLOBAL                        R5 K2 ["unionVector3"]
       97 GETTABLEKS                       R6 R0 K3 ["CFrame"]
       99 LOADK                            R9 K11 [{1, 1, -1}]
      100 MUL                              R8 R2 R9
      101 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
      103 CALL                             R6 2 1
      104 MOVE                             R7 R3
      105 MOVE                             R8 R4
      106 MOVE                             R9 R1
      107 CALL                             R5 4 2
      108 MOVE                             R3 R5
      109 MOVE                             R4 R6
      110 GETGLOBAL                        R5 K2 ["unionVector3"]
      112 GETTABLEKS                       R6 R0 K3 ["CFrame"]
      114 LOADK                            R9 K12 [{1, 1, 1}]
      115 MUL                              R8 R2 R9
      116 NAMECALL                         R6 R6 K5 ["pointToWorldSpace"]
      118 CALL                             R6 2 1
      119 MOVE                             R7 R3
      120 MOVE                             R8 R4
      121 MOVE                             R9 R1
      122 CALL                             R5 4 2
      123 MOVE                             R3 R5
      124 MOVE                             R4 R6
      125 RETURN                           R3 2

PROTO_4:
        0 GETUPVAL                         R3 0
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 NAMECALL                         R4 R0 K1 ["GetChildren"]
        7 CALL                             R4 1 1
        8 GETIMPORT                        R5 K3 [ipairs]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 3
       12 FORGPREP_INEXT                   R5
       13 GETGLOBAL                        R10 K4 ["getExtentsRecursive"]
       15 MOVE                             R11 R9
       16 MOVE                             R12 R1
       17 CALL                             R10 2 1
       18 GETGLOBAL                        R11 K5 ["unionVector3"]
       20 GETTABLEKS                       R12 R10 K6 ["Lower"]
       22 MOVE                             R13 R2
       23 MOVE                             R14 R3
       24 MOVE                             R15 R1
       25 CALL                             R11 4 2
       26 MOVE                             R2 R11
       27 MOVE                             R3 R12
       28 GETGLOBAL                        R11 K5 ["unionVector3"]
       30 GETTABLEKS                       R12 R10 K7 ["Upper"]
       32 MOVE                             R13 R2
       33 MOVE                             R14 R3
       34 MOVE                             R15 R1
       35 CALL                             R11 4 2
       36 MOVE                             R2 R11
       37 MOVE                             R3 R12
       38 FORGLOOP                         R5 2 [inext] ; [-26]
       40 LOADK                            R7 K8 ["BasePart"]
       41 NAMECALL                         R5 R0 K9 ["IsA"]
       43 CALL                             R5 2 1
       44 JUMPIFNOT                        R5 ; [+123]
       45 GETTABLEKS                       R6 R0 K11 ["Size"]
       47 DIVK                             R5 R6 K10 [2]
       48 GETGLOBAL                        R6 K5 ["unionVector3"]
       50 GETTABLEKS                       R7 R0 K12 ["CFrame"]
       52 LOADK                            R10 K13 [{-1, -1, -1}]
       53 MUL                              R9 R5 R10
       54 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
       56 CALL                             R7 2 1
       57 MOVE                             R8 R2
       58 MOVE                             R9 R3
       59 MOVE                             R10 R1
       60 CALL                             R6 4 2
       61 MOVE                             R2 R6
       62 MOVE                             R3 R7
       63 GETGLOBAL                        R6 K5 ["unionVector3"]
       65 GETTABLEKS                       R7 R0 K12 ["CFrame"]
       67 LOADK                            R10 K15 [{-1, -1, 1}]
       68 MUL                              R9 R5 R10
       69 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
       71 CALL                             R7 2 1
       72 MOVE                             R8 R2
       73 MOVE                             R9 R3
       74 MOVE                             R10 R1
       75 CALL                             R6 4 2
       76 MOVE                             R2 R6
       77 MOVE                             R3 R7
       78 GETGLOBAL                        R6 K5 ["unionVector3"]
       80 GETTABLEKS                       R7 R0 K12 ["CFrame"]
       82 LOADK                            R10 K16 [{-1, 1, -1}]
       83 MUL                              R9 R5 R10
       84 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
       86 CALL                             R7 2 1
       87 MOVE                             R8 R2
       88 MOVE                             R9 R3
       89 MOVE                             R10 R1
       90 CALL                             R6 4 2
       91 MOVE                             R2 R6
       92 MOVE                             R3 R7
       93 GETGLOBAL                        R6 K5 ["unionVector3"]
       95 GETTABLEKS                       R7 R0 K12 ["CFrame"]
       97 LOADK                            R10 K17 [{-1, 1, 1}]
       98 MUL                              R9 R5 R10
       99 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
      101 CALL                             R7 2 1
      102 MOVE                             R8 R2
      103 MOVE                             R9 R3
      104 MOVE                             R10 R1
      105 CALL                             R6 4 2
      106 MOVE                             R2 R6
      107 MOVE                             R3 R7
      108 GETGLOBAL                        R6 K5 ["unionVector3"]
      110 GETTABLEKS                       R7 R0 K12 ["CFrame"]
      112 LOADK                            R10 K18 [{1, -1, -1}]
      113 MUL                              R9 R5 R10
      114 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
      116 CALL                             R7 2 1
      117 MOVE                             R8 R2
      118 MOVE                             R9 R3
      119 MOVE                             R10 R1
      120 CALL                             R6 4 2
      121 MOVE                             R2 R6
      122 MOVE                             R3 R7
      123 GETGLOBAL                        R6 K5 ["unionVector3"]
      125 GETTABLEKS                       R7 R0 K12 ["CFrame"]
      127 LOADK                            R10 K19 [{1, -1, 1}]
      128 MUL                              R9 R5 R10
      129 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
      131 CALL                             R7 2 1
      132 MOVE                             R8 R2
      133 MOVE                             R9 R3
      134 MOVE                             R10 R1
      135 CALL                             R6 4 2
      136 MOVE                             R2 R6
      137 MOVE                             R3 R7
      138 GETGLOBAL                        R6 K5 ["unionVector3"]
      140 GETTABLEKS                       R7 R0 K12 ["CFrame"]
      142 LOADK                            R10 K20 [{1, 1, -1}]
      143 MUL                              R9 R5 R10
      144 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
      146 CALL                             R7 2 1
      147 MOVE                             R8 R2
      148 MOVE                             R9 R3
      149 MOVE                             R10 R1
      150 CALL                             R6 4 2
      151 MOVE                             R2 R6
      152 MOVE                             R3 R7
      153 GETGLOBAL                        R6 K5 ["unionVector3"]
      155 GETTABLEKS                       R7 R0 K12 ["CFrame"]
      157 LOADK                            R10 K21 [{1, 1, 1}]
      158 MUL                              R9 R5 R10
      159 NAMECALL                         R7 R7 K14 ["pointToWorldSpace"]
      161 CALL                             R7 2 1
      162 MOVE                             R8 R2
      163 MOVE                             R9 R3
      164 MOVE                             R10 R1
      165 CALL                             R6 4 2
      166 MOVE                             R2 R6
      167 MOVE                             R3 R7
      168 GETUPVAL                         R6 0
      169 SUBK                             R5 R6 K0 [1]
      170 SETUPVAL                         R5 0
      171 DUPTABLE                         R5 K22 [{"Lower", "Upper"}]
      172 SETTABLEKS                       R2 R5 K6 ["Lower"]
      174 SETTABLEKS                       R3 R5 K7 ["Upper"]
      176 RETURN                           R5 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R1 R1 K4 ["Get"]
        8 CALL                             R1 1 1
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 GETIMPORT                        R4 K6 [ipairs]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 3
       15 FORGPREP_INEXT                   R4
       16 GETTABLEKS                       R9 R8 K7 ["Parent"]
       18 JUMPIFNOT                        R9 ; [+36]
       19 GETTABLEKS                       R10 R8 K7 ["Parent"]
       21 GETTABLEKS                       R9 R10 K7 ["Parent"]
       23 JUMPIFNOT                        R9 ; [+31]
       24 GETIMPORT                        R11 K9 [workspace]
       26 NAMECALL                         R9 R8 K10 ["IsDescendantOf"]
       28 CALL                             R9 2 1
       29 JUMPIFNOT                        R9 ; [+25]
       30 GETGLOBAL                        R9 K11 ["getExtentsRecursive"]
       32 MOVE                             R10 R8
       33 MOVE                             R11 R0
       34 CALL                             R9 2 1
       35 GETGLOBAL                        R10 K12 ["unionVector3"]
       37 GETTABLEKS                       R11 R9 K13 ["Lower"]
       39 MOVE                             R12 R2
       40 MOVE                             R13 R3
       41 MOVE                             R14 R0
       42 CALL                             R10 4 2
       43 MOVE                             R2 R10
       44 MOVE                             R3 R11
       45 GETGLOBAL                        R10 K12 ["unionVector3"]
       47 GETTABLEKS                       R11 R9 K14 ["Upper"]
       49 MOVE                             R12 R2
       50 MOVE                             R13 R3
       51 MOVE                             R14 R0
       52 CALL                             R10 4 2
       53 MOVE                             R2 R10
       54 MOVE                             R3 R11
       55 FORGLOOP                         R4 2 [inext] ; [-40]
       57 JUMPIFNOT                        R2 ; [+1]
       58 JUMPIF                           R3 ; [+4]
       59 GETTABLEKS                       R2 R0 K15 ["p"]
       61 GETTABLEKS                       R3 R0 K15 ["p"]
       63 RETURN                           R2 2

PROTO_6:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 GETGLOBAL                        R9 K2 ["getExtentsRecursive"]
        9 MOVE                             R10 R8
       10 MOVE                             R11 R1
       11 CALL                             R9 2 1
       12 GETGLOBAL                        R10 K3 ["unionVector3"]
       14 GETTABLEKS                       R11 R9 K4 ["Lower"]
       16 MOVE                             R12 R2
       17 MOVE                             R13 R3
       18 MOVE                             R14 R1
       19 CALL                             R10 4 2
       20 MOVE                             R2 R10
       21 MOVE                             R3 R11
       22 GETGLOBAL                        R10 K3 ["unionVector3"]
       24 GETTABLEKS                       R11 R9 K5 ["Upper"]
       26 MOVE                             R12 R2
       27 MOVE                             R13 R3
       28 MOVE                             R14 R1
       29 CALL                             R10 4 2
       30 MOVE                             R2 R10
       31 MOVE                             R3 R11
       32 FORGLOOP                         R4 2 [inext] ; [-26]
       34 JUMPIF                           R2 ; [+1]
       35 LOADK                            R2 K6 [{0, 0, 0}]
       36 JUMPIF                           R3 ; [+1]
       37 LOADK                            R3 K6 [{0, 0, 0}]
       38 MOVE                             R6 R2
       39 NAMECALL                         R4 R1 K7 ["pointToObjectSpace"]
       41 CALL                             R4 2 1
       42 MOVE                             R2 R4
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R1 K7 ["pointToObjectSpace"]
       46 CALL                             R4 2 1
       47 MOVE                             R3 R4
       48 DUPTABLE                         R4 K8 [{"Lower", "Upper"}]
       49 SETTABLEKS                       R2 R4 K4 ["Lower"]
       51 SETTABLEKS                       R3 R4 K5 ["Upper"]
       53 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R0 K0 ["pointToObjectSpace"]
        6 CALL                             R3 2 1
        7 MOVE                             R1 R3
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R0 K0 ["pointToObjectSpace"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 DUPTABLE                         R3 K3 [{"Lower", "Upper"}]
       14 SETTABLEKS                       R1 R3 K1 ["Lower"]
       16 SETTABLEKS                       R2 R3 K2 ["Upper"]
       18 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["Lower"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K1 ["Upper"]
        5 JUMPIF                           R2 ; [+3]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 RETURN                           R2 2
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["absVector3"]
       12 GETTABLEKS                       R4 R0 K1 ["Upper"]
       14 GETTABLEKS                       R5 R0 K0 ["Lower"]
       16 SUB                              R3 R4 R5
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R4 R0 K0 ["Lower"]
       20 DIVK                             R5 R2 K3 [2]
       21 ADD                              R3 R4 R5
       22 GETIMPORT                        R6 K6 [CFrame.new]
       24 MOVE                             R7 R3
       25 CALL                             R6 1 -1
       26 NAMECALL                         R4 R1 K7 ["toWorldSpace"]
       28 CALL                             R4 -1 1
       29 MOVE                             R5 R2
       30 RETURN                           R4 2

PROTO_9:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+2]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+5]
        4 GETIMPORT                        R3 K2 [CFrame.new]
        6 LOADK                            R4 K3 [{0, 0, 0}]
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 GETGLOBAL                        R3 K4 ["extentsToCFrameAndSize"]
       11 GETGLOBAL                        R4 K5 ["getExtents"]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 MOVE                             R5 R2
       16 CALL                             R3 2 2
       17 JUMPIFNOT                        R4 ; [+2]
       18 SETTABLEKS                       R4 R0 K6 ["Size"]
       20 JUMPIFNOT                        R3 ; [+2]
       21 SETTABLEKS                       R3 R0 K0 ["CFrame"]
       23 RETURN                           R0 0

PROTO_10:
        0 GETGLOBAL                        R2 K0 ["getExtentsOfList"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETGLOBAL                        R3 K1 ["extentsToCFrameAndSize"]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 RETURN                           R3 1

PROTO_11:
        0 GETGLOBAL                        R2 K0 ["getExtentsOfList"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETGLOBAL                        R3 K1 ["extentsToCFrameAndSize"]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 2
       10 RETURN                           R4 1

PROTO_12:
        0 GETGLOBAL                        R2 K0 ["getExtentsOfList"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETGLOBAL                        R3 K1 ["extentsToCFrameAndSize"]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Utility"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 SETGLOBAL                        R1 K7 ["unionVector3"]
       13 DUPCLOSURE                       R1 K8 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 SETGLOBAL                        R1 K9 ["unionTuple"]
       17 LOADN                            R1 0
       18 DUPCLOSURE                       R2 K10 [PROTO_2]
       19 SETGLOBAL                        R2 K11 ["unionVector3NoSpaceChange"]
       21 DUPCLOSURE                       R2 K12 [PROTO_3]
       22 SETGLOBAL                        R2 K13 ["getPartBounds"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          REF R1
       26 SETGLOBAL                        R2 K14 ["getExtentsRecursive"]
       28 DUPCLOSURE                       R2 K15 [PROTO_5]
       29 GETIMPORT                        R3 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K4 ["Parent"]
       35 GETTABLEKS                       R4 R5 K16 ["FuzzyMath"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K17 [PROTO_6]
       39 SETGLOBAL                        R4 K18 ["getExtentsOfList"]
       41 DUPCLOSURE                       R4 K19 [PROTO_7]
       42 CAPTURE                          VAL R2
       43 SETGLOBAL                        R4 K20 ["getExtents"]
       45 DUPCLOSURE                       R4 K21 [PROTO_8]
       46 CAPTURE                          VAL R0
       47 SETGLOBAL                        R4 K22 ["extentsToCFrameAndSize"]
       49 DUPCLOSURE                       R4 K23 [PROTO_9]
       50 SETGLOBAL                        R4 K24 ["setPartCFrameToExtents"]
       52 DUPCLOSURE                       R4 K25 [PROTO_10]
       53 DUPCLOSURE                       R5 K26 [PROTO_11]
       54 DUPCLOSURE                       R6 K27 [PROTO_12]
       55 NEWTABLE                         R7 8 0
       57 GETGLOBAL                        R8 K24 ["setPartCFrameToExtents"]
       59 SETTABLEKS                       R8 R7 K24 ["setPartCFrameToExtents"]
       61 GETGLOBAL                        R8 K11 ["unionVector3NoSpaceChange"]
       63 SETTABLEKS                       R8 R7 K11 ["unionVector3NoSpaceChange"]
       65 GETGLOBAL                        R8 K13 ["getPartBounds"]
       67 SETTABLEKS                       R8 R7 K13 ["getPartBounds"]
       69 SETTABLEKS                       R4 R7 K28 ["getCFrameOfList"]
       71 SETTABLEKS                       R5 R7 K29 ["getSizeOfList"]
       73 SETTABLEKS                       R6 R7 K30 ["getCFrameAndSizeOfList"]
       75 CLOSEUPVALS                      R1
       76 RETURN                           R7 1
