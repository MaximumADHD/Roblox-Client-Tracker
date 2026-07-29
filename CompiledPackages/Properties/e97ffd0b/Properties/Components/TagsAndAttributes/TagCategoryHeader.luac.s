PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TagsAndAttributes"]
        2 LOADK                            R3 K1 ["TagsHeader"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disable"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["addTag"] ; [+10]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["setEphemeralRow"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["rows"]
       12 GETTABLEKS                       R2 R2 K1 ["addTag"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useToggleState"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["useRef"]
       22 LOADNIL                          R5
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 3
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K5 ["Fragment"]
       28 NEWTABLE                         R7 0 0
       30 DUPTABLE                         R8 K8 [{"Header", "Menu"}]
       31 GETUPVAL                         R9 3
       32 GETUPVAL                         R10 4
       33 DUPTABLE                         R11 K15 [{"getCategoryName", "getExpanded", "setExpanded", "trailingIcon", "LayoutOrder", "Visible"}]
       34 GETUPVAL                         R12 5
       35 SETTABLEKS                       R12 R11 K9 ["getCategoryName"]
       37 GETTABLEKS                       R12 R0 K10 ["getExpanded"]
       39 SETTABLEKS                       R12 R11 K10 ["getExpanded"]
       41 GETTABLEKS                       R12 R0 K11 ["setExpanded"]
       43 SETTABLEKS                       R12 R11 K11 ["setExpanded"]
       45 DUPTABLE                         R12 K21 [{["name"], ["onActivated"], ["testId"] = "AddTagButton", ["ref"]}]
       46 GETUPVAL                         R13 6
       47 GETTABLEKS                       R13 R13 K22 ["PlusLarge"]
       49 SETTABLEKS                       R13 R12 K16 ["name"]
       51 GETTABLEKS                       R13 R2 K23 ["toggle"]
       53 SETTABLEKS                       R13 R12 K17 ["onActivated"]
       55 SETTABLEKS                       R4 R12 K20 ["ref"]
       57 SETTABLEKS                       R12 R11 K12 ["trailingIcon"]
       59 GETTABLEKS                       R12 R0 K13 ["LayoutOrder"]
       61 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       63 GETTABLEKS                       R12 R0 K14 ["Visible"]
       65 SETTABLEKS                       R12 R11 K14 ["Visible"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K6 ["Header"]
       70 GETTABLEKS                       R9 R2 K24 ["enabled"]
       72 JUMPIFNOT                        R9 ; [+38]
       73 GETUPVAL                         R9 3
       74 GETUPVAL                         R10 7
       75 GETTABLEKS                       R10 R10 K7 ["Menu"]
       77 DUPTABLE                         R11 K31 [{["isOpen"] = True, ["items"], ["size"], ["onPressedOutside"], ["onActivated"], ["anchorRef"]}]
       78 NEWTABLE                         R12 0 1
       80 DUPTABLE                         R13 K35 [{["id"] = "addTag", ["text"]}]
       81 GETUPVAL                         R14 8
       82 LOADK                            R16 K36 ["TagDropdown"]
       83 LOADK                            R17 K37 ["NewTag"]
       84 NAMECALL                         R14 R14 K38 ["getText"]
       86 CALL                             R14 3 1
       87 SETTABLEKS                       R14 R13 K34 ["text"]
       89 SETLIST                          R12 R13 1 [1]
       91 SETTABLEKS                       R12 R11 K27 ["items"]
       93 GETUPVAL                         R12 7
       94 GETTABLEKS                       R12 R12 K39 ["Enums"]
       96 GETTABLEKS                       R12 R12 K40 ["InputSize"]
       98 GETTABLEKS                       R12 R12 K41 ["XSmall"]
      100 SETTABLEKS                       R12 R11 K28 ["size"]
      102 GETTABLEKS                       R12 R2 K42 ["disable"]
      104 SETTABLEKS                       R12 R11 K29 ["onPressedOutside"]
      106 SETTABLEKS                       R3 R11 K17 ["onActivated"]
      108 SETTABLEKS                       R4 R11 K30 ["anchorRef"]
      110 CALL                             R9 2 1
      111 SETTABLEKS                       R9 R8 K7 ["Menu"]
      113 CALL                             R5 3 -1
      114 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["CategoryHeader"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K11 ["EphemeralRowContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Foundation"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K13 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K14 ["ReactUtils"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K15 ["Signals"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K16 ["Resources"]
       51 GETTABLEKS                       R9 R9 K17 ["Localization"]
       53 GETTABLEKS                       R9 R9 K18 ["Translator"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R5 K19 ["createElement"]
       58 GETTABLEKS                       R10 R4 K20 ["Enums"]
       60 GETTABLEKS                       R10 R10 K21 ["IconName"]
       62 DUPCLOSURE                       R11 K22 [PROTO_0]
       63 CAPTURE                          VAL R8
       64 DUPCLOSURE                       R12 K23 [PROTO_2]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R8
       74 GETTABLEKS                       R13 R5 K24 ["memo"]
       76 MOVE                             R14 R12
       77 CALL                             R13 1 -1
       78 RETURN                           R13 -1
