PROTO_0:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["TutorialEvent"]
        5 GETTABLEKS                       R3 R3 K1 ["SearchSessionOpened"]
        7 NAMECALL                         R1 R1 K2 ["notify"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFLT                         R3 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 JUMPIFNOT                        R2 ; [+10]
        8 JUMPIF                           R1 ; [+9]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K0 ["TutorialEvent"]
       13 GETTABLEKS                       R4 R4 K1 ["ContextMenuClosed"]
       15 NAMECALL                         R2 R2 K2 ["notify"]
       17 CALL                             R2 2 0
       18 SETUPVAL                         R1 0
       19 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K15 [{[1], ["_pluginController"], ["_explorerController"], ["_layoutController"], ["_itemsController"], ["_searchController"], ["_tutorials"], ["_activeTutorialState"] = , ["_activeTutorialDefinition"] = , ["_finishedTutorials"], ["_sessionFinishedCount"] = 0, ["_connections"], ["OnTutorialStateChanged"]}]
        1 ORK                              R4 R1 K16 [False]
        2 SETTABLEKS                       R4 R3 K0 ["_isMock"]
        4 GETTABLEKS                       R4 R0 K17 ["PluginController"]
        6 SETTABLEKS                       R4 R3 K1 ["_pluginController"]
        8 GETTABLEKS                       R4 R0 K18 ["ExplorerController"]
       10 SETTABLEKS                       R4 R3 K2 ["_explorerController"]
       12 GETTABLEKS                       R4 R0 K19 ["LayoutController"]
       14 SETTABLEKS                       R4 R3 K3 ["_layoutController"]
       16 GETTABLEKS                       R4 R0 K20 ["ItemsController"]
       18 SETTABLEKS                       R4 R3 K4 ["_itemsController"]
       20 GETTABLEKS                       R4 R0 K21 ["SearchController"]
       22 SETTABLEKS                       R4 R3 K5 ["_searchController"]
       24 GETTABLEKS                       R4 R0 K22 ["Tutorials"]
       26 JUMPIF                           R4 ; [+4]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K23 ["getTutorials"]
       30 CALL                             R4 0 1
       31 SETTABLEKS                       R4 R3 K6 ["_tutorials"]
       33 NEWTABLE                         R4 0 0
       35 SETTABLEKS                       R4 R3 K10 ["_finishedTutorials"]
       37 NEWTABLE                         R4 0 0
       39 SETTABLEKS                       R4 R3 K13 ["_connections"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K24 ["new"]
       44 CALL                             R4 0 1
       45 SETTABLEKS                       R4 R3 K14 ["OnTutorialStateChanged"]
       47 GETUPVAL                         R4 2
       48 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       50 GETIMPORT                        R2 K26 [setmetatable]
       52 CALL                             R2 2 1
       53 GETTABLEKS                       R3 R2 K5 ["_searchController"]
       55 JUMPIFNOT                        R3 ; [+21]
       56 GETTABLEKS                       R3 R2 K5 ["_searchController"]
       58 GETTABLEKS                       R3 R3 K27 ["OnShowSearchOptionsChanged"]
       60 JUMPIFNOT                        R3 ; [+16]
       61 GETTABLEKS                       R4 R2 K13 ["_connections"]
       63 GETTABLEKS                       R5 R2 K5 ["_searchController"]
       65 GETTABLEKS                       R5 R5 K27 ["OnShowSearchOptionsChanged"]
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U3
       70 NAMECALL                         R5 R5 K28 ["Connect"]
       72 CALL                             R5 2 -1
       73 FASTCALL                         TABLE_INSERT ; [+2]
       74 GETIMPORT                        R3 K31 [table.insert]
       76 CALL                             R3 -1 0
       77 GETTABLEKS                       R3 R2 K1 ["_pluginController"]
       79 JUMPIFNOT                        R3 ; [+24]
       80 GETTABLEKS                       R3 R2 K1 ["_pluginController"]
       82 GETTABLEKS                       R3 R3 K32 ["OnContextMenuChanged"]
       84 JUMPIFNOT                        R3 ; [+19]
       85 LOADB                            R3 0
       86 GETTABLEKS                       R5 R2 K13 ["_connections"]
       88 GETTABLEKS                       R6 R2 K1 ["_pluginController"]
       90 GETTABLEKS                       R6 R6 K32 ["OnContextMenuChanged"]
       92 NEWCLOSURE                       R8 P1
       93 CAPTURE                          REF R3
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U3
       96 NAMECALL                         R6 R6 K28 ["Connect"]
       98 CALL                             R6 2 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R4 K31 [table.insert]
      102 CALL                             R4 -1 0
      103 CLOSEUPVALS                      R3
      104 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETTABLEKS                       R3 R0 K0 ["_tutorials"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R9 R7 K1 ["id"]
       10 GETTABLE                         R8 R1 R9
       11 FASTCALL1                        TYPEOF R8 ; [+3]
       12 MOVE                             R10 R8
       13 GETIMPORT                        R9 K3 [typeof]
       15 CALL                             R9 1 1
       16 JUMPIFNOTEQKS                    R9 K4 ["number"] ; [+4]
       18 GETTABLEKS                       R9 R7 K1 ["id"]
       20 SETTABLE                         R8 R2 R9
       21 FORGLOOP                         R3 2 ; [-14]
       23 SETTABLEKS                       R2 R0 K5 ["_finishedTutorials"]
       25 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_finishedTutorials"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K0 ["_activeTutorialState"]
        6 JUMPIFNOT                        R2 ; [+52]
        7 GETTABLEKS                       R2 R0 K1 ["_activeTutorialDefinition"]
        9 JUMPIFNOT                        R2 ; [+49]
       10 GETTABLEKS                       R3 R0 K1 ["_activeTutorialDefinition"]
       12 GETTABLEKS                       R3 R3 K2 ["steps"]
       14 GETTABLEKS                       R4 R0 K0 ["_activeTutorialState"]
       16 GETTABLEKS                       R4 R4 K3 ["index"]
       18 GETTABLE                         R2 R3 R4
       19 JUMPIFNOT                        R2 ; [+21]
       20 GETTABLEKS                       R4 R2 K4 ["completeOn"]
       22 GETIMPORT                        R5 K7 [table.find]
       24 MOVE                             R6 R4
       25 MOVE                             R7 R1
       26 CALL                             R5 2 1
       27 JUMPIFNOTEQKNIL                  R5 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 JUMPIFNOT                        R3 ; [+9]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K8 ["TutorialAdvanceSource"]
       35 GETTABLEKS                       R5 R5 K9 ["AutoAdvance"]
       37 NAMECALL                         R3 R0 K10 ["advance"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0
       41 GETTABLEKS                       R4 R0 K1 ["_activeTutorialDefinition"]
       43 GETTABLEKS                       R4 R4 K11 ["pauseOn"]
       45 GETIMPORT                        R5 K7 [table.find]
       47 MOVE                             R6 R4
       48 MOVE                             R7 R1
       49 CALL                             R5 2 1
       50 JUMPIFNOTEQKNIL                  R5 ; [+2]
       52 LOADB                            R3 0 +1
       53 LOADB                            R3 1
       54 JUMPIFNOT                        R3 ; [+3]
       55 NAMECALL                         R3 R0 K12 ["pause"]
       57 CALL                             R3 1 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R2 R0 K13 ["_tutorials"]
       61 LOADNIL                          R3
       62 LOADNIL                          R4
       63 FORGPREP                         R2
       64 GETTABLEKS                       R8 R6 K14 ["trigger"]
       66 GETIMPORT                        R9 K7 [table.find]
       68 MOVE                             R10 R8
       69 MOVE                             R11 R1
       70 CALL                             R9 2 1
       71 JUMPIFNOTEQKNIL                  R9 ; [+2]
       73 LOADB                            R7 0 +1
       74 LOADB                            R7 1
       75 JUMPIFNOT                        R7 ; [+16]
       76 GETTABLEKS                       R8 R0 K15 ["_finishedTutorials"]
       78 GETTABLEKS                       R9 R6 K16 ["id"]
       80 GETTABLE                         R7 R8 R9
       81 JUMPIFEQKNIL                     R7 ; [+5]
       83 GETTABLEKS                       R8 R6 K17 ["version"]
       85 JUMPIFNOTLT                      R7 R8 ; [+6]
       87 MOVE                             R10 R6
       88 NAMECALL                         R8 R0 K18 ["_tryStart"]
       90 CALL                             R8 2 0
       91 RETURN                           R0 0
       92 FORGLOOP                         R2 2 ; [-29]
       94 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_activeTutorialState"]
        2 GETTABLEKS                       R3 R0 K1 ["_activeTutorialDefinition"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R4 R2 K2 ["index"]
        9 GETTABLEKS                       R5 R2 K3 ["total"]
       11 JUMPIFNOTLE                      R5 R4 ; [+14]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["TutorialAction"]
       16 GETTABLEKS                       R6 R6 K5 ["Finish"]
       18 MOVE                             R7 R1
       19 NAMECALL                         R4 R0 K6 ["_sendTutorialEvent"]
       21 CALL                             R4 3 0
       22 NAMECALL                         R4 R0 K7 ["_finish"]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R5 R2 K2 ["index"]
       28 ADDK                             R4 R5 K8 [1]
       29 GETTABLEKS                       R6 R3 K9 ["steps"]
       31 GETTABLE                         R5 R6 R4
       32 JUMPIF                           R5 ; [+13]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K4 ["TutorialAction"]
       36 GETTABLEKS                       R8 R8 K5 ["Finish"]
       38 MOVE                             R9 R1
       39 NAMECALL                         R6 R0 K6 ["_sendTutorialEvent"]
       41 CALL                             R6 3 0
       42 NAMECALL                         R6 R0 K7 ["_finish"]
       44 CALL                             R6 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K4 ["TutorialAction"]
       49 GETTABLEKS                       R8 R8 K10 ["Advance"]
       51 MOVE                             R9 R1
       52 NAMECALL                         R6 R0 K6 ["_sendTutorialEvent"]
       54 CALL                             R6 3 0
       55 DUPTABLE                         R8 K13 [{"tutorialId", "stepId", "index", "total"}]
       56 GETTABLEKS                       R9 R3 K14 ["id"]
       58 SETTABLEKS                       R9 R8 K11 ["tutorialId"]
       60 GETTABLEKS                       R9 R5 K14 ["id"]
       62 SETTABLEKS                       R9 R8 K12 ["stepId"]
       64 SETTABLEKS                       R4 R8 K2 ["index"]
       66 GETTABLEKS                       R9 R2 K3 ["total"]
       68 SETTABLEKS                       R9 R8 K3 ["total"]
       70 MOVE                             R9 R3
       71 NAMECALL                         R6 R0 K15 ["_setActive"]
       73 CALL                             R6 3 0
       74 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["TutorialAction"]
        7 GETTABLEKS                       R3 R3 K2 ["Dismiss"]
        9 NAMECALL                         R1 R0 K3 ["_sendTutorialEvent"]
       11 CALL                             R1 2 0
       12 NAMECALL                         R1 R0 K4 ["_finish"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["TutorialAction"]
        7 GETTABLEKS                       R3 R3 K2 ["Pause"]
        9 NAMECALL                         R1 R0 K3 ["_sendTutorialEvent"]
       11 CALL                             R1 2 0
       12 NAMECALL                         R1 R0 K4 ["_clearActive"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_13:
        0 SETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        2 SETTABLEKS                       R2 R0 K1 ["_activeTutorialDefinition"]
        4 GETTABLEKS                       R3 R0 K2 ["OnTutorialStateChanged"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K3 ["Fire"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_activeTutorialDefinition"]
        6 GETTABLEKS                       R1 R0 K2 ["OnTutorialStateChanged"]
        8 LOADNIL                          R3
        9 NAMECALL                         R1 R1 K3 ["Fire"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["_sessionFinishedCount"]
        4 JUMPIFNOTLE                      R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R4 R1 K1 ["steps"]
        9 GETTABLEN                        R3 R4 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 DUPTABLE                         R6 K7 [{["tutorialId"], ["stepId"], ["index"] = 1, ["total"]}]
       13 GETTABLEKS                       R7 R1 K8 ["id"]
       15 SETTABLEKS                       R7 R6 K2 ["tutorialId"]
       17 GETTABLEKS                       R7 R3 K8 ["id"]
       19 SETTABLEKS                       R7 R6 K3 ["stepId"]
       21 GETTABLEKS                       R8 R1 K1 ["steps"]
       23 LENGTH                           R7 R8
       24 SETTABLEKS                       R7 R6 K6 ["total"]
       26 MOVE                             R7 R1
       27 NAMECALL                         R4 R0 K9 ["_setActive"]
       29 CALL                             R4 3 0
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K10 ["TutorialAction"]
       33 GETTABLEKS                       R6 R6 K11 ["Start"]
       35 NAMECALL                         R4 R0 K12 ["_sendTutorialEvent"]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_activeTutorialDefinition"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R2 R0 K1 ["_finishedTutorials"]
        5 GETTABLEKS                       R3 R1 K2 ["id"]
        7 GETTABLEKS                       R4 R1 K3 ["version"]
        9 SETTABLE                         R4 R2 R3
       10 GETTABLEKS                       R3 R0 K4 ["_sessionFinishedCount"]
       12 ADDK                             R4 R3 K5 [1]
       13 SETTABLEKS                       R4 R0 K4 ["_sessionFinishedCount"]
       15 NAMECALL                         R2 R0 K6 ["_clearActive"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_isMock"]
        2 JUMPIFNOT                        R3 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["_activeTutorialState"]
        6 GETTABLEKS                       R4 R0 K2 ["_activeTutorialDefinition"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 JUMPIF                           R4 ; [+1]
       10 RETURN                           R0 0
       11 DUPTABLE                         R5 K10 [{"action", "tutorialId", "tutorialVersion", "stepId", "index", "total", "source"}]
       12 SETTABLEKS                       R1 R5 K3 ["action"]
       14 GETTABLEKS                       R6 R4 K11 ["id"]
       16 SETTABLEKS                       R6 R5 K4 ["tutorialId"]
       18 GETTABLEKS                       R6 R4 K12 ["version"]
       20 SETTABLEKS                       R6 R5 K5 ["tutorialVersion"]
       22 GETTABLEKS                       R6 R3 K6 ["stepId"]
       24 SETTABLEKS                       R6 R5 K6 ["stepId"]
       26 GETTABLEKS                       R6 R3 K7 ["index"]
       28 SETTABLEKS                       R6 R5 K7 ["index"]
       30 GETTABLEKS                       R6 R3 K8 ["total"]
       32 SETTABLEKS                       R6 R5 K8 ["total"]
       34 SETTABLEKS                       R2 R5 K9 ["source"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K13 ["sendTutorialEvent"]
       39 MOVE                             R7 R5
       40 DUPTABLE                         R8 K18 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       41 GETTABLEKS                       R9 R0 K19 ["_explorerController"]
       43 SETTABLEKS                       R9 R8 K14 ["ExplorerController"]
       45 GETTABLEKS                       R9 R0 K20 ["_layoutController"]
       47 SETTABLEKS                       R9 R8 K15 ["LayoutController"]
       49 GETTABLEKS                       R9 R0 K21 ["_itemsController"]
       51 SETTABLEKS                       R9 R8 K16 ["ItemsController"]
       53 GETTABLEKS                       R9 R0 K22 ["_searchController"]
       55 SETTABLEKS                       R9 R8 K17 ["SearchController"]
       57 CALL                             R6 2 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Signal"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Analytics"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R5 K11 ["Analytics"]
       31 GETTABLEKS                       R5 R5 K12 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Configurations"]
       47 GETTABLEKS                       R7 R7 K14 ["Tutorial"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K8 ["Util"]
       56 GETTABLEKS                       R8 R8 K15 ["cleanConnections"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Src"]
       63 GETTABLEKS                       R9 R9 K16 ["Flags"]
       65 GETTABLEKS                       R9 R9 K17 ["getFIntAmrMaxTutorialsPerSession"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Src"]
       72 GETTABLEKS                       R10 R10 K16 ["Flags"]
       74 GETTABLEKS                       R10 R10 K18 ["getFFlagAmrEnableTutorials"]
       76 CALL                             R9 1 1
       77 NEWTABLE                         R10 16 0
       79 SETTABLEKS                       R10 R10 K19 ["__index"]
       81 DUPCLOSURE                       R11 K20 [PROTO_0]
       82 DUPCLOSURE                       R12 K21 [PROTO_3]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R5
       87 SETTABLEKS                       R12 R10 K22 ["new"]
       89 DUPCLOSURE                       R12 K23 [PROTO_4]
       90 CAPTURE                          VAL R10
       91 SETTABLEKS                       R12 R10 K24 ["mock"]
       93 DUPCLOSURE                       R12 K25 [PROTO_5]
       94 CAPTURE                          VAL R7
       95 SETTABLEKS                       R12 R10 K26 ["destroy"]
       97 DUPCLOSURE                       R12 K27 [PROTO_6]
       98 SETTABLEKS                       R12 R10 K28 ["populateSavedSettings"]
      100 DUPCLOSURE                       R12 K29 [PROTO_7]
      101 SETTABLEKS                       R12 R10 K30 ["getFinishedTutorials"]
      103 DUPCLOSURE                       R12 K31 [PROTO_8]
      104 SETTABLEKS                       R12 R10 K32 ["getTutorialState"]
      106 DUPCLOSURE                       R12 K33 [PROTO_9]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R4
      109 SETTABLEKS                       R12 R10 K34 ["notify"]
      111 DUPCLOSURE                       R12 K35 [PROTO_10]
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R12 R10 K36 ["advance"]
      115 DUPCLOSURE                       R12 K37 [PROTO_11]
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R12 R10 K38 ["dismiss"]
      119 DUPCLOSURE                       R12 K39 [PROTO_12]
      120 CAPTURE                          VAL R4
      121 SETTABLEKS                       R12 R10 K40 ["pause"]
      123 DUPCLOSURE                       R12 K41 [PROTO_13]
      124 SETTABLEKS                       R12 R10 K42 ["_setActive"]
      126 DUPCLOSURE                       R12 K43 [PROTO_14]
      127 SETTABLEKS                       R12 R10 K44 ["_clearActive"]
      129 DUPCLOSURE                       R12 K45 [PROTO_15]
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R12 R10 K46 ["_tryStart"]
      134 DUPCLOSURE                       R12 K47 [PROTO_16]
      135 SETTABLEKS                       R12 R10 K48 ["_finish"]
      137 DUPCLOSURE                       R12 K49 [PROTO_17]
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R12 R10 K50 ["_sendTutorialEvent"]
      141 RETURN                           R10 1
