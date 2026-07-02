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
        2 JUMPIF                           R4 ; [+5]
        3 GETTABLEKS                       R4 R0 K1 ["Upper"]
        5 JUMPIF                           R4 ; [+2]
        6 DUPTABLE                         R4 K3 [{[1] = , ["Upper"] = }]
        7 RETURN                           R4 1
        8 JUMPIF                           R1 ; [+2]
        9 GETTABLEKS                       R1 R0 K0 ["Lower"]
       11 JUMPIF                           R2 ; [+2]
       12 GETTABLEKS                       R2 R0 K1 ["Upper"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["minVector3"]
       17 GETTABLEKS                       R5 R0 K0 ["Lower"]
       19 MOVE                             R6 R1
       20 CALL                             R4 2 1
       21 MOVE                             R1 R4
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K5 ["maxVector3"]
       25 GETTABLEKS                       R5 R0 K1 ["Upper"]
       27 MOVE                             R6 R2
       28 CALL                             R4 2 1
       29 MOVE                             R2 R4
       30 DUPTABLE                         R4 K6 [{"Lower", "Upper"}]
       31 SETTABLEKS                       R1 R4 K0 ["Lower"]
       33 SETTABLEKS                       R2 R4 K1 ["Upper"]
       35 RETURN                           R4 1

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
        0 GETGLOBAL                        R5 K0 ["unionVector3"]
        2 LOADK                            R9 K1 [{-1, -1, -1}]
        3 MUL                              R8 R1 R9
        4 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
        6 CALL                             R6 2 1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 MOVE                             R9 R4
       10 CALL                             R5 4 2
       11 MOVE                             R2 R5
       12 MOVE                             R3 R6
       13 GETGLOBAL                        R5 K0 ["unionVector3"]
       15 LOADK                            R9 K3 [{-1, -1, 1}]
       16 MUL                              R8 R1 R9
       17 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
       19 CALL                             R6 2 1
       20 MOVE                             R7 R2
       21 MOVE                             R8 R3
       22 MOVE                             R9 R4
       23 CALL                             R5 4 2
       24 MOVE                             R2 R5
       25 MOVE                             R3 R6
       26 GETGLOBAL                        R5 K0 ["unionVector3"]
       28 LOADK                            R9 K4 [{-1, 1, -1}]
       29 MUL                              R8 R1 R9
       30 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
       32 CALL                             R6 2 1
       33 MOVE                             R7 R2
       34 MOVE                             R8 R3
       35 MOVE                             R9 R4
       36 CALL                             R5 4 2
       37 MOVE                             R2 R5
       38 MOVE                             R3 R6
       39 GETGLOBAL                        R5 K0 ["unionVector3"]
       41 LOADK                            R9 K5 [{-1, 1, 1}]
       42 MUL                              R8 R1 R9
       43 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
       45 CALL                             R6 2 1
       46 MOVE                             R7 R2
       47 MOVE                             R8 R3
       48 MOVE                             R9 R4
       49 CALL                             R5 4 2
       50 MOVE                             R2 R5
       51 MOVE                             R3 R6
       52 GETGLOBAL                        R5 K0 ["unionVector3"]
       54 LOADK                            R9 K6 [{1, -1, -1}]
       55 MUL                              R8 R1 R9
       56 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
       58 CALL                             R6 2 1
       59 MOVE                             R7 R2
       60 MOVE                             R8 R3
       61 MOVE                             R9 R4
       62 CALL                             R5 4 2
       63 MOVE                             R2 R5
       64 MOVE                             R3 R6
       65 GETGLOBAL                        R5 K0 ["unionVector3"]
       67 LOADK                            R9 K7 [{1, -1, 1}]
       68 MUL                              R8 R1 R9
       69 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
       71 CALL                             R6 2 1
       72 MOVE                             R7 R2
       73 MOVE                             R8 R3
       74 MOVE                             R9 R4
       75 CALL                             R5 4 2
       76 MOVE                             R2 R5
       77 MOVE                             R3 R6
       78 GETGLOBAL                        R5 K0 ["unionVector3"]
       80 LOADK                            R9 K8 [{1, 1, -1}]
       81 MUL                              R8 R1 R9
       82 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
       84 CALL                             R6 2 1
       85 MOVE                             R7 R2
       86 MOVE                             R8 R3
       87 MOVE                             R9 R4
       88 CALL                             R5 4 2
       89 MOVE                             R2 R5
       90 MOVE                             R3 R6
       91 GETGLOBAL                        R5 K0 ["unionVector3"]
       93 LOADK                            R9 K9 [{1, 1, 1}]
       94 MUL                              R8 R1 R9
       95 NAMECALL                         R6 R0 K2 ["pointToWorldSpace"]
       97 CALL                             R6 2 1
       98 MOVE                             R7 R2
       99 MOVE                             R8 R3
      100 MOVE                             R9 R4
      101 CALL                             R5 4 2
      102 MOVE                             R2 R5
      103 MOVE                             R3 R6
      104 RETURN                           R2 2

PROTO_5:
        0 GETUPVAL                         R3 0
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+26]
        8 LOADK                            R6 K1 ["ProceduralModel"]
        9 NAMECALL                         R4 R0 K2 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+21]
       13 NAMECALL                         R4 R0 K3 ["GetBoundingBox"]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 2
       17 MOVE                             R7 R4
       18 DIVK                             R8 R5 K4 [2]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R3
       21 MOVE                             R11 R1
       22 CALL                             R6 5 2
       23 MOVE                             R2 R6
       24 MOVE                             R3 R7
       25 GETUPVAL                         R7 0
       26 SUBK                             R6 R7 K0 [1]
       27 SETUPVAL                         R6 0
       28 DUPTABLE                         R6 K7 [{"Lower", "Upper"}]
       29 SETTABLEKS                       R2 R6 K5 ["Lower"]
       31 SETTABLEKS                       R3 R6 K6 ["Upper"]
       33 RETURN                           R6 1
       34 NAMECALL                         R4 R0 K8 ["GetChildren"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [ipairs]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 3
       41 FORGPREP_INEXT                   R5
       42 GETGLOBAL                        R10 K11 ["getExtentsRecursive"]
       44 MOVE                             R11 R9
       45 MOVE                             R12 R1
       46 CALL                             R10 2 1
       47 GETGLOBAL                        R11 K12 ["unionVector3"]
       49 GETTABLEKS                       R12 R10 K5 ["Lower"]
       51 MOVE                             R13 R2
       52 MOVE                             R14 R3
       53 MOVE                             R15 R1
       54 CALL                             R11 4 2
       55 MOVE                             R2 R11
       56 MOVE                             R3 R12
       57 GETGLOBAL                        R11 K12 ["unionVector3"]
       59 GETTABLEKS                       R12 R10 K6 ["Upper"]
       61 MOVE                             R13 R2
       62 MOVE                             R14 R3
       63 MOVE                             R15 R1
       64 CALL                             R11 4 2
       65 MOVE                             R2 R11
       66 MOVE                             R3 R12
       67 FORGLOOP                         R5 2 [inext] ; [-26]
       69 LOADK                            R7 K13 ["BasePart"]
       70 NAMECALL                         R5 R0 K2 ["IsA"]
       72 CALL                             R5 2 1
       73 JUMPIFNOT                        R5 ; [+139]
       74 GETUPVAL                         R5 1
       75 CALL                             R5 0 1
       76 JUMPIFNOT                        R5 ; [+13]
       77 GETUPVAL                         R5 2
       78 GETTABLEKS                       R6 R0 K14 ["CFrame"]
       80 GETTABLEKS                       R8 R0 K15 ["Size"]
       82 DIVK                             R7 R8 K4 [2]
       83 MOVE                             R8 R2
       84 MOVE                             R9 R3
       85 MOVE                             R10 R1
       86 CALL                             R5 5 2
       87 MOVE                             R2 R5
       88 MOVE                             R3 R6
       89 JUMP                             ; [+123]
       90 GETTABLEKS                       R6 R0 K15 ["Size"]
       92 DIVK                             R5 R6 K4 [2]
       93 GETGLOBAL                        R6 K12 ["unionVector3"]
       95 GETTABLEKS                       R7 R0 K14 ["CFrame"]
       97 LOADK                            R10 K16 [{-1, -1, -1}]
       98 MUL                              R9 R5 R10
       99 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      101 CALL                             R7 2 1
      102 MOVE                             R8 R2
      103 MOVE                             R9 R3
      104 MOVE                             R10 R1
      105 CALL                             R6 4 2
      106 MOVE                             R2 R6
      107 MOVE                             R3 R7
      108 GETGLOBAL                        R6 K12 ["unionVector3"]
      110 GETTABLEKS                       R7 R0 K14 ["CFrame"]
      112 LOADK                            R10 K18 [{-1, -1, 1}]
      113 MUL                              R9 R5 R10
      114 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      116 CALL                             R7 2 1
      117 MOVE                             R8 R2
      118 MOVE                             R9 R3
      119 MOVE                             R10 R1
      120 CALL                             R6 4 2
      121 MOVE                             R2 R6
      122 MOVE                             R3 R7
      123 GETGLOBAL                        R6 K12 ["unionVector3"]
      125 GETTABLEKS                       R7 R0 K14 ["CFrame"]
      127 LOADK                            R10 K19 [{-1, 1, -1}]
      128 MUL                              R9 R5 R10
      129 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      131 CALL                             R7 2 1
      132 MOVE                             R8 R2
      133 MOVE                             R9 R3
      134 MOVE                             R10 R1
      135 CALL                             R6 4 2
      136 MOVE                             R2 R6
      137 MOVE                             R3 R7
      138 GETGLOBAL                        R6 K12 ["unionVector3"]
      140 GETTABLEKS                       R7 R0 K14 ["CFrame"]
      142 LOADK                            R10 K20 [{-1, 1, 1}]
      143 MUL                              R9 R5 R10
      144 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      146 CALL                             R7 2 1
      147 MOVE                             R8 R2
      148 MOVE                             R9 R3
      149 MOVE                             R10 R1
      150 CALL                             R6 4 2
      151 MOVE                             R2 R6
      152 MOVE                             R3 R7
      153 GETGLOBAL                        R6 K12 ["unionVector3"]
      155 GETTABLEKS                       R7 R0 K14 ["CFrame"]
      157 LOADK                            R10 K21 [{1, -1, -1}]
      158 MUL                              R9 R5 R10
      159 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      161 CALL                             R7 2 1
      162 MOVE                             R8 R2
      163 MOVE                             R9 R3
      164 MOVE                             R10 R1
      165 CALL                             R6 4 2
      166 MOVE                             R2 R6
      167 MOVE                             R3 R7
      168 GETGLOBAL                        R6 K12 ["unionVector3"]
      170 GETTABLEKS                       R7 R0 K14 ["CFrame"]
      172 LOADK                            R10 K22 [{1, -1, 1}]
      173 MUL                              R9 R5 R10
      174 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      176 CALL                             R7 2 1
      177 MOVE                             R8 R2
      178 MOVE                             R9 R3
      179 MOVE                             R10 R1
      180 CALL                             R6 4 2
      181 MOVE                             R2 R6
      182 MOVE                             R3 R7
      183 GETGLOBAL                        R6 K12 ["unionVector3"]
      185 GETTABLEKS                       R7 R0 K14 ["CFrame"]
      187 LOADK                            R10 K23 [{1, 1, -1}]
      188 MUL                              R9 R5 R10
      189 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      191 CALL                             R7 2 1
      192 MOVE                             R8 R2
      193 MOVE                             R9 R3
      194 MOVE                             R10 R1
      195 CALL                             R6 4 2
      196 MOVE                             R2 R6
      197 MOVE                             R3 R7
      198 GETGLOBAL                        R6 K12 ["unionVector3"]
      200 GETTABLEKS                       R7 R0 K14 ["CFrame"]
      202 LOADK                            R10 K24 [{1, 1, 1}]
      203 MUL                              R9 R5 R10
      204 NAMECALL                         R7 R7 K17 ["pointToWorldSpace"]
      206 CALL                             R7 2 1
      207 MOVE                             R8 R2
      208 MOVE                             R9 R3
      209 MOVE                             R10 R1
      210 CALL                             R6 4 2
      211 MOVE                             R2 R6
      212 MOVE                             R3 R7
      213 GETUPVAL                         R6 0
      214 SUBK                             R5 R6 K0 [1]
      215 SETUPVAL                         R5 0
      216 DUPTABLE                         R5 K7 [{"Lower", "Upper"}]
      217 SETTABLEKS                       R2 R5 K5 ["Lower"]
      219 SETTABLEKS                       R3 R5 K6 ["Upper"]
      221 RETURN                           R5 1

PROTO_6:
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
       19 GETTABLEKS                       R9 R8 K7 ["Parent"]
       21 GETTABLEKS                       R9 R9 K7 ["Parent"]
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["Lower"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K1 ["Upper"]
        5 JUMPIF                           R2 ; [+3]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 RETURN                           R2 2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["absVector3"]
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

PROTO_10:
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

PROTO_11:
        0 GETGLOBAL                        R2 K0 ["getExtentsOfList"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETGLOBAL                        R3 K1 ["extentsToCFrameAndSize"]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 RETURN                           R3 1

PROTO_12:
        0 GETGLOBAL                        R2 K0 ["getExtentsOfList"]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETGLOBAL                        R3 K1 ["extentsToCFrameAndSize"]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 2
       10 RETURN                           R4 1

PROTO_13:
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Utility"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Flags"]
       18 GETTABLEKS                       R2 R2 K7 ["getFFlagTransformProceduralModel"]
       20 CALL                             R1 1 1
       21 DUPCLOSURE                       R2 K8 [PROTO_0]
       22 SETGLOBAL                        R2 K9 ["unionVector3"]
       24 DUPCLOSURE                       R2 K10 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 SETGLOBAL                        R2 K11 ["unionTuple"]
       28 LOADN                            R2 0
       29 DUPCLOSURE                       R3 K12 [PROTO_2]
       30 SETGLOBAL                        R3 K13 ["unionVector3NoSpaceChange"]
       32 DUPCLOSURE                       R3 K14 [PROTO_3]
       33 SETGLOBAL                        R3 K15 ["getPartBounds"]
       35 DUPCLOSURE                       R3 K16 [PROTO_4]
       36 NEWCLOSURE                       R4 P5
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 SETGLOBAL                        R4 K17 ["getExtentsRecursive"]
       42 DUPCLOSURE                       R4 K18 [PROTO_6]
       43 GETIMPORT                        R5 K1 [require]
       45 GETIMPORT                        R6 K3 [script]
       47 GETTABLEKS                       R6 R6 K4 ["Parent"]
       49 GETTABLEKS                       R6 R6 K19 ["FuzzyMath"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K20 [PROTO_7]
       53 SETGLOBAL                        R6 K21 ["getExtentsOfList"]
       55 DUPCLOSURE                       R6 K22 [PROTO_8]
       56 CAPTURE                          VAL R4
       57 SETGLOBAL                        R6 K23 ["getExtents"]
       59 DUPCLOSURE                       R6 K24 [PROTO_9]
       60 CAPTURE                          VAL R0
       61 SETGLOBAL                        R6 K25 ["extentsToCFrameAndSize"]
       63 DUPCLOSURE                       R6 K26 [PROTO_10]
       64 SETGLOBAL                        R6 K27 ["setPartCFrameToExtents"]
       66 DUPCLOSURE                       R6 K28 [PROTO_11]
       67 DUPCLOSURE                       R7 K29 [PROTO_12]
       68 DUPCLOSURE                       R8 K30 [PROTO_13]
       69 NEWTABLE                         R9 8 0
       71 GETGLOBAL                        R10 K27 ["setPartCFrameToExtents"]
       73 SETTABLEKS                       R10 R9 K27 ["setPartCFrameToExtents"]
       75 GETGLOBAL                        R10 K13 ["unionVector3NoSpaceChange"]
       77 SETTABLEKS                       R10 R9 K13 ["unionVector3NoSpaceChange"]
       79 GETGLOBAL                        R10 K15 ["getPartBounds"]
       81 SETTABLEKS                       R10 R9 K15 ["getPartBounds"]
       83 SETTABLEKS                       R6 R9 K31 ["getCFrameOfList"]
       85 SETTABLEKS                       R7 R9 K32 ["getSizeOfList"]
       87 SETTABLEKS                       R8 R9 K33 ["getCFrameAndSizeOfList"]
       89 CLOSEUPVALS                      R2
       90 RETURN                           R9 1
