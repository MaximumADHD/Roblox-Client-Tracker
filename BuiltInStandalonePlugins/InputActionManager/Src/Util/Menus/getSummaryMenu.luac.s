PROTO_0:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 JUMPIFNOT                        R6 ; [+4]
        3 NOT                              R5 R2
        4 JUMPIF                           R5 ; [+3]
        5 NOT                              R5 R3
        6 JUMP                             ; [+1]
        7 LOADNIL                          R5
        8 NEWTABLE                         R6 0 3
       10 DUPTABLE                         R7 K3 [{"id", "isDisabled", "text"}]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K4 ["RENAME"]
       14 SETTABLEKS                       R8 R7 K0 ["id"]
       16 SETTABLEKS                       R5 R7 K1 ["isDisabled"]
       18 LOADK                            R10 K5 ["Menu"]
       19 LOADK                            R11 K6 ["Rename"]
       20 NAMECALL                         R8 R0 K7 ["getText"]
       22 CALL                             R8 3 1
       23 SETTABLEKS                       R8 R7 K2 ["text"]
       25 DUPTABLE                         R8 K3 [{"id", "isDisabled", "text"}]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K8 ["DUPLICATE"]
       29 SETTABLEKS                       R9 R8 K0 ["id"]
       31 SETTABLEKS                       R5 R8 K1 ["isDisabled"]
       33 LOADK                            R11 K5 ["Menu"]
       34 LOADK                            R12 K9 ["Duplicate"]
       35 NAMECALL                         R9 R0 K7 ["getText"]
       37 CALL                             R9 3 1
       38 SETTABLEKS                       R9 R8 K2 ["text"]
       40 DUPTABLE                         R9 K3 [{"id", "isDisabled", "text"}]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K10 ["DELETE"]
       44 SETTABLEKS                       R10 R9 K0 ["id"]
       46 GETUPVAL                         R10 0
       47 CALL                             R10 0 1
       48 JUMPIFNOT                        R10 ; [+1]
       49 NOT                              R10 R3
       50 SETTABLEKS                       R10 R9 K1 ["isDisabled"]
       52 LOADK                            R12 K5 ["Menu"]
       53 LOADK                            R13 K11 ["Delete"]
       54 NAMECALL                         R10 R0 K7 ["getText"]
       56 CALL                             R10 3 1
       57 SETTABLEKS                       R10 R9 K2 ["text"]
       59 SETLIST                          R6 R7 3 [1]
       61 NEWTABLE                         R7 0 1
       63 DUPTABLE                         R8 K13 [{"id", "isChecked", "isDisabled", "text"}]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K14 ["ENABLED"]
       67 SETTABLEKS                       R9 R8 K0 ["id"]
       69 SETTABLEKS                       R2 R8 K12 ["isChecked"]
       71 NOT                              R9 R3
       72 SETTABLEKS                       R9 R8 K1 ["isDisabled"]
       74 LOADK                            R11 K5 ["Menu"]
       75 LOADK                            R12 K15 ["Enabled"]
       76 NAMECALL                         R9 R0 K7 ["getText"]
       78 CALL                             R9 3 1
       79 SETTABLEKS                       R9 R8 K2 ["text"]
       81 SETLIST                          R7 R8 1 [1]
       83 GETUPVAL                         R8 2
       84 MOVE                             R9 R0
       85 MOVE                             R10 R4
       86 MOVE                             R11 R3
       87 CALL                             R8 3 1
       88 JUMPIFNOT                        R8 ; [+7]
       89 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
       91 MOVE                             R10 R7
       92 MOVE                             R11 R8
       93 GETIMPORT                        R9 K18 [table.insert]
       95 CALL                             R9 2 0
       96 GETUPVAL                         R11 0
       97 CALL                             R11 0 1
       98 JUMPIFNOT                        R11 ; [+2]
       99 MOVE                             R10 R7
      100 JUMP                             ; [+1]
      101 MOVE                             R10 R6
      102 DUPTABLE                         R11 K20 [{"id", "isDisabled", "text", "items"}]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R12 R12 K21 ["CHANGE_ACTION_TYPE"]
      106 SETTABLEKS                       R12 R11 K0 ["id"]
      108 SETTABLEKS                       R5 R11 K1 ["isDisabled"]
      110 LOADK                            R14 K5 ["Menu"]
      111 LOADK                            R15 K22 ["ChangeActionType"]
      112 NAMECALL                         R12 R0 K7 ["getText"]
      114 CALL                             R12 3 1
      115 SETTABLEKS                       R12 R11 K2 ["text"]
      117 GETUPVAL                         R12 3
      118 MOVE                             R13 R1
      119 CALL                             R12 1 1
      120 SETTABLEKS                       R12 R11 K19 ["items"]
      122 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      124 GETIMPORT                        R9 K18 [table.insert]
      126 CALL                             R9 2 0
      127 GETUPVAL                         R9 0
      128 CALL                             R9 0 1
      129 JUMPIF                           R9 ; [+1]
      130 RETURN                           R6 1
      131 NEWTABLE                         R9 0 2
      133 DUPTABLE                         R10 K23 [{"items"}]
      134 SETTABLEKS                       R6 R10 K19 ["items"]
      136 DUPTABLE                         R11 K23 [{"items"}]
      137 SETTABLEKS                       R7 R11 K19 ["items"]
      139 SETLIST                          R9 R10 2 [1]
      141 RETURN                           R9 1

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
       49 GETTABLEKS                       R6 R6 K14 ["Constants"]
       51 GETTABLEKS                       R6 R6 K15 ["MenuIdentifiers"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R0 K8 ["Src"]
       56 GETTABLEKS                       R6 R6 K16 ["Flags"]
       58 GETIMPORT                        R7 K5 [require]
       60 GETTABLEKS                       R8 R6 K17 ["getFFlagIAMBooleanProperties"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K18 [PROTO_0]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 RETURN                           R8 1
