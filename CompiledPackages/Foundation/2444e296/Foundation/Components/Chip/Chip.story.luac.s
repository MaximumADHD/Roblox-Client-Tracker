PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["Chip: \"%*\" activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R4 K4 ["col gap-medium auto-xy"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       10 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       12 DUPTABLE                         R4 K7 [{"Caption", "Content"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K9 [{"Text", "tag", "LayoutOrder"}]
       18 GETTABLEKS                       R8 R0 K10 ["caption"]
       20 SETTABLEKS                       R8 R7 K8 ["Text"]
       22 LOADK                            R8 K11 ["text-body-small content-default auto-xy"]
       23 SETTABLEKS                       R8 R7 K1 ["tag"]
       25 LOADN                            R8 1
       26 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K5 ["Caption"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["createElement"]
       34 GETUPVAL                         R6 1
       35 DUPTABLE                         R7 K3 [{"tag", "LayoutOrder"}]
       36 GETTABLEKS                       R8 R0 K12 ["contentTag"]
       38 SETTABLEKS                       R8 R7 K1 ["tag"]
       40 LOADN                            R8 2
       41 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       43 GETTABLEKS                       R8 R0 K13 ["children"]
       45 CALL                             R5 3 1
       46 SETTABLEKS                       R5 R4 K6 ["Content"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"leading", "trailing", "text", "onActivated", "isChecked", "size", "variant", "isDisabled"}]
        5 GETTABLEKS                       R5 R0 K1 ["leading"]
        7 JUMPIFEQKS                       R5 K10 [""] ; [+4]
        9 GETTABLEKS                       R4 R0 K1 ["leading"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 SETTABLEKS                       R4 R3 K1 ["leading"]
       15 GETTABLEKS                       R5 R0 K2 ["trailing"]
       17 JUMPIFEQKS                       R5 K10 [""] ; [+4]
       19 GETTABLEKS                       R4 R0 K2 ["trailing"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K2 ["trailing"]
       25 GETTABLEKS                       R4 R0 K3 ["text"]
       27 SETTABLEKS                       R4 R3 K3 ["text"]
       29 GETTABLEKS                       R4 R0 K4 ["onActivated"]
       31 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       33 GETTABLEKS                       R4 R0 K5 ["isChecked"]
       35 SETTABLEKS                       R4 R3 K5 ["isChecked"]
       37 GETTABLEKS                       R4 R0 K6 ["size"]
       39 SETTABLEKS                       R4 R3 K6 ["size"]
       41 GETTABLEKS                       R4 R0 K7 ["variant"]
       43 SETTABLEKS                       R4 R3 K7 ["variant"]
       45 GETTABLEKS                       R4 R0 K8 ["isDisabled"]
       47 SETTABLEKS                       R4 R3 K8 ["isDisabled"]
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "variant"}]
        5 GETTABLEKS                       R4 R0 K10 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["text"]
       11 LOADK                            R5 K11 ["Playground"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R5
       14 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       16 GETTABLEKS                       R4 R0 K10 ["controls"]
       18 GETTABLEKS                       R4 R4 K3 ["leading"]
       20 SETTABLEKS                       R4 R3 K3 ["leading"]
       22 GETTABLEKS                       R4 R0 K10 ["controls"]
       24 GETTABLEKS                       R4 R4 K4 ["trailing"]
       26 SETTABLEKS                       R4 R3 K4 ["trailing"]
       28 GETTABLEKS                       R4 R0 K10 ["controls"]
       30 GETTABLEKS                       R4 R4 K5 ["isChecked"]
       32 SETTABLEKS                       R4 R3 K5 ["isChecked"]
       34 GETTABLEKS                       R4 R0 K10 ["controls"]
       36 GETTABLEKS                       R4 R4 K6 ["isDisabled"]
       38 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       40 GETTABLEKS                       R4 R0 K10 ["controls"]
       42 GETTABLEKS                       R4 R4 K7 ["size"]
       44 SETTABLEKS                       R4 R3 K7 ["size"]
       46 GETTABLEKS                       R4 R0 K10 ["controls"]
       48 GETTABLEKS                       R4 R4 K8 ["variant"]
       50 SETTABLEKS                       R4 R3 K8 ["variant"]
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"caption", "contentTag"}]
        5 SETTABLEKS                       R1 R4 K1 ["caption"]
        7 LOADK                            R5 K4 ["row gap-small auto-xy"]
        8 SETTABLEKS                       R5 R4 K2 ["contentTag"]
       10 DUPTABLE                         R5 K9 [{"Plain", "LeadingIcon", "TrailingIcon", "AvatarAndClose"}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K0 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K14 [{"text", "onActivated", "size", "LayoutOrder"}]
       16 LOADK                            R9 K15 ["Chip"]
       17 SETTABLEKS                       R9 R8 K10 ["text"]
       19 LOADK                            R10 K5 ["Plain"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R10
       22 SETTABLEKS                       R9 R8 K11 ["onActivated"]
       24 SETTABLEKS                       R0 R8 K12 ["size"]
       26 LOADN                            R9 1
       27 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K5 ["Plain"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K0 ["createElement"]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R8 K17 [{"text", "onActivated", "size", "leading", "LayoutOrder"}]
       37 LOADK                            R9 K15 ["Chip"]
       38 SETTABLEKS                       R9 R8 K10 ["text"]
       40 LOADK                            R10 K6 ["LeadingIcon"]
       41 NEWCLOSURE                       R9 P0
       42 CAPTURE                          VAL R10
       43 SETTABLEKS                       R9 R8 K11 ["onActivated"]
       45 SETTABLEKS                       R0 R8 K12 ["size"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K18 ["DiamondSimplified"]
       50 SETTABLEKS                       R9 R8 K16 ["leading"]
       52 LOADN                            R9 2
       53 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K6 ["LeadingIcon"]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K0 ["createElement"]
       61 GETUPVAL                         R7 2
       62 DUPTABLE                         R8 K20 [{"text", "onActivated", "size", "trailing", "LayoutOrder"}]
       63 LOADK                            R9 K15 ["Chip"]
       64 SETTABLEKS                       R9 R8 K10 ["text"]
       66 LOADK                            R10 K7 ["TrailingIcon"]
       67 NEWCLOSURE                       R9 P0
       68 CAPTURE                          VAL R10
       69 SETTABLEKS                       R9 R8 K11 ["onActivated"]
       71 SETTABLEKS                       R0 R8 K12 ["size"]
       73 GETUPVAL                         R9 3
       74 GETTABLEKS                       R9 R9 K21 ["ChevronSmallDown"]
       76 SETTABLEKS                       R9 R8 K19 ["trailing"]
       78 LOADN                            R9 3
       79 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R5 K7 ["TrailingIcon"]
       84 GETUPVAL                         R6 0
       85 GETTABLEKS                       R6 R6 K0 ["createElement"]
       87 GETUPVAL                         R7 2
       88 DUPTABLE                         R8 K22 [{"text", "onActivated", "size", "leading", "trailing", "LayoutOrder"}]
       89 LOADK                            R9 K15 ["Chip"]
       90 SETTABLEKS                       R9 R8 K10 ["text"]
       92 LOADK                            R10 K8 ["AvatarAndClose"]
       93 NEWCLOSURE                       R9 P0
       94 CAPTURE                          VAL R10
       95 SETTABLEKS                       R9 R8 K11 ["onActivated"]
       97 SETTABLEKS                       R0 R8 K12 ["size"]
       99 GETUPVAL                         R9 4
      100 SETTABLEKS                       R9 R8 K16 ["leading"]
      102 GETUPVAL                         R9 5
      103 SETTABLEKS                       R9 R8 K19 ["trailing"]
      105 LOADN                            R9 4
      106 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      108 CALL                             R6 2 1
      109 SETTABLEKS                       R6 R5 K8 ["AvatarAndClose"]
      111 CALL                             R2 3 -1
      112 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["col gap-xxlarge auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["map"]
       11 GETUPVAL                         R4 3
       12 DUPCLOSURE                       R5 K5 [PROTO_5]
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CALL                             R3 2 -1
       20 CALL                             R0 -1 -1
       21 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"caption", "contentTag"}]
        5 SETTABLEKS                       R1 R4 K1 ["caption"]
        7 LOADK                            R5 K4 ["auto-xy"]
        8 SETTABLEKS                       R5 R4 K2 ["contentTag"]
       10 DUPTABLE                         R5 K6 [{"Chip"}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K0 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K10 [{"text", "onActivated", "variant"}]
       16 SETTABLEKS                       R1 R8 K7 ["text"]
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R9 R8 K8 ["onActivated"]
       22 SETTABLEKS                       R0 R8 K9 ["variant"]
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K5 ["Chip"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row gap-xxlarge auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["map"]
       11 GETUPVAL                         R4 3
       12 DUPCLOSURE                       R5 K5 [PROTO_7]
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CALL                             R3 2 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"caption", "contentTag", "LayoutOrder"}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 LOADK                            R5 K5 ["auto-xy"]
       10 SETTABLEKS                       R5 R4 K2 ["contentTag"]
       12 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       14 DUPTABLE                         R5 K7 [{"Chip"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K11 [{"text", "onActivated", "isChecked"}]
       20 GETTABLEKS                       R9 R0 K8 ["text"]
       22 SETTABLEKS                       R9 R8 K8 ["text"]
       24 GETTABLEKS                       R10 R0 K8 ["text"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R10
       28 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       30 GETTABLEKS                       R9 R0 K10 ["isChecked"]
       32 SETTABLEKS                       R9 R8 K10 ["isChecked"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["Chip"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row gap-xxlarge auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["map"]
       11 NEWTABLE                         R4 0 2
       13 DUPTABLE                         R5 K8 [{"caption", "text", "isChecked"}]
       14 LOADK                            R6 K9 ["False"]
       15 SETTABLEKS                       R6 R5 K5 ["caption"]
       17 LOADK                            R6 K10 ["Unchecked"]
       18 SETTABLEKS                       R6 R5 K6 ["text"]
       20 LOADB                            R6 0
       21 SETTABLEKS                       R6 R5 K7 ["isChecked"]
       23 DUPTABLE                         R6 K8 [{"caption", "text", "isChecked"}]
       24 LOADK                            R7 K11 ["True"]
       25 SETTABLEKS                       R7 R6 K5 ["caption"]
       27 LOADK                            R7 K12 ["Checked"]
       28 SETTABLEKS                       R7 R6 K6 ["text"]
       30 LOADB                            R7 1
       31 SETTABLEKS                       R7 R6 K7 ["isChecked"]
       33 SETLIST                          R4 R5 2 [1]
       35 DUPCLOSURE                       R5 K13 [PROTO_9]
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CALL                             R3 2 -1
       40 CALL                             R0 -1 -1
       41 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"caption", "contentTag", "LayoutOrder"}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 LOADK                            R5 K5 ["auto-xy"]
       10 SETTABLEKS                       R5 R4 K2 ["contentTag"]
       12 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       14 DUPTABLE                         R5 K7 [{"Chip"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K11 [{"text", "onActivated", "isDisabled"}]
       20 GETTABLEKS                       R9 R0 K8 ["text"]
       22 SETTABLEKS                       R9 R8 K8 ["text"]
       24 GETTABLEKS                       R10 R0 K8 ["text"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R10
       28 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       30 GETTABLEKS                       R9 R0 K10 ["isDisabled"]
       32 SETTABLEKS                       R9 R8 K10 ["isDisabled"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["Chip"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row gap-xxlarge auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["map"]
       11 NEWTABLE                         R4 0 2
       13 DUPTABLE                         R5 K8 [{"caption", "text", "isDisabled"}]
       14 LOADK                            R6 K9 ["False"]
       15 SETTABLEKS                       R6 R5 K5 ["caption"]
       17 LOADK                            R6 K10 ["Enabled"]
       18 SETTABLEKS                       R6 R5 K6 ["text"]
       20 LOADB                            R6 0
       21 SETTABLEKS                       R6 R5 K7 ["isDisabled"]
       23 DUPTABLE                         R6 K8 [{"caption", "text", "isDisabled"}]
       24 LOADK                            R7 K11 ["True"]
       25 SETTABLEKS                       R7 R6 K5 ["caption"]
       27 LOADK                            R7 K12 ["Disabled"]
       28 SETTABLEKS                       R7 R6 K6 ["text"]
       30 LOADB                            R7 1
       31 SETTABLEKS                       R7 R6 K7 ["isDisabled"]
       33 SETLIST                          R4 R5 2 [1]
       35 DUPCLOSURE                       R5 K13 [PROTO_11]
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CALL                             R3 2 -1
       40 CALL                             R0 -1 -1
       41 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"caption", "contentTag", "LayoutOrder"}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 LOADK                            R5 K5 ["auto-xy"]
       10 SETTABLEKS                       R5 R4 K2 ["contentTag"]
       12 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       14 DUPTABLE                         R5 K7 [{"Chip"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K11 [{"text", "onActivated", "leading"}]
       20 GETTABLEKS                       R9 R0 K8 ["text"]
       22 SETTABLEKS                       R9 R8 K8 ["text"]
       24 GETTABLEKS                       R10 R0 K8 ["text"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R10
       28 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       30 GETTABLEKS                       R9 R0 K12 ["value"]
       32 SETTABLEKS                       R9 R8 K10 ["leading"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["Chip"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row gap-xxlarge auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["map"]
       11 GETUPVAL                         R4 3
       12 DUPCLOSURE                       R5 K5 [PROTO_13]
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CALL                             R3 2 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"caption", "contentTag", "LayoutOrder"}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 LOADK                            R5 K5 ["auto-xy"]
       10 SETTABLEKS                       R5 R4 K2 ["contentTag"]
       12 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       14 DUPTABLE                         R5 K7 [{"Chip"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 2
       19 DUPTABLE                         R8 K11 [{"text", "onActivated", "trailing"}]
       20 GETTABLEKS                       R9 R0 K8 ["text"]
       22 SETTABLEKS                       R9 R8 K8 ["text"]
       24 GETTABLEKS                       R10 R0 K8 ["text"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R10
       28 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       30 GETTABLEKS                       R9 R0 K12 ["value"]
       32 SETTABLEKS                       R9 R8 K10 ["trailing"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["Chip"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row gap-xxlarge auto-xy"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["map"]
       11 GETUPVAL                         R4 3
       12 DUPCLOSURE                       R5 K5 [PROTO_15]
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CALL                             R3 2 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "variant"}]
        5 GETTABLEKS                       R4 R0 K9 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["text"]
       11 LOADK                            R5 K10 ["AvatarGroup"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R5
       14 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       16 DUPTABLE                         R4 K13 [{"type", "props"}]
       17 LOADK                            R5 K10 ["AvatarGroup"]
       18 SETTABLEKS                       R5 R4 K11 ["type"]
       20 DUPTABLE                         R5 K16 [{"avatars", "type", "max"}]
       21 NEWTABLE                         R6 0 4
       23 LOADK                            R7 K17 [24813339]
       24 LOADK                            R8 K18 [24813338]
       25 LOADK                            R9 K19 [24813337]
       26 LOADK                            R10 K20 [24813336]
       27 SETLIST                          R6 R7 4 [1]
       29 SETTABLEKS                       R6 R5 K14 ["avatars"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K21 ["Stacked"]
       34 SETTABLEKS                       R6 R5 K11 ["type"]
       36 LOADN                            R6 3
       37 SETTABLEKS                       R6 R5 K15 ["max"]
       39 SETTABLEKS                       R5 R4 K12 ["props"]
       41 SETTABLEKS                       R4 R3 K3 ["leading"]
       43 GETTABLEKS                       R4 R0 K9 ["controls"]
       45 GETTABLEKS                       R4 R4 K4 ["isChecked"]
       47 SETTABLEKS                       R4 R3 K4 ["isChecked"]
       49 GETTABLEKS                       R4 R0 K9 ["controls"]
       51 GETTABLEKS                       R4 R4 K5 ["isDisabled"]
       53 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       55 GETTABLEKS                       R4 R0 K9 ["controls"]
       57 GETTABLEKS                       R4 R4 K6 ["size"]
       59 SETTABLEKS                       R4 R3 K6 ["size"]
       61 GETTABLEKS                       R4 R0 K9 ["controls"]
       63 GETTABLEKS                       R4 R4 K7 ["variant"]
       65 SETTABLEKS                       R4 R3 K7 ["variant"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K2 [{"tag"}]
        7 LOADK                            R5 K3 ["auto-xy padding-large bg-surface-300"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K4 ["Provider"]
       16 DUPTABLE                         R7 K6 [{"value"}]
       17 GETTABLEKS                       R8 R1 K7 ["Color"]
       19 GETTABLEKS                       R8 R8 K8 ["Surface"]
       21 GETTABLEKS                       R8 R8 K9 ["Surface_300"]
       23 SETTABLEKS                       R8 R7 K5 ["value"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K0 ["createElement"]
       28 GETUPVAL                         R9 4
       29 DUPTABLE                         R10 K17 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "variant"}]
       30 GETTABLEKS                       R11 R0 K18 ["controls"]
       32 GETTABLEKS                       R11 R11 K10 ["text"]
       34 SETTABLEKS                       R11 R10 K10 ["text"]
       36 LOADK                            R12 K19 ["AvatarGroup on custom background"]
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          VAL R12
       39 SETTABLEKS                       R11 R10 K11 ["onActivated"]
       41 DUPTABLE                         R11 K22 [{"type", "props"}]
       42 LOADK                            R12 K23 ["AvatarGroup"]
       43 SETTABLEKS                       R12 R11 K20 ["type"]
       45 DUPTABLE                         R12 K26 [{"avatars", "type", "max"}]
       46 NEWTABLE                         R13 0 4
       48 LOADK                            R14 K27 [24813339]
       49 LOADK                            R15 K28 [24813338]
       50 LOADK                            R16 K29 [24813337]
       51 LOADK                            R17 K30 [24813336]
       52 SETLIST                          R13 R14 4 [1]
       54 SETTABLEKS                       R13 R12 K24 ["avatars"]
       56 GETUPVAL                         R13 5
       57 GETTABLEKS                       R13 R13 K31 ["Stacked"]
       59 SETTABLEKS                       R13 R12 K20 ["type"]
       61 LOADN                            R13 3
       62 SETTABLEKS                       R13 R12 K25 ["max"]
       64 SETTABLEKS                       R12 R11 K21 ["props"]
       66 SETTABLEKS                       R11 R10 K12 ["leading"]
       68 GETTABLEKS                       R11 R0 K18 ["controls"]
       70 GETTABLEKS                       R11 R11 K13 ["isChecked"]
       72 SETTABLEKS                       R11 R10 K13 ["isChecked"]
       74 GETTABLEKS                       R11 R0 K18 ["controls"]
       76 GETTABLEKS                       R11 R11 K14 ["isDisabled"]
       78 SETTABLEKS                       R11 R10 K14 ["isDisabled"]
       80 GETTABLEKS                       R11 R0 K18 ["controls"]
       82 GETTABLEKS                       R11 R11 K15 ["size"]
       84 SETTABLEKS                       R11 R10 K15 ["size"]
       86 GETTABLEKS                       R11 R0 K18 ["controls"]
       88 GETTABLEKS                       R11 R11 K16 ["variant"]
       90 SETTABLEKS                       R11 R10 K16 ["variant"]
       92 CALL                             R8 2 -1
       93 CALL                             R5 -1 -1
       94 CALL                             R2 -1 -1
       95 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Chip"]
       30 GETTABLEKS                       R6 R6 K12 ["Accessory"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Enums"]
       37 GETTABLEKS                       R7 R7 K14 ["AvatarGroupType"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Providers"]
       44 GETTABLEKS                       R8 R8 K16 ["Style"]
       46 GETTABLEKS                       R8 R8 K17 ["BackgroundStyleContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K13 ["Enums"]
       53 GETTABLEKS                       R9 R9 K18 ["ChipSize"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K13 ["Enums"]
       60 GETTABLEKS                       R10 R10 K19 ["ChipVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Components"]
       67 GETTABLEKS                       R11 R11 K20 ["Text"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K10 ["Components"]
       74 GETTABLEKS                       R12 R12 K21 ["View"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K15 ["Providers"]
       81 GETTABLEKS                       R13 R13 K16 ["Style"]
       83 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Components"]
       90 GETTABLEKS                       R14 R14 K11 ["Chip"]
       92 GETTABLEKS                       R14 R14 K11 ["Chip"]
       94 CALL                             R13 1 1
       95 GETTABLEKS                       R14 R2 K23 ["Icon"]
       97 DUPCLOSURE                       R15 K24 [PROTO_1]
       98 DUPTABLE                         R16 K27 [{"type", "props"}]
       99 LOADK                            R17 K28 ["AvatarGroup"]
      100 SETTABLEKS                       R17 R16 K25 ["type"]
      102 DUPTABLE                         R17 K31 [{"avatars", "type", "max"}]
      103 NEWTABLE                         R18 0 1
      105 LOADK                            R19 K32 [24813339]
      106 SETLIST                          R18 R19 1 [1]
      108 SETTABLEKS                       R18 R17 K29 ["avatars"]
      110 GETTABLEKS                       R18 R6 K33 ["Stacked"]
      112 SETTABLEKS                       R18 R17 K25 ["type"]
      114 LOADN                            R18 1
      115 SETTABLEKS                       R18 R17 K30 ["max"]
      117 SETTABLEKS                       R17 R16 K26 ["props"]
      119 DUPTABLE                         R17 K36 [{"iconName", "isCircular"}]
      120 GETTABLEKS                       R18 R14 K37 ["CircleX"]
      122 SETTABLEKS                       R18 R17 K34 ["iconName"]
      124 LOADB                            R18 1
      125 SETTABLEKS                       R18 R17 K35 ["isCircular"]
      127 NEWTABLE                         R18 0 4
      129 DUPTABLE                         R19 K40 [{"caption", "text"}]
      130 LOADK                            R20 K41 ["None"]
      131 SETTABLEKS                       R20 R19 K38 ["caption"]
      133 LOADK                            R20 K41 ["None"]
      134 SETTABLEKS                       R20 R19 K39 ["text"]
      136 DUPTABLE                         R20 K43 [{"caption", "text", "value"}]
      137 LOADK                            R21 K23 ["Icon"]
      138 SETTABLEKS                       R21 R20 K38 ["caption"]
      140 LOADK                            R21 K23 ["Icon"]
      141 SETTABLEKS                       R21 R20 K39 ["text"]
      143 GETTABLEKS                       R21 R14 K44 ["DiamondSimplified"]
      145 SETTABLEKS                       R21 R20 K42 ["value"]
      147 DUPTABLE                         R21 K43 [{"caption", "text", "value"}]
      148 LOADK                            R22 K45 ["AvatarAccessory"]
      149 SETTABLEKS                       R22 R21 K38 ["caption"]
      151 LOADK                            R22 K46 ["Avatar"]
      152 SETTABLEKS                       R22 R21 K39 ["text"]
      154 SETTABLEKS                       R16 R21 K42 ["value"]
      156 DUPTABLE                         R22 K43 [{"caption", "text", "value"}]
      157 LOADK                            R23 K47 ["CircularAccessory"]
      158 SETTABLEKS                       R23 R22 K38 ["caption"]
      160 LOADK                            R23 K48 ["Circular"]
      161 SETTABLEKS                       R23 R22 K39 ["text"]
      163 SETTABLEKS                       R17 R22 K42 ["value"]
      165 SETLIST                          R18 R19 4 [1]
      167 DUPCLOSURE                       R19 K49 [PROTO_2]
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R10
      171 DUPCLOSURE                       R20 K50 [PROTO_3]
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R13
      174 DUPTABLE                         R21 K54 [{"summary", "stories", "controls"}]
      175 LOADK                            R22 K11 ["Chip"]
      176 SETTABLEKS                       R22 R21 K51 ["summary"]
      178 NEWTABLE                         R22 0 9
      180 DUPTABLE                         R23 K57 [{"name", "story"}]
      181 LOADK                            R24 K58 ["Playground"]
      182 SETTABLEKS                       R24 R23 K55 ["name"]
      184 DUPCLOSURE                       R24 K59 [PROTO_4]
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R20
      187 SETTABLEKS                       R24 R23 K56 ["story"]
      189 DUPTABLE                         R24 K57 [{"name", "story"}]
      190 LOADK                            R25 K60 ["Sizes"]
      191 SETTABLEKS                       R25 R24 K55 ["name"]
      193 DUPCLOSURE                       R25 K61 [PROTO_6]
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R17
      203 SETTABLEKS                       R25 R24 K56 ["story"]
      205 DUPTABLE                         R25 K57 [{"name", "story"}]
      206 LOADK                            R26 K62 ["Variants"]
      207 SETTABLEKS                       R26 R25 K55 ["name"]
      209 DUPCLOSURE                       R26 K63 [PROTO_8]
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R13
      216 SETTABLEKS                       R26 R25 K56 ["story"]
      218 DUPTABLE                         R26 K57 [{"name", "story"}]
      219 LOADK                            R27 K64 ["IsChecked"]
      220 SETTABLEKS                       R27 R26 K55 ["name"]
      222 DUPCLOSURE                       R27 K65 [PROTO_10]
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R13
      228 SETTABLEKS                       R27 R26 K56 ["story"]
      230 DUPTABLE                         R27 K57 [{"name", "story"}]
      231 LOADK                            R28 K66 ["IsDisabled"]
      232 SETTABLEKS                       R28 R27 K55 ["name"]
      234 DUPCLOSURE                       R28 K67 [PROTO_12]
      235 CAPTURE                          VAL R4
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R13
      240 SETTABLEKS                       R28 R27 K56 ["story"]
      242 DUPTABLE                         R28 K57 [{"name", "story"}]
      243 LOADK                            R29 K68 ["Leading"]
      244 SETTABLEKS                       R29 R28 K55 ["name"]
      246 DUPCLOSURE                       R29 K69 [PROTO_14]
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R19
      252 CAPTURE                          VAL R13
      253 SETTABLEKS                       R29 R28 K56 ["story"]
      255 DUPTABLE                         R29 K57 [{"name", "story"}]
      256 LOADK                            R30 K70 ["Trailing"]
      257 SETTABLEKS                       R30 R29 K55 ["name"]
      259 DUPCLOSURE                       R30 K71 [PROTO_16]
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R18
      264 CAPTURE                          VAL R19
      265 CAPTURE                          VAL R13
      266 SETTABLEKS                       R30 R29 K56 ["story"]
      268 DUPTABLE                         R30 K57 [{"name", "story"}]
      269 LOADK                            R31 K28 ["AvatarGroup"]
      270 SETTABLEKS                       R31 R30 K55 ["name"]
      272 DUPCLOSURE                       R31 K72 [PROTO_17]
      273 CAPTURE                          VAL R4
      274 CAPTURE                          VAL R13
      275 CAPTURE                          VAL R6
      276 SETTABLEKS                       R31 R30 K56 ["story"]
      278 DUPTABLE                         R31 K57 [{"name", "story"}]
      279 LOADK                            R32 K73 ["AvatarGroup on custom background"]
      280 SETTABLEKS                       R32 R31 K55 ["name"]
      282 DUPCLOSURE                       R32 K74 [PROTO_18]
      283 CAPTURE                          VAL R12
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R11
      286 CAPTURE                          VAL R7
      287 CAPTURE                          VAL R13
      288 CAPTURE                          VAL R6
      289 SETTABLEKS                       R32 R31 K56 ["story"]
      291 SETLIST                          R22 R23 9 [1]
      293 SETTABLEKS                       R22 R21 K52 ["stories"]
      295 DUPTABLE                         R22 K81 [{"leading", "trailing", "size", "variant", "text", "isChecked", "isDisabled"}]
      296 NEWTABLE                         R23 0 5
      298 GETTABLEKS                       R24 R14 K82 ["ThreeBarsHorizontalNarrowing"]
      300 GETTABLEKS                       R25 R14 K83 ["Robux"]
      302 GETTABLEKS                       R26 R14 K84 ["ChevronSmallRight"]
      304 MOVE                             R27 R17
      305 LOADK                            R28 K85 [""]
      306 SETLIST                          R23 R24 5 [1]
      308 SETTABLEKS                       R23 R22 K75 ["leading"]
      310 NEWTABLE                         R23 0 6
      312 GETTABLEKS                       R24 R14 K86 ["ChevronSmallDown"]
      314 GETTABLEKS                       R25 R14 K37 ["CircleX"]
      316 GETTABLEKS                       R26 R14 K87 ["PlusSmall"]
      318 GETTABLEKS                       R27 R14 K88 ["X"]
      320 MOVE                             R28 R17
      321 LOADK                            R29 K85 [""]
      322 SETLIST                          R23 R24 6 [1]
      324 SETTABLEKS                       R23 R22 K76 ["trailing"]
      326 GETTABLEKS                       R23 R3 K89 ["values"]
      328 MOVE                             R24 R8
      329 CALL                             R23 1 1
      330 SETTABLEKS                       R23 R22 K77 ["size"]
      332 GETTABLEKS                       R23 R3 K89 ["values"]
      334 MOVE                             R24 R9
      335 CALL                             R23 1 1
      336 SETTABLEKS                       R23 R22 K78 ["variant"]
      338 LOADK                            R23 K90 ["Filter"]
      339 SETTABLEKS                       R23 R22 K39 ["text"]
      341 LOADB                            R23 0
      342 SETTABLEKS                       R23 R22 K79 ["isChecked"]
      344 LOADB                            R23 0
      345 SETTABLEKS                       R23 R22 K80 ["isDisabled"]
      347 SETTABLEKS                       R22 R21 K53 ["controls"]
      349 RETURN                           R21 1
