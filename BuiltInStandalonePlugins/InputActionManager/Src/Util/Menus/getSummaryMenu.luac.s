PROTO_0:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+4]
        3 NOT                              R4 R2
        4 JUMPIF                           R4 ; [+3]
        5 NOT                              R4 R3
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 NEWTABLE                         R5 0 0
       10 NEWTABLE                         R6 0 0
       12 DUPTABLE                         R9 K3 [{"id", "isDisabled", "text"}]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R10 R10 K4 ["RENAME"]
       16 SETTABLEKS                       R10 R9 K0 ["id"]
       18 SETTABLEKS                       R4 R9 K1 ["isDisabled"]
       20 LOADK                            R12 K5 ["Menu"]
       21 LOADK                            R13 K6 ["Rename"]
       22 NAMECALL                         R10 R0 K7 ["getText"]
       24 CALL                             R10 3 1
       25 SETTABLEKS                       R10 R9 K2 ["text"]
       27 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       29 MOVE                             R8 R5
       30 GETIMPORT                        R7 K10 [table.insert]
       32 CALL                             R7 2 0
       33 GETUPVAL                         R7 2
       34 CALL                             R7 0 1
       35 JUMPIFNOT                        R7 ; [+21]
       36 DUPTABLE                         R9 K3 [{"id", "isDisabled", "text"}]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K11 ["DUPLICATE"]
       40 SETTABLEKS                       R10 R9 K0 ["id"]
       42 SETTABLEKS                       R4 R9 K1 ["isDisabled"]
       44 LOADK                            R12 K5 ["Menu"]
       45 LOADK                            R13 K12 ["Duplicate"]
       46 NAMECALL                         R10 R0 K7 ["getText"]
       48 CALL                             R10 3 1
       49 SETTABLEKS                       R10 R9 K2 ["text"]
       51 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       53 MOVE                             R8 R5
       54 GETIMPORT                        R7 K10 [table.insert]
       56 CALL                             R7 2 0
       57 DUPTABLE                         R9 K3 [{"id", "isDisabled", "text"}]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K13 ["DELETE"]
       61 SETTABLEKS                       R10 R9 K0 ["id"]
       63 GETUPVAL                         R10 0
       64 CALL                             R10 0 1
       65 JUMPIFNOT                        R10 ; [+1]
       66 NOT                              R10 R3
       67 SETTABLEKS                       R10 R9 K1 ["isDisabled"]
       69 LOADK                            R12 K5 ["Menu"]
       70 LOADK                            R13 K14 ["Delete"]
       71 NAMECALL                         R10 R0 K7 ["getText"]
       73 CALL                             R10 3 1
       74 SETTABLEKS                       R10 R9 K2 ["text"]
       76 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       78 MOVE                             R8 R5
       79 GETIMPORT                        R7 K10 [table.insert]
       81 CALL                             R7 2 0
       82 DUPTABLE                         R9 K16 [{"id", "isChecked", "isDisabled", "text"}]
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R10 R10 K17 ["ENABLED"]
       86 SETTABLEKS                       R10 R9 K0 ["id"]
       88 SETTABLEKS                       R2 R9 K15 ["isChecked"]
       90 NOT                              R10 R3
       91 SETTABLEKS                       R10 R9 K1 ["isDisabled"]
       93 LOADK                            R12 K5 ["Menu"]
       94 LOADK                            R13 K18 ["Enabled"]
       95 NAMECALL                         R10 R0 K7 ["getText"]
       97 CALL                             R10 3 1
       98 SETTABLEKS                       R10 R9 K2 ["text"]
      100 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      102 MOVE                             R8 R6
      103 GETIMPORT                        R7 K10 [table.insert]
      105 CALL                             R7 2 0
      106 GETUPVAL                         R9 0
      107 CALL                             R9 0 1
      108 JUMPIFNOT                        R9 ; [+2]
      109 MOVE                             R8 R6
      110 JUMP                             ; [+1]
      111 MOVE                             R8 R5
      112 DUPTABLE                         R9 K20 [{"id", "isDisabled", "text", "items"}]
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R10 R10 K21 ["CHANGE_ACTION_TYPE"]
      116 SETTABLEKS                       R10 R9 K0 ["id"]
      118 SETTABLEKS                       R4 R9 K1 ["isDisabled"]
      120 LOADK                            R12 K5 ["Menu"]
      121 LOADK                            R13 K22 ["ChangeActionType"]
      122 NAMECALL                         R10 R0 K7 ["getText"]
      124 CALL                             R10 3 1
      125 SETTABLEKS                       R10 R9 K2 ["text"]
      127 GETUPVAL                         R10 3
      128 MOVE                             R11 R1
      129 CALL                             R10 1 1
      130 SETTABLEKS                       R10 R9 K19 ["items"]
      132 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      134 GETIMPORT                        R7 K10 [table.insert]
      136 CALL                             R7 2 0
      137 GETUPVAL                         R7 0
      138 CALL                             R7 0 1
      139 JUMPIF                           R7 ; [+1]
      140 RETURN                           R5 1
      141 NEWTABLE                         R7 0 2
      143 DUPTABLE                         R8 K23 [{"items"}]
      144 SETTABLEKS                       R5 R8 K19 ["items"]
      146 DUPTABLE                         R9 K23 [{"items"}]
      147 SETTABLEKS                       R6 R9 K19 ["items"]
      149 SETLIST                          R7 R8 2 [1]
      151 RETURN                           R7 1

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
       43 GETTABLEKS                       R5 R0 K8 ["Src"]
       45 GETTABLEKS                       R5 R5 K15 ["Flags"]
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R5 K16 ["getFFlagIAMBooleanProperties"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R5 K17 ["getFFlagIAMDuplicate"]
       56 CALL                             R7 1 1
       57 DUPCLOSURE                       R8 K18 [PROTO_0]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R3
       62 RETURN                           R8 1
