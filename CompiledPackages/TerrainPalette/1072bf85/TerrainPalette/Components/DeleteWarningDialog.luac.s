PROTO_0:
        0 DUPTABLE                         R3 K7 [{[1] = , ["inputDelay"] = , ["ref"] = , ["text"], ["variant"], ["onActivated"]}]
        1 SETTABLEKS                       R0 R3 K4 ["text"]
        3 SETTABLEKS                       R1 R3 K5 ["variant"]
        5 SETTABLEKS                       R2 R3 K6 ["onActivated"]
        7 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R2 R1
        3 CALL                             R2 0 1
        4 MOVE                             R3 R1
        5 CALL                             R3 0 1
        6 MOVE                             R4 R1
        7 CALL                             R4 0 1
        8 DUPTABLE                         R5 K2 [{"LayoutOrder", "actions"}]
        9 SETTABLEKS                       R4 R5 K0 ["LayoutOrder"]
       11 NEWTABLE                         R6 0 2
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K3 ["Alert"]
       16 GETTABLEKS                       R9 R0 K4 ["onConfirm"]
       18 DUPTABLE                         R7 K13 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"] = "Delete", ["variant"], ["onActivated"]}]
       19 SETTABLEKS                       R8 R7 K11 ["variant"]
       21 SETTABLEKS                       R9 R7 K12 ["onActivated"]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K14 ["Standard"]
       26 GETTABLEKS                       R10 R0 K15 ["onCancel"]
       28 DUPTABLE                         R8 K17 [{["icon"] = , ["inputDelay"] = , ["ref"] = , ["text"] = "Cancel", ["variant"], ["onActivated"]}]
       29 SETTABLEKS                       R9 R8 K11 ["variant"]
       31 SETTABLEKS                       R10 R8 K12 ["onActivated"]
       33 SETLIST                          R6 R7 2 [1]
       35 SETTABLEKS                       R6 R5 K1 ["actions"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K18 ["createElement"]
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R7 R7 K19 ["Root"]
       43 DUPTABLE                         R8 K28 [{["disablePortal"] = False, ["hasBackdrop"] = True, ["onClose"], ["size"], ["testId"] = "DeleteWarningDialog"}]
       44 GETTABLEKS                       R9 R0 K15 ["onCancel"]
       46 SETTABLEKS                       R9 R8 K24 ["onClose"]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K29 ["Small"]
       51 SETTABLEKS                       R9 R8 K25 ["size"]
       53 DUPTABLE                         R9 K33 [{"Title", "Content", "Actions"}]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K18 ["createElement"]
       57 GETUPVAL                         R11 3
       58 GETTABLEKS                       R11 R11 K30 ["Title"]
       60 DUPTABLE                         R12 K35 [{[1], ["text"] = "Delete Terrain Material Slot"}]
       61 SETTABLEKS                       R2 R12 K0 ["LayoutOrder"]
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K30 ["Title"]
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K18 ["createElement"]
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K31 ["Content"]
       72 DUPTABLE                         R12 K36 [{"LayoutOrder"}]
       73 SETTABLEKS                       R3 R12 K0 ["LayoutOrder"]
       75 DUPTABLE                         R13 K38 [{"Body"}]
       76 GETUPVAL                         R14 2
       77 GETTABLEKS                       R14 R14 K18 ["createElement"]
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R15 R15 K39 ["Text"]
       82 DUPTABLE                         R16 K41 [{["Text"] = "Deleting a default slot may cause APIs and third-party terrain plugins to behave unexpectedly. Are you sure you want to continue?"}]
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K37 ["Body"]
       86 CALL                             R10 3 1
       87 SETTABLEKS                       R10 R9 K31 ["Content"]
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R10 R10 K18 ["createElement"]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R11 R11 K32 ["Actions"]
       95 MOVE                             R12 R5
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K32 ["Actions"]
       99 CALL                             R6 3 -1
      100 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["ButtonVariant"]
       32 GETTABLEKS                       R5 R1 K12 ["Dialog"]
       34 GETTABLEKS                       R6 R1 K10 ["Enums"]
       36 GETTABLEKS                       R6 R6 K13 ["DialogSize"]
       38 GETTABLEKS                       R7 R3 K14 ["createNextOrder"]
       40 DUPCLOSURE                       R8 K15 [PROTO_0]
       41 DUPCLOSURE                       R9 K16 [PROTO_1]
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 RETURN                           R9 1
