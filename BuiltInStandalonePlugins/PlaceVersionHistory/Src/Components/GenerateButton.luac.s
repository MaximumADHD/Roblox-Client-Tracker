PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Tooltip"]
        6 DUPTABLE                         R3 K6 [{"title", "side", "align", "LayoutOrder"}]
        7 GETTABLEKS                       R4 R0 K7 ["tooltip"]
        9 SETTABLEKS                       R4 R3 K2 ["title"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K8 ["Enums"]
       14 GETTABLEKS                       R4 R4 K9 ["PopoverSide"]
       16 GETTABLEKS                       R4 R4 K10 ["Top"]
       18 SETTABLEKS                       R4 R3 K3 ["side"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K8 ["Enums"]
       23 GETTABLEKS                       R4 R4 K11 ["PopoverAlign"]
       25 GETTABLEKS                       R4 R4 K12 ["End"]
       27 SETTABLEKS                       R4 R3 K4 ["align"]
       29 GETTABLEKS                       R4 R0 K5 ["LayoutOrder"]
       31 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K0 ["createElement"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K13 ["IconButton"]
       39 DUPTABLE                         R6 K21 [{["icon"], ["variant"], ["onActivated"], ["size"], ["isDisabled"], ["testId"] = "--notes-dialog-generate-button"}]
       40 GETTABLEKS                       R8 R0 K22 ["isGenerating"]
       42 JUMPIFNOT                        R8 ; [+8]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K8 ["Enums"]
       46 GETTABLEKS                       R7 R7 K23 ["IconName"]
       48 GETTABLEKS                       R7 R7 K24 ["StopLarge"]
       50 JUMP                             ; [+7]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K8 ["Enums"]
       54 GETTABLEKS                       R7 R7 K23 ["IconName"]
       56 GETTABLEKS                       R7 R7 K25 ["TwoArrowsSpinClockwise"]
       58 SETTABLEKS                       R7 R6 K14 ["icon"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K8 ["Enums"]
       63 GETTABLEKS                       R7 R7 K26 ["ButtonVariant"]
       65 GETTABLEKS                       R7 R7 K27 ["Utility"]
       67 SETTABLEKS                       R7 R6 K15 ["variant"]
       69 GETTABLEKS                       R7 R0 K16 ["onActivated"]
       71 SETTABLEKS                       R7 R6 K16 ["onActivated"]
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K8 ["Enums"]
       76 GETTABLEKS                       R7 R7 K28 ["InputSize"]
       78 GETTABLEKS                       R7 R7 K29 ["Small"]
       80 SETTABLEKS                       R7 R6 K17 ["size"]
       82 GETTABLEKS                       R7 R0 K18 ["isDisabled"]
       84 SETTABLEKS                       R7 R6 K18 ["isDisabled"]
       86 CALL                             R4 2 -1
       87 CALL                             R1 -1 -1
       88 RETURN                           R1 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 GETTABLEKS                       R4 R1 K10 ["memo"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
