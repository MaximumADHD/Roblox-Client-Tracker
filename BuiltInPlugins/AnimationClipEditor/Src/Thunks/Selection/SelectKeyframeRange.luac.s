PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["Keyframes"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R6 0
       10 JUMPIFNOTLE                      R6 R5 ; [+6]
       12 GETUPVAL                         R6 1
       13 JUMPIFNOTLE                      R5 R6 ; [+3]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 FORGLOOP                         R1 2 ; [-9]
       19 GETIMPORT                        R1 K1 [pairs]
       21 GETTABLEKS                       R2 R0 K3 ["Components"]
       23 JUMPIF                           R2 ; [+2]
       24 NEWTABLE                         R2 0 0
       26 CALL                             R1 1 3
       27 FORGPREP_NEXT                    R1
       28 GETUPVAL                         R6 2
       29 MOVE                             R7 R5
       30 CALL                             R6 1 1
       31 JUMPIFNOT                        R6 ; [+2]
       32 LOADB                            R6 1
       33 RETURN                           R6 1
       34 FORGLOOP                         R1 2 ; [-7]
       36 LOADB                            R1 0
       37 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETTABLEKS                       R4 R0 K2 ["Keyframes"]
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 CALL                             R3 1 3
       10 FORGPREP_NEXT                    R3
       11 GETUPVAL                         R8 0
       12 JUMPIFNOTLE                      R8 R7 ; [+6]
       14 GETUPVAL                         R8 1
       15 JUMPIFNOTLE                      R7 R8 ; [+3]
       17 LOADB                            R8 1
       18 SETTABLE                         R8 R2 R7
       19 FORGLOOP                         R3 2 ; [-9]
       21 GETIMPORT                        R3 K1 [pairs]
       23 GETTABLEKS                       R4 R0 K3 ["Components"]
       25 JUMPIF                           R4 ; [+2]
       26 NEWTABLE                         R4 0 0
       28 CALL                             R3 1 3
       29 FORGPREP_NEXT                    R3
       30 GETTABLEKS                       R8 R1 K3 ["Components"]
       32 JUMPIF                           R8 ; [+8]
       33 NEWTABLE                         R8 1 0
       35 NEWTABLE                         R9 0 0
       37 SETTABLE                         R9 R8 R6
       38 SETTABLEKS                       R8 R1 K3 ["Components"]
       40 JUMP                             ; [+9]
       41 GETTABLEKS                       R9 R1 K3 ["Components"]
       43 GETTABLE                         R8 R9 R6
       44 JUMPIF                           R8 ; [+5]
       45 GETTABLEKS                       R8 R1 K3 ["Components"]
       47 NEWTABLE                         R9 0 0
       49 SETTABLE                         R9 R8 R6
       50 GETUPVAL                         R8 2
       51 MOVE                             R9 R7
       52 GETTABLEKS                       R11 R1 K3 ["Components"]
       54 GETTABLE                         R10 R11 R6
       55 CALL                             R8 2 1
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R10 R11 K4 ["Dictionary"]
       59 GETTABLEKS                       R9 R10 K5 ["join"]
       61 MOVE                             R10 R2
       62 MOVE                             R11 R8
       63 CALL                             R9 2 1
       64 MOVE                             R2 R9
       65 FORGLOOP                         R3 2 ; [-36]
       67 GETUPVAL                         R5 3
       68 GETTABLEKS                       R4 R5 K4 ["Dictionary"]
       70 GETTABLEKS                       R3 R4 K5 ["join"]
       72 GETTABLEKS                       R4 R1 K6 ["Selection"]
       74 JUMPIF                           R4 ; [+2]
       75 NEWTABLE                         R4 0 0
       77 MOVE                             R5 R2
       78 CALL                             R3 2 1
       79 SETTABLEKS                       R3 R1 K6 ["Selection"]
       81 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R1 K2 ["AnimationData"]
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["getTrack"]
       14 MOVE                             R5 R3
       15 GETUPVAL                         R6 1
       16 GETUPVAL                         R7 2
       17 CALL                             R4 3 1
       18 JUMPIFNOTEQKNIL                  R4 ; [+2]
       20 RETURN                           R0 0
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R5
       25 MOVE                             R6 R5
       26 MOVE                             R7 R4
       27 CALL                             R6 1 1
       28 JUMPIF                           R6 ; [+1]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R6 R2 K4 ["SelectedKeyframes"]
       32 JUMPIFNOT                        R6 ; [+2]
       33 GETUPVAL                         R7 5
       34 JUMPIF                           R7 ; [+8]
       35 NEWTABLE                         R7 1 0
       37 GETUPVAL                         R8 1
       38 NEWTABLE                         R9 0 0
       40 SETTABLE                         R9 R7 R8
       41 MOVE                             R6 R7
       42 JUMP                             ; [+40]
       43 GETUPVAL                         R9 6
       44 GETTABLEKS                       R8 R9 K5 ["Dictionary"]
       46 GETTABLEKS                       R7 R8 K6 ["join"]
       48 MOVE                             R8 R6
       49 NEWTABLE                         R9 0 0
       51 CALL                             R7 2 1
       52 MOVE                             R6 R7
       53 GETUPVAL                         R7 1
       54 GETUPVAL                         R10 6
       55 GETTABLEKS                       R9 R10 K5 ["Dictionary"]
       57 GETTABLEKS                       R8 R9 K6 ["join"]
       59 GETUPVAL                         R10 1
       60 GETTABLE                         R9 R6 R10
       61 JUMPIF                           R9 ; [+2]
       62 NEWTABLE                         R9 0 0
       64 NEWTABLE                         R10 0 0
       66 CALL                             R8 2 1
       67 SETTABLE                         R8 R6 R7
       68 GETUPVAL                         R8 1
       69 GETTABLE                         R7 R6 R8
       70 GETUPVAL                         R9 2
       71 GETTABLEN                        R8 R9 1
       72 GETUPVAL                         R9 7
       73 GETUPVAL                         R12 1
       74 GETTABLE                         R11 R6 R12
       75 GETUPVAL                         R13 2
       76 GETTABLEN                        R12 R13 1
       77 GETTABLE                         R10 R11 R12
       78 JUMPIF                           R10 ; [+2]
       79 NEWTABLE                         R10 0 0
       81 CALL                             R9 1 1
       82 SETTABLE                         R9 R7 R8
       83 GETUPVAL                         R8 1
       84 GETTABLE                         R7 R6 R8
       85 GETIMPORT                        R8 K8 [ipairs]
       87 GETUPVAL                         R9 2
       88 CALL                             R8 1 3
       89 FORGPREP_INEXT                   R8
       90 GETTABLE                         R13 R7 R12
       91 JUMPIF                           R13 ; [+2]
       92 NEWTABLE                         R13 0 0
       94 SETTABLE                         R13 R7 R12
       95 GETUPVAL                         R14 2
       96 LENGTH                           R13 R14
       97 JUMPIFNOTLT                      R11 R13 ; [+14]
       99 GETTABLE                         R14 R7 R12
      100 GETTABLEKS                       R13 R14 K9 ["Components"]
      102 JUMPIF                           R13 ; [+5]
      103 GETTABLE                         R13 R7 R12
      104 NEWTABLE                         R14 0 0
      106 SETTABLEKS                       R14 R13 K9 ["Components"]
      108 GETTABLE                         R13 R7 R12
      109 GETTABLEKS                       R7 R13 K9 ["Components"]
      111 JUMP                             ; [+1]
      112 GETTABLE                         R7 R7 R12
      113 FORGLOOP                         R8 2 [inext] ; [-24]
      115 NEWCLOSURE                       R8 P1
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          UPVAL U4
      118 CAPTURE                          VAL R8
      119 CAPTURE                          UPVAL U6
      120 MOVE                             R9 R8
      121 MOVE                             R10 R4
      122 MOVE                             R11 R7
      123 CALL                             R9 2 0
      124 GETUPVAL                         R11 8
      125 MOVE                             R12 R6
      126 CALL                             R11 1 -1
      127 NAMECALL                         R9 R0 K10 ["dispatch"]
      129 CALL                             R9 -1 0
      130 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R4
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["AnimationData"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["deepCopy"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Actions"]
       38 GETTABLEKS                       R5 R6 K13 ["SetSelectedKeyframes"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K14 [PROTO_3]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1
