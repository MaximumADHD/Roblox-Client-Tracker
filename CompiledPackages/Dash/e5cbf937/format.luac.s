PROTO_0:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 LOADN                            R2 1
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R0
        9 LOADK                            R5 K0 ["{[^{}]*}"]
       10 CALL                             R3 2 2
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R3
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 LOADK                            R13 K1 ["{{"]
       18 LOADK                            R14 K2 ["{"]
       19 NAMECALL                         R11 R10 K3 ["gsub"]
       21 CALL                             R11 3 1
       22 LOADK                            R13 K4 ["}}"]
       23 LOADK                            R14 K5 ["}"]
       24 NAMECALL                         R11 R11 K3 ["gsub"]
       26 CALL                             R11 3 1
       27 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       29 MOVE                             R13 R5
       30 MOVE                             R14 R11
       31 GETUPVAL                         R12 1
       32 CALL                             R12 2 0
       33 GETTABLE                         R12 R4 R9
       34 JUMPIFNOT                        R12 ; [+6]
       35 GETTABLE                         R12 R4 R9
       36 LOADN                            R14 2
       37 LOADN                            R15 254
       38 NAMECALL                         R12 R12 K6 ["sub"]
       40 CALL                             R12 3 1
       41 JUMPIFNOT                        R12 ; [+73]
       42 LOADK                            R15 K7 ["{+$"]
       43 NAMECALL                         R13 R10 K8 ["gmatch"]
       45 CALL                             R13 2 1
       46 CALL                             R13 0 1
       47 MOVE                             R14 R13
       48 JUMPIFNOT                        R14 ; [+6]
       49 LENGTH                           R16 R13
       50 MODK                             R15 R16 K9 [2]
       51 JUMPIFEQKN                       R15 K10 [1] ; [+2]
       53 LOADB                            R14 0 +1
       54 LOADB                            R14 1
       55 JUMPIF                           R14 ; [+53]
       56 GETUPVAL                         R15 0
       57 MOVE                             R16 R12
       58 LOADK                            R17 K11 [":"]
       59 CALL                             R15 2 1
       60 GETUPVAL                         R16 2
       61 GETTABLEN                        R17 R15 1
       62 LOADK                            R18 K12 ["#"]
       63 CALL                             R16 2 1
       64 JUMPIFNOT                        R16 ; [+6]
       65 GETTABLEN                        R17 R15 1
       66 LOADN                            R19 2
       67 NAMECALL                         R17 R17 K6 ["sub"]
       69 CALL                             R17 2 1
       70 JUMPIF                           R17 ; [+1]
       71 GETTABLEN                        R17 R15 1
       72 FASTCALL1                        TONUMBER R17 ; [+3]
       73 MOVE                             R19 R17
       74 GETIMPORT                        R18 K14 [tonumber]
       76 CALL                             R18 1 1
       77 GETTABLEN                        R19 R15 2
       78 LOADK                            R20 K15 ["nil"]
       79 JUMPIFNOT                        R18 ; [+2]
       80 GETTABLE                         R20 R1 R18
       81 JUMP                             ; [+16]
       82 NAMECALL                         R21 R17 K16 ["len"]
       84 CALL                             R21 1 1
       85 LOADN                            R22 0
       86 JUMPIFNOTLT                      R22 R21 ; [+9]
       88 GETTABLEN                        R21 R1 1
       89 JUMPIFNOT                        R21 ; [+2]
       90 GETTABLEN                        R22 R1 1
       91 GETTABLE                         R21 R22 R17
       92 JUMPIFEQKNIL                     R21 ; [+5]
       94 MOVE                             R20 R21
       95 JUMP                             ; [+2]
       96 GETTABLE                         R20 R1 R2
       97 ADDK                             R2 R2 K10 [1]
       98 JUMPIFNOT                        R16 ; [+1]
       99 LENGTH                           R20 R20
      100 MOVE                             R22 R5
      101 GETUPVAL                         R23 3
      102 MOVE                             R24 R20
      103 ORK                              R25 R19 K17 [""]
      104 CALL                             R23 2 -1
      105 FASTCALL                         TABLE_INSERT ; [+1]
      106 GETUPVAL                         R21 1
      107 CALL                             R21 -1 0
      108 JUMP                             ; [+6]
      109 FASTCALL2                        TABLE_INSERT R5 R12 ; [+4]
      111 MOVE                             R16 R5
      112 MOVE                             R17 R12
      113 GETUPVAL                         R15 1
      114 CALL                             R15 2 0
      115 FORGLOOP                         R6 2 ; [-99]
      117 GETUPVAL                         R6 4
      118 MOVE                             R7 R5
      119 LOADK                            R8 K17 [""]
      120 CALL                             R6 2 -1
      121 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["formatValue"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["splitOn"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["startsWith"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [table.concat]
       22 GETIMPORT                        R5 K12 [table.insert]
       24 DUPCLOSURE                       R6 K13 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R4
       30 RETURN                           R6 1
