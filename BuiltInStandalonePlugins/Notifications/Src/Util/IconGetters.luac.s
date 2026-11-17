PROTO_0:
        0 LOADK                            R1 K0 ["rbxthumb://type=GameIcon&id=%*&w=50&h=50"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R1 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=48&h=48"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R1 ; [+1]
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADK                            R2 K0 [""]
        3 RETURN                           R2 1
        4 LOADK                            R2 K1 ["Plugin-Icon-StatusUnread"]
        5 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Static"]
        3 JUMPIFEQ                         R1 R2 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R3 R0
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R0
       12 RETURN                           R2 1
       13 LOADK                            R2 K1 ["Plugin-Icon-NotificationBell"]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Enums"]
       15 GETTABLEKS                       R2 R2 K7 ["NotificationTargetType"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["NotificationLuaIcons"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 0 0
       29 GETIMPORT                        R4 K11 [ipairs]
       31 MOVE                             R5 R2
       32 CALL                             R4 1 3
       33 FORGPREP_INEXT                   R4
       34 LOADK                            R9 K12 ["Plugin-Icon-%*"]
       35 MOVE                             R11 R8
       36 NAMECALL                         R9 R9 K13 ["format"]
       38 CALL                             R9 2 1
       39 SETTABLE                         R9 R3 R8
       40 FORGLOOP                         R4 2 [inext] ; [-7]
       42 NEWTABLE                         R4 2 0
       44 GETTABLEKS                       R5 R1 K14 ["Universe"]
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 SETTABLE                         R6 R4 R5
       48 GETTABLEKS                       R5 R1 K16 ["User"]
       50 DUPCLOSURE                       R6 K17 [PROTO_1]
       51 SETTABLE                         R6 R4 R5
       52 DUPCLOSURE                       R5 K18 [PROTO_2]
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R6 K19 [PROTO_3]
       55 DUPCLOSURE                       R7 K20 [PROTO_4]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 DUPTABLE                         R8 K24 [{"getDynamicIconPath", "getReadStatusIconTag", "getStaticIconTag"}]
       59 SETTABLEKS                       R5 R8 K21 ["getDynamicIconPath"]
       61 SETTABLEKS                       R6 R8 K22 ["getReadStatusIconTag"]
       63 SETTABLEKS                       R7 R8 K23 ["getStaticIconTag"]
       65 RETURN                           R8 1
