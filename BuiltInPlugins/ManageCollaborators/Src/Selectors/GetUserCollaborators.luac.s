PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R2 R2 K1 ["NewPermissions"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        7 GETTABLEKS                       R2 R2 K2 ["CurrentPermissions"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["UserSubjectKey"]
       12 GETTABLE                         R3 R2 R4
       13 JUMPIF                           R3 ; [+2]
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R5 R0 K0 ["Permissions"]
       18 GETTABLEKS                       R5 R5 K2 ["CurrentPermissions"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K3 ["UserSubjectKey"]
       23 GETTABLE                         R4 R5 R6
       24 JUMPIF                           R4 ; [+2]
       25 NEWTABLE                         R4 0 0
       27 NEWTABLE                         R5 0 0
       29 GETIMPORT                        R6 K5 [pairs]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 3
       33 FORGPREP_NEXT                    R6
       34 LOADB                            R11 1
       35 SETTABLE                         R11 R5 R9
       36 FORGLOOP                         R6 1 ; [-3]
       38 GETIMPORT                        R6 K5 [pairs]
       40 MOVE                             R7 R3
       41 CALL                             R6 1 3
       42 FORGPREP_NEXT                    R6
       43 LOADB                            R11 1
       44 SETTABLE                         R11 R5 R9
       45 FORGLOOP                         R6 1 ; [-3]
       47 NEWTABLE                         R6 0 0
       49 GETIMPORT                        R7 K5 [pairs]
       51 MOVE                             R8 R5
       52 CALL                             R7 1 3
       53 FORGPREP_NEXT                    R7
       54 GETUPVAL                         R12 1
       55 MOVE                             R13 R0
       56 MOVE                             R14 R10
       57 CALL                             R12 2 2
       58 OR                               R14 R12 R13
       59 GETTABLE                         R15 R3 R10
       60 JUMPIF                           R15 ; [+1]
       61 GETTABLE                         R15 R4 R10
       62 MOVE                             R16 R15
       63 JUMPIFNOT                        R16 ; [+4]
       64 GETUPVAL                         R17 0
       65 GETTABLEKS                       R17 R17 K6 ["SubjectNameKey"]
       67 GETTABLE                         R16 R15 R17
       68 GETUPVAL                         R17 2
       69 MOVE                             R18 R0
       70 MOVE                             R19 R10
       71 CALL                             R17 2 1
       72 JUMPIF                           R17 ; [+22]
       73 JUMPIFEQKNIL                     R13 ; [+21]
       75 GETUPVAL                         R17 0
       76 GETTABLEKS                       R17 R17 K7 ["PlayTestKey"]
       78 JUMPIFEQ                         R13 R17 ; [+16]
       80 JUMPIFEQKNIL                     R1 ; [+3]
       82 JUMPIFNOTEQ                      R14 R1 ; [+12]
       84 DUPTABLE                         R19 K10 [{"Name", "Id"}]
       85 SETTABLEKS                       R16 R19 K8 ["Name"]
       87 SETTABLEKS                       R10 R19 K9 ["Id"]
       89 FASTCALL2                        TABLE_INSERT R6 R19 ; [+4]
       91 MOVE                             R18 R6
       92 GETIMPORT                        R17 K13 [table.insert]
       94 CALL                             R17 2 0
       95 FORGLOOP                         R7 1 ; [-42]
       97 GETIMPORT                        R7 K15 [table.sort]
       99 MOVE                             R8 R6
      100 DUPCLOSURE                       R9 K16 [PROTO_0]
      101 CALL                             R7 2 0
      102 NEWTABLE                         R7 0 0
      104 NEWTABLE                         R8 0 0
      106 GETIMPORT                        R9 K18 [ipairs]
      108 MOVE                             R10 R6
      109 CALL                             R9 1 3
      110 FORGPREP_INEXT                   R9
      111 GETTABLEKS                       R15 R13 K9 ["Id"]
      113 GETTABLE                         R14 R4 R15
      114 JUMPIF                           R14 ; [+8]
      115 GETTABLEKS                       R16 R13 K9 ["Id"]
      117 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
      119 MOVE                             R15 R7
      120 GETIMPORT                        R14 K13 [table.insert]
      122 CALL                             R14 2 0
      123 FORGLOOP                         R9 2 [inext] ; [-13]
      125 GETIMPORT                        R9 K18 [ipairs]
      127 MOVE                             R10 R6
      128 CALL                             R9 1 3
      129 FORGPREP_INEXT                   R9
      130 GETTABLEKS                       R15 R13 K9 ["Id"]
      132 GETTABLE                         R14 R4 R15
      133 JUMPIFNOT                        R14 ; [+8]
      134 GETTABLEKS                       R16 R13 K9 ["Id"]
      136 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      138 MOVE                             R15 R8
      139 GETIMPORT                        R14 K13 [table.insert]
      141 CALL                             R14 2 0
      142 FORGLOOP                         R9 2 [inext] ; [-13]
      144 RETURN                           R7 2

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
       24 GETTABLEKS                       R3 R3 K9 ["IsUserOwner"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Selectors"]
       33 GETTABLEKS                       R4 R4 K10 ["GetAudienceRole"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 RETURN                           R4 1
