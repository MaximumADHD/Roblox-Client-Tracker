PROTO_0:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R0 R2
        5 GETIMPORT                        R2 K2 [string.lower]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 GETIMPORT                        R2 K5 [utf8.len]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [utf8.len]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 1
       18 NEWTABLE                         R4 0 0
       20 LOADN                            R7 1
       21 ADDK                             R5 R2 K6 [1]
       22 LOADN                            R6 1
       23 FORNPREP                         R5
       24 GETIMPORT                        R8 K9 [table.create]
       26 ADDK                             R9 R3 K6 [1]
       27 LOADN                            R10 0
       28 CALL                             R8 2 1
       29 SETTABLE                         R8 R4 R7
       30 FORNLOOP                         R5
       31 LOADN                            R7 1
       32 ADDK                             R5 R2 K6 [1]
       33 LOADN                            R6 1
       34 FORNPREP                         R5
       35 GETTABLE                         R8 R4 R7
       36 SUBK                             R9 R7 K6 [1]
       37 SETTABLEN                        R9 R8 1
       38 FORNLOOP                         R5
       39 LOADN                            R7 1
       40 ADDK                             R5 R3 K6 [1]
       41 LOADN                            R6 1
       42 FORNPREP                         R5
       43 GETTABLEN                        R8 R4 1
       44 SUBK                             R9 R7 K6 [1]
       45 SETTABLE                         R9 R8 R7
       46 FORNLOOP                         R5
       47 LOADNIL                          R5
       48 NEWTABLE                         R6 0 0
       50 NEWTABLE                         R7 0 0
       52 GETIMPORT                        R8 K11 [utf8.graphemes]
       54 MOVE                             R9 R0
       55 CALL                             R8 1 3
       56 FORGPREP                         R8
       57 MOVE                             R14 R6
       58 MOVE                             R17 R11
       59 MOVE                             R18 R12
       60 NAMECALL                         R15 R0 K12 ["sub"]
       62 CALL                             R15 3 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R13 K14 [table.insert]
       66 CALL                             R13 -1 0
       67 FORGLOOP                         R8 2 ; [-11]
       69 GETIMPORT                        R8 K11 [utf8.graphemes]
       71 MOVE                             R9 R1
       72 CALL                             R8 1 3
       73 FORGPREP                         R8
       74 MOVE                             R14 R7
       75 MOVE                             R17 R11
       76 MOVE                             R18 R12
       77 NAMECALL                         R15 R1 K12 ["sub"]
       79 CALL                             R15 3 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R13 K14 [table.insert]
       83 CALL                             R13 -1 0
       84 FORGLOOP                         R8 2 ; [-11]
       86 LOADN                            R10 2
       87 LENGTH                           R11 R6
       88 ADDK                             R8 R11 K6 [1]
       89 LOADN                            R9 1
       90 FORNPREP                         R8
       91 LOADN                            R13 2
       92 LENGTH                           R14 R7
       93 ADDK                             R11 R14 K6 [1]
       94 LOADN                            R12 1
       95 FORNPREP                         R11
       96 SUBK                             R15 R10 K6 [1]
       97 GETTABLE                         R14 R6 R15
       98 SUBK                             R16 R13 K6 [1]
       99 GETTABLE                         R15 R7 R16
      100 JUMPIFNOTEQ                      R14 R15 ; [+3]
      102 LOADN                            R5 0
      103 JUMP                             ; [+1]
      104 LOADN                            R5 1
      105 GETTABLE                         R14 R4 R10
      106 SUBK                             R19 R10 K6 [1]
      107 GETTABLE                         R18 R4 R19
      108 GETTABLE                         R17 R18 R13
      109 ADDK                             R16 R17 K6 [1]
      110 GETTABLE                         R19 R4 R10
      111 SUBK                             R20 R13 K6 [1]
      112 GETTABLE                         R18 R19 R20
      113 ADDK                             R17 R18 K6 [1]
      114 SUBK                             R21 R10 K6 [1]
      115 GETTABLE                         R20 R4 R21
      116 SUBK                             R21 R13 K6 [1]
      117 GETTABLE                         R19 R20 R21
      118 ADD                              R18 R19 R5
      119 FASTCALL                         MATH_MIN ; [+2]
      120 GETIMPORT                        R15 K17 [math.min]
      122 CALL                             R15 3 1
      123 SETTABLE                         R15 R14 R13
      124 LOADN                            R14 2
      125 JUMPIFNOTLT                      R14 R10 ; [+30]
      127 LOADN                            R14 2
      128 JUMPIFNOTLT                      R14 R13 ; [+27]
      130 SUBK                             R15 R10 K6 [1]
      131 GETTABLE                         R14 R6 R15
      132 SUBK                             R16 R13 K18 [2]
      133 GETTABLE                         R15 R7 R16
      134 JUMPIFNOTEQ                      R14 R15 ; [+21]
      136 SUBK                             R15 R10 K18 [2]
      137 GETTABLE                         R14 R6 R15
      138 SUBK                             R16 R13 K6 [1]
      139 GETTABLE                         R15 R7 R16
      140 JUMPIFNOTEQ                      R14 R15 ; [+15]
      142 GETTABLE                         R14 R4 R10
      143 GETTABLE                         R17 R4 R10
      144 GETTABLE                         R16 R17 R13
      145 SUBK                             R20 R10 K18 [2]
      146 GETTABLE                         R19 R4 R20
      147 SUBK                             R20 R13 K18 [2]
      148 GETTABLE                         R18 R19 R20
      149 ADDK                             R17 R18 K6 [1]
      150 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
      152 GETIMPORT                        R15 K17 [math.min]
      154 CALL                             R15 2 1
      155 SETTABLE                         R15 R14 R13
      156 FORNLOOP                         R11
      157 FORNLOOP                         R8
      158 ADDK                             R10 R2 K6 [1]
      159 GETTABLE                         R9 R4 R10
      160 ADDK                             R10 R3 K6 [1]
      161 GETTABLE                         R8 R9 R10
      162 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
