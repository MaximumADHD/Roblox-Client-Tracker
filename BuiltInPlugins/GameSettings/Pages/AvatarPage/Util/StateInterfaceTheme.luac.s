PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K0 ["backgroundColor"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["White"]
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R2 R3 K0 ["titledFrame"]
        9 GETTABLEKS                       R1 R2 K1 ["text"]
       11 JUMPIF                           R1 ; [+3]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K2 ["TitleText"]
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R2 R3 K0 ["textBox"]
        9 GETTABLEKS                       R1 R2 K1 ["text"]
       11 JUMPIF                           R1 ; [+3]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K2 ["BodyText"]
       15 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["PlayerChoice"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K1 ["textBox"]
       12 GETTABLEKS                       R1 R2 K2 ["text"]
       14 JUMPIF                           R1 ; [+3]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K3 ["BodyText"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R2 0
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R0
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R2 R3 K1 ["textBox"]
       28 GETTABLEKS                       R1 R2 K2 ["text"]
       30 JUMPIF                           R1 ; [+3]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R1 R2 K4 ["TitleText"]
       34 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["White"]
        3 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getTitleTextColor"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getTitleTextColor"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["White"]
        3 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["DarkGrey2"]
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K1 ["White"]
       11 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["DarkGrey"]
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K1 ["White"]
       11 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K0 ["separator"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["DefaultColor"]
       13 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K0 ["separator"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["DefaultColor"]
       13 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+14]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R2 R3 K0 ["radioButton"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R2 R3 K0 ["radioButton"]
       15 GETTABLEKS                       R1 R2 K1 ["title"]
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["ThemeData"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["ThemeData"]
        5 GETTABLEKS                       R1 R2 K1 ["theme"]
        7 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K0 ["isDarkerTheme"]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["ConstantColors"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R5 R2 K7 ["getBackgroundColor"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          REF R3
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R5 R2 K8 ["getTitleTextColor"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          REF R4
       30 CAPTURE                          REF R3
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R5 R2 K9 ["getBodyTextColor"]
       34 NEWCLOSURE                       R5 P3
       35 CAPTURE                          REF R4
       36 CAPTURE                          REF R3
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R5 R2 K10 ["getBodyTextInputColor"]
       40 DUPCLOSURE                       R5 K11 [PROTO_4]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R5 R2 K12 ["getButtonPressedTextColor"]
       44 DUPCLOSURE                       R5 K13 [PROTO_5]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R5 R2 K14 ["getButtonHoveredTextColor"]
       48 DUPCLOSURE                       R5 K15 [PROTO_6]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R5 R2 K16 ["getButtonTextColor"]
       52 DUPCLOSURE                       R5 K17 [PROTO_7]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R5 R2 K18 ["getButtonPressedImageColor"]
       56 NEWCLOSURE                       R5 P8
       57 CAPTURE                          REF R4
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R5 R2 K19 ["getButtonHoveredImageColor"]
       61 NEWCLOSURE                       R5 P9
       62 CAPTURE                          REF R4
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R5 R2 K20 ["getButtonImageColor"]
       66 NEWCLOSURE                       R5 P10
       67 CAPTURE                          REF R3
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R5 R2 K21 ["getDividerColor"]
       71 NEWCLOSURE                       R5 P11
       72 CAPTURE                          REF R3
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R5 R2 K22 ["getBorderColor"]
       76 NEWCLOSURE                       R5 P12
       77 CAPTURE                          REF R3
       78 SETTABLEKS                       R5 R2 K23 ["getRadioButtonTextColor"]
       80 DUPCLOSURE                       R3 K24 [PROTO_13]
       81 NEWCLOSURE                       R4 P14
       82 CAPTURE                          REF R3
       83 CLOSEUPVALS                      R3
       84 RETURN                           R2 1
