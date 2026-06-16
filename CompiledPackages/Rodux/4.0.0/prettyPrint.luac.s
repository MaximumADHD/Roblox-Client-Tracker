PROTO_0:
        0 ORK                              R2 R1 K0 [0]
        1 NEWTABLE                         R3 0 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K2 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+77]
       10 FASTCALL2K                       TABLE_INSERT R3 K4 ; [+5]
       12 MOVE                             R5 R3
       13 LOADK                            R6 K4 ["{\n"]
       14 GETIMPORT                        R4 K6 [table.insert]
       16 CALL                             R4 2 0
       17 GETIMPORT                        R4 K8 [pairs]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 3
       21 FORGPREP_NEXT                    R4
       22 MOVE                             R10 R3
       23 LOADK                            R11 K9 ["    "]
       24 ADDK                             R13 R2 K10 [1]
       25 NAMECALL                         R11 R11 K11 ["rep"]
       27 CALL                             R11 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R9 K6 [table.insert]
       31 CALL                             R9 -1 0
       32 FASTCALL1                        TOSTRING R7 ; [+3]
       33 MOVE                             R12 R7
       34 GETIMPORT                        R11 K13 [tostring]
       36 CALL                             R11 1 1
       37 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       39 MOVE                             R10 R3
       40 GETIMPORT                        R9 K6 [table.insert]
       42 CALL                             R9 2 0
       43 FASTCALL2K                       TABLE_INSERT R3 K14 ; [+5]
       45 MOVE                             R10 R3
       46 LOADK                            R11 K14 [" = "]
       47 GETIMPORT                        R9 K6 [table.insert]
       49 CALL                             R9 2 0
       50 MOVE                             R10 R3
       51 GETUPVAL                         R11 0
       52 MOVE                             R12 R8
       53 ADDK                             R13 R2 K10 [1]
       54 CALL                             R11 2 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R9 K6 [table.insert]
       58 CALL                             R9 -1 0
       59 FASTCALL2K                       TABLE_INSERT R3 K15 ; [+5]
       61 MOVE                             R10 R3
       62 LOADK                            R11 K15 ["\n"]
       63 GETIMPORT                        R9 K6 [table.insert]
       65 CALL                             R9 2 0
       66 FORGLOOP                         R4 2 ; [-45]
       68 MOVE                             R5 R3
       69 LOADK                            R6 K9 ["    "]
       70 MOVE                             R8 R2
       71 NAMECALL                         R6 R6 K11 ["rep"]
       73 CALL                             R6 2 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R4 K6 [table.insert]
       77 CALL                             R4 -1 0
       78 FASTCALL2K                       TABLE_INSERT R3 K16 ; [+5]
       80 MOVE                             R5 R3
       81 LOADK                            R6 K16 ["}"]
       82 GETIMPORT                        R4 K6 [table.insert]
       84 CALL                             R4 2 0
       85 JUMP                             ; [+61]
       86 FASTCALL1                        TYPEOF R0 ; [+3]
       87 MOVE                             R5 R0
       88 GETIMPORT                        R4 K2 [typeof]
       90 CALL                             R4 1 1
       91 JUMPIFNOTEQKS                    R4 K17 ["string"] ; [+19]
       93 MOVE                             R5 R3
       94 GETIMPORT                        R6 K19 [string.format]
       96 LOADK                            R7 K20 ["%q"]
       97 MOVE                             R8 R0
       98 CALL                             R6 2 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R4 K6 [table.insert]
      102 CALL                             R4 -1 0
      103 FASTCALL2K                       TABLE_INSERT R3 K21 ; [+5]
      105 MOVE                             R5 R3
      106 LOADK                            R6 K21 [" (string)"]
      107 GETIMPORT                        R4 K6 [table.insert]
      109 CALL                             R4 2 0
      110 JUMP                             ; [+36]
      111 FASTCALL1                        TOSTRING R0 ; [+3]
      112 MOVE                             R7 R0
      113 GETIMPORT                        R6 K13 [tostring]
      115 CALL                             R6 1 1
      116 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      118 MOVE                             R5 R3
      119 GETIMPORT                        R4 K6 [table.insert]
      121 CALL                             R4 2 0
      122 FASTCALL2K                       TABLE_INSERT R3 K22 ; [+5]
      124 MOVE                             R5 R3
      125 LOADK                            R6 K22 [" ("]
      126 GETIMPORT                        R4 K6 [table.insert]
      128 CALL                             R4 2 0
      129 FASTCALL1                        TYPEOF R0 ; [+3]
      130 MOVE                             R7 R0
      131 GETIMPORT                        R6 K2 [typeof]
      133 CALL                             R6 1 1
      134 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      136 MOVE                             R5 R3
      137 GETIMPORT                        R4 K6 [table.insert]
      139 CALL                             R4 2 0
      140 FASTCALL2K                       TABLE_INSERT R3 K23 ; [+5]
      142 MOVE                             R5 R3
      143 LOADK                            R6 K23 [")"]
      144 GETIMPORT                        R4 K6 [table.insert]
      146 CALL                             R4 2 0
      147 GETIMPORT                        R4 K25 [table.concat]
      149 MOVE                             R5 R3
      150 LOADK                            R6 K26 [""]
      151 CALL                             R4 2 -1
      152 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
