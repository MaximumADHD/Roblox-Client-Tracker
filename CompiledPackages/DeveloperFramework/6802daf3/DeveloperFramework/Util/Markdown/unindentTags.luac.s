PROTO_0:
        0 ORK                              R2 R1 K0 [2]
        1 GETIMPORT                        R3 K3 [string.find]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K4 ["<.->"]
        5 CALL                             R3 2 1
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 1
        8 GETIMPORT                        R3 K6 [string.gsub]
       10 MOVE                             R4 R0
       11 LOADK                            R5 K7 ["\r\n"]
       12 LOADK                            R6 K8 ["\n"]
       13 CALL                             R3 3 1
       14 GETIMPORT                        R4 K10 [string.split]
       16 MOVE                             R5 R3
       17 LOADK                            R6 K8 ["\n"]
       18 CALL                             R4 2 1
       19 GETIMPORT                        R5 K13 [table.create]
       21 LENGTH                           R6 R4
       22 CALL                             R5 1 1
       23 NEWTABLE                         R6 0 0
       25 MOVE                             R7 R4
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 GETIMPORT                        R12 K3 [string.find]
       31 MOVE                             R13 R11
       32 LOADK                            R14 K14 ["^[ \t]*"]
       33 CALL                             R12 2 2
       34 ORK                              R14 R13 K15 [0]
       35 ADDK                             R17 R14 K16 [1]
       36 FASTCALL2                        STRING_SUB R11 R17 ; [+4]
       38 MOVE                             R16 R11
       39 GETIMPORT                        R15 K18 [string.sub]
       41 CALL                             R15 2 1
       42 GETIMPORT                        R16 K3 [string.find]
       44 MOVE                             R17 R15
       45 LOADK                            R18 K19 ["^<"]
       46 CALL                             R16 2 1
       47 JUMPIFNOT                        R16 ; [+47]
       48 GETIMPORT                        R16 K3 [string.find]
       50 MOVE                             R17 R15
       51 LOADK                            R18 K20 ["^</"]
       52 CALL                             R16 2 1
       53 JUMPIFNOT                        R16 ; [+12]
       54 GETIMPORT                        R16 K22 [table.remove]
       56 MOVE                             R17 R6
       57 CALL                             R16 1 0
       58 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       60 MOVE                             R17 R5
       61 MOVE                             R18 R15
       62 GETIMPORT                        R16 K24 [table.insert]
       64 CALL                             R16 2 0
       65 JUMP                             ; [+58]
       66 GETIMPORT                        R16 K3 [string.find]
       68 MOVE                             R17 R15
       69 LOADK                            R18 K25 ["/>$"]
       70 CALL                             R16 2 1
       71 JUMPIFNOT                        R16 ; [+8]
       72 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       74 MOVE                             R17 R5
       75 MOVE                             R18 R15
       76 GETIMPORT                        R16 K24 [table.insert]
       78 CALL                             R16 2 0
       79 JUMP                             ; [+44]
       80 FASTCALL2                        TABLE_INSERT R6 R14 ; [+5]
       82 MOVE                             R17 R6
       83 MOVE                             R18 R14
       84 GETIMPORT                        R16 K24 [table.insert]
       86 CALL                             R16 2 0
       87 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       89 MOVE                             R17 R5
       90 MOVE                             R18 R15
       91 GETIMPORT                        R16 K24 [table.insert]
       93 CALL                             R16 2 0
       94 JUMP                             ; [+29]
       95 LOADN                            R16 0
       96 LENGTH                           R17 R6
       97 LOADN                            R18 0
       98 JUMPIFNOTLT                      R18 R17 ; [+4]
      100 LENGTH                           R18 R6
      101 GETTABLE                         R17 R6 R18
      102 ADD                              R16 R17 R2
      103 LOADN                            R18 0
      104 SUB                              R19 R14 R16
      105 FASTCALL2                        MATH_MAX R18 R19 ; [+3]
      107 GETIMPORT                        R17 K28 [math.max]
      109 CALL                             R17 2 1
      110 GETIMPORT                        R23 K30 [string.rep]
      112 LOADK                            R24 K31 [" "]
      113 MOVE                             R25 R17
      114 CALL                             R23 2 1
      115 MOVE                             R21 R23
      116 MOVE                             R22 R15
      117 CONCAT                           R20 R21 R22
      118 FASTCALL2                        TABLE_INSERT R5 R20 ; [+4]
      120 MOVE                             R19 R5
      121 GETIMPORT                        R18 K24 [table.insert]
      123 CALL                             R18 2 0
      124 FORGLOOP                         R7 2 ; [-96]
      126 GETIMPORT                        R7 K33 [table.concat]
      128 MOVE                             R8 R5
      129 LOADK                            R9 K8 ["\n"]
      130 CALL                             R7 2 -1
      131 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
