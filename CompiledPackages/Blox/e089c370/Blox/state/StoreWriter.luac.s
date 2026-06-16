PROTO_0:
        0 MOVE                             R2 R0
        1 NEWTABLE                         R3 0 0
        3 LOADNIL                          R4
        4 MOVE                             R5 R1
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETUPVAL                         R10 0
        9 MOVE                             R11 R9
       10 CALL                             R10 1 1
       11 JUMPIFNOT                        R10 ; [+14]
       12 MOVE                             R10 R9
       13 MOVE                             R11 R2
       14 LOADB                            R12 1
       15 CALL                             R10 2 2
       16 MOVE                             R2 R10
       17 MOVE                             R4 R11
       18 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       20 MOVE                             R11 R3
       21 MOVE                             R12 R4
       22 GETIMPORT                        R10 K2 [table.insert]
       24 CALL                             R10 2 0
       25 JUMP                             ; [+8]
       26 GETTABLE                         R2 R2 R9
       27 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       29 MOVE                             R11 R3
       30 MOVE                             R12 R9
       31 GETIMPORT                        R10 K2 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R5 2 ; [-27]
       36 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R6 K5 [{"path", "state", "getVersion", "setVersion", "dirtyTables"}]
        1 SETTABLEKS                       R1 R6 K0 ["path"]
        3 SETTABLEKS                       R0 R6 K1 ["state"]
        5 SETTABLEKS                       R2 R6 K2 ["getVersion"]
        7 SETTABLEKS                       R3 R6 K3 ["setVersion"]
        9 SETTABLEKS                       R4 R6 K4 ["dirtyTables"]
       11 GETUPVAL                         R7 0
       12 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       14 GETIMPORT                        R5 K7 [setmetatable]
       16 CALL                             R5 2 1
       17 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["setVersion"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R0 K2 ["getVersion"]
        5 CALL                             R3 1 1
        6 ADDK                             R2 R3 K1 [1]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["dirtyTables"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R0 K2 ["getVersion"]
        7 CALL                             R4 1 1
        8 ADDK                             R3 R4 K1 [1]
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 FASTCALL1                        TYPEOF R8 ; [+3]
       14 MOVE                             R10 R8
       15 GETIMPORT                        R9 K4 [typeof]
       17 CALL                             R9 1 1
       18 JUMPIFNOTEQKS                    R9 K5 ["table"] ; [+2]
       20 SETTABLE                         R3 R2 R8
       21 FORGLOOP                         R4 2 ; [-9]
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["state"]
        3 GETTABLEKS                       R5 R0 K1 ["path"]
        5 CALL                             R3 2 1
        6 MOVE                             R4 R2
        7 JUMPIF                           R4 ; [+1]
        8 LENGTH                           R4 R3
        9 LENGTH                           R5 R3
       10 JUMPIFNOTLT                      R5 R4 ; [+5]
       12 LOADN                            R5 0
       13 LOADN                            R6 0
       14 MOVE                             R7 R3
       15 RETURN                           R5 3
       16 LENGTH                           R5 R3
       17 JUMPIFNOTEQKN                    R5 K2 [0] ; [+27]
       19 MOVE                             R5 R1
       20 GETTABLEKS                       R6 R0 K0 ["state"]
       22 MOVE                             R7 R3
       23 CALL                             R5 2 1
       24 JUMPIFNOT                        R5 ; [+16]
       25 NEWTABLE                         R7 0 1
       27 GETTABLEKS                       R8 R0 K0 ["state"]
       29 SETLIST                          R7 R8 1 [1]
       31 NAMECALL                         R5 R0 K3 ["markDirty"]
       33 CALL                             R5 2 0
       34 NAMECALL                         R5 R0 K4 ["write"]
       36 CALL                             R5 1 0
       37 LOADN                            R5 1
       38 LOADN                            R6 1
       39 MOVE                             R7 R3
       40 RETURN                           R5 3
       41 LOADN                            R5 1
       42 LOADN                            R6 0
       43 MOVE                             R7 R3
       44 RETURN                           R5 3
       45 NEWTABLE                         R5 0 1
       47 GETTABLEKS                       R6 R0 K0 ["state"]
       49 SETLIST                          R5 R6 1 [1]
       51 LOADN                            R8 1
       52 MOVE                             R6 R4
       53 LOADN                            R7 1
       54 FORNPREP                         R6
       55 GETTABLE                         R9 R3 R8
       56 NEWTABLE                         R10 0 0
       58 MOVE                             R11 R5
       59 LOADNIL                          R12
       60 LOADNIL                          R13
       61 FORGPREP                         R11
       62 FASTCALL1                        TYPEOF R9 ; [+3]
       63 MOVE                             R17 R9
       64 GETIMPORT                        R16 K6 [typeof]
       66 CALL                             R16 1 1
       67 JUMPIFNOTEQKS                    R16 K7 ["table"] ; [+18]
       69 MOVE                             R16 R9
       70 LOADNIL                          R17
       71 LOADNIL                          R18
       72 FORGPREP                         R16
       73 GETTABLE                         R21 R15 R20
       74 JUMPIFEQKNIL                     R21 ; [+8]
       76 FASTCALL2                        TABLE_INSERT R10 R21 ; [+5]
       78 MOVE                             R23 R10
       79 MOVE                             R24 R21
       80 GETIMPORT                        R22 K9 [table.insert]
       82 CALL                             R22 2 0
       83 FORGLOOP                         R16 2 ; [-11]
       85 JUMP                             ; [+10]
       86 GETTABLE                         R16 R15 R9
       87 JUMPIFEQKNIL                     R16 ; [+8]
       89 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
       91 MOVE                             R18 R10
       92 MOVE                             R19 R16
       93 GETIMPORT                        R17 K9 [table.insert]
       95 CALL                             R17 2 0
       96 FORGLOOP                         R11 2 ; [-35]
       98 MOVE                             R5 R10
       99 FORNLOOP                         R6
      100 LOADN                            R6 0
      101 MOVE                             R7 R5
      102 LOADNIL                          R8
      103 LOADNIL                          R9
      104 FORGPREP                         R7
      105 MOVE                             R12 R1
      106 MOVE                             R13 R11
      107 MOVE                             R14 R3
      108 CALL                             R12 2 1
      109 JUMPIFNOT                        R12 ; [+1]
      110 ADDK                             R6 R6 K10 [1]
      111 FORGLOOP                         R7 2 ; [-7]
      113 LOADN                            R7 0
      114 JUMPIFNOTLT                      R7 R6 ; [+8]
      116 MOVE                             R9 R5
      117 NAMECALL                         R7 R0 K3 ["markDirty"]
      119 CALL                             R7 2 0
      120 NAMECALL                         R7 R0 K4 ["write"]
      122 CALL                             R7 1 0
      123 LENGTH                           R7 R5
      124 MOVE                             R8 R6
      125 MOVE                             R9 R3
      126 RETURN                           R7 3

PROTO_5:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+19]
        3 GETIMPORT                        R2 K3 [table.clear]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K4 ["state"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K4 ["state"]
       16 SETTABLE                         R6 R7 R5
       17 FORGLOOP                         R2 2 ; [-5]
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 LENGTH                           R3 R1
       22 GETTABLE                         R2 R1 R3
       23 GETTABLE                         R4 R0 R2
       24 GETUPVAL                         R5 1
       25 JUMPIFNOTEQ                      R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 GETUPVAL                         R4 1
       31 SETTABLE                         R4 R0 R2
       32 RETURN                           R3 1

PROTO_6:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETTABLEKS                       R7 R0 K1 ["path"]
        5 LENGTH                           R6 R7
        6 SUBK                             R5 R6 K0 [1]
        7 NAMECALL                         R2 R0 K2 ["visit"]
        9 CALL                             R2 3 3
       10 RETURN                           R2 3

PROTO_7:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R2 ; [+2]
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+14]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 1
        9 JUMPIF                           R3 ; [+2]
       10 LENGTH                           R4 R0
       11 ADDK                             R3 R4 K3 [1]
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R0
       14 CALL                             R4 1 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R1 K6 [table.insert]
       18 CALL                             R1 -1 0
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R3 1
       21 JUMPIF                           R3 ; [+2]
       22 LENGTH                           R4 R0
       23 ADDK                             R3 R4 K3 [1]
       24 GETUPVAL                         R4 0
       25 FASTCALL3                        TABLE_INSERT R0 R3 R4
       27 MOVE                             R2 R0
       28 GETIMPORT                        R1 K6 [table.insert]
       30 CALL                             R1 3 0
       31 LOADB                            R1 1
       32 RETURN                           R1 1

PROTO_8:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R2
        3 NAMECALL                         R3 R0 K0 ["visit"]
        5 CALL                             R3 2 -1
        6 RETURN                           R3 -1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 0
        5 LENGTH                           R2 R0
        6 LOADN                            R3 1
        7 JUMPIFLT                         R3 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_10:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 NAMECALL                         R2 R0 K0 ["visit"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 1
        3 LENGTH                           R2 R0
        4 MOVE                             R5 R2
        5 LOADN                            R3 2
        6 LOADN                            R4 255
        7 FORNPREP                         R3
        8 MOVE                             R9 R1
        9 CALL                             R9 0 1
       10 MUL                              R8 R9 R5
       11 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       12 GETIMPORT                        R7 K3 [math.floor]
       14 CALL                             R7 1 1
       15 ADDK                             R6 R7 K0 [1]
       16 GETTABLE                         R7 R0 R6
       17 GETTABLE                         R8 R0 R5
       18 SETTABLE                         R7 R0 R5
       19 SETTABLE                         R8 R0 R6
       20 FORNLOOP                         R3
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_12:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R0 K0 ["visit"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_13:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETIMPORT                        R2 K2 [table.remove]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 0
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+5]
       10 GETIMPORT                        R2 K2 [table.remove]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 MOVE                             R1 R2
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_14:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 NAMECALL                         R2 R0 K0 ["visit"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_15:
        0 JUMPIFLT                         R1 R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_16:
        0 LENGTH                           R3 R1
        1 GETTABLE                         R2 R1 R3
        2 FASTCALL1                        TYPEOF R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+18]
        9 GETIMPORT                        R3 K4 [table.sort]
       11 MOVE                             R4 R2
       12 DUPCLOSURE                       R5 K5 [PROTO_15]
       13 CALL                             R3 2 0
       14 MOVE                             R3 R2
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETIMPORT                        R8 K7 [table.remove]
       20 MOVE                             R9 R0
       21 MOVE                             R10 R7
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 2 ; [-6]
       25 JUMP                             ; [+5]
       26 GETIMPORT                        R3 K7 [table.remove]
       28 MOVE                             R4 R0
       29 MOVE                             R5 R2
       30 CALL                             R3 2 0
       31 LOADB                            R3 1
       32 RETURN                           R3 1

PROTO_17:
        0 DUPCLOSURE                       R3 K0 [PROTO_16]
        1 GETTABLEKS                       R6 R0 K2 ["path"]
        3 LENGTH                           R5 R6
        4 SUBK                             R4 R5 K1 [1]
        5 NAMECALL                         R1 R0 K3 ["visit"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_18:
        0 LENGTH                           R3 R1
        1 GETTABLE                         R2 R1 R3
        2 GETTABLE                         R3 R0 R2
        3 GETUPVAL                         R4 0
        4 ADD                              R3 R3 R4
        5 SETTABLE                         R3 R0 R2
        6 LOADB                            R3 1
        7 RETURN                           R3 1

PROTO_19:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 GETTABLEKS                       R7 R0 K1 ["path"]
        4 LENGTH                           R6 R7
        5 SUBK                             R5 R6 K0 [1]
        6 NAMECALL                         R2 R0 K2 ["visit"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["state"]
       11 GETTABLEKS                       R2 R2 K6 ["Signals"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K7 ["isCallable"]
       16 GETTABLEKS                       R3 R1 K8 ["peek"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETTABLEKS                       R5 R0 K9 ["util"]
       22 GETTABLEKS                       R5 R5 K10 ["pretty"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R0 K11 ["types"]
       29 CALL                             R5 1 1
       30 NEWTABLE                         R6 16 0
       32 SETTABLEKS                       R6 R6 K12 ["__index"]
       34 DUPCLOSURE                       R7 K13 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R8 K14 [PROTO_1]
       37 CAPTURE                          VAL R6
       38 SETTABLEKS                       R8 R6 K15 ["new"]
       40 DUPCLOSURE                       R8 K16 [PROTO_2]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R8 R6 K17 ["write"]
       44 DUPCLOSURE                       R8 K18 [PROTO_3]
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R8 R6 K19 ["markDirty"]
       48 DUPCLOSURE                       R8 K20 [PROTO_4]
       49 CAPTURE                          VAL R7
       50 SETTABLEKS                       R8 R6 K21 ["visit"]
       52 DUPCLOSURE                       R8 K22 [PROTO_6]
       53 SETTABLEKS                       R8 R6 K23 ["set"]
       55 DUPCLOSURE                       R8 K24 [PROTO_8]
       56 SETTABLEKS                       R8 R6 K25 ["insert"]
       58 DUPCLOSURE                       R8 K26 [PROTO_10]
       59 SETTABLEKS                       R8 R6 K27 ["sort"]
       61 GETIMPORT                        R8 K30 [math.random]
       63 DUPCLOSURE                       R9 K31 [PROTO_12]
       64 CAPTURE                          VAL R8
       65 SETTABLEKS                       R9 R6 K32 ["shuffle"]
       67 DUPCLOSURE                       R9 K33 [PROTO_14]
       68 SETTABLEKS                       R9 R6 K34 ["remove"]
       70 DUPCLOSURE                       R9 K35 [PROTO_17]
       71 SETTABLEKS                       R9 R6 K36 ["delete"]
       73 DUPCLOSURE                       R9 K37 [PROTO_19]
       74 SETTABLEKS                       R9 R6 K38 ["add"]
       76 RETURN                           R6 1
