PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEventCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["createElement"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["View"]
       16 DUPTABLE                         R5 K10 [{["tag"] = "row align-y-center gap-small auto-xy padding-x-small padding-y-xsmall radius-small", ["onActivated"], ["isDisabled"], ["testId"], ["LayoutOrder"]}]
       17 GETTABLEKS                       R7 R0 K7 ["isDisabled"]
       19 JUMPIFNOT                        R7 ; [+2]
       20 LOADNIL                          R6
       21 JUMP                             ; [+1]
       22 MOVE                             R6 R1
       23 SETTABLEKS                       R6 R5 K6 ["onActivated"]
       25 GETTABLEKS                       R6 R0 K7 ["isDisabled"]
       27 SETTABLEKS                       R6 R5 K7 ["isDisabled"]
       29 GETTABLEKS                       R6 R0 K8 ["testId"]
       31 SETTABLEKS                       R6 R5 K8 ["testId"]
       33 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       35 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       37 DUPTABLE                         R6 K14 [{"Text", "Spacer", "Trailing"}]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K2 ["createElement"]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K11 ["Text"]
       44 DUPTABLE                         R9 K15 [{"Text", "tag", "LayoutOrder"}]
       45 GETTABLEKS                       R10 R0 K16 ["text"]
       47 SETTABLEKS                       R10 R9 K11 ["Text"]
       49 NEWTABLE                         R10 4 0
       51 LOADB                            R11 1
       52 SETTABLEKS                       R11 R10 K17 ["auto-xy text-body-small text-align-x-left"]
       54 GETTABLEKS                       R11 R0 K7 ["isDisabled"]
       56 SETTABLEKS                       R11 R10 K18 ["content-muted"]
       58 GETTABLEKS                       R12 R0 K7 ["isDisabled"]
       60 NOT                              R11 R12
       61 SETTABLEKS                       R11 R10 K19 ["content-emphasis"]
       63 SETTABLEKS                       R10 R9 K4 ["tag"]
       65 MOVE                             R10 R2
       66 CALL                             R10 0 1
       67 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K11 ["Text"]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K2 ["createElement"]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K3 ["View"]
       78 DUPTABLE                         R9 K21 [{["tag"] = "fill", ["LayoutOrder"]}]
       79 MOVE                             R10 R2
       80 CALL                             R10 0 1
       81 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K12 ["Spacer"]
       86 GETTABLEKS                       R8 R0 K22 ["trailingIcon"]
       88 JUMPIFNOT                        R8 ; [+26]
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R7 R7 K2 ["createElement"]
       92 GETUPVAL                         R8 2
       93 GETTABLEKS                       R8 R8 K23 ["Icon"]
       95 DUPTABLE                         R9 K26 [{"name", "size", "LayoutOrder"}]
       96 GETTABLEKS                       R10 R0 K22 ["trailingIcon"]
       98 SETTABLEKS                       R10 R9 K24 ["name"]
      100 GETUPVAL                         R10 2
      101 GETTABLEKS                       R10 R10 K27 ["Enums"]
      103 GETTABLEKS                       R10 R10 K28 ["IconSize"]
      105 GETTABLEKS                       R10 R10 K29 ["Small"]
      107 SETTABLEKS                       R10 R9 K25 ["size"]
      109 MOVE                             R10 R2
      110 CALL                             R10 0 1
      111 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
      113 CALL                             R7 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R7
      116 SETTABLEKS                       R7 R6 K13 ["Trailing"]
      118 CALL                             R3 3 -1
      119 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["back"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["back"]
        7 GETTABLEKS                       R0 R0 K1 ["onActivated"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["id"]
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K2 [tostring]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["createElement"]
        9 GETUPVAL                         R4 1
       10 DUPTABLE                         R5 K10 [{"id", "text", "trailingIcon", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
       11 GETTABLEKS                       R6 R1 K0 ["id"]
       13 SETTABLEKS                       R6 R5 K0 ["id"]
       15 GETTABLEKS                       R6 R1 K4 ["text"]
       17 SETTABLEKS                       R6 R5 K4 ["text"]
       19 GETTABLEKS                       R7 R1 K11 ["hasSubmenu"]
       21 JUMPIFNOT                        R7 ; [+8]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K12 ["Enums"]
       25 GETTABLEKS                       R6 R6 K13 ["IconName"]
       27 GETTABLEKS                       R6 R6 K14 ["ChevronSmallRight"]
       29 JUMP                             ; [+12]
       30 GETTABLEKS                       R7 R1 K15 ["isChecked"]
       32 JUMPIFNOT                        R7 ; [+8]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K12 ["Enums"]
       36 GETTABLEKS                       R6 R6 K13 ["IconName"]
       38 GETTABLEKS                       R6 R6 K16 ["Check"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K5 ["trailingIcon"]
       44 GETTABLEKS                       R6 R1 K6 ["isDisabled"]
       46 SETTABLEKS                       R6 R5 K6 ["isDisabled"]
       48 GETUPVAL                         R6 3
       49 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K8 ["testId"]
       54 JUMPIFNOT                        R7 ; [+10]
       55 LOADK                            R6 K17 ["%*--%*"]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R8 R8 K8 ["testId"]
       59 GETTABLEKS                       R9 R1 K0 ["id"]
       61 NAMECALL                         R6 R6 K18 ["format"]
       63 CALL                             R6 3 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R6
       66 SETTABLEKS                       R6 R5 K8 ["testId"]
       68 GETUPVAL                         R6 5
       69 CALL                             R6 0 1
       70 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       72 CALL                             R3 2 -1
       73 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["back"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useEventCallback"]
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          VAL R0
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K3 ["join"]
       21 DUPTABLE                         R6 K5 [{"Back"}]
       22 JUMPIFNOT                        R1 ; [+30]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K6 ["createElement"]
       26 GETUPVAL                         R8 3
       27 DUPTABLE                         R9 K12 [{["id"] = "back", ["text"], ["onActivated"], ["testId"], ["LayoutOrder"]}]
       28 GETTABLEKS                       R10 R1 K8 ["text"]
       30 SETTABLEKS                       R10 R9 K8 ["text"]
       32 SETTABLEKS                       R3 R9 K9 ["onActivated"]
       34 GETTABLEKS                       R11 R0 K10 ["testId"]
       36 JUMPIFNOT                        R11 ; [+7]
       37 LOADK                            R10 K13 ["%*--back"]
       38 GETTABLEKS                       R12 R0 K10 ["testId"]
       40 NAMECALL                         R10 R10 K14 ["format"]
       42 CALL                             R10 2 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R10
       45 SETTABLEKS                       R10 R9 K10 ["testId"]
       47 MOVE                             R10 R2
       48 CALL                             R10 0 1
       49 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       51 CALL                             R7 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 SETTABLEKS                       R7 R6 K4 ["Back"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K15 ["collect"]
       59 GETTABLEKS                       R8 R0 K16 ["items"]
       61 NEWCLOSURE                       R9 P2
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CALL                             R7 2 -1
       69 CALL                             R5 -1 1
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K6 ["createElement"]
       73 GETUPVAL                         R7 4
       74 GETTABLEKS                       R7 R7 K17 ["View"]
       76 DUPTABLE                         R8 K21 [{["tag"] = "auto-xy padding-small", ["layout"], ["testId"], ["LayoutOrder"]}]
       77 DUPTABLE                         R9 K25 [{"FillDirection", "HorizontalFlex", "SortOrder"}]
       78 GETIMPORT                        R10 K28 [Enum.FillDirection.Vertical]
       80 SETTABLEKS                       R10 R9 K22 ["FillDirection"]
       82 GETIMPORT                        R10 K31 [Enum.UIFlexAlignment.Fill]
       84 SETTABLEKS                       R10 R9 K23 ["HorizontalFlex"]
       86 GETIMPORT                        R10 K32 [Enum.SortOrder.LayoutOrder]
       88 SETTABLEKS                       R10 R9 K24 ["SortOrder"]
       90 SETTABLEKS                       R9 R8 K20 ["layout"]
       92 GETTABLEKS                       R9 R0 K10 ["testId"]
       94 SETTABLEKS                       R9 R8 K10 ["testId"]
       96 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       98 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
      100 MOVE                             R9 R5
      101 CALL                             R6 3 -1
      102 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R4 K11 ["memo"]
       31 DUPCLOSURE                       R7 K12 [PROTO_1]
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K13 [PROTO_5]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R3
       42 GETTABLEKS                       R8 R4 K11 ["memo"]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 -1
       46 RETURN                           R8 -1
