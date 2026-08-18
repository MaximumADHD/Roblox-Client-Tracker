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
       23 JUMPIFEQKNIL                     R1 ; [+132]
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
      109 JUMPIFNOTEQKS                    R3 K25 ["Keycode"] ; [+24]
      111 GETIMPORT                        R6 K29 [Enum.InputActionType.Bool]
      113 JUMPIFEQ                         R1 R6 ; [+20]
      115 DUPTABLE                         R8 K2 [{"id", "text"}]
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R9 R9 K30 ["ROW_USE_COMPOSITE"]
      119 SETTABLEKS                       R9 R8 K0 ["id"]
      121 LOADK                            R11 K4 ["Menu"]
      122 LOADK                            R12 K31 ["UseComposite"]
      123 NAMECALL                         R9 R0 K6 ["getText"]
      125 CALL                             R9 3 1
      126 SETTABLEKS                       R9 R8 K1 ["text"]
      128 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      130 MOVE                             R7 R5
      131 GETIMPORT                        R6 K9 [table.insert]
      133 CALL                             R6 2 0
      134 JUMPIFNOTEQKS                    R3 K32 ["Composite"] ; [+40]
      136 DUPTABLE                         R8 K2 [{"id", "text"}]
      137 GETUPVAL                         R9 0
      138 GETTABLEKS                       R9 R9 K33 ["ROW_USE_KEYCODE"]
      140 SETTABLEKS                       R9 R8 K0 ["id"]
      142 LOADK                            R11 K4 ["Menu"]
      143 LOADK                            R12 K34 ["UseKeycode"]
      144 NAMECALL                         R9 R0 K6 ["getText"]
      146 CALL                             R9 3 1
      147 SETTABLEKS                       R9 R8 K1 ["text"]
      149 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      151 MOVE                             R7 R5
      152 GETIMPORT                        R6 K9 [table.insert]
      154 CALL                             R6 2 0
      155 JUMP                             ; [+19]
      156 DUPTABLE                         R8 K18 [{["icon"] = "trash-can", [2], ["text"]}]
      157 GETUPVAL                         R9 0
      158 GETTABLEKS                       R9 R9 K19 ["DELETE"]
      160 SETTABLEKS                       R9 R8 K0 ["id"]
      162 LOADK                            R11 K4 ["Menu"]
      163 LOADK                            R12 K20 ["Delete"]
      164 NAMECALL                         R9 R0 K6 ["getText"]
      166 CALL                             R9 3 1
      167 SETTABLEKS                       R9 R8 K1 ["text"]
      169 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      171 MOVE                             R7 R5
      172 GETIMPORT                        R6 K9 [table.insert]
      174 CALL                             R6 2 0
      175 GETUPVAL                         R6 3
      176 MOVE                             R7 R2
      177 CALL                             R6 1 1
      178 JUMPIFNOT                        R6 ; [+24]
      179 GETUPVAL                         R7 4
      180 MOVE                             R8 R2
      181 CALL                             R7 1 1
      182 JUMPIF                           R7 ; [+20]
      183 DUPTABLE                         R9 K2 [{"id", "text"}]
      184 GETUPVAL                         R10 0
      185 GETTABLEKS                       R10 R10 K35 ["ROW_ADD_PRIMARY_MODIFIER"]
      187 SETTABLEKS                       R10 R9 K0 ["id"]
      189 LOADK                            R12 K4 ["Menu"]
      190 LOADK                            R13 K36 ["AddPrimaryModifier"]
      191 NAMECALL                         R10 R0 K6 ["getText"]
      193 CALL                             R10 3 1
      194 SETTABLEKS                       R10 R9 K1 ["text"]
      196 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      198 MOVE                             R8 R5
      199 GETIMPORT                        R7 K9 [table.insert]
      201 CALL                             R7 2 0
      202 RETURN                           R5 1
      203 GETUPVAL                         R7 4
      204 MOVE                             R8 R2
      205 CALL                             R7 1 1
      206 JUMPIFNOT                        R7 ; [+23]
      207 GETUPVAL                         R7 5
      208 MOVE                             R8 R2
      209 CALL                             R7 1 1
      210 JUMPIF                           R7 ; [+19]
      211 DUPTABLE                         R9 K2 [{"id", "text"}]
      212 GETUPVAL                         R10 0
      213 GETTABLEKS                       R10 R10 K37 ["ROW_ADD_SECONDARY_MODIFIER"]
      215 SETTABLEKS                       R10 R9 K0 ["id"]
      217 LOADK                            R12 K4 ["Menu"]
      218 LOADK                            R13 K38 ["AddSecondaryModifier"]
      219 NAMECALL                         R10 R0 K6 ["getText"]
      221 CALL                             R10 3 1
      222 SETTABLEKS                       R10 R9 K1 ["text"]
      224 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      226 MOVE                             R8 R5
      227 GETIMPORT                        R7 K9 [table.insert]
      229 CALL                             R7 2 0
      230 RETURN                           R5 1

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
       82 GETTABLEKS                       R10 R8 K20 ["getFFlagIAMDuplicate"]
       84 CALL                             R9 1 1
       85 DUPCLOSURE                       R10 K21 [PROTO_0]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 RETURN                           R10 1
