PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 GETTABLE                         R3 R2 R8
        8 JUMPIF                           R3 ; [+2]
        9 LOADNIL                          R9
       10 RETURN                           R9 1
       11 LENGTH                           R9 R1
       12 JUMPIFNOTLT                      R7 R9 ; [+9]
       14 GETTABLEKS                       R9 R3 K2 ["Components"]
       16 JUMPIFNOT                        R9 ; [+3]
       17 GETTABLEKS                       R2 R3 K2 ["Components"]
       19 JUMP                             ; [+2]
       20 LOADNIL                          R9
       21 RETURN                           R9 1
       22 FORGLOOP                         R4 2 [inext] ; [-16]
       24 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Components"]
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R2 R0 K0 ["Components"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+9]
        9 LOADB                            R1 1
       10 GETTABLEKS                       R2 R0 K1 ["Selection"]
       12 JUMPIFEQKNIL                     R2 ; [+5]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R2 R0 K1 ["Selection"]
       17 CALL                             R1 1 1
       18 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETTABLEKS                       R1 R0 K0 ["Selection"]
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R2 R0 K0 ["Selection"]
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K0 ["Selection"]
       16 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+36]
        1 GETTABLEKS                       R3 R1 K0 ["Data"]
        3 JUMPIFNOT                        R3 ; [+33]
        4 GETTABLEKS                       R4 R1 K0 ["Data"]
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R3 R4 R5
        8 JUMPIFNOT                        R3 ; [+28]
        9 GETTABLEKS                       R3 R0 K1 ["Selection"]
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R4 R0 K1 ["Selection"]
       14 GETUPVAL                         R5 0
       15 GETTABLE                         R3 R4 R5
       16 JUMPIF                           R3 ; [+20]
       17 GETUPVAL                         R3 1
       18 GETIMPORT                        R4 K3 [ipairs]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 3
       22 FORGPREP_INEXT                   R4
       23 JUMPIFNOT                        R3 ; [+11]
       24 GETTABLEKS                       R9 R3 K1 ["Selection"]
       26 JUMPIFNOT                        R9 ; [+5]
       27 GETTABLEKS                       R9 R3 K1 ["Selection"]
       29 GETUPVAL                         R10 0
       30 LOADNIL                          R11
       31 SETTABLE                         R11 R9 R10
       32 GETTABLEKS                       R9 R3 K4 ["Components"]
       34 GETTABLE                         R3 R9 R8
       35 FORGLOOP                         R4 2 [inext] ; [-13]
       37 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Selection"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["Selection"]
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Components"]
        2 JUMPIFNOT                        R1 ; [+34]
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETTABLEKS                       R2 R0 K0 ["Components"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 CALL                             R1 1 3
       11 FORGPREP_NEXT                    R1
       12 GETTABLEKS                       R7 R5 K0 ["Components"]
       14 JUMPIFEQKNIL                     R7 ; [+6]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R7 R5 K0 ["Components"]
       19 CALL                             R6 1 1
       20 JUMPIFNOT                        R6 ; [+9]
       21 LOADB                            R6 1
       22 GETTABLEKS                       R7 R5 K3 ["Selection"]
       24 JUMPIFEQKNIL                     R7 ; [+5]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R7 R5 K3 ["Selection"]
       29 CALL                             R6 1 1
       30 JUMPIFNOT                        R6 ; [+4]
       31 GETTABLEKS                       R6 R0 K0 ["Components"]
       33 LOADNIL                          R7
       34 SETTABLE                         R7 R6 R4
       35 FORGLOOP                         R1 2 ; [-24]
       37 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R3 K3 ["SelectedKeyframes"]
       12 JUMPIF                           R4 ; [+2]
       13 NEWTABLE                         R4 0 0
       15 GETUPVAL                         R6 0
       16 GETTABLE                         R5 R4 R6
       17 JUMPIF                           R5 ; [+2]
       18 NEWTABLE                         R5 0 0
       20 GETUPVAL                         R6 1
       21 MOVE                             R7 R5
       22 GETUPVAL                         R8 2
       23 CALL                             R6 2 1
       24 JUMPIFNOT                        R6 ; [+8]
       25 GETTABLEKS                       R7 R6 K4 ["Selection"]
       27 JUMPIFNOT                        R7 ; [+6]
       28 GETTABLEKS                       R8 R6 K4 ["Selection"]
       30 GETUPVAL                         R9 3
       31 GETTABLE                         R7 R8 R9
       32 JUMPIF                           R7 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       37 GETTABLEKS                       R7 R7 K6 ["join"]
       39 MOVE                             R8 R4
       40 NEWTABLE                         R9 0 0
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 0
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K5 ["Dictionary"]
       47 GETTABLEKS                       R9 R9 K6 ["join"]
       49 GETUPVAL                         R11 0
       50 GETTABLE                         R10 R7 R11
       51 NEWTABLE                         R11 0 0
       53 CALL                             R9 2 1
       54 SETTABLE                         R9 R7 R8
       55 GETUPVAL                         R9 0
       56 GETTABLE                         R8 R7 R9
       57 GETUPVAL                         R10 2
       58 GETTABLEN                        R9 R10 1
       59 GETUPVAL                         R10 5
       60 GETUPVAL                         R13 0
       61 GETTABLE                         R12 R7 R13
       62 GETUPVAL                         R14 2
       63 GETTABLEN                        R13 R14 1
       64 GETTABLE                         R11 R12 R13
       65 CALL                             R10 1 1
       66 SETTABLE                         R10 R8 R9
       67 GETUPVAL                         R8 1
       68 GETUPVAL                         R10 0
       69 GETTABLE                         R9 R7 R10
       70 GETUPVAL                         R10 2
       71 CALL                             R8 2 1
       72 MOVE                             R6 R8
       73 JUMPIFNOT                        R6 ; [+9]
       74 GETUPVAL                         R8 6
       75 GETTABLEKS                       R8 R8 K7 ["traverse"]
       77 MOVE                             R9 R6
       78 LOADNIL                          R10
       79 NEWCLOSURE                       R11 P0
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          UPVAL U7
       82 CALL                             R8 3 0
       83 GETUPVAL                         R10 0
       84 GETTABLE                         R9 R7 R10
       85 GETUPVAL                         R11 2
       86 GETTABLEN                        R10 R11 1
       87 GETTABLE                         R8 R9 R10
       88 GETTABLEKS                       R11 R2 K8 ["Instances"]
       90 GETUPVAL                         R12 0
       91 GETTABLE                         R10 R11 R12
       92 GETTABLEKS                       R10 R10 K9 ["Tracks"]
       94 GETUPVAL                         R12 2
       95 GETTABLEN                        R11 R12 1
       96 GETTABLE                         R9 R10 R11
       97 GETUPVAL                         R10 6
       98 GETTABLEKS                       R10 R10 K7 ["traverse"]
      100 MOVE                             R11 R8
      101 MOVE                             R12 R9
      102 NEWCLOSURE                       R13 P1
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          VAL R8
      105 DUPCLOSURE                       R14 K10 [PROTO_4]
      106 CAPTURE                          UPVAL U7
      107 CALL                             R10 4 0
      108 GETUPVAL                         R10 6
      109 GETTABLEKS                       R10 R10 K7 ["traverse"]
      111 MOVE                             R11 R8
      112 LOADNIL                          R12
      113 LOADNIL                          R13
      114 DUPCLOSURE                       R14 K11 [PROTO_5]
      115 CAPTURE                          UPVAL U7
      116 CALL                             R10 4 0
      117 GETTABLEKS                       R11 R8 K12 ["Components"]
      119 JUMPIFEQKNIL                     R11 ; [+6]
      121 GETUPVAL                         R10 7
      122 GETTABLEKS                       R11 R8 K12 ["Components"]
      124 CALL                             R10 1 1
      125 JUMPIFNOT                        R10 ; [+9]
      126 LOADB                            R10 1
      127 GETTABLEKS                       R11 R8 K4 ["Selection"]
      129 JUMPIFEQKNIL                     R11 ; [+5]
      131 GETUPVAL                         R10 7
      132 GETTABLEKS                       R11 R8 K4 ["Selection"]
      134 CALL                             R10 1 1
      135 JUMPIFNOT                        R10 ; [+14]
      136 GETUPVAL                         R11 0
      137 GETTABLE                         R10 R7 R11
      138 GETUPVAL                         R12 2
      139 GETTABLEN                        R11 R12 1
      140 LOADNIL                          R12
      141 SETTABLE                         R12 R10 R11
      142 GETUPVAL                         R10 7
      143 GETUPVAL                         R12 0
      144 GETTABLE                         R11 R7 R12
      145 CALL                             R10 1 1
      146 JUMPIFNOT                        R10 ; [+3]
      147 GETUPVAL                         R10 0
      148 LOADNIL                          R11
      149 SETTABLE                         R11 R7 R10
      150 GETUPVAL                         R12 8
      151 MOVE                             R13 R7
      152 CALL                             R12 1 -1
      153 NAMECALL                         R10 R0 K13 ["dispatch"]
      155 CALL                             R10 -1 0
      156 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["isEmpty"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["deepCopy"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["SelectionUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["PathUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K14 ["Actions"]
       56 GETTABLEKS                       R7 R7 K15 ["SetSelectedKeyframes"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K16 [PROTO_0]
       60 DUPCLOSURE                       R8 K17 [PROTO_1]
       61 CAPTURE                          VAL R2
       62 DUPCLOSURE                       R9 K18 [PROTO_7]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 RETURN                           R9 1
