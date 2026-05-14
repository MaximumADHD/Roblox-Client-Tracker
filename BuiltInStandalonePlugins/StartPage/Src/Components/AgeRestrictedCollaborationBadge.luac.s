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
       10 LOADK                            R7 K3 ["ExperienceStatus.Collaborate"]
       11 NAMECALL                         R4 R1 K4 ["getText"]
       13 CALL                             R4 3 1
       14 LOADK                            R7 K2 ["Plugin"]
       15 LOADK                            R8 K5 ["Tooltip.AgeRestrictedCollaborationTitle"]
       16 NAMECALL                         R5 R1 K4 ["getText"]
       18 CALL                             R5 3 1
       19 LOADK                            R8 K2 ["Plugin"]
       20 LOADK                            R9 K6 ["Tooltip.AgeRestrictedCollaborationDescription"]
       21 NAMECALL                         R6 R1 K4 ["getText"]
       23 CALL                             R6 3 1
       24 LOADNIL                          R7
       25 GETTABLEKS                       R8 R0 K7 ["UniverseId"]
       27 JUMPIFNOT                        R8 ; [+5]
       28 LOADK                            R8 K8 ["https://create.roblox.com/dashboard/creations/experiences/"]
       29 GETTABLEKS                       R9 R0 K7 ["UniverseId"]
       31 LOADK                            R10 K9 ["/safety/collaborators"]
       32 CONCAT                           R7 R8 R10
       33 JUMPIFNOTEQKNIL                  R7 ; [+2]
       35 LOADB                            R8 0 +1
       36 LOADB                            R8 1
       37 DUPTABLE                         R9 K12 [{"LockIcon", "Label"}]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K13 ["createElement"]
       41 GETUPVAL                         R11 4
       42 DUPTABLE                         R12 K18 [{"name", "size", "style", "LayoutOrder"}]
       43 LOADK                            R13 K19 ["lock-closed"]
       44 SETTABLEKS                       R13 R12 K14 ["name"]
       46 GETUPVAL                         R13 5
       47 GETTABLEKS                       R13 R13 K20 ["Small"]
       49 SETTABLEKS                       R13 R12 K15 ["size"]
       51 GETTABLEKS                       R13 R2 K21 ["Color"]
       53 GETTABLEKS                       R13 R13 K22 ["System"]
       55 GETTABLEKS                       R13 R13 K23 ["Alert"]
       57 SETTABLEKS                       R13 R12 K16 ["style"]
       59 LOADN                            R13 1
       60 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K10 ["LockIcon"]
       65 GETUPVAL                         R10 3
       66 GETTABLEKS                       R10 R10 K13 ["createElement"]
       68 GETUPVAL                         R11 6
       69 DUPTABLE                         R12 K27 [{"Text", "textStyle", "tag", "LayoutOrder"}]
       70 SETTABLEKS                       R4 R12 K24 ["Text"]
       72 GETTABLEKS                       R13 R2 K21 ["Color"]
       74 GETTABLEKS                       R13 R13 K22 ["System"]
       76 GETTABLEKS                       R13 R13 K23 ["Alert"]
       78 SETTABLEKS                       R13 R12 K25 ["textStyle"]
       80 LOADK                            R13 K28 ["auto-xy text-label-small text-align-x-left"]
       81 SETTABLEKS                       R13 R12 K26 ["tag"]
       83 LOADN                            R13 2
       84 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K11 ["Label"]
       89 LOADNIL                          R10
       90 JUMPIFNOT                        R8 ; [+39]
       91 GETUPVAL                         R11 3
       92 GETTABLEKS                       R11 R11 K13 ["createElement"]
       94 GETUPVAL                         R12 7
       95 DUPTABLE                         R13 K33 [{"LayoutOrder", "tag", "stateLayer", "onActivated", "onStateChanged", "inputSink"}]
       96 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
       98 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      100 LOADK                            R14 K34 ["row align-x-center align-y-center gap-xsmall auto-xy"]
      101 SETTABLEKS                       R14 R13 K26 ["tag"]
      103 DUPTABLE                         R14 K37 [{"mode", "affordance"}]
      104 GETUPVAL                         R15 8
      105 GETTABLEKS                       R15 R15 K38 ["Default"]
      107 SETTABLEKS                       R15 R14 K35 ["mode"]
      109 GETUPVAL                         R15 9
      110 GETTABLEKS                       R15 R15 K39 ["Background"]
      112 SETTABLEKS                       R15 R14 K36 ["affordance"]
      114 SETTABLEKS                       R14 R13 K29 ["stateLayer"]
      116 NEWCLOSURE                       R14 P0
      117 CAPTURE                          UPVAL U10
      118 CAPTURE                          REF R7
      119 SETTABLEKS                       R14 R13 K30 ["onActivated"]
      121 SETTABLEKS                       R3 R13 K31 ["onStateChanged"]
      123 LOADB                            R14 1
      124 SETTABLEKS                       R14 R13 K32 ["inputSink"]
      126 MOVE                             R14 R9
      127 CALL                             R11 3 1
      128 MOVE                             R10 R11
      129 JUMP                             ; [+15]
      130 GETUPVAL                         R11 3
      131 GETTABLEKS                       R11 R11 K13 ["createElement"]
      133 GETUPVAL                         R12 7
      134 DUPTABLE                         R13 K40 [{"LayoutOrder", "tag"}]
      135 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
      137 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      139 LOADK                            R14 K34 ["row align-x-center align-y-center gap-xsmall auto-xy"]
      140 SETTABLEKS                       R14 R13 K26 ["tag"]
      142 MOVE                             R14 R9
      143 CALL                             R11 3 1
      144 MOVE                             R10 R11
      145 GETUPVAL                         R11 3
      146 GETTABLEKS                       R11 R11 K13 ["createElement"]
      148 GETUPVAL                         R12 11
      149 DUPTABLE                         R13 K44 [{"title", "text", "side", "LayoutOrder"}]
      150 SETTABLEKS                       R5 R13 K41 ["title"]
      152 SETTABLEKS                       R6 R13 K42 ["text"]
      154 GETUPVAL                         R14 12
      155 GETTABLEKS                       R14 R14 K45 ["Bottom"]
      157 SETTABLEKS                       R14 R13 K43 ["side"]
      159 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
      161 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      163 MOVE                             R14 R10
      164 CALL                             R11 3 -1
      165 CLOSEUPVALS                      R7
      166 RETURN                           R11 -1

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
       38 GETTABLEKS                       R6 R6 K16 ["IconSize"]
       40 GETTABLEKS                       R7 R4 K15 ["Enums"]
       42 GETTABLEKS                       R7 R7 K17 ["PopoverSide"]
       44 GETTABLEKS                       R8 R4 K18 ["Text"]
       46 GETTABLEKS                       R9 R4 K19 ["Tooltip"]
       48 GETTABLEKS                       R10 R4 K20 ["View"]
       50 GETTABLEKS                       R11 R4 K21 ["Hooks"]
       52 GETTABLEKS                       R11 R11 K22 ["useTokens"]
       54 GETTABLEKS                       R12 R4 K15 ["Enums"]
       56 GETTABLEKS                       R12 R12 K23 ["StateLayerAffordance"]
       58 GETTABLEKS                       R13 R4 K15 ["Enums"]
       60 GETTABLEKS                       R13 R13 K24 ["StateLayerMode"]
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R15 R0 K11 ["Src"]
       66 GETTABLEKS                       R15 R15 K21 ["Hooks"]
       68 GETTABLEKS                       R15 R15 K25 ["useOnStateChangedCursor"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETTABLEKS                       R16 R0 K11 ["Src"]
       75 GETTABLEKS                       R16 R16 K12 ["Util"]
       77 GETTABLEKS                       R16 R16 K26 ["Services"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R15 K27 ["StartPageManager"]
       82 DUPCLOSURE                       R17 K28 [PROTO_1]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R7
       96 RETURN                           R17 1
