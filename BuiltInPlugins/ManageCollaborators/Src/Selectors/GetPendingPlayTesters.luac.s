PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["PendingPlayTesters"]
        3 JUMPIF                           R1 ; [+2]
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R1 K1 ["CurrentPlayTesters"]
        8 JUMPIF                           R2 ; [+2]
        9 NEWTABLE                         R2 0 0
       11 GETTABLEKS                       R4 R1 K2 ["NewPlayTesters"]
       13 OR                               R3 R4 R2
       14 NEWTABLE                         R4 0 0
       16 NEWTABLE                         R5 0 0
       18 GETIMPORT                        R6 K4 [pairs]
       20 MOVE                             R7 R2
       21 CALL                             R6 1 3
       22 FORGPREP_NEXT                    R6
       23 SETTABLE                         R10 R5 R9
       24 FORGLOOP                         R6 2 ; [-2]
       26 GETIMPORT                        R6 K4 [pairs]
       28 MOVE                             R7 R3
       29 CALL                             R6 1 3
       30 FORGPREP_NEXT                    R6
       31 SETTABLE                         R10 R5 R9
       32 FORGLOOP                         R6 2 ; [-2]
       34 GETTABLEKS                       R7 R0 K5 ["Permissions"]
       36 GETTABLEKS                       R7 R7 K6 ["CurrentPermissions"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K7 ["UserSubjectKey"]
       41 GETTABLE                         R6 R7 R8
       42 JUMPIF                           R6 ; [+2]
       43 NEWTABLE                         R6 0 0
       45 GETTABLEKS                       R7 R0 K5 ["Permissions"]
       47 GETTABLEKS                       R7 R7 K8 ["NewPermissions"]
       49 JUMPIF                           R7 ; [+4]
       50 GETTABLEKS                       R7 R0 K5 ["Permissions"]
       52 GETTABLEKS                       R7 R7 K6 ["CurrentPermissions"]
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K7 ["UserSubjectKey"]
       57 GETTABLE                         R8 R7 R9
       58 JUMPIF                           R8 ; [+2]
       59 NEWTABLE                         R8 0 0
       61 GETIMPORT                        R9 K4 [pairs]
       63 MOVE                             R10 R6
       64 CALL                             R9 1 3
       65 FORGPREP_NEXT                    R9
       66 GETTABLE                         R14 R5 R12
       67 JUMPIF                           R14 ; [+9]
       68 DUPTABLE                         R14 K11 [{"Name", "Id"}]
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K12 ["SubjectNameKey"]
       72 GETTABLE                         R15 R13 R16
       73 SETTABLEKS                       R15 R14 K9 ["Name"]
       75 SETTABLEKS                       R12 R14 K10 ["Id"]
       77 SETTABLE                         R14 R5 R12
       78 FORGLOOP                         R9 2 ; [-13]
       80 GETIMPORT                        R9 K4 [pairs]
       82 MOVE                             R10 R8
       83 CALL                             R9 1 3
       84 FORGPREP_NEXT                    R9
       85 GETTABLE                         R14 R5 R12
       86 JUMPIF                           R14 ; [+9]
       87 DUPTABLE                         R14 K11 [{"Name", "Id"}]
       88 GETUPVAL                         R16 0
       89 GETTABLEKS                       R16 R16 K12 ["SubjectNameKey"]
       91 GETTABLE                         R15 R13 R16
       92 SETTABLEKS                       R15 R14 K9 ["Name"]
       94 SETTABLEKS                       R12 R14 K10 ["Id"]
       96 SETTABLE                         R14 R5 R12
       97 FORGLOOP                         R9 2 ; [-13]
       99 GETIMPORT                        R9 K4 [pairs]
      101 MOVE                             R10 R5
      102 CALL                             R9 1 3
      103 FORGPREP_NEXT                    R9
      104 GETUPVAL                         R14 1
      105 MOVE                             R15 R0
      106 MOVE                             R16 R12
      107 CALL                             R14 2 2
      108 OR                               R16 R14 R15
      109 GETUPVAL                         R17 0
      110 GETTABLEKS                       R17 R17 K13 ["PlayTestKey"]
      112 JUMPIFNOTEQ                      R16 R17 ; [+16]
      114 JUMPIFEQKNIL                     R15 ; [+14]
      116 DUPTABLE                         R19 K11 [{"Name", "Id"}]
      117 GETTABLEKS                       R20 R13 K9 ["Name"]
      119 SETTABLEKS                       R20 R19 K9 ["Name"]
      121 SETTABLEKS                       R12 R19 K10 ["Id"]
      123 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
      125 MOVE                             R18 R4
      126 GETIMPORT                        R17 K16 [table.insert]
      128 CALL                             R17 2 0
      129 FORGLOOP                         R9 2 ; [-26]
      131 GETIMPORT                        R9 K18 [table.sort]
      133 MOVE                             R10 R4
      134 DUPCLOSURE                       R11 K19 [PROTO_0]
      135 CALL                             R9 2 0
      136 NEWTABLE                         R9 0 0
      138 GETIMPORT                        R10 K21 [ipairs]
      140 MOVE                             R11 R4
      141 CALL                             R10 1 3
      142 FORGPREP_INEXT                   R10
      143 GETTABLEKS                       R17 R14 K10 ["Id"]
      145 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      147 MOVE                             R16 R9
      148 GETIMPORT                        R15 K16 [table.insert]
      150 CALL                             R15 2 0
      151 FORGLOOP                         R10 2 [inext] ; [-9]
      153 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Selectors"]
       24 GETTABLEKS                       R3 R3 K9 ["GetAudienceRole"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
