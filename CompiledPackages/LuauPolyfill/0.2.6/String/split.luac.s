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
       36 GETUPVAL                         R6 0
       37 MOVE                             R7 R0
       38 MOVE                             R8 R2
       39 MOVE                             R9 R3
       40 CALL                             R6 3 1
       41 JUMPIFEQKNIL                     R6 ; [+21]
       43 MOVE                             R8 R4
       44 GETUPVAL                         R9 1
       45 MOVE                             R10 R0
       46 MOVE                             R11 R3
       47 GETTABLEKS                       R12 R6 K4 ["index"]
       49 CALL                             R9 3 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R7 K7 [table.insert]
       53 CALL                             R7 -1 0
       54 GETTABLEKS                       R7 R6 K4 ["index"]
       56 GETIMPORT                        R8 K10 [utf8.len]
       58 GETTABLEKS                       R9 R6 K11 ["match"]
       60 CALL                             R8 1 1
       61 ADD                              R3 R7 R8
       62 JUMP                             ; [+10]
       63 MOVE                             R8 R4
       64 GETUPVAL                         R9 1
       65 MOVE                             R10 R0
       66 MOVE                             R11 R3
       67 LOADNIL                          R12
       68 CALL                             R9 3 -1
       69 FASTCALL                         TABLE_INSERT ; [+2]
       70 GETIMPORT                        R7 K7 [table.insert]
       72 CALL                             R7 -1 0
       73 JUMPIFEQKNIL                     R6 ; [+2]
       75 MOVE                             R5 R6
       76 JUMPIFEQKNIL                     R6 ; [+8]
       78 GETIMPORT                        R7 K10 [utf8.len]
       80 MOVE                             R8 R0
       81 CALL                             R7 1 1
       82 JUMPIFLT                         R7 R3 ; [+2]
       84 JUMPBACK                         ; [-49]
       85 GETIMPORT                        R6 K10 [utf8.len]
       87 MOVE                             R7 R0
       88 CALL                             R6 1 1
       89 JUMPIFEQKNIL                     R5 ; [+19]
       91 GETTABLEKS                       R8 R5 K4 ["index"]
       93 GETIMPORT                        R9 K10 [utf8.len]
       95 GETTABLEKS                       R10 R5 K11 ["match"]
       97 CALL                             R9 1 1
       98 ADD                              R7 R8 R9
       99 ADDK                             R8 R6 K12 [1]
      100 JUMPIFNOTEQ                      R7 R8 ; [+8]
      102 FASTCALL2K                       TABLE_INSERT R4 K3 ; [+5]
      104 MOVE                             R8 R4
      105 LOADK                            R9 K3 [""]
      106 GETIMPORT                        R7 K7 [table.insert]
      108 CALL                             R7 2 0
      109 RETURN                           R4 1

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
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1
