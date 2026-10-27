PROTO_0:
        0 NOT                              R5 R2
        1 JUMPIF                           R5 ; [+1]
        2 NOT                              R5 R3
        3 NEWTABLE                         R6 0 3
        5 DUPTABLE                         R7 K4 [{"icon", "id", "isDisabled", "text"}]
        6 GETUPVAL                         R9 0
        7 CALL                             R9 0 1
        8 JUMPIFNOT                        R9 ; [+4]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K5 ["Pencil"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R8
       14 SETTABLEKS                       R8 R7 K0 ["icon"]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K6 ["RENAME"]
       19 SETTABLEKS                       R8 R7 K1 ["id"]
       21 SETTABLEKS                       R5 R7 K2 ["isDisabled"]
       23 LOADK                            R10 K7 ["Menu"]
       24 LOADK                            R11 K8 ["Rename"]
       25 NAMECALL                         R8 R0 K9 ["getText"]
       27 CALL                             R8 3 1
       28 SETTABLEKS                       R8 R7 K3 ["text"]
       30 DUPTABLE                         R8 K4 [{"icon", "id", "isDisabled", "text"}]
       31 GETUPVAL                         R10 0
       32 CALL                             R10 0 1
       33 JUMPIFNOT                        R10 ; [+4]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K10 ["SquareCornerLine"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R9
       39 SETTABLEKS                       R9 R8 K0 ["icon"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K11 ["DUPLICATE"]
       44 SETTABLEKS                       R9 R8 K1 ["id"]
       46 SETTABLEKS                       R5 R8 K2 ["isDisabled"]
       48 LOADK                            R11 K7 ["Menu"]
       49 LOADK                            R12 K12 ["Duplicate"]
       50 NAMECALL                         R9 R0 K9 ["getText"]
       52 CALL                             R9 3 1
       53 SETTABLEKS                       R9 R8 K3 ["text"]
       55 DUPTABLE                         R9 K4 [{"icon", "id", "isDisabled", "text"}]
       56 GETUPVAL                         R11 0
       57 CALL                             R11 0 1
       58 JUMPIFNOT                        R11 ; [+4]
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K13 ["TrashCan"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R10
       64 SETTABLEKS                       R10 R9 K0 ["icon"]
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K14 ["DELETE"]
       69 SETTABLEKS                       R10 R9 K1 ["id"]
       71 NOT                              R10 R3
       72 SETTABLEKS                       R10 R9 K2 ["isDisabled"]
       74 LOADK                            R12 K7 ["Menu"]
       75 LOADK                            R13 K15 ["Delete"]
       76 NAMECALL                         R10 R0 K9 ["getText"]
       78 CALL                             R10 3 1
       79 SETTABLEKS                       R10 R9 K3 ["text"]
       81 SETLIST                          R6 R7 3 [1]
       83 GETUPVAL                         R7 3
       84 CALL                             R7 0 1
       85 JUMPIFNOT                        R7 ; [+24]
       86 DUPTABLE                         R9 K16 [{"icon", "id", "text"}]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K17 ["LocationPin"]
       90 SETTABLEKS                       R10 R9 K0 ["icon"]
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R10 R10 K18 ["SHOW_IN_EXPLORER"]
       95 SETTABLEKS                       R10 R9 K1 ["id"]
       97 LOADK                            R12 K7 ["Menu"]
       98 LOADK                            R13 K19 ["ShowInExplorer"]
       99 NAMECALL                         R10 R0 K9 ["getText"]
      101 CALL                             R10 3 1
      102 SETTABLEKS                       R10 R9 K3 ["text"]
      104 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      106 MOVE                             R8 R6
      107 GETIMPORT                        R7 K22 [table.insert]
      109 CALL                             R7 2 0
      110 NEWTABLE                         R7 0 1
      112 DUPTABLE                         R8 K24 [{"icon", "id", "isChecked", "isDisabled", "text"}]
      113 GETUPVAL                         R10 0
      114 CALL                             R10 0 1
      115 JUMPIFNOT                        R10 ; [+4]
      116 GETUPVAL                         R9 4
      117 MOVE                             R10 R2
      118 CALL                             R9 1 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R9
      121 SETTABLEKS                       R9 R8 K0 ["icon"]
      123 GETUPVAL                         R9 2
      124 GETTABLEKS                       R9 R9 K25 ["ENABLED"]
      126 SETTABLEKS                       R9 R8 K1 ["id"]
      128 GETUPVAL                         R10 0
      129 CALL                             R10 0 1
      130 JUMPIFNOT                        R10 ; [+2]
      131 LOADNIL                          R9
      132 JUMP                             ; [+1]
      133 MOVE                             R9 R2
      134 SETTABLEKS                       R9 R8 K23 ["isChecked"]
      136 NOT                              R9 R3
      137 SETTABLEKS                       R9 R8 K2 ["isDisabled"]
      139 LOADK                            R11 K7 ["Menu"]
      140 LOADK                            R12 K26 ["Enabled"]
      141 NAMECALL                         R9 R0 K9 ["getText"]
      143 CALL                             R9 3 1
      144 SETTABLEKS                       R9 R8 K3 ["text"]
      146 SETLIST                          R7 R8 1 [1]
      148 GETUPVAL                         R8 5
      149 MOVE                             R9 R0
      150 MOVE                             R10 R4
      151 MOVE                             R11 R3
      152 CALL                             R8 3 1
      153 JUMPIFNOT                        R8 ; [+7]
      154 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
      156 MOVE                             R10 R7
      157 MOVE                             R11 R8
      158 GETIMPORT                        R9 K22 [table.insert]
      160 CALL                             R9 2 0
      161 DUPTABLE                         R11 K28 [{"id", "isDisabled", "text", "items"}]
      162 GETUPVAL                         R12 2
      163 GETTABLEKS                       R12 R12 K29 ["CHANGE_ACTION_TYPE"]
      165 SETTABLEKS                       R12 R11 K1 ["id"]
      167 SETTABLEKS                       R5 R11 K2 ["isDisabled"]
      169 LOADK                            R14 K7 ["Menu"]
      170 LOADK                            R15 K30 ["ChangeActionType"]
      171 NAMECALL                         R12 R0 K9 ["getText"]
      173 CALL                             R12 3 1
      174 SETTABLEKS                       R12 R11 K3 ["text"]
      176 GETUPVAL                         R12 6
      177 MOVE                             R13 R1
      178 CALL                             R12 1 1
      179 SETTABLEKS                       R12 R11 K27 ["items"]
      181 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      183 MOVE                             R10 R7
      184 GETIMPORT                        R9 K22 [table.insert]
      186 CALL                             R9 2 0
      187 NEWTABLE                         R9 0 2
      189 DUPTABLE                         R10 K31 [{"items"}]
      190 SETTABLEKS                       R6 R10 K27 ["items"]
      192 DUPTABLE                         R11 K31 [{"items"}]
      193 SETTABLEKS                       R7 R11 K27 ["items"]
      195 SETLIST                          R9 R10 2 [1]
      197 RETURN                           R9 1

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
       38 GETTABLEKS                       R5 R5 K11 ["Menus"]
       40 GETTABLEKS                       R5 R5 K13 ["getScriptableMenu"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K14 ["getIconForBoolean"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["Constants"]
       60 GETTABLEKS                       R7 R7 K16 ["MenuIdentifiers"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R0 K8 ["Src"]
       65 GETTABLEKS                       R7 R7 K17 ["Flags"]
       67 GETIMPORT                        R8 K5 [require]
       69 GETTABLEKS                       R9 R7 K18 ["getFFlagIAMShowInExplorer"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R7 K19 ["getFFlagIAMIconImprovements"]
       76 CALL                             R9 1 1
       77 GETTABLEKS                       R10 R1 K20 ["Enums"]
       79 GETTABLEKS                       R10 R10 K21 ["IconName"]
       81 DUPCLOSURE                       R11 K22 [PROTO_0]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 RETURN                           R11 1
