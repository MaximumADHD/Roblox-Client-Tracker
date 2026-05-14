PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Enums"]
        8 GETTABLEKS                       R3 R3 K2 ["ControlState"]
       10 GETTABLEKS                       R3 R3 K3 ["Default"]
       12 CALL                             R2 1 2
       13 LOADB                            R4 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K1 ["Enums"]
       17 GETTABLEKS                       R5 R5 K2 ["ControlState"]
       19 GETTABLEKS                       R5 R5 K4 ["Hover"]
       21 JUMPIFEQ                         R2 R5 ; [+12]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K1 ["Enums"]
       26 GETTABLEKS                       R5 R5 K2 ["ControlState"]
       28 GETTABLEKS                       R5 R5 K5 ["Pressed"]
       30 JUMPIFEQ                         R2 R5 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 GETTABLEKS                       R6 R0 K6 ["maxWidth"]
       36 JUMPIFNOT                        R6 ; [+7]
       37 GETIMPORT                        R5 K9 [Vector2.new]
       39 GETTABLEKS                       R6 R0 K6 ["maxWidth"]
       41 LOADK                            R7 K10 [∞]
       42 CALL                             R5 2 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K11 ["createElement"]
       48 GETUPVAL                         R7 3
       49 DUPTABLE                         R8 K16 [{"toggle", "side", "align", "LayoutOrder"}]
       50 GETTABLEKS                       R9 R0 K12 ["toggle"]
       52 SETTABLEKS                       R9 R8 K12 ["toggle"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K1 ["Enums"]
       57 GETTABLEKS                       R9 R9 K17 ["PopoverSide"]
       59 GETTABLEKS                       R9 R9 K18 ["Bottom"]
       61 SETTABLEKS                       R9 R8 K13 ["side"]
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K1 ["Enums"]
       66 GETTABLEKS                       R9 R9 K19 ["PopoverAlign"]
       68 GETTABLEKS                       R9 R9 K20 ["Start"]
       70 SETTABLEKS                       R9 R8 K14 ["align"]
       72 GETTABLEKS                       R9 R0 K15 ["LayoutOrder"]
       74 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       76 DUPTABLE                         R9 K23 [{"Anchor", "Content"}]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K11 ["createElement"]
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R11 R11 K24 ["View"]
       83 DUPTABLE                         R12 K31 [{"tag", "onActivated", "sizeConstraint", "onStateChanged", "stateLayer", "testId", "LayoutOrder"}]
       84 NEWTABLE                         R13 4 0
       86 LOADB                            R14 1
       87 SETTABLEKS                       R14 R13 K32 ["size-0-0 auto-xy row align-y-center gap-xsmall padding-xsmall radius-small"]
       89 SETTABLEKS                       R4 R13 K33 ["stroke-emphasis"]
       91 NOT                              R14 R4
       92 SETTABLEKS                       R14 R13 K34 ["stroke-default"]
       94 SETTABLEKS                       R13 R12 K25 ["tag"]
       96 GETTABLEKS                       R13 R0 K12 ["toggle"]
       98 GETTABLEKS                       R13 R13 K12 ["toggle"]
      100 SETTABLEKS                       R13 R12 K26 ["onActivated"]
      102 DUPTABLE                         R13 K36 [{"MaxSize"}]
      103 SETTABLEKS                       R5 R13 K35 ["MaxSize"]
      105 SETTABLEKS                       R13 R12 K27 ["sizeConstraint"]
      107 SETTABLEKS                       R3 R12 K28 ["onStateChanged"]
      109 DUPTABLE                         R13 K38 [{"affordance"}]
      110 GETUPVAL                         R14 2
      111 GETTABLEKS                       R14 R14 K1 ["Enums"]
      113 GETTABLEKS                       R14 R14 K39 ["StateLayerAffordance"]
      115 GETTABLEKS                       R14 R14 K40 ["None"]
      117 SETTABLEKS                       R14 R13 K37 ["affordance"]
      119 SETTABLEKS                       R13 R12 K29 ["stateLayer"]
      121 LOADK                            R13 K41 ["--dropdown-button"]
      122 SETTABLEKS                       R13 R12 K30 ["testId"]
      124 MOVE                             R13 R1
      125 CALL                             R13 0 1
      126 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      128 DUPTABLE                         R13 K44 [{"Text", "ExpandIcon"}]
      129 GETUPVAL                         R14 1
      130 GETTABLEKS                       R14 R14 K11 ["createElement"]
      132 GETUPVAL                         R15 2
      133 GETTABLEKS                       R15 R15 K42 ["Text"]
      135 DUPTABLE                         R16 K45 [{"tag", "Text", "LayoutOrder"}]
      136 NEWTABLE                         R17 2 0
      138 LOADB                            R18 1
      139 SETTABLEKS                       R18 R17 K46 ["size-0-0 auto-xy fill text-label-small text-truncate-split"]
      141 SETTABLEKS                       R4 R17 K47 ["content-emphasis"]
      143 SETTABLEKS                       R17 R16 K25 ["tag"]
      145 GETTABLEKS                       R17 R0 K48 ["text"]
      147 SETTABLEKS                       R17 R16 K42 ["Text"]
      149 MOVE                             R17 R1
      150 CALL                             R17 0 1
      151 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      153 CALL                             R14 2 1
      154 SETTABLEKS                       R14 R13 K42 ["Text"]
      156 GETUPVAL                         R14 1
      157 GETTABLEKS                       R14 R14 K11 ["createElement"]
      159 GETUPVAL                         R15 2
      160 GETTABLEKS                       R15 R15 K49 ["Icon"]
      162 DUPTABLE                         R16 K52 [{"name", "size", "LayoutOrder"}]
      163 GETTABLEKS                       R18 R0 K12 ["toggle"]
      165 GETTABLEKS                       R18 R18 K53 ["enabled"]
      167 JUMPIFNOT                        R18 ; [+8]
      168 GETUPVAL                         R17 2
      169 GETTABLEKS                       R17 R17 K1 ["Enums"]
      171 GETTABLEKS                       R17 R17 K54 ["IconName"]
      173 GETTABLEKS                       R17 R17 K55 ["ChevronLargeUp"]
      175 JUMP                             ; [+7]
      176 GETUPVAL                         R17 2
      177 GETTABLEKS                       R17 R17 K1 ["Enums"]
      179 GETTABLEKS                       R17 R17 K54 ["IconName"]
      181 GETTABLEKS                       R17 R17 K56 ["ChevronLargeDown"]
      183 SETTABLEKS                       R17 R16 K50 ["name"]
      185 GETUPVAL                         R17 2
      186 GETTABLEKS                       R17 R17 K1 ["Enums"]
      188 GETTABLEKS                       R17 R17 K57 ["IconSize"]
      190 GETTABLEKS                       R17 R17 K58 ["Small"]
      192 SETTABLEKS                       R17 R16 K51 ["size"]
      194 MOVE                             R17 R1
      195 CALL                             R17 0 1
      196 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      198 CALL                             R14 2 1
      199 SETTABLEKS                       R14 R13 K43 ["ExpandIcon"]
      201 CALL                             R10 3 1
      202 SETTABLEKS                       R10 R9 K21 ["Anchor"]
      204 GETTABLEKS                       R10 R0 K59 ["children"]
      206 GETTABLEKS                       R10 R10 K22 ["Content"]
      208 SETTABLEKS                       R10 R9 K22 ["Content"]
      210 CALL                             R6 3 -1
      211 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["createNextOrder"]
       30 GETTABLEKS                       R5 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Components"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["Popover"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K14 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 RETURN                           R7 1
