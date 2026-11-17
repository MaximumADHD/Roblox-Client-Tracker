PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 -1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIFNOTEQKNIL                  R0 ; [+3]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K1 ["MouseWheelForward"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R1 R1 K2 ["Connect"]
       20 CALL                             R1 2 1
       21 GETTABLEKS                       R2 R0 K3 ["MouseWheelBackward"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R2 R2 K2 ["Connect"]
       27 CALL                             R2 2 1
       28 NEWCLOSURE                       R3 P2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["id"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
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
       31 GETUPVAL                         R13 1
       32 GETTABLEKS                       R13 R13 K11 ["getFFlagDeviceSimulatorWheelCycleDevice"]
       34 CALL                             R13 0 1
       35 GETTABLEKS                       R14 R0 K12 ["onChipWheel"]
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R15 R15 K13 ["useRef"]
       40 LOADNIL                          R16
       41 CALL                             R15 1 1
       42 GETUPVAL                         R16 2
       43 GETTABLEKS                       R16 R16 K14 ["useEffect"]
       45 NEWCLOSURE                       R17 P0
       46 CAPTURE                          VAL R13
       47 CAPTURE                          VAL R14
       48 CAPTURE                          VAL R15
       49 NEWTABLE                         R18 0 3
       51 MOVE                             R19 R14
       52 MOVE                             R20 R3
       53 MOVE                             R21 R13
       54 SETLIST                          R18 R19 3 [1]
       56 CALL                             R16 2 0
       57 NEWTABLE                         R16 0 0
       59 MOVE                             R17 R2
       60 LOADNIL                          R18
       61 LOADNIL                          R19
       62 FORGPREP                         R17
       63 GETTABLEKS                       R22 R21 K15 ["id"]
       65 GETTABLEKS                       R23 R21 K15 ["id"]
       67 JUMPIFNOTEQKS                    R23 K16 ["server"] ; [+33]
       69 JUMPIFNOTEQKS                    R3 K16 ["server"] ; [+31]
       71 GETUPVAL                         R23 2
       72 GETTABLEKS                       R23 R23 K17 ["createElement"]
       74 GETUPVAL                         R24 3
       75 DUPTABLE                         R25 K26 [{["LayoutOrder"], ["testId"], ["text"], ["leading"], ["isChecked"] = True, ["isDisabled"], ["onActivated"]}]
       76 SETTABLEKS                       R20 R25 K18 ["LayoutOrder"]
       78 SETTABLEKS                       R22 R25 K19 ["testId"]
       80 LOADK                            R28 K27 ["Toolbar"]
       81 LOADK                            R29 K28 ["ServerLabel"]
       82 NAMECALL                         R26 R1 K29 ["getText"]
       84 CALL                             R26 3 1
       85 SETTABLEKS                       R26 R25 K20 ["text"]
       87 GETTABLEKS                       R26 R21 K30 ["iconAsset"]
       89 SETTABLEKS                       R26 R25 K21 ["leading"]
       91 SETTABLEKS                       R11 R25 K24 ["isDisabled"]
       93 NEWCLOSURE                       R26 P1
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R21
       96 SETTABLEKS                       R26 R25 K25 ["onActivated"]
       98 CALL                             R23 2 1
       99 SETTABLE                         R23 R16 R22
      100 JUMP                             ; [+133]
      101 GETTABLEKS                       R23 R21 K15 ["id"]
      103 JUMPIFNOTEQKS                    R23 K16 ["server"] ; [+32]
      105 GETUPVAL                         R23 2
      106 GETTABLEKS                       R23 R23 K17 ["createElement"]
      108 GETUPVAL                         R24 4
      109 DUPTABLE                         R25 K32 [{"LayoutOrder", "testId", "iconAsset", "isDisabled", "tooltipText", "onActivated"}]
      110 SETTABLEKS                       R20 R25 K18 ["LayoutOrder"]
      112 SETTABLEKS                       R22 R25 K19 ["testId"]
      114 GETTABLEKS                       R26 R21 K30 ["iconAsset"]
      116 SETTABLEKS                       R26 R25 K30 ["iconAsset"]
      118 SETTABLEKS                       R11 R25 K24 ["isDisabled"]
      120 LOADK                            R28 K33 ["CategoryTooltips"]
      121 GETTABLEKS                       R29 R21 K34 ["tooltipKey"]
      123 NAMECALL                         R26 R1 K29 ["getText"]
      125 CALL                             R26 3 1
      126 SETTABLEKS                       R26 R25 K31 ["tooltipText"]
      128 NEWCLOSURE                       R26 P2
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R21
      131 SETTABLEKS                       R26 R25 K25 ["onActivated"]
      133 CALL                             R23 2 1
      134 SETTABLE                         R23 R16 R22
      135 JUMP                             ; [+98]
      136 GETTABLEKS                       R23 R21 K15 ["id"]
      138 JUMPIFNOTEQ                      R23 R3 ; [+58]
      140 GETUPVAL                         R23 2
      141 GETTABLEKS                       R23 R23 K17 ["createElement"]
      143 GETUPVAL                         R24 5
      144 DUPTABLE                         R25 K41 [{["LayoutOrder"], ["isOpen"], ["items"], ["size"], ["onActivated"], ["onPressedOutside"], ["maxHeight"] = 500, ["width"]}]
      145 SETTABLEKS                       R20 R25 K18 ["LayoutOrder"]
      147 SETTABLEKS                       R6 R25 K35 ["isOpen"]
      149 SETTABLEKS                       R7 R25 K36 ["items"]
      151 GETUPVAL                         R26 6
      152 GETTABLEKS                       R26 R26 K42 ["XSmall"]
      154 SETTABLEKS                       R26 R25 K37 ["size"]
      156 SETTABLEKS                       R8 R25 K25 ["onActivated"]
      158 SETTABLEKS                       R9 R25 K7 ["onPressedOutside"]
      160 GETIMPORT                        R26 K45 [UDim.new]
      162 LOADN                            R27 0
      163 LOADN                            R28 250
      164 CALL                             R26 2 1
      165 SETTABLEKS                       R26 R25 K40 ["width"]
      167 DUPTABLE                         R26 K47 [{"Chip"}]
      168 GETUPVAL                         R27 2
      169 GETTABLEKS                       R27 R27 K17 ["createElement"]
      171 GETUPVAL                         R28 3
      172 DUPTABLE                         R29 K51 [{["testId"], ["ref"], ["text"], ["leading"], ["trailing"] = "chevron-large-down", ["isChecked"], ["onActivated"]}]
      173 SETTABLEKS                       R22 R29 K19 ["testId"]
      175 JUMPIFNOT                        R13 ; [+2]
      176 MOVE                             R30 R15
      177 JUMP                             ; [+1]
      178 LOADNIL                          R30
      179 SETTABLEKS                       R30 R29 K48 ["ref"]
      181 SETTABLEKS                       R10 R29 K20 ["text"]
      183 GETTABLEKS                       R30 R21 K30 ["iconAsset"]
      185 SETTABLEKS                       R30 R29 K21 ["leading"]
      187 SETTABLEKS                       R6 R29 K22 ["isChecked"]
      189 SETTABLEKS                       R5 R29 K25 ["onActivated"]
      191 CALL                             R27 2 1
      192 SETTABLEKS                       R27 R26 K46 ["Chip"]
      194 CALL                             R23 3 1
      195 SETTABLE                         R23 R16 R22
      196 JUMP                             ; [+37]
      197 GETUPVAL                         R23 2
      198 GETTABLEKS                       R23 R23 K17 ["createElement"]
      200 GETUPVAL                         R24 4
      201 DUPTABLE                         R25 K32 [{"LayoutOrder", "testId", "iconAsset", "isDisabled", "tooltipText", "onActivated"}]
      202 SETTABLEKS                       R20 R25 K18 ["LayoutOrder"]
      204 SETTABLEKS                       R22 R25 K19 ["testId"]
      206 GETTABLEKS                       R26 R21 K30 ["iconAsset"]
      208 SETTABLEKS                       R26 R25 K30 ["iconAsset"]
      210 GETTABLEKS                       R28 R21 K15 ["id"]
      212 GETTABLE                         R27 R12 R28
      213 JUMPIFEQKB                       R27 TRUE ; [+2]
      215 LOADB                            R26 0 +1
      216 LOADB                            R26 1
      217 SETTABLEKS                       R26 R25 K24 ["isDisabled"]
      219 LOADK                            R28 K33 ["CategoryTooltips"]
      220 GETTABLEKS                       R29 R21 K34 ["tooltipKey"]
      222 NAMECALL                         R26 R1 K29 ["getText"]
      224 CALL                             R26 3 1
      225 SETTABLEKS                       R26 R25 K31 ["tooltipText"]
      227 NEWCLOSURE                       R26 P3
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R21
      230 SETTABLEKS                       R26 R25 K25 ["onActivated"]
      232 CALL                             R23 2 1
      233 SETTABLE                         R23 R16 R22
      234 FORGLOOP                         R17 2 ; [-172]
      236 GETUPVAL                         R17 2
      237 GETTABLEKS                       R17 R17 K17 ["createElement"]
      239 GETUPVAL                         R18 7
      240 DUPTABLE                         R19 K54 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      241 GETTABLEKS                       R20 R0 K18 ["LayoutOrder"]
      243 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      245 MOVE                             R20 R16
      246 CALL                             R17 3 -1
      247 RETURN                           R17 -1

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
       42 GETTABLEKS                       R9 R0 K16 ["Bin"]
       44 GETTABLEKS                       R9 R9 K17 ["Common"]
       46 GETTABLEKS                       R9 R9 K18 ["defineLuaFlags"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K19 ["Src"]
       53 GETTABLEKS                       R10 R10 K20 ["Hooks"]
       55 GETTABLEKS                       R10 R10 K21 ["useLocalization"]
       57 CALL                             R9 1 1
       58 DUPCLOSURE                       R10 K22 [PROTO_7]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R3
       67 RETURN                           R10 1
