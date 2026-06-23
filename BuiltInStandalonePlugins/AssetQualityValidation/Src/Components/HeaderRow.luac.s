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
       17 DUPTABLE                         R7 K12 [{"id", "icon", "text"}]
       18 LOADK                            R8 K13 ["sort-severity"]
       19 SETTABLEKS                       R8 R7 K9 ["id"]
       21 LOADK                            R8 K14 ["two-arrows-down-and-up"]
       22 SETTABLEKS                       R8 R7 K10 ["icon"]
       24 LOADK                            R10 K6 ["Text"]
       25 MOVE                             R11 R3
       26 NAMECALL                         R8 R0 K8 ["getText"]
       28 CALL                             R8 3 1
       29 SETTABLEKS                       R8 R7 K11 ["text"]
       31 SETLIST                          R6 R7 1 [1]
       33 SETTABLEKS                       R6 R5 K4 ["items"]
       35 DUPTABLE                         R6 K5 [{"title", "items"}]
       36 LOADK                            R9 K6 ["Text"]
       37 LOADK                            R10 K15 ["Viewport"]
       38 NAMECALL                         R7 R0 K8 ["getText"]
       40 CALL                             R7 3 1
       41 SETTABLEKS                       R7 R6 K3 ["title"]
       43 NEWTABLE                         R7 0 1
       45 DUPTABLE                         R8 K12 [{"id", "icon", "text"}]
       46 LOADK                            R9 K16 ["enable-visualizations"]
       47 SETTABLEKS                       R9 R8 K9 ["id"]
       49 GETTABLEKS                       R10 R1 K16 ["enable-visualizations"]
       51 JUMPIFNOT                        R10 ; [+2]
       52 LOADK                            R9 K17 ["check"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R9
       55 SETTABLEKS                       R9 R8 K10 ["icon"]
       57 LOADK                            R11 K6 ["Text"]
       58 LOADK                            R12 K18 ["EnableVisualizations"]
       59 NAMECALL                         R9 R0 K8 ["getText"]
       61 CALL                             R9 3 1
       62 SETTABLEKS                       R9 R8 K11 ["text"]
       64 SETLIST                          R7 R8 1 [1]
       66 SETTABLEKS                       R7 R6 K4 ["items"]
       68 DUPTABLE                         R7 K5 [{"title", "items"}]
       69 LOADK                            R10 K6 ["Text"]
       70 LOADK                            R11 K19 ["AvatarSetup"]
       71 NAMECALL                         R8 R0 K8 ["getText"]
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K3 ["title"]
       76 NEWTABLE                         R8 0 1
       78 DUPTABLE                         R9 K12 [{"id", "icon", "text"}]
       79 LOADK                            R10 K20 ["always-validate"]
       80 SETTABLEKS                       R10 R9 K9 ["id"]
       82 GETTABLEKS                       R11 R1 K20 ["always-validate"]
       84 JUMPIFNOT                        R11 ; [+2]
       85 LOADK                            R10 K17 ["check"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K10 ["icon"]
       90 LOADK                            R12 K6 ["Text"]
       91 LOADK                            R13 K21 ["AlwaysValidate"]
       92 NAMECALL                         R10 R0 K8 ["getText"]
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K11 ["text"]
       97 SETLIST                          R8 R9 1 [1]
       99 SETTABLEKS                       R8 R7 K4 ["items"]
      101 SETLIST                          R4 R5 3 [1]
      103 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"isMenuOpen", "settings"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isMenuOpen"]
        4 NEWTABLE                         R2 2 0
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K3 ["enable-visualizations"]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K4 ["always-validate"]
       12 SETTABLEKS                       R2 R1 K1 ["settings"]
       14 SETTABLEKS                       R1 R0 K5 ["state"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isMenuOpen"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isMenuOpen"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["sort-severity"] ; [+14]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["onToggleSort"]
        7 JUMPIFNOT                        R1 ; [+43]
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
       44 DUPTABLE                         R3 K8 [{"isMenuOpen"}]
       45 LOADB                            R4 0
       46 SETTABLEKS                       R4 R3 K7 ["isMenuOpen"]
       48 NAMECALL                         R1 R1 K6 ["setState"]
       50 CALL                             R1 2 0
       51 RETURN                           R0 0

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
        8 DUPTABLE                         R4 K4 [{"tag"}]
        9 LOADK                            R5 K5 ["row size-full-0 auto-y align-y-center padding-x-medium padding-y-small bg-surface-200"]
       10 SETTABLEKS                       R5 R4 K3 ["tag"]
       12 DUPTABLE                         R5 K8 [{"LeftGroup", "MoreMenu"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["createElement"]
       16 GETUPVAL                         R7 1
       17 DUPTABLE                         R8 K10 [{"tag", "LayoutOrder"}]
       18 LOADK                            R9 K11 ["row auto-xy align-y-center gap-small grow"]
       19 SETTABLEKS                       R9 R8 K3 ["tag"]
       21 LOADN                            R9 0
       22 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       24 DUPTABLE                         R9 K14 [{"ModelIcon", "HeaderText"}]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K2 ["createElement"]
       28 GETUPVAL                         R11 2
       29 DUPTABLE                         R12 K17 [{"name", "size", "LayoutOrder"}]
       30 GETIMPORT                        R13 K19 [game]
       32 LOADK                            R15 K20 ["StudioService"]
       33 NAMECALL                         R13 R13 K21 ["GetService"]
       35 CALL                             R13 2 1
       36 GETTABLEKS                       R16 R0 K0 ["props"]
       38 GETTABLEKS                       R16 R16 K23 ["instanceClassName"]
       40 ORK                              R15 R16 K22 ["Model"]
       41 NAMECALL                         R13 R13 K24 ["GetClassIcon"]
       43 CALL                             R13 2 1
       44 GETTABLEKS                       R13 R13 K25 ["Image"]
       46 SETTABLEKS                       R13 R12 K15 ["name"]
       48 GETUPVAL                         R13 3
       49 GETTABLEKS                       R13 R13 K26 ["Small"]
       51 SETTABLEKS                       R13 R12 K16 ["size"]
       53 LOADN                            R13 0
       54 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K12 ["ModelIcon"]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K2 ["createElement"]
       62 GETUPVAL                         R11 4
       63 DUPTABLE                         R12 K28 [{"tag", "Text", "LayoutOrder"}]
       64 LOADK                            R13 K29 ["auto-xy align-y-center content-default text-body-small"]
       65 SETTABLEKS                       R13 R12 K3 ["tag"]
       67 GETTABLEKS                       R13 R0 K0 ["props"]
       69 GETTABLEKS                       R13 R13 K30 ["instanceName"]
       71 JUMPIF                           R13 ; [+5]
       72 LOADK                            R15 K27 ["Text"]
       73 LOADK                            R16 K31 ["NoSelection"]
       74 NAMECALL                         R13 R1 K32 ["getText"]
       76 CALL                             R13 3 1
       77 SETTABLEKS                       R13 R12 K27 ["Text"]
       79 LOADN                            R13 1
       80 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       82 CALL                             R10 2 1
       83 SETTABLEKS                       R10 R9 K13 ["HeaderText"]
       85 CALL                             R6 3 1
       86 SETTABLEKS                       R6 R5 K6 ["LeftGroup"]
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R6 R6 K2 ["createElement"]
       91 GETUPVAL                         R7 5
       92 DUPTABLE                         R8 K39 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated", "LayoutOrder"}]
       93 GETTABLEKS                       R9 R0 K40 ["state"]
       95 GETTABLEKS                       R9 R9 K41 ["isMenuOpen"]
       97 SETTABLEKS                       R9 R8 K33 ["isOpen"]
       99 GETUPVAL                         R9 6
      100 MOVE                             R10 R1
      101 GETTABLEKS                       R11 R0 K40 ["state"]
      103 GETTABLEKS                       R11 R11 K42 ["settings"]
      105 GETTABLEKS                       R12 R0 K0 ["props"]
      107 GETTABLEKS                       R12 R12 K43 ["sortDirection"]
      109 CALL                             R9 3 1
      110 SETTABLEKS                       R9 R8 K34 ["items"]
      112 GETUPVAL                         R9 7
      113 GETTABLEKS                       R9 R9 K26 ["Small"]
      115 SETTABLEKS                       R9 R8 K16 ["size"]
      117 GETUPVAL                         R9 8
      118 GETTABLEKS                       R9 R9 K44 ["Bottom"]
      120 SETTABLEKS                       R9 R8 K35 ["side"]
      122 GETUPVAL                         R9 9
      123 GETTABLEKS                       R9 R9 K45 ["End"]
      125 SETTABLEKS                       R9 R8 K36 ["align"]
      127 NEWCLOSURE                       R9 P0
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R9 R8 K37 ["onPressedOutside"]
      131 NEWCLOSURE                       R9 P1
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          UPVAL U11
      135 SETTABLEKS                       R9 R8 K38 ["onActivated"]
      137 LOADN                            R9 1
      138 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
      140 DUPTABLE                         R9 K47 [{"Button"}]
      141 GETUPVAL                         R10 0
      142 GETTABLEKS                       R10 R10 K2 ["createElement"]
      144 GETUPVAL                         R11 12
      145 DUPTABLE                         R12 K51 [{"icon", "testId", "onActivated", "size", "variant"}]
      146 DUPTABLE                         R13 K52 [{"name"}]
      147 LOADK                            R14 K53 ["three-dots-vertical"]
      148 SETTABLEKS                       R14 R13 K15 ["name"]
      150 SETTABLEKS                       R13 R12 K48 ["icon"]
      152 LOADK                            R13 K54 ["aqv-header-overflow"]
      153 SETTABLEKS                       R13 R12 K49 ["testId"]
      155 NEWCLOSURE                       R13 P2
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R13 R12 K38 ["onActivated"]
      159 GETUPVAL                         R13 7
      160 GETTABLEKS                       R13 R13 K26 ["Small"]
      162 SETTABLEKS                       R13 R12 K16 ["size"]
      164 GETUPVAL                         R13 13
      165 GETTABLEKS                       R13 R13 K55 ["Utility"]
      167 SETTABLEKS                       R13 R12 K50 ["variant"]
      169 CALL                             R10 2 1
      170 SETTABLEKS                       R10 R9 K46 ["Button"]
      172 CALL                             R6 3 1
      173 SETTABLEKS                       R6 R5 K7 ["MoreMenu"]
      175 CALL                             R2 3 -1
      176 RETURN                           R2 -1

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
