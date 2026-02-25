PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["Status"]
        5 GETTABLEKS                       R2 R1 K2 ["Tracks"]
        7 NAMECALL                         R4 R0 K0 ["getState"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R3 R4 K3 ["AnimationData"]
       12 GETTABLEKS                       R4 R1 K4 ["SelectedTracks"]
       14 JUMPIFNOT                        R4 ; [+4]
       15 GETUPVAL                         R5 0
       16 MOVE                             R6 R4
       17 CALL                             R5 1 1
       18 JUMPIFNOT                        R5 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K5 ["isChannelAnimation"]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 JUMPIFNOT                        R5 ; [+5]
       26 LENGTH                           R5 R4
       27 LOADN                            R6 1
       28 JUMPIFNOTLT                      R6 R5 ; [+2]
       30 RETURN                           R0 0
       31 NEWTABLE                         R5 0 0
       33 NEWTABLE                         R6 0 0
       35 GETIMPORT                        R7 K7 [ipairs]
       37 MOVE                             R8 R2
       38 CALL                             R7 1 3
       39 FORGPREP_INEXT                   R7
       40 GETTABLEKS                       R12 R11 K8 ["Name"]
       42 SETTABLE                         R10 R6 R12
       43 FORGLOOP                         R7 2 [inext] ; [-4]
       45 LOADNIL                          R7
       46 LOADNIL                          R8
       47 GETIMPORT                        R9 K7 [ipairs]
       49 MOVE                             R10 R4
       50 CALL                             R9 1 3
       51 FORGPREP_INEXT                   R9
       52 GETTABLEN                        R14 R13 1
       53 GETTABLE                         R15 R6 R14
       54 JUMPIFNOT                        R7 ; [+8]
       55 FASTCALL2                        MATH_MIN R7 R15 ; [+5]
       57 MOVE                             R17 R7
       58 MOVE                             R18 R15
       59 GETIMPORT                        R16 K11 [math.min]
       61 CALL                             R16 2 1
       62 JUMPIF                           R16 ; [+1]
       63 MOVE                             R16 R15
       64 MOVE                             R7 R16
       65 JUMPIFNOT                        R8 ; [+8]
       66 FASTCALL2                        MATH_MAX R8 R15 ; [+5]
       68 MOVE                             R17 R8
       69 MOVE                             R18 R15
       70 GETIMPORT                        R16 K13 [math.max]
       72 CALL                             R16 2 1
       73 JUMPIF                           R16 ; [+1]
       74 MOVE                             R16 R15
       75 MOVE                             R8 R16
       76 FORGLOOP                         R9 2 [inext] ; [-25]
       78 GETUPVAL                         R9 2
       79 LOADN                            R10 0
       80 JUMPIFNOTLT                      R10 R9 ; [+11]
       82 GETUPVAL                         R10 2
       83 LENGTH                           R12 R2
       84 SUB                              R11 R12 R8
       85 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       87 GETIMPORT                        R9 K11 [math.min]
       89 CALL                             R9 2 1
       90 SETUPVAL                         R9 2
       91 JUMP                             ; [+8]
       92 GETUPVAL                         R10 2
       93 SUBRK                            R11 R14 K7 [ipairs]
       94 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       96 GETIMPORT                        R9 K13 [math.max]
       98 CALL                             R9 2 1
       99 SETUPVAL                         R9 2
      100 GETIMPORT                        R9 K7 [ipairs]
      102 MOVE                             R10 R4
      103 CALL                             R9 1 3
      104 FORGPREP_INEXT                   R9
      105 GETTABLEN                        R14 R13 1
      106 GETTABLE                         R15 R6 R14
      107 JUMPIFNOT                        R15 ; [+7]
      108 GETUPVAL                         R16 2
      109 ADD                              R15 R15 R16
      110 GETTABLE                         R17 R2 R15
      111 GETTABLEKS                       R16 R17 K8 ["Name"]
      113 LOADB                            R17 1
      114 SETTABLE                         R17 R5 R16
      115 FORGLOOP                         R9 2 [inext] ; [-11]
      117 NEWTABLE                         R9 0 0
      119 GETIMPORT                        R10 K16 [pairs]
      121 MOVE                             R11 R5
      122 CALL                             R10 1 3
      123 FORGPREP_NEXT                    R10
      124 NEWTABLE                         R17 0 1
      126 MOVE                             R18 R13
      127 SETLIST                          R17 R18 1 [1]
      129 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      131 MOVE                             R16 R9
      132 GETIMPORT                        R15 K19 [table.insert]
      134 CALL                             R15 2 0
      135 FORGLOOP                         R10 2 ; [-12]
      137 GETUPVAL                         R12 3
      138 MOVE                             R13 R9
      139 CALL                             R12 1 -1
      140 NAMECALL                         R10 R0 K20 ["dispatch"]
      142 CALL                             R10 -1 0
      143 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          REF R0
        4 CAPTURE                          UPVAL U2
        5 CLOSEUPVALS                      R0
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Thunks"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetSelectedTracks"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Util"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["isEmpty"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R3 K11 ["AnimationData"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K12 [PROTO_1]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R2
       34 RETURN                           R6 1
