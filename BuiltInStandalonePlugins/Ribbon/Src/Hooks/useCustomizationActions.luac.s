PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ListAsync"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [print]
        6 GETUPVAL                         R2 1
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K3 ["JSONEncode"]
       10 CALL                             R2 2 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["HttpService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 LOADK                            R3 K4 ["Actions"]
        8 NAMECALL                         R1 R1 K5 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K8 [task.spawn]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K0 ["CreateAsync"]
        5 CALL                             R0 3 1
        6 GETTABLEN                        R1 R0 1
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R2 R1 K1 ["Connect"]
       10 CALL                             R2 2 1
       11 SETUPVAL                         R2 2
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K0 ["CreateAsync"]
        5 CALL                             R0 3 1
        6 GETTABLEN                        R1 R0 1
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R2 R1 K1 ["Connect"]
       10 CALL                             R2 2 1
       11 SETUPVAL                         R2 2
       12 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K3 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 3
       17 NAMECALL                         R0 R0 K3 ["Disconnect"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["wrap"]
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R2 R2 K3 ["GetUri"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 DUPTABLE                         R2 K13 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = False, ["Text"], ["Tooltip"]}]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K14 ["join"]
       17 MOVE                             R4 R1
       18 DUPTABLE                         R5 K18 [{["Category"] = "Actions", ["ItemId"] = "ReloadTabs"}]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K4 ["Uri"]
       22 GETUPVAL                         R3 2
       23 LOADK                            R5 K19 ["Plugin"]
       24 LOADK                            R6 K17 ["ReloadTabs"]
       25 NAMECALL                         R3 R3 K20 ["getText"]
       27 CALL                             R3 3 1
       28 SETTABLEKS                       R3 R2 K11 ["Text"]
       30 GETUPVAL                         R3 2
       31 LOADK                            R5 K19 ["Plugin"]
       32 LOADK                            R6 K21 ["ReloadTabsTooltip"]
       33 NAMECALL                         R3 R3 K20 ["getText"]
       35 CALL                             R3 3 1
       36 SETTABLEKS                       R3 R2 K12 ["Tooltip"]
       38 DUPTABLE                         R3 K13 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = False, ["Text"], ["Tooltip"]}]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K14 ["join"]
       42 MOVE                             R5 R1
       43 DUPTABLE                         R6 K23 [{["Category"] = "Actions", ["ItemId"] = "PrintActions"}]
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K4 ["Uri"]
       47 GETUPVAL                         R4 2
       48 LOADK                            R6 K19 ["Plugin"]
       49 LOADK                            R7 K22 ["PrintActions"]
       50 NAMECALL                         R4 R4 K20 ["getText"]
       52 CALL                             R4 3 1
       53 SETTABLEKS                       R4 R3 K11 ["Text"]
       55 GETUPVAL                         R4 2
       56 LOADK                            R6 K19 ["Plugin"]
       57 LOADK                            R7 K24 ["PrintActionsTooltip"]
       58 NAMECALL                         R4 R4 K20 ["getText"]
       60 CALL                             R4 3 1
       61 SETTABLEKS                       R4 R3 K12 ["Tooltip"]
       63 LOADNIL                          R4
       64 LOADNIL                          R5
       65 GETIMPORT                        R6 K27 [task.spawn]
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R2
       70 CAPTURE                          REF R4
       71 CAPTURE                          UPVAL U3
       72 CALL                             R6 1 1
       73 GETIMPORT                        R7 K27 [task.spawn]
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R3
       78 CAPTURE                          REF R5
       79 CAPTURE                          UPVAL U4
       80 CALL                             R7 1 1
       81 NEWCLOSURE                       R8 P2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          REF R4
       85 CAPTURE                          REF R5
       86 CLOSEUPVALS                      R4
       87 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 NAMECALL                         R1 R1 K1 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K2 ["ReloadDefinition"]
       16 GETUPVAL                         R4 4
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 5
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R7 0 3
       34 MOVE                             R8 R1
       35 MOVE                             R9 R3
       36 MOVE                             R10 R4
       37 SETLIST                          R7 R8 3 [1]
       39 CALL                             R5 2 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R1 K16 ["ContextServices"]
       50 GETTABLEKS                       R7 R7 K17 ["Localization"]
       52 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       54 GETTABLEKS                       R8 R8 K18 ["Plugin"]
       56 GETTABLEKS                       R9 R2 K19 ["useCallback"]
       58 GETTABLEKS                       R10 R2 K20 ["useContext"]
       60 GETTABLEKS                       R11 R2 K21 ["useEffect"]
       62 DUPCLOSURE                       R12 K22 [PROTO_6]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R5
       70 RETURN                           R12 1
