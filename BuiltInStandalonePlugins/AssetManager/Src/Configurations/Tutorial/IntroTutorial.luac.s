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
       16 DUPTABLE                         R3 K16 [{["id"], ["version"] = 1, ["ixpGate"], ["trigger"], ["pauseOn"], ["steps"]}]
       17 GETTABLEKS                       R4 R1 K17 ["TutorialId"]
       19 GETTABLEKS                       R4 R4 K18 ["Intro"]
       21 SETTABLEKS                       R4 R3 K9 ["id"]
       23 DUPTABLE                         R4 K21 [{"variable", "allowedValues"}]
       24 GETTABLEKS                       R5 R1 K22 ["IxpVariable"]
       26 GETTABLEKS                       R5 R5 K23 ["IntroTutorial"]
       28 SETTABLEKS                       R5 R4 K19 ["variable"]
       30 NEWTABLE                         R5 0 1
       32 GETTABLEKS                       R6 R1 K24 ["IxpValue"]
       34 GETTABLEKS                       R6 R6 K25 ["Experiment"]
       36 SETLIST                          R5 R6 1 [1]
       38 SETTABLEKS                       R5 R4 K20 ["allowedValues"]
       40 SETTABLEKS                       R4 R3 K12 ["ixpGate"]
       42 NEWTABLE                         R4 0 1
       44 GETTABLEKS                       R5 R1 K8 ["TutorialEvent"]
       46 GETTABLEKS                       R5 R5 K26 ["BrowseModeEntered"]
       48 SETLIST                          R4 R5 1 [1]
       50 SETTABLEKS                       R4 R3 K13 ["trigger"]
       52 NEWTABLE                         R4 0 1
       54 GETTABLEKS                       R5 R1 K8 ["TutorialEvent"]
       56 GETTABLEKS                       R5 R5 K27 ["SearchSessionOpened"]
       58 SETLIST                          R4 R5 1 [1]
       60 SETTABLEKS                       R4 R3 K14 ["pauseOn"]
       62 NEWTABLE                         R4 0 3
       64 DUPTABLE                         R5 K33 [{["id"], ["titleKey"] = "Intro.WelcomeTitle", ["textKey"] = "Intro.WelcomeText", ["completeOn"]}]
       65 GETTABLEKS                       R6 R1 K34 ["TutorialStepId"]
       67 GETTABLEKS                       R6 R6 K35 ["Welcome"]
       69 SETTABLEKS                       R6 R5 K9 ["id"]
       71 NEWTABLE                         R6 0 0
       73 SETTABLEKS                       R6 R5 K32 ["completeOn"]
       75 DUPTABLE                         R6 K38 [{["id"], ["titleKey"] = "Intro.SidebarTitle", ["textKey"] = "Intro.SidebarText", ["completeOn"]}]
       76 GETTABLEKS                       R7 R1 K34 ["TutorialStepId"]
       78 GETTABLEKS                       R7 R7 K39 ["Sidebar"]
       80 SETTABLEKS                       R7 R6 K9 ["id"]
       82 NEWTABLE                         R7 0 2
       84 GETTABLEKS                       R8 R2 K40 ["ContextMenuClosed"]
       86 GETTABLEKS                       R9 R2 K41 ["ScopeSelectorClosed"]
       88 SETLIST                          R7 R8 2 [1]
       90 SETTABLEKS                       R7 R6 K32 ["completeOn"]
       92 DUPTABLE                         R7 K44 [{["id"], ["titleKey"] = "Intro.InsertOrImportTitle", ["textKey"] = "Intro.InsertOrImportText", ["completeOn"]}]
       93 GETTABLEKS                       R8 R1 K34 ["TutorialStepId"]
       95 GETTABLEKS                       R8 R8 K45 ["InsertOrImport"]
       97 SETTABLEKS                       R8 R7 K9 ["id"]
       99 NEWTABLE                         R8 0 2
      101 GETTABLEKS                       R9 R2 K46 ["ClickedOutsideTooltip"]
      103 GETTABLEKS                       R10 R2 K47 ["ImportClicked"]
      105 SETLIST                          R8 R9 2 [1]
      107 SETTABLEKS                       R8 R7 K32 ["completeOn"]
      109 SETLIST                          R4 R5 3 [1]
      111 SETTABLEKS                       R4 R3 K15 ["steps"]
      113 RETURN                           R3 1
