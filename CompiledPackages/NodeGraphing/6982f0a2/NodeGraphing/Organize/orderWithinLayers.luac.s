PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 IDIVK                            R2 R1 K1 [2]
        6 MODK                             R3 R1 K1 [2]
        7 JUMPIFNOTEQKN                    R3 K2 [1] ; [+4]
        9 ADDK                             R4 R2 K2 [1]
       10 GETTABLE                         R3 R0 R4
       11 RETURN                           R3 1
       12 GETTABLE                         R5 R0 R2
       13 ADDK                             R7 R2 K2 [1]
       14 GETTABLE                         R6 R0 R7
       15 ADD                              R4 R5 R6
       16 DIVK                             R3 R4 K1 [2]
       17 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R0
        8 GETUPVAL                         R5 1
        9 GETTABLE                         R4 R5 R1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETUPVAL                         R4 0
       16 GETTABLE                         R3 R4 R0
       17 GETUPVAL                         R5 0
       18 GETTABLE                         R4 R5 R1
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 SETTABLE                         R8 R4 R9
        7 FORGLOOP                         R5 2 ; [-2]
        9 NEWTABLE                         R5 0 0
       11 MOVE                             R6 R0
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 SETTABLE                         R9 R5 R10
       16 FORGLOOP                         R6 2 ; [-2]
       18 NEWTABLE                         R6 0 0
       20 NEWTABLE                         R7 0 0
       22 GETIMPORT                        R8 K2 [table.create]
       24 LENGTH                           R9 R0
       25 CALL                             R8 1 1
       26 MOVE                             R9 R0
       27 LOADNIL                          R10
       28 LOADNIL                          R11
       29 FORGPREP                         R9
       30 JUMPIFNOT                        R3 ; [+2]
       31 GETTABLE                         R14 R3 R13
       32 JUMP                             ; [+1]
       33 LOADNIL                          R14
       34 NEWTABLE                         R15 0 0
       36 GETTABLE                         R16 R2 R13
       37 LOADNIL                          R17
       38 LOADNIL                          R18
       39 FORGPREP                         R16
       40 GETTABLE                         R21 R4 R20
       41 JUMPIFEQKNIL                     R21 ; [+14]
       43 JUMPIFNOT                        R14 ; [+4]
       44 GETTABLE                         R25 R14 R20
       45 JUMPIF                           R25 ; [+3]
       46 GETUPVAL                         R25 0
       47 JUMP                             ; [+1]
       48 LOADN                            R25 0
       49 ADD                              R24 R21 R25
       50 FASTCALL2                        TABLE_INSERT R15 R24 ; [+4]
       52 MOVE                             R23 R15
       53 GETIMPORT                        R22 K4 [table.insert]
       55 CALL                             R22 2 0
       56 FORGLOOP                         R16 2 ; [-17]
       58 GETIMPORT                        R16 K6 [table.sort]
       60 MOVE                             R17 R15
       61 CALL                             R16 1 0
       62 LENGTH                           R17 R15
       63 JUMPIFNOTEQKN                    R17 K7 [0] ; [+3]
       65 LOADNIL                          R16
       66 JUMP                             ; [+12]
       67 IDIVK                            R18 R17 K8 [2]
       68 MODK                             R19 R17 K8 [2]
       69 JUMPIFNOTEQKN                    R19 K9 [1] ; [+4]
       71 ADDK                             R19 R18 K9 [1]
       72 GETTABLE                         R16 R15 R19
       73 JUMP                             ; [+5]
       74 GETTABLE                         R20 R15 R18
       75 ADDK                             R22 R18 K9 [1]
       76 GETTABLE                         R21 R15 R22
       77 ADD                              R19 R20 R21
       78 DIVK                             R16 R19 K8 [2]
       79 JUMPIFNOTEQKNIL                  R16 ; [+4]
       81 GETTABLE                         R17 R5 R13
       82 SETTABLE                         R13 R8 R17
       83 JUMP                             ; [+8]
       84 SETTABLE                         R16 R7 R13
       85 FASTCALL2                        TABLE_INSERT R6 R13 ; [+5]
       87 MOVE                             R18 R6
       88 MOVE                             R19 R13
       89 GETIMPORT                        R17 K4 [table.insert]
       91 CALL                             R17 2 0
       92 FORGLOOP                         R9 2 ; [-63]
       94 GETIMPORT                        R9 K6 [table.sort]
       96 MOVE                             R10 R6
       97 NEWCLOSURE                       R11 P0
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R5
      100 CALL                             R9 2 0
      101 LOADN                            R9 1
      102 LOADN                            R12 1
      103 LENGTH                           R10 R0
      104 LOADN                            R11 1
      105 FORNPREP                         R10
      106 GETTABLE                         R13 R8 R12
      107 JUMPIFNOTEQKNIL                  R13 ; [+4]
      109 GETTABLE                         R13 R6 R9
      110 SETTABLE                         R13 R8 R12
      111 ADDK                             R9 R9 K9 [1]
      112 FORNLOOP                         R10
      113 RETURN                           R8 1

