PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+7]
        2 GETIMPORT                        R4 K1 [require]
        4 GETUPVAL                         R5 1
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R3 R4 K2 ["Set"]
        8 SETUPVAL                         R3 0
        9 GETUPVAL                         R3 2
       10 JUMPIF                           R3 ; [+7]
       11 GETIMPORT                        R4 K1 [require]
       13 GETUPVAL                         R5 1
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R3 R4 K3 ["Map"]
       17 SETUPVAL                         R3 2
       18 JUMPIFNOTEQKNIL                  R0 ; [+5]
       20 GETIMPORT                        R3 K5 [error]
       22 LOADK                            R4 K6 ["cannot create array from a nil value"]
       23 CALL                             R3 1 0
       24 FASTCALL1                        TYPEOF R0 ; [+3]
       25 MOVE                             R4 R0
       26 GETIMPORT                        R3 K8 [typeof]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 0 0
       31 JUMPIFNOTEQKS                    R3 K9 ["table"] ; [+34]
       33 GETUPVAL                         R5 3
       34 MOVE                             R6 R0
       35 CALL                             R5 1 1
       36 JUMPIFNOT                        R5 ; [+29]
       37 JUMPIFNOT                        R1 ; [+20]
       38 LOADN                            R7 1
       39 LENGTH                           R5 R0
       40 LOADN                            R6 1
       41 FORNPREP                         R5
       42 JUMPIFEQKNIL                     R2 ; [+8]
       44 MOVE                             R8 R1
       45 MOVE                             R9 R2
       46 GETTABLE                         R10 R0 R7
       47 MOVE                             R11 R7
       48 CALL                             R8 3 1
       49 SETTABLE                         R8 R4 R7
       50 JUMP                             ; [+5]
       51 MOVE                             R8 R1
       52 GETTABLE                         R9 R0 R7
       53 MOVE                             R10 R7
       54 CALL                             R8 2 1
       55 SETTABLE                         R8 R4 R7
       56 FORNLOOP                         R5
       57 RETURN                           R4 1
       58 LOADN                            R7 1
       59 LENGTH                           R5 R0
       60 LOADN                            R6 1
       61 FORNPREP                         R5
       62 GETTABLE                         R8 R0 R7
       63 SETTABLE                         R8 R4 R7
       64 FORNLOOP                         R5
       65 RETURN                           R4 1
       66 GETUPVAL                         R5 4
       67 MOVE                             R6 R0
       68 GETUPVAL                         R7 0
       69 CALL                             R5 2 1
       70 JUMPIFNOT                        R5 ; [+30]
       71 JUMPIFNOT                        R1 ; [+21]
       72 NAMECALL                         R5 R0 K10 ["ipairs"]
       74 CALL                             R5 1 3
       75 FORGPREP                         R5
       76 JUMPIFEQKNIL                     R2 ; [+8]
       78 MOVE                             R10 R1
       79 MOVE                             R11 R2
       80 MOVE                             R12 R9
       81 MOVE                             R13 R8
       82 CALL                             R10 3 1
       83 SETTABLE                         R10 R4 R8
       84 JUMP                             ; [+5]
       85 MOVE                             R10 R1
       86 MOVE                             R11 R9
       87 MOVE                             R12 R8
       88 CALL                             R10 2 1
       89 SETTABLE                         R10 R4 R8
       90 FORGLOOP                         R5 2 ; [-15]
       92 RETURN                           R4 1
       93 NAMECALL                         R5 R0 K10 ["ipairs"]
       95 CALL                             R5 1 3
       96 FORGPREP                         R5
       97 SETTABLE                         R9 R4 R8
       98 FORGLOOP                         R5 2 ; [-2]
      100 RETURN                           R4 1
      101 GETUPVAL                         R5 4
      102 MOVE                             R6 R0
      103 GETUPVAL                         R7 2
      104 CALL                             R5 2 1
      105 JUMPIFNOT                        R5 ; [+30]
      106 JUMPIFNOT                        R1 ; [+21]
      107 NAMECALL                         R5 R0 K10 ["ipairs"]
      109 CALL                             R5 1 3
      110 FORGPREP                         R5
      111 JUMPIFEQKNIL                     R2 ; [+8]
      113 MOVE                             R10 R1
      114 MOVE                             R11 R2
      115 MOVE                             R12 R9
      116 MOVE                             R13 R8
      117 CALL                             R10 3 1
      118 SETTABLE                         R10 R4 R8
      119 JUMP                             ; [+5]
      120 MOVE                             R10 R1
      121 MOVE                             R11 R9
      122 MOVE                             R12 R8
      123 CALL                             R10 2 1
      124 SETTABLE                         R10 R4 R8
      125 FORGLOOP                         R5 2 ; [-15]
      127 RETURN                           R4 1
      128 NAMECALL                         R5 R0 K10 ["ipairs"]
      130 CALL                             R5 1 3
      131 FORGPREP                         R5
      132 SETTABLE                         R9 R4 R8
      133 FORGLOOP                         R5 2 ; [-2]
      135 RETURN                           R4 1
      136 JUMPIFNOTEQKS                    R3 K11 ["string"] ; [+47]
      138 JUMPIFNOT                        R1 ; [+31]
      139 LOADN                            R7 1
      140 NAMECALL                         R8 R0 K12 ["len"]
      142 CALL                             R8 1 1
      143 MOVE                             R5 R8
      144 LOADN                            R6 1
      145 FORNPREP                         R5
      146 JUMPIFEQKNIL                     R2 ; [+12]
      148 MOVE                             R8 R1
      149 MOVE                             R9 R2
      150 MOVE                             R12 R7
      151 MOVE                             R13 R7
      152 NAMECALL                         R10 R0 K13 ["sub"]
      154 CALL                             R10 3 1
      155 MOVE                             R11 R7
      156 CALL                             R8 3 1
      157 SETTABLE                         R8 R4 R7
      158 JUMP                             ; [+9]
      159 MOVE                             R8 R1
      160 MOVE                             R11 R7
      161 MOVE                             R12 R7
      162 NAMECALL                         R9 R0 K13 ["sub"]
      164 CALL                             R9 3 1
      165 MOVE                             R10 R7
      166 CALL                             R8 2 1
      167 SETTABLE                         R8 R4 R7
      168 FORNLOOP                         R5
      169 RETURN                           R4 1
      170 LOADN                            R7 1
      171 NAMECALL                         R8 R0 K12 ["len"]
      173 CALL                             R8 1 1
      174 MOVE                             R5 R8
      175 LOADN                            R6 1
      176 FORNPREP                         R5
      177 MOVE                             R10 R7
      178 MOVE                             R11 R7
      179 NAMECALL                         R8 R0 K13 ["sub"]
      181 CALL                             R8 3 1
      182 SETTABLE                         R8 R4 R7
      183 FORNLOOP                         R5
      184 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["isArray"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R0 K2 ["Parent"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R2 K6 ["instanceof"]
       16 CALL                             R3 1 1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          REF R4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          REF R5
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CLOSEUPVALS                      R4
       26 RETURN                           R6 1
