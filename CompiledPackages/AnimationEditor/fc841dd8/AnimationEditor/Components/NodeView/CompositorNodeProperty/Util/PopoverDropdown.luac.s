PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["createNextOrder"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K4 ["createElement"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K5 ["View"]
       18 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder"}]
       19 LOADK                            R6 K9 ["auto-xy"]
       20 SETTABLEKS                       R6 R5 K6 ["tag"]
       22 GETTABLEKS                       R6 R0 K10 ["layoutOrder"]
       24 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       26 NEWTABLE                         R6 0 1
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R7 R8 K4 ["createElement"]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K11 ["Popover"]
       34 GETTABLEKS                       R8 R9 K12 ["Root"]
       36 DUPTABLE                         R9 K14 [{"isOpen"}]
       37 GETTABLEKS                       R10 R0 K15 ["isPopoverOpen"]
       39 SETTABLEKS                       R10 R9 K13 ["isOpen"]
       41 DUPTABLE                         R10 K18 [{"Anchor", "Content"}]
       42 GETUPVAL                         R12 2
       43 GETTABLEKS                       R11 R12 K4 ["createElement"]
       45 GETUPVAL                         R14 3
       46 GETTABLEKS                       R13 R14 K11 ["Popover"]
       48 GETTABLEKS                       R12 R13 K16 ["Anchor"]
       50 NEWTABLE                         R13 0 0
       52 DUPTABLE                         R14 K20 [{"Dropdown"}]
       53 GETUPVAL                         R16 2
       54 GETTABLEKS                       R15 R16 K4 ["createElement"]
       56 GETUPVAL                         R17 3
       57 GETTABLEKS                       R16 R17 K5 ["View"]
       59 DUPTABLE                         R17 K24 [{"tag", "isDisabled", "Size", "onActivated"}]
       60 LOADK                            R18 K25 ["row align-y-center bg-shift-200 radius-small padding-x-small"]
       61 SETTABLEKS                       R18 R17 K6 ["tag"]
       63 GETTABLEKS                       R18 R0 K21 ["isDisabled"]
       65 SETTABLEKS                       R18 R17 K21 ["isDisabled"]
       67 GETTABLEKS                       R18 R0 K26 ["size"]
       69 SETTABLEKS                       R18 R17 K22 ["Size"]
       71 GETTABLEKS                       R18 R0 K23 ["onActivated"]
       73 SETTABLEKS                       R18 R17 K23 ["onActivated"]
       75 DUPTABLE                         R18 K29 [{"Text", "Arrow"}]
       76 GETUPVAL                         R20 2
       77 GETTABLEKS                       R19 R20 K4 ["createElement"]
       79 GETUPVAL                         R21 3
       80 GETTABLEKS                       R20 R21 K27 ["Text"]
       82 DUPTABLE                         R21 K30 [{"tag", "LayoutOrder", "Text"}]
       83 NEWTABLE                         R22 2 0
       85 LOADB                            R23 1
       86 SETTABLEKS                       R23 R22 K31 ["auto-xy fill text-body-small text-align-x-left text-truncate-split"]
       88 GETTABLEKS                       R23 R0 K21 ["isDisabled"]
       90 SETTABLEKS                       R23 R22 K32 ["content-muted"]
       92 SETTABLEKS                       R22 R21 K6 ["tag"]
       94 MOVE                             R22 R2
       95 CALL                             R22 0 1
       96 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
       98 GETTABLEKS                       R23 R0 K33 ["text"]
      100 JUMPIFNOTEQKNIL                  R23 ; [+9]
      102 LOADK                            R24 K34 ["Common"]
      103 LOADK                            R25 K35 ["AnimationEditor"]
      104 LOADK                            R26 K34 ["Common"]
      105 LOADK                            R27 K36 ["None"]
      106 NAMECALL                         R22 R1 K37 ["getExternalText"]
      108 CALL                             R22 5 1
      109 JUMP                             ; [+2]
      110 GETTABLEKS                       R22 R0 K33 ["text"]
      112 SETTABLEKS                       R22 R21 K27 ["Text"]
      114 CALL                             R19 2 1
      115 SETTABLEKS                       R19 R18 K27 ["Text"]
      117 GETUPVAL                         R20 2
      118 GETTABLEKS                       R19 R20 K4 ["createElement"]
      120 GETUPVAL                         R21 3
      121 GETTABLEKS                       R20 R21 K38 ["Image"]
      123 DUPTABLE                         R21 K39 [{"tag", "LayoutOrder", "Image"}]
      124 NEWTABLE                         R22 2 0
      126 LOADB                            R23 1
      127 SETTABLEKS                       R23 R22 K40 ["size-400-400"]
      129 GETTABLEKS                       R23 R0 K21 ["isDisabled"]
      131 SETTABLEKS                       R23 R22 K32 ["content-muted"]
      133 SETTABLEKS                       R22 R21 K6 ["tag"]
      135 MOVE                             R22 R2
      136 CALL                             R22 0 1
      137 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      139 LOADK                            R22 K41 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"]
      140 SETTABLEKS                       R22 R21 K38 ["Image"]
      142 CALL                             R19 2 1
      143 SETTABLEKS                       R19 R18 K28 ["Arrow"]
      145 CALL                             R15 3 1
      146 SETTABLEKS                       R15 R14 K19 ["Dropdown"]
      148 CALL                             R11 3 1
      149 SETTABLEKS                       R11 R10 K16 ["Anchor"]
      151 GETUPVAL                         R12 2
      152 GETTABLEKS                       R11 R12 K4 ["createElement"]
      154 GETUPVAL                         R14 3
      155 GETTABLEKS                       R13 R14 K11 ["Popover"]
      157 GETTABLEKS                       R12 R13 K17 ["Content"]
      159 DUPTABLE                         R13 K46 [{"hasArrow", "onPressedOutside", "align", "side"}]
      160 LOADB                            R14 0
      161 SETTABLEKS                       R14 R13 K42 ["hasArrow"]
      163 GETTABLEKS                       R14 R0 K43 ["onPressedOutside"]
      165 SETTABLEKS                       R14 R13 K43 ["onPressedOutside"]
      167 DUPTABLE                         R14 K49 [{"position", "offset"}]
      168 GETUPVAL                         R18 3
      169 GETTABLEKS                       R17 R18 K50 ["Enums"]
      171 GETTABLEKS                       R16 R17 K51 ["PopoverAlign"]
      173 GETTABLEKS                       R15 R16 K52 ["Start"]
      175 SETTABLEKS                       R15 R14 K47 ["position"]
      177 LOADN                            R15 0
      178 SETTABLEKS                       R15 R14 K48 ["offset"]
      180 SETTABLEKS                       R14 R13 K44 ["align"]
      182 DUPTABLE                         R14 K49 [{"position", "offset"}]
      183 GETUPVAL                         R18 3
      184 GETTABLEKS                       R17 R18 K50 ["Enums"]
      186 GETTABLEKS                       R16 R17 K53 ["PopoverSide"]
      188 GETTABLEKS                       R15 R16 K54 ["Bottom"]
      190 SETTABLEKS                       R15 R14 K47 ["position"]
      192 LOADN                            R15 8
      193 SETTABLEKS                       R15 R14 K48 ["offset"]
      195 SETTABLEKS                       R14 R13 K45 ["side"]
      197 GETTABLEKS                       R15 R0 K15 ["isPopoverOpen"]
      199 JUMPIFNOT                        R15 ; [+3]
      200 GETTABLEKS                       R14 R0 K55 ["children"]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R14
      204 CALL                             R11 3 1
      205 SETTABLEKS                       R11 R10 K17 ["Content"]
      207 CALL                             R7 3 -1
      208 SETLIST                          R6 R7 -1 [1]
      210 CALL                             R3 3 -1
      211 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K11 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 RETURN                           R6 1
