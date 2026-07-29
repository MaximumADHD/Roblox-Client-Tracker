PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["isDisabled"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["keepsMenuOpen"]
        6 JUMPIF                           R2 ; [+4]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["onClose"]
       10 CALL                             R2 0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["onActivated"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Popover"]
        8 GETTABLEKS                       R3 R3 K2 ["Root"]
       10 DUPTABLE                         R4 K4 [{"isOpen"}]
       11 GETTABLEKS                       R5 R0 K3 ["isOpen"]
       13 SETTABLEKS                       R5 R4 K3 ["isOpen"]
       15 DUPTABLE                         R5 K8 [{"Anchor", "Trigger", "Content"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["createElement"]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K1 ["Popover"]
       22 GETTABLEKS                       R7 R7 K5 ["Anchor"]
       24 DUPTABLE                         R8 K10 [{"anchorRef"}]
       25 GETTABLEKS                       R9 R0 K9 ["anchorRef"]
       27 SETTABLEKS                       R9 R8 K9 ["anchorRef"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K5 ["Anchor"]
       32 GETTABLEKS                       R6 R0 K11 ["trigger"]
       34 SETTABLEKS                       R6 R5 K6 ["Trigger"]
       36 GETTABLEKS                       R7 R0 K3 ["isOpen"]
       38 JUMPIFNOT                        R7 ; [+70]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K0 ["createElement"]
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K1 ["Popover"]
       45 GETTABLEKS                       R7 R7 K7 ["Content"]
       47 DUPTABLE                         R8 K17 [{["hasArrow"] = False, ["side"], ["align"], ["onPressedOutside"]}]
       48 DUPTABLE                         R9 K20 [{"position", "offset"}]
       49 GETTABLEKS                       R10 R0 K14 ["side"]
       51 JUMPIF                           R10 ; [+7]
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K21 ["Enums"]
       55 GETTABLEKS                       R10 R10 K22 ["PopoverSide"]
       57 GETTABLEKS                       R10 R10 K23 ["Bottom"]
       59 SETTABLEKS                       R10 R9 K18 ["position"]
       61 GETUPVAL                         R10 2
       62 GETTABLEKS                       R10 R10 K24 ["POPOVER_SIDE_OFFSET"]
       64 SETTABLEKS                       R10 R9 K19 ["offset"]
       66 SETTABLEKS                       R9 R8 K14 ["side"]
       68 GETTABLEKS                       R9 R0 K15 ["align"]
       70 JUMPIF                           R9 ; [+7]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K21 ["Enums"]
       74 GETTABLEKS                       R9 R9 K25 ["PopoverAlign"]
       76 GETTABLEKS                       R9 R9 K26 ["Start"]
       78 SETTABLEKS                       R9 R8 K15 ["align"]
       80 GETTABLEKS                       R9 R0 K27 ["onClose"]
       82 SETTABLEKS                       R9 R8 K16 ["onPressedOutside"]
       84 DUPTABLE                         R9 K29 [{"Menu"}]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K0 ["createElement"]
       88 GETUPVAL                         R11 3
       89 DUPTABLE                         R12 K34 [{"items", "width", "maxHeight", "onActivated"}]
       90 GETTABLEKS                       R13 R0 K30 ["items"]
       92 SETTABLEKS                       R13 R12 K30 ["items"]
       94 GETTABLEKS                       R13 R0 K31 ["width"]
       96 SETTABLEKS                       R13 R12 K31 ["width"]
       98 GETTABLEKS                       R13 R0 K32 ["maxHeight"]
      100 SETTABLEKS                       R13 R12 K32 ["maxHeight"]
      102 SETTABLEKS                       R1 R12 K33 ["onActivated"]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K28 ["Menu"]
      107 CALL                             R6 3 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R6
      110 SETTABLEKS                       R6 R5 K7 ["Content"]
      112 CALL                             R2 3 -1
      113 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["MenuSurface"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K12 ["Types"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K13 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 RETURN                           R6 1
