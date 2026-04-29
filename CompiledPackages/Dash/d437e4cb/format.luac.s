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
       13 GETIMPORT                        R6 K2 [pairs]
       15 MOVE                             R7 R3
       16 CALL                             R6 1 3
       17 FORGPREP_NEXT                    R6
       18 LOADK                            R13 K3 ["{{"]
       19 LOADK                            R14 K4 ["{"]
       20 NAMECALL                         R11 R10 K5 ["gsub"]
       22 CALL                             R11 3 1
       23 LOADK                            R13 K6 ["}}"]
       24 LOADK                            R14 K7 ["}"]
       25 NAMECALL                         R11 R11 K5 ["gsub"]
       27 CALL                             R11 3 1
       28 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       30 MOVE                             R13 R5
       31 MOVE                             R14 R11
       32 GETUPVAL                         R12 1
       33 CALL                             R12 2 0
       34 GETTABLE                         R12 R4 R9
       35 JUMPIFNOT                        R12 ; [+6]
       36 GETTABLE                         R12 R4 R9
       37 LOADN                            R14 2
       38 LOADN                            R15 254
       39 NAMECALL                         R12 R12 K8 ["sub"]
       41 CALL                             R12 3 1
       42 JUMPIFNOT                        R12 ; [+73]
       43 LOADK                            R15 K9 ["{+$"]
       44 NAMECALL                         R13 R10 K10 ["gmatch"]
       46 CALL                             R13 2 1
       47 CALL                             R13 0 1
       48 MOVE                             R14 R13
       49 JUMPIFNOT                        R14 ; [+6]
       50 LENGTH                           R16 R13
       51 MODK                             R15 R16 K11 [2]
       52 JUMPIFEQKN                       R15 K12 [1] ; [+2]
       54 LOADB                            R14 0 +1
       55 LOADB                            R14 1
       56 JUMPIF                           R14 ; [+53]
       57 GETUPVAL                         R15 0
       58 MOVE                             R16 R12
       59 LOADK                            R17 K13 [":"]
       60 CALL                             R15 2 1
       61 GETUPVAL                         R16 2
       62 GETTABLEN                        R17 R15 1
       63 LOADK                            R18 K14 ["#"]
       64 CALL                             R16 2 1
       65 JUMPIFNOT                        R16 ; [+6]
       66 GETTABLEN                        R17 R15 1
       67 LOADN                            R19 2
       68 NAMECALL                         R17 R17 K8 ["sub"]
       70 CALL                             R17 2 1
       71 JUMPIF                           R17 ; [+1]
       72 GETTABLEN                        R17 R15 1
       73 FASTCALL1                        TONUMBER R17 ; [+3]
       74 MOVE                             R19 R17
       75 GETIMPORT                        R18 K16 [tonumber]
       77 CALL                             R18 1 1
       78 GETTABLEN                        R19 R15 2
       79 LOADK                            R20 K17 ["nil"]
       80 JUMPIFNOT                        R18 ; [+2]
       81 GETTABLE                         R20 R1 R18
       82 JUMP                             ; [+16]
       83 NAMECALL                         R21 R17 K18 ["len"]
       85 CALL                             R21 1 1
       86 LOADN                            R22 0
       87 JUMPIFNOTLT                      R22 R21 ; [+9]
       89 GETTABLEN                        R21 R1 1
       90 JUMPIFNOT                        R21 ; [+2]
       91 GETTABLEN                        R22 R1 1
       92 GETTABLE                         R21 R22 R17
       93 JUMPIFEQKNIL                     R21 ; [+5]
       95 MOVE                             R20 R21
       96 JUMP                             ; [+2]
       97 GETTABLE                         R20 R1 R2
       98 ADDK                             R2 R2 K12 [1]
       99 JUMPIFNOT                        R16 ; [+1]
      100 LENGTH                           R20 R20
      101 MOVE                             R22 R5
      102 GETUPVAL                         R23 3
      103 MOVE                             R24 R20
      104 ORK                              R25 R19 K19 [""]
      105 CALL                             R23 2 -1
      106 FASTCALL                         TABLE_INSERT ; [+1]
      107 GETUPVAL                         R21 1
      108 CALL                             R21 -1 0
      109 JUMP                             ; [+6]
      110 FASTCALL2                        TABLE_INSERT R5 R12 ; [+4]
      112 MOVE                             R16 R5
      113 MOVE                             R17 R12
      114 GETUPVAL                         R15 1
      115 CALL                             R15 2 0
      116 FORGLOOP                         R6 2 ; [-99]
      118 GETUPVAL                         R6 4
      119 MOVE                             R7 R5
      120 LOADK                            R8 K19 [""]
      121 CALL                             R6 2 -1
      122 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
