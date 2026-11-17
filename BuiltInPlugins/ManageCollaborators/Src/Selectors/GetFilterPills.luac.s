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
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K8 ["UserSubjectKey"]
       40 GETTABLE                         R4 R1 R5
       41 JUMPIFNOTEQKNIL                  R4 ; [+4]
       43 NEWTABLE                         R5 0 0
       45 RETURN                           R5 1
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K9 ["fflagGroupGameEarlyTesters"]
       49 JUMPIFNOT                        R5 ; [+7]
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R0
       52 CALL                             R5 1 1
       53 JUMPIFNOT                        R5 ; [+3]
       54 GETUPVAL                         R5 3
       55 MOVE                             R6 R0
       56 CALL                             R5 1 1
       57 NEWTABLE                         R6 0 0
       59 JUMPIF                           R5 ; [+39]
       60 GETIMPORT                        R7 K11 [next]
       62 MOVE                             R8 R4
       63 CALL                             R7 1 1
       64 JUMPIFNOTEQKNIL                  R7 ; [+13]
       66 GETIMPORT                        R7 K11 [next]
       68 MOVE                             R8 R3
       69 CALL                             R7 1 1
       70 JUMPIFNOTEQKNIL                  R7 ; [+7]
       72 GETIMPORT                        R7 K11 [next]
       74 MOVE                             R8 R2
       75 CALL                             R7 1 1
       76 JUMPIFEQKNIL                     R7 ; [+22]
       78 DUPTABLE                         R9 K15 [{["key"] = "All", ["filters"]}]
       79 NEWTABLE                         R10 2 0
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K8 ["UserSubjectKey"]
       84 LOADB                            R12 1
       85 SETTABLE                         R12 R10 R11
       86 GETUPVAL                         R11 0
       87 GETTABLEKS                       R11 R11 K16 ["RoleSubjectKey"]
       89 LOADB                            R12 1
       90 SETTABLE                         R12 R10 R11
       91 SETTABLEKS                       R10 R9 K14 ["filters"]
       93 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       95 MOVE                             R8 R6
       96 GETIMPORT                        R7 K19 [table.insert]
       98 CALL                             R7 2 0
       99 JUMPIF                           R5 ; [+22]
      100 GETIMPORT                        R7 K11 [next]
      102 MOVE                             R8 R4
      103 CALL                             R7 1 1
      104 JUMPIFEQKNIL                     R7 ; [+17]
      106 DUPTABLE                         R9 K21 [{["key"] = "Creators", ["filters"]}]
      107 NEWTABLE                         R10 1 0
      109 GETUPVAL                         R11 0
      110 GETTABLEKS                       R11 R11 K8 ["UserSubjectKey"]
      112 LOADB                            R12 1
      113 SETTABLE                         R12 R10 R11
      114 SETTABLEKS                       R10 R9 K14 ["filters"]
      116 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      118 MOVE                             R8 R6
      119 GETIMPORT                        R7 K19 [table.insert]
      121 CALL                             R7 2 0
      122 GETIMPORT                        R7 K11 [next]
      124 MOVE                             R8 R3
      125 CALL                             R7 1 1
      126 JUMPIFNOTEQKNIL                  R7 ; [+7]
      128 GETIMPORT                        R7 K11 [next]
      130 MOVE                             R8 R2
      131 CALL                             R7 1 1
      132 JUMPIFEQKNIL                     R7 ; [+17]
      134 DUPTABLE                         R9 K23 [{["key"] = "Roles", ["filters"]}]
      135 NEWTABLE                         R10 1 0
      137 GETUPVAL                         R11 0
      138 GETTABLEKS                       R11 R11 K16 ["RoleSubjectKey"]
      140 LOADB                            R12 1
      141 SETTABLE                         R12 R10 R11
      142 SETTABLEKS                       R10 R9 K14 ["filters"]
      144 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      146 MOVE                             R8 R6
      147 GETIMPORT                        R7 K19 [table.insert]
      149 CALL                             R7 2 0
      150 JUMPIFNOT                        R5 ; [+11]
      151 DUPTABLE                         R9 K25 [{["key"] = "EarlyTesters", ["filters"]}]
      152 NEWTABLE                         R10 0 0
      154 SETTABLEKS                       R10 R9 K14 ["filters"]
      156 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      158 MOVE                             R8 R6
      159 GETIMPORT                        R7 K19 [table.insert]
      161 CALL                             R7 2 0
      162 JUMPIFNOT                        R5 ; [+16]
      163 DUPTABLE                         R9 K21 [{["key"] = "Creators", ["filters"]}]
      164 NEWTABLE                         R10 1 0
      166 GETUPVAL                         R11 0
      167 GETTABLEKS                       R11 R11 K8 ["UserSubjectKey"]
      169 LOADB                            R12 1
      170 SETTABLE                         R12 R10 R11
      171 SETTABLEKS                       R10 R9 K14 ["filters"]
      173 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      175 MOVE                             R8 R6
      176 GETIMPORT                        R7 K19 [table.insert]
      178 CALL                             R7 2 0
      179 RETURN                           R6 1

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
       20 GETTABLEKS                       R3 R0 K8 ["Bin"]
       22 GETTABLEKS                       R3 R3 K9 ["defineLuaFlags"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Selectors"]
       31 GETTABLEKS                       R4 R4 K11 ["IsGroupGame"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Selectors"]
       40 GETTABLEKS                       R5 R5 K12 ["CanManageEarlyTesters"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 RETURN                           R5 1
