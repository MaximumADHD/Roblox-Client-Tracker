PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["columnSort"]
        3 GETTABLEKS                       R1 R1 K1 ["column"]
        5 JUMPIFNOTEQ                      R1 R0 ; [+17]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["columnSort"]
       10 GETTABLEKS                       R1 R1 K2 ["direction"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["Neutral"]
       15 JUMPIFEQ                         R1 R2 ; [+7]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["columnSort"]
       20 GETTABLEKS                       R1 R1 K2 ["direction"]
       22 RETURN                           R1 1
       23 LOADNIL                          R1
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSort"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Type"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSort"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Name"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSort"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Value"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSort"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Override"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["createElement"]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K12 [{["valueType"] = "", ["type"], ["name"], ["value"], ["override"], ["actions"], ["isHeader"] = True, ["LayoutOrder"] = 1}]
        8 DUPTABLE                         R5 K19 [{["label"] = "Type", ["onActivated"], ["sortDirection"], ["testId"] = "flag-editor-header-type"}]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 SETTABLEKS                       R6 R5 K15 ["onActivated"]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K14 ["Type"]
       17 GETTABLEKS                       R8 R0 K20 ["columnSort"]
       19 GETTABLEKS                       R8 R8 K21 ["column"]
       21 JUMPIFNOTEQ                      R8 R7 ; [+15]
       23 GETTABLEKS                       R8 R0 K20 ["columnSort"]
       25 GETTABLEKS                       R8 R8 K22 ["direction"]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K23 ["Neutral"]
       30 JUMPIFEQ                         R8 R9 ; [+6]
       32 GETTABLEKS                       R6 R0 K20 ["columnSort"]
       34 GETTABLEKS                       R6 R6 K22 ["direction"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K16 ["sortDirection"]
       40 SETTABLEKS                       R5 R4 K3 ["type"]
       42 DUPTABLE                         R5 K27 [{["label"] = "Name", ["onActivated"], ["sortDirection"], ["testId"] = "flag-editor-header-name", ["input"]}]
       43 NEWCLOSURE                       R6 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 SETTABLEKS                       R6 R5 K15 ["onActivated"]
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R7 R7 K24 ["Name"]
       51 GETTABLEKS                       R8 R0 K20 ["columnSort"]
       53 GETTABLEKS                       R8 R8 K21 ["column"]
       55 JUMPIFNOTEQ                      R8 R7 ; [+15]
       57 GETTABLEKS                       R8 R0 K20 ["columnSort"]
       59 GETTABLEKS                       R8 R8 K22 ["direction"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K23 ["Neutral"]
       64 JUMPIFEQ                         R8 R9 ; [+6]
       66 GETTABLEKS                       R6 R0 K20 ["columnSort"]
       68 GETTABLEKS                       R6 R6 K22 ["direction"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R6
       72 SETTABLEKS                       R6 R5 K16 ["sortDirection"]
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K0 ["createElement"]
       77 GETUPVAL                         R7 4
       78 DUPTABLE                         R8 K31 [{["onChanged"], ["onFocusLost"], ["LayoutOrder"] = 1, ["testId"] = "flag-editor-header-search"}]
       79 GETTABLEKS                       R9 R0 K32 ["onSearchChanged"]
       81 SETTABLEKS                       R9 R8 K28 ["onChanged"]
       83 GETTABLEKS                       R9 R0 K33 ["onSearchFocusLost"]
       85 SETTABLEKS                       R9 R8 K29 ["onFocusLost"]
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K26 ["input"]
       90 SETTABLEKS                       R5 R4 K4 ["name"]
       92 DUPTABLE                         R5 K36 [{["label"] = "Value", ["onActivated"], ["sortDirection"], ["testId"] = "flag-editor-header-value"}]
       93 NEWCLOSURE                       R6 P3
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U3
       96 SETTABLEKS                       R6 R5 K15 ["onActivated"]
       98 GETUPVAL                         R7 3
       99 GETTABLEKS                       R7 R7 K34 ["Value"]
      101 GETTABLEKS                       R8 R0 K20 ["columnSort"]
      103 GETTABLEKS                       R8 R8 K21 ["column"]
      105 JUMPIFNOTEQ                      R8 R7 ; [+15]
      107 GETTABLEKS                       R8 R0 K20 ["columnSort"]
      109 GETTABLEKS                       R8 R8 K22 ["direction"]
      111 GETUPVAL                         R9 0
      112 GETTABLEKS                       R9 R9 K23 ["Neutral"]
      114 JUMPIFEQ                         R8 R9 ; [+6]
      116 GETTABLEKS                       R6 R0 K20 ["columnSort"]
      118 GETTABLEKS                       R6 R6 K22 ["direction"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R6
      122 SETTABLEKS                       R6 R5 K16 ["sortDirection"]
      124 SETTABLEKS                       R5 R4 K5 ["value"]
      126 DUPTABLE                         R5 K40 [{["label"] = "Override", ["onActivated"], ["onSecondaryActivated"], ["sortDirection"], ["testId"] = "flag-editor-header-override", ["input"]}]
      127 NEWCLOSURE                       R6 P4
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U3
      130 SETTABLEKS                       R6 R5 K15 ["onActivated"]
      132 GETTABLEKS                       R6 R0 K41 ["onCopyOverrides"]
      134 SETTABLEKS                       R6 R5 K38 ["onSecondaryActivated"]
      136 GETUPVAL                         R7 3
      137 GETTABLEKS                       R7 R7 K37 ["Override"]
      139 GETTABLEKS                       R8 R0 K20 ["columnSort"]
      141 GETTABLEKS                       R8 R8 K21 ["column"]
      143 JUMPIFNOTEQ                      R8 R7 ; [+15]
      145 GETTABLEKS                       R8 R0 K20 ["columnSort"]
      147 GETTABLEKS                       R8 R8 K22 ["direction"]
      149 GETUPVAL                         R9 0
      150 GETTABLEKS                       R9 R9 K23 ["Neutral"]
      152 JUMPIFEQ                         R8 R9 ; [+6]
      154 GETTABLEKS                       R6 R0 K20 ["columnSort"]
      156 GETTABLEKS                       R6 R6 K22 ["direction"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R6
      160 SETTABLEKS                       R6 R5 K16 ["sortDirection"]
      162 GETUPVAL                         R6 1
      163 GETTABLEKS                       R6 R6 K0 ["createElement"]
      165 GETUPVAL                         R7 5
      166 DUPTABLE                         R8 K45 [{["size"], ["isChecked"], ["onActivated"], ["LayoutOrder"] = 1, ["testId"] = "flag-editor-header-show-overridden"}]
      167 GETUPVAL                         R9 6
      168 GETTABLEKS                       R9 R9 K46 ["XSmall"]
      170 SETTABLEKS                       R9 R8 K42 ["size"]
      172 GETTABLEKS                       R9 R0 K47 ["filterOverrides"]
      174 SETTABLEKS                       R9 R8 K43 ["isChecked"]
      176 GETTABLEKS                       R9 R0 K48 ["onFilterOverrides"]
      178 SETTABLEKS                       R9 R8 K15 ["onActivated"]
      180 CALL                             R6 2 1
      181 SETTABLEKS                       R6 R5 K26 ["input"]
      183 SETTABLEKS                       R5 R4 K6 ["override"]
      185 DUPTABLE                         R5 K51 [{"Clear", "Save"}]
      186 GETTABLEKS                       R7 R0 K52 ["hasOverrides"]
      188 JUMPIFNOT                        R7 ; [+21]
      189 GETUPVAL                         R6 1
      190 GETTABLEKS                       R6 R6 K0 ["createElement"]
      192 GETUPVAL                         R7 7
      193 DUPTABLE                         R8 K57 [{["text"] = "Clear All", ["size"], ["variant"], ["onActivated"], ["testId"] = "flag-editor-header-clear", ["LayoutOrder"] = 1}]
      194 GETUPVAL                         R9 8
      195 GETTABLEKS                       R9 R9 K46 ["XSmall"]
      197 SETTABLEKS                       R9 R8 K42 ["size"]
      199 GETUPVAL                         R9 9
      200 GETTABLEKS                       R9 R9 K58 ["Alert"]
      202 SETTABLEKS                       R9 R8 K55 ["variant"]
      204 GETTABLEKS                       R9 R0 K59 ["onClearOverrides"]
      206 SETTABLEKS                       R9 R8 K15 ["onActivated"]
      208 CALL                             R6 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R6
      211 SETTABLEKS                       R6 R5 K49 ["Clear"]
      213 GETUPVAL                         R6 1
      214 GETTABLEKS                       R6 R6 K0 ["createElement"]
      216 GETUPVAL                         R7 7
      217 DUPTABLE                         R8 K63 [{["text"] = "Save", ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"] = "flag-editor-header-save", ["LayoutOrder"] = 2}]
      218 GETUPVAL                         R9 8
      219 GETTABLEKS                       R9 R9 K46 ["XSmall"]
      221 SETTABLEKS                       R9 R8 K42 ["size"]
      223 GETUPVAL                         R9 9
      224 GETTABLEKS                       R9 R9 K64 ["Emphasis"]
      226 SETTABLEKS                       R9 R8 K55 ["variant"]
      228 GETTABLEKS                       R10 R0 K65 ["hasUnsavedChanges"]
      230 NOT                              R9 R10
      231 SETTABLEKS                       R9 R8 K60 ["isDisabled"]
      233 GETTABLEKS                       R9 R0 K66 ["onSave"]
      235 SETTABLEKS                       R9 R8 K15 ["onActivated"]
      237 CALL                             R6 2 1
      238 SETTABLEKS                       R6 R5 K50 ["Save"]
      240 SETTABLEKS                       R5 R4 K7 ["actions"]
      242 CALL                             R2 2 -1
      243 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Button"]
       21 GETTABLEKS                       R5 R3 K10 ["Toggle"]
       23 GETTABLEKS                       R6 R3 K11 ["Enums"]
       25 GETTABLEKS                       R6 R6 K12 ["ButtonSize"]
       27 GETTABLEKS                       R7 R3 K11 ["Enums"]
       29 GETTABLEKS                       R7 R7 K13 ["ButtonVariant"]
       31 GETTABLEKS                       R8 R3 K11 ["Enums"]
       33 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       35 GETIMPORT                        R9 K6 [require]
       37 GETIMPORT                        R10 K1 [script]
       39 GETTABLEKS                       R10 R10 K4 ["Parent"]
       41 GETTABLEKS                       R10 R10 K15 ["FlagRow"]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K6 [require]
       46 GETIMPORT                        R11 K1 [script]
       48 GETTABLEKS                       R11 R11 K4 ["Parent"]
       50 GETTABLEKS                       R11 R11 K16 ["FlagSearch"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETIMPORT                        R12 K1 [script]
       57 GETTABLEKS                       R12 R12 K4 ["Parent"]
       59 GETTABLEKS                       R12 R12 K17 ["SortColumn"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETIMPORT                        R13 K1 [script]
       66 GETTABLEKS                       R13 R13 K4 ["Parent"]
       68 GETTABLEKS                       R13 R13 K18 ["SortDirection"]
       70 CALL                             R12 1 1
       71 DUPCLOSURE                       R13 K19 [PROTO_5]
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 GETTABLEKS                       R14 R2 K20 ["memo"]
       84 MOVE                             R15 R13
       85 CALL                             R14 1 -1
       86 RETURN                           R14 -1
