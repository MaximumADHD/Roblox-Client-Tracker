PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 JUMPIF                           R5 ; [+2]
        6 LOADB                            R6 0
        7 RETURN                           R6 1
        8 FORGLOOP                         R1 2 ; [-4]
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 JUMPIFNOT                        R5 ; [+2]
        6 LOADB                            R6 1
        7 RETURN                           R6 1
        8 FORGLOOP                         R1 2 ; [-4]
       10 LOADB                            R1 0
       11 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 JUMPIF                           R6 ; [+2]
        6 LOADB                            R1 0
        7 JUMP                             ; [+3]
        8 FORGLOOP                         R2 2 ; [-4]
       10 LOADB                            R1 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 GETIMPORT                        R2 K1 [pairs]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 JUMPIFNOT                        R6 ; [+2]
       20 LOADB                            R1 1
       21 JUMP                             ; [+3]
       22 FORGLOOP                         R2 2 ; [-4]
       24 LOADB                            R1 0
       25 JUMPIFNOT                        R1 ; [+4]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K2 ["Indeterminate"]
       29 RETURN                           R1 1
       30 LOADB                            R1 0
       31 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        8 GETTABLEKS                       R3 R4 K2 ["join"]
       10 GETTABLEKS                       R4 R1 K3 ["KeyStates"]
       12 NEWTABLE                         R5 1 0
       14 GETTABLEKS                       R8 R1 K3 ["KeyStates"]
       16 GETTABLE                         R7 R8 R0
       17 NOT                              R6 R7
       18 SETTABLE                         R6 R5 R0
       19 CALL                             R3 2 1
       20 GETIMPORT                        R4 K5 [ipairs]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K0 ["props"]
       25 GETTABLEKS                       R5 R7 K6 ["KeyTexts"]
       27 CALL                             R4 1 3
       28 FORGPREP_INEXT                   R4
       29 JUMPIFEQKN                       R7 K7 [1] ; [+10]
       31 GETTABLE                         R9 R3 R7
       32 JUMPIFNOT                        R9 ; [+7]
       33 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       35 MOVE                             R10 R2
       36 MOVE                             R11 R8
       37 GETIMPORT                        R9 K10 [table.insert]
       39 CALL                             R9 2 0
       40 FORGLOOP                         R4 2 [inext] ; [-12]
       42 GETTABLEKS                       R4 R1 K11 ["ClickCallback"]
       44 MOVE                             R5 R2
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R4 R1 K1 ["KeyStates"]
        5 GETIMPORT                        R5 K3 [pairs]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 3
        9 FORGPREP_NEXT                    R5
       10 JUMPIF                           R9 ; [+2]
       11 LOADB                            R3 0
       12 JUMP                             ; [+3]
       13 FORGLOOP                         R5 2 ; [-4]
       15 LOADB                            R3 1
       16 NOT                              R2 R3
       17 NEWTABLE                         R3 0 0
       19 JUMPIFNOT                        R2 ; [+20]
       20 GETIMPORT                        R4 K5 [ipairs]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K0 ["props"]
       25 GETTABLEKS                       R5 R7 K6 ["KeyTexts"]
       27 CALL                             R4 1 3
       28 FORGPREP_INEXT                   R4
       29 JUMPIFEQKN                       R7 K7 [1] ; [+8]
       31 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       33 MOVE                             R10 R3
       34 MOVE                             R11 R8
       35 GETIMPORT                        R9 K10 [table.insert]
       37 CALL                             R9 2 0
       38 FORGLOOP                         R4 2 [inext] ; [-10]
       40 GETTABLEKS                       R4 R1 K11 ["ClickCallback"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["Localization"]
        5 GETTABLEKS                       R5 R3 K2 ["Style"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K3 ["createElement"]
       10 GETUPVAL                         R7 2
       11 DUPTABLE                         R8 K9 [{"AutomaticSize", "LayoutOrder", "Stylizer", "BackgroundColor", "BorderColor"}]
       12 GETIMPORT                        R9 K12 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R9 R8 K4 ["AutomaticSize"]
       16 SETTABLEKS                       R1 R8 K5 ["LayoutOrder"]
       18 SETTABLEKS                       R5 R8 K6 ["Stylizer"]
       20 GETTABLEKS                       R9 R5 K13 ["MainBackground"]
       22 SETTABLEKS                       R9 R8 K7 ["BackgroundColor"]
       24 GETTABLEKS                       R9 R5 K8 ["BorderColor"]
       26 SETTABLEKS                       R9 R8 K8 ["BorderColor"]
       28 DUPTABLE                         R9 K17 [{"CheckboxView", "SeparatorView", "Tooltip"}]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R10 R11 K3 ["createElement"]
       32 GETUPVAL                         R11 3
       33 DUPTABLE                         R12 K22 [{"LayoutOrder", "Key", "Checked", "OnClick", "Text", "Stylizer"}]
       34 LOADN                            R13 1
       35 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       37 SETTABLEKS                       R1 R12 K18 ["Key"]
       39 JUMPIFNOTEQKN                    R1 K23 [1] ; [+35]
       41 GETTABLEKS                       R14 R3 K24 ["KeyStates"]
       43 GETIMPORT                        R16 K26 [pairs]
       45 MOVE                             R17 R14
       46 CALL                             R16 1 3
       47 FORGPREP_NEXT                    R16
       48 JUMPIF                           R20 ; [+2]
       49 LOADB                            R15 0
       50 JUMP                             ; [+3]
       51 FORGLOOP                         R16 2 ; [-4]
       53 LOADB                            R15 1
       54 JUMPIFNOT                        R15 ; [+2]
       55 LOADB                            R13 1
       56 JUMP                             ; [+17]
       57 GETIMPORT                        R16 K26 [pairs]
       59 MOVE                             R17 R14
       60 CALL                             R16 1 3
       61 FORGPREP_NEXT                    R16
       62 JUMPIFNOT                        R20 ; [+2]
       63 LOADB                            R15 1
       64 JUMP                             ; [+3]
       65 FORGLOOP                         R16 2 ; [-4]
       67 LOADB                            R15 0
       68 JUMPIFNOT                        R15 ; [+4]
       69 GETUPVAL                         R15 3
       70 GETTABLEKS                       R13 R15 K27 ["Indeterminate"]
       72 JUMP                             ; [+1]
       73 LOADB                            R13 0
       74 JUMPIF                           R13 ; [+3]
       75 GETTABLEKS                       R14 R3 K24 ["KeyStates"]
       77 GETTABLE                         R13 R14 R1
       78 SETTABLEKS                       R13 R12 K19 ["Checked"]
       80 JUMPIFNOTEQKN                    R1 K23 [1] ; [+5]
       82 GETUPVAL                         R14 0
       83 GETTABLEKS                       R13 R14 K28 ["onAllDropdownClick"]
       85 JUMPIF                           R13 ; [+3]
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R13 R14 K29 ["onDropdownClick"]
       89 SETTABLEKS                       R13 R12 K20 ["OnClick"]
       91 GETTABLEKS                       R15 R3 K30 ["Widget"]
       93 GETUPVAL                         R19 0
       94 GETTABLEKS                       R18 R19 K0 ["props"]
       96 GETTABLEKS                       R17 R18 K31 ["KeyTexts"]
       98 GETTABLE                         R16 R17 R1
       99 NAMECALL                         R13 R4 K32 ["getText"]
      101 CALL                             R13 3 1
      102 SETTABLEKS                       R13 R12 K21 ["Text"]
      104 SETTABLEKS                       R5 R12 K6 ["Stylizer"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K14 ["CheckboxView"]
      109 LOADB                            R10 0
      110 JUMPIFNOTEQKN                    R1 K23 [1] ; [+29]
      112 GETUPVAL                         R11 1
      113 GETTABLEKS                       R10 R11 K3 ["createElement"]
      115 GETUPVAL                         R11 4
      116 DUPTABLE                         R12 K35 [{"LayoutOrder", "Position", "DominantAxis", "Style", "Stylizer"}]
      117 LOADN                            R13 2
      118 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      120 GETIMPORT                        R13 K38 [UDim2.new]
      122 LOADK                            R14 K39 [0.5]
      123 LOADN                            R15 0
      124 LOADN                            R16 1
      125 LOADN                            R17 0
      126 CALL                             R13 4 1
      127 SETTABLEKS                       R13 R12 K33 ["Position"]
      129 GETIMPORT                        R13 K41 [Enum.DominantAxis.Width]
      131 SETTABLEKS                       R13 R12 K34 ["DominantAxis"]
      133 GETTABLEKS                       R13 R5 K42 ["Separator"]
      135 SETTABLEKS                       R13 R12 K2 ["Style"]
      137 SETTABLEKS                       R5 R12 K6 ["Stylizer"]
      139 CALL                             R10 2 1
      140 SETTABLEKS                       R10 R9 K15 ["SeparatorView"]
      142 GETUPVAL                         R12 0
      143 GETTABLEKS                       R11 R12 K0 ["props"]
      145 GETTABLEKS                       R10 R11 K43 ["Tooltips"]
      147 JUMPIFNOT                        R10 ; [+21]
      148 GETUPVAL                         R13 0
      149 GETTABLEKS                       R12 R13 K0 ["props"]
      151 GETTABLEKS                       R11 R12 K43 ["Tooltips"]
      153 GETTABLE                         R10 R11 R1
      154 JUMPIFNOT                        R10 ; [+14]
      155 GETUPVAL                         R11 1
      156 GETTABLEKS                       R10 R11 K3 ["createElement"]
      158 GETUPVAL                         R11 5
      159 DUPTABLE                         R12 K44 [{"Text"}]
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R15 R16 K0 ["props"]
      163 GETTABLEKS                       R14 R15 K43 ["Tooltips"]
      165 GETTABLE                         R13 R14 R1
      166 SETTABLEKS                       R13 R12 K21 ["Text"]
      168 CALL                             R10 2 1
      169 SETTABLEKS                       R10 R9 K16 ["Tooltip"]
      171 CALL                             R6 3 -1
      172 RETURN                           R6 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"isOpen"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["isOpen"]
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"isOpen"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isOpen"]
        4 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"isOpen"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isOpen"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K3 ["onDropdownClick"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onAllDropdownClick"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 SETTABLEKS                       R1 R0 K5 ["onRenderItem"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K6 ["openMenu"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K7 ["closeMenu"]
       32 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R5 R1 K3 ["ShouldShowDropdownIcon"]
        8 NOT                              R4 R5
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETTABLEKS                       R5 R1 K4 ["HamburgerMenu"]
       12 NOT                              R4 R5
       13 LOADK                            R5 K5 [""]
       14 JUMPIFNOT                        R4 ; [+66]
       15 GETTABLEKS                       R6 R1 K6 ["NumDisplay"]
       17 JUMPIFNOTEQKN                    R6 K7 [0] ; [+8]
       19 LOADK                            R8 K8 ["Common"]
       20 LOADK                            R9 K9 ["None"]
       21 NAMECALL                         R6 R3 K10 ["getText"]
       23 CALL                             R6 3 1
       24 MOVE                             R5 R6
       25 JUMP                             ; [+55]
       26 GETTABLEKS                       R6 R1 K6 ["NumDisplay"]
       28 JUMPIFNOTEQKN                    R6 K11 [1] ; [+22]
       30 GETIMPORT                        R6 K13 [pairs]
       32 GETTABLEKS                       R7 R1 K14 ["KeyStates"]
       34 CALL                             R6 1 3
       35 FORGPREP_NEXT                    R6
       36 JUMPIFNOT                        R10 ; [+11]
       37 GETTABLEKS                       R13 R1 K15 ["Widget"]
       39 GETTABLEKS                       R16 R0 K0 ["props"]
       41 GETTABLEKS                       R15 R16 K16 ["KeyTexts"]
       43 GETTABLE                         R14 R15 R9
       44 NAMECALL                         R11 R3 K10 ["getText"]
       46 CALL                             R11 3 1
       47 MOVE                             R5 R11
       48 FORGLOOP                         R6 2 ; [-13]
       50 JUMP                             ; [+30]
       51 GETTABLEKS                       R6 R1 K6 ["NumDisplay"]
       53 GETTABLEKS                       R7 R1 K17 ["MaxDisplay"]
       55 JUMPIFNOTEQ                      R6 R7 ; [+13]
       57 GETTABLEKS                       R8 R1 K15 ["Widget"]
       59 GETTABLEKS                       R11 R0 K0 ["props"]
       61 GETTABLEKS                       R10 R11 K16 ["KeyTexts"]
       63 GETTABLEN                        R9 R10 1
       64 NAMECALL                         R6 R3 K10 ["getText"]
       66 CALL                             R6 3 1
       67 MOVE                             R5 R6
       68 JUMP                             ; [+12]
       69 GETTABLEKS                       R8 R1 K15 ["Widget"]
       71 LOADK                            R9 K18 ["DropdownFieldText"]
       72 DUPTABLE                         R10 K20 [{"NumFields"}]
       73 GETTABLEKS                       R11 R1 K6 ["NumDisplay"]
       75 SETTABLEKS                       R11 R10 K19 ["NumFields"]
       77 NAMECALL                         R6 R3 K10 ["getText"]
       79 CALL                             R6 4 1
       80 MOVE                             R5 R6
       81 JUMPIFNOT                        R4 ; [+3]
       82 GETTABLEKS                       R6 R1 K21 ["DropdownWidth"]
       84 JUMP                             ; [+3]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R6 R7 K22 ["BUTTON_SIZE"]
       88 NEWTABLE                         R7 0 0
       90 GETIMPORT                        R8 K24 [ipairs]
       92 GETTABLEKS                       R9 R1 K16 ["KeyTexts"]
       94 CALL                             R8 1 3
       95 FORGPREP_INEXT                   R8
       96 JUMPIFNOTEQKN                    R11 K11 [1] ; [+49]
       98 GETTABLEKS                       R18 R1 K16 ["KeyTexts"]
      100 GETTABLE                         R16 R18 R11
      101 GETTABLEKS                       R19 R1 K14 ["KeyStates"]
      103 GETIMPORT                        R21 K13 [pairs]
      105 MOVE                             R22 R19
      106 CALL                             R21 1 3
      107 FORGPREP_NEXT                    R21
      108 JUMPIF                           R25 ; [+2]
      109 LOADB                            R20 0
      110 JUMP                             ; [+3]
      111 FORGLOOP                         R21 2 ; [-4]
      113 LOADB                            R20 1
      114 JUMPIFNOT                        R20 ; [+2]
      115 LOADB                            R18 1
      116 JUMP                             ; [+17]
      117 GETIMPORT                        R21 K13 [pairs]
      119 MOVE                             R22 R19
      120 CALL                             R21 1 3
      121 FORGPREP_NEXT                    R21
      122 JUMPIFNOT                        R25 ; [+2]
      123 LOADB                            R20 1
      124 JUMP                             ; [+3]
      125 FORGLOOP                         R21 2 ; [-4]
      127 LOADB                            R20 0
      128 JUMPIFNOT                        R20 ; [+4]
      129 GETUPVAL                         R20 1
      130 GETTABLEKS                       R18 R20 K25 ["Indeterminate"]
      132 JUMP                             ; [+1]
      133 LOADB                            R18 0
      134 FASTCALL1                        TOSTRING R18 ; [+2]
      135 GETIMPORT                        R17 K27 [tostring]
      137 CALL                             R17 1 1
      138 CONCAT                           R15 R16 R17
      139 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      141 MOVE                             R14 R7
      142 GETIMPORT                        R13 K30 [table.insert]
      144 CALL                             R13 2 0
      145 JUMP                             ; [+17]
      146 GETTABLEKS                       R18 R1 K16 ["KeyTexts"]
      148 GETTABLE                         R16 R18 R11
      149 GETTABLEKS                       R19 R1 K14 ["KeyStates"]
      151 GETTABLE                         R18 R19 R11
      152 FASTCALL1                        TOSTRING R18 ; [+2]
      153 GETIMPORT                        R17 K27 [tostring]
      155 CALL                             R17 1 1
      156 CONCAT                           R15 R16 R17
      157 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      159 MOVE                             R14 R7
      160 GETIMPORT                        R13 K30 [table.insert]
      162 CALL                             R13 2 0
      163 FORGLOOP                         R8 2 [inext] ; [-68]
      165 GETUPVAL                         R9 2
      166 GETTABLEKS                       R8 R9 K31 ["createElement"]
      168 GETUPVAL                         R9 3
      169 DUPTABLE                         R10 K34 [{"Size", "LayoutOrder"}]
      170 GETIMPORT                        R11 K37 [UDim2.new]
      172 LOADN                            R12 0
      173 MOVE                             R13 R6
      174 LOADN                            R14 1
      175 LOADN                            R15 0
      176 CALL                             R11 4 1
      177 SETTABLEKS                       R11 R10 K32 ["Size"]
      179 GETTABLEKS                       R11 R1 K33 ["LayoutOrder"]
      181 SETTABLEKS                       R11 R10 K33 ["LayoutOrder"]
      183 DUPTABLE                         R11 K42 [{"IconView", "HamburgerIconView", "ButtonView", "DropdownView"}]
      184 GETTABLEKS                       R12 R1 K3 ["ShouldShowDropdownIcon"]
      186 JUMPIFNOT                        R12 ; [+30]
      187 GETUPVAL                         R13 2
      188 GETTABLEKS                       R12 R13 K31 ["createElement"]
      190 GETUPVAL                         R13 4
      191 DUPTABLE                         R14 K46 [{"Size", "LeftIcon", "TooltipText", "OnClick"}]
      192 GETIMPORT                        R15 K37 [UDim2.new]
      194 LOADN                            R16 0
      195 GETUPVAL                         R18 0
      196 GETTABLEKS                       R17 R18 K22 ["BUTTON_SIZE"]
      198 LOADN                            R18 0
      199 GETUPVAL                         R20 0
      200 GETTABLEKS                       R19 R20 K22 ["BUTTON_SIZE"]
      202 CALL                             R15 4 1
      203 SETTABLEKS                       R15 R14 K32 ["Size"]
      205 LOADK                            R15 K47 ["rbxasset://textures/Debugger/Breakpoints/filter.png"]
      206 SETTABLEKS                       R15 R14 K43 ["LeftIcon"]
      208 GETTABLEKS                       R15 R1 K48 ["Tooltip"]
      210 SETTABLEKS                       R15 R14 K44 ["TooltipText"]
      212 GETTABLEKS                       R15 R0 K49 ["openMenu"]
      214 SETTABLEKS                       R15 R14 K45 ["OnClick"]
      216 CALL                             R12 2 1
      217 SETTABLEKS                       R12 R11 K38 ["IconView"]
      219 GETTABLEKS                       R12 R1 K4 ["HamburgerMenu"]
      221 JUMPIFNOT                        R12 ; [+29]
      222 GETUPVAL                         R13 2
      223 GETTABLEKS                       R12 R13 K31 ["createElement"]
      225 GETUPVAL                         R13 4
      226 DUPTABLE                         R14 K51 [{"Size", "LeftIcon", "OnClick", "BackgroundStyle"}]
      227 GETIMPORT                        R15 K37 [UDim2.new]
      229 LOADN                            R16 0
      230 GETUPVAL                         R18 0
      231 GETTABLEKS                       R17 R18 K22 ["BUTTON_SIZE"]
      233 LOADN                            R18 0
      234 GETUPVAL                         R20 0
      235 GETTABLEKS                       R19 R20 K22 ["BUTTON_SIZE"]
      237 CALL                             R15 4 1
      238 SETTABLEKS                       R15 R14 K32 ["Size"]
      240 LOADK                            R15 K52 ["rbxasset://textures/Debugger/Breakpoints/MoreButton.png"]
      241 SETTABLEKS                       R15 R14 K43 ["LeftIcon"]
      243 GETTABLEKS                       R15 R0 K49 ["openMenu"]
      245 SETTABLEKS                       R15 R14 K45 ["OnClick"]
      247 LOADK                            R15 K53 ["Box"]
      248 SETTABLEKS                       R15 R14 K50 ["BackgroundStyle"]
      250 CALL                             R12 2 1
      251 SETTABLEKS                       R12 R11 K39 ["HamburgerIconView"]
      253 MOVE                             R12 R4
      254 JUMPIFNOT                        R12 ; [+38]
      255 GETUPVAL                         R13 2
      256 GETTABLEKS                       R12 R13 K31 ["createElement"]
      258 GETUPVAL                         R13 5
      259 DUPTABLE                         R14 K59 [{"Text", "TextSize", "Font", "Size", "Stylizer", "BorderSizePixel", "OnClick", "Tooltip"}]
      260 SETTABLEKS                       R5 R14 K54 ["Text"]
      262 GETTABLEKS                       R15 R2 K55 ["TextSize"]
      264 SETTABLEKS                       R15 R14 K55 ["TextSize"]
      266 GETTABLEKS                       R15 R2 K56 ["Font"]
      268 SETTABLEKS                       R15 R14 K56 ["Font"]
      270 GETIMPORT                        R15 K37 [UDim2.new]
      272 LOADN                            R16 1
      273 LOADN                            R17 0
      274 LOADN                            R18 1
      275 LOADN                            R19 0
      276 CALL                             R15 4 1
      277 SETTABLEKS                       R15 R14 K32 ["Size"]
      279 SETTABLEKS                       R2 R14 K57 ["Stylizer"]
      281 LOADN                            R15 0
      282 SETTABLEKS                       R15 R14 K58 ["BorderSizePixel"]
      284 GETTABLEKS                       R15 R0 K49 ["openMenu"]
      286 SETTABLEKS                       R15 R14 K45 ["OnClick"]
      288 GETTABLEKS                       R15 R1 K48 ["Tooltip"]
      290 SETTABLEKS                       R15 R14 K48 ["Tooltip"]
      292 CALL                             R12 2 1
      293 SETTABLEKS                       R12 R11 K40 ["ButtonView"]
      295 GETUPVAL                         R13 2
      296 GETTABLEKS                       R12 R13 K31 ["createElement"]
      298 GETUPVAL                         R13 6
      299 DUPTABLE                         R14 K65 [{"Width", "Hide", "Items", "OnFocusLost", "OnRenderItem", "Stylizer"}]
      300 GETTABLEKS                       R15 R1 K21 ["DropdownWidth"]
      302 SETTABLEKS                       R15 R14 K60 ["Width"]
      304 GETTABLEKS                       R17 R0 K66 ["state"]
      306 GETTABLEKS                       R16 R17 K67 ["isOpen"]
      308 NOT                              R15 R16
      309 SETTABLEKS                       R15 R14 K61 ["Hide"]
      311 SETTABLEKS                       R7 R14 K62 ["Items"]
      313 GETTABLEKS                       R15 R0 K68 ["closeMenu"]
      315 SETTABLEKS                       R15 R14 K63 ["OnFocusLost"]
      317 GETTABLEKS                       R15 R0 K69 ["onRenderItem"]
      319 SETTABLEKS                       R15 R14 K64 ["OnRenderItem"]
      321 SETTABLEKS                       R2 R14 K57 ["Stylizer"]
      323 CALL                             R12 2 1
      324 SETTABLEKS                       R12 R11 K41 ["DropdownView"]
      326 CALL                             R8 3 -1
      327 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Util"]
       38 GETTABLEKS                       R5 R6 K11 ["Constants"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K12 ["UI"]
       43 GETTABLEKS                       R6 R5 K13 ["Pane"]
       45 GETTABLEKS                       R7 R5 K14 ["DropdownMenu"]
       47 GETTABLEKS                       R8 R5 K15 ["Checkbox"]
       49 GETTABLEKS                       R9 R5 K16 ["Separator"]
       51 GETTABLEKS                       R10 R5 K17 ["Button"]
       53 GETTABLEKS                       R11 R5 K18 ["IconButton"]
       55 GETTABLEKS                       R12 R5 K19 ["Tooltip"]
       57 GETTABLEKS                       R13 R1 K20 ["PureComponent"]
       59 LOADK                            R15 K21 ["DropdownField"]
       60 NAMECALL                         R13 R13 K22 ["extend"]
       62 CALL                             R13 2 1
       63 DUPCLOSURE                       R14 K23 [PROTO_0]
       64 DUPCLOSURE                       R15 K24 [PROTO_1]
       65 DUPCLOSURE                       R16 K25 [PROTO_2]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R17 K26 [PROTO_10]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R12
       74 SETTABLEKS                       R17 R13 K27 ["init"]
       76 DUPCLOSURE                       R17 K28 [PROTO_11]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R7
       84 SETTABLEKS                       R17 R13 K29 ["render"]
       86 RETURN                           R13 1
