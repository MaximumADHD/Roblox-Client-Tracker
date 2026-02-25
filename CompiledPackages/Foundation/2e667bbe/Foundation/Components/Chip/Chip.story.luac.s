PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"leading", "trailing", "text", "onActivated", "isChecked", "size", "isDisabled"}]
        5 GETTABLEKS                       R6 R0 K1 ["leading"]
        7 LENGTH                           R5 R6
        8 LOADN                            R6 0
        9 JUMPIFLT                         R6 R5 ; [+9]
       11 GETTABLEKS                       R6 R0 K1 ["leading"]
       13 FASTCALL1                        TYPE R6 ; [+2]
       14 GETIMPORT                        R5 K10 [type]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+4]
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
       34 GETIMPORT                        R5 K10 [type]
       36 CALL                             R5 1 1
       37 JUMPIFNOTEQKS                    R5 K11 ["table"] ; [+4]
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
       61 GETTABLEKS                       R4 R0 K7 ["isDisabled"]
       63 SETTABLEKS                       R4 R3 K7 ["isDisabled"]
       65 CALL                             R1 2 -1
       66 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R3 K1 ["migrateIconNames"]
        5 SETTABLEKS                       R2 R1 K2 ["FoundationMigrateIconNames"]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K11 [{"text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
        9 GETTABLEKS                       R4 R0 K0 ["controls"]
       11 GETTABLEKS                       R3 R4 K3 ["text"]
       13 SETTABLEKS                       R3 R2 K3 ["text"]
       15 DUPCLOSURE                       R3 K12 [PROTO_1]
       16 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       18 GETTABLEKS                       R4 R0 K0 ["controls"]
       20 GETTABLEKS                       R3 R4 K5 ["leading"]
       22 SETTABLEKS                       R3 R2 K5 ["leading"]
       24 GETTABLEKS                       R4 R0 K0 ["controls"]
       26 GETTABLEKS                       R3 R4 K6 ["trailing"]
       28 SETTABLEKS                       R3 R2 K6 ["trailing"]
       30 GETTABLEKS                       R4 R0 K0 ["controls"]
       32 GETTABLEKS                       R3 R4 K7 ["isChecked"]
       34 SETTABLEKS                       R3 R2 K7 ["isChecked"]
       36 GETTABLEKS                       R4 R0 K0 ["controls"]
       38 GETTABLEKS                       R3 R4 K8 ["isDisabled"]
       40 SETTABLEKS                       R3 R2 K8 ["isDisabled"]
       42 GETTABLEKS                       R4 R0 K0 ["controls"]
       44 GETTABLEKS                       R3 R4 K9 ["size"]
       46 SETTABLEKS                       R3 R2 K9 ["size"]
       48 GETTABLEKS                       R4 R0 K0 ["controls"]
       50 GETTABLEKS                       R3 R4 K10 ["chipDesignUpdate"]
       52 SETTABLEKS                       R3 R2 K10 ["chipDesignUpdate"]
       54 CALL                             R1 1 -1
       55 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K10 [{"key", "text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
        5 SETTABLEKS                       R1 R4 K1 ["key"]
        7 GETUPVAL                         R7 2
        8 GETTABLEKS                       R6 R7 K11 ["controls"]
       10 GETTABLEKS                       R5 R6 K2 ["text"]
       12 SETTABLEKS                       R5 R4 K2 ["text"]
       14 DUPCLOSURE                       R5 K12 [PROTO_3]
       15 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K11 ["controls"]
       20 GETTABLEKS                       R5 R6 K4 ["leading"]
       22 SETTABLEKS                       R5 R4 K4 ["leading"]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K11 ["controls"]
       27 GETTABLEKS                       R5 R6 K5 ["trailing"]
       29 SETTABLEKS                       R5 R4 K5 ["trailing"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K11 ["controls"]
       34 GETTABLEKS                       R5 R6 K6 ["isChecked"]
       36 SETTABLEKS                       R5 R4 K6 ["isChecked"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K11 ["controls"]
       41 GETTABLEKS                       R5 R6 K7 ["isDisabled"]
       43 SETTABLEKS                       R5 R4 K7 ["isDisabled"]
       45 SETTABLEKS                       R0 R4 K8 ["size"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R6 R7 K11 ["controls"]
       50 GETTABLEKS                       R5 R6 K9 ["chipDesignUpdate"]
       52 SETTABLEKS                       R5 R4 K9 ["chipDesignUpdate"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["auto-xy row gap-xlarge"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K4 ["map"]
       11 GETUPVAL                         R5 3
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 CALL                             R4 2 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
        5 GETTABLEKS                       R5 R0 K9 ["controls"]
        7 GETTABLEKS                       R4 R5 K1 ["text"]
        9 SETTABLEKS                       R4 R3 K1 ["text"]
       11 DUPCLOSURE                       R4 K10 [PROTO_6]
       12 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       14 DUPTABLE                         R4 K13 [{"type", "props"}]
       15 LOADK                            R5 K14 ["AvatarGroup"]
       16 SETTABLEKS                       R5 R4 K11 ["type"]
       18 DUPTABLE                         R5 K17 [{"avatars", "type", "max"}]
       19 NEWTABLE                         R6 0 4
       21 LOADK                            R7 K18 [24813339]
       22 LOADK                            R8 K19 [24813338]
       23 LOADK                            R9 K20 [24813337]
       24 LOADK                            R10 K21 [24813336]
       25 SETLIST                          R6 R7 4 [1]
       27 SETTABLEKS                       R6 R5 K15 ["avatars"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R6 R7 K22 ["Stacked"]
       32 SETTABLEKS                       R6 R5 K11 ["type"]
       34 LOADN                            R6 3
       35 SETTABLEKS                       R6 R5 K16 ["max"]
       37 SETTABLEKS                       R5 R4 K12 ["props"]
       39 SETTABLEKS                       R4 R3 K3 ["leading"]
       41 GETTABLEKS                       R5 R0 K9 ["controls"]
       43 GETTABLEKS                       R4 R5 K4 ["isChecked"]
       45 SETTABLEKS                       R4 R3 K4 ["isChecked"]
       47 GETTABLEKS                       R5 R0 K9 ["controls"]
       49 GETTABLEKS                       R4 R5 K5 ["isDisabled"]
       51 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       53 GETTABLEKS                       R5 R0 K9 ["controls"]
       55 GETTABLEKS                       R4 R5 K6 ["size"]
       57 SETTABLEKS                       R4 R3 K6 ["size"]
       59 GETTABLEKS                       R5 R0 K9 ["controls"]
       61 GETTABLEKS                       R4 R5 K7 ["chipDesignUpdate"]
       63 SETTABLEKS                       R4 R3 K7 ["chipDesignUpdate"]
       65 CALL                             R1 2 -1
       66 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K2 [{"tag"}]
        7 LOADK                            R5 K3 ["bg-surface-300 auto-xy padding-large"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K0 ["createElement"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K4 ["Provider"]
       16 DUPTABLE                         R7 K6 [{"value"}]
       17 GETTABLEKS                       R10 R1 K7 ["Color"]
       19 GETTABLEKS                       R9 R10 K8 ["Surface"]
       21 GETTABLEKS                       R8 R9 K9 ["Surface_300"]
       23 SETTABLEKS                       R8 R7 K5 ["value"]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R8 R9 K0 ["createElement"]
       28 GETUPVAL                         R9 4
       29 DUPTABLE                         R10 K17 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
       30 GETTABLEKS                       R12 R0 K18 ["controls"]
       32 GETTABLEKS                       R11 R12 K10 ["text"]
       34 SETTABLEKS                       R11 R10 K10 ["text"]
       36 DUPCLOSURE                       R11 K19 [PROTO_8]
       37 SETTABLEKS                       R11 R10 K11 ["onActivated"]
       39 DUPTABLE                         R11 K22 [{"type", "props"}]
       40 LOADK                            R12 K23 ["AvatarGroup"]
       41 SETTABLEKS                       R12 R11 K20 ["type"]
       43 DUPTABLE                         R12 K26 [{"avatars", "type", "max"}]
       44 NEWTABLE                         R13 0 4
       46 LOADK                            R14 K27 [24813339]
       47 LOADK                            R15 K28 [24813338]
       48 LOADK                            R16 K29 [24813337]
       49 LOADK                            R17 K30 [24813336]
       50 SETLIST                          R13 R14 4 [1]
       52 SETTABLEKS                       R13 R12 K24 ["avatars"]
       54 GETUPVAL                         R14 5
       55 GETTABLEKS                       R13 R14 K31 ["Stacked"]
       57 SETTABLEKS                       R13 R12 K20 ["type"]
       59 LOADN                            R13 3
       60 SETTABLEKS                       R13 R12 K25 ["max"]
       62 SETTABLEKS                       R12 R11 K21 ["props"]
       64 SETTABLEKS                       R11 R10 K12 ["leading"]
       66 GETTABLEKS                       R12 R0 K18 ["controls"]
       68 GETTABLEKS                       R11 R12 K13 ["isChecked"]
       70 SETTABLEKS                       R11 R10 K13 ["isChecked"]
       72 GETTABLEKS                       R12 R0 K18 ["controls"]
       74 GETTABLEKS                       R11 R12 K14 ["isDisabled"]
       76 SETTABLEKS                       R11 R10 K14 ["isDisabled"]
       78 GETTABLEKS                       R12 R0 K18 ["controls"]
       80 GETTABLEKS                       R11 R12 K15 ["size"]
       82 SETTABLEKS                       R11 R10 K15 ["size"]
       84 GETTABLEKS                       R12 R0 K18 ["controls"]
       86 GETTABLEKS                       R11 R12 K16 ["chipDesignUpdate"]
       88 SETTABLEKS                       R11 R10 K16 ["chipDesignUpdate"]
       90 CALL                             R8 2 -1
       91 CALL                             R5 -1 -1
       92 CALL                             R2 -1 -1
       93 RETURN                           R2 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Chip activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["auto-xy row gap-xlarge"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K9 [{"icon", "text", "onActivated", "isChecked", "isDisabled"}]
       13 LOADK                            R7 K10 ["icons/common/robux"]
       14 SETTABLEKS                       R7 R6 K4 ["icon"]
       16 GETTABLEKS                       R8 R0 K11 ["controls"]
       18 GETTABLEKS                       R7 R8 K5 ["text"]
       20 SETTABLEKS                       R7 R6 K5 ["text"]
       22 DUPCLOSURE                       R7 K12 [PROTO_10]
       23 SETTABLEKS                       R7 R6 K6 ["onActivated"]
       25 GETTABLEKS                       R8 R0 K11 ["controls"]
       27 GETTABLEKS                       R7 R8 K7 ["isChecked"]
       29 SETTABLEKS                       R7 R6 K7 ["isChecked"]
       31 GETTABLEKS                       R8 R0 K11 ["controls"]
       33 GETTABLEKS                       R7 R8 K8 ["isDisabled"]
       35 SETTABLEKS                       R7 R6 K8 ["isDisabled"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K0 ["createElement"]
       41 GETUPVAL                         R6 2
       42 DUPTABLE                         R7 K9 [{"icon", "text", "onActivated", "isChecked", "isDisabled"}]
       43 DUPTABLE                         R8 K15 [{"name", "position"}]
       44 LOADK                            R9 K10 ["icons/common/robux"]
       45 SETTABLEKS                       R9 R8 K13 ["name"]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R9 R10 K16 ["Right"]
       50 SETTABLEKS                       R9 R8 K14 ["position"]
       52 SETTABLEKS                       R8 R7 K4 ["icon"]
       54 GETTABLEKS                       R9 R0 K11 ["controls"]
       56 GETTABLEKS                       R8 R9 K5 ["text"]
       58 SETTABLEKS                       R8 R7 K5 ["text"]
       60 DUPCLOSURE                       R8 K17 [PROTO_11]
       61 SETTABLEKS                       R8 R7 K6 ["onActivated"]
       63 GETTABLEKS                       R9 R0 K11 ["controls"]
       65 GETTABLEKS                       R8 R9 K7 ["isChecked"]
       67 SETTABLEKS                       R8 R7 K7 ["isChecked"]
       69 GETTABLEKS                       R9 R0 K11 ["controls"]
       71 GETTABLEKS                       R8 R9 K8 ["isDisabled"]
       73 SETTABLEKS                       R8 R7 K8 ["isDisabled"]
       75 CALL                             R5 2 -1
       76 CALL                             R1 -1 -1
       77 RETURN                           R1 -1

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
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["ChipSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["IconPosition"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K14 ["Components"]
       44 GETTABLEKS                       R8 R9 K15 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R10 K16 ["AvatarGroupType"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R12 R0 K17 ["Providers"]
       58 GETTABLEKS                       R11 R12 K18 ["Style"]
       60 GETTABLEKS                       R10 R11 K19 ["BackgroundStyleContext"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Providers"]
       67 GETTABLEKS                       R12 R13 K18 ["Style"]
       69 GETTABLEKS                       R11 R12 K20 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R14 R0 K14 ["Components"]
       76 GETTABLEKS                       R13 R14 K21 ["Chip"]
       78 GETTABLEKS                       R12 R13 K21 ["Chip"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K22 [PROTO_0]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R11
       84 DUPTABLE                         R13 K26 [{"summary", "stories", "controls"}]
       85 LOADK                            R14 K21 ["Chip"]
       86 SETTABLEKS                       R14 R13 K23 ["summary"]
       88 NEWTABLE                         R14 0 5
       90 DUPTABLE                         R15 K29 [{"name", "story"}]
       91 LOADK                            R16 K30 ["Basic"]
       92 SETTABLEKS                       R16 R15 K27 ["name"]
       94 DUPCLOSURE                       R16 K31 [PROTO_2]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R12
       97 SETTABLEKS                       R16 R15 K28 ["story"]
       99 DUPTABLE                         R16 K29 [{"name", "story"}]
      100 LOADK                            R17 K32 ["Sizes"]
      101 SETTABLEKS                       R17 R16 K27 ["name"]
      103 DUPCLOSURE                       R17 K33 [PROTO_5]
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R12
      109 SETTABLEKS                       R17 R16 K28 ["story"]
      111 DUPTABLE                         R17 K29 [{"name", "story"}]
      112 LOADK                            R18 K34 ["AvatarGroup"]
      113 SETTABLEKS                       R18 R17 K27 ["name"]
      115 DUPCLOSURE                       R18 K35 [PROTO_7]
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R8
      119 SETTABLEKS                       R18 R17 K28 ["story"]
      121 DUPTABLE                         R18 K29 [{"name", "story"}]
      122 LOADK                            R19 K36 ["AvatarGroup on custom background"]
      123 SETTABLEKS                       R19 R18 K27 ["name"]
      125 DUPCLOSURE                       R19 K37 [PROTO_9]
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R8
      132 SETTABLEKS                       R19 R18 K28 ["story"]
      134 DUPTABLE                         R19 K29 [{"name", "story"}]
      135 LOADK                            R20 K38 ["Back compatibility for chipDesignUpdate"]
      136 SETTABLEKS                       R20 R19 K27 ["name"]
      138 DUPCLOSURE                       R20 K39 [PROTO_12]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R6
      143 SETTABLEKS                       R20 R19 K28 ["story"]
      145 SETLIST                          R14 R15 5 [1]
      147 SETTABLEKS                       R14 R13 K24 ["stories"]
      149 DUPTABLE                         R14 K47 [{"leading", "trailing", "size", "text", "isChecked", "isDisabled", "migrateIconNames"}]
      150 NEWTABLE                         R15 0 6
      152 LOADK                            R16 K48 ["robux"]
      153 LOADK                            R17 K49 ["icons/actions/filter"]
      154 LOADK                            R18 K50 ["icons/common/robux"]
      155 LOADK                            R19 K51 ["icons/common/play"]
      156 DUPTABLE                         R20 K55 [{"iconName", "onActivated", "isCircular"}]
      157 LOADK                            R21 K56 ["icons/actions/selectOn"]
      158 SETTABLEKS                       R21 R20 K52 ["iconName"]
      160 DUPCLOSURE                       R21 K57 [PROTO_13]
      161 SETTABLEKS                       R21 R20 K53 ["onActivated"]
      163 LOADB                            R21 1
      164 SETTABLEKS                       R21 R20 K54 ["isCircular"]
      166 LOADK                            R21 K58 [""]
      167 SETLIST                          R15 R16 6 [1]
      169 SETTABLEKS                       R15 R14 K40 ["leading"]
      171 NEWTABLE                         R15 0 8
      173 LOADK                            R16 K59 ["three-bars-horizontal-narrowing"]
      174 LOADK                            R17 K49 ["icons/actions/filter"]
      175 LOADK                            R18 K50 ["icons/common/robux"]
      176 LOADK                            R19 K51 ["icons/common/play"]
      177 LOADK                            R20 K60 ["icons/status/success_small"]
      178 LOADK                            R21 K61 ["icons/actions/truncationExpand_small"]
      179 DUPTABLE                         R22 K55 [{"iconName", "onActivated", "isCircular"}]
      180 LOADK                            R23 K56 ["icons/actions/selectOn"]
      181 SETTABLEKS                       R23 R22 K52 ["iconName"]
      183 DUPCLOSURE                       R23 K62 [PROTO_14]
      184 SETTABLEKS                       R23 R22 K53 ["onActivated"]
      186 LOADB                            R23 1
      187 SETTABLEKS                       R23 R22 K54 ["isCircular"]
      189 LOADK                            R23 K58 [""]
      190 SETLIST                          R15 R16 8 [1]
      192 SETTABLEKS                       R15 R14 K41 ["trailing"]
      194 GETTABLEKS                       R15 R3 K63 ["values"]
      196 MOVE                             R16 R5
      197 CALL                             R15 1 1
      198 SETTABLEKS                       R15 R14 K42 ["size"]
      200 LOADK                            R15 K64 ["Filter"]
      201 SETTABLEKS                       R15 R14 K43 ["text"]
      203 LOADB                            R15 0
      204 SETTABLEKS                       R15 R14 K44 ["isChecked"]
      206 LOADB                            R15 0
      207 SETTABLEKS                       R15 R14 K45 ["isDisabled"]
      209 GETTABLEKS                       R15 R4 K65 ["FoundationMigrateIconNames"]
      211 SETTABLEKS                       R15 R14 K46 ["migrateIconNames"]
      213 SETTABLEKS                       R14 R13 K25 ["controls"]
      215 RETURN                           R13 1
