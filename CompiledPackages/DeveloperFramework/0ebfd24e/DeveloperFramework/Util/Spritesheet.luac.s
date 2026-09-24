PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["SpriteSize"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R1 K3 ["NumSprites"]
        8 FASTCALL1                        TYPEOF R4 ; [+2]
        9 GETIMPORT                        R3 K2 [typeof]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R5 R1 K4 ["SpritesheetWidth"]
       14 FASTCALL1                        TYPEOF R5 ; [+2]
       15 GETIMPORT                        R4 K2 [typeof]
       17 CALL                             R4 1 1
       18 LOADB                            R6 1
       19 JUMPIFEQKS                       R2 K5 ["number"] ; [+5]
       21 JUMPIFEQKS                       R2 K6 ["Vector2"] ; [+2]
       23 LOADB                            R6 0 +1
       24 LOADB                            R6 1
       25 LOADK                            R8 K7 ["SpriteSize must be number or Vector2. Got type '"]
       26 MOVE                             R9 R2
       27 LOADK                            R10 K8 ["'"]
       28 CONCAT                           R7 R8 R10
       29 FASTCALL2                        ASSERT R6 R7 ; [+3]
       31 GETIMPORT                        R5 K10 [assert]
       33 CALL                             R5 2 0
       34 JUMPIFEQKS                       R3 K5 ["number"] ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 LOADK                            R8 K11 ["NumSprites must be number. Got type'"]
       39 MOVE                             R9 R3
       40 LOADK                            R10 K8 ["'"]
       41 CONCAT                           R7 R8 R10
       42 FASTCALL2                        ASSERT R6 R7 ; [+3]
       44 GETIMPORT                        R5 K10 [assert]
       46 CALL                             R5 2 0
       47 LOADB                            R6 1
       48 JUMPIFEQKS                       R4 K5 ["number"] ; [+5]
       50 JUMPIFEQKS                       R4 K12 ["nil"] ; [+2]
       52 LOADB                            R6 0 +1
       53 LOADB                            R6 1
       54 LOADK                            R8 K13 ["SpritesheetWidth must be a number or nil. Got '"]
       55 MOVE                             R9 R4
       56 LOADK                            R10 K8 ["'"]
       57 CONCAT                           R7 R8 R10
       58 FASTCALL2                        ASSERT R6 R7 ; [+3]
       60 GETIMPORT                        R5 K10 [assert]
       62 CALL                             R5 2 0
       63 JUMPIFNOTEQKS                    R2 K5 ["number"] ; [+10]
       65 GETIMPORT                        R6 K15 [Vector2.new]
       67 LOADN                            R7 1
       68 LOADN                            R8 1
       69 CALL                             R6 2 1
       70 GETTABLEKS                       R7 R1 K0 ["SpriteSize"]
       72 MUL                              R5 R6 R7
       73 JUMPIF                           R5 ; [+2]
       74 GETTABLEKS                       R5 R1 K0 ["SpriteSize"]
       76 GETTABLEKS                       R6 R1 K3 ["NumSprites"]
       78 GETTABLEKS                       R8 R1 K4 ["SpritesheetWidth"]
       80 ORK                              R7 R8 K16 [1024]
       81 LOADB                            R9 0
       82 GETTABLEKS                       R10 R5 K17 ["X"]
       84 LOADN                            R11 0
       85 JUMPIFNOTLT                      R11 R10 ; [+8]
       87 GETTABLEKS                       R10 R5 K18 ["Y"]
       89 LOADN                            R11 0
       90 JUMPIFLT                         R11 R10 ; [+2]
       92 LOADB                            R9 0 +1
       93 LOADB                            R9 1
       94 LOADK                            R11 K19 ["SpriteSize does not support <= 0 values. Got '"]
       95 FASTCALL1                        TOSTRING R5 ; [+3]
       96 MOVE                             R15 R5
       97 GETIMPORT                        R14 K21 [tostring]
       99 CALL                             R14 1 1
      100 MOVE                             R12 R14
      101 LOADK                            R13 K8 ["'"]
      102 CONCAT                           R10 R11 R13
      103 FASTCALL2                        ASSERT R9 R10 ; [+3]
      105 GETIMPORT                        R8 K10 [assert]
      107 CALL                             R8 2 0
      108 LOADN                            R10 0
      109 JUMPIFLT                         R10 R6 ; [+2]
      111 LOADB                            R9 0 +1
      112 LOADB                            R9 1
      113 LOADK                            R11 K22 ["NumSprites must be > 0. Got '"]
      114 MOVE                             R12 R6
      115 CONCAT                           R10 R11 R12
      116 FASTCALL2                        ASSERT R9 R10 ; [+3]
      118 GETIMPORT                        R8 K10 [assert]
      120 CALL                             R8 2 0
      121 LOADN                            R10 0
      122 JUMPIFLT                         R10 R7 ; [+2]
      124 LOADB                            R9 0 +1
      125 LOADB                            R9 1
      126 LOADK                            R11 K23 ["SpritesheetWidth does not support <= 0 values. Got '"]
      127 MOVE                             R12 R7
      128 LOADK                            R13 K8 ["'"]
      129 CONCAT                           R10 R11 R13
      130 FASTCALL2                        ASSERT R9 R10 ; [+3]
      132 GETIMPORT                        R8 K10 [assert]
      134 CALL                             R8 2 0
      135 NEWTABLE                         R8 0 0
      137 GETTABLEKS                       R11 R5 K17 ["X"]
      139 DIV                              R10 R7 R11
      140 FASTCALL1                        MATH_FLOOR R10 ; [+2]
      141 GETIMPORT                        R9 K26 [math.floor]
      143 CALL                             R9 1 1
      144 LOADN                            R12 0
      145 GETTABLEKS                       R13 R1 K3 ["NumSprites"]
      147 SUBK                             R10 R13 K27 [1]
      148 LOADN                            R11 1
      149 FORNPREP                         R10
      150 DIV                              R14 R12 R9
      151 FASTCALL1                        MATH_FLOOR R14 ; [+2]
      152 GETIMPORT                        R13 K26 [math.floor]
      154 CALL                             R13 1 1
      155 MOD                              R14 R12 R9
      156 DUPTABLE                         R17 K31 [{"Image", "ImageRectSize", "ImageRectOffset"}]
      157 SETTABLEKS                       R0 R17 K28 ["Image"]
      159 SETTABLEKS                       R5 R17 K29 ["ImageRectSize"]
      161 GETIMPORT                        R18 K15 [Vector2.new]
      163 GETTABLEKS                       R20 R5 K17 ["X"]
      165 MUL                              R19 R14 R20
      166 GETTABLEKS                       R21 R5 K18 ["Y"]
      168 MUL                              R20 R13 R21
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K30 ["ImageRectOffset"]
      172 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
      174 MOVE                             R16 R8
      175 GETIMPORT                        R15 K34 [table.insert]
      177 CALL                             R15 2 0
      178 FORNLOOP                         R10
      179 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
