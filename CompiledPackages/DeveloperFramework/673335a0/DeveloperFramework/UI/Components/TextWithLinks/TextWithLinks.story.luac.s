PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K8 [{"TextProps", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "Text", "LinkMap"}]
        5 DUPTABLE                         R3 K11 [{"Font", "TextSize", "TextXAlignment"}]
        6 GETIMPORT                        R4 K14 [Enum.Font.SourceSans]
        8 SETTABLEKS                       R4 R3 K9 ["Font"]
       10 LOADN                            R4 18
       11 SETTABLEKS                       R4 R3 K10 ["TextSize"]
       13 GETIMPORT                        R4 K16 [Enum.TextXAlignment.Left]
       15 SETTABLEKS                       R4 R3 K3 ["TextXAlignment"]
       17 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       19 GETIMPORT                        R3 K18 [Enum.AutomaticSize.Y]
       21 SETTABLEKS                       R3 R2 K2 ["AutomaticSize"]
       23 GETIMPORT                        R3 K16 [Enum.TextXAlignment.Left]
       25 SETTABLEKS                       R3 R2 K3 ["TextXAlignment"]
       27 GETIMPORT                        R3 K19 [Enum.HorizontalAlignment.Left]
       29 SETTABLEKS                       R3 R2 K4 ["HorizontalAlignment"]
       31 LOADN                            R3 44
       32 SETTABLEKS                       R3 R2 K5 ["MaxWidth"]
       34 LOADK                            R3 K20 ["Click [link] to learn more."]
       35 SETTABLEKS                       R3 R2 K6 ["Text"]
       37 NEWTABLE                         R3 1 0
       39 DUPTABLE                         R4 K23 [{"LinkText", "LinkCallback"}]
       40 LOADK                            R5 K24 ["here"]
       41 SETTABLEKS                       R5 R4 K21 ["LinkText"]
       43 DUPCLOSURE                       R5 K25 [PROTO_0]
       44 SETTABLEKS                       R5 R4 K22 ["LinkCallback"]
       46 SETTABLEKS                       R4 R3 K26 ["[link]"]
       48 SETTABLEKS                       R3 R2 K7 ["LinkMap"]
       50 CALL                             R0 2 -1
       51 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{"TextProps", "MaxWidth", "Text", "HorizontalAlignment", "TextXAlignment", "LinkMap"}]
        5 DUPTABLE                         R3 K10 [{"TextSize", "TextXAlignment", "Font"}]
        6 LOADN                            R4 18
        7 SETTABLEKS                       R4 R3 K8 ["TextSize"]
        9 GETIMPORT                        R4 K13 [Enum.TextXAlignment.Left]
       11 SETTABLEKS                       R4 R3 K5 ["TextXAlignment"]
       13 GETIMPORT                        R4 K15 [Enum.Font.SourceSans]
       15 SETTABLEKS                       R4 R3 K9 ["Font"]
       17 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       19 LOADN                            R3 100
       20 SETTABLEKS                       R3 R2 K2 ["MaxWidth"]
       22 LOADK                            R3 K16 ["Hello here is a {link} that is going to cause this to wrap onto another line and this line after the link will wrap on its own it's that long!"]
       23 SETTABLEKS                       R3 R2 K3 ["Text"]
       25 GETIMPORT                        R3 K17 [Enum.HorizontalAlignment.Left]
       27 SETTABLEKS                       R3 R2 K4 ["HorizontalAlignment"]
       29 GETIMPORT                        R3 K13 [Enum.TextXAlignment.Left]
       31 SETTABLEKS                       R3 R2 K5 ["TextXAlignment"]
       33 NEWTABLE                         R3 1 0
       35 DUPTABLE                         R4 K20 [{"LinkText", "LinkCallback"}]
       36 LOADK                            R5 K21 ["link"]
       37 SETTABLEKS                       R5 R4 K18 ["LinkText"]
       39 DUPCLOSURE                       R5 K22 [PROTO_2]
       40 SETTABLEKS                       R5 R4 K19 ["LinkCallback"]
       42 SETTABLEKS                       R4 R3 K23 ["{link}"]
       44 SETTABLEKS                       R3 R2 K6 ["LinkMap"]
       46 CALL                             R0 2 -1
       47 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked link 1!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked link 2!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{"TextProps", "MaxWidth", "Text", "HorizontalAlignment", "TextXAlignment", "LinkMap"}]
        5 DUPTABLE                         R3 K10 [{"TextSize", "TextXAlignment", "Font"}]
        6 LOADN                            R4 18
        7 SETTABLEKS                       R4 R3 K8 ["TextSize"]
        9 GETIMPORT                        R4 K13 [Enum.TextXAlignment.Left]
       11 SETTABLEKS                       R4 R3 K5 ["TextXAlignment"]
       13 GETIMPORT                        R4 K15 [Enum.Font.SourceSans]
       15 SETTABLEKS                       R4 R3 K9 ["Font"]
       17 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       19 LOADN                            R3 100
       20 SETTABLEKS                       R3 R2 K2 ["MaxWidth"]
       22 LOADK                            R3 K16 ["Hello here is some long text with multiple links. This first {link1} uses one placeholder, while this second {link2} uses another. This third {link1} uses the same placeholder as the first. This line after the link will wrap on its own it's that long!"]
       23 SETTABLEKS                       R3 R2 K3 ["Text"]
       25 GETIMPORT                        R3 K17 [Enum.HorizontalAlignment.Left]
       27 SETTABLEKS                       R3 R2 K4 ["HorizontalAlignment"]
       29 GETIMPORT                        R3 K13 [Enum.TextXAlignment.Left]
       31 SETTABLEKS                       R3 R2 K5 ["TextXAlignment"]
       33 NEWTABLE                         R3 2 0
       35 DUPTABLE                         R4 K20 [{"LinkText", "LinkCallback"}]
       36 LOADK                            R5 K21 ["link"]
       37 SETTABLEKS                       R5 R4 K18 ["LinkText"]
       39 DUPCLOSURE                       R5 K22 [PROTO_4]
       40 SETTABLEKS                       R5 R4 K19 ["LinkCallback"]
       42 SETTABLEKS                       R4 R3 K23 ["{link1}"]
       44 DUPTABLE                         R4 K20 [{"LinkText", "LinkCallback"}]
       45 LOADK                            R5 K21 ["link"]
       46 SETTABLEKS                       R5 R4 K18 ["LinkText"]
       48 DUPCLOSURE                       R5 K24 [PROTO_5]
       49 SETTABLEKS                       R5 R4 K19 ["LinkCallback"]
       51 SETTABLEKS                       R4 R3 K25 ["{link2}"]
       53 SETTABLEKS                       R3 R2 K6 ["LinkMap"]
       55 CALL                             R0 2 -1
       56 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["TextWithLinks"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 3
       28 DUPTABLE                         R5 K14 [{"name", "story"}]
       29 LOADK                            R6 K15 ["Small"]
       30 SETTABLEKS                       R6 R5 K12 ["name"]
       32 DUPCLOSURE                       R6 K16 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R6 R5 K13 ["story"]
       37 DUPTABLE                         R6 K14 [{"name", "story"}]
       38 LOADK                            R7 K17 ["Long"]
       39 SETTABLEKS                       R7 R6 K12 ["name"]
       41 DUPCLOSURE                       R7 K18 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K13 ["story"]
       46 DUPTABLE                         R7 K14 [{"name", "story"}]
       47 LOADK                            R8 K19 ["Varied"]
       48 SETTABLEKS                       R8 R7 K12 ["name"]
       50 DUPCLOSURE                       R8 K20 [PROTO_6]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R8 R7 K13 ["story"]
       55 SETLIST                          R4 R5 3 [1]
       57 SETTABLEKS                       R4 R3 K10 ["stories"]
       59 RETURN                           R3 1
