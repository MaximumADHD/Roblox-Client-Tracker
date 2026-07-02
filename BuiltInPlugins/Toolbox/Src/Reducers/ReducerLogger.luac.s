PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADN                            R1 0
        8 RETURN                           R1 1
        9 LOADN                            R1 0
       10 GETIMPORT                        R2 K4 [pairs]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 3
       14 FORGPREP_NEXT                    R2
       15 ADDK                             R1 R1 K5 [1]
       16 FORGLOOP                         R2 1 ; [-2]
       18 RETURN                           R1 1

PROTO_1:
        0 ORK                              R2 R2 K0 [0]
        1 LOADK                            R3 K1 ["\t"]
        2 MOVE                             R5 R2
        3 NAMECALL                         R3 R3 K2 ["rep"]
        5 CALL                             R3 2 1
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K4 [tostring]
       10 CALL                             R4 1 1
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R6 R1
       13 GETIMPORT                        R5 K4 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TYPE R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K6 [type]
       20 CALL                             R6 1 1
       21 JUMPIFEQKS                       R6 K7 ["string"] ; [+7]
       23 LOADK                            R6 K8 ["[%s]"]
       24 MOVE                             R8 R4
       25 NAMECALL                         R6 R6 K9 ["format"]
       27 CALL                             R6 2 1
       28 MOVE                             R4 R6
       29 FASTCALL1                        TYPE R1 ; [+3]
       30 MOVE                             R7 R1
       31 GETIMPORT                        R6 K6 [type]
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+8]
       36 LOADK                            R6 K10 ["\"%s\""]
       37 MOVE                             R8 R5
       38 NAMECALL                         R6 R6 K9 ["format"]
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 JUMP                             ; [+73]
       43 FASTCALL1                        TYPE R1 ; [+3]
       44 MOVE                             R7 R1
       45 GETIMPORT                        R6 K6 [type]
       47 CALL                             R6 1 1
       48 JUMPIFNOTEQKS                    R6 K11 ["table"] ; [+67]
       50 FASTCALL1                        TYPE R1 ; [+3]
       51 MOVE                             R8 R1
       52 GETIMPORT                        R7 K6 [type]
       54 CALL                             R7 1 1
       55 JUMPIFEQKS                       R7 K11 ["table"] ; [+3]
       57 LOADN                            R6 0
       58 JUMP                             ; [+10]
       59 LOADN                            R7 0
       60 GETIMPORT                        R8 K13 [pairs]
       62 MOVE                             R9 R1
       63 CALL                             R8 1 3
       64 FORGPREP_NEXT                    R8
       65 ADDK                             R7 R7 K14 [1]
       66 FORGLOOP                         R8 1 ; [-2]
       68 MOVE                             R6 R7
       69 LOADN                            R7 15
       70 JUMPIFLT                         R7 R6 ; [+4]
       72 GETUPVAL                         R8 0
       73 GETTABLE                         R7 R8 R0
       74 JUMPIFNOT                        R7 ; [+8]
       75 LOADK                            R7 K15 ["%s (length = %d)"]
       76 MOVE                             R9 R5
       77 MOVE                             R10 R6
       78 NAMECALL                         R7 R7 K9 ["format"]
       80 CALL                             R7 3 1
       81 MOVE                             R5 R7
       82 JUMP                             ; [+33]
       83 LOADK                            R5 K16 ["{"]
       84 GETIMPORT                        R7 K13 [pairs]
       86 MOVE                             R8 R1
       87 CALL                             R7 1 3
       88 FORGPREP_NEXT                    R7
       89 MOVE                             R12 R5
       90 LOADK                            R13 K17 ["\n%s"]
       91 GETUPVAL                         R15 1
       92 MOVE                             R16 R10
       93 MOVE                             R17 R11
       94 ADDK                             R18 R2 K14 [1]
       95 CALL                             R15 3 -1
       96 NAMECALL                         R13 R13 K9 ["format"]
       98 CALL                             R13 -1 1
       99 CONCAT                           R5 R12 R13
      100 FORGLOOP                         R7 2 ; [-12]
      102 MOVE                             R7 R5
      103 LOADN                            R10 0
      104 JUMPIFNOTLT                      R10 R6 ; [+8]
      106 LOADK                            R10 K17 ["\n%s"]
      107 MOVE                             R12 R3
      108 NAMECALL                         R10 R10 K9 ["format"]
      110 CALL                             R10 2 1
      111 MOVE                             R8 R10
      112 JUMPIF                           R8 ; [+1]
      113 LOADK                            R8 K18 [" "]
      114 LOADK                            R9 K19 ["}"]
      115 CONCAT                           R5 R7 R9
      116 LOADK                            R6 K20 ["%s%s\t = %s"]
      117 MOVE                             R8 R3
      118 MOVE                             R9 R4
      119 MOVE                             R10 R5
      120 NAMECALL                         R6 R6 K9 ["format"]
      122 CALL                             R6 4 1
      123 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R4 R2 K0 ["type"]
        2 JUMPIFNOT                        R4 ; [+7]
        3 GETTABLEKS                       R4 R2 K0 ["type"]
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K2 [tostring]
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+1]
       10 LOADK                            R3 K3 ["(action.type == nil)"]
       11 LOADK                            R4 K4 ["-"]
       12 LOADN                            R6 40
       13 NAMECALL                         R4 R4 K5 ["rep"]
       15 CALL                             R4 2 1
       16 GETIMPORT                        R5 K7 [print]
       18 MOVE                             R6 R4
       19 CALL                             R5 1 0
       20 GETIMPORT                        R5 K7 [print]
       22 LOADK                            R6 K8 ["Handling action %s"]
       23 MOVE                             R8 R3
       24 NAMECALL                         R6 R6 K9 ["format"]
       26 CALL                             R6 2 -1
       27 CALL                             R5 -1 0
       28 GETTABLEKS                       R5 R2 K0 ["type"]
       30 JUMPIFNOTEQKS                    R5 K10 ["@@INIT"] ; [+9]
       32 GETIMPORT                        R5 K7 [print]
       34 GETUPVAL                         R6 0
       35 LOADK                            R7 K11 ["State"]
       36 MOVE                             R8 R1
       37 LOADN                            R9 1
       38 CALL                             R6 3 1
       39 CALL                             R5 1 0
       40 GETIMPORT                        R5 K7 [print]
       42 GETUPVAL                         R6 0
       43 LOADK                            R7 K12 ["Action %s"]
       44 MOVE                             R9 R3
       45 NAMECALL                         R7 R7 K9 ["format"]
       47 CALL                             R7 2 1
       48 MOVE                             R8 R2
       49 LOADN                            R9 1
       50 CALL                             R6 3 1
       51 CALL                             R5 1 0
       52 MOVE                             R5 R0
       53 MOVE                             R6 R1
       54 MOVE                             R7 R2
       55 CALL                             R5 2 1
       56 GETIMPORT                        R6 K7 [print]
       58 GETUPVAL                         R7 0
       59 LOADK                            R8 K13 ["New state"]
       60 MOVE                             R9 R5
       61 LOADN                            R10 1
       62 CALL                             R7 3 1
       63 CALL                             R6 1 0
       64 GETIMPORT                        R6 K7 [print]
       66 MOVE                             R7 R4
       67 CALL                             R6 1 0
       68 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K4 [{["categories"] = True, ["sorts"] = True}]
        3 DUPCLOSURE                       R2 K5 [PROTO_1]
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 DUPCLOSURE                       R3 K6 [PROTO_2]
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 1
