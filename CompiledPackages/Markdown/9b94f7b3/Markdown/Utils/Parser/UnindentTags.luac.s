PROTO_0:
        0 ORK                              R1 R1 K0 [2]
        1 GETIMPORT                        R2 K3 [string.find]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K4 ["<.->"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 1
        8 GETIMPORT                        R2 K6 [string.gsub]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K7 ["\r\n"]
       12 LOADK                            R5 K8 ["\n"]
       13 CALL                             R2 3 1
       14 GETIMPORT                        R3 K10 [string.split]
       16 MOVE                             R4 R2
       17 LOADK                            R5 K8 ["\n"]
       18 CALL                             R3 2 1
       19 GETIMPORT                        R4 K13 [table.create]
       21 LENGTH                           R5 R3
       22 CALL                             R4 1 1
       23 NEWTABLE                         R5 0 0
       25 MOVE                             R6 R3
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 FORGPREP                         R6
       29 GETIMPORT                        R11 K3 [string.find]
       31 MOVE                             R12 R10
       32 LOADK                            R13 K14 ["^[ \t]*"]
       33 CALL                             R11 2 2
       34 ORK                              R12 R12 K15 [0]
       35 ADDK                             R15 R12 K16 [1]
       36 FASTCALL2                        STRING_SUB R10 R15 ; [+4]
       38 MOVE                             R14 R10
       39 GETIMPORT                        R13 K18 [string.sub]
       41 CALL                             R13 2 1
       42 GETIMPORT                        R14 K3 [string.find]
       44 MOVE                             R15 R13
       45 LOADK                            R16 K19 ["^<"]
       46 CALL                             R14 2 1
       47 JUMPIFNOT                        R14 ; [+47]
       48 GETIMPORT                        R14 K3 [string.find]
       50 MOVE                             R15 R13
       51 LOADK                            R16 K20 ["^</"]
       52 CALL                             R14 2 1
       53 JUMPIFNOT                        R14 ; [+12]
       54 GETIMPORT                        R14 K22 [table.remove]
       56 MOVE                             R15 R5
       57 CALL                             R14 1 0
       58 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
       60 MOVE                             R15 R4
       61 MOVE                             R16 R13
       62 GETIMPORT                        R14 K24 [table.insert]
       64 CALL                             R14 2 0
       65 JUMP                             ; [+58]
       66 GETIMPORT                        R14 K3 [string.find]
       68 MOVE                             R15 R13
       69 LOADK                            R16 K25 ["/>$"]
       70 CALL                             R14 2 1
       71 JUMPIFNOT                        R14 ; [+8]
       72 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
       74 MOVE                             R15 R4
       75 MOVE                             R16 R13
       76 GETIMPORT                        R14 K24 [table.insert]
       78 CALL                             R14 2 0
       79 JUMP                             ; [+44]
       80 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       82 MOVE                             R15 R5
       83 MOVE                             R16 R12
       84 GETIMPORT                        R14 K24 [table.insert]
       86 CALL                             R14 2 0
       87 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
       89 MOVE                             R15 R4
       90 MOVE                             R16 R13
       91 GETIMPORT                        R14 K24 [table.insert]
       93 CALL                             R14 2 0
       94 JUMP                             ; [+29]
       95 LOADN                            R14 0
       96 LENGTH                           R15 R5
       97 LOADN                            R16 0
       98 JUMPIFNOTLT                      R16 R15 ; [+4]
      100 LENGTH                           R16 R5
      101 GETTABLE                         R15 R5 R16
      102 ADD                              R14 R15 R1
      103 LOADN                            R16 0
      104 SUB                              R17 R12 R14
      105 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      107 GETIMPORT                        R15 K28 [math.max]
      109 CALL                             R15 2 1
      110 GETIMPORT                        R21 K30 [string.rep]
      112 LOADK                            R22 K31 [" "]
      113 MOVE                             R23 R15
      114 CALL                             R21 2 1
      115 MOVE                             R19 R21
      116 MOVE                             R20 R13
      117 CONCAT                           R18 R19 R20
      118 FASTCALL2                        TABLE_INSERT R4 R18 ; [+4]
      120 MOVE                             R17 R4
      121 GETIMPORT                        R16 K24 [table.insert]
      123 CALL                             R16 2 0
      124 FORGLOOP                         R6 2 ; [-96]
      126 GETIMPORT                        R6 K33 [table.concat]
      128 MOVE                             R7 R4
      129 LOADK                            R8 K8 ["\n"]
      130 CALL                             R6 2 -1
      131 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
