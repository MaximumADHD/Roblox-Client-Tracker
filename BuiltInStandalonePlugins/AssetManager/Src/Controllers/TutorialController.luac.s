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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_ixpController"]
        3 NAMECALL                         R0 R0 K1 ["areIxpVariablesSettled"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["_queuedTutorial"]
       11 GETUPVAL                         R1 0
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K2 ["_queuedTutorial"]
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R1 0
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K3 ["_tryStart"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 DUPTABLE                         R3 K17 [{[1], ["_pluginController"], ["_explorerController"], ["_layoutController"], ["_itemsController"], ["_searchController"], ["_ixpController"], ["_tutorials"], ["_activeTutorialState"] = , ["_activeTutorialDefinition"] = , ["_finishedTutorials"], ["_sessionFinishedCount"] = 0, ["_queuedTutorial"] = , ["_connections"], ["OnTutorialStateChanged"]}]
        1 ORK                              R4 R1 K18 [False]
        2 SETTABLEKS                       R4 R3 K0 ["_isMock"]
        4 GETTABLEKS                       R4 R0 K19 ["PluginController"]
        6 SETTABLEKS                       R4 R3 K1 ["_pluginController"]
        8 GETTABLEKS                       R4 R0 K20 ["ExplorerController"]
       10 SETTABLEKS                       R4 R3 K2 ["_explorerController"]
       12 GETTABLEKS                       R4 R0 K21 ["LayoutController"]
       14 SETTABLEKS                       R4 R3 K3 ["_layoutController"]
       16 GETTABLEKS                       R4 R0 K22 ["ItemsController"]
       18 SETTABLEKS                       R4 R3 K4 ["_itemsController"]
       20 GETTABLEKS                       R4 R0 K23 ["SearchController"]
       22 SETTABLEKS                       R4 R3 K5 ["_searchController"]
       24 GETTABLEKS                       R4 R0 K24 ["IxpController"]
       26 SETTABLEKS                       R4 R3 K6 ["_ixpController"]
       28 GETTABLEKS                       R4 R0 K25 ["Tutorials"]
       30 JUMPIF                           R4 ; [+4]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K26 ["getTutorials"]
       34 CALL                             R4 0 1
       35 SETTABLEKS                       R4 R3 K7 ["_tutorials"]
       37 NEWTABLE                         R4 0 0
       39 SETTABLEKS                       R4 R3 K11 ["_finishedTutorials"]
       41 NEWTABLE                         R4 0 0
       43 SETTABLEKS                       R4 R3 K15 ["_connections"]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K27 ["new"]
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K16 ["OnTutorialStateChanged"]
       51 GETUPVAL                         R4 2
       52 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       54 GETIMPORT                        R2 K29 [setmetatable]
       56 CALL                             R2 2 1
       57 GETTABLEKS                       R3 R2 K5 ["_searchController"]
       59 JUMPIFNOT                        R3 ; [+21]
       60 GETTABLEKS                       R3 R2 K5 ["_searchController"]
       62 GETTABLEKS                       R3 R3 K30 ["OnIsSearchInitiatedChanged"]
       64 JUMPIFNOT                        R3 ; [+16]
       65 GETTABLEKS                       R4 R2 K15 ["_connections"]
       67 GETTABLEKS                       R5 R2 K5 ["_searchController"]
       69 GETTABLEKS                       R5 R5 K30 ["OnIsSearchInitiatedChanged"]
       71 NEWCLOSURE                       R7 P0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          UPVAL U3
       74 NAMECALL                         R5 R5 K31 ["Connect"]
       76 CALL                             R5 2 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R3 K34 [table.insert]
       80 CALL                             R3 -1 0
       81 GETTABLEKS                       R3 R2 K6 ["_ixpController"]
       83 JUMPIFNOT                        R3 ; [+20]
       84 GETTABLEKS                       R3 R2 K6 ["_ixpController"]
       86 GETTABLEKS                       R3 R3 K35 ["OnVariablesChanged"]
       88 JUMPIFNOT                        R3 ; [+15]
       89 GETTABLEKS                       R4 R2 K15 ["_connections"]
       91 GETTABLEKS                       R5 R2 K6 ["_ixpController"]
       93 GETTABLEKS                       R5 R5 K35 ["OnVariablesChanged"]
       95 NEWCLOSURE                       R7 P1
       96 CAPTURE                          VAL R2
       97 NAMECALL                         R5 R5 K31 ["Connect"]
       99 CALL                             R5 2 -1
      100 FASTCALL                         TABLE_INSERT ; [+2]
      101 GETIMPORT                        R3 K34 [table.insert]
      103 CALL                             R3 -1 0
      104 GETTABLEKS                       R3 R2 K1 ["_pluginController"]
      106 JUMPIFNOT                        R3 ; [+24]
      107 GETTABLEKS                       R3 R2 K1 ["_pluginController"]
      109 GETTABLEKS                       R3 R3 K36 ["OnContextMenuChanged"]
      111 JUMPIFNOT                        R3 ; [+19]
      112 LOADB                            R3 0
      113 GETTABLEKS                       R5 R2 K15 ["_connections"]
      115 GETTABLEKS                       R6 R2 K1 ["_pluginController"]
      117 GETTABLEKS                       R6 R6 K36 ["OnContextMenuChanged"]
      119 NEWCLOSURE                       R8 P2
      120 CAPTURE                          REF R3
      121 CAPTURE                          VAL R2
      122 CAPTURE                          UPVAL U3
      123 NAMECALL                         R6 R6 K31 ["Connect"]
      125 CALL                             R6 2 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R4 K34 [table.insert]
      129 CALL                             R4 -1 0
      130 CLOSEUPVALS                      R3
      131 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+25]
        3 GETTABLEKS                       R3 R1 K0 ["FinishedTutorials"]
        5 JUMPIFNOT                        R3 ; [+22]
        6 GETTABLEKS                       R3 R0 K1 ["_tutorials"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R9 R1 K0 ["FinishedTutorials"]
       13 GETTABLEKS                       R10 R7 K2 ["id"]
       15 GETTABLE                         R8 R9 R10
       16 FASTCALL1                        TYPEOF R8 ; [+3]
       17 MOVE                             R10 R8
       18 GETIMPORT                        R9 K4 [typeof]
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKS                    R9 K5 ["number"] ; [+4]
       23 GETTABLEKS                       R9 R7 K2 ["id"]
       25 SETTABLE                         R8 R2 R9
       26 FORGLOOP                         R3 2 ; [-16]
       28 SETTABLEKS                       R2 R0 K6 ["_finishedTutorials"]
       30 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_finishedTutorials"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_activeTutorialState"]
        2 JUMPIFNOT                        R2 ; [+52]
        3 GETTABLEKS                       R2 R0 K1 ["_activeTutorialDefinition"]
        5 JUMPIFNOT                        R2 ; [+49]
        6 GETTABLEKS                       R3 R0 K1 ["_activeTutorialDefinition"]
        8 GETTABLEKS                       R3 R3 K2 ["steps"]
       10 GETTABLEKS                       R4 R0 K0 ["_activeTutorialState"]
       12 GETTABLEKS                       R4 R4 K3 ["index"]
       14 GETTABLE                         R2 R3 R4
       15 JUMPIFNOT                        R2 ; [+21]
       16 GETTABLEKS                       R4 R2 K4 ["completeOn"]
       18 GETIMPORT                        R5 K7 [table.find]
       20 MOVE                             R6 R4
       21 MOVE                             R7 R1
       22 CALL                             R5 2 1
       23 JUMPIFNOTEQKNIL                  R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K8 ["TutorialAdvanceSource"]
       31 GETTABLEKS                       R5 R5 K9 ["AutoAdvance"]
       33 NAMECALL                         R3 R0 K10 ["advance"]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R4 R0 K1 ["_activeTutorialDefinition"]
       39 GETTABLEKS                       R4 R4 K11 ["pauseOn"]
       41 GETIMPORT                        R5 K7 [table.find]
       43 MOVE                             R6 R4
       44 MOVE                             R7 R1
       45 CALL                             R5 2 1
       46 JUMPIFNOTEQKNIL                  R5 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 JUMPIFNOT                        R3 ; [+3]
       51 NAMECALL                         R3 R0 K12 ["pause"]
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 GETTABLEKS                       R2 R0 K13 ["_tutorials"]
       57 LOADNIL                          R3
       58 LOADNIL                          R4
       59 FORGPREP                         R2
       60 GETTABLEKS                       R8 R6 K14 ["trigger"]
       62 GETIMPORT                        R9 K7 [table.find]
       64 MOVE                             R10 R8
       65 MOVE                             R11 R1
       66 CALL                             R9 2 1
       67 JUMPIFNOTEQKNIL                  R9 ; [+2]
       69 LOADB                            R7 0 +1
       70 LOADB                            R7 1
       71 JUMPIFNOT                        R7 ; [+16]
       72 GETTABLEKS                       R8 R0 K15 ["_finishedTutorials"]
       74 GETTABLEKS                       R9 R6 K16 ["id"]
       76 GETTABLE                         R7 R8 R9
       77 JUMPIFEQKNIL                     R7 ; [+5]
       79 GETTABLEKS                       R8 R6 K17 ["version"]
       81 JUMPIFNOTLT                      R7 R8 ; [+6]
       83 MOVE                             R10 R6
       84 NAMECALL                         R8 R0 K18 ["_tryStart"]
       86 CALL                             R8 2 0
       87 RETURN                           R0 0
       88 FORGLOOP                         R2 2 ; [-29]
       90 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 SETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        2 SETTABLEKS                       R2 R0 K1 ["_activeTutorialDefinition"]
        4 GETTABLEKS                       R3 R0 K2 ["OnTutorialStateChanged"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K3 ["Fire"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_activeTutorialState"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_activeTutorialDefinition"]
        6 GETTABLEKS                       R1 R0 K2 ["OnTutorialStateChanged"]
        8 LOADNIL                          R3
        9 NAMECALL                         R1 R1 K3 ["Fire"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["ixpGate"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R3 R0 K1 ["_ixpController"]
        5 NAMECALL                         R3 R3 K2 ["areIxpVariablesSettled"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+3]
        9 SETTABLEKS                       R1 R0 K3 ["_queuedTutorial"]
       11 RETURN                           R0 0
       12 JUMPIFNOT                        R2 ; [+15]
       13 GETTABLEKS                       R3 R0 K1 ["_ixpController"]
       15 GETTABLEKS                       R5 R2 K4 ["variable"]
       17 NAMECALL                         R3 R3 K5 ["getValue"]
       19 CALL                             R3 2 1
       20 GETIMPORT                        R4 K8 [table.find]
       22 GETTABLEKS                       R5 R2 K9 ["allowedValues"]
       24 MOVE                             R6 R3
       25 CALL                             R4 2 1
       26 JUMPIF                           R4 ; [+1]
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 0
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R4 R0 K10 ["_sessionFinishedCount"]
       32 JUMPIFNOTLE                      R3 R4 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R5 R1 K11 ["steps"]
       37 GETTABLEN                        R4 R5 1
       38 JUMPIF                           R4 ; [+1]
       39 RETURN                           R0 0
       40 DUPTABLE                         R7 K17 [{["tutorialId"], ["stepId"], ["index"] = 1, ["total"]}]
       41 GETTABLEKS                       R8 R1 K18 ["id"]
       43 SETTABLEKS                       R8 R7 K12 ["tutorialId"]
       45 GETTABLEKS                       R8 R4 K18 ["id"]
       47 SETTABLEKS                       R8 R7 K13 ["stepId"]
       49 GETTABLEKS                       R9 R1 K11 ["steps"]
       51 LENGTH                           R8 R9
       52 SETTABLEKS                       R8 R7 K16 ["total"]
       54 MOVE                             R8 R1
       55 NAMECALL                         R5 R0 K19 ["_setActive"]
       57 CALL                             R5 3 0
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K20 ["TutorialAction"]
       61 GETTABLEKS                       R7 R7 K21 ["Start"]
       63 NAMECALL                         R5 R0 K22 ["_sendTutorialEvent"]
       65 CALL                             R5 2 0
       66 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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
       68 NEWTABLE                         R9 16 0
       70 SETTABLEKS                       R9 R9 K18 ["__index"]
       72 DUPCLOSURE                       R10 K19 [PROTO_0]
       73 DUPCLOSURE                       R11 K20 [PROTO_4]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R11 R9 K21 ["new"]
       80 DUPCLOSURE                       R11 K22 [PROTO_5]
       81 CAPTURE                          VAL R9
       82 SETTABLEKS                       R11 R9 K23 ["mock"]
       84 DUPCLOSURE                       R11 K24 [PROTO_6]
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R11 R9 K25 ["destroy"]
       88 DUPCLOSURE                       R11 K26 [PROTO_7]
       89 SETTABLEKS                       R11 R9 K27 ["populateSavedSettings"]
       91 DUPCLOSURE                       R11 K28 [PROTO_8]
       92 SETTABLEKS                       R11 R9 K29 ["getFinishedTutorials"]
       94 DUPCLOSURE                       R11 K30 [PROTO_9]
       95 SETTABLEKS                       R11 R9 K31 ["getTutorialState"]
       97 DUPCLOSURE                       R11 K32 [PROTO_10]
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R11 R9 K33 ["notify"]
      101 DUPCLOSURE                       R11 K34 [PROTO_11]
      102 CAPTURE                          VAL R4
      103 SETTABLEKS                       R11 R9 K35 ["advance"]
      105 DUPCLOSURE                       R11 K36 [PROTO_12]
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R11 R9 K37 ["dismiss"]
      109 DUPCLOSURE                       R11 K38 [PROTO_13]
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R11 R9 K39 ["pause"]
      113 DUPCLOSURE                       R11 K40 [PROTO_14]
      114 SETTABLEKS                       R11 R9 K41 ["_setActive"]
      116 DUPCLOSURE                       R11 K42 [PROTO_15]
      117 SETTABLEKS                       R11 R9 K43 ["_clearActive"]
      119 DUPCLOSURE                       R11 K44 [PROTO_16]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R11 R9 K45 ["_tryStart"]
      124 DUPCLOSURE                       R11 K46 [PROTO_17]
      125 SETTABLEKS                       R11 R9 K47 ["_finish"]
      127 DUPCLOSURE                       R11 K48 [PROTO_18]
      128 CAPTURE                          VAL R3
      129 SETTABLEKS                       R11 R9 K49 ["_sendTutorialEvent"]
      131 RETURN                           R9 1
