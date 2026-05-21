PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+7]
        2 NEWTABLE                         R2 0 1
        4 MOVE                             R3 R0
        5 SETLIST                          R2 R3 1 [1]
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+16]
       16 JUMPIFNOTEQKS                    R1 K3 [""] ; [+7]
       18 NEWTABLE                         R3 0 1
       20 MOVE                             R4 R0
       21 SETLIST                          R3 R4 1 [1]
       23 RETURN                           R3 1
       24 NEWTABLE                         R3 0 1
       26 MOVE                             R4 R1
       27 SETLIST                          R3 R4 1 [1]
       29 MOVE                             R2 R3
       30 JUMP                             ; [+1]
       31 MOVE                             R2 R1
       32 LOADN                            R3 1
       33 NEWTABLE                         R4 0 0
       35 LOADNIL                          R5
       36 GETIMPORT                        R6 K6 [utf8.len]
       38 MOVE                             R7 R0
       39 CALL                             R6 1 2
       40 JUMPIFNOTEQKNIL                  R6 ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 LOADK                            R10 K7 ["string `%s` has an invalid byte at position %s"]
       45 MOVE                             R12 R0
       46 FASTCALL1                        TOSTRING R7 ; [+3]
       47 MOVE                             R14 R7
       48 GETIMPORT                        R13 K9 [tostring]
       50 CALL                             R13 1 1
       51 NAMECALL                         R10 R10 K10 ["format"]
       53 CALL                             R10 3 -1
       54 FASTCALL                         ASSERT ; [+2]
       55 GETIMPORT                        R8 K12 [assert]
       57 CALL                             R8 -1 0
       58 GETUPVAL                         R8 0
       59 MOVE                             R9 R0
       60 MOVE                             R10 R2
       61 MOVE                             R11 R3
       62 CALL                             R8 3 1
       63 JUMPIFEQKNIL                     R8 ; [+21]
       65 MOVE                             R10 R4
       66 GETUPVAL                         R11 1
       67 MOVE                             R12 R0
       68 MOVE                             R13 R3
       69 GETTABLEKS                       R14 R8 K13 ["index"]
       71 CALL                             R11 3 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R9 K16 [table.insert]
       75 CALL                             R9 -1 0
       76 GETIMPORT                        R9 K6 [utf8.len]
       78 GETTABLEKS                       R10 R8 K17 ["match"]
       80 CALL                             R9 1 1
       81 GETTABLEKS                       R10 R8 K13 ["index"]
       83 ADD                              R3 R10 R9
       84 JUMP                             ; [+10]
       85 MOVE                             R10 R4
       86 GETUPVAL                         R11 1
       87 MOVE                             R12 R0
       88 MOVE                             R13 R3
       89 LOADNIL                          R14
       90 CALL                             R11 3 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R9 K16 [table.insert]
       94 CALL                             R9 -1 0
       95 JUMPIFEQKNIL                     R8 ; [+2]
       97 MOVE                             R5 R8
       98 JUMPIFEQKNIL                     R8 ; [+4]
      100 JUMPIFLT                         R6 R3 ; [+2]
      102 JUMPBACK                         ; [-45]
      103 JUMPIFEQKNIL                     R5 ; [+38]
      105 GETIMPORT                        R8 K6 [utf8.len]
      107 GETTABLEKS                       R9 R5 K17 ["match"]
      109 CALL                             R8 1 2
      110 JUMPIFNOTEQKNIL                  R8 ; [+2]
      112 LOADB                            R11 0 +1
      113 LOADB                            R11 1
      114 LOADK                            R12 K7 ["string `%s` has an invalid byte at position %s"]
      115 GETTABLEKS                       R14 R5 K17 ["match"]
      117 FASTCALL1                        TOSTRING R9 ; [+3]
      118 MOVE                             R16 R9
      119 GETIMPORT                        R15 K9 [tostring]
      121 CALL                             R15 1 1
      122 NAMECALL                         R12 R12 K10 ["format"]
      124 CALL                             R12 3 -1
      125 FASTCALL                         ASSERT ; [+2]
      126 GETIMPORT                        R10 K12 [assert]
      128 CALL                             R10 -1 0
      129 GETTABLEKS                       R11 R5 K13 ["index"]
      131 ADD                              R10 R11 R8
      132 ADDK                             R11 R6 K18 [1]
      133 JUMPIFNOTEQ                      R10 R11 ; [+8]
      135 FASTCALL2K                       TABLE_INSERT R4 K3 ; [+5]
      137 MOVE                             R11 R4
      138 LOADK                            R12 K3 [""]
      139 GETIMPORT                        R10 K16 [table.insert]
      141 CALL                             R10 2 0
      142 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["findOr"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["slice"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
