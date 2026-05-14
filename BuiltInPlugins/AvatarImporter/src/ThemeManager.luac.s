PROTO_0:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["ImageColor3"]
        2 MOVE                             R7 R2
        3 GETIMPORT                        R8 K4 [Enum.StudioStyleGuideModifier.Default]
        5 NAMECALL                         R3 R0 K5 ["_set"]
        7 CALL                             R3 5 0
        8 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["TextColor3"]
        2 MOVE                             R7 R2
        3 GETIMPORT                        R8 K4 [Enum.StudioStyleGuideModifier.Default]
        5 NAMECALL                         R3 R0 K5 ["_set"]
        7 CALL                             R3 5 0
        8 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["BackgroundColor3"]
        2 MOVE                             R7 R2
        3 GETIMPORT                        R8 K4 [Enum.StudioStyleGuideModifier.Default]
        5 NAMECALL                         R3 R0 K5 ["_set"]
        7 CALL                             R3 5 0
        8 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 ["BorderColor3"]
        2 MOVE                             R7 R2
        3 GETIMPORT                        R8 K4 [Enum.StudioStyleGuideModifier.Default]
        5 NAMECALL                         R3 R0 K5 ["_set"]
        7 CALL                             R3 5 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETTABLEKS                       R4 R4 K0 ["Theme"]
        6 GETTABLEKS                       R4 R4 K1 ["Name"]
        8 GETTABLE                         R2 R3 R4
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R4 R0 K0 ["_hook"]
        7 CALL                             R4 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["Theme"]
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 NAMECALL                         R2 R2 K1 ["GetColor"]
        9 CALL                             R2 3 1
       10 SETTABLE                         R2 R0 R1
       11 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R7 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R4
        6 NAMECALL                         R5 R0 K0 ["_hook"]
        8 CALL                             R5 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R2 R1
        1 CALL                             R2 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["ThemeChanged"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["Connect"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [settings]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K2 ["Studio"]
        6 NEWTABLE                         R1 8 0
        8 DUPCLOSURE                       R2 K3 [PROTO_0]
        9 SETTABLEKS                       R2 R1 K4 ["setImageColor"]
       11 DUPCLOSURE                       R2 K5 [PROTO_1]
       12 SETTABLEKS                       R2 R1 K6 ["setTextColor"]
       14 DUPCLOSURE                       R2 K7 [PROTO_2]
       15 SETTABLEKS                       R2 R1 K8 ["setBackgroundColor"]
       17 DUPCLOSURE                       R2 K9 [PROTO_3]
       18 SETTABLEKS                       R2 R1 K10 ["setBorderColor"]
       20 DUPCLOSURE                       R2 K11 [PROTO_5]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R1 K12 ["setCustom"]
       24 DUPCLOSURE                       R2 K13 [PROTO_7]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R1 K14 ["_set"]
       28 DUPCLOSURE                       R2 K15 [PROTO_8]
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R1 K16 ["_hook"]
       32 RETURN                           R1 1
