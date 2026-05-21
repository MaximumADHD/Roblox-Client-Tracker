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
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDevFrameworkMarkdownCommonMarkCompliance"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+12]
       18 GETIMPORT                        R2 K6 [require]
       20 GETIMPORT                        R3 K1 [script]
       22 GETTABLEKS                       R3 R3 K4 ["Parent"]
       24 GETTABLEKS                       R3 R3 K9 ["CommonMarkComplianceParser"]
       26 GETTABLEKS                       R3 R3 K10 ["BuildTree"]
       28 CALL                             R2 1 1
       29 JUMP                             ; [+9]
       30 GETIMPORT                        R2 K6 [require]
       32 GETIMPORT                        R3 K1 [script]
       34 GETTABLEKS                       R3 R3 K4 ["Parent"]
       36 GETTABLEKS                       R3 R3 K10 ["BuildTree"]
       38 CALL                             R2 1 1
       39 JUMPIFNOT                        R1 ; [+12]
       40 GETIMPORT                        R3 K6 [require]
       42 GETIMPORT                        R4 K1 [script]
       44 GETTABLEKS                       R4 R4 K4 ["Parent"]
       46 GETTABLEKS                       R4 R4 K9 ["CommonMarkComplianceParser"]
       48 GETTABLEKS                       R4 R4 K11 ["PostProcessTree"]
       50 CALL                             R3 1 1
       51 JUMP                             ; [+9]
       52 GETIMPORT                        R3 K6 [require]
       54 GETIMPORT                        R4 K1 [script]
       56 GETTABLEKS                       R4 R4 K4 ["Parent"]
       58 GETTABLEKS                       R4 R4 K11 ["PostProcessTree"]
       60 CALL                             R3 1 1
       61 JUMPIFNOT                        R1 ; [+12]
       62 GETIMPORT                        R4 K6 [require]
       64 GETIMPORT                        R5 K1 [script]
       66 GETTABLEKS                       R5 R5 K4 ["Parent"]
       68 GETTABLEKS                       R5 R5 K9 ["CommonMarkComplianceParser"]
       70 GETTABLEKS                       R5 R5 K12 ["Tokenize"]
       72 CALL                             R4 1 1
       73 JUMP                             ; [+9]
       74 GETIMPORT                        R4 K6 [require]
       76 GETIMPORT                        R5 K1 [script]
       78 GETTABLEKS                       R5 R5 K4 ["Parent"]
       80 GETTABLEKS                       R5 R5 K12 ["Tokenize"]
       82 CALL                             R4 1 1
       83 GETIMPORT                        R5 K6 [require]
       85 GETIMPORT                        R6 K1 [script]
       87 GETTABLEKS                       R6 R6 K4 ["Parent"]
       89 GETTABLEKS                       R6 R6 K13 ["unindentTags"]
       91 CALL                             R5 1 1
       92 GETIMPORT                        R6 K6 [require]
       94 GETIMPORT                        R7 K1 [script]
       96 GETTABLEKS                       R7 R7 K4 ["Parent"]
       98 GETTABLEKS                       R7 R7 K14 ["indexTree"]
      100 CALL                             R6 1 1
      101 GETIMPORT                        R7 K6 [require]
      103 GETIMPORT                        R8 K1 [script]
      105 GETTABLEKS                       R8 R8 K4 ["Parent"]
      107 GETTABLEKS                       R8 R8 K15 ["Types"]
      109 CALL                             R7 1 1
      110 DUPTABLE                         R8 K17 [{"inlineTags"}]
      111 DUPTABLE                         R9 K20 [{"font", "img"}]
      112 LOADB                            R10 1
      113 SETTABLEKS                       R10 R9 K18 ["font"]
      115 LOADB                            R10 1
      116 SETTABLEKS                       R10 R9 K19 ["img"]
      118 SETTABLEKS                       R9 R8 K16 ["inlineTags"]
      120 NEWTABLE                         R9 2 0
      122 DUPCLOSURE                       R10 K21 [PROTO_2]
      123 CAPTURE                          VAL R9
      124 SETTABLEKS                       R10 R9 K22 ["safeParse"]
      126 DUPCLOSURE                       R10 K23 [PROTO_3]
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R6
      133 SETTABLEKS                       R10 R9 K24 ["parse"]
      135 RETURN                           R9 1
