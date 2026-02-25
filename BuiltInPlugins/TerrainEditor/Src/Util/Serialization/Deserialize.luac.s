PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+4]
       13 GETTABLEKS                       R7 R6 K3 ["serializedType"]
       15 JUMPIF                           R7 ; [+2]
       16 SETTABLE                         R6 R1 R5
       17 JUMP                             ; [+116]
       18 GETTABLEKS                       R7 R6 K3 ["serializedType"]
       20 JUMPIFNOTEQKS                    R7 K4 ["CFrame"] ; [+50]
       22 GETTABLEKS                       R8 R6 K5 ["x"]
       24 GETTABLEKS                       R9 R6 K6 ["y"]
       26 GETTABLEKS                       R10 R6 K7 ["z"]
       28 FASTCALL                         VECTOR ; [+2]
       29 GETIMPORT                        R7 K10 [Vector3.new]
       31 CALL                             R7 3 1
       32 GETTABLEKS                       R9 R6 K11 ["r00"]
       34 GETTABLEKS                       R10 R6 K12 ["r10"]
       36 GETTABLEKS                       R11 R6 K13 ["r20"]
       38 FASTCALL                         VECTOR ; [+2]
       39 GETIMPORT                        R8 K10 [Vector3.new]
       41 CALL                             R8 3 1
       42 GETTABLEKS                       R10 R6 K14 ["r01"]
       44 GETTABLEKS                       R11 R6 K15 ["r11"]
       46 GETTABLEKS                       R12 R6 K16 ["r21"]
       48 FASTCALL                         VECTOR ; [+2]
       49 GETIMPORT                        R9 K10 [Vector3.new]
       51 CALL                             R9 3 1
       52 GETTABLEKS                       R11 R6 K17 ["r02"]
       54 GETTABLEKS                       R12 R6 K18 ["r12"]
       56 GETTABLEKS                       R13 R6 K19 ["r22"]
       58 FASTCALL                         VECTOR ; [+2]
       59 GETIMPORT                        R10 K10 [Vector3.new]
       61 CALL                             R10 3 1
       62 GETIMPORT                        R11 K21 [CFrame.fromMatrix]
       64 MOVE                             R12 R7
       65 MOVE                             R13 R8
       66 MOVE                             R14 R9
       67 MOVE                             R15 R10
       68 CALL                             R11 4 1
       69 SETTABLE                         R11 R1 R5
       70 JUMP                             ; [+63]
       71 GETTABLEKS                       R7 R6 K3 ["serializedType"]
       73 JUMPIFNOTEQKS                    R7 K8 ["Vector3"] ; [+13]
       75 GETTABLEKS                       R8 R6 K5 ["x"]
       77 GETTABLEKS                       R9 R6 K6 ["y"]
       79 GETTABLEKS                       R10 R6 K7 ["z"]
       81 FASTCALL                         VECTOR ; [+2]
       82 GETIMPORT                        R7 K10 [Vector3.new]
       84 CALL                             R7 3 1
       85 SETTABLE                         R7 R1 R5
       86 JUMP                             ; [+47]
       87 GETTABLEKS                       R7 R6 K3 ["serializedType"]
       89 JUMPIFNOTEQKS                    R7 K22 ["Vector2"] ; [+10]
       91 GETIMPORT                        R7 K23 [Vector2.new]
       93 GETTABLEKS                       R8 R6 K5 ["x"]
       95 GETTABLEKS                       R9 R6 K6 ["y"]
       97 CALL                             R7 2 1
       98 SETTABLE                         R7 R1 R5
       99 JUMP                             ; [+34]
      100 GETTABLEKS                       R7 R6 K3 ["serializedType"]
      102 JUMPIFNOTEQKS                    R7 K24 ["Material"] ; [+8]
      104 GETIMPORT                        R8 K26 [Enum.Material]
      106 GETTABLEKS                       R9 R6 K27 ["name"]
      108 GETTABLE                         R7 R8 R9
      109 SETTABLE                         R7 R1 R5
      110 JUMP                             ; [+23]
      111 GETTABLEKS                       R7 R6 K3 ["serializedType"]
      113 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+7]
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R8 R6 K28 ["value"]
      118 CALL                             R7 1 1
      119 SETTABLE                         R7 R1 R5
      120 JUMP                             ; [+13]
      121 GETTABLEKS                       R7 R6 K3 ["serializedType"]
      123 JUMPIFNOT                        R7 ; [+10]
      124 GETIMPORT                        R7 K30 [error]
      126 LOADK                            R9 K31 ["Undefined serialized type %*"]
      127 GETTABLEKS                       R11 R6 K3 ["serializedType"]
      129 NAMECALL                         R9 R9 K32 ["format"]
      131 CALL                             R9 2 1
      132 MOVE                             R8 R9
      133 CALL                             R7 1 0
      134 FORGLOOP                         R2 2 ; [-129]
      136 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 DUPCLOSURE                       R2 K0 [PROTO_0]
        3 CAPTURE                          VAL R2
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R8 R2
        9 MOVE                             R9 R7
       10 CALL                             R8 1 1
       11 SETTABLE                         R8 R1 R6
       12 FORGLOOP                         R3 2 ; [-5]
       14 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NEWTABLE                         R7 0 0
        8 SETTABLE                         R7 R1 R5
        9 MOVE                             R7 R6
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 FASTCALL1                        TYPEOF R11 ; [+3]
       14 MOVE                             R13 R11
       15 GETIMPORT                        R12 K1 [typeof]
       17 CALL                             R12 1 1
       18 JUMPIFNOTEQKS                    R12 K2 ["table"] ; [+4]
       20 GETTABLEKS                       R12 R11 K3 ["serializedType"]
       22 JUMPIF                           R12 ; [+3]
       23 GETTABLE                         R12 R1 R5
       24 SETTABLE                         R11 R12 R10
       25 JUMP                             ; [+86]
       26 GETTABLEKS                       R12 R11 K3 ["serializedType"]
       28 JUMPIFNOTEQKS                    R12 K4 ["CFrame"] ; [+51]
       30 GETTABLEKS                       R13 R11 K5 ["x"]
       32 GETTABLEKS                       R14 R11 K6 ["y"]
       34 GETTABLEKS                       R15 R11 K7 ["z"]
       36 FASTCALL                         VECTOR ; [+2]
       37 GETIMPORT                        R12 K10 [Vector3.new]
       39 CALL                             R12 3 1
       40 GETTABLEKS                       R14 R11 K11 ["r00"]
       42 GETTABLEKS                       R15 R11 K12 ["r10"]
       44 GETTABLEKS                       R16 R11 K13 ["r20"]
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R13 K10 [Vector3.new]
       49 CALL                             R13 3 1
       50 GETTABLEKS                       R15 R11 K14 ["r01"]
       52 GETTABLEKS                       R16 R11 K15 ["r11"]
       54 GETTABLEKS                       R17 R11 K16 ["r21"]
       56 FASTCALL                         VECTOR ; [+2]
       57 GETIMPORT                        R14 K10 [Vector3.new]
       59 CALL                             R14 3 1
       60 GETTABLEKS                       R16 R11 K17 ["r02"]
       62 GETTABLEKS                       R17 R11 K18 ["r12"]
       64 GETTABLEKS                       R18 R11 K19 ["r22"]
       66 FASTCALL                         VECTOR ; [+2]
       67 GETIMPORT                        R15 K10 [Vector3.new]
       69 CALL                             R15 3 1
       70 GETTABLE                         R16 R1 R5
       71 GETIMPORT                        R17 K21 [CFrame.fromMatrix]
       73 MOVE                             R18 R12
       74 MOVE                             R19 R13
       75 MOVE                             R20 R14
       76 MOVE                             R21 R15
       77 CALL                             R17 4 1
       78 SETTABLE                         R17 R16 R10
       79 JUMP                             ; [+32]
       80 GETTABLEKS                       R12 R11 K3 ["serializedType"]
       82 JUMPIFNOTEQKS                    R12 K8 ["Vector3"] ; [+14]
       84 GETTABLE                         R12 R1 R5
       85 GETTABLEKS                       R14 R11 K5 ["x"]
       87 GETTABLEKS                       R15 R11 K6 ["y"]
       89 GETTABLEKS                       R16 R11 K7 ["z"]
       91 FASTCALL                         VECTOR ; [+2]
       92 GETIMPORT                        R13 K10 [Vector3.new]
       94 CALL                             R13 3 1
       95 SETTABLE                         R13 R12 R10
       96 JUMP                             ; [+15]
       97 GETTABLEKS                       R12 R11 K3 ["serializedType"]
       99 JUMPIFNOTEQKS                    R12 K22 ["Material"] ; [+9]
      101 GETTABLE                         R12 R1 R5
      102 GETIMPORT                        R14 K24 [Enum.Material]
      104 GETTABLEKS                       R15 R11 K25 ["name"]
      106 GETTABLE                         R13 R14 R15
      107 SETTABLE                         R13 R12 R10
      108 JUMP                             ; [+3]
      109 GETTABLEKS                       R12 R11 K3 ["serializedType"]
      111 JUMPIFNOT                        R12 ; [0]
      112 FORGLOOP                         R7 2 ; [-100]
      114 FORGLOOP                         R2 2 ; [-109]
      116 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagTerrainEditorGenerationFeature"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 DUPCLOSURE                       R3 K10 [PROTO_2]
       18 MOVE                             R4 R1
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+1]
       21 RETURN                           R2 1
       22 MOVE                             R2 R3
       23 RETURN                           R2 1
