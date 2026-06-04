PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 LOADK                            R3 K2 ["string"]
        8 LOADK                            R4 K3 ["Attempted to call Dash.format with argument #1 of type {left:?} not {right:?}"]
        9 CALL                             R1 3 0
       10 NEWTABLE                         R1 0 0
       12 GETVARARGS                       R2 -1
       13 SETLIST                          R1 R2 -1 [1]
       15 LOADN                            R2 1
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R0
       18 LOADK                            R5 K4 ["{[^{}]*}"]
       19 CALL                             R3 2 2
       20 NEWTABLE                         R5 0 0
       22 GETIMPORT                        R6 K6 [pairs]
       24 MOVE                             R7 R3
       25 CALL                             R6 1 3
       26 FORGPREP_NEXT                    R6
       27 LOADK                            R13 K7 ["{{"]
       28 LOADK                            R14 K8 ["{"]
       29 NAMECALL                         R11 R10 K9 ["gsub"]
       31 CALL                             R11 3 1
       32 LOADK                            R13 K10 ["}}"]
       33 LOADK                            R14 K11 ["}"]
       34 NAMECALL                         R11 R11 K9 ["gsub"]
       36 CALL                             R11 3 1
       37 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       39 MOVE                             R13 R5
       40 MOVE                             R14 R11
       41 GETUPVAL                         R12 2
       42 CALL                             R12 2 0
       43 GETTABLE                         R12 R4 R9
       44 JUMPIFNOT                        R12 ; [+6]
       45 GETTABLE                         R12 R4 R9
       46 LOADN                            R14 2
       47 LOADN                            R15 254
       48 NAMECALL                         R12 R12 K12 ["sub"]
       50 CALL                             R12 3 1
       51 JUMPIFNOT                        R12 ; [+73]
       52 LOADK                            R15 K13 ["{+$"]
       53 NAMECALL                         R13 R10 K14 ["gmatch"]
       55 CALL                             R13 2 1
       56 CALL                             R13 0 1
       57 MOVE                             R14 R13
       58 JUMPIFNOT                        R14 ; [+6]
       59 LENGTH                           R16 R13
       60 MODK                             R15 R16 K15 [2]
       61 JUMPIFEQKN                       R15 K16 [1] ; [+2]
       63 LOADB                            R14 0 +1
       64 LOADB                            R14 1
       65 JUMPIF                           R14 ; [+53]
       66 GETUPVAL                         R15 1
       67 MOVE                             R16 R12
       68 LOADK                            R17 K17 [":"]
       69 CALL                             R15 2 1
       70 GETUPVAL                         R16 3
       71 GETTABLEN                        R17 R15 1
       72 LOADK                            R18 K18 ["#"]
       73 CALL                             R16 2 1
       74 JUMPIFNOT                        R16 ; [+6]
       75 GETTABLEN                        R17 R15 1
       76 LOADN                            R19 2
       77 NAMECALL                         R17 R17 K12 ["sub"]
       79 CALL                             R17 2 1
       80 JUMPIF                           R17 ; [+1]
       81 GETTABLEN                        R17 R15 1
       82 FASTCALL1                        TONUMBER R17 ; [+3]
       83 MOVE                             R19 R17
       84 GETIMPORT                        R18 K20 [tonumber]
       86 CALL                             R18 1 1
       87 GETTABLEN                        R19 R15 2
       88 LOADK                            R20 K21 ["nil"]
       89 JUMPIFNOT                        R18 ; [+2]
       90 GETTABLE                         R20 R1 R18
       91 JUMP                             ; [+16]
       92 NAMECALL                         R21 R17 K22 ["len"]
       94 CALL                             R21 1 1
       95 LOADN                            R22 0
       96 JUMPIFNOTLT                      R22 R21 ; [+9]
       98 GETTABLEN                        R21 R1 1
       99 JUMPIFNOT                        R21 ; [+2]
      100 GETTABLEN                        R22 R1 1
      101 GETTABLE                         R21 R22 R17
      102 JUMPIFEQKNIL                     R21 ; [+5]
      104 MOVE                             R20 R21
      105 JUMP                             ; [+2]
      106 GETTABLE                         R20 R1 R2
      107 ADDK                             R2 R2 K16 [1]
      108 JUMPIFNOT                        R16 ; [+1]
      109 LENGTH                           R20 R20
      110 MOVE                             R22 R5
      111 GETUPVAL                         R23 4
      112 MOVE                             R24 R20
      113 ORK                              R25 R19 K23 [""]
      114 CALL                             R23 2 -1
      115 FASTCALL                         TABLE_INSERT ; [+1]
      116 GETUPVAL                         R21 2
      117 CALL                             R21 -1 0
      118 JUMP                             ; [+6]
      119 FASTCALL2                        TABLE_INSERT R5 R12 ; [+4]
      121 MOVE                             R16 R5
      122 MOVE                             R17 R12
      123 GETUPVAL                         R15 2
      124 CALL                             R15 2 0
      125 FORGLOOP                         R6 2 ; [-99]
      127 GETUPVAL                         R6 5
      128 MOVE                             R7 R5
      129 LOADK                            R8 K23 [""]
      130 CALL                             R6 2 -1
      131 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["assertEqual"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["formatValue"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["splitOn"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["startsWith"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K11 [table.concat]
       27 GETIMPORT                        R6 K13 [table.insert]
       29 DUPCLOSURE                       R7 K14 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 RETURN                           R7 1
