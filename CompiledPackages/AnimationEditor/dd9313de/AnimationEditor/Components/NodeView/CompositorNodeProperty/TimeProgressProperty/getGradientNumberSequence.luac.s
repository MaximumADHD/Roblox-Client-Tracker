PROTO_0:
        0 JUMPIF                           R0 ; [+5]
        1 GETIMPORT                        R2 K2 [NumberSequence.new]
        3 LOADN                            R3 1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETTABLEKS                       R2 R0 K3 ["Duration"]
        9 JUMPIF                           R2 ; [+1]
       10 LOADN                            R2 1
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R4 R0 K4 ["StartTime"]
       14 JUMPIF                           R4 ; [+1]
       15 LOADN                            R4 0
       16 FASTCALL2K                       MATH_MAX R4 K5 ; [+4]
       18 LOADK                            R5 K5 [0]
       19 GETIMPORT                        R3 K8 [math.max]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R0 ; [+3]
       23 GETTABLEKS                       R6 R0 K9 ["EndTime"]
       25 JUMPIF                           R6 ; [+1]
       26 MOVE                             R6 R2
       27 FASTCALL2                        MATH_MIN R6 R2 ; [+4]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R5 K11 [math.min]
       32 CALL                             R5 2 1
       33 FASTCALL2                        MATH_MAX R5 R3 ; [+4]
       35 MOVE                             R6 R3
       36 GETIMPORT                        R4 K8 [math.max]
       38 CALL                             R4 2 1
       39 ORK                              R6 R1 K5 [0]
       40 FASTCALL3                        MATH_CLAMP R6 R3 R4
       42 MOVE                             R7 R3
       43 MOVE                             R8 R4
       44 GETIMPORT                        R5 K13 [math.clamp]
       46 CALL                             R5 3 1
       47 NEWTABLE                         R6 0 1
       49 LOADN                            R7 0
       50 LOADN                            R8 1
       51 SETTABLE                         R8 R6 R7
       52 DIV                              R7 R3 R2
       53 LOADN                            R8 0
       54 SETTABLE                         R8 R6 R7
       55 DIV                              R7 R5 R2
       56 LOADK                            R8 K14 [0.5]
       57 SETTABLE                         R8 R6 R7
       58 DIV                              R7 R4 R2
       59 LOADN                            R8 1
       60 SETTABLE                         R8 R6 R7
       61 LOADN                            R7 1
       62 SETTABLEN                        R7 R6 1
       63 NEWTABLE                         R7 0 0
       65 LOADNIL                          R8
       66 LOADNIL                          R9
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K15 ["keys"]
       70 MOVE                             R11 R6
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K18 [table.sort]
       74 MOVE                             R12 R10
       75 CALL                             R11 1 0
       76 GETIMPORT                        R11 K20 [pairs]
       78 MOVE                             R12 R10
       79 CALL                             R11 1 3
       80 FORGPREP_NEXT                    R11
       81 GETTABLE                         R16 R6 R15
       82 JUMPIFNOT                        R8 ; [+14]
       83 JUMPIFNOT                        R9 ; [+13]
       84 ADDK                             R17 R8 K21 [0.001]
       85 JUMPIFNOTLT                      R17 R15 ; [+11]
       87 MOVE                             R18 R7
       88 GETIMPORT                        R19 K23 [NumberSequenceKeypoint.new]
       90 SUBK                             R20 R15 K21 [0.001]
       91 MOVE                             R21 R9
       92 CALL                             R19 2 -1
       93 FASTCALL                         TABLE_INSERT ; [+2]
       94 GETIMPORT                        R17 K25 [table.insert]
       96 CALL                             R17 -1 0
       97 MOVE                             R18 R7
       98 GETIMPORT                        R19 K23 [NumberSequenceKeypoint.new]
      100 MOVE                             R20 R15
      101 MOVE                             R21 R16
      102 CALL                             R19 2 -1
      103 FASTCALL                         TABLE_INSERT ; [+2]
      104 GETIMPORT                        R17 K25 [table.insert]
      106 CALL                             R17 -1 0
      107 MOVE                             R8 R15
      108 MOVE                             R9 R16
      109 FORGLOOP                         R11 2 ; [-29]
      111 GETIMPORT                        R11 K2 [NumberSequence.new]
      113 MOVE                             R12 R7
      114 CALL                             R11 1 -1
      115 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K6 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K9 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
