PROTO_0:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K4 [{[1] = "Layout", ["text"], ["items"]}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K5 ["OptionMenu"]
        5 LOADK                            R5 K1 ["Layout"]
        6 NAMECALL                         R2 R2 K6 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K2 ["text"]
       11 NEWTABLE                         R2 0 2
       13 DUPTABLE                         R3 K8 [{[1] = "List", ["text"] = "List"}]
       14 DUPTABLE                         R4 K11 [{[1] = "Grid", ["text"] = "Thumbnail"}]
       15 SETLIST                          R2 R3 2 [1]
       17 SETTABLEKS                       R2 R1 K3 ["items"]
       19 DUPTABLE                         R2 K13 [{[1] = "Sort", ["text"], ["items"]}]
       20 GETUPVAL                         R3 0
       21 LOADK                            R5 K5 ["OptionMenu"]
       22 LOADK                            R6 K12 ["Sort"]
       23 NAMECALL                         R3 R3 K6 ["getText"]
       25 CALL                             R3 3 1
       26 SETTABLEKS                       R3 R2 K2 ["text"]
       28 NEWTABLE                         R3 0 2
       30 DUPTABLE                         R4 K15 [{[1] = "Recent", ["text"] = "Recent"}]
       31 DUPTABLE                         R5 K17 [{[1] = "Alphabetical", ["text"] = "Alphabetical"}]
       32 SETLIST                          R3 R4 2 [1]
       34 SETTABLEKS                       R3 R2 K3 ["items"]
       36 SETLIST                          R0 R1 2 [1]
       38 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["Layout"] ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["setLayout"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R0 K2 ["Sort"] ; [+6]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["setSort"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       19 DUPCLOSURE                       R5 K3 [PROTO_0]
       20 CAPTURE                          UPVAL U4
       21 NEWTABLE                         R6 0 1
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K4 ["locale"]
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 0
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R8 0 2
       45 GETTABLEKS                       R9 R1 K6 ["setLayout"]
       47 GETTABLEKS                       R10 R2 K7 ["setSort"]
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 5
       53 GETUPVAL                         R8 6
       54 GETTABLEKS                       R8 R8 K8 ["Root"]
       56 DUPTABLE                         R9 K10 [{"isOpen"}]
       57 GETTABLEKS                       R10 R3 K11 ["enabled"]
       59 SETTABLEKS                       R10 R9 K9 ["isOpen"]
       61 DUPTABLE                         R10 K14 [{"OptionMenuAnchor", "Content"}]
       62 GETUPVAL                         R11 5
       63 GETUPVAL                         R12 6
       64 GETTABLEKS                       R12 R12 K15 ["Anchor"]
       66 DUPTABLE                         R13 K17 [{"LayoutOrder"}]
       67 GETTABLEKS                       R14 R0 K18 ["layoutOrder"]
       69 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       71 DUPTABLE                         R14 K20 [{"Button"}]
       72 GETUPVAL                         R15 5
       73 GETUPVAL                         R16 7
       74 DUPTABLE                         R17 K24 [{["tag"] = "row align-x-center align-y-center size-600-600 radius-small", ["onActivated"]}]
       75 SETTABLEKS                       R5 R17 K23 ["onActivated"]
       77 DUPTABLE                         R18 K26 [{"Icon"}]
       78 GETUPVAL                         R19 5
       79 GETUPVAL                         R20 8
       80 DUPTABLE                         R21 K29 [{"name", "size"}]
       81 GETUPVAL                         R22 9
       82 GETTABLEKS                       R22 R22 K30 ["Enums"]
       84 GETTABLEKS                       R22 R22 K31 ["IconName"]
       86 GETTABLEKS                       R22 R22 K32 ["ListBulleted"]
       88 SETTABLEKS                       R22 R21 K27 ["name"]
       90 GETUPVAL                         R22 9
       91 GETTABLEKS                       R22 R22 K30 ["Enums"]
       93 GETTABLEKS                       R22 R22 K33 ["IconSize"]
       95 GETTABLEKS                       R22 R22 K34 ["Small"]
       97 SETTABLEKS                       R22 R21 K28 ["size"]
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K25 ["Icon"]
      102 CALL                             R15 3 1
      103 SETTABLEKS                       R15 R14 K19 ["Button"]
      105 CALL                             R11 3 1
      106 SETTABLEKS                       R11 R10 K12 ["OptionMenuAnchor"]
      108 GETTABLEKS                       R12 R3 K11 ["enabled"]
      110 JUMPIFNOT                        R12 ; [+58]
      111 GETUPVAL                         R11 5
      112 GETUPVAL                         R12 6
      113 GETTABLEKS                       R12 R12 K13 ["Content"]
      115 DUPTABLE                         R13 K40 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      116 GETTABLEKS                       R14 R3 K41 ["disable"]
      118 SETTABLEKS                       R14 R13 K37 ["onPressedOutside"]
      120 DUPTABLE                         R14 K45 [{["position"], ["offset"] = 0}]
      121 GETUPVAL                         R15 9
      122 GETTABLEKS                       R15 R15 K30 ["Enums"]
      124 GETTABLEKS                       R15 R15 K46 ["PopoverAlign"]
      126 GETTABLEKS                       R15 R15 K47 ["Start"]
      128 SETTABLEKS                       R15 R14 K42 ["position"]
      130 SETTABLEKS                       R14 R13 K38 ["align"]
      132 DUPTABLE                         R14 K49 [{["position"], ["offset"] = 4}]
      133 GETUPVAL                         R15 9
      134 GETTABLEKS                       R15 R15 K30 ["Enums"]
      136 GETTABLEKS                       R15 R15 K50 ["PopoverSide"]
      138 GETTABLEKS                       R15 R15 K51 ["Bottom"]
      140 SETTABLEKS                       R15 R14 K42 ["position"]
      142 SETTABLEKS                       R14 R13 K39 ["side"]
      144 DUPTABLE                         R14 K53 [{"OptionMenu"}]
      145 GETUPVAL                         R15 5
      146 GETUPVAL                         R16 10
      147 DUPTABLE                         R17 K61 [{["width"] = 145, ["items"], ["values"], ["onItemSelected"], ["shouldDisplayChecks"] = True}]
      148 SETTABLEKS                       R4 R17 K56 ["items"]
      150 NEWTABLE                         R18 2 0
      152 GETTABLEKS                       R19 R1 K62 ["layout"]
      154 LOADB                            R20 1
      155 SETTABLE                         R20 R18 R19
      156 GETTABLEKS                       R19 R2 K63 ["sort"]
      158 LOADB                            R20 1
      159 SETTABLE                         R20 R18 R19
      160 SETTABLEKS                       R18 R17 K57 ["values"]
      162 SETTABLEKS                       R6 R17 K58 ["onItemSelected"]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K52 ["OptionMenu"]
      167 CALL                             R11 3 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R11
      170 SETTABLEKS                       R11 R10 K13 ["Content"]
      172 CALL                             R7 3 -1
      173 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Components"]
       19 GETTABLEKS                       R4 R4 K9 ["Util"]
       21 GETTABLEKS                       R4 R4 K10 ["DividedMenu"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K7 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Foundation"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Contexts"]
       33 GETTABLEKS                       R6 R6 K13 ["LayoutContext"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K7 [require]
       38 GETTABLEKS                       R7 R2 K14 ["React"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K7 [require]
       43 GETTABLEKS                       R8 R2 K15 ["ReactUtils"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R9 R1 K12 ["Contexts"]
       50 GETTABLEKS                       R9 R9 K16 ["SortContext"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K7 [require]
       55 GETTABLEKS                       R10 R1 K17 ["Resources"]
       57 GETTABLEKS                       R10 R10 K18 ["Localization"]
       59 GETTABLEKS                       R10 R10 K19 ["Translator"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K7 [require]
       64 GETTABLEKS                       R11 R1 K20 ["Types"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R4 K21 ["Icon"]
       69 GETTABLEKS                       R12 R4 K22 ["Popover"]
       71 GETTABLEKS                       R13 R4 K23 ["View"]
       73 GETTABLEKS                       R14 R6 K24 ["createElement"]
       75 GETTABLEKS                       R15 R7 K25 ["useToggleState"]
       77 DUPCLOSURE                       R16 K26 [PROTO_3]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 RETURN                           R16 1
