PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 LOADK                            R4 K1 ["PointingHand"]
        8 CALL                             R3 1 1
        9 LOADK                            R6 K2 ["Plugin"]
       10 LOADK                            R7 K3 ["Tooltip.AgeRestrictedCollaborationTitle"]
       11 NAMECALL                         R4 R1 K4 ["getText"]
       13 CALL                             R4 3 1
       14 LOADK                            R7 K2 ["Plugin"]
       15 LOADK                            R8 K5 ["Tooltip.AgeRestrictedCollaborationDescription"]
       16 NAMECALL                         R5 R1 K4 ["getText"]
       18 CALL                             R5 3 1
       19 LOADNIL                          R6
       20 GETTABLEKS                       R7 R0 K6 ["UniverseId"]
       22 JUMPIFNOT                        R7 ; [+12]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K7 ["composeUrl"]
       26 GETUPVAL                         R8 4
       27 LOADK                            R9 K8 ["dashboard/creations/experiences/%*/safety/collaborators"]
       28 GETTABLEKS                       R11 R0 K6 ["UniverseId"]
       30 NAMECALL                         R9 R9 K9 ["format"]
       32 CALL                             R9 2 1
       33 CALL                             R7 2 1
       34 MOVE                             R6 R7
       35 JUMPIFNOTEQKNIL                  R6 ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 DUPTABLE                         R8 K12 [{"LockIcon", "Label"}]
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R9 R9 K13 ["createElement"]
       43 GETUPVAL                         R10 6
       44 DUPTABLE                         R11 K18 [{"name", "size", "style", "LayoutOrder"}]
       45 GETUPVAL                         R12 7
       46 GETTABLEKS                       R12 R12 K19 ["TriangleExclamation"]
       48 SETTABLEKS                       R12 R11 K14 ["name"]
       50 GETUPVAL                         R12 8
       51 GETTABLEKS                       R12 R12 K20 ["Small"]
       53 SETTABLEKS                       R12 R11 K15 ["size"]
       55 GETTABLEKS                       R12 R2 K21 ["Color"]
       57 GETTABLEKS                       R12 R12 K22 ["System"]
       59 GETTABLEKS                       R12 R12 K23 ["Warning"]
       61 SETTABLEKS                       R12 R11 K16 ["style"]
       63 GETTABLEKS                       R13 R0 K24 ["rightAlignIcon"]
       65 JUMPIFNOT                        R13 ; [+2]
       66 LOADN                            R12 2
       67 JUMP                             ; [+1]
       68 LOADN                            R12 1
       69 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       71 CALL                             R9 2 1
       72 SETTABLEKS                       R9 R8 K10 ["LockIcon"]
       74 GETUPVAL                         R9 5
       75 GETTABLEKS                       R9 R9 K13 ["createElement"]
       77 GETUPVAL                         R10 9
       78 DUPTABLE                         R11 K29 [{["Text"], ["textStyle"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["LayoutOrder"]}]
       79 GETTABLEKS                       R12 R0 K30 ["label"]
       81 SETTABLEKS                       R12 R11 K25 ["Text"]
       83 GETTABLEKS                       R12 R2 K21 ["Color"]
       85 GETTABLEKS                       R12 R12 K22 ["System"]
       87 GETTABLEKS                       R12 R12 K31 ["Default"]
       89 SETTABLEKS                       R12 R11 K26 ["textStyle"]
       91 GETTABLEKS                       R13 R0 K24 ["rightAlignIcon"]
       93 JUMPIFNOT                        R13 ; [+2]
       94 LOADN                            R12 1
       95 JUMP                             ; [+1]
       96 LOADN                            R12 2
       97 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K11 ["Label"]
      102 LOADNIL                          R9
      103 JUMPIFNOT                        R7 ; [+33]
      104 GETUPVAL                         R10 5
      105 GETTABLEKS                       R10 R10 K13 ["createElement"]
      107 GETUPVAL                         R11 10
      108 DUPTABLE                         R12 K38 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall auto-xy", ["stateLayer"], ["onActivated"], ["onStateChanged"], ["inputSink"] = True}]
      109 GETTABLEKS                       R13 R0 K17 ["LayoutOrder"]
      111 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
      113 DUPTABLE                         R13 K41 [{"mode", "affordance"}]
      114 GETUPVAL                         R14 11
      115 GETTABLEKS                       R14 R14 K31 ["Default"]
      117 SETTABLEKS                       R14 R13 K39 ["mode"]
      119 GETUPVAL                         R14 12
      120 GETTABLEKS                       R14 R14 K42 ["Background"]
      122 SETTABLEKS                       R14 R13 K40 ["affordance"]
      124 SETTABLEKS                       R13 R12 K33 ["stateLayer"]
      126 NEWCLOSURE                       R13 P0
      127 CAPTURE                          UPVAL U13
      128 CAPTURE                          REF R6
      129 SETTABLEKS                       R13 R12 K34 ["onActivated"]
      131 SETTABLEKS                       R3 R12 K35 ["onStateChanged"]
      133 MOVE                             R13 R8
      134 CALL                             R10 3 1
      135 MOVE                             R9 R10
      136 JUMP                             ; [+12]
      137 GETUPVAL                         R10 5
      138 GETTABLEKS                       R10 R10 K13 ["createElement"]
      140 GETUPVAL                         R11 10
      141 DUPTABLE                         R12 K43 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall auto-xy"}]
      142 GETTABLEKS                       R13 R0 K17 ["LayoutOrder"]
      144 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
      146 MOVE                             R13 R8
      147 CALL                             R10 3 1
      148 MOVE                             R9 R10
      149 GETUPVAL                         R10 5
      150 GETTABLEKS                       R10 R10 K13 ["createElement"]
      152 GETUPVAL                         R11 14
      153 DUPTABLE                         R12 K47 [{"title", "text", "side", "LayoutOrder"}]
      154 SETTABLEKS                       R4 R12 K44 ["title"]
      156 SETTABLEKS                       R5 R12 K45 ["text"]
      158 GETUPVAL                         R13 15
      159 GETTABLEKS                       R13 R13 K48 ["Bottom"]
      161 SETTABLEKS                       R13 R12 K46 ["side"]
      163 GETTABLEKS                       R13 R0 K17 ["LayoutOrder"]
      165 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
      167 MOVE                             R13 R9
      168 CALL                             R10 3 -1
      169 CLOSEUPVALS                      R6
      170 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETTABLEKS                       R4 R2 K11 ["RobloxAPI"]
       27 GETTABLEKS                       R4 R4 K12 ["Url"]
       29 GETTABLEKS                       R5 R4 K13 ["new"]
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R5 R5 K14 ["CREATOR_HUB_URL"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K15 ["Src"]
       38 GETTABLEKS                       R7 R7 K16 ["Util"]
       40 GETTABLEKS                       R7 R7 K17 ["Foundation"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R6 K18 ["Icon"]
       45 GETTABLEKS                       R8 R6 K19 ["Enums"]
       47 GETTABLEKS                       R8 R8 K20 ["IconName"]
       49 GETTABLEKS                       R9 R6 K19 ["Enums"]
       51 GETTABLEKS                       R9 R9 K21 ["IconSize"]
       53 GETTABLEKS                       R10 R6 K19 ["Enums"]
       55 GETTABLEKS                       R10 R10 K22 ["PopoverSide"]
       57 GETTABLEKS                       R11 R6 K23 ["Text"]
       59 GETTABLEKS                       R12 R6 K24 ["Tooltip"]
       61 GETTABLEKS                       R13 R6 K25 ["View"]
       63 GETTABLEKS                       R14 R6 K26 ["Hooks"]
       65 GETTABLEKS                       R14 R14 K27 ["useTokens"]
       67 GETTABLEKS                       R15 R6 K19 ["Enums"]
       69 GETTABLEKS                       R15 R15 K28 ["StateLayerAffordance"]
       71 GETTABLEKS                       R16 R6 K19 ["Enums"]
       73 GETTABLEKS                       R16 R16 K29 ["StateLayerMode"]
       75 GETIMPORT                        R17 K5 [require]
       77 GETTABLEKS                       R18 R0 K15 ["Src"]
       79 GETTABLEKS                       R18 R18 K26 ["Hooks"]
       81 GETTABLEKS                       R18 R18 K30 ["useOnStateChangedCursor"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K5 [require]
       86 GETTABLEKS                       R19 R0 K15 ["Src"]
       88 GETTABLEKS                       R19 R19 K16 ["Util"]
       90 GETTABLEKS                       R19 R19 K31 ["Services"]
       92 CALL                             R18 1 1
       93 GETTABLEKS                       R19 R18 K32 ["StartPageManager"]
       95 DUPCLOSURE                       R20 K33 [PROTO_1]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R19
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R10
      112 RETURN                           R20 1
