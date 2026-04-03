PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["len"]
        4 CALL                             R3 1 1
        5 LOADN                            R4 0
        6 JUMPIFNOTLT                      R4 R3 ; [+51]
        8 GETIMPORT                        R3 K3 [string.find]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 LOADN                            R6 1
       13 LOADB                            R7 1
       14 CALL                             R3 4 2
       15 JUMPIFNOTEQKNIL                  R3 ; [+10]
       17 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R0
       21 GETIMPORT                        R5 K6 [table.insert]
       23 CALL                             R5 2 0
       24 LOADK                            R0 K7 [""]
       25 JUMP                             ; [+31]
       26 LOADN                            R9 1
       27 SUBK                             R10 R3 K8 [1]
       28 FASTCALL3                        STRING_SUB R0 R9 R10
       30 MOVE                             R8 R0
       31 GETIMPORT                        R7 K10 [string.sub]
       33 CALL                             R7 3 1
       34 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K6 [table.insert]
       39 CALL                             R5 2 0
       40 ADDK                             R7 R4 K8 [1]
       41 FASTCALL2                        STRING_SUB R0 R7 ; [+4]
       43 MOVE                             R6 R0
       44 GETIMPORT                        R5 K10 [string.sub]
       46 CALL                             R5 2 1
       47 MOVE                             R0 R5
       48 JUMPIFNOTEQKS                    R0 K7 [""] ; [+8]
       50 FASTCALL2K                       TABLE_INSERT R2 K7 ; [+5]
       52 MOVE                             R6 R2
       53 LOADK                            R7 K7 [""]
       54 GETIMPORT                        R5 K6 [table.insert]
       56 CALL                             R5 2 0
       57 JUMPBACK                         ; [-56]
       58 RETURN                           R2 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["command should be a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 LOADK                            R3 K6 ["("]
       16 LOADN                            R4 1
       17 LOADB                            R5 1
       18 NAMECALL                         R1 R0 K7 ["find"]
       20 CALL                             R1 4 1
       21 NAMECALL                         R2 R0 K8 ["reverse"]
       23 CALL                             R2 1 1
       24 LOADK                            R4 K9 [")"]
       25 LOADN                            R5 1
       26 LOADB                            R6 1
       27 NAMECALL                         R2 R2 K7 ["find"]
       29 CALL                             R2 4 1
       30 JUMPIFEQKNIL                     R2 ; [+4]
       32 LENGTH                           R4 R0
       33 SUB                              R3 R4 R2
       34 ADDK                             R2 R3 K10 [1]
       35 NEWTABLE                         R3 0 0
       37 JUMPIFNOT                        R1 ; [+31]
       38 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       40 MOVE                             R5 R2
       41 LOADK                            R6 K11 ["invalid syntex, expecting \")\""]
       42 GETIMPORT                        R4 K5 [assert]
       44 CALL                             R4 2 0
       45 ADDK                             R6 R1 K10 [1]
       46 SUBK                             R7 R2 K10 [1]
       47 NAMECALL                         R4 R0 K12 ["sub"]
       49 CALL                             R4 3 1
       50 LENGTH                           R5 R4
       51 LOADN                            R6 0
       52 JUMPIFNOTLT                      R6 R5 ; [+10]
       54 GETUPVAL                         R5 0
       55 LOADK                            R8 K13 ["["]
       56 MOVE                             R9 R4
       57 LOADK                            R10 K14 ["]"]
       58 CONCAT                           R7 R8 R10
       59 NAMECALL                         R5 R5 K15 ["JSONDecode"]
       61 CALL                             R5 2 1
       62 MOVE                             R3 R5
       63 LOADN                            R7 1
       64 SUBK                             R8 R1 K10 [1]
       65 NAMECALL                         R5 R0 K12 ["sub"]
       67 CALL                             R5 3 1
       68 MOVE                             R0 R5
       69 GETUPVAL                         R4 1
       70 MOVE                             R5 R0
       71 LOADK                            R6 K16 ["."]
       72 CALL                             R4 2 1
       73 GETUPVAL                         R5 2
       74 LOADN                            R8 1
       75 LENGTH                           R6 R4
       76 LOADN                            R7 1
       77 FORNPREP                         R6
       78 GETTABLE                         R9 R4 R8
       79 GETTABLE                         R5 R5 R9
       80 JUMPIFNOTEQKNIL                  R5 ; [+7]
       82 GETIMPORT                        R10 K18 [error]
       84 LOADK                            R12 K19 ["can not find "]
       85 MOVE                             R13 R9
       86 CONCAT                           R11 R12 R13
       87 CALL                             R10 1 0
       88 FASTCALL1                        TYPE R5 ; [+3]
       89 MOVE                             R11 R5
       90 GETIMPORT                        R10 K1 [type]
       92 CALL                             R10 1 1
       93 JUMPIFNOTEQKS                    R10 K20 ["userdata"] ; [+10]
       95 GETTABLEKS                       R10 R5 K21 ["ClassName"]
       97 JUMPIFNOTEQKS                    R10 K22 ["ModuleScript"] ; [+6]
       99 GETIMPORT                        R10 K24 [require]
      101 MOVE                             R11 R5
      102 CALL                             R10 1 1
      103 MOVE                             R5 R10
      104 FORNLOOP                         R6
      105 FASTCALL1                        TYPE R5 ; [+3]
      106 MOVE                             R7 R5
      107 GETIMPORT                        R6 K1 [type]
      109 CALL                             R6 1 1
      110 JUMPIFEQKS                       R6 K25 ["function"] ; [+5]
      112 GETIMPORT                        R6 K18 [error]
      114 LOADK                            R7 K26 ["target is not a function"]
      115 CALL                             R6 1 0
      116 MOVE                             R6 R5
      117 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
      118 MOVE                             R8 R3
      119 GETIMPORT                        R7 K28 [unpack]
      121 CALL                             R7 1 -1
      122 CALL                             R6 -1 -1
      123 RETURN                           R6 -1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RhodiumService"]
        3 NAMECALL                         R0 R0 K3 ["getService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["HttpService"]
        6 NAMECALL                         R1 R1 K3 ["getService"]
        8 CALL                             R1 2 1
        9 LOADNIL                          R2
       10 DUPCLOSURE                       R3 K4 [PROTO_0]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R2
       13 SETTABLEKS                       R4 R0 K5 ["setCommandPath"]
       15 NEWCLOSURE                       R4 P2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 CAPTURE                          REF R2
       19 NEWCLOSURE                       R5 P3
       20 CAPTURE                          REF R2
       21 SETTABLEKS                       R5 R0 K5 ["setCommandPath"]
       23 GETIMPORT                        R5 K7 [pcall]
       25 DUPCLOSURE                       R6 K8 [PROTO_4]
       26 CALL                             R5 1 2
       27 JUMPIFNOT                        R5 ; [+2]
       28 SETTABLEKS                       R4 R6 K9 ["onCommand"]
       30 CLOSEUPVALS                      R2
       31 RETURN                           R0 1
