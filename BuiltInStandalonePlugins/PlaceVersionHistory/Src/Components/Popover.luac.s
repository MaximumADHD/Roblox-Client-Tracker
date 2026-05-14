PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["ControlState"]
        6 GETTABLEKS                       R2 R2 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R2 ; [+12]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["Enums"]
       13 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       15 GETTABLEKS                       R2 R2 K3 ["Pressed"]
       17 JUMPIFEQ                         R0 R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K4 ["setIsHovered"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggle"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["setIsHovered"]
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R4 R2 K1 ["widget"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R3 R2 K1 ["widget"]
       15 GETTABLEKS                       R3 R3 K2 ["WindowFocusReleased"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 GETUPVAL                         R4 3
       20 MOVE                             R5 R3
       21 GETTABLEKS                       R6 R0 K3 ["toggle"]
       23 GETTABLEKS                       R6 R6 K4 ["disable"]
       25 NEWTABLE                         R7 0 1
       27 GETTABLEKS                       R8 R0 K3 ["toggle"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R4 3 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R6 0 0
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R8 R0 K3 ["toggle"]
       51 GETTABLEKS                       R8 R8 K7 ["enabled"]
       53 SETLIST                          R7 R8 1 [1]
       55 CALL                             R5 2 0
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K8 ["createElement"]
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R6 R6 K9 ["Popover"]
       62 GETTABLEKS                       R6 R6 K10 ["Root"]
       64 DUPTABLE                         R7 K12 [{"isOpen"}]
       65 GETTABLEKS                       R8 R0 K3 ["toggle"]
       67 GETTABLEKS                       R8 R8 K7 ["enabled"]
       69 SETTABLEKS                       R8 R7 K11 ["isOpen"]
       71 DUPTABLE                         R8 K15 [{"Anchor", "Content"}]
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K8 ["createElement"]
       75 GETUPVAL                         R10 4
       76 GETTABLEKS                       R10 R10 K9 ["Popover"]
       78 GETTABLEKS                       R10 R10 K13 ["Anchor"]
       80 DUPTABLE                         R11 K17 [{"LayoutOrder"}]
       81 GETTABLEKS                       R12 R0 K16 ["LayoutOrder"]
       83 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       85 GETTABLEKS                       R12 R0 K18 ["children"]
       87 GETTABLEKS                       R12 R12 K13 ["Anchor"]
       89 CALL                             R9 3 1
       90 SETTABLEKS                       R9 R8 K13 ["Anchor"]
       92 GETTABLEKS                       R9 R0 K3 ["toggle"]
       94 GETTABLEKS                       R9 R9 K7 ["enabled"]
       96 JUMPIFNOT                        R9 ; [+71]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R9 R9 K8 ["createElement"]
      100 GETUPVAL                         R10 4
      101 GETTABLEKS                       R10 R10 K9 ["Popover"]
      103 GETTABLEKS                       R10 R10 K14 ["Content"]
      105 DUPTABLE                         R11 K23 [{"onPressedOutside", "side", "align", "hasArrow"}]
      106 GETTABLEKS                       R12 R0 K3 ["toggle"]
      108 GETTABLEKS                       R12 R12 K4 ["disable"]
      110 SETTABLEKS                       R12 R11 K19 ["onPressedOutside"]
      112 DUPTABLE                         R12 K26 [{"position", "offset"}]
      113 GETTABLEKS                       R13 R0 K20 ["side"]
      115 SETTABLEKS                       R13 R12 K24 ["position"]
      117 LOADN                            R13 5
      118 SETTABLEKS                       R13 R12 K25 ["offset"]
      120 SETTABLEKS                       R12 R11 K20 ["side"]
      122 DUPTABLE                         R12 K26 [{"position", "offset"}]
      123 GETTABLEKS                       R13 R0 K21 ["align"]
      125 SETTABLEKS                       R13 R12 K24 ["position"]
      127 LOADN                            R13 0
      128 SETTABLEKS                       R13 R12 K25 ["offset"]
      130 SETTABLEKS                       R12 R11 K21 ["align"]
      132 LOADB                            R12 0
      133 SETTABLEKS                       R12 R11 K22 ["hasArrow"]
      135 DUPTABLE                         R12 K28 [{"View"}]
      136 GETUPVAL                         R13 0
      137 GETTABLEKS                       R13 R13 K8 ["createElement"]
      139 GETUPVAL                         R14 4
      140 GETTABLEKS                       R14 R14 K27 ["View"]
      142 DUPTABLE                         R15 K32 [{"tag", "onStateChanged", "stateLayer"}]
      143 LOADK                            R16 K33 ["size-0-0 auto-xy stroke-emphasis radius-medium"]
      144 SETTABLEKS                       R16 R15 K29 ["tag"]
      146 SETTABLEKS                       R4 R15 K30 ["onStateChanged"]
      148 DUPTABLE                         R16 K35 [{"affordance"}]
      149 GETUPVAL                         R17 4
      150 GETTABLEKS                       R17 R17 K36 ["Enums"]
      152 GETTABLEKS                       R17 R17 K37 ["StateLayerAffordance"]
      154 GETTABLEKS                       R17 R17 K38 ["None"]
      156 SETTABLEKS                       R17 R16 K34 ["affordance"]
      158 SETTABLEKS                       R16 R15 K31 ["stateLayer"]
      160 GETTABLEKS                       R16 R0 K18 ["children"]
      162 GETTABLEKS                       R16 R16 K14 ["Content"]
      164 CALL                             R13 3 1
      165 SETTABLEKS                       R13 R12 K27 ["View"]
      167 CALL                             R9 3 1
      168 SETTABLEKS                       R9 R8 K14 ["Content"]
      170 CALL                             R5 3 -1
      171 RETURN                           R5 -1

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
       28 GETTABLEKS                       R4 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["WidgetContext"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R4 K13 ["PopoverContext"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K14 ["useEventConnection"]
       44 DUPCLOSURE                       R8 K15 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R3
       50 RETURN                           R8 1
