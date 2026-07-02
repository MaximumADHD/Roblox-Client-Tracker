PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"leading", "trailing", "text", "onActivated", "isChecked", "size", "variant", "isDisabled"}]
        5 GETTABLEKS                       R6 R0 K1 ["leading"]
        7 LENGTH                           R5 R6
        8 LOADN                            R6 0
        9 JUMPIFLT                         R6 R5 ; [+9]
       11 GETTABLEKS                       R6 R0 K1 ["leading"]
       13 FASTCALL1                        TYPE R6 ; [+2]
       14 GETIMPORT                        R5 K11 [type]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K12 ["table"] ; [+4]
       19 GETTABLEKS                       R4 R0 K1 ["leading"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K1 ["leading"]
       25 GETTABLEKS                       R6 R0 K2 ["trailing"]
       27 LENGTH                           R5 R6
       28 LOADN                            R6 0
       29 JUMPIFLT                         R6 R5 ; [+9]
       31 GETTABLEKS                       R6 R0 K2 ["trailing"]
       33 FASTCALL1                        TYPE R6 ; [+2]
       34 GETIMPORT                        R5 K11 [type]
       36 CALL                             R5 1 1
       37 JUMPIFNOTEQKS                    R5 K12 ["table"] ; [+4]
       39 GETTABLEKS                       R4 R0 K2 ["trailing"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 SETTABLEKS                       R4 R3 K2 ["trailing"]
       45 GETTABLEKS                       R4 R0 K3 ["text"]
       47 SETTABLEKS                       R4 R3 K3 ["text"]
       49 GETTABLEKS                       R4 R0 K4 ["onActivated"]
       51 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       53 GETTABLEKS                       R4 R0 K5 ["isChecked"]
       55 SETTABLEKS                       R4 R3 K5 ["isChecked"]
       57 GETTABLEKS                       R4 R0 K6 ["size"]
       59 SETTABLEKS                       R4 R3 K6 ["size"]
       61 GETTABLEKS                       R4 R0 K7 ["variant"]
       63 SETTABLEKS                       R4 R3 K7 ["variant"]
       65 GETTABLEKS                       R4 R0 K8 ["isDisabled"]
       67 SETTABLEKS                       R4 R3 K8 ["isDisabled"]
       69 CALL                             R1 2 -1
       70 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K8 [{"text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "variant"}]
        2 GETTABLEKS                       R3 R0 K9 ["controls"]
        4 GETTABLEKS                       R3 R3 K0 ["text"]
        6 SETTABLEKS                       R3 R2 K0 ["text"]
        8 DUPCLOSURE                       R3 K10 [PROTO_1]
        9 SETTABLEKS                       R3 R2 K1 ["onActivated"]
       11 GETTABLEKS                       R3 R0 K9 ["controls"]
       13 GETTABLEKS                       R3 R3 K2 ["leading"]
       15 SETTABLEKS                       R3 R2 K2 ["leading"]
       17 GETTABLEKS                       R3 R0 K9 ["controls"]
       19 GETTABLEKS                       R3 R3 K3 ["trailing"]
       21 SETTABLEKS                       R3 R2 K3 ["trailing"]
       23 GETTABLEKS                       R3 R0 K9 ["controls"]
       25 GETTABLEKS                       R3 R3 K4 ["isChecked"]
       27 SETTABLEKS                       R3 R2 K4 ["isChecked"]
       29 GETTABLEKS                       R3 R0 K9 ["controls"]
       31 GETTABLEKS                       R3 R3 K5 ["isDisabled"]
       33 SETTABLEKS                       R3 R2 K5 ["isDisabled"]
       35 GETTABLEKS                       R3 R0 K9 ["controls"]
       37 GETTABLEKS                       R3 R3 K6 ["size"]
       39 SETTABLEKS                       R3 R2 K6 ["size"]
       41 GETTABLEKS                       R3 R0 K9 ["controls"]
       43 GETTABLEKS                       R3 R3 K7 ["variant"]
       45 SETTABLEKS                       R3 R2 K7 ["variant"]
       47 CALL                             R1 1 -1
       48 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K10 [{"key", "text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "variant"}]
        5 SETTABLEKS                       R1 R4 K1 ["key"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K11 ["controls"]
       10 GETTABLEKS                       R5 R5 K2 ["text"]
       12 SETTABLEKS                       R5 R4 K2 ["text"]
       14 DUPCLOSURE                       R5 K12 [PROTO_3]
       15 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K11 ["controls"]
       20 GETTABLEKS                       R5 R5 K4 ["leading"]
       22 SETTABLEKS                       R5 R4 K4 ["leading"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K11 ["controls"]
       27 GETTABLEKS                       R5 R5 K5 ["trailing"]
       29 SETTABLEKS                       R5 R4 K5 ["trailing"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K11 ["controls"]
       34 GETTABLEKS                       R5 R5 K6 ["isChecked"]
       36 SETTABLEKS                       R5 R4 K6 ["isChecked"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K11 ["controls"]
       41 GETTABLEKS                       R5 R5 K7 ["isDisabled"]
       43 SETTABLEKS                       R5 R4 K7 ["isDisabled"]
       45 SETTABLEKS                       R0 R4 K8 ["size"]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K11 ["controls"]
       50 GETTABLEKS                       R5 R5 K9 ["variant"]
       52 SETTABLEKS                       R5 R4 K9 ["variant"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row gap-xlarge auto-xy"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 GETUPVAL                         R5 3
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R0
       13 CALL                             R4 2 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K10 [{"key", "text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "variant"}]
        5 SETTABLEKS                       R1 R4 K1 ["key"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K11 ["controls"]
       10 GETTABLEKS                       R5 R5 K2 ["text"]
       12 SETTABLEKS                       R5 R4 K2 ["text"]
       14 DUPCLOSURE                       R5 K12 [PROTO_6]
       15 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K11 ["controls"]
       20 GETTABLEKS                       R5 R5 K4 ["leading"]
       22 SETTABLEKS                       R5 R4 K4 ["leading"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K11 ["controls"]
       27 GETTABLEKS                       R5 R5 K5 ["trailing"]
       29 SETTABLEKS                       R5 R4 K5 ["trailing"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K11 ["controls"]
       34 GETTABLEKS                       R5 R5 K6 ["isChecked"]
       36 SETTABLEKS                       R5 R4 K6 ["isChecked"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K11 ["controls"]
       41 GETTABLEKS                       R5 R5 K7 ["isDisabled"]
       43 SETTABLEKS                       R5 R4 K7 ["isDisabled"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K11 ["controls"]
       48 GETTABLEKS                       R5 R5 K8 ["size"]
       50 SETTABLEKS                       R5 R4 K8 ["size"]
       52 SETTABLEKS                       R0 R4 K9 ["variant"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row gap-xlarge auto-xy"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 GETUPVAL                         R5 3
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R0
       13 CALL                             R4 2 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "variant"}]
        5 GETTABLEKS                       R4 R0 K9 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["text"]
       11 DUPCLOSURE                       R4 K10 [PROTO_9]
       12 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       14 DUPTABLE                         R4 K14 [{["type"] = "AvatarGroup", ["props"]}]
       15 DUPTABLE                         R5 K18 [{["avatars"], ["type"], ["max"] = 3}]
       16 NEWTABLE                         R6 0 4
       18 LOADK                            R7 K19 [24813339]
       19 LOADK                            R8 K20 [24813338]
       20 LOADK                            R9 K21 [24813337]
       21 LOADK                            R10 K22 [24813336]
       22 SETLIST                          R6 R7 4 [1]
       24 SETTABLEKS                       R6 R5 K15 ["avatars"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K23 ["Stacked"]
       29 SETTABLEKS                       R6 R5 K11 ["type"]
       31 SETTABLEKS                       R5 R4 K13 ["props"]
       33 SETTABLEKS                       R4 R3 K3 ["leading"]
       35 GETTABLEKS                       R4 R0 K9 ["controls"]
       37 GETTABLEKS                       R4 R4 K4 ["isChecked"]
       39 SETTABLEKS                       R4 R3 K4 ["isChecked"]
       41 GETTABLEKS                       R4 R0 K9 ["controls"]
       43 GETTABLEKS                       R4 R4 K5 ["isDisabled"]
       45 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       47 GETTABLEKS                       R4 R0 K9 ["controls"]
       49 GETTABLEKS                       R4 R4 K6 ["size"]
       51 SETTABLEKS                       R4 R3 K6 ["size"]
       53 GETTABLEKS                       R4 R0 K9 ["controls"]
       55 GETTABLEKS                       R4 R4 K7 ["variant"]
       57 SETTABLEKS                       R4 R3 K7 ["variant"]
       59 CALL                             R1 2 -1
       60 RETURN                           R1 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K3 [{["tag"] = "auto-xy padding-large bg-surface-300"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K4 ["Provider"]
       13 DUPTABLE                         R7 K6 [{"value"}]
       14 GETTABLEKS                       R8 R1 K7 ["Color"]
       16 GETTABLEKS                       R8 R8 K8 ["Surface"]
       18 GETTABLEKS                       R8 R8 K9 ["Surface_300"]
       20 SETTABLEKS                       R8 R7 K5 ["value"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K0 ["createElement"]
       25 GETUPVAL                         R9 4
       26 DUPTABLE                         R10 K17 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "variant"}]
       27 GETTABLEKS                       R11 R0 K18 ["controls"]
       29 GETTABLEKS                       R11 R11 K10 ["text"]
       31 SETTABLEKS                       R11 R10 K10 ["text"]
       33 DUPCLOSURE                       R11 K19 [PROTO_11]
       34 SETTABLEKS                       R11 R10 K11 ["onActivated"]
       36 DUPTABLE                         R11 K23 [{["type"] = "AvatarGroup", ["props"]}]
       37 DUPTABLE                         R12 K27 [{["avatars"], ["type"], ["max"] = 3}]
       38 NEWTABLE                         R13 0 4
       40 LOADK                            R14 K28 [24813339]
       41 LOADK                            R15 K29 [24813338]
       42 LOADK                            R16 K30 [24813337]
       43 LOADK                            R17 K31 [24813336]
       44 SETLIST                          R13 R14 4 [1]
       46 SETTABLEKS                       R13 R12 K24 ["avatars"]
       48 GETUPVAL                         R13 5
       49 GETTABLEKS                       R13 R13 K32 ["Stacked"]
       51 SETTABLEKS                       R13 R12 K20 ["type"]
       53 SETTABLEKS                       R12 R11 K22 ["props"]
       55 SETTABLEKS                       R11 R10 K12 ["leading"]
       57 GETTABLEKS                       R11 R0 K18 ["controls"]
       59 GETTABLEKS                       R11 R11 K13 ["isChecked"]
       61 SETTABLEKS                       R11 R10 K13 ["isChecked"]
       63 GETTABLEKS                       R11 R0 K18 ["controls"]
       65 GETTABLEKS                       R11 R11 K14 ["isDisabled"]
       67 SETTABLEKS                       R11 R10 K14 ["isDisabled"]
       69 GETTABLEKS                       R11 R0 K18 ["controls"]
       71 GETTABLEKS                       R11 R11 K15 ["size"]
       73 SETTABLEKS                       R11 R10 K15 ["size"]
       75 GETTABLEKS                       R11 R0 K18 ["controls"]
       77 GETTABLEKS                       R11 R11 K16 ["variant"]
       79 SETTABLEKS                       R11 R10 K16 ["variant"]
       81 CALL                             R8 2 -1
       82 CALL                             R5 -1 -1
       83 CALL                             R2 -1 -1
       84 RETURN                           R2 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["I've been clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["I've been clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["AvatarGroupType"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Providers"]
       30 GETTABLEKS                       R6 R6 K12 ["Style"]
       32 GETTABLEKS                       R6 R6 K13 ["BackgroundStyleContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Enums"]
       39 GETTABLEKS                       R7 R7 K14 ["ChipSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Enums"]
       46 GETTABLEKS                       R8 R8 K15 ["ChipVariant"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Components"]
       53 GETTABLEKS                       R9 R9 K17 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Providers"]
       60 GETTABLEKS                       R10 R10 K12 ["Style"]
       62 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K16 ["Components"]
       69 GETTABLEKS                       R11 R11 K19 ["Chip"]
       71 GETTABLEKS                       R11 R11 K19 ["Chip"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K20 [PROTO_0]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R10
       77 DUPTABLE                         R12 K24 [{["summary"] = "Chip", ["stories"], ["controls"]}]
       78 NEWTABLE                         R13 0 5
       80 DUPTABLE                         R14 K28 [{["name"] = "Basic", ["story"]}]
       81 DUPCLOSURE                       R15 K29 [PROTO_2]
       82 CAPTURE                          VAL R11
       83 SETTABLEKS                       R15 R14 K27 ["story"]
       85 DUPTABLE                         R15 K31 [{["name"] = "Sizes", ["story"]}]
       86 DUPCLOSURE                       R16 K32 [PROTO_5]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R11
       92 SETTABLEKS                       R16 R15 K27 ["story"]
       94 DUPTABLE                         R16 K34 [{["name"] = "Variants", ["story"]}]
       95 DUPCLOSURE                       R17 K35 [PROTO_8]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R11
      101 SETTABLEKS                       R17 R16 K27 ["story"]
      103 DUPTABLE                         R17 K37 [{["name"] = "AvatarGroup", ["story"]}]
      104 DUPCLOSURE                       R18 K38 [PROTO_10]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R18 R17 K27 ["story"]
      110 DUPTABLE                         R18 K40 [{["name"] = "AvatarGroup on custom background", ["story"]}]
      111 DUPCLOSURE                       R19 K41 [PROTO_12]
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R19 R18 K27 ["story"]
      120 SETLIST                          R13 R14 5 [1]
      122 SETTABLEKS                       R13 R12 K22 ["stories"]
      124 DUPTABLE                         R13 K51 [{["leading"], ["trailing"], ["size"], ["variant"], ["text"] = "Filter", ["isChecked"] = False, ["isDisabled"] = False}]
      125 NEWTABLE                         R14 0 6
      127 LOADK                            R15 K52 ["robux"]
      128 LOADK                            R16 K53 ["icons/actions/filter"]
      129 LOADK                            R17 K54 ["icons/common/robux"]
      130 LOADK                            R18 K55 ["icons/common/play"]
      131 DUPTABLE                         R19 K61 [{["iconName"] = "icons/actions/selectOn", ["onActivated"], ["isCircular"] = True}]
      132 DUPCLOSURE                       R20 K62 [PROTO_13]
      133 SETTABLEKS                       R20 R19 K58 ["onActivated"]
      135 LOADK                            R20 K63 [""]
      136 SETLIST                          R14 R15 6 [1]
      138 SETTABLEKS                       R14 R13 K42 ["leading"]
      140 NEWTABLE                         R14 0 8
      142 LOADK                            R15 K64 ["three-bars-horizontal-narrowing"]
      143 LOADK                            R16 K53 ["icons/actions/filter"]
      144 LOADK                            R17 K54 ["icons/common/robux"]
      145 LOADK                            R18 K55 ["icons/common/play"]
      146 LOADK                            R19 K65 ["icons/status/success_small"]
      147 LOADK                            R20 K66 ["icons/actions/truncationExpand_small"]
      148 DUPTABLE                         R21 K61 [{["iconName"] = "icons/actions/selectOn", ["onActivated"], ["isCircular"] = True}]
      149 DUPCLOSURE                       R22 K67 [PROTO_14]
      150 SETTABLEKS                       R22 R21 K58 ["onActivated"]
      152 LOADK                            R22 K63 [""]
      153 SETLIST                          R14 R15 8 [1]
      155 SETTABLEKS                       R14 R13 K43 ["trailing"]
      157 GETTABLEKS                       R14 R2 K68 ["values"]
      159 MOVE                             R15 R6
      160 CALL                             R14 1 1
      161 SETTABLEKS                       R14 R13 K44 ["size"]
      163 GETTABLEKS                       R14 R2 K68 ["values"]
      165 MOVE                             R15 R7
      166 CALL                             R14 1 1
      167 SETTABLEKS                       R14 R13 K45 ["variant"]
      169 SETTABLEKS                       R13 R12 K23 ["controls"]
      171 RETURN                           R12 1
