PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createNextOrder"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["createElement"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K5 ["View"]
       18 DUPTABLE                         R5 K9 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
       19 GETTABLEKS                       R6 R0 K10 ["layoutOrder"]
       21 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K4 ["createElement"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K11 ["Popover"]
       29 GETTABLEKS                       R7 R7 K12 ["Root"]
       31 DUPTABLE                         R8 K14 [{"isOpen"}]
       32 GETTABLEKS                       R9 R0 K15 ["isPopoverOpen"]
       34 SETTABLEKS                       R9 R8 K13 ["isOpen"]
       36 DUPTABLE                         R9 K18 [{"Anchor", "Content"}]
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K4 ["createElement"]
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R11 R11 K11 ["Popover"]
       43 GETTABLEKS                       R11 R11 K16 ["Anchor"]
       45 NEWTABLE                         R12 0 0
       47 DUPTABLE                         R13 K20 [{"Dropdown"}]
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R14 R14 K4 ["createElement"]
       51 GETUPVAL                         R15 3
       52 GETTABLEKS                       R15 R15 K5 ["View"]
       54 DUPTABLE                         R16 K25 [{["tag"] = "row align-y-center padding-x-small radius-small bg-shift-200", ["isDisabled"], ["Size"], ["onActivated"]}]
       55 GETTABLEKS                       R17 R0 K22 ["isDisabled"]
       57 SETTABLEKS                       R17 R16 K22 ["isDisabled"]
       59 GETTABLEKS                       R17 R0 K26 ["size"]
       61 SETTABLEKS                       R17 R16 K23 ["Size"]
       63 GETTABLEKS                       R17 R0 K24 ["onActivated"]
       65 SETTABLEKS                       R17 R16 K24 ["onActivated"]
       67 DUPTABLE                         R17 K29 [{"Text", "Arrow"}]
       68 GETUPVAL                         R18 2
       69 GETTABLEKS                       R18 R18 K4 ["createElement"]
       71 GETUPVAL                         R19 3
       72 GETTABLEKS                       R19 R19 K27 ["Text"]
       74 DUPTABLE                         R20 K30 [{"tag", "LayoutOrder", "Text"}]
       75 NEWTABLE                         R21 2 0
       77 LOADB                            R22 1
       78 SETTABLEKS                       R22 R21 K31 ["fill auto-xy text-body-small text-align-x-left text-truncate-split"]
       80 GETTABLEKS                       R22 R0 K22 ["isDisabled"]
       82 SETTABLEKS                       R22 R21 K32 ["content-muted"]
       84 SETTABLEKS                       R21 R20 K6 ["tag"]
       86 MOVE                             R21 R2
       87 CALL                             R21 0 1
       88 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
       90 GETTABLEKS                       R22 R0 K33 ["text"]
       92 JUMPIFNOTEQKNIL                  R22 ; [+9]
       94 LOADK                            R23 K34 ["Common"]
       95 LOADK                            R24 K35 ["AnimationEditor"]
       96 LOADK                            R25 K34 ["Common"]
       97 LOADK                            R26 K36 ["None"]
       98 NAMECALL                         R21 R1 K37 ["getExternalText"]
      100 CALL                             R21 5 1
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R21 R0 K33 ["text"]
      104 SETTABLEKS                       R21 R20 K27 ["Text"]
      106 CALL                             R18 2 1
      107 SETTABLEKS                       R18 R17 K27 ["Text"]
      109 GETUPVAL                         R18 2
      110 GETTABLEKS                       R18 R18 K4 ["createElement"]
      112 GETUPVAL                         R19 3
      113 GETTABLEKS                       R19 R19 K38 ["Image"]
      115 DUPTABLE                         R20 K40 [{["tag"], ["LayoutOrder"], ["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"}]
      116 NEWTABLE                         R21 2 0
      118 LOADB                            R22 1
      119 SETTABLEKS                       R22 R21 K41 ["size-400-400"]
      121 GETTABLEKS                       R22 R0 K22 ["isDisabled"]
      123 SETTABLEKS                       R22 R21 K32 ["content-muted"]
      125 SETTABLEKS                       R21 R20 K6 ["tag"]
      127 MOVE                             R21 R2
      128 CALL                             R21 0 1
      129 SETTABLEKS                       R21 R20 K8 ["LayoutOrder"]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K28 ["Arrow"]
      134 CALL                             R14 3 1
      135 SETTABLEKS                       R14 R13 K19 ["Dropdown"]
      137 CALL                             R10 3 1
      138 SETTABLEKS                       R10 R9 K16 ["Anchor"]
      140 GETUPVAL                         R10 2
      141 GETTABLEKS                       R10 R10 K4 ["createElement"]
      143 GETUPVAL                         R11 3
      144 GETTABLEKS                       R11 R11 K11 ["Popover"]
      146 GETTABLEKS                       R11 R11 K17 ["Content"]
      148 DUPTABLE                         R12 K47 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      149 GETTABLEKS                       R13 R0 K44 ["onPressedOutside"]
      151 SETTABLEKS                       R13 R12 K44 ["onPressedOutside"]
      153 DUPTABLE                         R13 K51 [{["position"], ["offset"] = 0}]
      154 GETUPVAL                         R14 3
      155 GETTABLEKS                       R14 R14 K52 ["Enums"]
      157 GETTABLEKS                       R14 R14 K53 ["PopoverAlign"]
      159 GETTABLEKS                       R14 R14 K54 ["Start"]
      161 SETTABLEKS                       R14 R13 K48 ["position"]
      163 SETTABLEKS                       R13 R12 K45 ["align"]
      165 DUPTABLE                         R13 K56 [{["position"], ["offset"] = 8}]
      166 GETUPVAL                         R14 3
      167 GETTABLEKS                       R14 R14 K52 ["Enums"]
      169 GETTABLEKS                       R14 R14 K57 ["PopoverSide"]
      171 GETTABLEKS                       R14 R14 K58 ["Bottom"]
      173 SETTABLEKS                       R14 R13 K48 ["position"]
      175 SETTABLEKS                       R13 R12 K46 ["side"]
      177 GETTABLEKS                       R14 R0 K15 ["isPopoverOpen"]
      179 JUMPIFNOT                        R14 ; [+3]
      180 GETTABLEKS                       R13 R0 K59 ["children"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R13
      184 CALL                             R10 3 1
      185 SETTABLEKS                       R10 R9 K17 ["Content"]
      187 CALL                             R6 3 -1
      188 CALL                             R3 -1 -1
      189 RETURN                           R3 -1

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
