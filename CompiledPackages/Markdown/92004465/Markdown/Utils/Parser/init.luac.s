PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["parse"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R2 K0 ["%*\n%*"]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R5 K3 [debug.traceback]
        4 CALL                             R5 0 1
        5 NAMECALL                         R2 R2 K4 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [xpcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 DUPCLOSURE                       R4 K2 [PROTO_1]
        7 CALL                             R2 2 2
        8 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R2
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R3
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 3
       10 MOVE                             R6 R4
       11 MOVE                             R7 R1
       12 JUMPIF                           R7 ; [+1]
       13 GETUPVAL                         R7 4
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K0 ["children"]
       17 GETUPVAL                         R5 5
       18 MOVE                             R6 R4
       19 CALL                             R5 1 -1
       20 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["FFlagMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+10]
       17 GETIMPORT                        R2 K6 [require]
       19 GETIMPORT                        R3 K1 [script]
       21 GETTABLEKS                       R3 R3 K9 ["CommonMarkComplianceParser"]
       23 GETTABLEKS                       R3 R3 K10 ["BuildTree"]
       25 CALL                             R2 1 1
       26 JUMP                             ; [+7]
       27 GETIMPORT                        R2 K6 [require]
       29 GETIMPORT                        R3 K1 [script]
       31 GETTABLEKS                       R3 R3 K10 ["BuildTree"]
       33 CALL                             R2 1 1
       34 JUMPIFNOT                        R1 ; [+10]
       35 GETIMPORT                        R3 K6 [require]
       37 GETIMPORT                        R4 K1 [script]
       39 GETTABLEKS                       R4 R4 K9 ["CommonMarkComplianceParser"]
       41 GETTABLEKS                       R4 R4 K11 ["PostProcessTree"]
       43 CALL                             R3 1 1
       44 JUMP                             ; [+7]
       45 GETIMPORT                        R3 K6 [require]
       47 GETIMPORT                        R4 K1 [script]
       49 GETTABLEKS                       R4 R4 K11 ["PostProcessTree"]
       51 CALL                             R3 1 1
       52 JUMPIFNOT                        R1 ; [+10]
       53 GETIMPORT                        R4 K6 [require]
       55 GETIMPORT                        R5 K1 [script]
       57 GETTABLEKS                       R5 R5 K9 ["CommonMarkComplianceParser"]
       59 GETTABLEKS                       R5 R5 K12 ["Tokenize"]
       61 CALL                             R4 1 1
       62 JUMP                             ; [+7]
       63 GETIMPORT                        R4 K6 [require]
       65 GETIMPORT                        R5 K1 [script]
       67 GETTABLEKS                       R5 R5 K12 ["Tokenize"]
       69 CALL                             R4 1 1
       70 GETIMPORT                        R5 K6 [require]
       72 GETTABLEKS                       R6 R0 K13 ["Types"]
       74 CALL                             R5 1 1
       75 GETIMPORT                        R6 K6 [require]
       77 GETIMPORT                        R7 K1 [script]
       79 GETTABLEKS                       R7 R7 K14 ["UnindentTags"]
       81 CALL                             R6 1 1
       82 GETIMPORT                        R7 K6 [require]
       84 GETIMPORT                        R8 K1 [script]
       86 GETTABLEKS                       R8 R8 K15 ["IndexTree"]
       88 CALL                             R7 1 1
       89 DUPTABLE                         R8 K17 [{"inlineTags"}]
       90 DUPTABLE                         R9 K21 [{["font"] = True, ["img"] = True}]
       91 SETTABLEKS                       R9 R8 K16 ["inlineTags"]
       93 NEWTABLE                         R9 2 0
       95 DUPCLOSURE                       R10 K22 [PROTO_2]
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R10 R9 K23 ["safeParse"]
       99 DUPCLOSURE                       R10 K24 [PROTO_3]
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R10 R9 K25 ["parse"]
      108 RETURN                           R9 1
