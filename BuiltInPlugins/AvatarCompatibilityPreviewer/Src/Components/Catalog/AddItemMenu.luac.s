PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onAddSelectedInstances"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onAddFromAssetId"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R5 0 2
       15 GETTABLEKS                       R6 R0 K3 ["onAddSelectedInstances"]
       17 GETTABLEKS                       R7 R0 K4 ["onClose"]
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R6 0 2
       29 GETTABLEKS                       R7 R0 K5 ["onAddFromAssetId"]
       31 GETTABLEKS                       R8 R0 K4 ["onClose"]
       33 SETLIST                          R6 R7 2 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R5 R6 K6 ["createElement"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R6 R7 K7 ["Root"]
       42 DUPTABLE                         R7 K9 [{"isOpen"}]
       43 GETTABLEKS                       R8 R0 K8 ["isOpen"]
       45 SETTABLEKS                       R8 R7 K8 ["isOpen"]
       47 DUPTABLE                         R8 K12 [{"Anchor", "Content"}]
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R9 R10 K6 ["createElement"]
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R10 R11 K10 ["Anchor"]
       54 DUPTABLE                         R11 K15 [{"LayoutOrder", "Size"}]
       55 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       57 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       59 GETTABLEKS                       R12 R0 K16 ["anchorSize"]
       61 SETTABLEKS                       R12 R11 K14 ["Size"]
       63 DUPTABLE                         R12 K18 [{"AnchorContent"}]
       64 GETTABLEKS                       R13 R0 K19 ["anchor"]
       66 SETTABLEKS                       R13 R12 K17 ["AnchorContent"]
       68 CALL                             R9 3 1
       69 SETTABLEKS                       R9 R8 K10 ["Anchor"]
       71 GETUPVAL                         R10 2
       72 GETTABLEKS                       R9 R10 K6 ["createElement"]
       74 GETUPVAL                         R11 3
       75 GETTABLEKS                       R10 R11 K11 ["Content"]
       77 DUPTABLE                         R11 K24 [{"hasArrow", "side", "align", "onPressedOutside"}]
       78 LOADB                            R12 0
       79 SETTABLEKS                       R12 R11 K20 ["hasArrow"]
       81 GETUPVAL                         R13 4
       82 GETTABLEKS                       R12 R13 K25 ["Top"]
       84 SETTABLEKS                       R12 R11 K21 ["side"]
       86 GETUPVAL                         R13 5
       87 GETTABLEKS                       R12 R13 K26 ["Start"]
       89 SETTABLEKS                       R12 R11 K22 ["align"]
       91 GETTABLEKS                       R12 R0 K4 ["onClose"]
       93 SETTABLEKS                       R12 R11 K23 ["onPressedOutside"]
       95 DUPTABLE                         R12 K28 [{"MenuList"}]
       96 GETUPVAL                         R14 2
       97 GETTABLEKS                       R13 R14 K6 ["createElement"]
       99 GETUPVAL                         R14 6
      100 DUPTABLE                         R15 K30 [{"Size", "tag"}]
      101 GETIMPORT                        R16 K33 [UDim2.fromOffset]
      103 LOADN                            R17 4
      104 LOADN                            R18 0
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K14 ["Size"]
      108 LOADK                            R16 K34 ["col padding-xsmall gap-xxsmall auto-y bg-surface-300 radius-medium stroke-default"]
      109 SETTABLEKS                       R16 R15 K29 ["tag"]
      111 DUPTABLE                         R16 K38 [{"MenuTitle", "SelectedInstancesOption", "AssetIdOption"}]
      112 GETUPVAL                         R18 2
      113 GETTABLEKS                       R17 R18 K6 ["createElement"]
      115 GETUPVAL                         R18 6
      116 DUPTABLE                         R19 K39 [{"tag", "LayoutOrder"}]
      117 LOADK                            R20 K40 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      118 SETTABLEKS                       R20 R19 K29 ["tag"]
      120 NAMECALL                         R20 R2 K41 ["getNextOrder"]
      122 CALL                             R20 1 1
      123 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      125 DUPTABLE                         R20 K43 [{"Label"}]
      126 GETUPVAL                         R22 2
      127 GETTABLEKS                       R21 R22 K6 ["createElement"]
      129 GETUPVAL                         R22 7
      130 DUPTABLE                         R23 K45 [{"Text", "tag"}]
      131 LOADK                            R26 K46 ["AddItems"]
      132 LOADK                            R27 K47 ["AddContentFromLabel"]
      133 NAMECALL                         R24 R1 K48 ["getText"]
      135 CALL                             R24 3 1
      136 SETTABLEKS                       R24 R23 K44 ["Text"]
      138 LOADK                            R24 K49 ["text-caption-small auto-xy content-default"]
      139 SETTABLEKS                       R24 R23 K29 ["tag"]
      141 CALL                             R21 2 1
      142 SETTABLEKS                       R21 R20 K42 ["Label"]
      144 CALL                             R17 3 1
      145 SETTABLEKS                       R17 R16 K35 ["MenuTitle"]
      147 GETUPVAL                         R18 2
      148 GETTABLEKS                       R17 R18 K6 ["createElement"]
      150 GETUPVAL                         R18 6
      151 DUPTABLE                         R19 K51 [{"tag", "LayoutOrder", "onActivated"}]
      152 LOADK                            R20 K40 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      153 SETTABLEKS                       R20 R19 K29 ["tag"]
      155 NAMECALL                         R20 R2 K41 ["getNextOrder"]
      157 CALL                             R20 1 1
      158 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      160 GETTABLEKS                       R21 R0 K52 ["validInstancesSelected"]
      162 JUMPIFNOT                        R21 ; [+2]
      163 MOVE                             R20 R3
      164 JUMP                             ; [+1]
      165 LOADNIL                          R20
      166 SETTABLEKS                       R20 R19 K50 ["onActivated"]
      168 DUPTABLE                         R20 K43 [{"Label"}]
      169 GETTABLEKS                       R22 R0 K52 ["validInstancesSelected"]
      171 JUMPIFNOT                        R22 ; [+17]
      172 GETUPVAL                         R22 2
      173 GETTABLEKS                       R21 R22 K6 ["createElement"]
      175 GETUPVAL                         R22 7
      176 DUPTABLE                         R23 K45 [{"Text", "tag"}]
      177 LOADK                            R26 K46 ["AddItems"]
      178 LOADK                            R27 K53 ["SelectedInstancesLabel"]
      179 NAMECALL                         R24 R1 K48 ["getText"]
      181 CALL                             R24 3 1
      182 SETTABLEKS                       R24 R23 K44 ["Text"]
      184 LOADK                            R24 K54 ["text-body-small auto-xy content-emphasis"]
      185 SETTABLEKS                       R24 R23 K29 ["tag"]
      187 CALL                             R21 2 1
      188 JUMP                             ; [+46]
      189 GETUPVAL                         R22 2
      190 GETTABLEKS                       R21 R22 K6 ["createElement"]
      192 GETUPVAL                         R22 8
      193 DUPTABLE                         R23 K57 [{"title", "text", "side", "align"}]
      194 LOADK                            R26 K46 ["AddItems"]
      195 LOADK                            R27 K58 ["FailedTitle"]
      196 NAMECALL                         R24 R1 K48 ["getText"]
      198 CALL                             R24 3 1
      199 SETTABLEKS                       R24 R23 K55 ["title"]
      201 LOADK                            R26 K46 ["AddItems"]
      202 LOADK                            R27 K59 ["FailedAddHint"]
      203 NAMECALL                         R24 R1 K48 ["getText"]
      205 CALL                             R24 3 1
      206 SETTABLEKS                       R24 R23 K56 ["text"]
      208 GETUPVAL                         R25 4
      209 GETTABLEKS                       R24 R25 K60 ["Right"]
      211 SETTABLEKS                       R24 R23 K21 ["side"]
      213 GETUPVAL                         R25 5
      214 GETTABLEKS                       R24 R25 K26 ["Start"]
      216 SETTABLEKS                       R24 R23 K22 ["align"]
      218 GETUPVAL                         R25 2
      219 GETTABLEKS                       R24 R25 K6 ["createElement"]
      221 GETUPVAL                         R25 7
      222 DUPTABLE                         R26 K45 [{"Text", "tag"}]
      223 LOADK                            R29 K46 ["AddItems"]
      224 LOADK                            R30 K53 ["SelectedInstancesLabel"]
      225 NAMECALL                         R27 R1 K48 ["getText"]
      227 CALL                             R27 3 1
      228 SETTABLEKS                       R27 R26 K44 ["Text"]
      230 LOADK                            R27 K61 ["text-body-small auto-xy content-muted"]
      231 SETTABLEKS                       R27 R26 K29 ["tag"]
      233 CALL                             R24 2 -1
      234 CALL                             R21 -1 1
      235 SETTABLEKS                       R21 R20 K42 ["Label"]
      237 CALL                             R17 3 1
      238 SETTABLEKS                       R17 R16 K36 ["SelectedInstancesOption"]
      240 GETUPVAL                         R18 2
      241 GETTABLEKS                       R17 R18 K6 ["createElement"]
      243 GETUPVAL                         R18 6
      244 DUPTABLE                         R19 K51 [{"tag", "LayoutOrder", "onActivated"}]
      245 LOADK                            R20 K40 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      246 SETTABLEKS                       R20 R19 K29 ["tag"]
      248 NAMECALL                         R20 R2 K41 ["getNextOrder"]
      250 CALL                             R20 1 1
      251 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      253 SETTABLEKS                       R4 R19 K50 ["onActivated"]
      255 DUPTABLE                         R20 K43 [{"Label"}]
      256 GETUPVAL                         R22 2
      257 GETTABLEKS                       R21 R22 K6 ["createElement"]
      259 GETUPVAL                         R22 7
      260 DUPTABLE                         R23 K45 [{"Text", "tag"}]
      261 LOADK                            R26 K46 ["AddItems"]
      262 LOADK                            R27 K62 ["AssetIDLabel"]
      263 NAMECALL                         R24 R1 K48 ["getText"]
      265 CALL                             R24 3 1
      266 SETTABLEKS                       R24 R23 K44 ["Text"]
      268 LOADK                            R24 K54 ["text-body-small auto-xy content-emphasis"]
      269 SETTABLEKS                       R24 R23 K29 ["tag"]
      271 CALL                             R21 2 1
      272 SETTABLEKS                       R21 R20 K42 ["Label"]
      274 CALL                             R17 3 1
      275 SETTABLEKS                       R17 R16 K37 ["AssetIdOption"]
      277 CALL                             R13 3 1
      278 SETTABLEKS                       R13 R12 K27 ["MenuList"]
      280 CALL                             R9 3 1
      281 SETTABLEKS                       R9 R8 K11 ["Content"]
      283 CALL                             R5 3 -1
      284 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Popover"]
       16 GETTABLEKS                       R3 R1 K9 ["Text"]
       18 GETTABLEKS                       R4 R1 K10 ["Tooltip"]
       20 GETTABLEKS                       R5 R1 K11 ["View"]
       22 GETTABLEKS                       R7 R1 K12 ["Enums"]
       24 GETTABLEKS                       R6 R7 K13 ["PopoverSide"]
       26 GETTABLEKS                       R8 R1 K12 ["Enums"]
       28 GETTABLEKS                       R7 R8 K14 ["PopoverAlign"]
       30 GETIMPORT                        R8 K5 [require]
       32 GETTABLEKS                       R10 R0 K6 ["Packages"]
       34 GETTABLEKS                       R9 R10 K15 ["Framework"]
       36 CALL                             R8 1 1
       37 GETTABLEKS                       R10 R8 K16 ["ContextServices"]
       39 GETTABLEKS                       R9 R10 K17 ["Localization"]
       41 GETTABLEKS                       R11 R8 K18 ["Util"]
       43 GETTABLEKS                       R10 R11 K19 ["LayoutOrderIterator"]
       45 GETIMPORT                        R11 K5 [require]
       47 GETTABLEKS                       R13 R0 K6 ["Packages"]
       49 GETTABLEKS                       R12 R13 K20 ["React"]
       51 CALL                             R11 1 1
       52 DUPCLOSURE                       R12 K21 [PROTO_2]
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 RETURN                           R12 1
