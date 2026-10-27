PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K9 [{["DataModel"] = "Standalone", ["PluginId"] = "Assistant", ["Category"] = "Actions", ["ItemId"] = "OpenMcpSettings"}]
        6 NAMECALL                         R1 R0 K10 ["ActivateAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R5 0 1
       17 MOVE                             R6 R1
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 1
       21 GETTABLEKS                       R4 R2 K3 ["enabled"]
       23 JUMPIF                           R4 ; [+2]
       24 LOADNIL                          R4
       25 RETURN                           R4 1
       26 GETUPVAL                         R4 3
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K4 ["View"]
       30 DUPTABLE                         R6 K7 [{["tag"] = "row items-center gap-xsmall auto-xy"}]
       31 DUPTABLE                         R7 K10 [{"Indicator", "Text"}]
       32 GETUPVAL                         R8 3
       33 GETUPVAL                         R9 4
       34 GETTABLEKS                       R9 R9 K11 ["StatusIndicator"]
       36 DUPTABLE                         R10 K18 [{["variant"], ["size"], ["LayoutOrder"] = 1, ["testId"] = "--footer-status-indicator"}]
       37 GETUPVAL                         R12 5
       38 GETTABLEKS                       R13 R2 K19 ["status"]
       40 GETTABLE                         R11 R12 R13
       41 SETTABLEKS                       R11 R10 K12 ["variant"]
       43 GETUPVAL                         R11 6
       44 GETTABLEKS                       R11 R11 K20 ["Small"]
       46 SETTABLEKS                       R11 R10 K13 ["size"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K8 ["Indicator"]
       51 GETUPVAL                         R8 3
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K9 ["Text"]
       55 DUPTABLE                         R10 K24 [{["tag"] = "auto-xy text-body-small", ["Text"], ["LayoutOrder"] = 2, ["testId"] = "--footer-status-indicator-text"}]
       56 GETTABLEKS                       R11 R2 K25 ["text"]
       58 SETTABLEKS                       R11 R10 K9 ["Text"]
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R7 K9 ["Text"]
       63 CALL                             R4 3 1
       64 GETUPVAL                         R5 3
       65 GETUPVAL                         R6 4
       66 GETTABLEKS                       R6 R6 K4 ["View"]
       68 DUPTABLE                         R7 K28 [{["tag"] = "row items-center gap-xsmall auto-xy padding-xsmall", ["onActivated"], ["LayoutOrder"]}]
       69 SETTABLEKS                       R3 R7 K27 ["onActivated"]
       71 GETTABLEKS                       R8 R0 K14 ["LayoutOrder"]
       73 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       75 DUPTABLE                         R8 K30 [{"Tooltip"}]
       76 GETTABLEKS                       R10 R2 K31 ["tooltip"]
       78 JUMPIFEQKS                       R10 K32 [""] ; [+20]
       80 GETUPVAL                         R9 3
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R10 R10 K29 ["Tooltip"]
       84 DUPTABLE                         R11 K36 [{["title"] = "", ["text"], ["side"], ["testId"] = "--footer-status-indicator-tooltip"}]
       85 GETTABLEKS                       R12 R2 K31 ["tooltip"]
       87 SETTABLEKS                       R12 R11 K25 ["text"]
       89 GETUPVAL                         R12 7
       90 GETTABLEKS                       R12 R12 K37 ["PopoverSide"]
       92 GETTABLEKS                       R12 R12 K38 ["Top"]
       94 SETTABLEKS                       R12 R11 K34 ["side"]
       96 MOVE                             R12 R4
       97 CALL                             R9 3 1
       98 JUMP                             ; [+1]
       99 MOVE                             R9 R4
      100 SETTABLEKS                       R9 R8 K29 ["Tooltip"]
      102 CALL                             R5 3 -1
      103 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["useMCPStatus"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Enums"]
       39 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       41 GETTABLEKS                       R6 R6 K15 ["Plugin"]
       43 GETTABLEKS                       R7 R5 K16 ["StatusIndicatorSize"]
       45 GETTABLEKS                       R8 R5 K17 ["StatusIndicatorVariant"]
       47 GETTABLEKS                       R9 R3 K18 ["createElement"]
       49 DUPTABLE                         R10 K25 [{"off", "indeterminate", "ready", "connected", "error", "unavailable"}]
       50 GETTABLEKS                       R11 R8 K26 ["Neutral"]
       52 SETTABLEKS                       R11 R10 K19 ["off"]
       54 GETTABLEKS                       R11 R8 K27 ["Warning"]
       56 SETTABLEKS                       R11 R10 K20 ["indeterminate"]
       58 GETTABLEKS                       R11 R8 K28 ["Success"]
       60 SETTABLEKS                       R11 R10 K21 ["ready"]
       62 GETTABLEKS                       R11 R8 K28 ["Success"]
       64 SETTABLEKS                       R11 R10 K22 ["connected"]
       66 GETTABLEKS                       R11 R8 K29 ["Alert"]
       68 SETTABLEKS                       R11 R10 K23 ["error"]
       70 GETTABLEKS                       R11 R8 K26 ["Neutral"]
       72 SETTABLEKS                       R11 R10 K24 ["unavailable"]
       74 DUPCLOSURE                       R11 K30 [PROTO_1]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R5
       83 GETTABLEKS                       R12 R3 K31 ["memo"]
       85 MOVE                             R13 R11
       86 CALL                             R12 1 -1
       87 RETURN                           R12 -1
