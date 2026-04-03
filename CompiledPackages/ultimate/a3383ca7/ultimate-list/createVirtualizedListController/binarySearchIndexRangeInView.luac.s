PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKS                    R2 K0 ["x"] ; [+8]
        3 GETTABLEKS                       R3 R0 K1 ["position"]
        5 GETTABLEKS                       R2 R3 K2 ["X"]
        7 GETTABLEKS                       R1 R2 K3 ["Offset"]
        9 JUMP                             ; [+13]
       10 GETUPVAL                         R2 0
       11 JUMPIFNOTEQKS                    R2 K4 ["y"] ; [+8]
       13 GETTABLEKS                       R3 R0 K1 ["position"]
       15 GETTABLEKS                       R2 R3 K5 ["Y"]
       17 GETTABLEKS                       R1 R2 K3 ["Offset"]
       19 JUMP                             ; [+3]
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R2 0
       22 CALL                             R1 1 1
       23 GETUPVAL                         R3 0
       24 JUMPIFNOTEQKS                    R3 K0 ["x"] ; [+8]
       26 GETTABLEKS                       R4 R0 K6 ["size"]
       28 GETTABLEKS                       R3 R4 K2 ["X"]
       30 GETTABLEKS                       R2 R3 K3 ["Offset"]
       32 JUMP                             ; [+13]
       33 GETUPVAL                         R3 0
       34 JUMPIFNOTEQKS                    R3 K4 ["y"] ; [+8]
       36 GETTABLEKS                       R4 R0 K6 ["size"]
       38 GETTABLEKS                       R3 R4 K5 ["Y"]
       40 GETTABLEKS                       R2 R3 K3 ["Offset"]
       42 JUMP                             ; [+3]
       43 GETUPVAL                         R2 1
       44 GETUPVAL                         R3 0
       45 CALL                             R2 1 1
       46 ADD                              R3 R1 R2
       47 GETUPVAL                         R4 2
       48 JUMPIFNOTLT                      R3 R4 ; [+3]
       50 LOADK                            R3 K7 ["before"]
       51 RETURN                           R3 1
       52 GETUPVAL                         R4 2
       53 GETUPVAL                         R5 3
       54 ADD                              R3 R4 R5
       55 JUMPIFNOTLT                      R3 R1 ; [+3]
       57 LOADK                            R3 K8 ["after"]
       58 RETURN                           R3 1
       59 LOADK                            R3 K9 ["inside"]
       60 RETURN                           R3 1

PROTO_1:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R4
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 LOADN                            R6 1
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K0 ["length"]
        9 MOVE                             R8 R0
       10 CALL                             R7 1 1
       11 MOVE                             R8 R7
       12 JUMPIFNOTLE                      R6 R8 ; [+92]
       14 ADD                              R10 R6 R8
       15 IDIVK                            R9 R10 K1 [2]
       16 GETUPVAL                         R11 1
       17 GETTABLEKS                       R10 R11 K2 ["get"]
       19 MOVE                             R11 R0
       20 MOVE                             R12 R9
       21 CALL                             R10 2 1
       22 JUMPIFNOTEQKNIL                  R10 ; [+2]
       24 LOADB                            R12 0 +1
       25 LOADB                            R12 1
       26 FASTCALL2K                       ASSERT R12 K3 ; [+4]
       28 LOADK                            R13 K3 ["get() returned nil, meaning the length is inaccurate"]
       29 GETIMPORT                        R11 K5 [assert]
       31 CALL                             R11 2 0
       32 MOVE                             R11 R1
       33 GETTABLEKS                       R12 R10 K6 ["value"]
       35 MOVE                             R13 R9
       36 CALL                             R11 2 1
       37 MOVE                             R12 R5
       38 MOVE                             R13 R11
       39 CALL                             R12 1 1
       40 JUMPIFNOTEQKS                    R12 K7 ["after"] ; [+3]
       42 SUBK                             R8 R9 K8 [1]
       43 JUMP                             ; [+60]
       44 JUMPIFNOTEQKS                    R12 K9 ["before"] ; [+3]
       46 ADDK                             R6 R9 K8 [1]
       47 JUMP                             ; [+56]
       48 JUMPIFNOTEQKS                    R12 K10 ["inside"] ; [+52]
       50 MOVE                             R13 R9
       51 MOVE                             R14 R10
       52 LOADN                            R15 1
       53 JUMPIFNOTLT                      R15 R13 ; [+18]
       55 GETTABLEKS                       R15 R14 K9 ["before"]
       57 CALL                             R15 0 1
       58 JUMPIFEQKNIL                     R15 ; [+13]
       60 MOVE                             R16 R5
       61 MOVE                             R17 R1
       62 GETTABLEKS                       R18 R15 K6 ["value"]
       64 SUBK                             R19 R13 K8 [1]
       65 CALL                             R17 2 -1
       66 CALL                             R16 -1 1
       67 JUMPIFNOTEQKS                    R16 K10 ["inside"] ; [+4]
       69 SUBK                             R13 R13 K8 [1]
       70 MOVE                             R14 R15
       71 JUMPBACK                         ; [-20]
       72 MOVE                             R15 R9
       73 MOVE                             R16 R10
       74 JUMPIFNOTLT                      R15 R7 ; [+18]
       76 GETTABLEKS                       R17 R16 K7 ["after"]
       78 CALL                             R17 0 1
       79 JUMPIFEQKNIL                     R17 ; [+13]
       81 MOVE                             R18 R5
       82 MOVE                             R19 R1
       83 GETTABLEKS                       R20 R17 K6 ["value"]
       85 ADDK                             R21 R15 K8 [1]
       86 CALL                             R19 2 -1
       87 CALL                             R18 -1 1
       88 JUMPIFNOTEQKS                    R18 K10 ["inside"] ; [+4]
       90 ADDK                             R15 R15 K8 [1]
       91 MOVE                             R16 R17
       92 JUMPBACK                         ; [-19]
       93 FASTCALL2                        VECTOR R13 R15 ; [+5]
       95 MOVE                             R18 R13
       96 MOVE                             R19 R15
       97 GETIMPORT                        R17 K13 [Vector3.new]
       99 CALL                             R17 2 1
      100 RETURN                           R17 1
      101 GETUPVAL                         R13 0
      102 MOVE                             R14 R12
      103 CALL                             R13 1 0
      104 JUMPBACK                         ; [-93]
      105 LOADK                            R9 K14 [{0, 0, 0}]
      106 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["DataSources"]
       11 GETTABLEKS                       R2 R3 K7 ["DataSourceMethods"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["DataSources"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Dimensions"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R6 R0 K9 ["Util"]
       28 GETTABLEKS                       R5 R6 K10 ["exhaustiveMatch"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K11 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 RETURN                           R5 1
