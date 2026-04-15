PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^[ ]+"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADN                            R2 0
        8 RETURN                           R2 1
        9 NAMECALL                         R3 R1 K4 ["len"]
       11 CALL                             R3 1 1
       12 NAMECALL                         R5 R1 K4 ["len"]
       14 CALL                             R5 1 1
       15 MODK                             R4 R5 K5 [2]
       16 SUB                              R2 R3 R4
       17 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 ADDK                             R3 R4 K0 [1]
        4 NAMECALL                         R1 R0 K1 ["sub"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 LOADN                            R1 0
        1 GETIMPORT                        R2 K2 [string.find]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K3 ["\""]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+21]
        7 JUMPIFEQKN                       R2 K4 [1] ; [+11]
        9 SUBK                             R5 R2 K4 [1]
       10 SUBK                             R6 R2 K4 [1]
       11 FASTCALL3                        STRING_SUB R0 R5 R6
       13 MOVE                             R4 R0
       14 GETIMPORT                        R3 K6 [string.sub]
       16 CALL                             R3 3 1
       17 JUMPIFEQKS                       R3 K7 ["\\"] ; [+2]
       19 ADDK                             R1 R1 K4 [1]
       20 GETIMPORT                        R3 K2 [string.find]
       22 MOVE                             R4 R0
       23 LOADK                            R5 K3 ["\""]
       24 ADDK                             R6 R2 K4 [1]
       25 CALL                             R3 3 1
       26 MOVE                             R2 R3
       27 JUMPBACK                         ; [-22]
       28 MODK                             R4 R1 K8 [2]
       29 JUMPIFNOTEQKN                    R4 K9 [0] ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["^[ ]*<"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 LENGTH                           R4 R1
        1 ADDK                             R3 R4 K0 [1]
        2 GETTABLE                         R2 R0 R3
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R2
        6 CALL                             R5 1 -1
        7 FASTCALL                         TABLE_INSERT ; [+2]
        8 GETIMPORT                        R3 K3 [table.insert]
       10 CALL                             R3 -1 0
       11 GETIMPORT                        R3 K6 [string.find]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K7 [">"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADB                            R3 1
       18 RETURN                           R3 1
       19 LENGTH                           R3 R1
       20 LENGTH                           R4 R0
       21 JUMPIFNOTLT                      R3 R4 ; [+39]
       23 LENGTH                           R4 R1
       24 ADDK                             R3 R4 K0 [1]
       25 GETTABLE                         R2 R0 R3
       26 GETUPVAL                         R3 1
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADB                            R3 0
       31 RETURN                           R3 1
       32 GETUPVAL                         R3 2
       33 MOVE                             R4 R2
       34 CALL                             R3 1 1
       35 JUMPIFNOT                        R3 ; [+8]
       36 GETUPVAL                         R3 3
       37 MOVE                             R4 R0
       38 MOVE                             R5 R1
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+19]
       41 LOADB                            R3 0
       42 RETURN                           R3 1
       43 JUMP                             ; [+16]
       44 MOVE                             R4 R1
       45 GETUPVAL                         R5 0
       46 MOVE                             R6 R2
       47 CALL                             R5 1 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R3 K3 [table.insert]
       51 CALL                             R3 -1 0
       52 GETIMPORT                        R3 K6 [string.find]
       54 MOVE                             R4 R2
       55 LOADK                            R5 K7 [">"]
       56 CALL                             R3 2 1
       57 JUMPIFNOT                        R3 ; [+2]
       58 LOADB                            R3 1
       59 RETURN                           R3 1
       60 JUMPBACK                         ; [-42]
       61 LOADB                            R3 0
       62 RETURN                           R3 1

PROTO_5:
        0 LENGTH                           R4 R1
        1 ADDK                             R3 R4 K0 [1]
        2 GETTABLE                         R2 R0 R3
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+2]
        8 LOADB                            R3 0
        9 RETURN                           R3 1
       10 GETIMPORT                        R3 K3 [string.find]
       12 LENGTH                           R5 R1
       13 GETTABLE                         R4 R0 R5
       14 LOADK                            R5 K4 ["/>"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADB                            R3 1
       18 RETURN                           R3 1
       19 LOADB                            R3 0
       20 NEWTABLE                         R4 0 0
       22 MOVE                             R6 R4
       23 GETUPVAL                         R7 1
       24 MOVE                             R8 R2
       25 CALL                             R7 1 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R5 K7 [table.insert]
       29 CALL                             R5 -1 0
       30 LENGTH                           R5 R4
       31 LOADN                            R6 0
       32 JUMPIFNOTLT                      R6 R5 ; [+71]
       34 LENGTH                           R5 R1
       35 LENGTH                           R6 R0
       36 JUMPIFNOTLT                      R5 R6 ; [+67]
       38 LENGTH                           R6 R1
       39 ADDK                             R5 R6 K0 [1]
       40 GETTABLE                         R2 R0 R5
       41 GETUPVAL                         R5 2
       42 MOVE                             R6 R2
       43 CALL                             R5 1 1
       44 JUMPIFNOT                        R5 ; [+43]
       45 GETIMPORT                        R5 K3 [string.find]
       47 MOVE                             R6 R2
       48 LOADK                            R7 K8 ["</"]
       49 CALL                             R5 2 1
       50 JUMPIFNOT                        R5 ; [+13]
       51 MOVE                             R6 R1
       52 GETUPVAL                         R7 3
       53 MOVE                             R8 R2
       54 CALL                             R7 1 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R5 K7 [table.insert]
       58 CALL                             R5 -1 0
       59 GETIMPORT                        R5 K10 [table.remove]
       61 MOVE                             R6 R4
       62 CALL                             R5 1 0
       63 JUMP                             ; [+22]
       64 GETUPVAL                         R5 0
       65 MOVE                             R6 R0
       66 MOVE                             R7 R1
       67 CALL                             R5 2 1
       68 JUMPIF                           R5 ; [+2]
       69 LOADB                            R5 0
       70 RETURN                           R5 1
       71 GETIMPORT                        R5 K3 [string.find]
       73 LENGTH                           R7 R1
       74 GETTABLE                         R6 R0 R7
       75 LOADK                            R7 K4 ["/>"]
       76 CALL                             R5 2 1
       77 JUMPIF                           R5 ; [+8]
       78 MOVE                             R6 R4
       79 GETUPVAL                         R7 1
       80 MOVE                             R8 R2
       81 CALL                             R7 1 -1
       82 FASTCALL                         TABLE_INSERT ; [+2]
       83 GETIMPORT                        R5 K7 [table.insert]
       85 CALL                             R5 -1 0
       86 LOADB                            R3 0
       87 JUMP                             ; [+15]
       88 JUMPIFNOT                        R3 ; [+2]
       89 LOADB                            R5 0
       90 RETURN                           R5 1
       91 LENGTH                           R6 R4
       92 GETTABLE                         R5 R4 R6
       93 MOVE                             R7 R1
       94 ADDK                             R10 R5 K11 [3]
       95 NAMECALL                         R8 R2 K12 ["sub"]
       97 CALL                             R8 2 -1
       98 FASTCALL                         TABLE_INSERT ; [+2]
       99 GETIMPORT                        R6 K7 [table.insert]
      101 CALL                             R6 -1 0
      102 LOADB                            R3 1
      103 JUMPBACK                         ; [-74]
      104 LENGTH                           R6 R4
      105 JUMPIFEQKN                       R6 K13 [0] ; [+2]
      107 LOADB                            R5 0 +1
      108 LOADB                            R5 1
      109 RETURN                           R5 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 LENGTH                           R2 R1
        3 LENGTH                           R3 R0
        4 JUMPIFNOTLT                      R2 R3 ; [+31]
        6 LENGTH                           R4 R1
        7 ADDK                             R3 R4 K0 [1]
        8 GETTABLE                         R2 R0 R3
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 JUMPIFNOT                        R3 ; [+8]
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R0
       21 MOVE                             R5 R1
       22 CALL                             R3 2 1
       23 JUMPIF                           R3 ; [+11]
       24 LOADNIL                          R3
       25 RETURN                           R3 1
       26 JUMP                             ; [+8]
       27 MOVE                             R4 R1
       28 GETUPVAL                         R5 3
       29 MOVE                             R6 R2
       30 CALL                             R5 1 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R3 K3 [table.insert]
       34 CALL                             R3 -1 0
       35 JUMPBACK                         ; [-34]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 DUPCLOSURE                       R3 K6 [PROTO_0]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          REF R3
       22 DUPCLOSURE                       R5 K7 [PROTO_2]
       23 DUPCLOSURE                       R6 K8 [PROTO_3]
       24 NEWCLOSURE                       R7 P4
       25 CAPTURE                          REF R4
       26 CAPTURE                          REF R5
       27 CAPTURE                          REF R6
       28 CAPTURE                          REF R8
       29 NEWCLOSURE                       R8 P5
       30 CAPTURE                          REF R7
       31 CAPTURE                          REF R3
       32 CAPTURE                          REF R6
       33 CAPTURE                          REF R4
       34 NEWCLOSURE                       R9 P6
       35 CAPTURE                          REF R5
       36 CAPTURE                          REF R6
       37 CAPTURE                          REF R8
       38 CAPTURE                          REF R4
       39 CLOSEUPVALS                      R3
       40 RETURN                           R9 1
