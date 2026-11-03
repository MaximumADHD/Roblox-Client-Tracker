MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["TutorialEvent"]
       16 DUPTABLE                         R3 K15 [{["id"], ["version"] = 1, ["trigger"], ["pauseOn"], ["steps"]}]
       17 GETTABLEKS                       R4 R1 K16 ["TutorialId"]
       19 GETTABLEKS                       R4 R4 K17 ["Intro"]
       21 SETTABLEKS                       R4 R3 K9 ["id"]
       23 NEWTABLE                         R4 0 1
       25 GETTABLEKS                       R5 R1 K8 ["TutorialEvent"]
       27 GETTABLEKS                       R5 R5 K18 ["BrowseModeEntered"]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K12 ["trigger"]
       33 NEWTABLE                         R4 0 1
       35 GETTABLEKS                       R5 R1 K8 ["TutorialEvent"]
       37 GETTABLEKS                       R5 R5 K19 ["SearchSessionOpened"]
       39 SETLIST                          R4 R5 1 [1]
       41 SETTABLEKS                       R4 R3 K13 ["pauseOn"]
       43 NEWTABLE                         R4 0 3
       45 DUPTABLE                         R5 K25 [{["id"], ["titleKey"] = "Intro.WelcomeTitle", ["textKey"] = "Intro.WelcomeText", ["completeOn"]}]
       46 GETTABLEKS                       R6 R1 K26 ["TutorialStepId"]
       48 GETTABLEKS                       R6 R6 K27 ["Welcome"]
       50 SETTABLEKS                       R6 R5 K9 ["id"]
       52 NEWTABLE                         R6 0 0
       54 SETTABLEKS                       R6 R5 K24 ["completeOn"]
       56 DUPTABLE                         R6 K30 [{["id"], ["titleKey"] = "Intro.SidebarTitle", ["textKey"] = "Intro.SidebarText", ["completeOn"]}]
       57 GETTABLEKS                       R7 R1 K26 ["TutorialStepId"]
       59 GETTABLEKS                       R7 R7 K31 ["Sidebar"]
       61 SETTABLEKS                       R7 R6 K9 ["id"]
       63 NEWTABLE                         R7 0 2
       65 GETTABLEKS                       R8 R2 K32 ["ContextMenuClosed"]
       67 GETTABLEKS                       R9 R2 K33 ["ScopeSelectorClosed"]
       69 SETLIST                          R7 R8 2 [1]
       71 SETTABLEKS                       R7 R6 K24 ["completeOn"]
       73 DUPTABLE                         R7 K36 [{["id"], ["titleKey"] = "Intro.InsertOrImportTitle", ["textKey"] = "Intro.InsertOrImportText", ["completeOn"]}]
       74 GETTABLEKS                       R8 R1 K26 ["TutorialStepId"]
       76 GETTABLEKS                       R8 R8 K37 ["InsertOrImport"]
       78 SETTABLEKS                       R8 R7 K9 ["id"]
       80 NEWTABLE                         R8 0 2
       82 GETTABLEKS                       R9 R2 K38 ["ClickedOutsideTooltip"]
       84 GETTABLEKS                       R10 R2 K39 ["ImportClicked"]
       86 SETLIST                          R8 R9 2 [1]
       88 SETTABLEKS                       R8 R7 K24 ["completeOn"]
       90 SETLIST                          R4 R5 3 [1]
       92 SETTABLEKS                       R4 R3 K14 ["steps"]
       94 RETURN                           R3 1
