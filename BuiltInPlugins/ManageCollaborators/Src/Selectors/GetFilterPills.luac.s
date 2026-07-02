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
       58 JUMPIFEQKNIL                     R5 ; [+22]
       60 DUPTABLE                         R7 K14 [{["key"] = "All", ["filters"]}]
       61 NEWTABLE                         R8 2 0
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K10 ["UserSubjectKey"]
       66 LOADB                            R10 1
       67 SETTABLE                         R10 R8 R9
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K15 ["RoleSubjectKey"]
       71 LOADB                            R10 1
       72 SETTABLE                         R10 R8 R9
       73 SETTABLEKS                       R8 R7 K13 ["filters"]
       75 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       77 MOVE                             R6 R4
       78 GETIMPORT                        R5 K18 [table.insert]
       80 CALL                             R5 2 0
       81 GETIMPORT                        R5 K9 [next]
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K10 ["UserSubjectKey"]
       86 GETTABLE                         R6 R1 R7
       87 CALL                             R5 1 1
       88 JUMPIFEQKNIL                     R5 ; [+17]
       90 DUPTABLE                         R7 K20 [{["key"] = "Creators", ["filters"]}]
       91 NEWTABLE                         R8 1 0
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R9 R9 K10 ["UserSubjectKey"]
       96 LOADB                            R10 1
       97 SETTABLE                         R10 R8 R9
       98 SETTABLEKS                       R8 R7 K13 ["filters"]
      100 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      102 MOVE                             R6 R4
      103 GETIMPORT                        R5 K18 [table.insert]
      105 CALL                             R5 2 0
      106 GETIMPORT                        R5 K9 [next]
      108 MOVE                             R6 R3
      109 CALL                             R5 1 1
      110 JUMPIFNOTEQKNIL                  R5 ; [+7]
      112 GETIMPORT                        R5 K9 [next]
      114 MOVE                             R6 R2
      115 CALL                             R5 1 1
      116 JUMPIFEQKNIL                     R5 ; [+17]
      118 DUPTABLE                         R7 K22 [{["key"] = "Roles", ["filters"]}]
      119 NEWTABLE                         R8 1 0
      121 GETUPVAL                         R9 0
      122 GETTABLEKS                       R9 R9 K15 ["RoleSubjectKey"]
      124 LOADB                            R10 1
      125 SETTABLE                         R10 R8 R9
      126 SETTABLEKS                       R8 R7 K13 ["filters"]
      128 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      130 MOVE                             R6 R4
      131 GETIMPORT                        R5 K18 [table.insert]
      133 CALL                             R5 2 0
      134 RETURN                           R4 1

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
