PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K1 ["widget"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R3 R1 K1 ["widget"]
       10 GETTABLEKS                       R2 R3 K2 ["WindowFocusReleased"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R2
       16 GETTABLEKS                       R6 R0 K3 ["toggle"]
       18 GETTABLEKS                       R5 R6 K4 ["disable"]
       20 NEWTABLE                         R6 0 1
       22 GETTABLEKS                       R7 R0 K3 ["toggle"]
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R3 3 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K5 ["createElement"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R5 R6 K6 ["Popover"]
       33 GETTABLEKS                       R4 R5 K7 ["Root"]
       35 DUPTABLE                         R5 K9 [{"isOpen"}]
       36 GETTABLEKS                       R7 R0 K3 ["toggle"]
       38 GETTABLEKS                       R6 R7 K10 ["enabled"]
       40 SETTABLEKS                       R6 R5 K8 ["isOpen"]
       42 DUPTABLE                         R6 K13 [{"Anchor", "Content"}]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K5 ["createElement"]
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R9 R10 K6 ["Popover"]
       49 GETTABLEKS                       R8 R9 K11 ["Anchor"]
       51 DUPTABLE                         R9 K15 [{"LayoutOrder"}]
       52 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
       54 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       56 GETTABLEKS                       R11 R0 K16 ["children"]
       58 GETTABLEKS                       R10 R11 K11 ["Anchor"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K11 ["Anchor"]
       63 GETTABLEKS                       R8 R0 K3 ["toggle"]
       65 GETTABLEKS                       R7 R8 K10 ["enabled"]
       67 JUMPIFNOT                        R7 ; [+57]
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R7 R8 K5 ["createElement"]
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R9 R10 K6 ["Popover"]
       74 GETTABLEKS                       R8 R9 K12 ["Content"]
       76 DUPTABLE                         R9 K21 [{"onPressedOutside", "side", "align", "hasArrow"}]
       77 GETTABLEKS                       R11 R0 K3 ["toggle"]
       79 GETTABLEKS                       R10 R11 K4 ["disable"]
       81 SETTABLEKS                       R10 R9 K17 ["onPressedOutside"]
       83 DUPTABLE                         R10 K24 [{"position", "offset"}]
       84 GETTABLEKS                       R11 R0 K18 ["side"]
       86 SETTABLEKS                       R11 R10 K22 ["position"]
       88 LOADN                            R11 5
       89 SETTABLEKS                       R11 R10 K23 ["offset"]
       91 SETTABLEKS                       R10 R9 K18 ["side"]
       93 DUPTABLE                         R10 K24 [{"position", "offset"}]
       94 GETTABLEKS                       R11 R0 K19 ["align"]
       96 SETTABLEKS                       R11 R10 K22 ["position"]
       98 LOADN                            R11 0
       99 SETTABLEKS                       R11 R10 K23 ["offset"]
      101 SETTABLEKS                       R10 R9 K19 ["align"]
      103 LOADB                            R10 0
      104 SETTABLEKS                       R10 R9 K20 ["hasArrow"]
      106 DUPTABLE                         R10 K26 [{"View"}]
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R11 R12 K5 ["createElement"]
      110 GETUPVAL                         R13 3
      111 GETTABLEKS                       R12 R13 K25 ["View"]
      113 DUPTABLE                         R13 K28 [{"tag"}]
      114 LOADK                            R14 K29 ["size-0-0 auto-xy stroke-emphasis radius-medium"]
      115 SETTABLEKS                       R14 R13 K27 ["tag"]
      117 GETTABLEKS                       R15 R0 K16 ["children"]
      119 GETTABLEKS                       R14 R15 K12 ["Content"]
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K25 ["View"]
      124 CALL                             R7 3 1
      125 SETTABLEKS                       R7 R6 K12 ["Content"]
      127 CALL                             R3 3 -1
      128 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["WidgetContext"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K13 ["useEventConnection"]
       39 DUPCLOSURE                       R7 K14 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R3
       44 RETURN                           R7 1
