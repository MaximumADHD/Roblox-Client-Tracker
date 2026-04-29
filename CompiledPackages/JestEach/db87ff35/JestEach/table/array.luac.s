PROTO_0:
        0 DUPTABLE                         R2 K2 [{"arguments", "title"}]
        1 NEWTABLE                         R3 0 1
        3 MOVE                             R4 R0
        4 SETLIST                          R3 R4 1 [1]
        6 SETTABLEKS                       R3 R2 K0 ["arguments"]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 CALL                             R3 3 1
       13 LOADK                            R5 K3 ["%%%%"]
       14 LOADK                            R6 K4 ["%%"]
       15 NAMECALL                         R3 R3 K5 ["gsub"]
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R2 K1 ["title"]
       20 RETURN                           R2 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"arguments", "title"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K3 ["map"]
        4 MOVE                             R4 R0
        5 DUPCLOSURE                       R5 K4 [PROTO_1]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["arguments"]
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K1 ["title"]
       16 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["map"]
        8 MOVE                             R3 R1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K0 ["map"]
       17 GETUPVAL                         R3 3
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_4:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 CALL                             R5 1 -1
        4 NAMECALL                         R3 R3 K0 ["test"]
        6 CALL                             R3 -1 1
        7 NOT                              R2 R3
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 NOT                              R2 R3
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K1 ["every"]
       17 MOVE                             R3 R1
       18 DUPCLOSURE                       R4 K2 [PROTO_4]
       19 CALL                             R2 2 1
       20 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 MOVE                             R1 R0
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K0 ["map"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 2
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["every"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["isArray"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 NEWTABLE                         R1 0 1
        2 MOVE                             R2 R0
        3 SETLIST                          R1 R2 1 [1]
        5 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETTABLEN                        R2 R3 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K0 ["toJSBoolean"]
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMPIF                           R4 ; [+1]
       13 RETURN                           R0 1
       14 JUMPIFNOTEQKS                    R2 K1 ["%p"] ; [+6]
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R0
       18 MOVE                             R6 R3
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1
       21 GETUPVAL                         R4 4
       22 MOVE                             R5 R0
       23 MOVE                             R6 R3
       24 CALL                             R4 2 -1
       25 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["reduce"]
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 GETUPVAL                         R6 6
       11 GETUPVAL                         R7 7
       12 MOVE                             R8 R0
       13 CALL                             R7 1 1
       14 MOVE                             R8 R2
       15 CALL                             R6 2 -1
       16 CALL                             R3 -1 1
       17 LOADK                            R5 K1 ["@@__JEST_EACH_PLACEHOLDER_ESCAPE__@@"]
       18 LOADK                            R6 K2 ["%%"]
       19 NAMECALL                         R3 R3 K3 ["gsub"]
       21 CALL                             R3 3 -1
       22 RETURN                           R3 -1

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 LOADK                            R3 K3 ["%%"]
        8 LOADK                            R4 K4 ["@@__JEST_EACH_PLACEHOLDER_ESCAPE__@@"]
        9 NAMECALL                         R1 R0 K5 ["gsub"]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1
       13 RETURN                           R0 1

PROTO_12:
        0 LOADNIL                          R1
        1 LOADK                            R4 K0 ["%%[sdifjoOp]"]
        2 NAMECALL                         R2 R0 K1 ["gmatch"]
        4 CALL                             R2 2 3
        5 FORGPREP                         R2
        6 JUMPIFNOTEQKNIL                  R1 ; [+3]
        8 NEWTABLE                         R1 0 0
       10 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R5
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 1 ; [-12]
       19 MOVE                             R2 R1
       20 JUMPIF                           R2 ; [+2]
       21 NEWTABLE                         R2 0 0
       23 RETURN                           R2 1

PROTO_13:
        0 LOADK                            R3 K0 ["%%%%"]
        1 LOADK                            R4 K1 ["@@__JEST_EACH_PLACEHOLDER_ESCAPE__@@"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_14:
        0 LOADK                            R4 K0 ["%%#"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 LOADN                            R6 1
        7 NAMECALL                         R2 R0 K3 ["gsub"]
        9 CALL                             R2 4 1
       10 RETURN                           R2 1

PROTO_15:
        0 LOADK                            R4 K0 ["%%p"]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R1
        3 DUPTABLE                         R7 K3 [{"maxDepth", "min"}]
        4 LOADN                            R8 1
        5 SETTABLEKS                       R8 R7 K1 ["maxDepth"]
        7 LOADB                            R8 1
        8 SETTABLEKS                       R8 R7 K2 ["min"]
       10 CALL                             R5 2 1
       11 LOADN                            R6 1
       12 NAMECALL                         R2 R0 K4 ["gsub"]
       14 CALL                             R2 4 1
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETTABLEKS                       R5 R0 K8 ["RegExp"]
       22 CALL                             R4 1 1
       23 NEWTABLE                         R5 1 0
       25 GETIMPORT                        R6 K4 [require]
       27 GETIMPORT                        R9 K1 [script]
       29 GETTABLEKS                       R8 R9 K2 ["Parent"]
       31 GETTABLEKS                       R7 R8 K9 ["format"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K4 [require]
       36 GETTABLEKS                       R8 R0 K10 ["JestTypes"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R9 K4 [require]
       41 GETTABLEKS                       R10 R0 K11 ["PrettyFormat"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R8 R9 K9 ["format"]
       46 GETIMPORT                        R9 K4 [require]
       48 GETIMPORT                        R12 K1 [script]
       50 GETTABLEKS                       R11 R12 K2 ["Parent"]
       52 GETTABLEKS                       R10 R11 K12 ["interpolation"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R9 K13 ["interpolateVariables"]
       57 MOVE                             R11 R4
       58 LOADK                            R12 K14 ["%[sdifjoOp]"]
       59 CALL                             R11 1 1
       60 LOADNIL                          R12
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 LOADNIL                          R15
       64 LOADNIL                          R16
       65 LOADNIL                          R17
       66 LOADNIL                          R18
       67 LOADNIL                          R19
       68 LOADNIL                          R20
       69 LOADNIL                          R21
       70 NEWCLOSURE                       R22 P0
       71 CAPTURE                          REF R12
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R10
       74 CAPTURE                          REF R13
       75 CAPTURE                          REF R14
       76 SETTABLEKS                       R22 R5 K15 ["default"]
       78 NEWCLOSURE                       R12 P1
       79 CAPTURE                          VAL R11
       80 CAPTURE                          REF R15
       81 CAPTURE                          REF R16
       82 CAPTURE                          VAL R2
       83 NEWCLOSURE                       R13 P2
       84 CAPTURE                          REF R16
       85 CAPTURE                          VAL R2
       86 CAPTURE                          REF R17
       87 DUPCLOSURE                       R16 K16 [PROTO_7]
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R17 K17 [PROTO_8]
       90 NEWCLOSURE                       R14 P5
       91 CAPTURE                          VAL R2
       92 CAPTURE                          REF R19
       93 CAPTURE                          REF R18
       94 CAPTURE                          VAL R3
       95 CAPTURE                          REF R20
       96 CAPTURE                          VAL R6
       97 CAPTURE                          REF R21
       98 CAPTURE                          REF R15
       99 DUPCLOSURE                       R18 K18 [PROTO_11]
      100 DUPCLOSURE                       R19 K19 [PROTO_12]
      101 DUPCLOSURE                       R15 K20 [PROTO_13]
      102 DUPCLOSURE                       R21 K21 [PROTO_14]
      103 DUPCLOSURE                       R20 K22 [PROTO_15]
      104 CAPTURE                          VAL R8
      105 CLOSEUPVALS                      R12
      106 RETURN                           R5 1
