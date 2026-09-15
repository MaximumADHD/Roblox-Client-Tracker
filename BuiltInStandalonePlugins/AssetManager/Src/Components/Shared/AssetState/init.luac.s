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
       56 JUMPIFNOT                        R19 ; [+23]
       57 DUPTABLE                         R18 K20 [{["ZIndex"] = 4, ["AnchorPoint"], ["Position"]}]
       58 GETIMPORT                        R19 K23 [Vector2.new]
       60 LOADN                            R20 0
       61 LOADN                            R21 1
       62 CALL                             R19 2 1
       63 SETTABLEKS                       R19 R18 K18 ["AnchorPoint"]
       65 GETIMPORT                        R19 K25 [UDim2.new]
       67 LOADN                            R20 0
       68 GETUPVAL                         R21 6
       69 GETTABLEKS                       R21 R21 K26 ["GridCellIconPadding"]
       71 LOADN                            R22 1
       72 GETUPVAL                         R24 6
       73 GETTABLEKS                       R24 R24 K26 ["GridCellIconPadding"]
       75 MINUS                            R23 R24
       76 CALL                             R19 4 1
       77 SETTABLEKS                       R19 R18 K19 ["Position"]
       79 JUMP                             ; [+2]
       80 NEWTABLE                         R18 0 0
       82 CALL                             R16 2 1
       83 GETUPVAL                         R17 3
       84 GETTABLEKS                       R17 R17 K4 ["createElement"]
       86 GETUPVAL                         R18 2
       87 GETTABLEKS                       R18 R18 K27 ["View"]
       89 DUPTABLE                         R19 K32 [{["onStateChanged"], ["stateLayer"], ["tag"] = "auto-xy"}]
       90 NEWCLOSURE                       R20 P0
       91 CAPTURE                          VAL R6
       92 CAPTURE                          UPVAL U2
       93 SETTABLEKS                       R20 R19 K28 ["onStateChanged"]
       95 DUPTABLE                         R20 K34 [{"affordance"}]
       96 GETUPVAL                         R21 2
       97 GETTABLEKS                       R21 R21 K35 ["Enums"]
       99 GETTABLEKS                       R21 R21 K36 ["StateLayerAffordance"]
      101 GETTABLEKS                       R21 R21 K37 ["None"]
      103 SETTABLEKS                       R21 R20 K33 ["affordance"]
      105 SETTABLEKS                       R20 R19 K29 ["stateLayer"]
      107 GETUPVAL                         R20 3
      108 GETTABLEKS                       R20 R20 K4 ["createElement"]
      110 GETUPVAL                         R21 2
      111 GETTABLEKS                       R21 R21 K38 ["Icon"]
      113 DUPTABLE                         R22 K45 [{["name"], ["size"], ["style"], ["variant"], ["testId"] = "asset-state-icon"}]
      114 GETUPVAL                         R23 2
      115 GETTABLEKS                       R23 R23 K35 ["Enums"]
      117 GETTABLEKS                       R23 R23 K46 ["IconName"]
      119 GETTABLEKS                       R23 R23 K47 ["TriangleExclamation"]
      121 SETTABLEKS                       R23 R22 K39 ["name"]
      123 GETUPVAL                         R23 2
      124 GETTABLEKS                       R23 R23 K35 ["Enums"]
      126 GETTABLEKS                       R23 R23 K48 ["IconSize"]
      128 GETTABLEKS                       R23 R23 K49 ["Small"]
      130 SETTABLEKS                       R23 R22 K40 ["size"]
      132 GETTABLEKS                       R23 R4 K50 ["Color"]
      134 GETTABLEKS                       R23 R23 K51 ["System"]
      136 GETTABLEKS                       R23 R23 K52 ["Warning"]
      138 SETTABLEKS                       R23 R22 K41 ["style"]
      140 GETUPVAL                         R23 2
      141 GETTABLEKS                       R23 R23 K35 ["Enums"]
      143 GETTABLEKS                       R23 R23 K53 ["IconVariant"]
      145 GETTABLEKS                       R23 R23 K54 ["Filled"]
      147 SETTABLEKS                       R23 R22 K42 ["variant"]
      149 CALL                             R20 2 -1
      150 CALL                             R17 -1 -1
      151 CALL                             R14 -1 1
      152 SETTABLEKS                       R14 R13 K9 ["Anchor"]
      154 GETUPVAL                         R14 3
      155 GETTABLEKS                       R14 R14 K4 ["createElement"]
      157 GETUPVAL                         R15 2
      158 GETTABLEKS                       R15 R15 K5 ["Popover"]
      160 GETTABLEKS                       R15 R15 K10 ["Content"]
      162 DUPTABLE                         R16 K59 [{["side"], ["align"], ["hasArrow"] = False}]
      163 DUPTABLE                         R17 K63 [{["position"], ["offset"] = 5}]
      164 GETUPVAL                         R19 7
      165 CALL                             R19 0 1
      166 JUMPIF                           R19 ; [+1]
      167 JUMPIF                           R3 ; [+8]
      168 GETUPVAL                         R18 2
      169 GETTABLEKS                       R18 R18 K35 ["Enums"]
      171 GETTABLEKS                       R18 R18 K64 ["PopoverSide"]
      173 GETTABLEKS                       R18 R18 K65 ["Right"]
      175 JUMP                             ; [+7]
      176 GETUPVAL                         R18 2
      177 GETTABLEKS                       R18 R18 K35 ["Enums"]
      179 GETTABLEKS                       R18 R18 K64 ["PopoverSide"]
      181 GETTABLEKS                       R18 R18 K66 ["Bottom"]
      183 SETTABLEKS                       R18 R17 K60 ["position"]
      185 SETTABLEKS                       R17 R16 K55 ["side"]
      187 GETUPVAL                         R17 2
      188 GETTABLEKS                       R17 R17 K35 ["Enums"]
      190 GETTABLEKS                       R17 R17 K67 ["PopoverAlign"]
      192 GETTABLEKS                       R17 R17 K68 ["Center"]
      194 SETTABLEKS                       R17 R16 K56 ["align"]
      196 GETUPVAL                         R17 3
      197 GETTABLEKS                       R17 R17 K4 ["createElement"]
      199 GETUPVAL                         R18 8
      200 DUPTABLE                         R19 K73 [{"FrameRef", "AssetId", "AssetPath", "MaxWidth"}]
      201 SETTABLEKS                       R7 R19 K69 ["FrameRef"]
      203 GETTABLEKS                       R20 R0 K70 ["AssetId"]
      205 SETTABLEKS                       R20 R19 K70 ["AssetId"]
      207 GETTABLEKS                       R20 R0 K71 ["AssetPath"]
      209 SETTABLEKS                       R20 R19 K71 ["AssetPath"]
      211 SETTABLEKS                       R1 R19 K72 ["MaxWidth"]
      213 CALL                             R17 2 -1
      214 CALL                             R14 -1 1
      215 SETTABLEKS                       R14 R13 K10 ["Content"]
      217 CALL                             R10 3 -1
      218 RETURN                           R10 -1

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
       59 GETTABLEKS                       R8 R8 K15 ["Resources"]
       61 GETTABLEKS                       R8 R8 K16 ["StyleConstants"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Flags"]
       70 GETTABLEKS                       R9 R9 K18 ["getFFlagAmrUseQWidgetPopovers"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETIMPORT                        R10 K1 [script]
       77 GETTABLEKS                       R10 R10 K19 ["Details"]
       79 CALL                             R9 1 1
       80 DUPCLOSURE                       R10 K20 [PROTO_1]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 RETURN                           R10 1
