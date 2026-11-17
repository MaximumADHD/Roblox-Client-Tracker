PROTO_0:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETTABLEKS                       R3 R0 K3 ["materialVariants"]
        4 GETUPVAL                         R4 0
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+5]
        8 GETIMPORT                        R3 K2 [warn]
       10 LOADK                            R4 K3 ["MaterialVariant doesn't belong to a group"]
       11 CALL                             R3 1 0
       12 RETURN                           R1 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETUPVAL                         R5 1
       18 FASTCALL2                        ASSERT R4 R5 ; [+3]
       20 GETIMPORT                        R3 K5 [assert]
       22 CALL                             R3 2 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K6 ["join"]
       26 MOVE                             R4 R2
       27 DUPTABLE                         R5 K8 [{"materialVariants"}]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K9 ["filter"]
       31 GETTABLEKS                       R7 R2 K7 ["materialVariants"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R0
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K7 ["materialVariants"]
       38 CALL                             R3 2 1
       39 GETTABLEKS                       R5 R3 K7 ["materialVariants"]
       41 LENGTH                           R4 R5
       42 JUMPIFNOTEQKN                    R4 K10 [0] ; [+80]
       44 GETIMPORT                        R4 K12 [table.find]
       46 MOVE                             R5 R1
       47 MOVE                             R6 R2
       48 CALL                             R4 2 1
       49 JUMPIFNOTEQKNIL                  R4 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       55 LOADK                            R7 K13 ["Expected promptGroups to contain found group"]
       56 GETIMPORT                        R5 K5 [assert]
       58 CALL                             R5 2 0
       59 SUBK                             R6 R4 K14 [1]
       60 GETTABLE                         R5 R1 R6
       61 ADDK                             R7 R4 K14 [1]
       62 GETTABLE                         R6 R1 R7
       63 JUMPIFNOT                        R5 ; [+51]
       64 JUMPIFNOT                        R6 ; [+50]
       65 GETTABLEKS                       R7 R5 K15 ["promptText"]
       67 GETTABLEKS                       R8 R6 K15 ["promptText"]
       69 JUMPIFNOTEQ                      R7 R8 ; [+45]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K16 ["slice"]
       74 MOVE                             R8 R1
       75 LOADNIL                          R9
       76 SUBK                             R10 R4 K17 [2]
       77 CALL                             R7 3 1
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K16 ["slice"]
       81 MOVE                             R9 R1
       82 ADDK                             R10 R4 K17 [2]
       83 LOADNIL                          R11
       84 CALL                             R8 3 1
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R9 R9 K6 ["join"]
       88 MOVE                             R10 R5
       89 DUPTABLE                         R11 K8 [{"materialVariants"}]
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R12 R12 K18 ["append"]
       93 NEWTABLE                         R13 0 0
       95 GETTABLEKS                       R14 R5 K7 ["materialVariants"]
       97 GETTABLEKS                       R15 R6 K7 ["materialVariants"]
       99 CALL                             R12 3 1
      100 SETTABLEKS                       R12 R11 K7 ["materialVariants"]
      102 CALL                             R9 2 1
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K18 ["append"]
      106 MOVE                             R11 R7
      107 NEWTABLE                         R12 0 1
      109 MOVE                             R13 R9
      110 SETLIST                          R12 R13 1 [1]
      112 MOVE                             R13 R8
      113 CALL                             R10 3 -1
      114 RETURN                           R10 -1
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R7 R7 K9 ["filter"]
      118 MOVE                             R8 R1
      119 NEWCLOSURE                       R9 P2
      120 CAPTURE                          VAL R2
      121 CALL                             R7 2 -1
      122 RETURN                           R7 -1
      123 GETUPVAL                         R4 0
      124 GETTABLEKS                       R4 R4 K19 ["map"]
      126 MOVE                             R5 R1
      127 NEWCLOSURE                       R6 P3
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R3
      130 CALL                             R4 2 -1
      131 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["LUAU_ANALYZE_ERROR"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 DUPCLOSURE                       R6 K13 [PROTO_5]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 RETURN                           R6 1
