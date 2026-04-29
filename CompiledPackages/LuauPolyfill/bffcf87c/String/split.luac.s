PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+7]
        2 NEWTABLE                         R3 0 1
        4 MOVE                             R4 R0
        5 SETLIST                          R3 R4 1 [1]
        7 RETURN                           R3 1
        8 JUMPIFNOTEQKN                    R2 K0 [0] ; [+4]
       10 NEWTABLE                         R3 0 0
       12 RETURN                           R3 1
       13 JUMPIFEQKNIL                     R2 ; [+4]
       15 LOADN                            R4 0
       16 JUMPIFNOTLT                      R2 R4 ; [+3]
       18 GETUPVAL                         R3 0
       19 JUMP                             ; [+1]
       20 MOVE                             R3 R2
       21 LOADNIL                          R4
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K2 [typeof]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+27]
       29 JUMPIFNOTEQKS                    R1 K4 [""] ; [+18]
       31 NEWTABLE                         R5 0 0
       33 LOADK                            R8 K5 ["."]
       34 NAMECALL                         R6 R0 K6 ["gmatch"]
       36 CALL                             R6 2 3
       37 FORGPREP                         R6
       38 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       40 MOVE                             R12 R5
       41 MOVE                             R13 R9
       42 GETIMPORT                        R11 K9 [table.insert]
       44 CALL                             R11 2 0
       45 FORGLOOP                         R6 1 ; [-8]
       47 RETURN                           R5 1
       48 NEWTABLE                         R5 0 1
       50 MOVE                             R6 R1
       51 SETLIST                          R5 R6 1 [1]
       53 MOVE                             R4 R5
       54 JUMP                             ; [+1]
       55 MOVE                             R4 R1
       56 LOADN                            R5 1
       57 NEWTABLE                         R6 0 0
       59 LOADNIL                          R7
       60 GETIMPORT                        R8 K12 [utf8.len]
       62 MOVE                             R9 R0
       63 CALL                             R8 1 2
       64 JUMPIFNOTEQKNIL                  R8 ; [+2]
       66 LOADB                            R11 0 +1
       67 LOADB                            R11 1
       68 LOADK                            R12 K13 ["string `%s` has an invalid byte at position %s"]
       69 MOVE                             R14 R0
       70 FASTCALL1                        TOSTRING R9 ; [+3]
       71 MOVE                             R16 R9
       72 GETIMPORT                        R15 K15 [tostring]
       74 CALL                             R15 1 1
       75 NAMECALL                         R12 R12 K16 ["format"]
       77 CALL                             R12 3 -1
       78 FASTCALL                         ASSERT ; [+2]
       79 GETIMPORT                        R10 K18 [assert]
       81 CALL                             R10 -1 0
       82 GETUPVAL                         R10 1
       83 MOVE                             R11 R0
       84 MOVE                             R12 R4
       85 MOVE                             R13 R5
       86 CALL                             R10 3 1
       87 JUMPIFEQKNIL                     R10 ; [+21]
       89 MOVE                             R12 R6
       90 GETUPVAL                         R13 2
       91 MOVE                             R14 R0
       92 MOVE                             R15 R5
       93 GETTABLEKS                       R16 R10 K19 ["index"]
       95 CALL                             R13 3 -1
       96 FASTCALL                         TABLE_INSERT ; [+2]
       97 GETIMPORT                        R11 K9 [table.insert]
       99 CALL                             R11 -1 0
      100 GETIMPORT                        R11 K12 [utf8.len]
      102 GETTABLEKS                       R12 R10 K20 ["match"]
      104 CALL                             R11 1 1
      105 GETTABLEKS                       R12 R10 K19 ["index"]
      107 ADD                              R5 R12 R11
      108 JUMP                             ; [+10]
      109 MOVE                             R12 R6
      110 GETUPVAL                         R13 2
      111 MOVE                             R14 R0
      112 MOVE                             R15 R5
      113 LOADNIL                          R16
      114 CALL                             R13 3 -1
      115 FASTCALL                         TABLE_INSERT ; [+2]
      116 GETIMPORT                        R11 K9 [table.insert]
      118 CALL                             R11 -1 0
      119 JUMPIFEQKNIL                     R10 ; [+2]
      121 MOVE                             R7 R10
      122 JUMPIFEQKNIL                     R10 ; [+7]
      124 JUMPIFLT                         R8 R5 ; [+5]
      126 LENGTH                           R11 R6
      127 JUMPIFLE                         R3 R11 ; [+2]
      129 JUMPBACK                         ; [-48]
      130 JUMPIFEQKNIL                     R7 ; [+38]
      132 GETIMPORT                        R10 K12 [utf8.len]
      134 GETTABLEKS                       R11 R7 K20 ["match"]
      136 CALL                             R10 1 2
      137 JUMPIFNOTEQKNIL                  R10 ; [+2]
      139 LOADB                            R13 0 +1
      140 LOADB                            R13 1
      141 LOADK                            R14 K13 ["string `%s` has an invalid byte at position %s"]
      142 GETTABLEKS                       R16 R7 K20 ["match"]
      144 FASTCALL1                        TOSTRING R11 ; [+3]
      145 MOVE                             R18 R11
      146 GETIMPORT                        R17 K15 [tostring]
      148 CALL                             R17 1 1
      149 NAMECALL                         R14 R14 K16 ["format"]
      151 CALL                             R14 3 -1
      152 FASTCALL                         ASSERT ; [+2]
      153 GETIMPORT                        R12 K18 [assert]
      155 CALL                             R12 -1 0
      156 GETTABLEKS                       R13 R7 K19 ["index"]
      158 ADD                              R12 R13 R10
      159 ADDK                             R13 R8 K21 [1]
      160 JUMPIFNOTEQ                      R12 R13 ; [+8]
      162 FASTCALL2K                       TABLE_INSERT R6 K4 ; [+5]
      164 MOVE                             R13 R6
      165 LOADK                            R14 K4 [""]
      166 GETIMPORT                        R12 K9 [table.insert]
      168 CALL                             R12 2 0
      169 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["findOr"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["slice"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R4 K3 [script]
       21 GETTABLEKS                       R3 R4 K4 ["Parent"]
       23 GETTABLEKS                       R2 R3 K4 ["Parent"]
       25 GETIMPORT                        R3 K1 [require]
       27 GETTABLEKS                       R4 R2 K7 ["types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R5 K1 [require]
       32 GETTABLEKS                       R6 R2 K8 ["Number"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R4 R5 K9 ["MAX_SAFE_INTEGER"]
       37 DUPCLOSURE                       R5 K10 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 RETURN                           R5 1
