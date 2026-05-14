PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K2 ["SelectedKeyframes"]
        9 GETTABLEKS                       R4 R1 K3 ["AnimationData"]
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIF                           R3 ; [+2]
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R6 R4 K4 ["Instances"]
       18 GETUPVAL                         R7 0
       19 GETTABLE                         R5 R6 R7
       20 JUMPIFNOTEQKNIL                  R5 ; [+2]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R6 R5 K5 ["Tracks"]
       25 JUMPIFNOTEQKNIL                  R6 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R8 1
       29 GETTABLE                         R7 R6 R8
       30 JUMPIFNOTEQKNIL                  R7 ; [+2]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R8 R7 K6 ["Data"]
       35 JUMPIFNOT                        R8 ; [+86]
       36 GETTABLEKS                       R9 R7 K6 ["Data"]
       38 GETUPVAL                         R10 2
       39 GETTABLE                         R8 R9 R10
       40 JUMPIFNOT                        R8 ; [+81]
       41 GETUPVAL                         R8 3
       42 JUMPIF                           R8 ; [+19]
       43 GETUPVAL                         R10 4
       44 NEWTABLE                         R11 1 0
       46 GETUPVAL                         R12 0
       47 NEWTABLE                         R13 1 0
       49 GETUPVAL                         R14 1
       50 NEWTABLE                         R15 1 0
       52 GETUPVAL                         R16 2
       53 LOADB                            R17 1
       54 SETTABLE                         R17 R15 R16
       55 SETTABLE                         R15 R13 R14
       56 SETTABLE                         R13 R11 R12
       57 CALL                             R10 1 -1
       58 NAMECALL                         R8 R0 K7 ["dispatch"]
       60 CALL                             R8 -1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R10 0
       63 GETTABLE                         R9 R3 R10
       64 JUMPIFEQKNIL                     R9 ; [+4]
       66 GETUPVAL                         R9 0
       67 GETTABLE                         R8 R3 R9
       68 JUMPIF                           R8 ; [+2]
       69 NEWTABLE                         R8 0 0
       71 GETUPVAL                         R11 1
       72 GETTABLE                         R10 R8 R11
       73 JUMPIFEQKNIL                     R10 ; [+4]
       75 GETUPVAL                         R10 1
       76 GETTABLE                         R9 R8 R10
       77 JUMPIF                           R9 ; [+2]
       78 NEWTABLE                         R9 0 0
       80 GETUPVAL                         R11 2
       81 GETTABLE                         R10 R9 R11
       82 JUMPIF                           R10 ; [+39]
       83 GETUPVAL                         R10 5
       84 GETTABLEKS                       R10 R10 K8 ["Dictionary"]
       86 GETTABLEKS                       R10 R10 K9 ["join"]
       88 MOVE                             R11 R9
       89 NEWTABLE                         R12 1 0
       91 GETUPVAL                         R13 2
       92 LOADB                            R14 1
       93 SETTABLE                         R14 R12 R13
       94 CALL                             R10 2 1
       95 GETUPVAL                         R13 4
       96 GETUPVAL                         R14 5
       97 GETTABLEKS                       R14 R14 K8 ["Dictionary"]
       99 GETTABLEKS                       R14 R14 K9 ["join"]
      101 MOVE                             R15 R3
      102 NEWTABLE                         R16 1 0
      104 GETUPVAL                         R17 0
      105 GETUPVAL                         R18 5
      106 GETTABLEKS                       R18 R18 K8 ["Dictionary"]
      108 GETTABLEKS                       R18 R18 K9 ["join"]
      110 MOVE                             R19 R8
      111 NEWTABLE                         R20 1 0
      113 GETUPVAL                         R21 1
      114 SETTABLE                         R10 R20 R21
      115 CALL                             R18 2 1
      116 SETTABLE                         R18 R16 R17
      117 CALL                             R14 2 -1
      118 CALL                             R13 -1 -1
      119 NAMECALL                         R11 R0 K7 ["dispatch"]
      121 CALL                             R11 -1 0
      122 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 RETURN                           R4 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETTABLEKS                       R3 R3 K10 ["SetSelectedKeyframes"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
