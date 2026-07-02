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
        4 DUPTABLE                         R3 K4 [{["tag"] = "col gap-medium auto-xy", ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
        9 DUPTABLE                         R4 K7 [{"Caption", "Content"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K11 [{["Text"], ["tag"] = "text-body-small content-default auto-xy", ["LayoutOrder"] = 1}]
       15 GETTABLEKS                       R8 R0 K12 ["caption"]
       17 SETTABLEKS                       R8 R7 K8 ["Text"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K5 ["Caption"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 1
       26 DUPTABLE                         R7 K14 [{["tag"], ["LayoutOrder"] = 2}]
       27 GETTABLEKS                       R8 R0 K15 ["contentTag"]
       29 SETTABLEKS                       R8 R7 K1 ["tag"]
       31 GETTABLEKS                       R8 R0 K16 ["children"]
       33 CALL                             R5 3 1
       34 SETTABLEKS                       R5 R4 K6 ["Content"]
       36 CALL                             R1 3 -1
       37 RETURN                           R1 -1

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
        4 DUPTABLE                         R4 K4 [{["caption"], ["contentTag"] = "row gap-small auto-xy"}]
        5 SETTABLEKS                       R1 R4 K1 ["caption"]
        7 DUPTABLE                         R5 K9 [{"Plain", "LeadingIcon", "TrailingIcon", "AvatarAndClose"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K16 [{["text"] = "Chip", ["onActivated"], ["size"], ["LayoutOrder"] = 1}]
       13 LOADK                            R10 K5 ["Plain"]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R10
       16 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       18 SETTABLEKS                       R0 R8 K13 ["size"]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K5 ["Plain"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K0 ["createElement"]
       26 GETUPVAL                         R7 2
       27 DUPTABLE                         R8 K19 [{["text"] = "Chip", ["onActivated"], ["size"], ["leading"], ["LayoutOrder"] = 2}]
       28 LOADK                            R10 K6 ["LeadingIcon"]
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R10
       31 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       33 SETTABLEKS                       R0 R8 K13 ["size"]
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K20 ["DiamondSimplified"]
       38 SETTABLEKS                       R9 R8 K17 ["leading"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K6 ["LeadingIcon"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K0 ["createElement"]
       46 GETUPVAL                         R7 2
       47 DUPTABLE                         R8 K23 [{["text"] = "Chip", ["onActivated"], ["size"], ["trailing"], ["LayoutOrder"] = 3}]
       48 LOADK                            R10 K7 ["TrailingIcon"]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          VAL R10
       51 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       53 SETTABLEKS                       R0 R8 K13 ["size"]
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R9 R9 K24 ["ChevronSmallDown"]
       58 SETTABLEKS                       R9 R8 K21 ["trailing"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K7 ["TrailingIcon"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K0 ["createElement"]
       66 GETUPVAL                         R7 2
       67 DUPTABLE                         R8 K26 [{["text"] = "Chip", ["onActivated"], ["size"], ["leading"], ["trailing"], ["LayoutOrder"] = 4}]
       68 LOADK                            R10 K8 ["AvatarAndClose"]
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          VAL R10
       71 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       73 SETTABLEKS                       R0 R8 K13 ["size"]
       75 GETUPVAL                         R9 4
       76 SETTABLEKS                       R9 R8 K17 ["leading"]
       78 GETUPVAL                         R9 5
       79 SETTABLEKS                       R9 R8 K21 ["trailing"]
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R5 K8 ["AvatarAndClose"]
       84 CALL                             R2 3 -1
       85 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "col gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 GETUPVAL                         R4 3
        9 DUPCLOSURE                       R5 K5 [PROTO_5]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CALL                             R3 2 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{["caption"], ["contentTag"] = "auto-xy"}]
        5 SETTABLEKS                       R1 R4 K1 ["caption"]
        7 DUPTABLE                         R5 K6 [{"Chip"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K10 [{"text", "onActivated", "variant"}]
       13 SETTABLEKS                       R1 R8 K7 ["text"]
       15 NEWCLOSURE                       R9 P0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R9 R8 K8 ["onActivated"]
       19 SETTABLEKS                       R0 R8 K9 ["variant"]
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K5 ["Chip"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 GETUPVAL                         R4 3
        9 DUPCLOSURE                       R5 K5 [PROTO_7]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R3 2 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["caption"], ["contentTag"] = "auto-xy", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
       11 DUPTABLE                         R5 K7 [{"Chip"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K11 [{"text", "onActivated", "isChecked"}]
       17 GETTABLEKS                       R9 R0 K8 ["text"]
       19 SETTABLEKS                       R9 R8 K8 ["text"]
       21 GETTABLEKS                       R10 R0 K8 ["text"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R10
       25 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       27 GETTABLEKS                       R9 R0 K10 ["isChecked"]
       29 SETTABLEKS                       R9 R8 K10 ["isChecked"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K6 ["Chip"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 NEWTABLE                         R4 0 2
       10 DUPTABLE                         R5 K11 [{["caption"] = "False", ["text"] = "Unchecked", ["isChecked"] = False}]
       11 DUPTABLE                         R6 K15 [{["caption"] = "True", ["text"] = "Checked", ["isChecked"] = True}]
       12 SETLIST                          R4 R5 2 [1]
       14 DUPCLOSURE                       R5 K16 [PROTO_9]
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CALL                             R3 2 -1
       19 CALL                             R0 -1 -1
       20 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["caption"], ["contentTag"] = "auto-xy", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
       11 DUPTABLE                         R5 K7 [{"Chip"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K11 [{"text", "onActivated", "isDisabled"}]
       17 GETTABLEKS                       R9 R0 K8 ["text"]
       19 SETTABLEKS                       R9 R8 K8 ["text"]
       21 GETTABLEKS                       R10 R0 K8 ["text"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R10
       25 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       27 GETTABLEKS                       R9 R0 K10 ["isDisabled"]
       29 SETTABLEKS                       R9 R8 K10 ["isDisabled"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K6 ["Chip"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 NEWTABLE                         R4 0 2
       10 DUPTABLE                         R5 K11 [{["caption"] = "False", ["text"] = "Enabled", ["isDisabled"] = False}]
       11 DUPTABLE                         R6 K15 [{["caption"] = "True", ["text"] = "Disabled", ["isDisabled"] = True}]
       12 SETLIST                          R4 R5 2 [1]
       14 DUPCLOSURE                       R5 K16 [PROTO_11]
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CALL                             R3 2 -1
       19 CALL                             R0 -1 -1
       20 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["caption"], ["contentTag"] = "auto-xy", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
       11 DUPTABLE                         R5 K7 [{"Chip"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K11 [{"text", "onActivated", "leading"}]
       17 GETTABLEKS                       R9 R0 K8 ["text"]
       19 SETTABLEKS                       R9 R8 K8 ["text"]
       21 GETTABLEKS                       R10 R0 K8 ["text"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R10
       25 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       27 GETTABLEKS                       R9 R0 K12 ["value"]
       29 SETTABLEKS                       R9 R8 K10 ["leading"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K6 ["Chip"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 GETUPVAL                         R4 3
        9 DUPCLOSURE                       R5 K5 [PROTO_13]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R3 2 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["caption"], ["contentTag"] = "auto-xy", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K1 ["caption"]
        7 SETTABLEKS                       R5 R4 K1 ["caption"]
        9 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
       11 DUPTABLE                         R5 K7 [{"Chip"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K11 [{"text", "onActivated", "trailing"}]
       17 GETTABLEKS                       R9 R0 K8 ["text"]
       19 SETTABLEKS                       R9 R8 K8 ["text"]
       21 GETTABLEKS                       R10 R0 K8 ["text"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R10
       25 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       27 GETTABLEKS                       R9 R0 K12 ["value"]
       29 SETTABLEKS                       R9 R8 K10 ["trailing"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K6 ["Chip"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 GETUPVAL                         R4 3
        9 DUPCLOSURE                       R5 K5 [PROTO_15]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R3 2 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1

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
       16 DUPTABLE                         R4 K13 [{["type"] = "AvatarGroup", ["props"]}]
       17 DUPTABLE                         R5 K17 [{["avatars"], ["type"], ["max"] = 3}]
       18 NEWTABLE                         R6 0 4
       20 LOADK                            R7 K18 [24813339]
       21 LOADK                            R8 K19 [24813338]
       22 LOADK                            R9 K20 [24813337]
       23 LOADK                            R10 K21 [24813336]
       24 SETLIST                          R6 R7 4 [1]
       26 SETTABLEKS                       R6 R5 K14 ["avatars"]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K22 ["Stacked"]
       31 SETTABLEKS                       R6 R5 K11 ["type"]
       33 SETTABLEKS                       R5 R4 K12 ["props"]
       35 SETTABLEKS                       R4 R3 K3 ["leading"]
       37 GETTABLEKS                       R4 R0 K9 ["controls"]
       39 GETTABLEKS                       R4 R4 K4 ["isChecked"]
       41 SETTABLEKS                       R4 R3 K4 ["isChecked"]
       43 GETTABLEKS                       R4 R0 K9 ["controls"]
       45 GETTABLEKS                       R4 R4 K5 ["isDisabled"]
       47 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       49 GETTABLEKS                       R4 R0 K9 ["controls"]
       51 GETTABLEKS                       R4 R4 K6 ["size"]
       53 SETTABLEKS                       R4 R3 K6 ["size"]
       55 GETTABLEKS                       R4 R0 K9 ["controls"]
       57 GETTABLEKS                       R4 R4 K7 ["variant"]
       59 SETTABLEKS                       R4 R3 K7 ["variant"]
       61 CALL                             R1 2 -1
       62 RETURN                           R1 -1

PROTO_18:
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
       33 LOADK                            R12 K19 ["AvatarGroup on custom background"]
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          VAL R12
       36 SETTABLEKS                       R11 R10 K11 ["onActivated"]
       38 DUPTABLE                         R11 K23 [{["type"] = "AvatarGroup", ["props"]}]
       39 DUPTABLE                         R12 K27 [{["avatars"], ["type"], ["max"] = 3}]
       40 NEWTABLE                         R13 0 4
       42 LOADK                            R14 K28 [24813339]
       43 LOADK                            R15 K29 [24813338]
       44 LOADK                            R16 K30 [24813337]
       45 LOADK                            R17 K31 [24813336]
       46 SETLIST                          R13 R14 4 [1]
       48 SETTABLEKS                       R13 R12 K24 ["avatars"]
       50 GETUPVAL                         R13 5
       51 GETTABLEKS                       R13 R13 K32 ["Stacked"]
       53 SETTABLEKS                       R13 R12 K20 ["type"]
       55 SETTABLEKS                       R12 R11 K22 ["props"]
       57 SETTABLEKS                       R11 R10 K12 ["leading"]
       59 GETTABLEKS                       R11 R0 K18 ["controls"]
       61 GETTABLEKS                       R11 R11 K13 ["isChecked"]
       63 SETTABLEKS                       R11 R10 K13 ["isChecked"]
       65 GETTABLEKS                       R11 R0 K18 ["controls"]
       67 GETTABLEKS                       R11 R11 K14 ["isDisabled"]
       69 SETTABLEKS                       R11 R10 K14 ["isDisabled"]
       71 GETTABLEKS                       R11 R0 K18 ["controls"]
       73 GETTABLEKS                       R11 R11 K15 ["size"]
       75 SETTABLEKS                       R11 R10 K15 ["size"]
       77 GETTABLEKS                       R11 R0 K18 ["controls"]
       79 GETTABLEKS                       R11 R11 K16 ["variant"]
       81 SETTABLEKS                       R11 R10 K16 ["variant"]
       83 CALL                             R8 2 -1
       84 CALL                             R5 -1 -1
       85 CALL                             R2 -1 -1
       86 RETURN                           R2 -1

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
       98 DUPTABLE                         R16 K28 [{["type"] = "AvatarGroup", ["props"]}]
       99 DUPTABLE                         R17 K32 [{["avatars"], ["type"], ["max"] = 1}]
      100 NEWTABLE                         R18 0 1
      102 LOADK                            R19 K33 [24813339]
      103 SETLIST                          R18 R19 1 [1]
      105 SETTABLEKS                       R18 R17 K29 ["avatars"]
      107 GETTABLEKS                       R18 R6 K34 ["Stacked"]
      109 SETTABLEKS                       R18 R17 K25 ["type"]
      111 SETTABLEKS                       R17 R16 K27 ["props"]
      113 DUPTABLE                         R17 K38 [{["iconName"], ["isCircular"] = True}]
      114 GETTABLEKS                       R18 R14 K39 ["CircleX"]
      116 SETTABLEKS                       R18 R17 K35 ["iconName"]
      118 NEWTABLE                         R18 0 4
      120 DUPTABLE                         R19 K43 [{["caption"] = "None", ["text"] = "None"}]
      121 DUPTABLE                         R20 K45 [{["caption"] = "Icon", ["text"] = "Icon", ["value"]}]
      122 GETTABLEKS                       R21 R14 K46 ["DiamondSimplified"]
      124 SETTABLEKS                       R21 R20 K44 ["value"]
      126 DUPTABLE                         R21 K49 [{["caption"] = "AvatarAccessory", ["text"] = "Avatar", ["value"]}]
      127 SETTABLEKS                       R16 R21 K44 ["value"]
      129 DUPTABLE                         R22 K52 [{["caption"] = "CircularAccessory", ["text"] = "Circular", ["value"]}]
      130 SETTABLEKS                       R17 R22 K44 ["value"]
      132 SETLIST                          R18 R19 4 [1]
      134 DUPCLOSURE                       R19 K53 [PROTO_2]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R10
      138 DUPCLOSURE                       R20 K54 [PROTO_3]
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R13
      141 DUPTABLE                         R21 K58 [{["summary"] = "Chip", ["stories"], ["controls"]}]
      142 NEWTABLE                         R22 0 9
      144 DUPTABLE                         R23 K62 [{["name"] = "Playground", ["story"]}]
      145 DUPCLOSURE                       R24 K63 [PROTO_4]
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R20
      148 SETTABLEKS                       R24 R23 K61 ["story"]
      150 DUPTABLE                         R24 K65 [{["name"] = "Sizes", ["story"]}]
      151 DUPCLOSURE                       R25 K66 [PROTO_6]
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R17
      161 SETTABLEKS                       R25 R24 K61 ["story"]
      163 DUPTABLE                         R25 K68 [{["name"] = "Variants", ["story"]}]
      164 DUPCLOSURE                       R26 K69 [PROTO_8]
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R13
      171 SETTABLEKS                       R26 R25 K61 ["story"]
      173 DUPTABLE                         R26 K71 [{["name"] = "IsChecked", ["story"]}]
      174 DUPCLOSURE                       R27 K72 [PROTO_10]
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R13
      180 SETTABLEKS                       R27 R26 K61 ["story"]
      182 DUPTABLE                         R27 K74 [{["name"] = "IsDisabled", ["story"]}]
      183 DUPCLOSURE                       R28 K75 [PROTO_12]
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R13
      189 SETTABLEKS                       R28 R27 K61 ["story"]
      191 DUPTABLE                         R28 K77 [{["name"] = "Leading", ["story"]}]
      192 DUPCLOSURE                       R29 K78 [PROTO_14]
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R13
      199 SETTABLEKS                       R29 R28 K61 ["story"]
      201 DUPTABLE                         R29 K80 [{["name"] = "Trailing", ["story"]}]
      202 DUPCLOSURE                       R30 K81 [PROTO_16]
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R13
      209 SETTABLEKS                       R30 R29 K61 ["story"]
      211 DUPTABLE                         R30 K82 [{["name"] = "AvatarGroup", ["story"]}]
      212 DUPCLOSURE                       R31 K83 [PROTO_17]
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R6
      216 SETTABLEKS                       R31 R30 K61 ["story"]
      218 DUPTABLE                         R31 K85 [{["name"] = "AvatarGroup on custom background", ["story"]}]
      219 DUPCLOSURE                       R32 K86 [PROTO_18]
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R6
      226 SETTABLEKS                       R32 R31 K61 ["story"]
      228 SETLIST                          R22 R23 9 [1]
      230 SETTABLEKS                       R22 R21 K56 ["stories"]
      232 DUPTABLE                         R22 K95 [{["leading"], ["trailing"], ["size"], ["variant"], ["text"] = "Filter", ["isChecked"] = False, ["isDisabled"] = False}]
      233 NEWTABLE                         R23 0 5
      235 GETTABLEKS                       R24 R14 K96 ["ThreeBarsHorizontalNarrowing"]
      237 GETTABLEKS                       R25 R14 K97 ["Robux"]
      239 GETTABLEKS                       R26 R14 K98 ["ChevronSmallRight"]
      241 MOVE                             R27 R17
      242 LOADK                            R28 K99 [""]
      243 SETLIST                          R23 R24 5 [1]
      245 SETTABLEKS                       R23 R22 K87 ["leading"]
      247 NEWTABLE                         R23 0 6
      249 GETTABLEKS                       R24 R14 K100 ["ChevronSmallDown"]
      251 GETTABLEKS                       R25 R14 K39 ["CircleX"]
      253 GETTABLEKS                       R26 R14 K101 ["PlusSmall"]
      255 GETTABLEKS                       R27 R14 K102 ["X"]
      257 MOVE                             R28 R17
      258 LOADK                            R29 K99 [""]
      259 SETLIST                          R23 R24 6 [1]
      261 SETTABLEKS                       R23 R22 K88 ["trailing"]
      263 GETTABLEKS                       R23 R3 K103 ["values"]
      265 MOVE                             R24 R8
      266 CALL                             R23 1 1
      267 SETTABLEKS                       R23 R22 K89 ["size"]
      269 GETTABLEKS                       R23 R3 K103 ["values"]
      271 MOVE                             R24 R9
      272 CALL                             R23 1 1
      273 SETTABLEKS                       R23 R22 K90 ["variant"]
      275 SETTABLEKS                       R22 R21 K57 ["controls"]
      277 RETURN                           R21 1