PROTO_3:
        0 LOADN                            R3 0
        1 LOADN                            R6 1
        2 LENGTH                           R7 R0
        3 SUBK                             R4 R7 K0 [1]
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 GETUPVAL                         R7 0
        7 GETTABLE                         R8 R0 R6
        8 ADDK                             R10 R6 K0 [1]
        9 GETTABLE                         R9 R0 R10
       10 MOVE                             R10 R1
       11 MOVE                             R11 R2
       12 CALL                             R7 4 1
       13 ADD                              R3 R3 R7
       14 FORNLOOP                         R4
       15 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K2 [table.clone]
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 SETTABLE                         R7 R1 R5
       11 FORGLOOP                         R2 2 ; [-6]
       13 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 JUMPIFLT                         R0 R1 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R0
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R1
       15 JUMPIFLT                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["layers"]
        2 LENGTH                           R3 R4
        3 NEWTABLE                         R4 0 0
        5 GETTABLEKS                       R5 R0 K0 ["layers"]
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 MOVE                             R10 R9
       11 LOADNIL                          R11
       12 LOADNIL                          R12
       13 FORGPREP                         R10
       14 JUMPIFEQKNIL                     R2 ; [+3]
       16 GETTABLE                         R15 R2 R14
       17 JUMP                             ; [+1]
       18 LOADNIL                          R15
       19 JUMPIFEQKNIL                     R15 ; [+12]
       21 GETTABLEKS                       R17 R15 K1 ["Y"]
       23 GETTABLEKS                       R20 R0 K3 ["realSize"]
       25 GETTABLE                         R19 R20 R14
       26 GETTABLEKS                       R19 R19 K1 ["Y"]
       28 DIVK                             R18 R19 K2 [2]
       29 ADD                              R16 R17 R18
       30 SETTABLE                         R16 R4 R14
       31 JUMP                             ; [+2]
       32 LOADN                            R16 0
       33 SETTABLE                         R16 R4 R14
       34 FORGLOOP                         R10 2 ; [-21]
       36 FORGLOOP                         R5 2 ; [-27]
       38 NEWTABLE                         R5 0 0
       40 GETTABLEKS                       R6 R0 K0 ["layers"]
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 GETIMPORT                        R11 K6 [table.clone]
       47 MOVE                             R12 R10
       48 CALL                             R11 1 1
       49 GETIMPORT                        R12 K8 [table.sort]
       51 MOVE                             R13 R11
       52 NEWCLOSURE                       R14 P0
       53 CAPTURE                          VAL R4
       54 CALL                             R12 2 0
       55 SETTABLE                         R11 R5 R9
       56 FORGLOOP                         R6 2 ; [-12]
       58 LOADN                            R6 1
       59 JUMPIFNOTLE                      R3 R6 ; [+5]
       61 DUPTABLE                         R6 K10 [{"order"}]
       62 SETTABLEKS                       R5 R6 K9 ["order"]
       64 RETURN                           R6 1
       65 GETUPVAL                         R6 0
       66 MOVE                             R7 R5
       67 CALL                             R6 1 1
       68 GETUPVAL                         R7 1
       69 MOVE                             R8 R5
       70 GETTABLEKS                       R9 R0 K11 ["downAdj"]
       72 GETTABLEKS                       R10 R0 K12 ["portOffset"]
       74 CALL                             R7 3 1
       75 LOADN                            R10 1
       76 GETTABLEKS                       R8 R1 K13 ["iterations"]
       78 LOADN                            R9 1
       79 FORNPREP                         R8
       80 LOADN                            R13 2
       81 MOVE                             R11 R3
       82 LOADN                            R12 1
       83 FORNPREP                         R11
       84 GETUPVAL                         R14 2
       85 GETTABLE                         R15 R5 R13
       86 SUBK                             R17 R13 K14 [1]
       87 GETTABLE                         R16 R5 R17
       88 GETTABLEKS                       R17 R0 K15 ["upAdj"]
       90 CALL                             R14 3 1
       91 SETTABLE                         R14 R5 R13
       92 FORNLOOP                         R11
       93 SUBK                             R13 R3 K14 [1]
       94 LOADN                            R11 1
       95 LOADN                            R12 -1
       96 FORNPREP                         R11
       97 GETUPVAL                         R14 2
       98 GETTABLE                         R15 R5 R13
       99 ADDK                             R17 R13 K14 [1]
      100 GETTABLE                         R16 R5 R17
      101 GETTABLEKS                       R17 R0 K11 ["downAdj"]
      103 GETTABLEKS                       R18 R0 K12 ["portOffset"]
      105 CALL                             R14 4 1
      106 SETTABLE                         R14 R5 R13
      107 FORNLOOP                         R11
      108 GETUPVAL                         R11 1
      109 MOVE                             R12 R5
      110 GETTABLEKS                       R13 R0 K11 ["downAdj"]
      112 GETTABLEKS                       R14 R0 K12 ["portOffset"]
      114 CALL                             R11 3 1
      115 JUMPIFNOTLT                      R11 R7 ; [+6]
      117 MOVE                             R7 R11
      118 GETUPVAL                         R12 0
      119 MOVE                             R13 R5
      120 CALL                             R12 1 1
      121 MOVE                             R6 R12
      122 FORNLOOP                         R8
      123 DUPTABLE                         R8 K10 [{"order"}]
      124 SETTABLEKS                       R6 R8 K9 ["order"]
      126 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Organize"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Organize"]
       18 GETTABLEKS                       R3 R3 K8 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Organize"]
       25 GETTABLEKS                       R4 R4 K9 ["countCrossings"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["CENTERED_PORT_OFFSET"]
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 DUPCLOSURE                       R6 K12 [PROTO_2]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R7 K13 [PROTO_3]
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R8 K14 [PROTO_4]
       36 DUPCLOSURE                       R9 K15 [PROTO_6]
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R6
       40 RETURN                           R9 1
