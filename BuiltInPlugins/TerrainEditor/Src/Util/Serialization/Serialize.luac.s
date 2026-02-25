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
       11 JUMPIFNOTEQKS                    R7 K2 ["CFrame"] ; [+63]
       13 GETTABLEKS                       R7 R6 K3 ["Position"]
       15 GETTABLEKS                       R8 R6 K4 ["XVector"]
       17 GETTABLEKS                       R9 R6 K5 ["YVector"]
       19 GETTABLEKS                       R10 R6 K6 ["ZVector"]
       21 DUPTABLE                         R11 K20 [{"x", "y", "z", "r00", "r10", "r20", "r01", "r11", "r21", "r02", "r12", "r22", "serializedType"}]
       22 GETTABLEKS                       R12 R7 K21 ["X"]
       24 SETTABLEKS                       R12 R11 K7 ["x"]
       26 GETTABLEKS                       R12 R7 K22 ["Y"]
       28 SETTABLEKS                       R12 R11 K8 ["y"]
       30 GETTABLEKS                       R12 R7 K23 ["Z"]
       32 SETTABLEKS                       R12 R11 K9 ["z"]
       34 GETTABLEKS                       R12 R8 K21 ["X"]
       36 SETTABLEKS                       R12 R11 K10 ["r00"]
       38 GETTABLEKS                       R12 R8 K22 ["Y"]
       40 SETTABLEKS                       R12 R11 K11 ["r10"]
       42 GETTABLEKS                       R12 R8 K23 ["Z"]
       44 SETTABLEKS                       R12 R11 K12 ["r20"]
       46 GETTABLEKS                       R12 R9 K21 ["X"]
       48 SETTABLEKS                       R12 R11 K13 ["r01"]
       50 GETTABLEKS                       R12 R9 K22 ["Y"]
       52 SETTABLEKS                       R12 R11 K14 ["r11"]
       54 GETTABLEKS                       R12 R9 K23 ["Z"]
       56 SETTABLEKS                       R12 R11 K15 ["r21"]
       58 GETTABLEKS                       R12 R10 K21 ["X"]
       60 SETTABLEKS                       R12 R11 K16 ["r02"]
       62 GETTABLEKS                       R12 R10 K22 ["Y"]
       64 SETTABLEKS                       R12 R11 K17 ["r12"]
       66 GETTABLEKS                       R12 R10 K23 ["Z"]
       68 SETTABLEKS                       R12 R11 K18 ["r22"]
       70 LOADK                            R12 K2 ["CFrame"]
       71 SETTABLEKS                       R12 R11 K19 ["serializedType"]
       73 SETTABLE                         R11 R1 R5
       74 JUMP                             ; [+95]
       75 FASTCALL1                        TYPEOF R6 ; [+3]
       76 MOVE                             R8 R6
       77 GETIMPORT                        R7 K1 [typeof]
       79 CALL                             R7 1 1
       80 JUMPIFNOTEQKS                    R7 K24 ["Vector3"] ; [+19]
       82 DUPTABLE                         R7 K25 [{"x", "y", "z", "serializedType"}]
       83 GETTABLEKS                       R8 R6 K21 ["X"]
       85 SETTABLEKS                       R8 R7 K7 ["x"]
       87 GETTABLEKS                       R8 R6 K22 ["Y"]
       89 SETTABLEKS                       R8 R7 K8 ["y"]
       91 GETTABLEKS                       R8 R6 K23 ["Z"]
       93 SETTABLEKS                       R8 R7 K9 ["z"]
       95 LOADK                            R8 K24 ["Vector3"]
       96 SETTABLEKS                       R8 R7 K19 ["serializedType"]
       98 SETTABLE                         R7 R1 R5
       99 JUMP                             ; [+70]
      100 FASTCALL1                        TYPEOF R6 ; [+3]
      101 MOVE                             R8 R6
      102 GETIMPORT                        R7 K1 [typeof]
      104 CALL                             R7 1 1
      105 JUMPIFNOTEQKS                    R7 K26 ["Vector2"] ; [+15]
      107 DUPTABLE                         R7 K27 [{"x", "y", "serializedType"}]
      108 GETTABLEKS                       R8 R6 K21 ["X"]
      110 SETTABLEKS                       R8 R7 K7 ["x"]
      112 GETTABLEKS                       R8 R6 K22 ["Y"]
      114 SETTABLEKS                       R8 R7 K8 ["y"]
      116 LOADK                            R8 K26 ["Vector2"]
      117 SETTABLEKS                       R8 R7 K19 ["serializedType"]
      119 SETTABLE                         R7 R1 R5
      120 JUMP                             ; [+49]
      121 FASTCALL1                        TYPEOF R6 ; [+3]
      122 MOVE                             R8 R6
      123 GETIMPORT                        R7 K1 [typeof]
      125 CALL                             R7 1 1
      126 JUMPIFNOTEQKS                    R7 K28 ["EnumItem"] ; [+16]
      128 DUPTABLE                         R7 K30 [{"name", "serializedType"}]
      129 GETTABLEKS                       R8 R6 K31 ["Name"]
      131 SETTABLEKS                       R8 R7 K29 ["name"]
      133 GETTABLEKS                       R9 R6 K32 ["EnumType"]
      135 FASTCALL1                        TOSTRING R9 ; [+2]
      136 GETIMPORT                        R8 K34 [tostring]
      138 CALL                             R8 1 1
      139 SETTABLEKS                       R8 R7 K19 ["serializedType"]
      141 SETTABLE                         R7 R1 R5
      142 JUMP                             ; [+27]
      143 FASTCALL1                        TYPEOF R6 ; [+3]
      144 MOVE                             R8 R6
      145 GETIMPORT                        R7 K1 [typeof]
      147 CALL                             R7 1 1
      148 JUMPIFNOTEQKS                    R7 K35 ["table"] ; [+12]
      150 DUPTABLE                         R7 K37 [{"value", "serializedType"}]
      151 GETUPVAL                         R8 0
      152 MOVE                             R9 R6
      153 CALL                             R8 1 1
      154 SETTABLEKS                       R8 R7 K36 ["value"]
      156 LOADK                            R8 K35 ["table"]
      157 SETTABLEKS                       R8 R7 K19 ["serializedType"]
      159 SETTABLE                         R7 R1 R5
      160 JUMP                             ; [+9]
      161 FASTCALL1                        TYPEOF R6 ; [+3]
      162 MOVE                             R8 R6
      163 GETIMPORT                        R7 K1 [typeof]
      165 CALL                             R7 1 1
      166 JUMPIFNOTEQKS                    R7 K38 ["Instance"] ; [+2]
      168 JUMP                             ; [+1]
      169 SETTABLE                         R6 R1 R5
      170 FORGLOOP                         R2 2 ; [-165]
      172 RETURN                           R1 1

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
       18 JUMPIFNOTEQKS                    R12 K2 ["CFrame"] ; [+64]
       20 GETTABLEKS                       R12 R11 K3 ["Position"]
       22 GETTABLEKS                       R13 R11 K4 ["XVector"]
       24 GETTABLEKS                       R14 R11 K5 ["YVector"]
       26 GETTABLEKS                       R15 R11 K6 ["ZVector"]
       28 DUPTABLE                         R16 K20 [{"x", "y", "z", "r00", "r10", "r20", "r01", "r11", "r21", "r02", "r12", "r22", "serializedType"}]
       29 GETTABLEKS                       R17 R12 K21 ["X"]
       31 SETTABLEKS                       R17 R16 K7 ["x"]
       33 GETTABLEKS                       R17 R12 K22 ["Y"]
       35 SETTABLEKS                       R17 R16 K8 ["y"]
       37 GETTABLEKS                       R17 R12 K23 ["Z"]
       39 SETTABLEKS                       R17 R16 K9 ["z"]
       41 GETTABLEKS                       R17 R13 K21 ["X"]
       43 SETTABLEKS                       R17 R16 K10 ["r00"]
       45 GETTABLEKS                       R17 R13 K22 ["Y"]
       47 SETTABLEKS                       R17 R16 K11 ["r10"]
       49 GETTABLEKS                       R17 R13 K23 ["Z"]
       51 SETTABLEKS                       R17 R16 K12 ["r20"]
       53 GETTABLEKS                       R17 R14 K21 ["X"]
       55 SETTABLEKS                       R17 R16 K13 ["r01"]
       57 GETTABLEKS                       R17 R14 K22 ["Y"]
       59 SETTABLEKS                       R17 R16 K14 ["r11"]
       61 GETTABLEKS                       R17 R14 K23 ["Z"]
       63 SETTABLEKS                       R17 R16 K15 ["r21"]
       65 GETTABLEKS                       R17 R15 K21 ["X"]
       67 SETTABLEKS                       R17 R16 K16 ["r02"]
       69 GETTABLEKS                       R17 R15 K22 ["Y"]
       71 SETTABLEKS                       R17 R16 K17 ["r12"]
       73 GETTABLEKS                       R17 R15 K23 ["Z"]
       75 SETTABLEKS                       R17 R16 K18 ["r22"]
       77 LOADK                            R17 K2 ["CFrame"]
       78 SETTABLEKS                       R17 R16 K19 ["serializedType"]
       80 GETTABLE                         R17 R1 R5
       81 SETTABLE                         R16 R17 R10
       82 JUMP                             ; [+51]
       83 FASTCALL1                        TYPEOF R11 ; [+3]
       84 MOVE                             R13 R11
       85 GETIMPORT                        R12 K1 [typeof]
       87 CALL                             R12 1 1
       88 JUMPIFNOTEQKS                    R12 K24 ["Vector3"] ; [+20]
       90 DUPTABLE                         R12 K25 [{"x", "y", "z", "serializedType"}]
       91 GETTABLEKS                       R13 R11 K21 ["X"]
       93 SETTABLEKS                       R13 R12 K7 ["x"]
       95 GETTABLEKS                       R13 R11 K22 ["Y"]
       97 SETTABLEKS                       R13 R12 K8 ["y"]
       99 GETTABLEKS                       R13 R11 K23 ["Z"]
      101 SETTABLEKS                       R13 R12 K9 ["z"]
      103 LOADK                            R13 K24 ["Vector3"]
      104 SETTABLEKS                       R13 R12 K19 ["serializedType"]
      106 GETTABLE                         R13 R1 R5
      107 SETTABLE                         R12 R13 R10
      108 JUMP                             ; [+25]
      109 FASTCALL1                        TYPEOF R11 ; [+3]
      110 MOVE                             R13 R11
      111 GETIMPORT                        R12 K1 [typeof]
      113 CALL                             R12 1 1
      114 JUMPIFNOTEQKS                    R12 K26 ["EnumItem"] ; [+17]
      116 DUPTABLE                         R12 K28 [{"name", "serializedType"}]
      117 GETTABLEKS                       R13 R11 K29 ["Name"]
      119 SETTABLEKS                       R13 R12 K27 ["name"]
      121 GETTABLEKS                       R14 R11 K30 ["EnumType"]
      123 FASTCALL1                        TOSTRING R14 ; [+2]
      124 GETIMPORT                        R13 K32 [tostring]
      126 CALL                             R13 1 1
      127 SETTABLEKS                       R13 R12 K19 ["serializedType"]
      129 GETTABLE                         R13 R1 R5
      130 SETTABLE                         R12 R13 R10
      131 JUMP                             ; [+2]
      132 GETTABLE                         R12 R1 R5
      133 SETTABLE                         R11 R12 R10
      134 FORGLOOP                         R7 2 ; [-122]
      136 FORGLOOP                         R2 2 ; [-131]
      138 RETURN                           R1 1

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
