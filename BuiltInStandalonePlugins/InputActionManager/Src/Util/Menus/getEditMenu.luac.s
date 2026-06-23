PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 JUMPIFEQKNIL                     R1 ; [+112]
        4 DUPTABLE                         R7 K3 [{"icon", "id", "text"}]
        5 LOADK                            R8 K4 ["pencil"]
        6 SETTABLEKS                       R8 R7 K0 ["icon"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K5 ["RENAME"]
       11 SETTABLEKS                       R8 R7 K1 ["id"]
       13 LOADK                            R10 K6 ["Menu"]
       14 LOADK                            R11 K7 ["Rename"]
       15 NAMECALL                         R8 R0 K8 ["getText"]
       17 CALL                             R8 3 1
       18 SETTABLEKS                       R8 R7 K2 ["text"]
       20 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       22 MOVE                             R6 R4
       23 GETIMPORT                        R5 K11 [table.insert]
       25 CALL                             R5 2 0
       26 DUPTABLE                         R7 K3 [{"icon", "id", "text"}]
       27 LOADK                            R8 K12 ["trash-can"]
       28 SETTABLEKS                       R8 R7 K0 ["icon"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K13 ["DELETE"]
       33 SETTABLEKS                       R8 R7 K1 ["id"]
       35 LOADK                            R10 K6 ["Menu"]
       36 LOADK                            R11 K14 ["Delete"]
       37 NAMECALL                         R8 R0 K8 ["getText"]
       39 CALL                             R8 3 1
       40 SETTABLEKS                       R8 R7 K2 ["text"]
       42 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K11 [table.insert]
       47 CALL                             R5 2 0
       48 DUPTABLE                         R7 K16 [{"id", "text", "items"}]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K17 ["CHANGE_ACTION_TYPE"]
       52 SETTABLEKS                       R8 R7 K1 ["id"]
       54 LOADK                            R10 K6 ["Menu"]
       55 LOADK                            R11 K18 ["ChangeActionType"]
       56 NAMECALL                         R8 R0 K8 ["getText"]
       58 CALL                             R8 3 1
       59 SETTABLEKS                       R8 R7 K2 ["text"]
       61 GETUPVAL                         R8 1
       62 MOVE                             R9 R1
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K15 ["items"]
       66 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       68 MOVE                             R6 R4
       69 GETIMPORT                        R5 K11 [table.insert]
       71 CALL                             R5 2 0
       72 JUMPIFNOTEQKS                    R3 K19 ["Keycode"] ; [+20]
       74 DUPTABLE                         R7 K20 [{"id", "text"}]
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R8 R8 K21 ["ROW_USE_COMPOSITE"]
       78 SETTABLEKS                       R8 R7 K1 ["id"]
       80 LOADK                            R10 K6 ["Menu"]
       81 LOADK                            R11 K22 ["UseComposite"]
       82 NAMECALL                         R8 R0 K8 ["getText"]
       84 CALL                             R8 3 1
       85 SETTABLEKS                       R8 R7 K2 ["text"]
       87 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       89 MOVE                             R6 R4
       90 GETIMPORT                        R5 K11 [table.insert]
       92 CALL                             R5 2 0
       93 JUMPIFNOTEQKS                    R3 K23 ["Composite"] ; [+43]
       95 DUPTABLE                         R7 K20 [{"id", "text"}]
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R8 R8 K24 ["ROW_USE_KEYCODE"]
       99 SETTABLEKS                       R8 R7 K1 ["id"]
      101 LOADK                            R10 K6 ["Menu"]
      102 LOADK                            R11 K25 ["UseKeycode"]
      103 NAMECALL                         R8 R0 K8 ["getText"]
      105 CALL                             R8 3 1
      106 SETTABLEKS                       R8 R7 K2 ["text"]
      108 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      110 MOVE                             R6 R4
      111 GETIMPORT                        R5 K11 [table.insert]
      113 CALL                             R5 2 0
      114 JUMP                             ; [+22]
      115 DUPTABLE                         R7 K3 [{"icon", "id", "text"}]
      116 LOADK                            R8 K12 ["trash-can"]
      117 SETTABLEKS                       R8 R7 K0 ["icon"]
      119 GETUPVAL                         R8 0
      120 GETTABLEKS                       R8 R8 K13 ["DELETE"]
      122 SETTABLEKS                       R8 R7 K1 ["id"]
      124 LOADK                            R10 K6 ["Menu"]
      125 LOADK                            R11 K14 ["Delete"]
      126 NAMECALL                         R8 R0 K8 ["getText"]
      128 CALL                             R8 3 1
      129 SETTABLEKS                       R8 R7 K2 ["text"]
      131 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      133 MOVE                             R6 R4
      134 GETIMPORT                        R5 K11 [table.insert]
      136 CALL                             R5 2 0
      137 GETUPVAL                         R5 2
      138 MOVE                             R6 R2
      139 CALL                             R5 1 1
      140 JUMPIFNOT                        R5 ; [+24]
      141 GETUPVAL                         R6 3
      142 MOVE                             R7 R2
      143 CALL                             R6 1 1
      144 JUMPIF                           R6 ; [+20]
      145 DUPTABLE                         R8 K20 [{"id", "text"}]
      146 GETUPVAL                         R9 0
      147 GETTABLEKS                       R9 R9 K26 ["ROW_ADD_PRIMARY_MODIFIER"]
      149 SETTABLEKS                       R9 R8 K1 ["id"]
      151 LOADK                            R11 K6 ["Menu"]
      152 LOADK                            R12 K27 ["AddPrimaryModifier"]
      153 NAMECALL                         R9 R0 K8 ["getText"]
      155 CALL                             R9 3 1
      156 SETTABLEKS                       R9 R8 K2 ["text"]
      158 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      160 MOVE                             R7 R4
      161 GETIMPORT                        R6 K11 [table.insert]
      163 CALL                             R6 2 0
      164 RETURN                           R4 1
      165 GETUPVAL                         R6 3
      166 MOVE                             R7 R2
      167 CALL                             R6 1 1
      168 JUMPIFNOT                        R6 ; [+23]
      169 GETUPVAL                         R6 4
      170 MOVE                             R7 R2
      171 CALL                             R6 1 1
      172 JUMPIF                           R6 ; [+19]
      173 DUPTABLE                         R8 K20 [{"id", "text"}]
      174 GETUPVAL                         R9 0
      175 GETTABLEKS                       R9 R9 K28 ["ROW_ADD_SECONDARY_MODIFIER"]
      177 SETTABLEKS                       R9 R8 K1 ["id"]
      179 LOADK                            R11 K6 ["Menu"]
      180 LOADK                            R12 K29 ["AddSecondaryModifier"]
      181 NAMECALL                         R9 R0 K8 ["getText"]
      183 CALL                             R9 3 1
      184 SETTABLEKS                       R9 R8 K2 ["text"]
      186 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      188 MOVE                             R7 R4
      189 GETIMPORT                        R6 K11 [table.insert]
      191 CALL                             R6 2 0
      192 RETURN                           R4 1

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
       27 GETTABLEKS                       R4 R4 K11 ["Menus"]
       29 GETTABLEKS                       R4 R4 K12 ["getActionTypeMenu"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Constants"]
       40 GETTABLEKS                       R5 R5 K14 ["MenuIdentifiers"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["Binding"]
       51 GETTABLEKS                       R6 R6 K16 ["hasKeycodes"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K15 ["Binding"]
       62 GETTABLEKS                       R7 R7 K17 ["hasPrimaryModifier"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K8 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Util"]
       71 GETTABLEKS                       R8 R8 K15 ["Binding"]
       73 GETTABLEKS                       R8 R8 K18 ["hasSecondaryModifier"]
       75 CALL                             R7 1 1
       76 DUPCLOSURE                       R8 K19 [PROTO_0]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 RETURN                           R8 1
