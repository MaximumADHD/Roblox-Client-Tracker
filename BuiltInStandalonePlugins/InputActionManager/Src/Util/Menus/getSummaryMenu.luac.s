PROTO_0:
        0 NOT                              R5 R2
        1 JUMPIF                           R5 ; [+1]
        2 NOT                              R5 R3
        3 NEWTABLE                         R6 0 3
        5 DUPTABLE                         R7 K4 [{"icon", "id", "isDisabled", "text"}]
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K5 ["Pencil"]
        9 SETTABLEKS                       R8 R7 K0 ["icon"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K6 ["RENAME"]
       14 SETTABLEKS                       R8 R7 K1 ["id"]
       16 SETTABLEKS                       R5 R7 K2 ["isDisabled"]
       18 LOADK                            R10 K7 ["Menu"]
       19 LOADK                            R11 K8 ["Rename"]
       20 NAMECALL                         R8 R0 K9 ["getText"]
       22 CALL                             R8 3 1
       23 SETTABLEKS                       R8 R7 K3 ["text"]
       25 DUPTABLE                         R8 K4 [{"icon", "id", "isDisabled", "text"}]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K10 ["SquareCornerLine"]
       29 SETTABLEKS                       R9 R8 K0 ["icon"]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K11 ["DUPLICATE"]
       34 SETTABLEKS                       R9 R8 K1 ["id"]
       36 SETTABLEKS                       R5 R8 K2 ["isDisabled"]
       38 LOADK                            R11 K7 ["Menu"]
       39 LOADK                            R12 K12 ["Duplicate"]
       40 NAMECALL                         R9 R0 K9 ["getText"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K3 ["text"]
       45 DUPTABLE                         R9 K4 [{"icon", "id", "isDisabled", "text"}]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K13 ["TrashCan"]
       49 SETTABLEKS                       R10 R9 K0 ["icon"]
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K14 ["DELETE"]
       54 SETTABLEKS                       R10 R9 K1 ["id"]
       56 NOT                              R10 R3
       57 SETTABLEKS                       R10 R9 K2 ["isDisabled"]
       59 LOADK                            R12 K7 ["Menu"]
       60 LOADK                            R13 K15 ["Delete"]
       61 NAMECALL                         R10 R0 K9 ["getText"]
       63 CALL                             R10 3 1
       64 SETTABLEKS                       R10 R9 K3 ["text"]
       66 SETLIST                          R6 R7 3 [1]
       68 DUPTABLE                         R9 K16 [{"icon", "id", "text"}]
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K17 ["LocationPin"]
       72 SETTABLEKS                       R10 R9 K0 ["icon"]
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K18 ["SHOW_IN_EXPLORER"]
       77 SETTABLEKS                       R10 R9 K1 ["id"]
       79 LOADK                            R12 K7 ["Menu"]
       80 LOADK                            R13 K19 ["ShowInExplorer"]
       81 NAMECALL                         R10 R0 K9 ["getText"]
       83 CALL                             R10 3 1
       84 SETTABLEKS                       R10 R9 K3 ["text"]
       86 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       88 MOVE                             R8 R6
       89 GETIMPORT                        R7 K22 [table.insert]
       91 CALL                             R7 2 0
       92 NEWTABLE                         R7 0 1
       94 DUPTABLE                         R8 K4 [{"icon", "id", "isDisabled", "text"}]
       95 GETUPVAL                         R9 2
       96 MOVE                             R10 R2
       97 CALL                             R9 1 1
       98 SETTABLEKS                       R9 R8 K0 ["icon"]
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K23 ["ENABLED"]
      103 SETTABLEKS                       R9 R8 K1 ["id"]
      105 NOT                              R9 R3
      106 SETTABLEKS                       R9 R8 K2 ["isDisabled"]
      108 LOADK                            R11 K7 ["Menu"]
      109 LOADK                            R12 K24 ["Enabled"]
      110 NAMECALL                         R9 R0 K9 ["getText"]
      112 CALL                             R9 3 1
      113 SETTABLEKS                       R9 R8 K3 ["text"]
      115 SETLIST                          R7 R8 1 [1]
      117 GETUPVAL                         R8 3
      118 MOVE                             R9 R0
      119 MOVE                             R10 R4
      120 MOVE                             R11 R3
      121 CALL                             R8 3 1
      122 JUMPIFNOT                        R8 ; [+7]
      123 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
      125 MOVE                             R10 R7
      126 MOVE                             R11 R8
      127 GETIMPORT                        R9 K22 [table.insert]
      129 CALL                             R9 2 0
      130 DUPTABLE                         R11 K26 [{"id", "isDisabled", "text", "items"}]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K27 ["CHANGE_ACTION_TYPE"]
      134 SETTABLEKS                       R12 R11 K1 ["id"]
      136 SETTABLEKS                       R5 R11 K2 ["isDisabled"]
      138 LOADK                            R14 K7 ["Menu"]
      139 LOADK                            R15 K28 ["ChangeActionType"]
      140 NAMECALL                         R12 R0 K9 ["getText"]
      142 CALL                             R12 3 1
      143 SETTABLEKS                       R12 R11 K3 ["text"]
      145 GETUPVAL                         R12 4
      146 MOVE                             R13 R1
      147 CALL                             R12 1 1
      148 SETTABLEKS                       R12 R11 K25 ["items"]
      150 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      152 MOVE                             R10 R7
      153 GETIMPORT                        R9 K22 [table.insert]
      155 CALL                             R9 2 0
      156 NEWTABLE                         R9 0 2
      158 DUPTABLE                         R10 K29 [{"items"}]
      159 SETTABLEKS                       R6 R10 K25 ["items"]
      161 DUPTABLE                         R11 K29 [{"items"}]
      162 SETTABLEKS                       R7 R11 K25 ["items"]
      164 SETLIST                          R9 R10 2 [1]
      166 RETURN                           R9 1

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
       63 GETTABLEKS                       R7 R1 K17 ["Enums"]
       65 GETTABLEKS                       R7 R7 K18 ["IconName"]
       67 DUPCLOSURE                       R8 K19 [PROTO_0]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 RETURN                           R8 1
