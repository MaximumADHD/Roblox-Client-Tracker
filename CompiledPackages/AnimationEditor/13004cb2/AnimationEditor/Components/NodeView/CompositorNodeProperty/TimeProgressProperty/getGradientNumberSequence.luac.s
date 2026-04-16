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
       11 JUMPIFNOTEQKN                    R2 K4 [0] ; [+6]
       13 GETIMPORT                        R3 K2 [NumberSequence.new]
       15 LOADN                            R4 1
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1
       18 JUMPIFNOT                        R0 ; [+3]
       19 GETTABLEKS                       R4 R0 K5 ["StartTime"]
       21 JUMPIF                           R4 ; [+1]
       22 LOADN                            R4 0
       23 FASTCALL2K                       MATH_MAX R4 K4 ; [+4]
       25 LOADK                            R5 K4 [0]
       26 GETIMPORT                        R3 K8 [math.max]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R0 ; [+3]
       30 GETTABLEKS                       R6 R0 K9 ["EndTime"]
       32 JUMPIF                           R6 ; [+1]
       33 MOVE                             R6 R2
       34 FASTCALL2                        MATH_MIN R6 R2 ; [+4]
       36 MOVE                             R7 R2
       37 GETIMPORT                        R5 K11 [math.min]
       39 CALL                             R5 2 1
       40 FASTCALL2                        MATH_MAX R5 R3 ; [+4]
       42 MOVE                             R6 R3
       43 GETIMPORT                        R4 K8 [math.max]
       45 CALL                             R4 2 1
       46 ORK                              R6 R1 K4 [0]
       47 FASTCALL3                        MATH_CLAMP R6 R3 R4
       49 MOVE                             R7 R3
       50 MOVE                             R8 R4
       51 GETIMPORT                        R5 K13 [math.clamp]
       53 CALL                             R5 3 1
       54 NEWTABLE                         R6 0 1
       56 LOADN                            R7 0
       57 LOADN                            R8 1
       58 SETTABLE                         R8 R6 R7
       59 DIV                              R8 R3 R2
       60 LOADN                            R9 0
       61 LOADN                            R10 1
       62 FASTCALL                         MATH_CLAMP ; [+2]
       63 GETIMPORT                        R7 K13 [math.clamp]
       65 CALL                             R7 3 1
       66 LOADN                            R8 0
       67 SETTABLE                         R8 R6 R7
       68 DIV                              R8 R5 R2
       69 LOADN                            R9 0
       70 LOADN                            R10 1
       71 FASTCALL                         MATH_CLAMP ; [+2]
       72 GETIMPORT                        R7 K13 [math.clamp]
       74 CALL                             R7 3 1
       75 LOADK                            R8 K14 [0.5]
       76 SETTABLE                         R8 R6 R7
       77 DIV                              R8 R4 R2
       78 LOADN                            R9 0
       79 LOADN                            R10 1
       80 FASTCALL                         MATH_CLAMP ; [+2]
       81 GETIMPORT                        R7 K13 [math.clamp]
       83 CALL                             R7 3 1
       84 LOADN                            R8 1
       85 SETTABLE                         R8 R6 R7
       86 LOADN                            R7 1
       87 SETTABLEN                        R7 R6 1
       88 NEWTABLE                         R7 0 0
       90 LOADNIL                          R8
       91 LOADNIL                          R9
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R10 R11 K15 ["keys"]
       95 MOVE                             R11 R6
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K18 [table.sort]
       99 MOVE                             R12 R10
      100 CALL                             R11 1 0
      101 GETIMPORT                        R11 K20 [pairs]
      103 MOVE                             R12 R10
      104 CALL                             R11 1 3
      105 FORGPREP_NEXT                    R11
      106 GETTABLE                         R16 R6 R15
      107 JUMPIFNOT                        R8 ; [+14]
      108 JUMPIFNOT                        R9 ; [+13]
      109 ADDK                             R17 R8 K21 [0.001]
      110 JUMPIFNOTLT                      R17 R15 ; [+11]
      112 MOVE                             R18 R7
      113 GETIMPORT                        R19 K23 [NumberSequenceKeypoint.new]
      115 SUBK                             R20 R15 K21 [0.001]
      116 MOVE                             R21 R9
      117 CALL                             R19 2 -1
      118 FASTCALL                         TABLE_INSERT ; [+2]
      119 GETIMPORT                        R17 K25 [table.insert]
      121 CALL                             R17 -1 0
      122 MOVE                             R18 R7
      123 GETIMPORT                        R19 K23 [NumberSequenceKeypoint.new]
      125 MOVE                             R20 R15
      126 MOVE                             R21 R16
      127 CALL                             R19 2 -1
      128 FASTCALL                         TABLE_INSERT ; [+2]
      129 GETIMPORT                        R17 K25 [table.insert]
      131 CALL                             R17 -1 0
      132 MOVE                             R8 R15
      133 MOVE                             R9 R16
      134 FORGLOOP                         R11 2 ; [-29]
      136 GETIMPORT                        R11 K2 [NumberSequence.new]
      138 MOVE                             R12 R7
      139 CALL                             R11 1 -1
      140 RETURN                           R11 -1

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
