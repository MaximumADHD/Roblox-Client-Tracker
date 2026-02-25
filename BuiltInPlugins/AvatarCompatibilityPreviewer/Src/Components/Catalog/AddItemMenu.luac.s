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
       54 DUPTABLE                         R11 K14 [{"LayoutOrder"}]
       55 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       57 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       59 DUPTABLE                         R12 K16 [{"AnchorContent"}]
       60 GETTABLEKS                       R13 R0 K17 ["anchor"]
       62 SETTABLEKS                       R13 R12 K15 ["AnchorContent"]
       64 CALL                             R9 3 1
       65 SETTABLEKS                       R9 R8 K10 ["Anchor"]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R9 R10 K6 ["createElement"]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R10 R11 K11 ["Content"]
       73 DUPTABLE                         R11 K22 [{"hasArrow", "side", "align", "onPressedOutside"}]
       74 LOADB                            R12 0
       75 SETTABLEKS                       R12 R11 K18 ["hasArrow"]
       77 GETUPVAL                         R13 4
       78 GETTABLEKS                       R12 R13 K23 ["Top"]
       80 SETTABLEKS                       R12 R11 K19 ["side"]
       82 GETUPVAL                         R13 5
       83 GETTABLEKS                       R12 R13 K24 ["Start"]
       85 SETTABLEKS                       R12 R11 K20 ["align"]
       87 GETTABLEKS                       R12 R0 K4 ["onClose"]
       89 SETTABLEKS                       R12 R11 K21 ["onPressedOutside"]
       91 DUPTABLE                         R12 K26 [{"MenuList"}]
       92 GETUPVAL                         R14 2
       93 GETTABLEKS                       R13 R14 K6 ["createElement"]
       95 GETUPVAL                         R14 6
       96 DUPTABLE                         R15 K29 [{"Size", "tag"}]
       97 GETIMPORT                        R16 K32 [UDim2.fromOffset]
       99 LOADN                            R17 4
      100 LOADN                            R18 0
      101 CALL                             R16 2 1
      102 SETTABLEKS                       R16 R15 K27 ["Size"]
      104 LOADK                            R16 K33 ["col padding-xsmall gap-xxsmall auto-y bg-surface-300 radius-medium stroke-default"]
      105 SETTABLEKS                       R16 R15 K28 ["tag"]
      107 DUPTABLE                         R16 K37 [{"MenuTitle", "SelectedInstancesOption", "AssetIdOption"}]
      108 GETUPVAL                         R18 2
      109 GETTABLEKS                       R17 R18 K6 ["createElement"]
      111 GETUPVAL                         R18 6
      112 DUPTABLE                         R19 K38 [{"tag", "LayoutOrder"}]
      113 LOADK                            R20 K39 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      114 SETTABLEKS                       R20 R19 K28 ["tag"]
      116 NAMECALL                         R20 R2 K40 ["getNextOrder"]
      118 CALL                             R20 1 1
      119 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      121 DUPTABLE                         R20 K42 [{"Label"}]
      122 GETUPVAL                         R22 2
      123 GETTABLEKS                       R21 R22 K6 ["createElement"]
      125 GETUPVAL                         R22 7
      126 DUPTABLE                         R23 K44 [{"Text", "tag"}]
      127 LOADK                            R26 K45 ["AddItems"]
      128 LOADK                            R27 K46 ["AddContentFromLabel"]
      129 NAMECALL                         R24 R1 K47 ["getText"]
      131 CALL                             R24 3 1
      132 SETTABLEKS                       R24 R23 K43 ["Text"]
      134 LOADK                            R24 K48 ["text-caption-small auto-xy content-default"]
      135 SETTABLEKS                       R24 R23 K28 ["tag"]
      137 CALL                             R21 2 1
      138 SETTABLEKS                       R21 R20 K41 ["Label"]
      140 CALL                             R17 3 1
      141 SETTABLEKS                       R17 R16 K34 ["MenuTitle"]
      143 GETUPVAL                         R18 2
      144 GETTABLEKS                       R17 R18 K6 ["createElement"]
      146 GETUPVAL                         R18 6
      147 DUPTABLE                         R19 K50 [{"tag", "LayoutOrder", "onActivated"}]
      148 LOADK                            R20 K39 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      149 SETTABLEKS                       R20 R19 K28 ["tag"]
      151 NAMECALL                         R20 R2 K40 ["getNextOrder"]
      153 CALL                             R20 1 1
      154 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      156 GETTABLEKS                       R21 R0 K51 ["validInstancesSelected"]
      158 JUMPIFNOT                        R21 ; [+2]
      159 MOVE                             R20 R3
      160 JUMP                             ; [+1]
      161 LOADNIL                          R20
      162 SETTABLEKS                       R20 R19 K49 ["onActivated"]
      164 DUPTABLE                         R20 K42 [{"Label"}]
      165 GETTABLEKS                       R22 R0 K51 ["validInstancesSelected"]
      167 JUMPIFNOT                        R22 ; [+17]
      168 GETUPVAL                         R22 2
      169 GETTABLEKS                       R21 R22 K6 ["createElement"]
      171 GETUPVAL                         R22 7
      172 DUPTABLE                         R23 K44 [{"Text", "tag"}]
      173 LOADK                            R26 K45 ["AddItems"]
      174 LOADK                            R27 K52 ["SelectedInstancesLabel"]
      175 NAMECALL                         R24 R1 K47 ["getText"]
      177 CALL                             R24 3 1
      178 SETTABLEKS                       R24 R23 K43 ["Text"]
      180 LOADK                            R24 K53 ["text-body-small auto-xy content-emphasis"]
      181 SETTABLEKS                       R24 R23 K28 ["tag"]
      183 CALL                             R21 2 1
      184 JUMP                             ; [+46]
      185 GETUPVAL                         R22 2
      186 GETTABLEKS                       R21 R22 K6 ["createElement"]
      188 GETUPVAL                         R22 8
      189 DUPTABLE                         R23 K56 [{"title", "text", "side", "align"}]
      190 LOADK                            R26 K45 ["AddItems"]
      191 LOADK                            R27 K57 ["FailedTitle"]
      192 NAMECALL                         R24 R1 K47 ["getText"]
      194 CALL                             R24 3 1
      195 SETTABLEKS                       R24 R23 K54 ["title"]
      197 LOADK                            R26 K45 ["AddItems"]
      198 LOADK                            R27 K58 ["FailedAddHint"]
      199 NAMECALL                         R24 R1 K47 ["getText"]
      201 CALL                             R24 3 1
      202 SETTABLEKS                       R24 R23 K55 ["text"]
      204 GETUPVAL                         R25 4
      205 GETTABLEKS                       R24 R25 K59 ["Right"]
      207 SETTABLEKS                       R24 R23 K19 ["side"]
      209 GETUPVAL                         R25 5
      210 GETTABLEKS                       R24 R25 K24 ["Start"]
      212 SETTABLEKS                       R24 R23 K20 ["align"]
      214 GETUPVAL                         R25 2
      215 GETTABLEKS                       R24 R25 K6 ["createElement"]
      217 GETUPVAL                         R25 7
      218 DUPTABLE                         R26 K44 [{"Text", "tag"}]
      219 LOADK                            R29 K45 ["AddItems"]
      220 LOADK                            R30 K52 ["SelectedInstancesLabel"]
      221 NAMECALL                         R27 R1 K47 ["getText"]
      223 CALL                             R27 3 1
      224 SETTABLEKS                       R27 R26 K43 ["Text"]
      226 LOADK                            R27 K60 ["text-body-small auto-xy content-muted"]
      227 SETTABLEKS                       R27 R26 K28 ["tag"]
      229 CALL                             R24 2 -1
      230 CALL                             R21 -1 1
      231 SETTABLEKS                       R21 R20 K41 ["Label"]
      233 CALL                             R17 3 1
      234 SETTABLEKS                       R17 R16 K35 ["SelectedInstancesOption"]
      236 GETUPVAL                         R18 2
      237 GETTABLEKS                       R17 R18 K6 ["createElement"]
      239 GETUPVAL                         R18 6
      240 DUPTABLE                         R19 K50 [{"tag", "LayoutOrder", "onActivated"}]
      241 LOADK                            R20 K39 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      242 SETTABLEKS                       R20 R19 K28 ["tag"]
      244 NAMECALL                         R20 R2 K40 ["getNextOrder"]
      246 CALL                             R20 1 1
      247 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      249 SETTABLEKS                       R4 R19 K49 ["onActivated"]
      251 DUPTABLE                         R20 K42 [{"Label"}]
      252 GETUPVAL                         R22 2
      253 GETTABLEKS                       R21 R22 K6 ["createElement"]
      255 GETUPVAL                         R22 7
      256 DUPTABLE                         R23 K44 [{"Text", "tag"}]
      257 LOADK                            R26 K45 ["AddItems"]
      258 LOADK                            R27 K61 ["AssetIDLabel"]
      259 NAMECALL                         R24 R1 K47 ["getText"]
      261 CALL                             R24 3 1
      262 SETTABLEKS                       R24 R23 K43 ["Text"]
      264 LOADK                            R24 K53 ["text-body-small auto-xy content-emphasis"]
      265 SETTABLEKS                       R24 R23 K28 ["tag"]
      267 CALL                             R21 2 1
      268 SETTABLEKS                       R21 R20 K41 ["Label"]
      270 CALL                             R17 3 1
      271 SETTABLEKS                       R17 R16 K36 ["AssetIdOption"]
      273 CALL                             R13 3 1
      274 SETTABLEKS                       R13 R12 K25 ["MenuList"]
      276 CALL                             R9 3 1
      277 SETTABLEKS                       R9 R8 K11 ["Content"]
      279 CALL                             R5 3 -1
      280 RETURN                           R5 -1

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
