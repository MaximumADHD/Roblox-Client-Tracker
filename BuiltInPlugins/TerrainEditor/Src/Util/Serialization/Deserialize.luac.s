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
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
