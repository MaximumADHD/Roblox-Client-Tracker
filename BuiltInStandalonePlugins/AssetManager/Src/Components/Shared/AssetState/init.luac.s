PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["Hooks"]
        7 GETTABLEKS                       R4 R4 K1 ["useTokens"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K2 ["useState"]
       13 LOADB                            R6 0
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R7 R7 K3 ["useRef"]
       18 LOADNIL                          R8
       19 CALL                             R7 1 1
       20 GETUPVAL                         R8 4
       21 MOVE                             R9 R7
       22 LOADN                            R10 -10
       23 LOADB                            R11 1
       24 CALL                             R8 3 1
       25 OR                               R9 R5 R8
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R10 R10 K4 ["createElement"]
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R11 R11 K5 ["Popover"]
       32 GETTABLEKS                       R11 R11 K6 ["Root"]
       34 DUPTABLE                         R12 K8 [{"isOpen"}]
       35 SETTABLEKS                       R9 R12 K7 ["isOpen"]
       37 DUPTABLE                         R13 K11 [{"Anchor", "Content"}]
       38 GETUPVAL                         R14 3
       39 GETTABLEKS                       R14 R14 K4 ["createElement"]
       41 GETUPVAL                         R15 2
       42 GETTABLEKS                       R15 R15 K5 ["Popover"]
       44 GETTABLEKS                       R15 R15 K9 ["Anchor"]
       46 GETUPVAL                         R16 5
       47 GETTABLEKS                       R16 R16 K12 ["join"]
       49 DUPTABLE                         R17 K14 [{"LayoutOrder"}]
       50 GETTABLEKS                       R18 R0 K13 ["LayoutOrder"]
       52 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
       54 GETTABLEKS                       R19 R0 K15 ["IsGrid"]
       56 JUMPIFNOT                        R19 ; [+16]
       57 DUPTABLE                         R18 K20 [{["ZIndex"] = 4, ["AnchorPoint"], ["Position"]}]
       58 GETIMPORT                        R19 K23 [Vector2.new]
       60 LOADN                            R20 0
       61 LOADN                            R21 1
       62 CALL                             R19 2 1
       63 SETTABLEKS                       R19 R18 K18 ["AnchorPoint"]
       65 GETIMPORT                        R19 K26 [UDim2.fromScale]
       67 LOADN                            R20 0
       68 LOADN                            R21 1
       69 CALL                             R19 2 1
       70 SETTABLEKS                       R19 R18 K19 ["Position"]
       72 JUMP                             ; [+2]
       73 NEWTABLE                         R18 0 0
       75 CALL                             R16 2 1
       76 GETUPVAL                         R17 3
       77 GETTABLEKS                       R17 R17 K4 ["createElement"]
       79 GETUPVAL                         R18 2
       80 GETTABLEKS                       R18 R18 K27 ["View"]
       82 DUPTABLE                         R19 K32 [{["onStateChanged"], ["stateLayer"], ["tag"] = "auto-xy"}]
       83 NEWCLOSURE                       R20 P0
       84 CAPTURE                          VAL R6
       85 CAPTURE                          UPVAL U2
       86 SETTABLEKS                       R20 R19 K28 ["onStateChanged"]
       88 DUPTABLE                         R20 K34 [{"affordance"}]
       89 GETUPVAL                         R21 2
       90 GETTABLEKS                       R21 R21 K35 ["Enums"]
       92 GETTABLEKS                       R21 R21 K36 ["StateLayerAffordance"]
       94 GETTABLEKS                       R21 R21 K37 ["None"]
       96 SETTABLEKS                       R21 R20 K33 ["affordance"]
       98 SETTABLEKS                       R20 R19 K29 ["stateLayer"]
      100 GETUPVAL                         R20 3
      101 GETTABLEKS                       R20 R20 K4 ["createElement"]
      103 GETUPVAL                         R21 2
      104 GETTABLEKS                       R21 R21 K38 ["Icon"]
      106 DUPTABLE                         R22 K45 [{["name"], ["size"], ["style"], ["variant"], ["testId"] = "asset-state-icon"}]
      107 GETUPVAL                         R23 2
      108 GETTABLEKS                       R23 R23 K35 ["Enums"]
      110 GETTABLEKS                       R23 R23 K46 ["IconName"]
      112 GETTABLEKS                       R23 R23 K47 ["TriangleExclamation"]
      114 SETTABLEKS                       R23 R22 K39 ["name"]
      116 GETUPVAL                         R23 2
      117 GETTABLEKS                       R23 R23 K35 ["Enums"]
      119 GETTABLEKS                       R23 R23 K48 ["IconSize"]
      121 GETTABLEKS                       R23 R23 K49 ["Small"]
      123 SETTABLEKS                       R23 R22 K40 ["size"]
      125 GETTABLEKS                       R23 R4 K50 ["Color"]
      127 GETTABLEKS                       R23 R23 K51 ["System"]
      129 GETTABLEKS                       R23 R23 K52 ["Warning"]
      131 SETTABLEKS                       R23 R22 K41 ["style"]
      133 GETUPVAL                         R23 2
      134 GETTABLEKS                       R23 R23 K35 ["Enums"]
      136 GETTABLEKS                       R23 R23 K53 ["IconVariant"]
      138 GETTABLEKS                       R23 R23 K54 ["Filled"]
      140 SETTABLEKS                       R23 R22 K42 ["variant"]
      142 CALL                             R20 2 -1
      143 CALL                             R17 -1 -1
      144 CALL                             R14 -1 1
      145 SETTABLEKS                       R14 R13 K9 ["Anchor"]
      147 GETUPVAL                         R14 3
      148 GETTABLEKS                       R14 R14 K4 ["createElement"]
      150 GETUPVAL                         R15 2
      151 GETTABLEKS                       R15 R15 K5 ["Popover"]
      153 GETTABLEKS                       R15 R15 K10 ["Content"]
      155 DUPTABLE                         R16 K59 [{["side"], ["align"], ["hasArrow"] = False}]
      156 DUPTABLE                         R17 K63 [{["position"], ["offset"] = 5}]
      157 GETUPVAL                         R19 6
      158 CALL                             R19 0 1
      159 JUMPIF                           R19 ; [+1]
      160 JUMPIF                           R3 ; [+8]
      161 GETUPVAL                         R18 2
      162 GETTABLEKS                       R18 R18 K35 ["Enums"]
      164 GETTABLEKS                       R18 R18 K64 ["PopoverSide"]
      166 GETTABLEKS                       R18 R18 K65 ["Right"]
      168 JUMP                             ; [+7]
      169 GETUPVAL                         R18 2
      170 GETTABLEKS                       R18 R18 K35 ["Enums"]
      172 GETTABLEKS                       R18 R18 K64 ["PopoverSide"]
      174 GETTABLEKS                       R18 R18 K66 ["Bottom"]
      176 SETTABLEKS                       R18 R17 K60 ["position"]
      178 SETTABLEKS                       R17 R16 K55 ["side"]
      180 GETUPVAL                         R17 2
      181 GETTABLEKS                       R17 R17 K35 ["Enums"]
      183 GETTABLEKS                       R17 R17 K67 ["PopoverAlign"]
      185 GETTABLEKS                       R17 R17 K68 ["Center"]
      187 SETTABLEKS                       R17 R16 K56 ["align"]
      189 GETUPVAL                         R17 3
      190 GETTABLEKS                       R17 R17 K4 ["createElement"]
      192 GETUPVAL                         R18 7
      193 DUPTABLE                         R19 K73 [{"FrameRef", "AssetId", "AssetPath", "MaxWidth"}]
      194 SETTABLEKS                       R7 R19 K69 ["FrameRef"]
      196 GETTABLEKS                       R20 R0 K70 ["AssetId"]
      198 SETTABLEKS                       R20 R19 K70 ["AssetId"]
      200 GETTABLEKS                       R20 R0 K71 ["AssetPath"]
      202 SETTABLEKS                       R20 R19 K71 ["AssetPath"]
      204 SETTABLEKS                       R1 R19 K72 ["MaxWidth"]
      206 CALL                             R17 2 -1
      207 CALL                             R14 -1 1
      208 SETTABLEKS                       R14 R13 K10 ["Content"]
      210 CALL                             R10 3 -1
      211 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["useItemHovered"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K13 ["useIsCompact"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K14 ["usePluginSize"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Flags"]
       61 GETTABLEKS                       R8 R8 K16 ["getFFlagAmrUseQWidgetPopovers"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETIMPORT                        R9 K1 [script]
       68 GETTABLEKS                       R9 R9 K17 ["Details"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K18 [PROTO_1]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 RETURN                           R9 1
