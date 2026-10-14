PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createNextOrder"]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R4 R0 K4 ["size"]
       14 GETTABLEKS                       R4 R4 K5 ["X"]
       16 GETTABLEKS                       R4 R4 K6 ["Scale"]
       18 LOADN                            R5 0
       19 JUMPIFLT                         R5 R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["useRef"]
       26 LOADNIL                          R5
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K8 ["createElement"]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K9 ["View"]
       34 DUPTABLE                         R7 K17 [{["tag"], ["isDisabled"], ["Size"], ["onActivated"], ["testId"] = "PopoverDropdown", ["ref"]}]
       35 JUMPIFNOT                        R3 ; [+2]
       36 LOADK                            R8 K18 ["fill row align-y-center padding-x-small radius-small bg-shift-200"]
       37 JUMP                             ; [+1]
       38 LOADK                            R8 K19 ["row align-y-center padding-x-small radius-small bg-shift-200"]
       39 SETTABLEKS                       R8 R7 K10 ["tag"]
       41 GETTABLEKS                       R8 R0 K11 ["isDisabled"]
       43 SETTABLEKS                       R8 R7 K11 ["isDisabled"]
       45 JUMPIFNOT                        R3 ; [+13]
       46 GETIMPORT                        R8 K22 [UDim2.new]
       48 LOADN                            R9 1
       49 LOADN                            R10 0
       50 LOADN                            R11 0
       51 GETTABLEKS                       R12 R0 K4 ["size"]
       53 GETTABLEKS                       R12 R12 K23 ["Y"]
       55 GETTABLEKS                       R12 R12 K24 ["Offset"]
       57 CALL                             R8 4 1
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R8 R0 K4 ["size"]
       61 SETTABLEKS                       R8 R7 K12 ["Size"]
       63 GETTABLEKS                       R8 R0 K13 ["onActivated"]
       65 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       67 JUMPIFNOT                        R3 ; [+2]
       68 MOVE                             R8 R4
       69 JUMP                             ; [+1]
       70 LOADNIL                          R8
       71 SETTABLEKS                       R8 R7 K16 ["ref"]
       73 DUPTABLE                         R8 K27 [{"Text", "Arrow"}]
       74 GETUPVAL                         R9 2
       75 GETTABLEKS                       R9 R9 K8 ["createElement"]
       77 GETUPVAL                         R10 3
       78 GETTABLEKS                       R10 R10 K25 ["Text"]
       80 DUPTABLE                         R11 K29 [{"tag", "LayoutOrder", "Text"}]
       81 NEWTABLE                         R12 2 0
       83 LOADB                            R13 1
       84 SETTABLEKS                       R13 R12 K30 ["fill auto-xy text-body-small text-align-x-left text-truncate-split"]
       86 GETTABLEKS                       R13 R0 K11 ["isDisabled"]
       88 SETTABLEKS                       R13 R12 K31 ["content-muted"]
       90 SETTABLEKS                       R12 R11 K10 ["tag"]
       92 MOVE                             R12 R2
       93 CALL                             R12 0 1
       94 SETTABLEKS                       R12 R11 K28 ["LayoutOrder"]
       96 GETTABLEKS                       R13 R0 K32 ["text"]
       98 JUMPIFNOTEQKNIL                  R13 ; [+9]
      100 LOADK                            R14 K33 ["Common"]
      101 LOADK                            R15 K34 ["AnimationEditor"]
      102 LOADK                            R16 K33 ["Common"]
      103 LOADK                            R17 K35 ["None"]
      104 NAMECALL                         R12 R1 K36 ["getExternalText"]
      106 CALL                             R12 5 1
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R12 R0 K32 ["text"]
      110 SETTABLEKS                       R12 R11 K25 ["Text"]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K25 ["Text"]
      115 GETUPVAL                         R9 2
      116 GETTABLEKS                       R9 R9 K8 ["createElement"]
      118 GETUPVAL                         R10 3
      119 GETTABLEKS                       R10 R10 K37 ["Image"]
      121 DUPTABLE                         R11 K39 [{["tag"], ["LayoutOrder"], ["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"}]
      122 NEWTABLE                         R12 2 0
      124 LOADB                            R13 1
      125 SETTABLEKS                       R13 R12 K40 ["size-400-400"]
      127 GETTABLEKS                       R13 R0 K11 ["isDisabled"]
      129 SETTABLEKS                       R13 R12 K31 ["content-muted"]
      131 SETTABLEKS                       R12 R11 K10 ["tag"]
      133 MOVE                             R12 R2
      134 CALL                             R12 0 1
      135 SETTABLEKS                       R12 R11 K28 ["LayoutOrder"]
      137 CALL                             R9 2 1
      138 SETTABLEKS                       R9 R8 K26 ["Arrow"]
      140 CALL                             R5 3 1
      141 GETUPVAL                         R6 2
      142 GETTABLEKS                       R6 R6 K8 ["createElement"]
      144 GETUPVAL                         R7 3
      145 GETTABLEKS                       R7 R7 K41 ["Popover"]
      147 GETTABLEKS                       R7 R7 K42 ["Content"]
      149 DUPTABLE                         R8 K48 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      150 GETTABLEKS                       R9 R0 K45 ["onPressedOutside"]
      152 SETTABLEKS                       R9 R8 K45 ["onPressedOutside"]
      154 DUPTABLE                         R9 K52 [{["position"], ["offset"] = 0}]
      155 GETUPVAL                         R10 3
      156 GETTABLEKS                       R10 R10 K53 ["Enums"]
      158 GETTABLEKS                       R10 R10 K54 ["PopoverAlign"]
      160 GETTABLEKS                       R10 R10 K55 ["Start"]
      162 SETTABLEKS                       R10 R9 K49 ["position"]
      164 SETTABLEKS                       R9 R8 K46 ["align"]
      166 DUPTABLE                         R9 K57 [{["position"], ["offset"] = 8}]
      167 GETUPVAL                         R10 3
      168 GETTABLEKS                       R10 R10 K53 ["Enums"]
      170 GETTABLEKS                       R10 R10 K58 ["PopoverSide"]
      172 GETTABLEKS                       R10 R10 K59 ["Bottom"]
      174 SETTABLEKS                       R10 R9 K49 ["position"]
      176 SETTABLEKS                       R9 R8 K47 ["side"]
      178 GETTABLEKS                       R10 R0 K60 ["isPopoverOpen"]
      180 JUMPIFNOT                        R10 ; [+3]
      181 GETTABLEKS                       R9 R0 K61 ["children"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R9
      185 CALL                             R6 3 1
      186 JUMPIFNOT                        R3 ; [+49]
      187 GETUPVAL                         R7 2
      188 GETTABLEKS                       R7 R7 K8 ["createElement"]
      190 GETUPVAL                         R8 3
      191 GETTABLEKS                       R8 R8 K9 ["View"]
      193 DUPTABLE                         R9 K63 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["LayoutOrder"]}]
      194 GETTABLEKS                       R10 R0 K64 ["layoutOrder"]
      196 SETTABLEKS                       R10 R9 K28 ["LayoutOrder"]
      198 DUPTABLE                         R10 K66 [{"Box", "Popover"}]
      199 SETTABLEKS                       R5 R10 K65 ["Box"]
      201 GETUPVAL                         R11 2
      202 GETTABLEKS                       R11 R11 K8 ["createElement"]
      204 GETUPVAL                         R12 3
      205 GETTABLEKS                       R12 R12 K41 ["Popover"]
      207 GETTABLEKS                       R12 R12 K67 ["Root"]
      209 DUPTABLE                         R13 K69 [{"isOpen"}]
      210 GETTABLEKS                       R14 R0 K60 ["isPopoverOpen"]
      212 SETTABLEKS                       R14 R13 K68 ["isOpen"]
      214 DUPTABLE                         R14 K71 [{"Anchor", "Content"}]
      215 GETUPVAL                         R15 2
      216 GETTABLEKS                       R15 R15 K8 ["createElement"]
      218 GETUPVAL                         R16 3
      219 GETTABLEKS                       R16 R16 K41 ["Popover"]
      221 GETTABLEKS                       R16 R16 K70 ["Anchor"]
      223 DUPTABLE                         R17 K73 [{"anchorRef"}]
      224 SETTABLEKS                       R4 R17 K72 ["anchorRef"]
      226 CALL                             R15 2 1
      227 SETTABLEKS                       R15 R14 K70 ["Anchor"]
      229 SETTABLEKS                       R6 R14 K42 ["Content"]
      231 CALL                             R11 3 1
      232 SETTABLEKS                       R11 R10 K41 ["Popover"]
      234 CALL                             R7 3 -1
      235 RETURN                           R7 -1
      236 GETUPVAL                         R7 2
      237 GETTABLEKS                       R7 R7 K8 ["createElement"]
      239 GETUPVAL                         R8 3
      240 GETTABLEKS                       R8 R8 K9 ["View"]
      242 DUPTABLE                         R9 K75 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      243 GETTABLEKS                       R10 R0 K64 ["layoutOrder"]
      245 SETTABLEKS                       R10 R9 K28 ["LayoutOrder"]
      247 GETUPVAL                         R10 2
      248 GETTABLEKS                       R10 R10 K8 ["createElement"]
      250 GETUPVAL                         R11 3
      251 GETTABLEKS                       R11 R11 K41 ["Popover"]
      253 GETTABLEKS                       R11 R11 K67 ["Root"]
      255 DUPTABLE                         R12 K69 [{"isOpen"}]
      256 GETTABLEKS                       R13 R0 K60 ["isPopoverOpen"]
      258 SETTABLEKS                       R13 R12 K68 ["isOpen"]
      260 DUPTABLE                         R13 K71 [{"Anchor", "Content"}]
      261 GETUPVAL                         R14 2
      262 GETTABLEKS                       R14 R14 K8 ["createElement"]
      264 GETUPVAL                         R15 3
      265 GETTABLEKS                       R15 R15 K41 ["Popover"]
      267 GETTABLEKS                       R15 R15 K70 ["Anchor"]
      269 NEWTABLE                         R16 0 0
      271 DUPTABLE                         R17 K77 [{"Dropdown"}]
      272 SETTABLEKS                       R5 R17 K76 ["Dropdown"]
      274 CALL                             R14 3 1
      275 SETTABLEKS                       R14 R13 K70 ["Anchor"]
      277 SETTABLEKS                       R6 R13 K42 ["Content"]
      279 CALL                             R10 3 -1
      280 CALL                             R7 -1 -1
      281 RETURN                           R7 -1

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
