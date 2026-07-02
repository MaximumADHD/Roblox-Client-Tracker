PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialData"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K5 [{["tag"] = "col flex-between align-x-center align-y-center padding-x-medium bg-surface-100", ["Size"]}]
       10 GETIMPORT                        R5 K8 [UDim2.new]
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 LOADN                            R9 32
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R4 K4 ["Size"]
       19 DUPTABLE                         R5 K11 [{"Content", "Divider"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K1 ["createElement"]
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K13 [{["tag"] = "row flex-between align-x-center align-y-center fill", ["Size"]}]
       25 GETIMPORT                        R9 K8 [UDim2.new]
       27 LOADN                            R10 1
       28 LOADN                            R11 0
       29 LOADN                            R12 0
       30 LOADN                            R13 0
       31 CALL                             R9 4 1
       32 SETTABLEKS                       R9 R8 K4 ["Size"]
       34 DUPTABLE                         R9 K16 [{"Title", "TableOfContents"}]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K1 ["createElement"]
       38 GETUPVAL                         R11 2
       39 DUPTABLE                         R12 K21 [{["tag"] = "size-0-full auto-x text-body-medium text-align-x-left", ["Text"], ["LayoutOrder"] = 0}]
       40 GETTABLEKS                       R13 R1 K22 ["info"]
       42 GETTABLEKS                       R13 R13 K23 ["title"]
       44 SETTABLEKS                       R13 R12 K18 ["Text"]
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K14 ["Title"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K1 ["createElement"]
       52 GETUPVAL                         R11 3
       53 DUPTABLE                         R12 K32 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["size"], ["onActivated"], ["testId"] = "--knowledge-tutorials-TableOfContentsButton"}]
       54 GETTABLEKS                       R14 R0 K33 ["isTableOfContentsOpen"]
       56 JUMPIFNOT                        R14 ; [+2]
       57 LOADK                            R13 K34 ["icons/navigation/close"]
       58 JUMP                             ; [+1]
       59 LOADK                            R13 K35 ["icons/common/hamburgermenu"]
       60 SETTABLEKS                       R13 R12 K25 ["icon"]
       62 GETUPVAL                         R13 4
       63 GETTABLEKS                       R13 R13 K36 ["Enums"]
       65 GETTABLEKS                       R13 R13 K37 ["IconSize"]
       67 GETTABLEKS                       R13 R13 K38 ["Small"]
       69 SETTABLEKS                       R13 R12 K28 ["size"]
       71 GETTABLEKS                       R13 R0 K39 ["onTableOfContentsClicked"]
       73 SETTABLEKS                       R13 R12 K29 ["onActivated"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K15 ["TableOfContents"]
       78 CALL                             R6 3 1
       79 SETTABLEKS                       R6 R5 K9 ["Content"]
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K1 ["createElement"]
       84 GETUPVAL                         R7 5
       85 DUPTABLE                         R8 K40 [{["LayoutOrder"] = 1}]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K10 ["Divider"]
       89 CALL                             R2 3 -1
       90 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["View"]
       30 GETTABLEKS                       R5 R3 K12 ["Text"]
       32 GETTABLEKS                       R6 R3 K13 ["IconButton"]
       34 GETTABLEKS                       R7 R3 K14 ["Divider"]
       36 DUPCLOSURE                       R8 K15 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R7
       43 RETURN                           R8 1
