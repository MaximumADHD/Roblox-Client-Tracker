PROTO_0:
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
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
