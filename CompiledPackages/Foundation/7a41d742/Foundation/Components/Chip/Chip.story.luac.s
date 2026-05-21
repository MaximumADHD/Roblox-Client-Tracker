PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
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
        1 DUPTABLE                         R2 K8 [{"text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
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
       43 GETTABLEKS                       R3 R3 K7 ["chipDesignUpdate"]
       45 SETTABLEKS                       R3 R2 K7 ["chipDesignUpdate"]
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
        4 DUPTABLE                         R4 K10 [{"key", "text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
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
       50 GETTABLEKS                       R5 R5 K9 ["chipDesignUpdate"]
       52 SETTABLEKS                       R5 R4 K9 ["chipDesignUpdate"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["auto-xy row gap-xlarge"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K4 ["map"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
        5 GETTABLEKS                       R4 R0 K9 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["text"]
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
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K22 ["Stacked"]
       32 SETTABLEKS                       R6 R5 K11 ["type"]
       34 LOADN                            R6 3
       35 SETTABLEKS                       R6 R5 K16 ["max"]
       37 SETTABLEKS                       R5 R4 K12 ["props"]
       39 SETTABLEKS                       R4 R3 K3 ["leading"]
       41 GETTABLEKS                       R4 R0 K9 ["controls"]
       43 GETTABLEKS                       R4 R4 K4 ["isChecked"]
       45 SETTABLEKS                       R4 R3 K4 ["isChecked"]
       47 GETTABLEKS                       R4 R0 K9 ["controls"]
       49 GETTABLEKS                       R4 R4 K5 ["isDisabled"]
       51 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       53 GETTABLEKS                       R4 R0 K9 ["controls"]
       55 GETTABLEKS                       R4 R4 K6 ["size"]
       57 SETTABLEKS                       R4 R3 K6 ["size"]
       59 GETTABLEKS                       R4 R0 K9 ["controls"]
       61 GETTABLEKS                       R4 R4 K7 ["chipDesignUpdate"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K2 [{"tag"}]
        7 LOADK                            R5 K3 ["bg-surface-300 auto-xy padding-large"]
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
       29 DUPTABLE                         R10 K17 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
       30 GETTABLEKS                       R11 R0 K18 ["controls"]
       32 GETTABLEKS                       R11 R11 K10 ["text"]
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
       54 GETUPVAL                         R13 5
       55 GETTABLEKS                       R13 R13 K31 ["Stacked"]
       57 SETTABLEKS                       R13 R12 K20 ["type"]
       59 LOADN                            R13 3
       60 SETTABLEKS                       R13 R12 K25 ["max"]
       62 SETTABLEKS                       R12 R11 K21 ["props"]
       64 SETTABLEKS                       R11 R10 K12 ["leading"]
       66 GETTABLEKS                       R11 R0 K18 ["controls"]
       68 GETTABLEKS                       R11 R11 K13 ["isChecked"]
       70 SETTABLEKS                       R11 R10 K13 ["isChecked"]
       72 GETTABLEKS                       R11 R0 K18 ["controls"]
       74 GETTABLEKS                       R11 R11 K14 ["isDisabled"]
       76 SETTABLEKS                       R11 R10 K14 ["isDisabled"]
       78 GETTABLEKS                       R11 R0 K18 ["controls"]
       80 GETTABLEKS                       R11 R11 K15 ["size"]
       82 SETTABLEKS                       R11 R10 K15 ["size"]
       84 GETTABLEKS                       R11 R0 K18 ["controls"]
       86 GETTABLEKS                       R11 R11 K16 ["chipDesignUpdate"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["auto-xy row gap-xlarge"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K9 [{"icon", "text", "onActivated", "isChecked", "isDisabled"}]
       13 LOADK                            R7 K10 ["icons/common/robux"]
       14 SETTABLEKS                       R7 R6 K4 ["icon"]
       16 GETTABLEKS                       R7 R0 K11 ["controls"]
       18 GETTABLEKS                       R7 R7 K5 ["text"]
       20 SETTABLEKS                       R7 R6 K5 ["text"]
       22 DUPCLOSURE                       R7 K12 [PROTO_10]
       23 SETTABLEKS                       R7 R6 K6 ["onActivated"]
       25 GETTABLEKS                       R7 R0 K11 ["controls"]
       27 GETTABLEKS                       R7 R7 K7 ["isChecked"]
       29 SETTABLEKS                       R7 R6 K7 ["isChecked"]
       31 GETTABLEKS                       R7 R0 K11 ["controls"]
       33 GETTABLEKS                       R7 R7 K8 ["isDisabled"]
       35 SETTABLEKS                       R7 R6 K8 ["isDisabled"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["createElement"]
       41 GETUPVAL                         R6 2
       42 DUPTABLE                         R7 K9 [{"icon", "text", "onActivated", "isChecked", "isDisabled"}]
       43 DUPTABLE                         R8 K15 [{"name", "position"}]
       44 LOADK                            R9 K10 ["icons/common/robux"]
       45 SETTABLEKS                       R9 R8 K13 ["name"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K16 ["Right"]
       50 SETTABLEKS                       R9 R8 K14 ["position"]
       52 SETTABLEKS                       R8 R7 K4 ["icon"]
       54 GETTABLEKS                       R8 R0 K11 ["controls"]
       56 GETTABLEKS                       R8 R8 K5 ["text"]
       58 SETTABLEKS                       R8 R7 K5 ["text"]
       60 DUPCLOSURE                       R8 K17 [PROTO_11]
       61 SETTABLEKS                       R8 R7 K6 ["onActivated"]
       63 GETTABLEKS                       R8 R0 K11 ["controls"]
       65 GETTABLEKS                       R8 R8 K7 ["isChecked"]
       67 SETTABLEKS                       R8 R7 K7 ["isChecked"]
       69 GETTABLEKS                       R8 R0 K11 ["controls"]
       71 GETTABLEKS                       R8 R8 K8 ["isDisabled"]
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
       46 GETTABLEKS                       R8 R8 K15 ["IconPosition"]
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
       77 DUPTABLE                         R12 K24 [{"summary", "stories", "controls"}]
       78 LOADK                            R13 K19 ["Chip"]
       79 SETTABLEKS                       R13 R12 K21 ["summary"]
       81 NEWTABLE                         R13 0 5
       83 DUPTABLE                         R14 K27 [{"name", "story"}]
       84 LOADK                            R15 K28 ["Basic"]
       85 SETTABLEKS                       R15 R14 K25 ["name"]
       87 DUPCLOSURE                       R15 K29 [PROTO_2]
       88 CAPTURE                          VAL R11
       89 SETTABLEKS                       R15 R14 K26 ["story"]
       91 DUPTABLE                         R15 K27 [{"name", "story"}]
       92 LOADK                            R16 K30 ["Sizes"]
       93 SETTABLEKS                       R16 R15 K25 ["name"]
       95 DUPCLOSURE                       R16 K31 [PROTO_5]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R11
      101 SETTABLEKS                       R16 R15 K26 ["story"]
      103 DUPTABLE                         R16 K27 [{"name", "story"}]
      104 LOADK                            R17 K32 ["AvatarGroup"]
      105 SETTABLEKS                       R17 R16 K25 ["name"]
      107 DUPCLOSURE                       R17 K33 [PROTO_7]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R17 R16 K26 ["story"]
      113 DUPTABLE                         R17 K27 [{"name", "story"}]
      114 LOADK                            R18 K34 ["AvatarGroup on custom background"]
      115 SETTABLEKS                       R18 R17 K25 ["name"]
      117 DUPCLOSURE                       R18 K35 [PROTO_9]
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R18 R17 K26 ["story"]
      126 DUPTABLE                         R18 K27 [{"name", "story"}]
      127 LOADK                            R19 K36 ["Back compatibility for chipDesignUpdate"]
      128 SETTABLEKS                       R19 R18 K25 ["name"]
      130 DUPCLOSURE                       R19 K37 [PROTO_12]
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R7
      135 SETTABLEKS                       R19 R18 K26 ["story"]
      137 SETLIST                          R13 R14 5 [1]
      139 SETTABLEKS                       R13 R12 K22 ["stories"]
      141 DUPTABLE                         R13 K44 [{"leading", "trailing", "size", "text", "isChecked", "isDisabled"}]
      142 NEWTABLE                         R14 0 6
      144 LOADK                            R15 K45 ["robux"]
      145 LOADK                            R16 K46 ["icons/actions/filter"]
      146 LOADK                            R17 K47 ["icons/common/robux"]
      147 LOADK                            R18 K48 ["icons/common/play"]
      148 DUPTABLE                         R19 K52 [{"iconName", "onActivated", "isCircular"}]
      149 LOADK                            R20 K53 ["icons/actions/selectOn"]
      150 SETTABLEKS                       R20 R19 K49 ["iconName"]
      152 DUPCLOSURE                       R20 K54 [PROTO_13]
      153 SETTABLEKS                       R20 R19 K50 ["onActivated"]
      155 LOADB                            R20 1
      156 SETTABLEKS                       R20 R19 K51 ["isCircular"]
      158 LOADK                            R20 K55 [""]
      159 SETLIST                          R14 R15 6 [1]
      161 SETTABLEKS                       R14 R13 K38 ["leading"]
      163 NEWTABLE                         R14 0 8
      165 LOADK                            R15 K56 ["three-bars-horizontal-narrowing"]
      166 LOADK                            R16 K46 ["icons/actions/filter"]
      167 LOADK                            R17 K47 ["icons/common/robux"]
      168 LOADK                            R18 K48 ["icons/common/play"]
      169 LOADK                            R19 K57 ["icons/status/success_small"]
      170 LOADK                            R20 K58 ["icons/actions/truncationExpand_small"]
      171 DUPTABLE                         R21 K52 [{"iconName", "onActivated", "isCircular"}]
      172 LOADK                            R22 K53 ["icons/actions/selectOn"]
      173 SETTABLEKS                       R22 R21 K49 ["iconName"]
      175 DUPCLOSURE                       R22 K59 [PROTO_14]
      176 SETTABLEKS                       R22 R21 K50 ["onActivated"]
      178 LOADB                            R22 1
      179 SETTABLEKS                       R22 R21 K51 ["isCircular"]
      181 LOADK                            R22 K55 [""]
      182 SETLIST                          R14 R15 8 [1]
      184 SETTABLEKS                       R14 R13 K39 ["trailing"]
      186 GETTABLEKS                       R14 R2 K60 ["values"]
      188 MOVE                             R15 R6
      189 CALL                             R14 1 1
      190 SETTABLEKS                       R14 R13 K40 ["size"]
      192 LOADK                            R14 K61 ["Filter"]
      193 SETTABLEKS                       R14 R13 K41 ["text"]
      195 LOADB                            R14 0
      196 SETTABLEKS                       R14 R13 K42 ["isChecked"]
      198 LOADB                            R14 0
      199 SETTABLEKS                       R14 R13 K43 ["isDisabled"]
      201 SETTABLEKS                       R13 R12 K23 ["controls"]
      203 RETURN                           R12 1
