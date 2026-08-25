PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["categories"]
        4 GETTABLEKS                       R3 R0 K1 ["activeCategory"]
        6 GETTABLEKS                       R4 R0 K2 ["onCategoryClick"]
        8 GETTABLEKS                       R5 R0 K3 ["onChipClick"]
       10 GETTABLEKS                       R6 R0 K4 ["isMenuOpen"]
       12 GETTABLEKS                       R7 R0 K5 ["menuItems"]
       14 GETTABLEKS                       R8 R0 K6 ["onMenuActivated"]
       16 GETTABLEKS                       R9 R0 K7 ["onPressedOutside"]
       18 GETTABLEKS                       R10 R0 K8 ["activeDeviceName"]
       20 GETTABLEKS                       R12 R0 K9 ["serverDisabled"]
       22 JUMPIFEQKB                       R12 TRUE ; [+2]
       24 LOADB                            R11 0 +1
       25 LOADB                            R11 1
       26 GETTABLEKS                       R12 R0 K10 ["disabledCategories"]
       28 JUMPIF                           R12 ; [+2]
       29 NEWTABLE                         R12 0 0
       31 NEWTABLE                         R13 0 0
       33 MOVE                             R14 R2
       34 LOADNIL                          R15
       35 LOADNIL                          R16
       36 FORGPREP                         R14
       37 GETTABLEKS                       R19 R18 K11 ["id"]
       39 GETTABLEKS                       R20 R18 K11 ["id"]
       41 JUMPIFNOTEQKS                    R20 K12 ["server"] ; [+33]
       43 JUMPIFNOTEQKS                    R3 K12 ["server"] ; [+31]
       45 GETUPVAL                         R20 1
       46 GETTABLEKS                       R20 R20 K13 ["createElement"]
       48 GETUPVAL                         R21 2
       49 DUPTABLE                         R22 K22 [{["LayoutOrder"], ["testId"], ["text"], ["leading"], ["isChecked"] = True, ["isDisabled"], ["onActivated"]}]
       50 SETTABLEKS                       R17 R22 K14 ["LayoutOrder"]
       52 SETTABLEKS                       R19 R22 K15 ["testId"]
       54 LOADK                            R25 K23 ["Toolbar"]
       55 LOADK                            R26 K24 ["ServerLabel"]
       56 NAMECALL                         R23 R1 K25 ["getText"]
       58 CALL                             R23 3 1
       59 SETTABLEKS                       R23 R22 K16 ["text"]
       61 GETTABLEKS                       R23 R18 K26 ["iconAsset"]
       63 SETTABLEKS                       R23 R22 K17 ["leading"]
       65 SETTABLEKS                       R11 R22 K20 ["isDisabled"]
       67 NEWCLOSURE                       R23 P0
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R18
       70 SETTABLEKS                       R23 R22 K21 ["onActivated"]
       72 CALL                             R20 2 1
       73 SETTABLE                         R20 R13 R19
       74 JUMP                             ; [+127]
       75 GETTABLEKS                       R20 R18 K11 ["id"]
       77 JUMPIFNOTEQKS                    R20 K12 ["server"] ; [+32]
       79 GETUPVAL                         R20 1
       80 GETTABLEKS                       R20 R20 K13 ["createElement"]
       82 GETUPVAL                         R21 3
       83 DUPTABLE                         R22 K28 [{"LayoutOrder", "testId", "iconAsset", "isDisabled", "tooltipText", "onActivated"}]
       84 SETTABLEKS                       R17 R22 K14 ["LayoutOrder"]
       86 SETTABLEKS                       R19 R22 K15 ["testId"]
       88 GETTABLEKS                       R23 R18 K26 ["iconAsset"]
       90 SETTABLEKS                       R23 R22 K26 ["iconAsset"]
       92 SETTABLEKS                       R11 R22 K20 ["isDisabled"]
       94 LOADK                            R25 K29 ["CategoryTooltips"]
       95 GETTABLEKS                       R26 R18 K30 ["tooltipKey"]
       97 NAMECALL                         R23 R1 K25 ["getText"]
       99 CALL                             R23 3 1
      100 SETTABLEKS                       R23 R22 K27 ["tooltipText"]
      102 NEWCLOSURE                       R23 P1
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R18
      105 SETTABLEKS                       R23 R22 K21 ["onActivated"]
      107 CALL                             R20 2 1
      108 SETTABLE                         R20 R13 R19
      109 JUMP                             ; [+92]
      110 GETTABLEKS                       R20 R18 K11 ["id"]
      112 JUMPIFNOTEQ                      R20 R3 ; [+52]
      114 GETUPVAL                         R20 1
      115 GETTABLEKS                       R20 R20 K13 ["createElement"]
      117 GETUPVAL                         R21 4
      118 DUPTABLE                         R22 K37 [{["LayoutOrder"], ["isOpen"], ["items"], ["size"], ["onActivated"], ["onPressedOutside"], ["maxHeight"] = 500, ["width"]}]
      119 SETTABLEKS                       R17 R22 K14 ["LayoutOrder"]
      121 SETTABLEKS                       R6 R22 K31 ["isOpen"]
      123 SETTABLEKS                       R7 R22 K32 ["items"]
      125 GETUPVAL                         R23 5
      126 GETTABLEKS                       R23 R23 K38 ["XSmall"]
      128 SETTABLEKS                       R23 R22 K33 ["size"]
      130 SETTABLEKS                       R8 R22 K21 ["onActivated"]
      132 SETTABLEKS                       R9 R22 K7 ["onPressedOutside"]
      134 GETIMPORT                        R23 K41 [UDim.new]
      136 LOADN                            R24 0
      137 LOADN                            R25 250
      138 CALL                             R23 2 1
      139 SETTABLEKS                       R23 R22 K36 ["width"]
      141 DUPTABLE                         R23 K43 [{"Chip"}]
      142 GETUPVAL                         R24 1
      143 GETTABLEKS                       R24 R24 K13 ["createElement"]
      145 GETUPVAL                         R25 2
      146 DUPTABLE                         R26 K46 [{["testId"], ["text"], ["leading"], ["trailing"] = "chevron-large-down", ["isChecked"], ["onActivated"]}]
      147 SETTABLEKS                       R19 R26 K15 ["testId"]
      149 SETTABLEKS                       R10 R26 K16 ["text"]
      151 GETTABLEKS                       R27 R18 K26 ["iconAsset"]
      153 SETTABLEKS                       R27 R26 K17 ["leading"]
      155 SETTABLEKS                       R6 R26 K18 ["isChecked"]
      157 SETTABLEKS                       R5 R26 K21 ["onActivated"]
      159 CALL                             R24 2 1
      160 SETTABLEKS                       R24 R23 K42 ["Chip"]
      162 CALL                             R20 3 1
      163 SETTABLE                         R20 R13 R19
      164 JUMP                             ; [+37]
      165 GETUPVAL                         R20 1
      166 GETTABLEKS                       R20 R20 K13 ["createElement"]
      168 GETUPVAL                         R21 3
      169 DUPTABLE                         R22 K28 [{"LayoutOrder", "testId", "iconAsset", "isDisabled", "tooltipText", "onActivated"}]
      170 SETTABLEKS                       R17 R22 K14 ["LayoutOrder"]
      172 SETTABLEKS                       R19 R22 K15 ["testId"]
      174 GETTABLEKS                       R23 R18 K26 ["iconAsset"]
      176 SETTABLEKS                       R23 R22 K26 ["iconAsset"]
      178 GETTABLEKS                       R25 R18 K11 ["id"]
      180 GETTABLE                         R24 R12 R25
      181 JUMPIFEQKB                       R24 TRUE ; [+2]
      183 LOADB                            R23 0 +1
      184 LOADB                            R23 1
      185 SETTABLEKS                       R23 R22 K20 ["isDisabled"]
      187 LOADK                            R25 K29 ["CategoryTooltips"]
      188 GETTABLEKS                       R26 R18 K30 ["tooltipKey"]
      190 NAMECALL                         R23 R1 K25 ["getText"]
      192 CALL                             R23 3 1
      193 SETTABLEKS                       R23 R22 K27 ["tooltipText"]
      195 NEWCLOSURE                       R23 P2
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R18
      198 SETTABLEKS                       R23 R22 K21 ["onActivated"]
      200 CALL                             R20 2 1
      201 SETTABLE                         R20 R13 R19
      202 FORGLOOP                         R14 2 ; [-166]
      204 GETUPVAL                         R14 1
      205 GETTABLEKS                       R14 R14 K13 ["createElement"]
      207 GETUPVAL                         R15 6
      208 DUPTABLE                         R16 K49 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      209 GETTABLEKS                       R17 R0 K14 ["LayoutOrder"]
      211 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      213 MOVE                             R17 R13
      214 CALL                             R14 3 -1
      215 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Chip"]
       25 GETTABLEKS                       R5 R2 K11 ["Menu"]
       27 GETTABLEKS                       R6 R2 K12 ["Enums"]
       29 GETTABLEKS                       R6 R6 K13 ["InputSize"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETIMPORT                        R8 K1 [script]
       35 GETTABLEKS                       R8 R8 K14 ["Parent"]
       37 GETTABLEKS                       R8 R8 K15 ["ImageIconButton"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Src"]
       44 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       46 GETTABLEKS                       R9 R9 K18 ["useLocalization"]
       48 CALL                             R8 1 1
       49 DUPCLOSURE                       R9 K19 [PROTO_3]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 RETURN                           R9 1
