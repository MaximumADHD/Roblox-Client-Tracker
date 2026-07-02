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
       22 JUMPIFNOT                        R7 ; [+5]
       23 LOADK                            R7 K7 ["https://create.roblox.com/dashboard/creations/experiences/"]
       24 GETTABLEKS                       R8 R0 K6 ["UniverseId"]
       26 LOADK                            R9 K8 ["/safety/collaborators"]
       27 CONCAT                           R6 R7 R9
       28 JUMPIFNOTEQKNIL                  R6 ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 DUPTABLE                         R8 K11 [{"LockIcon", "Label"}]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K12 ["createElement"]
       36 GETUPVAL                         R10 4
       37 DUPTABLE                         R11 K17 [{"name", "size", "style", "LayoutOrder"}]
       38 GETUPVAL                         R12 5
       39 GETTABLEKS                       R12 R12 K18 ["TriangleExclamation"]
       41 SETTABLEKS                       R12 R11 K13 ["name"]
       43 GETUPVAL                         R12 6
       44 GETTABLEKS                       R12 R12 K19 ["Small"]
       46 SETTABLEKS                       R12 R11 K14 ["size"]
       48 GETTABLEKS                       R12 R2 K20 ["Color"]
       50 GETTABLEKS                       R12 R12 K21 ["System"]
       52 GETTABLEKS                       R12 R12 K22 ["Warning"]
       54 SETTABLEKS                       R12 R11 K15 ["style"]
       56 GETTABLEKS                       R13 R0 K23 ["rightAlignIcon"]
       58 JUMPIFNOT                        R13 ; [+2]
       59 LOADN                            R12 2
       60 JUMP                             ; [+1]
       61 LOADN                            R12 1
       62 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K9 ["LockIcon"]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K12 ["createElement"]
       70 GETUPVAL                         R10 7
       71 DUPTABLE                         R11 K28 [{["Text"], ["textStyle"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["LayoutOrder"]}]
       72 GETTABLEKS                       R12 R0 K29 ["label"]
       74 SETTABLEKS                       R12 R11 K24 ["Text"]
       76 GETTABLEKS                       R12 R2 K20 ["Color"]
       78 GETTABLEKS                       R12 R12 K21 ["System"]
       80 GETTABLEKS                       R12 R12 K30 ["Default"]
       82 SETTABLEKS                       R12 R11 K25 ["textStyle"]
       84 GETTABLEKS                       R13 R0 K23 ["rightAlignIcon"]
       86 JUMPIFNOT                        R13 ; [+2]
       87 LOADN                            R12 1
       88 JUMP                             ; [+1]
       89 LOADN                            R12 2
       90 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K10 ["Label"]
       95 LOADNIL                          R9
       96 JUMPIFNOT                        R7 ; [+33]
       97 GETUPVAL                         R10 3
       98 GETTABLEKS                       R10 R10 K12 ["createElement"]
      100 GETUPVAL                         R11 8
      101 DUPTABLE                         R12 K37 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall auto-xy", ["stateLayer"], ["onActivated"], ["onStateChanged"], ["inputSink"] = True}]
      102 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
      104 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
      106 DUPTABLE                         R13 K40 [{"mode", "affordance"}]
      107 GETUPVAL                         R14 9
      108 GETTABLEKS                       R14 R14 K30 ["Default"]
      110 SETTABLEKS                       R14 R13 K38 ["mode"]
      112 GETUPVAL                         R14 10
      113 GETTABLEKS                       R14 R14 K41 ["Background"]
      115 SETTABLEKS                       R14 R13 K39 ["affordance"]
      117 SETTABLEKS                       R13 R12 K32 ["stateLayer"]
      119 NEWCLOSURE                       R13 P0
      120 CAPTURE                          UPVAL U11
      121 CAPTURE                          REF R6
      122 SETTABLEKS                       R13 R12 K33 ["onActivated"]
      124 SETTABLEKS                       R3 R12 K34 ["onStateChanged"]
      126 MOVE                             R13 R8
      127 CALL                             R10 3 1
      128 MOVE                             R9 R10
      129 JUMP                             ; [+12]
      130 GETUPVAL                         R10 3
      131 GETTABLEKS                       R10 R10 K12 ["createElement"]
      133 GETUPVAL                         R11 8
      134 DUPTABLE                         R12 K42 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall auto-xy"}]
      135 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
      137 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
      139 MOVE                             R13 R8
      140 CALL                             R10 3 1
      141 MOVE                             R9 R10
      142 GETUPVAL                         R10 3
      143 GETTABLEKS                       R10 R10 K12 ["createElement"]
      145 GETUPVAL                         R11 12
      146 DUPTABLE                         R12 K46 [{"title", "text", "side", "LayoutOrder"}]
      147 SETTABLEKS                       R4 R12 K43 ["title"]
      149 SETTABLEKS                       R5 R12 K44 ["text"]
      151 GETUPVAL                         R13 13
      152 GETTABLEKS                       R13 R13 K47 ["Bottom"]
      154 SETTABLEKS                       R13 R12 K45 ["side"]
      156 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
      158 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
      160 MOVE                             R13 R9
      161 CALL                             R10 3 -1
      162 CLOSEUPVALS                      R6
      163 RETURN                           R10 -1

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
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["Icon"]
       36 GETTABLEKS                       R6 R4 K15 ["Enums"]
       38 GETTABLEKS                       R6 R6 K16 ["IconName"]
       40 GETTABLEKS                       R7 R4 K15 ["Enums"]
       42 GETTABLEKS                       R7 R7 K17 ["IconSize"]
       44 GETTABLEKS                       R8 R4 K15 ["Enums"]
       46 GETTABLEKS                       R8 R8 K18 ["PopoverSide"]
       48 GETTABLEKS                       R9 R4 K19 ["Text"]
       50 GETTABLEKS                       R10 R4 K20 ["Tooltip"]
       52 GETTABLEKS                       R11 R4 K21 ["View"]
       54 GETTABLEKS                       R12 R4 K22 ["Hooks"]
       56 GETTABLEKS                       R12 R12 K23 ["useTokens"]
       58 GETTABLEKS                       R13 R4 K15 ["Enums"]
       60 GETTABLEKS                       R13 R13 K24 ["StateLayerAffordance"]
       62 GETTABLEKS                       R14 R4 K15 ["Enums"]
       64 GETTABLEKS                       R14 R14 K25 ["StateLayerMode"]
       66 GETIMPORT                        R15 K5 [require]
       68 GETTABLEKS                       R16 R0 K11 ["Src"]
       70 GETTABLEKS                       R16 R16 K22 ["Hooks"]
       72 GETTABLEKS                       R16 R16 K26 ["useOnStateChangedCursor"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K5 [require]
       77 GETTABLEKS                       R17 R0 K11 ["Src"]
       79 GETTABLEKS                       R17 R17 K12 ["Util"]
       81 GETTABLEKS                       R17 R17 K27 ["Services"]
       83 CALL                             R16 1 1
       84 GETTABLEKS                       R17 R16 K28 ["StartPageManager"]
       86 DUPCLOSURE                       R18 K29 [PROTO_1]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 RETURN                           R18 1
