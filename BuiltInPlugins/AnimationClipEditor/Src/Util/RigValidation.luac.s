PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R8 0
        5 GETTABLE                         R7 R8 R1
        6 JUMPIFNOT                        R7 ; [+37]
        7 GETUPVAL                         R9 0
        8 GETTABLE                         R8 R9 R1
        9 GETTABLEKS                       R9 R6 K0 ["Name"]
       11 GETTABLE                         R7 R8 R9
       12 JUMPIFNOT                        R7 ; [+31]
       13 GETUPVAL                         R7 1
       14 GETUPVAL                         R9 1
       15 GETTABLE                         R8 R9 R1
       16 JUMPIF                           R8 ; [+5]
       17 GETUPVAL                         R8 2
       18 MOVE                             R10 R1
       19 NAMECALL                         R8 R8 K1 ["insert"]
       21 CALL                             R8 2 1
       22 SETTABLE                         R8 R7 R1
       23 GETUPVAL                         R7 3
       24 GETUPVAL                         R9 3
       25 GETTABLE                         R8 R9 R1
       26 JUMPIF                           R8 ; [+2]
       27 NEWTABLE                         R8 0 0
       29 SETTABLE                         R8 R7 R1
       30 GETUPVAL                         R8 3
       31 GETTABLE                         R7 R8 R1
       32 GETTABLEKS                       R8 R6 K0 ["Name"]
       34 LOADB                            R9 1
       35 SETTABLE                         R9 R7 R8
       36 GETUPVAL                         R8 1
       37 GETTABLE                         R7 R8 R1
       38 GETUPVAL                         R8 4
       39 GETUPVAL                         R10 3
       40 GETTABLE                         R9 R10 R1
       41 CALL                             R8 1 1
       42 SETTABLEKS                       R8 R7 K2 ["details"]
       44 GETUPVAL                         R7 0
       45 GETUPVAL                         R9 0
       46 GETTABLE                         R8 R9 R1
       47 JUMPIF                           R8 ; [+2]
       48 NEWTABLE                         R8 0 0
       50 SETTABLE                         R8 R7 R1
       51 GETUPVAL                         R8 0
       52 GETTABLE                         R7 R8 R1
       53 GETTABLEKS                       R8 R6 K0 ["Name"]
       55 LOADB                            R9 1
       56 SETTABLE                         R9 R7 R8
       57 FORGLOOP                         R2 2 ; [-54]
       59 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 NEWTABLE                         R5 0 0
        6 MOVE                             R6 R1
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 GETTABLEKS                       R11 R10 K1 ["Part0"]
       12 JUMPIFNOT                        R11 ; [+4]
       13 GETTABLEKS                       R11 R10 K1 ["Part0"]
       15 LOADB                            R12 1
       16 SETTABLE                         R12 R5 R11
       17 GETTABLEKS                       R11 R10 K2 ["Part1"]
       19 JUMPIFNOT                        R11 ; [+4]
       20 GETTABLEKS                       R11 R10 K2 ["Part1"]
       22 LOADB                            R12 1
       23 SETTABLE                         R12 R5 R11
       24 FORGLOOP                         R6 2 ; [-15]
       26 NEWTABLE                         R6 0 0
       28 NEWTABLE                         R7 0 0
       30 NEWTABLE                         R8 0 0
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R8
       37 CAPTURE                          UPVAL U1
       38 MOVE                             R10 R9
       39 GETUPVAL                         R11 1
       40 MOVE                             R12 R5
       41 CALL                             R11 1 1
       42 GETUPVAL                         R12 2
       43 GETTABLEKS                       R12 R12 K3 ["RIG_ERRORS"]
       45 GETTABLEKS                       R12 R12 K4 ["NameCollision"]
       47 CALL                             R10 2 0
       48 MOVE                             R10 R9
       49 MOVE                             R11 R3
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K3 ["RIG_ERRORS"]
       53 GETTABLEKS                       R12 R12 K5 ["BoneNameCollision"]
       55 CALL                             R10 2 0
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R11 R11 K3 ["RIG_ERRORS"]
       59 GETTABLEKS                       R11 R11 K5 ["BoneNameCollision"]
       61 GETTABLE                         R10 R6 R11
       62 JUMPIFNOT                        R10 ; [+78]
       63 GETUPVAL                         R10 1
       64 MOVE                             R11 R5
       65 CALL                             R10 1 3
       66 FORGPREP                         R10
       67 GETUPVAL                         R17 2
       68 GETTABLEKS                       R17 R17 K3 ["RIG_ERRORS"]
       70 GETTABLEKS                       R17 R17 K5 ["BoneNameCollision"]
       72 GETTABLE                         R16 R6 R17
       73 GETTABLEKS                       R17 R14 K6 ["Name"]
       75 GETTABLE                         R15 R16 R17
       76 JUMPIFNOT                        R15 ; [+62]
       77 GETUPVAL                         R15 2
       78 GETTABLEKS                       R15 R15 K3 ["RIG_ERRORS"]
       80 GETTABLEKS                       R15 R15 K7 ["PartBoneNameCollision"]
       82 GETUPVAL                         R17 2
       83 GETTABLEKS                       R17 R17 K3 ["RIG_ERRORS"]
       85 GETTABLEKS                       R17 R17 K7 ["PartBoneNameCollision"]
       87 GETTABLE                         R16 R7 R17
       88 JUMPIF                           R16 ; [+8]
       89 GETUPVAL                         R18 2
       90 GETTABLEKS                       R18 R18 K3 ["RIG_ERRORS"]
       92 GETTABLEKS                       R18 R18 K7 ["PartBoneNameCollision"]
       94 NAMECALL                         R16 R4 K8 ["insert"]
       96 CALL                             R16 2 1
       97 SETTABLE                         R16 R7 R15
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R15 R15 K3 ["RIG_ERRORS"]
      101 GETTABLEKS                       R15 R15 K7 ["PartBoneNameCollision"]
      103 GETUPVAL                         R17 2
      104 GETTABLEKS                       R17 R17 K3 ["RIG_ERRORS"]
      106 GETTABLEKS                       R17 R17 K7 ["PartBoneNameCollision"]
      108 GETTABLE                         R16 R8 R17
      109 JUMPIF                           R16 ; [+2]
      110 NEWTABLE                         R16 0 0
      112 SETTABLE                         R16 R8 R15
      113 GETUPVAL                         R16 2
      114 GETTABLEKS                       R16 R16 K3 ["RIG_ERRORS"]
      116 GETTABLEKS                       R16 R16 K7 ["PartBoneNameCollision"]
      118 GETTABLE                         R15 R8 R16
      119 GETTABLEKS                       R16 R14 K6 ["Name"]
      121 LOADB                            R17 1
      122 SETTABLE                         R17 R15 R16
      123 GETUPVAL                         R16 2
      124 GETTABLEKS                       R16 R16 K3 ["RIG_ERRORS"]
      126 GETTABLEKS                       R16 R16 K7 ["PartBoneNameCollision"]
      128 GETTABLE                         R15 R7 R16
      129 GETUPVAL                         R16 1
      130 GETUPVAL                         R18 2
      131 GETTABLEKS                       R18 R18 K3 ["RIG_ERRORS"]
      133 GETTABLEKS                       R18 R18 K7 ["PartBoneNameCollision"]
      135 GETTABLE                         R17 R8 R18
      136 CALL                             R16 1 1
      137 SETTABLEKS                       R16 R15 K9 ["details"]
      139 FORGLOOP                         R10 2 ; [-73]
      141 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 LENGTH                           R5 R1
        5 JUMPIFNOTEQKN                    R5 K1 [0] ; [+15]
        7 LENGTH                           R5 R2
        8 JUMPIFNOTEQKN                    R5 K1 [0] ; [+12]
       10 LENGTH                           R5 R3
       11 JUMPIFNOTEQKN                    R5 K1 [0] ; [+9]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K2 ["RIG_ERRORS"]
       16 GETTABLEKS                       R7 R7 K3 ["NoJoints"]
       18 NAMECALL                         R5 R4 K4 ["insert"]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R6 2
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+6]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K5 ["getRootPart"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 1
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K6 ["findRootPart"]
       33 MOVE                             R6 R0
       34 CALL                             R5 1 1
       35 JUMPIF                           R5 ; [+8]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K2 ["RIG_ERRORS"]
       39 GETTABLEKS                       R8 R8 K7 ["NoRoot"]
       41 NAMECALL                         R6 R4 K4 ["insert"]
       43 CALL                             R6 2 0
       44 RETURN                           R4 1

PROTO_3:
        0 JUMPIFNOT                        R2 ; [+3]
        1 GETTABLEKS                       R3 R2 K0 ["Parent"]
        3 JUMPIF                           R3 ; [+8]
        4 GETTABLEKS                       R5 R1 K1 ["Name"]
        6 FASTCALL2                        TABLE_INSERT R0 R5 ; [+4]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 NEWTABLE                         R5 0 0
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 NEWTABLE                         R8 0 0
       12 DUPCLOSURE                       R9 K1 [PROTO_3]
       13 GETIMPORT                        R10 K3 [pairs]
       15 MOVE                             R11 R1
       16 CALL                             R10 1 3
       17 FORGPREP_NEXT                    R10
       18 GETTABLEKS                       R15 R14 K4 ["Part0"]
       20 JUMPIFNOT                        R15 ; [+3]
       21 GETTABLEKS                       R16 R15 K5 ["Parent"]
       23 JUMPIF                           R16 ; [+8]
       24 GETTABLEKS                       R18 R14 K6 ["Name"]
       26 FASTCALL2                        TABLE_INSERT R5 R18 ; [+4]
       28 MOVE                             R17 R5
       29 GETIMPORT                        R16 K9 [table.insert]
       31 CALL                             R16 2 0
       32 GETTABLEKS                       R15 R14 K10 ["Part1"]
       34 JUMPIFNOT                        R15 ; [+3]
       35 GETTABLEKS                       R16 R15 K5 ["Parent"]
       37 JUMPIF                           R16 ; [+8]
       38 GETTABLEKS                       R18 R14 K6 ["Name"]
       40 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
       42 MOVE                             R17 R6
       43 GETIMPORT                        R16 K9 [table.insert]
       45 CALL                             R16 2 0
       46 FORGLOOP                         R10 2 ; [-29]
       48 GETIMPORT                        R10 K12 [next]
       50 MOVE                             R11 R5
       51 CALL                             R10 1 1
       52 JUMPIFNOT                        R10 ; [+9]
       53 GETUPVAL                         R12 1
       54 GETTABLEKS                       R12 R12 K13 ["RIG_ERRORS"]
       56 GETTABLEKS                       R12 R12 K14 ["MissingPart0"]
       58 MOVE                             R13 R5
       59 NAMECALL                         R10 R4 K8 ["insert"]
       61 CALL                             R10 3 0
       62 GETIMPORT                        R10 K12 [next]
       64 MOVE                             R11 R6
       65 CALL                             R10 1 1
       66 JUMPIFNOT                        R10 ; [+9]
       67 GETUPVAL                         R12 1
       68 GETTABLEKS                       R12 R12 K13 ["RIG_ERRORS"]
       70 GETTABLEKS                       R12 R12 K15 ["MissingPart1"]
       72 MOVE                             R13 R6
       73 NAMECALL                         R10 R4 K8 ["insert"]
       75 CALL                             R10 3 0
       76 GETIMPORT                        R10 K3 [pairs]
       78 MOVE                             R11 R2
       79 CALL                             R10 1 3
       80 FORGPREP_NEXT                    R10
       81 GETUPVAL                         R15 2
       82 GETTABLEKS                       R15 R15 K16 ["getPart0"]
       84 MOVE                             R16 R14
       85 CALL                             R15 1 1
       86 JUMPIFNOT                        R15 ; [+3]
       87 GETTABLEKS                       R16 R15 K5 ["Parent"]
       89 JUMPIF                           R16 ; [+8]
       90 GETTABLEKS                       R18 R14 K6 ["Name"]
       92 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
       94 MOVE                             R17 R7
       95 GETIMPORT                        R16 K9 [table.insert]
       97 CALL                             R16 2 0
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R15 R15 K17 ["getPart1"]
      101 MOVE                             R16 R14
      102 CALL                             R15 1 1
      103 JUMPIFNOT                        R15 ; [+3]
      104 GETTABLEKS                       R16 R15 K5 ["Parent"]
      106 JUMPIF                           R16 ; [+8]
      107 GETTABLEKS                       R18 R14 K6 ["Name"]
      109 FASTCALL2                        TABLE_INSERT R8 R18 ; [+4]
      111 MOVE                             R17 R8
      112 GETIMPORT                        R16 K9 [table.insert]
      114 CALL                             R16 2 0
      115 FORGLOOP                         R10 2 ; [-35]
      117 GETIMPORT                        R10 K12 [next]
      119 MOVE                             R11 R7
      120 CALL                             R10 1 1
      121 JUMPIFNOT                        R10 ; [+9]
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R12 R12 K13 ["RIG_ERRORS"]
      125 GETTABLEKS                       R12 R12 K18 ["AnimConstraintMissingPart0"]
      127 MOVE                             R13 R7
      128 NAMECALL                         R10 R4 K8 ["insert"]
      130 CALL                             R10 3 0
      131 GETIMPORT                        R10 K12 [next]
      133 MOVE                             R11 R8
      134 CALL                             R10 1 1
      135 JUMPIFNOT                        R10 ; [+9]
      136 GETUPVAL                         R12 1
      137 GETTABLEKS                       R12 R12 K13 ["RIG_ERRORS"]
      139 GETTABLEKS                       R12 R12 K19 ["AnimConstraintMissingPart1"]
      141 MOVE                             R13 R8
      142 NAMECALL                         R10 R4 K8 ["insert"]
      144 CALL                             R10 3 0
      145 RETURN                           R4 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["Anchored"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R2 R0 K1 ["Name"]
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R1 R2
       13 RETURN                           R0 0
       14 LOADB                            R1 1
       15 SETUPVAL                         R1 2
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 LOADB                            R5 0
        5 NEWTABLE                         R6 0 0
        7 GETIMPORT                        R7 K2 [next]
        9 MOVE                             R8 R3
       10 CALL                             R7 1 1
       11 JUMPIFNOT                        R7 ; [+4]
       12 MOVE                             R7 R4
       13 LOADB                            R8 0
       14 CLOSEUPVALS                      R5
       15 RETURN                           R7 2
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["findRootPart"]
       19 MOVE                             R8 R0
       20 CALL                             R7 1 1
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R7
       23 CAPTURE                          VAL R6
       24 CAPTURE                          REF R5
       25 GETIMPORT                        R9 K5 [pairs]
       27 MOVE                             R10 R1
       28 CALL                             R9 1 3
       29 FORGPREP_NEXT                    R9
       30 GETTABLEKS                       R14 R13 K6 ["Part0"]
       32 JUMPIFNOT                        R14 ; [+12]
       33 JUMPIFNOTEQ                      R14 R7 ; [+2]
       35 JUMP                             ; [+9]
       36 GETTABLEKS                       R15 R14 K7 ["Anchored"]
       38 JUMPIFNOT                        R15 ; [+5]
       39 GETTABLEKS                       R15 R14 K8 ["Name"]
       41 LOADB                            R16 1
       42 SETTABLE                         R16 R6 R15
       43 JUMP                             ; [+1]
       44 LOADB                            R5 1
       45 GETTABLEKS                       R14 R13 K9 ["Part1"]
       47 JUMPIFNOT                        R14 ; [+12]
       48 JUMPIFNOTEQ                      R14 R7 ; [+2]
       50 JUMP                             ; [+9]
       51 GETTABLEKS                       R15 R14 K7 ["Anchored"]
       53 JUMPIFNOT                        R15 ; [+5]
       54 GETTABLEKS                       R15 R14 K8 ["Name"]
       56 LOADB                            R16 1
       57 SETTABLE                         R16 R6 R15
       58 JUMP                             ; [+1]
       59 LOADB                            R5 1
       60 FORGLOOP                         R9 2 ; [-31]
       62 GETIMPORT                        R9 K5 [pairs]
       64 MOVE                             R10 R2
       65 CALL                             R9 1 3
       66 FORGPREP_NEXT                    R9
       67 GETUPVAL                         R14 1
       68 GETTABLEKS                       R14 R14 K10 ["getPart0"]
       70 MOVE                             R15 R13
       71 CALL                             R14 1 1
       72 JUMPIFNOT                        R14 ; [+12]
       73 JUMPIFNOTEQ                      R14 R7 ; [+2]
       75 JUMP                             ; [+9]
       76 GETTABLEKS                       R15 R14 K7 ["Anchored"]
       78 JUMPIFNOT                        R15 ; [+5]
       79 GETTABLEKS                       R15 R14 K8 ["Name"]
       81 LOADB                            R16 1
       82 SETTABLE                         R16 R6 R15
       83 JUMP                             ; [+1]
       84 LOADB                            R5 1
       85 GETUPVAL                         R14 1
       86 GETTABLEKS                       R14 R14 K11 ["getPart1"]
       88 MOVE                             R15 R13
       89 CALL                             R14 1 1
       90 JUMPIFNOT                        R14 ; [+12]
       91 JUMPIFNOTEQ                      R14 R7 ; [+2]
       93 JUMP                             ; [+9]
       94 GETTABLEKS                       R15 R14 K7 ["Anchored"]
       96 JUMPIFNOT                        R15 ; [+5]
       97 GETTABLEKS                       R15 R14 K8 ["Name"]
       99 LOADB                            R16 1
      100 SETTABLE                         R16 R6 R15
      101 JUMP                             ; [+1]
      102 LOADB                            R5 1
      103 FORGLOOP                         R9 2 ; [-37]
      105 JUMPIF                           R5 ; [+9]
      106 GETUPVAL                         R11 2
      107 GETTABLEKS                       R11 R11 K12 ["RIG_ERRORS"]
      109 GETTABLEKS                       R11 R11 K13 ["PartsAnchored"]
      111 NAMECALL                         R9 R4 K14 ["insert"]
      113 CALL                             R9 2 0
      114 JUMP                             ; [+21]
      115 GETIMPORT                        R9 K2 [next]
      117 MOVE                             R10 R6
      118 CALL                             R9 1 1
      119 JUMPIFNOT                        R9 ; [+16]
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K15 ["RIG_WARNINGS"]
      123 GETTABLEKS                       R11 R11 K13 ["PartsAnchored"]
      125 GETUPVAL                         R12 3
      126 MOVE                             R13 R6
      127 CALL                             R12 1 1
      128 GETUPVAL                         R13 2
      129 GETTABLEKS                       R13 R13 K16 ["SEVERITY"]
      131 GETTABLEKS                       R13 R13 K17 ["Warning"]
      133 NAMECALL                         R9 R4 K14 ["insert"]
      135 CALL                             R9 4 0
      136 CLOSEUPVALS                      R5
      137 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 NEWTABLE                         R5 0 0
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 GETIMPORT                        R8 K2 [pairs]
       12 MOVE                             R9 R1
       13 CALL                             R8 1 3
       14 FORGPREP_NEXT                    R8
       15 GETTABLEKS                       R13 R12 K3 ["Part0"]
       17 GETTABLEKS                       R14 R12 K4 ["Part1"]
       19 JUMPIFNOT                        R13 ; [+33]
       20 JUMPIFNOT                        R14 ; [+32]
       21 GETTABLEKS                       R17 R13 K5 ["Name"]
       23 LOADB                            R18 1
       24 NAMECALL                         R15 R0 K6 ["FindFirstChild"]
       26 CALL                             R15 3 1
       27 JUMPIFNOT                        R15 ; [+25]
       28 GETTABLEKS                       R17 R14 K5 ["Name"]
       30 LOADB                            R18 1
       31 NAMECALL                         R15 R0 K6 ["FindFirstChild"]
       33 CALL                             R15 3 1
       34 JUMPIFNOT                        R15 ; [+18]
       35 GETTABLE                         R15 R5 R14
       36 JUMPIFNOT                        R15 ; [+9]
       37 GETTABLE                         R16 R5 R14
       38 GETTABLEKS                       R17 R12 K5 ["Name"]
       40 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
       42 GETIMPORT                        R15 K9 [table.insert]
       44 CALL                             R15 2 0
       45 JUMP                             ; [+7]
       46 NEWTABLE                         R15 0 1
       48 GETTABLEKS                       R16 R12 K5 ["Name"]
       50 SETLIST                          R15 R16 1 [1]
       52 SETTABLE                         R15 R5 R14
       53 FORGLOOP                         R8 2 ; [-39]
       55 MOVE                             R8 R5
       56 LOADNIL                          R9
       57 LOADNIL                          R10
       58 FORGPREP                         R8
       59 LENGTH                           R13 R12
       60 LOADN                            R14 1
       61 JUMPIFNOTLT                      R14 R13 ; [+21]
       63 GETIMPORT                        R13 K11 [table.sort]
       65 MOVE                             R14 R12
       66 CALL                             R13 1 0
       67 MOVE                             R14 R7
       68 GETIMPORT                        R15 K14 [string.format]
       70 LOADK                            R16 K15 ["%s (%s)"]
       71 GETTABLEKS                       R17 R11 K5 ["Name"]
       73 GETIMPORT                        R18 K17 [table.concat]
       75 MOVE                             R19 R12
       76 LOADK                            R20 K18 [", "]
       77 CALL                             R18 2 -1
       78 CALL                             R15 -1 -1
       79 FASTCALL                         TABLE_INSERT ; [+2]
       80 GETIMPORT                        R13 K9 [table.insert]
       82 CALL                             R13 -1 0
       83 FORGLOOP                         R8 2 ; [-25]
       85 GETIMPORT                        R8 K2 [pairs]
       87 MOVE                             R9 R2
       88 CALL                             R8 1 3
       89 FORGPREP_NEXT                    R8
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R13 R13 K19 ["getPart0"]
       93 MOVE                             R14 R12
       94 CALL                             R13 1 1
       95 GETUPVAL                         R14 1
       96 GETTABLEKS                       R14 R14 K20 ["getPart1"]
       98 MOVE                             R15 R12
       99 CALL                             R14 1 1
      100 JUMPIFNOT                        R13 ; [+33]
      101 JUMPIFNOT                        R14 ; [+32]
      102 GETTABLEKS                       R17 R13 K5 ["Name"]
      104 LOADB                            R18 1
      105 NAMECALL                         R15 R0 K6 ["FindFirstChild"]
      107 CALL                             R15 3 1
      108 JUMPIFNOT                        R15 ; [+25]
      109 GETTABLEKS                       R17 R14 K5 ["Name"]
      111 LOADB                            R18 1
      112 NAMECALL                         R15 R0 K6 ["FindFirstChild"]
      114 CALL                             R15 3 1
      115 JUMPIFNOT                        R15 ; [+18]
      116 GETTABLE                         R15 R6 R14
      117 JUMPIFNOT                        R15 ; [+9]
      118 GETTABLE                         R16 R6 R14
      119 GETTABLEKS                       R17 R12 K5 ["Name"]
      121 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
      123 GETIMPORT                        R15 K9 [table.insert]
      125 CALL                             R15 2 0
      126 JUMP                             ; [+7]
      127 NEWTABLE                         R15 0 1
      129 GETTABLEKS                       R16 R12 K5 ["Name"]
      131 SETLIST                          R15 R16 1 [1]
      133 SETTABLE                         R15 R6 R14
      134 FORGLOOP                         R8 2 ; [-45]
      136 MOVE                             R8 R6
      137 LOADNIL                          R9
      138 LOADNIL                          R10
      139 FORGPREP                         R8
      140 LENGTH                           R13 R12
      141 LOADN                            R14 1
      142 JUMPIFNOTLT                      R14 R13 ; [+21]
      144 GETIMPORT                        R13 K11 [table.sort]
      146 MOVE                             R14 R12
      147 CALL                             R13 1 0
      148 MOVE                             R14 R7
      149 GETIMPORT                        R15 K14 [string.format]
      151 LOADK                            R16 K15 ["%s (%s)"]
      152 GETTABLEKS                       R17 R11 K5 ["Name"]
      154 GETIMPORT                        R18 K17 [table.concat]
      156 MOVE                             R19 R12
      157 LOADK                            R20 K18 [", "]
      158 CALL                             R18 2 -1
      159 CALL                             R15 -1 -1
      160 FASTCALL                         TABLE_INSERT ; [+2]
      161 GETIMPORT                        R13 K9 [table.insert]
      163 CALL                             R13 -1 0
      164 FORGLOOP                         R8 2 ; [-25]
      166 GETIMPORT                        R8 K22 [next]
      168 MOVE                             R9 R7
      169 CALL                             R8 1 1
      170 JUMPIFNOT                        R8 ; [+9]
      171 GETUPVAL                         R10 2
      172 GETTABLEKS                       R10 R10 K23 ["RIG_ERRORS"]
      174 GETTABLEKS                       R10 R10 K24 ["MultipleMotorsOrAnimConstraints"]
      176 MOVE                             R11 R7
      177 NAMECALL                         R8 R4 K8 ["insert"]
      179 CALL                             R8 3 0
      180 RETURN                           R4 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 LOADB                            R2 0
        3 LENGTH                           R4 R0
        4 GETTABLE                         R3 R0 R4
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 MOVE                             R9 R2
       10 JUMPIF                           R9 ; [+4]
       11 JUMPIFEQ                         R8 R3 ; [+2]
       13 LOADB                            R9 0 +1
       14 LOADB                            R9 1
       15 MOVE                             R2 R9
       16 JUMPIFNOT                        R2 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       19 MOVE                             R10 R1
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K2 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-16]
       26 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 DUPCLOSURE                       R5 K1 [PROTO_8]
        5 NEWTABLE                         R6 0 0
        7 MOVE                             R7 R1
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R12 R11 K2 ["Part1"]
       13 SETTABLE                         R11 R6 R12
       14 FORGLOOP                         R7 2 ; [-4]
       16 GETIMPORT                        R7 K4 [pairs]
       18 MOVE                             R8 R6
       19 CALL                             R7 1 3
       20 FORGPREP_NEXT                    R7
       21 GETTABLEKS                       R12 R11 K5 ["Part0"]
       23 JUMPIFNOT                        R12 ; [+28]
       24 JUMPIFNOT                        R10 ; [+27]
       25 JUMPIFNOTEQ                      R12 R10 ; [+26]
       27 GETUPVAL                         R15 1
       28 GETTABLEKS                       R15 R15 K6 ["RIG_ERRORS"]
       30 GETTABLEKS                       R15 R15 K7 ["CircularRig"]
       32 NEWTABLE                         R16 0 1
       34 GETIMPORT                        R17 K10 [table.concat]
       36 NEWTABLE                         R18 0 2
       38 GETTABLEKS                       R19 R10 K11 ["Name"]
       40 GETTABLEKS                       R20 R12 K11 ["Name"]
       42 SETLIST                          R18 R19 2 [1]
       44 LOADK                            R19 K12 [" / "]
       45 CALL                             R17 2 -1
       46 SETLIST                          R16 R17 -1 [1]
       48 NAMECALL                         R13 R4 K13 ["insert"]
       50 CALL                             R13 3 0
       51 RETURN                           R4 1
       52 NEWTABLE                         R13 0 0
       54 NEWTABLE                         R14 0 1
       56 GETTABLEKS                       R15 R10 K11 ["Name"]
       58 SETLIST                          R14 R15 1 [1]
       60 JUMPIFEQKNIL                     R12 ; [+54]
       62 GETIMPORT                        R15 K15 [game]
       64 GETTABLEKS                       R15 R15 K16 ["Workspace"]
       66 JUMPIFEQ                         R12 R15 ; [+48]
       68 GETTABLE                         R15 R6 R12
       69 JUMPIFNOT                        R15 ; [+45]
       70 GETTABLEKS                       R18 R12 K11 ["Name"]
       72 FASTCALL2                        TABLE_INSERT R14 R18 ; [+4]
       74 MOVE                             R17 R14
       75 GETIMPORT                        R16 K17 [table.insert]
       77 CALL                             R16 2 0
       78 GETTABLEKS                       R12 R15 K5 ["Part0"]
       80 GETTABLE                         R16 R13 R15
       81 JUMPIFNOT                        R16 ; [+28]
       82 GETTABLEKS                       R18 R12 K11 ["Name"]
       84 FASTCALL2                        TABLE_INSERT R14 R18 ; [+4]
       86 MOVE                             R17 R14
       87 GETIMPORT                        R16 K17 [table.insert]
       89 CALL                             R16 2 0
       90 GETUPVAL                         R18 1
       91 GETTABLEKS                       R18 R18 K6 ["RIG_ERRORS"]
       93 GETTABLEKS                       R18 R18 K7 ["CircularRig"]
       95 NEWTABLE                         R19 0 1
       97 GETIMPORT                        R20 K10 [table.concat]
       99 MOVE                             R21 R5
      100 MOVE                             R22 R14
      101 CALL                             R21 1 1
      102 LOADK                            R22 K12 [" / "]
      103 CALL                             R20 2 -1
      104 SETLIST                          R19 R20 -1 [1]
      106 NAMECALL                         R16 R4 K13 ["insert"]
      108 CALL                             R16 3 0
      109 RETURN                           R4 1
      110 LOADB                            R16 1
      111 SETTABLE                         R16 R13 R15
      112 JUMP                             ; [+1]
      113 JUMP                             ; [+1]
      114 JUMPBACK                         ; [-55]
      115 FORGLOOP                         R7 2 ; [-95]
      117 NEWTABLE                         R7 0 0
      119 MOVE                             R8 R2
      120 LOADNIL                          R9
      121 LOADNIL                          R10
      122 FORGPREP                         R8
      123 GETUPVAL                         R13 2
      124 GETTABLEKS                       R13 R13 K18 ["getPart1"]
      126 MOVE                             R14 R12
      127 CALL                             R13 1 1
      128 SETTABLE                         R12 R7 R13
      129 FORGLOOP                         R8 2 ; [-7]
      131 GETIMPORT                        R8 K4 [pairs]
      133 MOVE                             R9 R7
      134 CALL                             R8 1 3
      135 FORGPREP_NEXT                    R8
      136 GETUPVAL                         R13 2
      137 GETTABLEKS                       R13 R13 K19 ["getPart0"]
      139 MOVE                             R14 R12
      140 CALL                             R13 1 1
      141 JUMPIFNOT                        R13 ; [+28]
      142 JUMPIFNOT                        R11 ; [+27]
      143 JUMPIFNOTEQ                      R13 R11 ; [+26]
      145 GETUPVAL                         R16 1
      146 GETTABLEKS                       R16 R16 K6 ["RIG_ERRORS"]
      148 GETTABLEKS                       R16 R16 K7 ["CircularRig"]
      150 NEWTABLE                         R17 0 1
      152 GETIMPORT                        R18 K10 [table.concat]
      154 NEWTABLE                         R19 0 2
      156 GETTABLEKS                       R20 R11 K11 ["Name"]
      158 GETTABLEKS                       R21 R13 K11 ["Name"]
      160 SETLIST                          R19 R20 2 [1]
      162 LOADK                            R20 K12 [" / "]
      163 CALL                             R18 2 -1
      164 SETLIST                          R17 R18 -1 [1]
      166 NAMECALL                         R14 R4 K13 ["insert"]
      168 CALL                             R14 3 0
      169 RETURN                           R4 1
      170 NEWTABLE                         R14 0 0
      172 NEWTABLE                         R15 0 1
      174 GETTABLEKS                       R16 R11 K11 ["Name"]
      176 SETLIST                          R15 R16 1 [1]
      178 JUMPIFEQKNIL                     R13 ; [+58]
      180 GETIMPORT                        R16 K15 [game]
      182 GETTABLEKS                       R16 R16 K16 ["Workspace"]
      184 JUMPIFEQ                         R13 R16 ; [+52]
      186 GETTABLE                         R16 R7 R13
      187 JUMPIFNOT                        R16 ; [+49]
      188 GETTABLEKS                       R19 R13 K11 ["Name"]
      190 FASTCALL2                        TABLE_INSERT R15 R19 ; [+4]
      192 MOVE                             R18 R15
      193 GETIMPORT                        R17 K17 [table.insert]
      195 CALL                             R17 2 0
      196 GETUPVAL                         R17 2
      197 GETTABLEKS                       R17 R17 K19 ["getPart0"]
      199 MOVE                             R18 R16
      200 CALL                             R17 1 1
      201 MOVE                             R13 R17
      202 GETTABLE                         R17 R14 R16
      203 JUMPIFNOT                        R17 ; [+28]
      204 GETTABLEKS                       R19 R13 K11 ["Name"]
      206 FASTCALL2                        TABLE_INSERT R15 R19 ; [+4]
      208 MOVE                             R18 R15
      209 GETIMPORT                        R17 K17 [table.insert]
      211 CALL                             R17 2 0
      212 GETUPVAL                         R19 1
      213 GETTABLEKS                       R19 R19 K6 ["RIG_ERRORS"]
      215 GETTABLEKS                       R19 R19 K7 ["CircularRig"]
      217 NEWTABLE                         R20 0 1
      219 GETIMPORT                        R21 K10 [table.concat]
      221 MOVE                             R22 R5
      222 MOVE                             R23 R15
      223 CALL                             R22 1 1
      224 LOADK                            R23 K12 [" / "]
      225 CALL                             R21 2 -1
      226 SETLIST                          R20 R21 -1 [1]
      228 NAMECALL                         R17 R4 K13 ["insert"]
      230 CALL                             R17 3 0
      231 RETURN                           R4 1
      232 LOADB                            R17 1
      233 SETTABLE                         R17 R14 R16
      234 JUMP                             ; [+1]
      235 JUMP                             ; [+1]
      236 JUMPBACK                         ; [-59]
      237 FORGLOOP                         R8 2 ; [-102]
      239 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 NEWTABLE                         R5 0 0
        6 MOVE                             R6 R1
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 GETTABLEKS                       R11 R10 K1 ["Part0"]
       12 JUMPIFNOT                        R11 ; [+4]
       13 GETTABLEKS                       R11 R10 K1 ["Part0"]
       15 GETTABLEKS                       R11 R11 K2 ["Name"]
       17 GETTABLEKS                       R12 R10 K3 ["Part1"]
       19 JUMPIFNOT                        R12 ; [+4]
       20 GETTABLEKS                       R12 R10 K3 ["Part1"]
       22 GETTABLEKS                       R12 R12 K2 ["Name"]
       24 JUMPIFNOT                        R11 ; [+28]
       25 JUMPIFNOT                        R12 ; [+27]
       26 JUMPIFNOTLT                      R12 R11 ; [+4]
       28 MOVE                             R13 R12
       29 MOVE                             R12 R11
       30 MOVE                             R11 R13
       31 GETTABLE                         R13 R5 R11
       32 JUMPIFNOTEQKNIL                  R13 ; [+4]
       34 NEWTABLE                         R13 0 0
       36 SETTABLE                         R13 R5 R11
       37 GETTABLE                         R14 R5 R11
       38 GETTABLE                         R13 R14 R12
       39 JUMPIFNOTEQKNIL                  R13 ; [+5]
       41 GETTABLE                         R13 R5 R11
       42 NEWTABLE                         R14 0 0
       44 SETTABLE                         R14 R13 R12
       45 GETTABLE                         R15 R5 R11
       46 GETTABLE                         R14 R15 R12
       47 FASTCALL2                        TABLE_INSERT R14 R10 ; [+4]
       49 MOVE                             R15 R10
       50 GETIMPORT                        R13 K6 [table.insert]
       52 CALL                             R13 2 0
       53 FORGLOOP                         R6 2 ; [-44]
       55 GETIMPORT                        R6 K8 [pairs]
       57 MOVE                             R7 R2
       58 CALL                             R6 1 3
       59 FORGPREP_NEXT                    R6
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K9 ["getPart0"]
       63 MOVE                             R12 R10
       64 CALL                             R11 1 1
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K10 ["getPart1"]
       68 MOVE                             R13 R10
       69 CALL                             R12 1 1
       70 MOVE                             R13 R11
       71 JUMPIFNOT                        R13 ; [+2]
       72 GETTABLEKS                       R13 R11 K2 ["Name"]
       74 MOVE                             R14 R12
       75 JUMPIFNOT                        R14 ; [+2]
       76 GETTABLEKS                       R14 R12 K2 ["Name"]
       78 JUMPIFNOT                        R13 ; [+28]
       79 JUMPIFNOT                        R14 ; [+27]
       80 JUMPIFNOTLT                      R14 R13 ; [+4]
       82 MOVE                             R15 R14
       83 MOVE                             R14 R13
       84 MOVE                             R13 R15
       85 GETTABLE                         R15 R5 R13
       86 JUMPIFNOTEQKNIL                  R15 ; [+4]
       88 NEWTABLE                         R15 0 0
       90 SETTABLE                         R15 R5 R13
       91 GETTABLE                         R16 R5 R13
       92 GETTABLE                         R15 R16 R14
       93 JUMPIFNOTEQKNIL                  R15 ; [+5]
       95 GETTABLE                         R15 R5 R13
       96 NEWTABLE                         R16 0 0
       98 SETTABLE                         R16 R15 R14
       99 GETTABLE                         R17 R5 R13
      100 GETTABLE                         R16 R17 R14
      101 FASTCALL2                        TABLE_INSERT R16 R10 ; [+4]
      103 MOVE                             R17 R10
      104 GETIMPORT                        R15 K6 [table.insert]
      106 CALL                             R15 2 0
      107 FORGLOOP                         R6 2 ; [-48]
      109 NEWTABLE                         R6 0 0
      111 MOVE                             R7 R5
      112 LOADNIL                          R8
      113 LOADNIL                          R9
      114 FORGPREP                         R7
      115 MOVE                             R12 R11
      116 LOADNIL                          R13
      117 LOADNIL                          R14
      118 FORGPREP                         R12
      119 LENGTH                           R17 R16
      120 LOADN                            R18 1
      121 JUMPIFNOTLT                      R18 R17 ; [+32]
      123 MOVE                             R18 R10
      124 LOADK                            R19 K11 [" - "]
      125 MOVE                             R20 R15
      126 LOADK                            R21 K12 [" ("]
      127 CONCAT                           R17 R18 R21
      128 MOVE                             R18 R16
      129 LOADNIL                          R19
      130 LOADNIL                          R20
      131 FORGPREP                         R18
      132 LOADN                            R23 1
      133 JUMPIFNOTLT                      R23 R21 ; [+4]
      135 MOVE                             R23 R17
      136 LOADK                            R24 K13 [", "]
      137 CONCAT                           R17 R23 R24
      138 MOVE                             R23 R17
      139 GETTABLEKS                       R24 R22 K2 ["Name"]
      141 CONCAT                           R17 R23 R24
      142 FORGLOOP                         R18 2 ; [-11]
      144 MOVE                             R18 R17
      145 LOADK                            R19 K14 [")"]
      146 CONCAT                           R17 R18 R19
      147 FASTCALL2                        TABLE_INSERT R6 R17 ; [+5]
      149 MOVE                             R19 R6
      150 MOVE                             R20 R17
      151 GETIMPORT                        R18 K6 [table.insert]
      153 CALL                             R18 2 0
      154 FORGLOOP                         R12 2 ; [-36]
      156 FORGLOOP                         R7 2 ; [-42]
      158 GETIMPORT                        R7 K16 [next]
      160 MOVE                             R8 R6
      161 CALL                             R7 1 1
      162 JUMPIFNOT                        R7 ; [+9]
      163 GETUPVAL                         R9 2
      164 GETTABLEKS                       R9 R9 K17 ["RIG_ERRORS"]
      166 GETTABLEKS                       R9 R9 K18 ["DoubleJoints"]
      168 MOVE                             R10 R6
      169 NAMECALL                         R7 R4 K5 ["insert"]
      171 CALL                             R7 3 0
      172 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["getAnimator"]
        7 MOVE                             R6 R0
        8 CALL                             R5 1 1
        9 JUMPIF                           R5 ; [+8]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K2 ["RIG_ERRORS"]
       13 GETTABLEKS                       R7 R7 K3 ["NoAnimationController"]
       15 NAMECALL                         R5 R4 K4 ["insert"]
       17 CALL                             R5 2 0
       18 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["getFaceControls"]
        7 MOVE                             R6 R0
        8 CALL                             R5 1 2
        9 LENGTH                           R7 R6
       10 LOADN                            R8 1
       11 JUMPIFNOTLT                      R8 R7 ; [+26]
       13 NEWTABLE                         R7 0 0
       15 MOVE                             R8 R6
       16 LOADNIL                          R9
       17 LOADNIL                          R10
       18 FORGPREP                         R8
       19 GETTABLEKS                       R15 R12 K2 ["Name"]
       21 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       23 MOVE                             R14 R7
       24 GETIMPORT                        R13 K5 [table.insert]
       26 CALL                             R13 2 0
       27 FORGLOOP                         R8 2 ; [-9]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K6 ["RIG_ERRORS"]
       32 GETTABLEKS                       R10 R10 K7 ["MultipleFaceControls"]
       34 MOVE                             R11 R7
       35 NAMECALL                         R8 R4 K4 ["insert"]
       37 CALL                             R8 3 0
       38 NEWTABLE                         R7 0 0
       40 MOVE                             R8 R6
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 GETTABLEKS                       R13 R12 K8 ["Parent"]
       46 JUMPIFNOT                        R13 ; [+22]
       47 GETTABLEKS                       R13 R12 K8 ["Parent"]
       49 LOADK                            R15 K9 ["BasePart"]
       50 NAMECALL                         R13 R13 K10 ["IsA"]
       52 CALL                             R13 2 1
       53 JUMPIF                           R13 ; [+15]
       54 GETTABLEKS                       R13 R12 K8 ["Parent"]
       56 LOADK                            R15 K11 ["Bone"]
       57 NAMECALL                         R13 R13 K10 ["IsA"]
       59 CALL                             R13 2 1
       60 JUMPIF                           R13 ; [+8]
       61 GETTABLEKS                       R15 R12 K2 ["Name"]
       63 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       65 MOVE                             R14 R7
       66 GETIMPORT                        R13 K5 [table.insert]
       68 CALL                             R13 2 0
       69 FORGLOOP                         R8 2 ; [-26]
       71 LENGTH                           R8 R7
       72 LOADN                            R9 0
       73 JUMPIFNOTLT                      R9 R8 ; [+10]
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R10 R10 K6 ["RIG_ERRORS"]
       78 GETTABLEKS                       R10 R10 K12 ["FaceControlsParent"]
       80 MOVE                             R11 R7
       81 NAMECALL                         R8 R4 K4 ["insert"]
       83 CALL                             R8 3 0
       84 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearCache"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["new"]
        7 CALL                             R1 0 1
        8 NEWTABLE                         R2 0 9
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 GETUPVAL                         R5 4
       13 GETUPVAL                         R6 5
       14 GETUPVAL                         R7 6
       15 GETUPVAL                         R8 7
       16 GETUPVAL                         R9 8
       17 GETUPVAL                         R10 9
       18 GETUPVAL                         R11 10
       19 SETLIST                          R2 R3 9 [1]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["getMotors"]
       24 MOVE                             R4 R0
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K3 ["getBones"]
       29 MOVE                             R5 R0
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K4 ["getAnimationConstraints"]
       34 MOVE                             R6 R0
       35 CALL                             R5 1 1
       36 MOVE                             R6 R2
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 MOVE                             R11 R10
       41 MOVE                             R12 R0
       42 MOVE                             R13 R3
       43 MOVE                             R14 R5
       44 MOVE                             R15 R4
       45 CALL                             R11 4 1
       46 MOVE                             R14 R11
       47 NAMECALL                         R12 R1 K5 ["append"]
       49 CALL                             R12 2 0
       50 NAMECALL                         R12 R11 K6 ["hasErrors"]
       52 CALL                             R12 1 1
       53 JUMPIF                           R12 ; [+2]
       54 FORGLOOP                         R6 2 ; [-15]
       56 NAMECALL                         R6 R1 K7 ["sort"]
       58 CALL                             R6 1 0
       59 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Dash"]
       16 GETTABLEKS                       R3 R2 K9 ["keys"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["RigInfo"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Util"]
       33 GETTABLEKS                       R6 R6 K13 ["Constants"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K11 ["Util"]
       42 GETTABLEKS                       R7 R7 K14 ["ValidationResult"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K15 ["LuaFlags"]
       49 GETTABLEKS                       R8 R8 K16 ["GetFFlagRootMotion"]
       51 CALL                             R7 1 1
       52 NEWTABLE                         R8 1 0
       54 DUPCLOSURE                       R9 K17 [PROTO_1]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R10 K18 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R11 K19 [PROTO_4]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 DUPCLOSURE                       R12 K20 [PROTO_6]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 DUPCLOSURE                       R13 K21 [PROTO_7]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 DUPCLOSURE                       R14 K22 [PROTO_9]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R15 K23 [PROTO_10]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 DUPCLOSURE                       R16 K24 [PROTO_11]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 DUPCLOSURE                       R17 K25 [PROTO_12]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 DUPCLOSURE                       R18 K26 [PROTO_13]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R17
      104 SETTABLEKS                       R18 R8 K27 ["validate"]
      106 RETURN                           R8 1
