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
       23 JUMPIFEQKNIL                     R1 ; [+135]
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
       44 GETUPVAL                         R6 1
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+19]
       47 DUPTABLE                         R8 K2 [{"id", "text"}]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K15 ["DUPLICATE"]
       51 SETTABLEKS                       R9 R8 K0 ["id"]
       53 LOADK                            R11 K4 ["Menu"]
       54 LOADK                            R12 K16 ["Duplicate"]
       55 NAMECALL                         R9 R0 K6 ["getText"]
       57 CALL                             R9 3 1
       58 SETTABLEKS                       R9 R8 K1 ["text"]
       60 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       62 MOVE                             R7 R5
       63 GETIMPORT                        R6 K9 [table.insert]
       65 CALL                             R6 2 0
       66 DUPTABLE                         R8 K18 [{["icon"] = "trash-can", [2], ["text"]}]
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K19 ["DELETE"]
       70 SETTABLEKS                       R9 R8 K0 ["id"]
       72 LOADK                            R11 K4 ["Menu"]
       73 LOADK                            R12 K20 ["Delete"]
       74 NAMECALL                         R9 R0 K6 ["getText"]
       76 CALL                             R9 3 1
       77 SETTABLEKS                       R9 R8 K1 ["text"]
       79 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       81 MOVE                             R7 R5
       82 GETIMPORT                        R6 K9 [table.insert]
       84 CALL                             R6 2 0
       85 DUPTABLE                         R8 K22 [{"id", "text", "items"}]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K23 ["CHANGE_ACTION_TYPE"]
       89 SETTABLEKS                       R9 R8 K0 ["id"]
       91 LOADK                            R11 K4 ["Menu"]
       92 LOADK                            R12 K24 ["ChangeActionType"]
       93 NAMECALL                         R9 R0 K6 ["getText"]
       95 CALL                             R9 3 1
       96 SETTABLEKS                       R9 R8 K1 ["text"]
       98 GETUPVAL                         R9 2
       99 MOVE                             R10 R1
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R9 R8 K21 ["items"]
      103 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      105 MOVE                             R7 R5
      106 GETIMPORT                        R6 K9 [table.insert]
      108 CALL                             R6 2 0
      109 JUMPIFNOTEQKS                    R3 K25 ["Keycode"] ; [+27]
      111 GETUPVAL                         R6 3
      112 CALL                             R6 0 1
      113 JUMPIFNOT                        R6 ; [+4]
      114 GETUPVAL                         R7 4
      115 GETTABLE                         R6 R7 R1
      116 JUMPIFEQKNIL                     R6 ; [+20]
      118 DUPTABLE                         R8 K2 [{"id", "text"}]
      119 GETUPVAL                         R9 0
      120 GETTABLEKS                       R9 R9 K26 ["ROW_USE_COMPOSITE"]
      122 SETTABLEKS                       R9 R8 K0 ["id"]
      124 LOADK                            R11 K4 ["Menu"]
      125 LOADK                            R12 K27 ["UseComposite"]
      126 NAMECALL                         R9 R0 K6 ["getText"]
      128 CALL                             R9 3 1
      129 SETTABLEKS                       R9 R8 K1 ["text"]
      131 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      133 MOVE                             R7 R5
      134 GETIMPORT                        R6 K9 [table.insert]
      136 CALL                             R6 2 0
      137 JUMPIFNOTEQKS                    R3 K28 ["Composite"] ; [+40]
      139 DUPTABLE                         R8 K2 [{"id", "text"}]
      140 GETUPVAL                         R9 0
      141 GETTABLEKS                       R9 R9 K29 ["ROW_USE_KEYCODE"]
      143 SETTABLEKS                       R9 R8 K0 ["id"]
      145 LOADK                            R11 K4 ["Menu"]
      146 LOADK                            R12 K30 ["UseKeycode"]
      147 NAMECALL                         R9 R0 K6 ["getText"]
      149 CALL                             R9 3 1
      150 SETTABLEKS                       R9 R8 K1 ["text"]
      152 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      154 MOVE                             R7 R5
      155 GETIMPORT                        R6 K9 [table.insert]
      157 CALL                             R6 2 0
      158 JUMP                             ; [+19]
      159 DUPTABLE                         R8 K18 [{["icon"] = "trash-can", [2], ["text"]}]
      160 GETUPVAL                         R9 0
      161 GETTABLEKS                       R9 R9 K19 ["DELETE"]
      163 SETTABLEKS                       R9 R8 K0 ["id"]
      165 LOADK                            R11 K4 ["Menu"]
      166 LOADK                            R12 K20 ["Delete"]
      167 NAMECALL                         R9 R0 K6 ["getText"]
      169 CALL                             R9 3 1
      170 SETTABLEKS                       R9 R8 K1 ["text"]
      172 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      174 MOVE                             R7 R5
      175 GETIMPORT                        R6 K9 [table.insert]
      177 CALL                             R6 2 0
      178 GETUPVAL                         R6 5
      179 MOVE                             R7 R2
      180 CALL                             R6 1 1
      181 JUMPIFNOT                        R6 ; [+24]
      182 GETUPVAL                         R7 6
      183 MOVE                             R8 R2
      184 CALL                             R7 1 1
      185 JUMPIF                           R7 ; [+20]
      186 DUPTABLE                         R9 K2 [{"id", "text"}]
      187 GETUPVAL                         R10 0
      188 GETTABLEKS                       R10 R10 K31 ["ROW_ADD_PRIMARY_MODIFIER"]
      190 SETTABLEKS                       R10 R9 K0 ["id"]
      192 LOADK                            R12 K4 ["Menu"]
      193 LOADK                            R13 K32 ["AddPrimaryModifier"]
      194 NAMECALL                         R10 R0 K6 ["getText"]
      196 CALL                             R10 3 1
      197 SETTABLEKS                       R10 R9 K1 ["text"]
      199 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      201 MOVE                             R8 R5
      202 GETIMPORT                        R7 K9 [table.insert]
      204 CALL                             R7 2 0
      205 RETURN                           R5 1
      206 GETUPVAL                         R7 6
      207 MOVE                             R8 R2
      208 CALL                             R7 1 1
      209 JUMPIFNOT                        R7 ; [+23]
      210 GETUPVAL                         R7 7
      211 MOVE                             R8 R2
      212 CALL                             R7 1 1
      213 JUMPIF                           R7 ; [+19]
      214 DUPTABLE                         R9 K2 [{"id", "text"}]
      215 GETUPVAL                         R10 0
      216 GETTABLEKS                       R10 R10 K33 ["ROW_ADD_SECONDARY_MODIFIER"]
      218 SETTABLEKS                       R10 R9 K0 ["id"]
      220 LOADK                            R12 K4 ["Menu"]
      221 LOADK                            R13 K34 ["AddSecondaryModifier"]
      222 NAMECALL                         R10 R0 K6 ["getText"]
      224 CALL                             R10 3 1
      225 SETTABLEKS                       R10 R9 K1 ["text"]
      227 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      229 MOVE                             R8 R5
      230 GETIMPORT                        R7 K9 [table.insert]
      232 CALL                             R7 2 0
      233 RETURN                           R5 1

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
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 GETTABLEKS                       R4 R4 K12 ["DirectionPropertyNames"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Menus"]
       40 GETTABLEKS                       R5 R5 K14 ["getActionTypeMenu"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K11 ["Constants"]
       51 GETTABLEKS                       R6 R6 K15 ["MenuIdentifiers"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["Binding"]
       62 GETTABLEKS                       R7 R7 K17 ["hasKeycodes"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K8 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Util"]
       71 GETTABLEKS                       R8 R8 K16 ["Binding"]
       73 GETTABLEKS                       R8 R8 K18 ["hasPrimaryModifier"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K8 ["Src"]
       80 GETTABLEKS                       R9 R9 K10 ["Util"]
       82 GETTABLEKS                       R9 R9 K16 ["Binding"]
       84 GETTABLEKS                       R9 R9 K19 ["hasSecondaryModifier"]
       86 CALL                             R8 1 1
       87 GETIMPORT                        R9 K5 [require]
       89 GETTABLEKS                       R10 R0 K8 ["Src"]
       91 GETTABLEKS                       R10 R10 K20 ["Flags"]
       93 GETTABLEKS                       R10 R10 K21 ["getFFlagIAMViewportPositionType"]
       95 CALL                             R9 1 1
       96 GETTABLEKS                       R10 R0 K8 ["Src"]
       98 GETTABLEKS                       R10 R10 K20 ["Flags"]
      100 GETIMPORT                        R11 K5 [require]
      102 GETTABLEKS                       R12 R10 K22 ["getFFlagIAMDuplicate"]
      104 CALL                             R11 1 1
      105 DUPCLOSURE                       R12 K23 [PROTO_0]
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R8
      114 RETURN                           R12 1
