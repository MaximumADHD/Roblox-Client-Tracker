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
       39 JUMPIFNOTEQKN                    R1 K23 [1] ; [+36]
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
       56 JUMP                             ; [+18]
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
       72 JUMP                             ; [+2]
       73 LOADB                            R13 0
       74 JUMP                             ; [0]
       75 JUMPIF                           R13 ; [+3]
       76 GETTABLEKS                       R14 R3 K24 ["KeyStates"]
       78 GETTABLE                         R13 R14 R1
       79 SETTABLEKS                       R13 R12 K19 ["Checked"]
       81 JUMPIFNOTEQKN                    R1 K23 [1] ; [+5]
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R13 R14 K28 ["onAllDropdownClick"]
       86 JUMPIF                           R13 ; [+3]
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R13 R14 K29 ["onDropdownClick"]
       90 SETTABLEKS                       R13 R12 K20 ["OnClick"]
       92 GETTABLEKS                       R15 R3 K30 ["Widget"]
       94 GETUPVAL                         R19 0
       95 GETTABLEKS                       R18 R19 K0 ["props"]
       97 GETTABLEKS                       R17 R18 K31 ["KeyTexts"]
       99 GETTABLE                         R16 R17 R1
      100 NAMECALL                         R13 R4 K32 ["getText"]
      102 CALL                             R13 3 1
      103 SETTABLEKS                       R13 R12 K21 ["Text"]
      105 SETTABLEKS                       R5 R12 K6 ["Stylizer"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K14 ["CheckboxView"]
      110 LOADB                            R10 0
      111 JUMPIFNOTEQKN                    R1 K23 [1] ; [+29]
      113 GETUPVAL                         R11 1
      114 GETTABLEKS                       R10 R11 K3 ["createElement"]
      116 GETUPVAL                         R11 4
      117 DUPTABLE                         R12 K35 [{"LayoutOrder", "Position", "DominantAxis", "Style", "Stylizer"}]
      118 LOADN                            R13 2
      119 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      121 GETIMPORT                        R13 K38 [UDim2.new]
      123 LOADK                            R14 K39 [0.5]
      124 LOADN                            R15 0
      125 LOADN                            R16 1
      126 LOADN                            R17 0
      127 CALL                             R13 4 1
      128 SETTABLEKS                       R13 R12 K33 ["Position"]
      130 GETIMPORT                        R13 K41 [Enum.DominantAxis.Width]
      132 SETTABLEKS                       R13 R12 K34 ["DominantAxis"]
      134 GETTABLEKS                       R13 R5 K42 ["Separator"]
      136 SETTABLEKS                       R13 R12 K2 ["Style"]
      138 SETTABLEKS                       R5 R12 K6 ["Stylizer"]
      140 CALL                             R10 2 1
      141 SETTABLEKS                       R10 R9 K15 ["SeparatorView"]
      143 GETUPVAL                         R12 0
      144 GETTABLEKS                       R11 R12 K0 ["props"]
      146 GETTABLEKS                       R10 R11 K43 ["Tooltips"]
      148 JUMPIFNOT                        R10 ; [+21]
      149 GETUPVAL                         R13 0
      150 GETTABLEKS                       R12 R13 K0 ["props"]
      152 GETTABLEKS                       R11 R12 K43 ["Tooltips"]
      154 GETTABLE                         R10 R11 R1
      155 JUMPIFNOT                        R10 ; [+14]
      156 GETUPVAL                         R11 1
      157 GETTABLEKS                       R10 R11 K3 ["createElement"]
      159 GETUPVAL                         R11 5
      160 DUPTABLE                         R12 K44 [{"Text"}]
      161 GETUPVAL                         R16 0
      162 GETTABLEKS                       R15 R16 K0 ["props"]
      164 GETTABLEKS                       R14 R15 K43 ["Tooltips"]
      166 GETTABLE                         R13 R14 R1
      167 SETTABLEKS                       R13 R12 K21 ["Text"]
      169 CALL                             R10 2 1
      170 SETTABLEKS                       R10 R9 K16 ["Tooltip"]
      172 CALL                             R6 3 -1
      173 RETURN                           R6 -1

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
       96 JUMPIFNOTEQKN                    R11 K11 [1] ; [+50]
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
      116 JUMP                             ; [+18]
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
      132 JUMP                             ; [+2]
      133 LOADB                            R18 0
      134 JUMP                             ; [0]
      135 FASTCALL1                        TOSTRING R18 ; [+2]
      136 GETIMPORT                        R17 K27 [tostring]
      138 CALL                             R17 1 1
      139 CONCAT                           R15 R16 R17
      140 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      142 MOVE                             R14 R7
      143 GETIMPORT                        R13 K30 [table.insert]
      145 CALL                             R13 2 0
      146 JUMP                             ; [+17]
      147 GETTABLEKS                       R18 R1 K16 ["KeyTexts"]
      149 GETTABLE                         R16 R18 R11
      150 GETTABLEKS                       R19 R1 K14 ["KeyStates"]
      152 GETTABLE                         R18 R19 R11
      153 FASTCALL1                        TOSTRING R18 ; [+2]
      154 GETIMPORT                        R17 K27 [tostring]
      156 CALL                             R17 1 1
      157 CONCAT                           R15 R16 R17
      158 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      160 MOVE                             R14 R7
      161 GETIMPORT                        R13 K30 [table.insert]
      163 CALL                             R13 2 0
      164 FORGLOOP                         R8 2 [inext] ; [-69]
      166 GETUPVAL                         R9 2
      167 GETTABLEKS                       R8 R9 K31 ["createElement"]
      169 GETUPVAL                         R9 3
      170 DUPTABLE                         R10 K34 [{"Size", "LayoutOrder"}]
      171 GETIMPORT                        R11 K37 [UDim2.new]
      173 LOADN                            R12 0
      174 MOVE                             R13 R6
      175 LOADN                            R14 1
      176 LOADN                            R15 0
      177 CALL                             R11 4 1
      178 SETTABLEKS                       R11 R10 K32 ["Size"]
      180 GETTABLEKS                       R11 R1 K33 ["LayoutOrder"]
      182 SETTABLEKS                       R11 R10 K33 ["LayoutOrder"]
      184 DUPTABLE                         R11 K42 [{"IconView", "HamburgerIconView", "ButtonView", "DropdownView"}]
      185 GETTABLEKS                       R12 R1 K3 ["ShouldShowDropdownIcon"]
      187 JUMPIFNOT                        R12 ; [+30]
      188 GETUPVAL                         R13 2
      189 GETTABLEKS                       R12 R13 K31 ["createElement"]
      191 GETUPVAL                         R13 4
      192 DUPTABLE                         R14 K46 [{"Size", "LeftIcon", "TooltipText", "OnClick"}]
      193 GETIMPORT                        R15 K37 [UDim2.new]
      195 LOADN                            R16 0
      196 GETUPVAL                         R18 0
      197 GETTABLEKS                       R17 R18 K22 ["BUTTON_SIZE"]
      199 LOADN                            R18 0
      200 GETUPVAL                         R20 0
      201 GETTABLEKS                       R19 R20 K22 ["BUTTON_SIZE"]
      203 CALL                             R15 4 1
      204 SETTABLEKS                       R15 R14 K32 ["Size"]
      206 LOADK                            R15 K47 ["rbxasset://textures/Debugger/Breakpoints/filter.png"]
      207 SETTABLEKS                       R15 R14 K43 ["LeftIcon"]
      209 GETTABLEKS                       R15 R1 K48 ["Tooltip"]
      211 SETTABLEKS                       R15 R14 K44 ["TooltipText"]
      213 GETTABLEKS                       R15 R0 K49 ["openMenu"]
      215 SETTABLEKS                       R15 R14 K45 ["OnClick"]
      217 CALL                             R12 2 1
      218 SETTABLEKS                       R12 R11 K38 ["IconView"]
      220 GETTABLEKS                       R12 R1 K4 ["HamburgerMenu"]
      222 JUMPIFNOT                        R12 ; [+29]
      223 GETUPVAL                         R13 2
      224 GETTABLEKS                       R12 R13 K31 ["createElement"]
      226 GETUPVAL                         R13 4
      227 DUPTABLE                         R14 K51 [{"Size", "LeftIcon", "OnClick", "BackgroundStyle"}]
      228 GETIMPORT                        R15 K37 [UDim2.new]
      230 LOADN                            R16 0
      231 GETUPVAL                         R18 0
      232 GETTABLEKS                       R17 R18 K22 ["BUTTON_SIZE"]
      234 LOADN                            R18 0
      235 GETUPVAL                         R20 0
      236 GETTABLEKS                       R19 R20 K22 ["BUTTON_SIZE"]
      238 CALL                             R15 4 1
      239 SETTABLEKS                       R15 R14 K32 ["Size"]
      241 LOADK                            R15 K52 ["rbxasset://textures/Debugger/Breakpoints/MoreButton.png"]
      242 SETTABLEKS                       R15 R14 K43 ["LeftIcon"]
      244 GETTABLEKS                       R15 R0 K49 ["openMenu"]
      246 SETTABLEKS                       R15 R14 K45 ["OnClick"]
      248 LOADK                            R15 K53 ["Box"]
      249 SETTABLEKS                       R15 R14 K50 ["BackgroundStyle"]
      251 CALL                             R12 2 1
      252 SETTABLEKS                       R12 R11 K39 ["HamburgerIconView"]
      254 MOVE                             R12 R4
      255 JUMPIFNOT                        R12 ; [+38]
      256 GETUPVAL                         R13 2
      257 GETTABLEKS                       R12 R13 K31 ["createElement"]
      259 GETUPVAL                         R13 5
      260 DUPTABLE                         R14 K59 [{"Text", "TextSize", "Font", "Size", "Stylizer", "BorderSizePixel", "OnClick", "Tooltip"}]
      261 SETTABLEKS                       R5 R14 K54 ["Text"]
      263 GETTABLEKS                       R15 R2 K55 ["TextSize"]
      265 SETTABLEKS                       R15 R14 K55 ["TextSize"]
      267 GETTABLEKS                       R15 R2 K56 ["Font"]
      269 SETTABLEKS                       R15 R14 K56 ["Font"]
      271 GETIMPORT                        R15 K37 [UDim2.new]
      273 LOADN                            R16 1
      274 LOADN                            R17 0
      275 LOADN                            R18 1
      276 LOADN                            R19 0
      277 CALL                             R15 4 1
      278 SETTABLEKS                       R15 R14 K32 ["Size"]
      280 SETTABLEKS                       R2 R14 K57 ["Stylizer"]
      282 LOADN                            R15 0
      283 SETTABLEKS                       R15 R14 K58 ["BorderSizePixel"]
      285 GETTABLEKS                       R15 R0 K49 ["openMenu"]
      287 SETTABLEKS                       R15 R14 K45 ["OnClick"]
      289 GETTABLEKS                       R15 R1 K48 ["Tooltip"]
      291 SETTABLEKS                       R15 R14 K48 ["Tooltip"]
      293 CALL                             R12 2 1
      294 SETTABLEKS                       R12 R11 K40 ["ButtonView"]
      296 GETUPVAL                         R13 2
      297 GETTABLEKS                       R12 R13 K31 ["createElement"]
      299 GETUPVAL                         R13 6
      300 DUPTABLE                         R14 K65 [{"Width", "Hide", "Items", "OnFocusLost", "OnRenderItem", "Stylizer"}]
      301 GETTABLEKS                       R15 R1 K21 ["DropdownWidth"]
      303 SETTABLEKS                       R15 R14 K60 ["Width"]
      305 GETTABLEKS                       R17 R0 K66 ["state"]
      307 GETTABLEKS                       R16 R17 K67 ["isOpen"]
      309 NOT                              R15 R16
      310 SETTABLEKS                       R15 R14 K61 ["Hide"]
      312 SETTABLEKS                       R7 R14 K62 ["Items"]
      314 GETTABLEKS                       R15 R0 K68 ["closeMenu"]
      316 SETTABLEKS                       R15 R14 K63 ["OnFocusLost"]
      318 GETTABLEKS                       R15 R0 K69 ["onRenderItem"]
      320 SETTABLEKS                       R15 R14 K64 ["OnRenderItem"]
      322 SETTABLEKS                       R2 R14 K57 ["Stylizer"]
      324 CALL                             R12 2 1
      325 SETTABLEKS                       R12 R11 K41 ["DropdownView"]
      327 CALL                             R8 3 -1
      328 RETURN                           R8 -1

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
