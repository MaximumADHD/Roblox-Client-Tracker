PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Permissions"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K1 ["GranularPermissions"]
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["GroupMetadata"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+4]
       12 NEWTABLE                         R1 0 0
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K0 ["Permissions"]
       17 GETTABLEKS                       R1 R1 K3 ["NewPermissions"]
       19 JUMPIF                           R1 ; [+4]
       20 GETTABLEKS                       R1 R0 K0 ["Permissions"]
       22 GETTABLEKS                       R1 R1 K4 ["CurrentPermissions"]
       24 GETTABLEKS                       R2 R0 K2 ["GroupMetadata"]
       26 GETTABLEKS                       R2 R2 K5 ["NewGroupMetadata"]
       28 JUMPIF                           R2 ; [+4]
       29 GETTABLEKS                       R2 R0 K2 ["GroupMetadata"]
       31 GETTABLEKS                       R2 R2 K6 ["CurrentGroupMetadata"]
       33 GETTABLEKS                       R3 R0 K1 ["GranularPermissions"]
       35 GETTABLEKS                       R3 R3 K7 ["RoleIds"]
       37 NEWTABLE                         R4 0 0
       39 GETIMPORT                        R5 K9 [next]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K10 ["UserSubjectKey"]
       44 GETTABLE                         R6 R1 R7
       45 CALL                             R5 1 1
       46 JUMPIFNOTEQKNIL                  R5 ; [+13]
       48 GETIMPORT                        R5 K9 [next]
       50 MOVE                             R6 R3
       51 CALL                             R5 1 1
       52 JUMPIFNOTEQKNIL                  R5 ; [+7]
       54 GETIMPORT                        R5 K9 [next]
       56 MOVE                             R6 R2
       57 CALL                             R5 1 1
       58 JUMPIFEQKNIL                     R5 ; [+25]
       60 DUPTABLE                         R7 K13 [{"key", "filters"}]
       61 LOADK                            R8 K14 ["All"]
       62 SETTABLEKS                       R8 R7 K11 ["key"]
       64 NEWTABLE                         R8 2 0
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K10 ["UserSubjectKey"]
       69 LOADB                            R10 1
       70 SETTABLE                         R10 R8 R9
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K15 ["RoleSubjectKey"]
       74 LOADB                            R10 1
       75 SETTABLE                         R10 R8 R9
       76 SETTABLEKS                       R8 R7 K12 ["filters"]
       78 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       80 MOVE                             R6 R4
       81 GETIMPORT                        R5 K18 [table.insert]
       83 CALL                             R5 2 0
       84 GETIMPORT                        R5 K9 [next]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K10 ["UserSubjectKey"]
       89 GETTABLE                         R6 R1 R7
       90 CALL                             R5 1 1
       91 JUMPIFEQKNIL                     R5 ; [+20]
       93 DUPTABLE                         R7 K13 [{"key", "filters"}]
       94 LOADK                            R8 K19 ["Creators"]
       95 SETTABLEKS                       R8 R7 K11 ["key"]
       97 NEWTABLE                         R8 1 0
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R9 R9 K10 ["UserSubjectKey"]
      102 LOADB                            R10 1
      103 SETTABLE                         R10 R8 R9
      104 SETTABLEKS                       R8 R7 K12 ["filters"]
      106 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      108 MOVE                             R6 R4
      109 GETIMPORT                        R5 K18 [table.insert]
      111 CALL                             R5 2 0
      112 GETIMPORT                        R5 K9 [next]
      114 MOVE                             R6 R3
      115 CALL                             R5 1 1
      116 JUMPIFNOTEQKNIL                  R5 ; [+7]
      118 GETIMPORT                        R5 K9 [next]
      120 MOVE                             R6 R2
      121 CALL                             R5 1 1
      122 JUMPIFEQKNIL                     R5 ; [+20]
      124 DUPTABLE                         R7 K13 [{"key", "filters"}]
      125 LOADK                            R8 K20 ["Roles"]
      126 SETTABLEKS                       R8 R7 K11 ["key"]
      128 NEWTABLE                         R8 1 0
      130 GETUPVAL                         R9 0
      131 GETTABLEKS                       R9 R9 K15 ["RoleSubjectKey"]
      133 LOADB                            R10 1
      134 SETTABLE                         R10 R8 R9
      135 SETTABLEKS                       R8 R7 K12 ["filters"]
      137 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      139 MOVE                             R6 R4
      140 GETIMPORT                        R5 K18 [table.insert]
      142 CALL                             R5 2 0
      143 RETURN                           R4 1

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
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
