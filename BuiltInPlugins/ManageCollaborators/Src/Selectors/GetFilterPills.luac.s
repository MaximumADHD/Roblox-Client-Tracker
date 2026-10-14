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
       49 JUMPIFNOT                        R5 ; [+29]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K10 ["fflagCollabPV2GroupMigration"]
       53 JUMPIFNOT                        R5 ; [+25]
       54 GETUPVAL                         R5 2
       55 MOVE                             R6 R0
       56 CALL                             R5 1 1
       57 JUMPIFNOT                        R5 ; [+21]
       58 LOADB                            R5 0
       59 GETUPVAL                         R6 3
       60 MOVE                             R7 R0
       61 CALL                             R6 1 1
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R7 R7 K11 ["MIGRATED"]
       65 JUMPIFNOTEQ                      R6 R7 ; [+13]
       67 GETUPVAL                         R6 5
       68 NAMECALL                         R6 R6 K12 ["GetUserId"]
       70 CALL                             R6 1 1
       71 GETTABLEKS                       R7 R0 K13 ["GameOwnerMetadata"]
       73 GETTABLEKS                       R7 R7 K14 ["groupOwnerId"]
       75 JUMPIFEQ                         R6 R7 ; [+2]
       77 LOADB                            R5 0 +1
       78 LOADB                            R5 1
       79 NEWTABLE                         R6 0 0
       81 JUMPIF                           R5 ; [+39]
       82 GETIMPORT                        R7 K16 [next]
       84 MOVE                             R8 R4
       85 CALL                             R7 1 1
       86 JUMPIFNOTEQKNIL                  R7 ; [+13]
       88 GETIMPORT                        R7 K16 [next]
       90 MOVE                             R8 R3
       91 CALL                             R7 1 1
       92 JUMPIFNOTEQKNIL                  R7 ; [+7]
       94 GETIMPORT                        R7 K16 [next]
       96 MOVE                             R8 R2
       97 CALL                             R7 1 1
       98 JUMPIFEQKNIL                     R7 ; [+22]
      100 DUPTABLE                         R9 K20 [{["key"] = "All", ["filters"]}]
      101 NEWTABLE                         R10 2 0
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K8 ["UserSubjectKey"]
      106 LOADB                            R12 1
      107 SETTABLE                         R12 R10 R11
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R11 R11 K21 ["RoleSubjectKey"]
      111 LOADB                            R12 1
      112 SETTABLE                         R12 R10 R11
      113 SETTABLEKS                       R10 R9 K19 ["filters"]
      115 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      117 MOVE                             R8 R6
      118 GETIMPORT                        R7 K24 [table.insert]
      120 CALL                             R7 2 0
      121 JUMPIF                           R5 ; [+22]
      122 GETIMPORT                        R7 K16 [next]
      124 MOVE                             R8 R4
      125 CALL                             R7 1 1
      126 JUMPIFEQKNIL                     R7 ; [+17]
      128 DUPTABLE                         R9 K26 [{["key"] = "Creators", ["filters"]}]
      129 NEWTABLE                         R10 1 0
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R11 R11 K8 ["UserSubjectKey"]
      134 LOADB                            R12 1
      135 SETTABLE                         R12 R10 R11
      136 SETTABLEKS                       R10 R9 K19 ["filters"]
      138 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      140 MOVE                             R8 R6
      141 GETIMPORT                        R7 K24 [table.insert]
      143 CALL                             R7 2 0
      144 GETIMPORT                        R7 K16 [next]
      146 MOVE                             R8 R3
      147 CALL                             R7 1 1
      148 JUMPIFNOTEQKNIL                  R7 ; [+7]
      150 GETIMPORT                        R7 K16 [next]
      152 MOVE                             R8 R2
      153 CALL                             R7 1 1
      154 JUMPIFEQKNIL                     R7 ; [+17]
      156 DUPTABLE                         R9 K28 [{["key"] = "Roles", ["filters"]}]
      157 NEWTABLE                         R10 1 0
      159 GETUPVAL                         R11 0
      160 GETTABLEKS                       R11 R11 K21 ["RoleSubjectKey"]
      162 LOADB                            R12 1
      163 SETTABLE                         R12 R10 R11
      164 SETTABLEKS                       R10 R9 K19 ["filters"]
      166 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      168 MOVE                             R8 R6
      169 GETIMPORT                        R7 K24 [table.insert]
      171 CALL                             R7 2 0
      172 JUMPIFNOT                        R5 ; [+11]
      173 DUPTABLE                         R9 K30 [{["key"] = "EarlyTesters", ["filters"]}]
      174 NEWTABLE                         R10 0 0
      176 SETTABLEKS                       R10 R9 K19 ["filters"]
      178 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      180 MOVE                             R8 R6
      181 GETIMPORT                        R7 K24 [table.insert]
      183 CALL                             R7 2 0
      184 JUMPIFNOT                        R5 ; [+16]
      185 DUPTABLE                         R9 K26 [{["key"] = "Creators", ["filters"]}]
      186 NEWTABLE                         R10 1 0
      188 GETUPVAL                         R11 0
      189 GETTABLEKS                       R11 R11 K8 ["UserSubjectKey"]
      191 LOADB                            R12 1
      192 SETTABLE                         R12 R10 R11
      193 SETTABLEKS                       R10 R9 K19 ["filters"]
      195 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      197 MOVE                             R8 R6
      198 GETIMPORT                        R7 K24 [table.insert]
      200 CALL                             R7 2 0
      201 RETURN                           R6 1

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
       29 GETTABLEKS                       R4 R4 K6 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["MigrationStatus"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Selectors"]
       40 GETTABLEKS                       R5 R5 K12 ["GetMigrationStatus"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K5 ["Src"]
       47 GETTABLEKS                       R6 R6 K11 ["Selectors"]
       49 GETTABLEKS                       R6 R6 K13 ["IsGroupGame"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K15 [game]
       54 LOADK                            R8 K16 ["StudioService"]
       55 NAMECALL                         R6 R6 K17 ["GetService"]
       57 CALL                             R6 2 1
       58 DUPCLOSURE                       R7 K18 [PROTO_0]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 RETURN                           R7 1
