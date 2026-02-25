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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["wrap"]
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R2 R2 K3 ["GetUri"]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 1
       13 DUPTABLE                         R2 K11 [{"Uri", "Enabled", "Exists", "Visible", "Checkable", "Text", "Tooltip"}]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K12 ["join"]
       17 MOVE                             R4 R1
       18 DUPTABLE                         R5 K15 [{"Category", "ItemId"}]
       19 LOADK                            R6 K0 ["Actions"]
       20 SETTABLEKS                       R6 R5 K13 ["Category"]
       22 LOADK                            R6 K16 ["ReloadTabs"]
       23 SETTABLEKS                       R6 R5 K14 ["ItemId"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R2 K4 ["Uri"]
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R2 K5 ["Enabled"]
       31 LOADB                            R3 1
       32 SETTABLEKS                       R3 R2 K6 ["Exists"]
       34 LOADB                            R3 1
       35 SETTABLEKS                       R3 R2 K7 ["Visible"]
       37 LOADB                            R3 0
       38 SETTABLEKS                       R3 R2 K8 ["Checkable"]
       40 GETUPVAL                         R3 2
       41 LOADK                            R5 K17 ["Plugin"]
       42 LOADK                            R6 K16 ["ReloadTabs"]
       43 NAMECALL                         R3 R3 K18 ["getText"]
       45 CALL                             R3 3 1
       46 SETTABLEKS                       R3 R2 K9 ["Text"]
       48 GETUPVAL                         R3 2
       49 LOADK                            R5 K17 ["Plugin"]
       50 LOADK                            R6 K19 ["ReloadTabsTooltip"]
       51 NAMECALL                         R3 R3 K18 ["getText"]
       53 CALL                             R3 3 1
       54 SETTABLEKS                       R3 R2 K10 ["Tooltip"]
       56 DUPTABLE                         R3 K11 [{"Uri", "Enabled", "Exists", "Visible", "Checkable", "Text", "Tooltip"}]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R4 R5 K12 ["join"]
       60 MOVE                             R5 R1
       61 DUPTABLE                         R6 K15 [{"Category", "ItemId"}]
       62 LOADK                            R7 K0 ["Actions"]
       63 SETTABLEKS                       R7 R6 K13 ["Category"]
       65 LOADK                            R7 K20 ["PrintActions"]
       66 SETTABLEKS                       R7 R6 K14 ["ItemId"]
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K4 ["Uri"]
       71 LOADB                            R4 1
       72 SETTABLEKS                       R4 R3 K5 ["Enabled"]
       74 LOADB                            R4 1
       75 SETTABLEKS                       R4 R3 K6 ["Exists"]
       77 LOADB                            R4 1
       78 SETTABLEKS                       R4 R3 K7 ["Visible"]
       80 LOADB                            R4 0
       81 SETTABLEKS                       R4 R3 K8 ["Checkable"]
       83 GETUPVAL                         R4 2
       84 LOADK                            R6 K17 ["Plugin"]
       85 LOADK                            R7 K20 ["PrintActions"]
       86 NAMECALL                         R4 R4 K18 ["getText"]
       88 CALL                             R4 3 1
       89 SETTABLEKS                       R4 R3 K9 ["Text"]
       91 GETUPVAL                         R4 2
       92 LOADK                            R6 K17 ["Plugin"]
       93 LOADK                            R7 K21 ["PrintActionsTooltip"]
       94 NAMECALL                         R4 R4 K18 ["getText"]
       96 CALL                             R4 3 1
       97 SETTABLEKS                       R4 R3 K10 ["Tooltip"]
       99 LOADNIL                          R4
      100 LOADNIL                          R5
      101 GETIMPORT                        R6 K24 [task.spawn]
      103 NEWCLOSURE                       R7 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R2
      106 CAPTURE                          REF R4
      107 CAPTURE                          UPVAL U3
      108 CALL                             R6 1 1
      109 GETIMPORT                        R7 K24 [task.spawn]
      111 NEWCLOSURE                       R8 P1
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R3
      114 CAPTURE                          REF R5
      115 CAPTURE                          UPVAL U4
      116 CALL                             R7 1 1
      117 NEWCLOSURE                       R8 P2
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R7
      120 CAPTURE                          REF R4
      121 CAPTURE                          REF R5
      122 CLOSEUPVALS                      R4
      123 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["use"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K13 ["Util"]
       39 GETTABLEKS                       R5 R6 K14 ["StudioUri"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R8 R1 K16 ["ContextServices"]
       50 GETTABLEKS                       R7 R8 K17 ["Localization"]
       52 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       54 GETTABLEKS                       R8 R9 K18 ["Plugin"]
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
