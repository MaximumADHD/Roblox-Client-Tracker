PROTO_0:
        0 JUMPIFNOTEQKS                    R2 K0 ["ascending"] ; [+3]
        2 LOADK                            R3 K1 ["SeverityAscending"]
        3 JUMP                             ; [+1]
        4 LOADK                            R3 K2 ["SeverityDescending"]
        5 NEWTABLE                         R4 0 3
        7 DUPTABLE                         R5 K5 [{"title", "items"}]
        8 LOADK                            R8 K6 ["Text"]
        9 LOADK                            R9 K7 ["Sort"]
       10 NAMECALL                         R6 R0 K8 ["getText"]
       12 CALL                             R6 3 1
       13 SETTABLEKS                       R6 R5 K3 ["title"]
       15 NEWTABLE                         R6 0 1
       17 DUPTABLE                         R7 K14 [{["id"] = "sort-severity", ["icon"] = "two-arrows-down-and-up", ["text"]}]
       18 LOADK                            R10 K6 ["Text"]
       19 MOVE                             R11 R3
       20 NAMECALL                         R8 R0 K8 ["getText"]
       22 CALL                             R8 3 1
       23 SETTABLEKS                       R8 R7 K13 ["text"]
       25 SETLIST                          R6 R7 1 [1]
       27 SETTABLEKS                       R6 R5 K4 ["items"]
       29 DUPTABLE                         R6 K5 [{"title", "items"}]
       30 LOADK                            R9 K6 ["Text"]
       31 LOADK                            R10 K15 ["Viewport"]
       32 NAMECALL                         R7 R0 K8 ["getText"]
       34 CALL                             R7 3 1
       35 SETTABLEKS                       R7 R6 K3 ["title"]
       37 NEWTABLE                         R7 0 1
       39 DUPTABLE                         R8 K17 [{["id"] = "enable-visualizations", ["icon"], ["text"]}]
       40 GETTABLEKS                       R10 R1 K16 ["enable-visualizations"]
       42 JUMPIFNOT                        R10 ; [+2]
       43 LOADK                            R9 K18 ["check"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R9
       46 SETTABLEKS                       R9 R8 K11 ["icon"]
       48 LOADK                            R11 K6 ["Text"]
       49 LOADK                            R12 K19 ["EnableVisualizations"]
       50 NAMECALL                         R9 R0 K8 ["getText"]
       52 CALL                             R9 3 1
       53 SETTABLEKS                       R9 R8 K13 ["text"]
       55 SETLIST                          R7 R8 1 [1]
       57 SETTABLEKS                       R7 R6 K4 ["items"]
       59 DUPTABLE                         R7 K5 [{"title", "items"}]
       60 LOADK                            R10 K6 ["Text"]
       61 LOADK                            R11 K20 ["AvatarSetup"]
       62 NAMECALL                         R8 R0 K8 ["getText"]
       64 CALL                             R8 3 1
       65 SETTABLEKS                       R8 R7 K3 ["title"]
       67 NEWTABLE                         R8 0 1
       69 DUPTABLE                         R9 K22 [{["id"] = "always-validate", ["icon"], ["text"]}]
       70 GETTABLEKS                       R11 R1 K21 ["always-validate"]
       72 JUMPIFNOT                        R11 ; [+2]
       73 LOADK                            R10 K18 ["check"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R10
       76 SETTABLEKS                       R10 R9 K11 ["icon"]
       78 LOADK                            R12 K6 ["Text"]
       79 LOADK                            R13 K23 ["AlwaysValidate"]
       80 NAMECALL                         R10 R0 K8 ["getText"]
       82 CALL                             R10 3 1
       83 SETTABLEKS                       R10 R9 K13 ["text"]
       85 SETLIST                          R8 R9 1 [1]
       87 SETTABLEKS                       R8 R7 K4 ["items"]
       89 SETLIST                          R4 R5 3 [1]
       91 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["settings"]}]
        1 NEWTABLE                         R2 2 0
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K4 ["enable-visualizations"]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K5 ["always-validate"]
        9 SETTABLEKS                       R2 R1 K2 ["settings"]
       11 SETTABLEKS                       R1 R0 K6 ["state"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["sort-severity"] ; [+14]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["onToggleSort"]
        7 JUMPIFNOT                        R1 ; [+40]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["props"]
       11 GETTABLEKS                       R1 R1 K2 ["onToggleSort"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLE                         R1 R2 R0
       17 JUMPIFNOT                        R1 ; [+25]
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K3 ["state"]
       22 GETTABLEKS                       R2 R2 K4 ["settings"]
       24 NEWTABLE                         R3 1 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["state"]
       29 GETTABLEKS                       R6 R6 K4 ["settings"]
       31 GETTABLE                         R5 R6 R0
       32 NOT                              R4 R5
       33 SETTABLE                         R4 R3 R0
       34 CALL                             R1 2 1
       35 GETUPVAL                         R2 0
       36 DUPTABLE                         R4 K5 [{"settings"}]
       37 SETTABLEKS                       R1 R4 K4 ["settings"]
       39 NAMECALL                         R2 R2 K6 ["setState"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 0
       44 DUPTABLE                         R3 K9 [{["isMenuOpen"] = False}]
       45 NAMECALL                         R1 R1 K6 ["setState"]
       47 CALL                             R1 2 0
       48 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isMenuOpen"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["isMenuOpen"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["isMenuOpen"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K5 [{["tag"] = "row align-y-center size-full-0 auto-y padding-x-medium padding-y-small bg-surface-200"}]
        9 DUPTABLE                         R5 K8 [{"LeftGroup", "MoreMenu"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K12 [{["tag"] = "row align-y-center grow gap-small auto-xy", ["LayoutOrder"] = 0}]
       15 DUPTABLE                         R9 K15 [{"ModelIcon", "HeaderText"}]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K2 ["createElement"]
       19 GETUPVAL                         R11 2
       20 DUPTABLE                         R12 K18 [{["name"], ["size"], ["LayoutOrder"] = 0}]
       21 GETIMPORT                        R13 K20 [game]
       23 LOADK                            R15 K21 ["StudioService"]
       24 NAMECALL                         R13 R13 K22 ["GetService"]
       26 CALL                             R13 2 1
       27 GETTABLEKS                       R16 R0 K0 ["props"]
       29 GETTABLEKS                       R16 R16 K24 ["instanceClassName"]
       31 ORK                              R15 R16 K23 ["Model"]
       32 NAMECALL                         R13 R13 K25 ["GetClassIcon"]
       34 CALL                             R13 2 1
       35 GETTABLEKS                       R13 R13 K26 ["Image"]
       37 SETTABLEKS                       R13 R12 K16 ["name"]
       39 GETUPVAL                         R13 3
       40 GETTABLEKS                       R13 R13 K27 ["Small"]
       42 SETTABLEKS                       R13 R12 K17 ["size"]
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K13 ["ModelIcon"]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K2 ["createElement"]
       50 GETUPVAL                         R11 4
       51 DUPTABLE                         R12 K31 [{["tag"] = "align-y-center auto-xy text-body-small content-default", ["Text"], ["LayoutOrder"] = 1}]
       52 GETTABLEKS                       R13 R0 K0 ["props"]
       54 GETTABLEKS                       R13 R13 K32 ["instanceName"]
       56 JUMPIF                           R13 ; [+5]
       57 LOADK                            R15 K29 ["Text"]
       58 LOADK                            R16 K33 ["NoSelection"]
       59 NAMECALL                         R13 R1 K34 ["getText"]
       61 CALL                             R13 3 1
       62 SETTABLEKS                       R13 R12 K29 ["Text"]
       64 CALL                             R10 2 1
       65 SETTABLEKS                       R10 R9 K14 ["HeaderText"]
       67 CALL                             R6 3 1
       68 SETTABLEKS                       R6 R5 K6 ["LeftGroup"]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K2 ["createElement"]
       73 GETUPVAL                         R7 5
       74 DUPTABLE                         R8 K41 [{["isOpen"], ["items"], ["size"], ["side"], ["align"], ["onPressedOutside"], ["onActivated"], ["LayoutOrder"] = 1}]
       75 GETTABLEKS                       R9 R0 K42 ["state"]
       77 GETTABLEKS                       R9 R9 K43 ["isMenuOpen"]
       79 SETTABLEKS                       R9 R8 K35 ["isOpen"]
       81 GETUPVAL                         R9 6
       82 MOVE                             R10 R1
       83 GETTABLEKS                       R11 R0 K42 ["state"]
       85 GETTABLEKS                       R11 R11 K44 ["settings"]
       87 GETTABLEKS                       R12 R0 K0 ["props"]
       89 GETTABLEKS                       R12 R12 K45 ["sortDirection"]
       91 CALL                             R9 3 1
       92 SETTABLEKS                       R9 R8 K36 ["items"]
       94 GETUPVAL                         R9 7
       95 GETTABLEKS                       R9 R9 K27 ["Small"]
       97 SETTABLEKS                       R9 R8 K17 ["size"]
       99 GETUPVAL                         R9 8
      100 GETTABLEKS                       R9 R9 K46 ["Bottom"]
      102 SETTABLEKS                       R9 R8 K37 ["side"]
      104 GETUPVAL                         R9 9
      105 GETTABLEKS                       R9 R9 K47 ["End"]
      107 SETTABLEKS                       R9 R8 K38 ["align"]
      109 NEWCLOSURE                       R9 P0
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R9 R8 K39 ["onPressedOutside"]
      113 NEWCLOSURE                       R9 P1
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          UPVAL U11
      117 SETTABLEKS                       R9 R8 K40 ["onActivated"]
      119 DUPTABLE                         R9 K49 [{"Button"}]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K2 ["createElement"]
      123 GETUPVAL                         R11 12
      124 DUPTABLE                         R12 K54 [{["icon"], ["testId"] = "aqv-header-overflow", ["onActivated"], ["size"], ["variant"]}]
      125 DUPTABLE                         R13 K56 [{["name"] = "three-dots-vertical"}]
      126 SETTABLEKS                       R13 R12 K50 ["icon"]
      128 NEWCLOSURE                       R13 P2
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R13 R12 K40 ["onActivated"]
      132 GETUPVAL                         R13 7
      133 GETTABLEKS                       R13 R13 K27 ["Small"]
      135 SETTABLEKS                       R13 R12 K17 ["size"]
      137 GETUPVAL                         R13 13
      138 GETTABLEKS                       R13 R13 K57 ["Utility"]
      140 SETTABLEKS                       R13 R12 K53 ["variant"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K48 ["Button"]
      145 CALL                             R6 3 1
      146 SETTABLEKS                       R6 R5 K7 ["MoreMenu"]
      148 CALL                             R2 3 -1
      149 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["join"]
       37 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       39 GETTABLEKS                       R7 R6 K13 ["withContext"]
       41 GETTABLEKS                       R8 R3 K14 ["View"]
       43 GETTABLEKS                       R9 R3 K15 ["Icon"]
       45 GETTABLEKS                       R10 R3 K16 ["Text"]
       47 GETTABLEKS                       R11 R3 K17 ["IconButton"]
       49 GETTABLEKS                       R12 R3 K18 ["Enums"]
       51 GETTABLEKS                       R12 R12 K19 ["IconSize"]
       53 GETTABLEKS                       R13 R3 K18 ["Enums"]
       55 GETTABLEKS                       R13 R13 K20 ["InputSize"]
       57 GETTABLEKS                       R14 R3 K18 ["Enums"]
       59 GETTABLEKS                       R14 R14 K21 ["ButtonVariant"]
       61 GETTABLEKS                       R15 R3 K22 ["Menu"]
       63 GETTABLEKS                       R16 R3 K18 ["Enums"]
       65 GETTABLEKS                       R16 R16 K23 ["PopoverSide"]
       67 GETTABLEKS                       R17 R3 K18 ["Enums"]
       69 GETTABLEKS                       R17 R17 K24 ["PopoverAlign"]
       71 NEWTABLE                         R18 2 0
       73 LOADB                            R19 1
       74 SETTABLEKS                       R19 R18 K25 ["enable-visualizations"]
       76 LOADB                            R19 1
       77 SETTABLEKS                       R19 R18 K26 ["always-validate"]
       79 DUPCLOSURE                       R19 K27 [PROTO_0]
       80 GETTABLEKS                       R20 R1 K28 ["PureComponent"]
       82 LOADK                            R22 K29 ["HeaderRow"]
       83 NAMECALL                         R20 R20 K30 ["extend"]
       85 CALL                             R20 2 1
       86 DUPCLOSURE                       R21 K31 [PROTO_1]
       87 SETTABLEKS                       R21 R20 K32 ["init"]
       89 DUPCLOSURE                       R21 K33 [PROTO_5]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R19
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R17
      100 CAPTURE                          VAL R18
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R14
      104 SETTABLEKS                       R21 R20 K34 ["render"]
      106 MOVE                             R21 R7
      107 DUPTABLE                         R22 K38 [{"Localization", "Stylizer", "Mouse"}]
      108 GETTABLEKS                       R23 R6 K35 ["Localization"]
      110 SETTABLEKS                       R23 R22 K35 ["Localization"]
      112 GETTABLEKS                       R23 R6 K36 ["Stylizer"]
      114 SETTABLEKS                       R23 R22 K36 ["Stylizer"]
      116 GETTABLEKS                       R23 R6 K37 ["Mouse"]
      118 SETTABLEKS                       R23 R22 K37 ["Mouse"]
      120 CALL                             R21 1 1
      121 MOVE                             R22 R20
      122 CALL                             R21 1 1
      123 MOVE                             R20 R21
      124 RETURN                           R20 1
