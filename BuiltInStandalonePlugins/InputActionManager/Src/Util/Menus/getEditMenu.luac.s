PROTO_0:
        0 NEWTABLE                         R5 0 0
        2 JUMPIFNOT                        R4 ; [+20]
        3 DUPTABLE                         R8 K2 [{"id", "text"}]
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R9 R9 K3 ["CANCEL"]
        7 SETTABLEKS                       R9 R8 K0 ["id"]
        9 LOADK                            R11 K4 ["Menu"]
       10 LOADK                            R12 K5 ["Cancel"]
       11 NAMECALL                         R9 R0 K6 ["getText"]
       13 CALL                             R9 3 1
       14 SETTABLEKS                       R9 R8 K1 ["text"]
       16 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K9 [table.insert]
       21 CALL                             R6 2 0
       22 RETURN                           R5 1
       23 JUMPIFEQKNIL                     R1 ; [+113]
       25 DUPTABLE                         R8 K12 [{["icon"] = "pencil", [2], ["text"]}]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K13 ["RENAME"]
       29 SETTABLEKS                       R9 R8 K0 ["id"]
       31 LOADK                            R11 K4 ["Menu"]
       32 LOADK                            R12 K14 ["Rename"]
       33 NAMECALL                         R9 R0 K6 ["getText"]
       35 CALL                             R9 3 1
       36 SETTABLEKS                       R9 R8 K1 ["text"]
       38 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R6 K9 [table.insert]
       43 CALL                             R6 2 0
       44 DUPTABLE                         R8 K16 [{["icon"] = "trash-can", [2], ["text"]}]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K17 ["DELETE"]
       48 SETTABLEKS                       R9 R8 K0 ["id"]
       50 LOADK                            R11 K4 ["Menu"]
       51 LOADK                            R12 K18 ["Delete"]
       52 NAMECALL                         R9 R0 K6 ["getText"]
       54 CALL                             R9 3 1
       55 SETTABLEKS                       R9 R8 K1 ["text"]
       57 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       59 MOVE                             R7 R5
       60 GETIMPORT                        R6 K9 [table.insert]
       62 CALL                             R6 2 0
       63 DUPTABLE                         R8 K20 [{"id", "text", "items"}]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K21 ["CHANGE_ACTION_TYPE"]
       67 SETTABLEKS                       R9 R8 K0 ["id"]
       69 LOADK                            R11 K4 ["Menu"]
       70 LOADK                            R12 K22 ["ChangeActionType"]
       71 NAMECALL                         R9 R0 K6 ["getText"]
       73 CALL                             R9 3 1
       74 SETTABLEKS                       R9 R8 K1 ["text"]
       76 GETUPVAL                         R9 1
       77 MOVE                             R10 R1
       78 CALL                             R9 1 1
       79 SETTABLEKS                       R9 R8 K19 ["items"]
       81 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       83 MOVE                             R7 R5
       84 GETIMPORT                        R6 K9 [table.insert]
       86 CALL                             R6 2 0
       87 JUMPIFNOTEQKS                    R3 K23 ["Keycode"] ; [+27]
       89 GETUPVAL                         R6 2
       90 CALL                             R6 0 1
       91 JUMPIFNOT                        R6 ; [+4]
       92 GETIMPORT                        R6 K27 [Enum.InputActionType.Bool]
       94 JUMPIFEQ                         R1 R6 ; [+20]
       96 DUPTABLE                         R8 K2 [{"id", "text"}]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R9 R9 K28 ["ROW_USE_COMPOSITE"]
      100 SETTABLEKS                       R9 R8 K0 ["id"]
      102 LOADK                            R11 K4 ["Menu"]
      103 LOADK                            R12 K29 ["UseComposite"]
      104 NAMECALL                         R9 R0 K6 ["getText"]
      106 CALL                             R9 3 1
      107 SETTABLEKS                       R9 R8 K1 ["text"]
      109 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      111 MOVE                             R7 R5
      112 GETIMPORT                        R6 K9 [table.insert]
      114 CALL                             R6 2 0
      115 JUMPIFNOTEQKS                    R3 K30 ["Composite"] ; [+40]
      117 DUPTABLE                         R8 K2 [{"id", "text"}]
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R9 R9 K31 ["ROW_USE_KEYCODE"]
      121 SETTABLEKS                       R9 R8 K0 ["id"]
      123 LOADK                            R11 K4 ["Menu"]
      124 LOADK                            R12 K32 ["UseKeycode"]
      125 NAMECALL                         R9 R0 K6 ["getText"]
      127 CALL                             R9 3 1
      128 SETTABLEKS                       R9 R8 K1 ["text"]
      130 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      132 MOVE                             R7 R5
      133 GETIMPORT                        R6 K9 [table.insert]
      135 CALL                             R6 2 0
      136 JUMP                             ; [+19]
      137 DUPTABLE                         R8 K16 [{["icon"] = "trash-can", [2], ["text"]}]
      138 GETUPVAL                         R9 0
      139 GETTABLEKS                       R9 R9 K17 ["DELETE"]
      141 SETTABLEKS                       R9 R8 K0 ["id"]
      143 LOADK                            R11 K4 ["Menu"]
      144 LOADK                            R12 K18 ["Delete"]
      145 NAMECALL                         R9 R0 K6 ["getText"]
      147 CALL                             R9 3 1
      148 SETTABLEKS                       R9 R8 K1 ["text"]
      150 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      152 MOVE                             R7 R5
      153 GETIMPORT                        R6 K9 [table.insert]
      155 CALL                             R6 2 0
      156 GETUPVAL                         R6 3
      157 MOVE                             R7 R2
      158 CALL                             R6 1 1
      159 JUMPIFNOT                        R6 ; [+24]
      160 GETUPVAL                         R7 4
      161 MOVE                             R8 R2
      162 CALL                             R7 1 1
      163 JUMPIF                           R7 ; [+20]
      164 DUPTABLE                         R9 K2 [{"id", "text"}]
      165 GETUPVAL                         R10 0
      166 GETTABLEKS                       R10 R10 K33 ["ROW_ADD_PRIMARY_MODIFIER"]
      168 SETTABLEKS                       R10 R9 K0 ["id"]
      170 LOADK                            R12 K4 ["Menu"]
      171 LOADK                            R13 K34 ["AddPrimaryModifier"]
      172 NAMECALL                         R10 R0 K6 ["getText"]
      174 CALL                             R10 3 1
      175 SETTABLEKS                       R10 R9 K1 ["text"]
      177 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      179 MOVE                             R8 R5
      180 GETIMPORT                        R7 K9 [table.insert]
      182 CALL                             R7 2 0
      183 RETURN                           R5 1
      184 GETUPVAL                         R7 4
      185 MOVE                             R8 R2
      186 CALL                             R7 1 1
      187 JUMPIFNOT                        R7 ; [+23]
      188 GETUPVAL                         R7 5
      189 MOVE                             R8 R2
      190 CALL                             R7 1 1
      191 JUMPIF                           R7 ; [+19]
      192 DUPTABLE                         R9 K2 [{"id", "text"}]
      193 GETUPVAL                         R10 0
      194 GETTABLEKS                       R10 R10 K35 ["ROW_ADD_SECONDARY_MODIFIER"]
      196 SETTABLEKS                       R10 R9 K0 ["id"]
      198 LOADK                            R12 K4 ["Menu"]
      199 LOADK                            R13 K36 ["AddSecondaryModifier"]
      200 NAMECALL                         R10 R0 K6 ["getText"]
      202 CALL                             R10 3 1
      203 SETTABLEKS                       R10 R9 K1 ["text"]
      205 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      207 MOVE                             R8 R5
      208 GETIMPORT                        R7 K9 [table.insert]
      210 CALL                             R7 2 0
      211 RETURN                           R5 1

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
       76 GETTABLEKS                       R8 R0 K8 ["Src"]
       78 GETTABLEKS                       R8 R8 K19 ["Flags"]
       80 GETIMPORT                        R9 K5 [require]
       82 GETTABLEKS                       R10 R8 K20 ["getFFlagIAMInputActionTypeFixes"]
       84 CALL                             R9 1 1
       85 DUPCLOSURE                       R10 K21 [PROTO_0]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 RETURN                           R10 1
