PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onAddSelectedInstances"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onAddFromAssetId"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R5 0 2
       15 GETTABLEKS                       R6 R0 K3 ["onAddSelectedInstances"]
       17 GETTABLEKS                       R7 R0 K4 ["onClose"]
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R6 0 2
       29 GETTABLEKS                       R7 R0 K5 ["onAddFromAssetId"]
       31 GETTABLEKS                       R8 R0 K4 ["onClose"]
       33 SETLIST                          R6 R7 2 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["createElement"]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K7 ["Root"]
       42 DUPTABLE                         R7 K9 [{"isOpen"}]
       43 GETTABLEKS                       R8 R0 K8 ["isOpen"]
       45 SETTABLEKS                       R8 R7 K8 ["isOpen"]
       47 DUPTABLE                         R8 K12 [{"Anchor", "Content"}]
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R9 R9 K6 ["createElement"]
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R10 R10 K10 ["Anchor"]
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
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K6 ["createElement"]
       74 GETUPVAL                         R10 3
       75 GETTABLEKS                       R10 R10 K11 ["Content"]
       77 DUPTABLE                         R11 K25 [{["hasArrow"] = False, ["side"], ["align"], ["onPressedOutside"]}]
       78 GETUPVAL                         R12 4
       79 GETTABLEKS                       R12 R12 K26 ["Top"]
       81 SETTABLEKS                       R12 R11 K22 ["side"]
       83 GETUPVAL                         R12 5
       84 GETTABLEKS                       R12 R12 K27 ["Start"]
       86 SETTABLEKS                       R12 R11 K23 ["align"]
       88 GETTABLEKS                       R12 R0 K4 ["onClose"]
       90 SETTABLEKS                       R12 R11 K24 ["onPressedOutside"]
       92 DUPTABLE                         R12 K29 [{"MenuList"}]
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R13 R13 K6 ["createElement"]
       96 GETUPVAL                         R14 6
       97 DUPTABLE                         R15 K32 [{["Size"], ["tag"] = "col gap-xxsmall auto-y padding-xsmall stroke-default radius-medium bg-surface-300"}]
       98 GETIMPORT                        R16 K35 [UDim2.fromOffset]
      100 LOADN                            R17 260
      101 LOADN                            R18 0
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K14 ["Size"]
      105 DUPTABLE                         R16 K39 [{"MenuTitle", "SelectedInstancesOption", "AssetIdOption"}]
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R17 R17 K6 ["createElement"]
      109 GETUPVAL                         R18 6
      110 DUPTABLE                         R19 K41 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      111 NAMECALL                         R20 R2 K42 ["getNextOrder"]
      113 CALL                             R20 1 1
      114 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      116 DUPTABLE                         R20 K44 [{"Label"}]
      117 GETUPVAL                         R21 2
      118 GETTABLEKS                       R21 R21 K6 ["createElement"]
      120 GETUPVAL                         R22 7
      121 DUPTABLE                         R23 K47 [{["Text"], ["tag"] = "auto-xy text-caption-small content-default"}]
      122 LOADK                            R26 K48 ["AddItems"]
      123 LOADK                            R27 K49 ["AddContentFromLabel"]
      124 NAMECALL                         R24 R1 K50 ["getText"]
      126 CALL                             R24 3 1
      127 SETTABLEKS                       R24 R23 K45 ["Text"]
      129 CALL                             R21 2 1
      130 SETTABLEKS                       R21 R20 K43 ["Label"]
      132 CALL                             R17 3 1
      133 SETTABLEKS                       R17 R16 K36 ["MenuTitle"]
      135 GETUPVAL                         R17 2
      136 GETTABLEKS                       R17 R17 K6 ["createElement"]
      138 GETUPVAL                         R18 6
      139 DUPTABLE                         R19 K52 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"], ["onActivated"]}]
      140 NAMECALL                         R20 R2 K42 ["getNextOrder"]
      142 CALL                             R20 1 1
      143 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      145 GETTABLEKS                       R21 R0 K53 ["validInstancesSelected"]
      147 JUMPIFNOT                        R21 ; [+2]
      148 MOVE                             R20 R3
      149 JUMP                             ; [+1]
      150 LOADNIL                          R20
      151 SETTABLEKS                       R20 R19 K51 ["onActivated"]
      153 DUPTABLE                         R20 K44 [{"Label"}]
      154 GETTABLEKS                       R22 R0 K53 ["validInstancesSelected"]
      156 JUMPIFNOT                        R22 ; [+14]
      157 GETUPVAL                         R21 2
      158 GETTABLEKS                       R21 R21 K6 ["createElement"]
      160 GETUPVAL                         R22 7
      161 DUPTABLE                         R23 K55 [{["Text"], ["tag"] = "auto-xy text-body-small content-emphasis"}]
      162 LOADK                            R26 K48 ["AddItems"]
      163 LOADK                            R27 K56 ["SelectedInstancesLabel"]
      164 NAMECALL                         R24 R1 K50 ["getText"]
      166 CALL                             R24 3 1
      167 SETTABLEKS                       R24 R23 K45 ["Text"]
      169 CALL                             R21 2 1
      170 JUMP                             ; [+43]
      171 GETUPVAL                         R21 2
      172 GETTABLEKS                       R21 R21 K6 ["createElement"]
      174 GETUPVAL                         R22 8
      175 DUPTABLE                         R23 K59 [{"title", "text", "side", "align"}]
      176 LOADK                            R26 K48 ["AddItems"]
      177 LOADK                            R27 K60 ["FailedTitle"]
      178 NAMECALL                         R24 R1 K50 ["getText"]
      180 CALL                             R24 3 1
      181 SETTABLEKS                       R24 R23 K57 ["title"]
      183 LOADK                            R26 K48 ["AddItems"]
      184 LOADK                            R27 K61 ["FailedAddHint"]
      185 NAMECALL                         R24 R1 K50 ["getText"]
      187 CALL                             R24 3 1
      188 SETTABLEKS                       R24 R23 K58 ["text"]
      190 GETUPVAL                         R24 4
      191 GETTABLEKS                       R24 R24 K62 ["Right"]
      193 SETTABLEKS                       R24 R23 K22 ["side"]
      195 GETUPVAL                         R24 5
      196 GETTABLEKS                       R24 R24 K27 ["Start"]
      198 SETTABLEKS                       R24 R23 K23 ["align"]
      200 GETUPVAL                         R24 2
      201 GETTABLEKS                       R24 R24 K6 ["createElement"]
      203 GETUPVAL                         R25 7
      204 DUPTABLE                         R26 K64 [{["Text"], ["tag"] = "auto-xy text-body-small content-muted"}]
      205 LOADK                            R29 K48 ["AddItems"]
      206 LOADK                            R30 K56 ["SelectedInstancesLabel"]
      207 NAMECALL                         R27 R1 K50 ["getText"]
      209 CALL                             R27 3 1
      210 SETTABLEKS                       R27 R26 K45 ["Text"]
      212 CALL                             R24 2 -1
      213 CALL                             R21 -1 1
      214 SETTABLEKS                       R21 R20 K43 ["Label"]
      216 CALL                             R17 3 1
      217 SETTABLEKS                       R17 R16 K37 ["SelectedInstancesOption"]
      219 GETUPVAL                         R17 2
      220 GETTABLEKS                       R17 R17 K6 ["createElement"]
      222 GETUPVAL                         R18 6
      223 DUPTABLE                         R19 K52 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"], ["onActivated"]}]
      224 NAMECALL                         R20 R2 K42 ["getNextOrder"]
      226 CALL                             R20 1 1
      227 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      229 SETTABLEKS                       R4 R19 K51 ["onActivated"]
      231 DUPTABLE                         R20 K44 [{"Label"}]
      232 GETUPVAL                         R21 2
      233 GETTABLEKS                       R21 R21 K6 ["createElement"]
      235 GETUPVAL                         R22 7
      236 DUPTABLE                         R23 K55 [{["Text"], ["tag"] = "auto-xy text-body-small content-emphasis"}]
      237 LOADK                            R26 K48 ["AddItems"]
      238 LOADK                            R27 K65 ["AssetIDLabel"]
      239 NAMECALL                         R24 R1 K50 ["getText"]
      241 CALL                             R24 3 1
      242 SETTABLEKS                       R24 R23 K45 ["Text"]
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K43 ["Label"]
      247 CALL                             R17 3 1
      248 SETTABLEKS                       R17 R16 K38 ["AssetIdOption"]
      250 CALL                             R13 3 1
      251 SETTABLEKS                       R13 R12 K28 ["MenuList"]
      253 CALL                             R9 3 1
      254 SETTABLEKS                       R9 R8 K11 ["Content"]
      256 CALL                             R5 3 -1
      257 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Popover"]
       16 GETTABLEKS                       R3 R1 K9 ["Text"]
       18 GETTABLEKS                       R4 R1 K10 ["Tooltip"]
       20 GETTABLEKS                       R5 R1 K11 ["View"]
       22 GETTABLEKS                       R6 R1 K12 ["Enums"]
       24 GETTABLEKS                       R6 R6 K13 ["PopoverSide"]
       26 GETTABLEKS                       R7 R1 K12 ["Enums"]
       28 GETTABLEKS                       R7 R7 K14 ["PopoverAlign"]
       30 GETIMPORT                        R8 K5 [require]
       32 GETTABLEKS                       R9 R0 K6 ["Packages"]
       34 GETTABLEKS                       R9 R9 K15 ["Framework"]
       36 CALL                             R8 1 1
       37 GETTABLEKS                       R9 R8 K16 ["ContextServices"]
       39 GETTABLEKS                       R9 R9 K17 ["Localization"]
       41 GETTABLEKS                       R10 R8 K18 ["Util"]
       43 GETTABLEKS                       R10 R10 K19 ["LayoutOrderIterator"]
       45 GETIMPORT                        R11 K5 [require]
       47 GETTABLEKS                       R12 R0 K6 ["Packages"]
       49 GETTABLEKS                       R12 R12 K20 ["React"]
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
