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
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K4 ["createElement"]
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R8 R9 K11 ["Popover"]
       32 GETTABLEKS                       R7 R8 K12 ["Root"]
       34 DUPTABLE                         R8 K14 [{"isOpen"}]
       35 GETTABLEKS                       R9 R0 K15 ["isPopoverOpen"]
       37 SETTABLEKS                       R9 R8 K13 ["isOpen"]
       39 DUPTABLE                         R9 K18 [{"Anchor", "Content"}]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R10 R11 K4 ["createElement"]
       43 GETUPVAL                         R13 3
       44 GETTABLEKS                       R12 R13 K11 ["Popover"]
       46 GETTABLEKS                       R11 R12 K16 ["Anchor"]
       48 NEWTABLE                         R12 0 0
       50 DUPTABLE                         R13 K20 [{"Dropdown"}]
       51 GETUPVAL                         R15 2
       52 GETTABLEKS                       R14 R15 K4 ["createElement"]
       54 GETUPVAL                         R16 3
       55 GETTABLEKS                       R15 R16 K5 ["View"]
       57 DUPTABLE                         R16 K24 [{"tag", "isDisabled", "Size", "onActivated"}]
       58 LOADK                            R17 K25 ["row align-y-center bg-shift-200 radius-small padding-x-small"]
       59 SETTABLEKS                       R17 R16 K6 ["tag"]
       61 GETTABLEKS                       R17 R0 K21 ["isDisabled"]
       63 SETTABLEKS                       R17 R16 K21 ["isDisabled"]
       65 GETTABLEKS                       R17 R0 K26 ["size"]
       67 SETTABLEKS                       R17 R16 K22 ["Size"]
       69 GETTABLEKS                       R17 R0 K23 ["onActivated"]
       71 SETTABLEKS                       R17 R16 K23 ["onActivated"]
       73 DUPTABLE                         R17 K29 [{"Text", "Arrow"}]
       74 GETUPVAL                         R19 2
       75 GETTABLEKS                       R18 R19 K4 ["createElement"]
       77 GETUPVAL                         R20 3
       78 GETTABLEKS                       R19 R20 K27 ["Text"]
       80 DUPTABLE                         R20 K30 [{"tag", "LayoutOrder", "Text"}]
       81 NEWTABLE                         R21 2 0
       83 LOADB                            R22 1
       84 SETTABLEKS                       R22 R21 K31 ["auto-xy fill text-body-small text-align-x-left text-truncate-split"]
       86 GETTABLEKS                       R22 R0 K21 ["isDisabled"]
       88 SETTABLEKS                       R22 R21 K32 ["content-muted"]
       90 SETTABLEKS                       R21 R20 K6 ["tag"]
       92 MOVE                             R21 R2
       93 CALL                             R21 0 1
       94 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
       96 GETTABLEKS                       R22 R0 K33 ["text"]
       98 JUMPIFNOTEQKNIL                  R22 ; [+9]
      100 LOADK                            R23 K34 ["Common"]
      101 LOADK                            R24 K35 ["AnimationEditor"]
      102 LOADK                            R25 K34 ["Common"]
      103 LOADK                            R26 K36 ["None"]
      104 NAMECALL                         R21 R1 K37 ["getExternalText"]
      106 CALL                             R21 5 1
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R21 R0 K33 ["text"]
      110 SETTABLEKS                       R21 R20 K27 ["Text"]
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K27 ["Text"]
      115 GETUPVAL                         R19 2
      116 GETTABLEKS                       R18 R19 K4 ["createElement"]
      118 GETUPVAL                         R20 3
      119 GETTABLEKS                       R19 R20 K38 ["Image"]
      121 DUPTABLE                         R20 K39 [{"tag", "LayoutOrder", "Image"}]
      122 NEWTABLE                         R21 2 0
      124 LOADB                            R22 1
      125 SETTABLEKS                       R22 R21 K40 ["size-400-400"]
      127 GETTABLEKS                       R22 R0 K21 ["isDisabled"]
      129 SETTABLEKS                       R22 R21 K32 ["content-muted"]
      131 SETTABLEKS                       R21 R20 K6 ["tag"]
      133 MOVE                             R21 R2
      134 CALL                             R21 0 1
      135 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      137 LOADK                            R21 K41 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"]
      138 SETTABLEKS                       R21 R20 K38 ["Image"]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K28 ["Arrow"]
      143 CALL                             R14 3 1
      144 SETTABLEKS                       R14 R13 K19 ["Dropdown"]
      146 CALL                             R10 3 1
      147 SETTABLEKS                       R10 R9 K16 ["Anchor"]
      149 GETUPVAL                         R11 2
      150 GETTABLEKS                       R10 R11 K4 ["createElement"]
      152 GETUPVAL                         R13 3
      153 GETTABLEKS                       R12 R13 K11 ["Popover"]
      155 GETTABLEKS                       R11 R12 K17 ["Content"]
      157 DUPTABLE                         R12 K46 [{"hasArrow", "onPressedOutside", "align", "side"}]
      158 LOADB                            R13 0
      159 SETTABLEKS                       R13 R12 K42 ["hasArrow"]
      161 GETTABLEKS                       R13 R0 K43 ["onPressedOutside"]
      163 SETTABLEKS                       R13 R12 K43 ["onPressedOutside"]
      165 DUPTABLE                         R13 K49 [{"position", "offset"}]
      166 GETUPVAL                         R17 3
      167 GETTABLEKS                       R16 R17 K50 ["Enums"]
      169 GETTABLEKS                       R15 R16 K51 ["PopoverAlign"]
      171 GETTABLEKS                       R14 R15 K52 ["Start"]
      173 SETTABLEKS                       R14 R13 K47 ["position"]
      175 LOADN                            R14 0
      176 SETTABLEKS                       R14 R13 K48 ["offset"]
      178 SETTABLEKS                       R13 R12 K44 ["align"]
      180 DUPTABLE                         R13 K49 [{"position", "offset"}]
      181 GETUPVAL                         R17 3
      182 GETTABLEKS                       R16 R17 K50 ["Enums"]
      184 GETTABLEKS                       R15 R16 K53 ["PopoverSide"]
      186 GETTABLEKS                       R14 R15 K54 ["Bottom"]
      188 SETTABLEKS                       R14 R13 K47 ["position"]
      190 LOADN                            R14 8
      191 SETTABLEKS                       R14 R13 K48 ["offset"]
      193 SETTABLEKS                       R13 R12 K45 ["side"]
      195 GETTABLEKS                       R14 R0 K15 ["isPopoverOpen"]
      197 JUMPIFNOT                        R14 ; [+3]
      198 GETTABLEKS                       R13 R0 K55 ["children"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R13
      202 CALL                             R10 3 1
      203 SETTABLEKS                       R10 R9 K17 ["Content"]
      205 CALL                             R6 3 -1
      206 CALL                             R3 -1 -1
      207 RETURN                           R3 -1

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
