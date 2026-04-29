PROTO_0:
        0 ORK                              R1 R1 K0 [0]
        1 NEWTABLE                         R2 0 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+77]
       10 FASTCALL2K                       TABLE_INSERT R2 K4 ; [+5]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K4 ["{\n"]
       14 GETIMPORT                        R3 K6 [table.insert]
       16 CALL                             R3 2 0
       17 GETIMPORT                        R3 K8 [pairs]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 3
       21 FORGPREP_NEXT                    R3
       22 MOVE                             R9 R2
       23 LOADK                            R10 K9 ["    "]
       24 ADDK                             R12 R1 K10 [1]
       25 NAMECALL                         R10 R10 K11 ["rep"]
       27 CALL                             R10 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R8 K6 [table.insert]
       31 CALL                             R8 -1 0
       32 FASTCALL1                        TOSTRING R6 ; [+3]
       33 MOVE                             R11 R6
       34 GETIMPORT                        R10 K13 [tostring]
       36 CALL                             R10 1 1
       37 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       39 MOVE                             R9 R2
       40 GETIMPORT                        R8 K6 [table.insert]
       42 CALL                             R8 2 0
       43 FASTCALL2K                       TABLE_INSERT R2 K14 ; [+5]
       45 MOVE                             R9 R2
       46 LOADK                            R10 K14 [" = "]
       47 GETIMPORT                        R8 K6 [table.insert]
       49 CALL                             R8 2 0
       50 MOVE                             R9 R2
       51 GETUPVAL                         R10 0
       52 MOVE                             R11 R7
       53 ADDK                             R12 R1 K10 [1]
       54 CALL                             R10 2 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R8 K6 [table.insert]
       58 CALL                             R8 -1 0
       59 FASTCALL2K                       TABLE_INSERT R2 K15 ; [+5]
       61 MOVE                             R9 R2
       62 LOADK                            R10 K15 ["\n"]
       63 GETIMPORT                        R8 K6 [table.insert]
       65 CALL                             R8 2 0
       66 FORGLOOP                         R3 2 ; [-45]
       68 MOVE                             R4 R2
       69 LOADK                            R5 K9 ["    "]
       70 MOVE                             R7 R1
       71 NAMECALL                         R5 R5 K11 ["rep"]
       73 CALL                             R5 2 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R3 K6 [table.insert]
       77 CALL                             R3 -1 0
       78 FASTCALL2K                       TABLE_INSERT R2 K16 ; [+5]
       80 MOVE                             R4 R2
       81 LOADK                            R5 K16 ["}"]
       82 GETIMPORT                        R3 K6 [table.insert]
       84 CALL                             R3 2 0
       85 JUMP                             ; [+61]
       86 FASTCALL1                        TYPEOF R0 ; [+3]
       87 MOVE                             R4 R0
       88 GETIMPORT                        R3 K2 [typeof]
       90 CALL                             R3 1 1
       91 JUMPIFNOTEQKS                    R3 K17 ["string"] ; [+19]
       93 MOVE                             R4 R2
       94 GETIMPORT                        R5 K19 [string.format]
       96 LOADK                            R6 K20 ["%q"]
       97 MOVE                             R7 R0
       98 CALL                             R5 2 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R3 K6 [table.insert]
      102 CALL                             R3 -1 0
      103 FASTCALL2K                       TABLE_INSERT R2 K21 ; [+5]
      105 MOVE                             R4 R2
      106 LOADK                            R5 K21 [" (string)"]
      107 GETIMPORT                        R3 K6 [table.insert]
      109 CALL                             R3 2 0
      110 JUMP                             ; [+36]
      111 FASTCALL1                        TOSTRING R0 ; [+3]
      112 MOVE                             R6 R0
      113 GETIMPORT                        R5 K13 [tostring]
      115 CALL                             R5 1 1
      116 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      118 MOVE                             R4 R2
      119 GETIMPORT                        R3 K6 [table.insert]
      121 CALL                             R3 2 0
      122 FASTCALL2K                       TABLE_INSERT R2 K22 ; [+5]
      124 MOVE                             R4 R2
      125 LOADK                            R5 K22 [" ("]
      126 GETIMPORT                        R3 K6 [table.insert]
      128 CALL                             R3 2 0
      129 FASTCALL1                        TYPEOF R0 ; [+3]
      130 MOVE                             R6 R0
      131 GETIMPORT                        R5 K2 [typeof]
      133 CALL                             R5 1 1
      134 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      136 MOVE                             R4 R2
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 FASTCALL2K                       TABLE_INSERT R2 K23 ; [+5]
      142 MOVE                             R4 R2
      143 LOADK                            R5 K23 [")"]
      144 GETIMPORT                        R3 K6 [table.insert]
      146 CALL                             R3 2 0
      147 GETIMPORT                        R3 K25 [table.concat]
      149 MOVE                             R4 R2
      150 LOADK                            R5 K26 [""]
      151 CALL                             R3 2 -1
      152 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
