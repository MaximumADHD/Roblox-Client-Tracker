PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+5]
        2 GETUPVAL                         R3 1
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R1 K0 ["check"]
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R2 K0 ["ascending"] ; [+3]
        2 LOADK                            R3 K1 ["SeverityAscending"]
        3 JUMP                             ; [+1]
        4 LOADK                            R3 K2 ["SeverityDescending"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["getFFlagAQVFollowup"]
        8 CALL                             R4 0 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R6 0 3
       14 DUPTABLE                         R7 K6 [{"title", "items"}]
       15 LOADK                            R10 K7 ["Text"]
       16 LOADK                            R11 K8 ["Sort"]
       17 NAMECALL                         R8 R0 K9 ["getText"]
       19 CALL                             R8 3 1
       20 SETTABLEKS                       R8 R7 K4 ["title"]
       22 NEWTABLE                         R8 0 1
       24 DUPTABLE                         R9 K14 [{["id"] = "sort-severity", ["icon"], ["text"]}]
       25 JUMPIFNOT                        R4 ; [+2]
       26 LOADNIL                          R10
       27 JUMP                             ; [+1]
       28 LOADK                            R10 K15 ["two-arrows-down-and-up"]
       29 SETTABLEKS                       R10 R9 K12 ["icon"]
       31 LOADK                            R12 K7 ["Text"]
       32 MOVE                             R13 R3
       33 NAMECALL                         R10 R0 K9 ["getText"]
       35 CALL                             R10 3 1
       36 SETTABLEKS                       R10 R9 K13 ["text"]
       38 SETLIST                          R8 R9 1 [1]
       40 SETTABLEKS                       R8 R7 K5 ["items"]
       42 DUPTABLE                         R8 K6 [{"title", "items"}]
       43 LOADK                            R11 K7 ["Text"]
       44 LOADK                            R12 K16 ["Viewport"]
       45 NAMECALL                         R9 R0 K9 ["getText"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K4 ["title"]
       50 NEWTABLE                         R9 0 1
       52 DUPTABLE                         R10 K19 [{["id"] = "enable-visualizations", ["icon"], ["isChecked"], ["text"]}]
       53 JUMPIF                           R4 ; [+5]
       54 GETTABLEKS                       R12 R1 K17 ["enable-visualizations"]
       56 JUMPIFNOT                        R12 ; [+2]
       57 LOADK                            R11 K20 ["check"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R11
       60 SETTABLEKS                       R11 R10 K12 ["icon"]
       62 JUMPIFNOT                        R4 ; [+7]
       63 GETTABLEKS                       R12 R1 K17 ["enable-visualizations"]
       65 JUMPIFEQKB                       R12 TRUE ; [+2]
       67 LOADB                            R11 0 +1
       68 LOADB                            R11 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R11
       71 SETTABLEKS                       R11 R10 K18 ["isChecked"]
       73 LOADK                            R13 K7 ["Text"]
       74 LOADK                            R14 K21 ["EnableVisualizations"]
       75 NAMECALL                         R11 R0 K9 ["getText"]
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K13 ["text"]
       80 SETLIST                          R9 R10 1 [1]
       82 SETTABLEKS                       R9 R8 K5 ["items"]
       84 DUPTABLE                         R9 K6 [{"title", "items"}]
       85 LOADK                            R12 K7 ["Text"]
       86 LOADK                            R13 K22 ["AvatarSetup"]
       87 NAMECALL                         R10 R0 K9 ["getText"]
       89 CALL                             R10 3 1
       90 SETTABLEKS                       R10 R9 K4 ["title"]
       92 NEWTABLE                         R10 0 1
       94 DUPTABLE                         R11 K24 [{["id"] = "always-validate", ["icon"], ["isChecked"], ["text"]}]
       95 JUMPIF                           R4 ; [+5]
       96 GETTABLEKS                       R13 R1 K23 ["always-validate"]
       98 JUMPIFNOT                        R13 ; [+2]
       99 LOADK                            R12 K20 ["check"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R12
      102 SETTABLEKS                       R12 R11 K12 ["icon"]
      104 JUMPIFNOT                        R4 ; [+7]
      105 GETTABLEKS                       R13 R1 K23 ["always-validate"]
      107 JUMPIFEQKB                       R13 TRUE ; [+2]
      109 LOADB                            R12 0 +1
      110 LOADB                            R12 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R12
      113 SETTABLEKS                       R12 R11 K18 ["isChecked"]
      115 LOADK                            R14 K7 ["Text"]
      116 LOADK                            R15 K25 ["AlwaysValidate"]
      117 NAMECALL                         R12 R0 K9 ["getText"]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K13 ["text"]
      122 SETLIST                          R10 R11 1 [1]
      124 SETTABLEKS                       R10 R9 K5 ["items"]
      126 SETLIST                          R6 R7 3 [1]
      128 RETURN                           R6 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["settings"]}]
        1 NEWTABLE                         R2 2 0
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K4 ["enable-visualizations"]
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K5 ["always-validate"]
        9 SETTABLEKS                       R2 R1 K2 ["settings"]
       11 SETTABLEKS                       R1 R0 K6 ["state"]
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       94 GETUPVAL                         R10 7
       95 GETTABLEKS                       R10 R10 K46 ["getFFlagAQVFollowup"]
       97 CALL                             R10 0 1
       98 JUMPIFNOT                        R10 ; [+4]
       99 GETUPVAL                         R9 8
      100 GETTABLEKS                       R9 R9 K47 ["XSmall"]
      102 JUMP                             ; [+3]
      103 GETUPVAL                         R9 8
      104 GETTABLEKS                       R9 R9 K27 ["Small"]
      106 SETTABLEKS                       R9 R8 K17 ["size"]
      108 GETUPVAL                         R9 9
      109 GETTABLEKS                       R9 R9 K48 ["Bottom"]
      111 SETTABLEKS                       R9 R8 K37 ["side"]
      113 GETUPVAL                         R9 10
      114 GETTABLEKS                       R9 R9 K49 ["End"]
      116 SETTABLEKS                       R9 R8 K38 ["align"]
      118 NEWCLOSURE                       R9 P0
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R9 R8 K39 ["onPressedOutside"]
      122 NEWCLOSURE                       R9 P1
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U11
      125 CAPTURE                          UPVAL U12
      126 SETTABLEKS                       R9 R8 K40 ["onActivated"]
      128 DUPTABLE                         R9 K51 [{"Button"}]
      129 GETUPVAL                         R10 0
      130 GETTABLEKS                       R10 R10 K2 ["createElement"]
      132 GETUPVAL                         R11 13
      133 DUPTABLE                         R12 K56 [{["icon"], ["testId"] = "aqv-header-overflow", ["onActivated"], ["size"], ["variant"]}]
      134 DUPTABLE                         R13 K58 [{["name"] = "three-dots-vertical"}]
      135 SETTABLEKS                       R13 R12 K52 ["icon"]
      137 NEWCLOSURE                       R13 P2
      138 CAPTURE                          VAL R0
      139 SETTABLEKS                       R13 R12 K40 ["onActivated"]
      141 GETUPVAL                         R14 7
      142 GETTABLEKS                       R14 R14 K46 ["getFFlagAQVFollowup"]
      144 CALL                             R14 0 1
      145 JUMPIFNOT                        R14 ; [+4]
      146 GETUPVAL                         R13 8
      147 GETTABLEKS                       R13 R13 K47 ["XSmall"]
      149 JUMP                             ; [+3]
      150 GETUPVAL                         R13 8
      151 GETTABLEKS                       R13 R13 K27 ["Small"]
      153 SETTABLEKS                       R13 R12 K17 ["size"]
      155 GETUPVAL                         R13 14
      156 GETTABLEKS                       R13 R13 K59 ["Utility"]
      158 SETTABLEKS                       R13 R12 K55 ["variant"]
      160 CALL                             R10 2 1
      161 SETTABLEKS                       R10 R9 K50 ["Button"]
      163 CALL                             R6 3 1
      164 SETTABLEKS                       R6 R5 K7 ["MoreMenu"]
      166 CALL                             R2 3 -1
      167 RETURN                           R2 -1

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
       30 GETTABLEKS                       R5 R0 K10 ["Bin"]
       32 GETTABLEKS                       R5 R5 K11 ["Common"]
       34 GETTABLEKS                       R5 R5 K12 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Dash"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K14 ["join"]
       46 GETTABLEKS                       R7 R2 K15 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K16 ["withContext"]
       50 GETTABLEKS                       R9 R3 K17 ["View"]
       52 GETTABLEKS                       R10 R3 K18 ["Icon"]
       54 GETTABLEKS                       R11 R3 K19 ["Text"]
       56 GETTABLEKS                       R12 R3 K20 ["IconButton"]
       58 GETTABLEKS                       R13 R3 K21 ["Enums"]
       60 GETTABLEKS                       R13 R13 K22 ["IconSize"]
       62 GETTABLEKS                       R14 R3 K21 ["Enums"]
       64 GETTABLEKS                       R14 R14 K23 ["InputSize"]
       66 GETTABLEKS                       R15 R3 K21 ["Enums"]
       68 GETTABLEKS                       R15 R15 K24 ["ButtonVariant"]
       70 GETTABLEKS                       R16 R3 K25 ["Menu"]
       72 GETTABLEKS                       R17 R3 K21 ["Enums"]
       74 GETTABLEKS                       R17 R17 K26 ["PopoverSide"]
       76 GETTABLEKS                       R18 R3 K21 ["Enums"]
       78 GETTABLEKS                       R18 R18 K27 ["PopoverAlign"]
       80 NEWTABLE                         R19 2 0
       82 LOADB                            R20 1
       83 SETTABLEKS                       R20 R19 K28 ["enable-visualizations"]
       85 LOADB                            R20 1
       86 SETTABLEKS                       R20 R19 K29 ["always-validate"]
       88 DUPCLOSURE                       R20 K30 [PROTO_1]
       89 CAPTURE                          VAL R4
       90 GETTABLEKS                       R21 R1 K31 ["PureComponent"]
       92 LOADK                            R23 K32 ["HeaderRow"]
       93 NAMECALL                         R21 R21 K33 ["extend"]
       95 CALL                             R21 2 1
       96 DUPCLOSURE                       R22 K34 [PROTO_2]
       97 SETTABLEKS                       R22 R21 K35 ["init"]
       99 DUPCLOSURE                       R22 K36 [PROTO_6]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R15
      115 SETTABLEKS                       R22 R21 K37 ["render"]
      117 MOVE                             R22 R8
      118 DUPTABLE                         R23 K41 [{"Localization", "Stylizer", "Mouse"}]
      119 GETTABLEKS                       R24 R7 K38 ["Localization"]
      121 SETTABLEKS                       R24 R23 K38 ["Localization"]
      123 GETTABLEKS                       R24 R7 K39 ["Stylizer"]
      125 SETTABLEKS                       R24 R23 K39 ["Stylizer"]
      127 GETTABLEKS                       R24 R7 K40 ["Mouse"]
      129 SETTABLEKS                       R24 R23 K40 ["Mouse"]
      131 CALL                             R22 1 1
      132 MOVE                             R23 R21
      133 CALL                             R22 1 1
      134 MOVE                             R21 R22
      135 RETURN                           R21 1
