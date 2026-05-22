PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFEQKNIL                     R0 ; [+92]
        4 DUPTABLE                         R6 K3 [{"icon", "id", "text"}]
        5 LOADK                            R7 K4 ["pencil"]
        6 SETTABLEKS                       R7 R6 K0 ["icon"]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K5 ["RENAME"]
       11 SETTABLEKS                       R7 R6 K1 ["id"]
       13 LOADK                            R7 K6 ["Rename"]
       14 SETTABLEKS                       R7 R6 K2 ["text"]
       16 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       18 MOVE                             R5 R3
       19 GETIMPORT                        R4 K9 [table.insert]
       21 CALL                             R4 2 0
       22 DUPTABLE                         R6 K3 [{"icon", "id", "text"}]
       23 LOADK                            R7 K10 ["trash-can"]
       24 SETTABLEKS                       R7 R6 K0 ["icon"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K11 ["DELETE"]
       29 SETTABLEKS                       R7 R6 K1 ["id"]
       31 LOADK                            R7 K12 ["Delete"]
       32 SETTABLEKS                       R7 R6 K2 ["text"]
       34 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K9 [table.insert]
       39 CALL                             R4 2 0
       40 DUPTABLE                         R6 K14 [{"id", "text", "items"}]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K15 ["CHANGE_ACTION_TYPE"]
       44 SETTABLEKS                       R7 R6 K1 ["id"]
       46 LOADK                            R7 K16 ["Change Action Type"]
       47 SETTABLEKS                       R7 R6 K2 ["text"]
       49 GETUPVAL                         R7 1
       50 MOVE                             R8 R0
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K13 ["items"]
       54 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       56 MOVE                             R5 R3
       57 GETIMPORT                        R4 K9 [table.insert]
       59 CALL                             R4 2 0
       60 JUMPIFNOTEQKS                    R2 K17 ["KeyCode"] ; [+16]
       62 DUPTABLE                         R6 K18 [{"id", "text"}]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K19 ["ROW_USE_COMPOUND_DIRECTION"]
       66 SETTABLEKS                       R7 R6 K1 ["id"]
       68 LOADK                            R7 K20 ["Use Compound Direction"]
       69 SETTABLEKS                       R7 R6 K2 ["text"]
       71 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       73 MOVE                             R5 R3
       74 GETIMPORT                        R4 K9 [table.insert]
       76 CALL                             R4 2 0
       77 JUMPIFNOTEQKS                    R2 K21 ["CompoundDirection"] ; [+35]
       79 DUPTABLE                         R6 K18 [{"id", "text"}]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K22 ["ROW_USE_KEY_CODE"]
       83 SETTABLEKS                       R7 R6 K1 ["id"]
       85 LOADK                            R7 K23 ["Use Keycode"]
       86 SETTABLEKS                       R7 R6 K2 ["text"]
       88 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       90 MOVE                             R5 R3
       91 GETIMPORT                        R4 K9 [table.insert]
       93 CALL                             R4 2 0
       94 JUMP                             ; [+18]
       95 DUPTABLE                         R6 K3 [{"icon", "id", "text"}]
       96 LOADK                            R7 K10 ["trash-can"]
       97 SETTABLEKS                       R7 R6 K0 ["icon"]
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R7 R7 K11 ["DELETE"]
      102 SETTABLEKS                       R7 R6 K1 ["id"]
      104 LOADK                            R7 K12 ["Delete"]
      105 SETTABLEKS                       R7 R6 K2 ["text"]
      107 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      109 MOVE                             R5 R3
      110 GETIMPORT                        R4 K9 [table.insert]
      112 CALL                             R4 2 0
      113 GETUPVAL                         R4 2
      114 MOVE                             R5 R1
      115 CALL                             R4 1 1
      116 JUMPIFNOT                        R4 ; [+20]
      117 GETUPVAL                         R5 3
      118 MOVE                             R6 R1
      119 CALL                             R5 1 1
      120 JUMPIF                           R5 ; [+16]
      121 DUPTABLE                         R7 K18 [{"id", "text"}]
      122 GETUPVAL                         R8 0
      123 GETTABLEKS                       R8 R8 K24 ["ROW_ADD_PRIMARY_MODIFIER"]
      125 SETTABLEKS                       R8 R7 K1 ["id"]
      127 LOADK                            R8 K25 ["Add Primary Modifier"]
      128 SETTABLEKS                       R8 R7 K2 ["text"]
      130 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      132 MOVE                             R6 R3
      133 GETIMPORT                        R5 K9 [table.insert]
      135 CALL                             R5 2 0
      136 RETURN                           R3 1
      137 GETUPVAL                         R5 3
      138 MOVE                             R6 R1
      139 CALL                             R5 1 1
      140 JUMPIFNOT                        R5 ; [+19]
      141 GETUPVAL                         R5 4
      142 MOVE                             R6 R1
      143 CALL                             R5 1 1
      144 JUMPIF                           R5 ; [+15]
      145 DUPTABLE                         R7 K18 [{"id", "text"}]
      146 GETUPVAL                         R8 0
      147 GETTABLEKS                       R8 R8 K26 ["ROW_ADD_SECONDARY_MODIFIER"]
      149 SETTABLEKS                       R8 R7 K1 ["id"]
      151 LOADK                            R8 K27 ["Add Secondary Modifier"]
      152 SETTABLEKS                       R8 R7 K2 ["text"]
      154 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      156 MOVE                             R6 R3
      157 GETIMPORT                        R5 K9 [table.insert]
      159 CALL                             R5 2 0
      160 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["getActionTypeMenu"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 GETTABLEKS                       R5 R5 K13 ["MenuIdentifiers"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["hasKeyCodes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K10 ["Util"]
       56 GETTABLEKS                       R7 R7 K15 ["hasPrimaryModifier"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K10 ["Util"]
       65 GETTABLEKS                       R8 R8 K16 ["hasSecondaryModifier"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K17 [PROTO_0]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 RETURN                           R8 1
