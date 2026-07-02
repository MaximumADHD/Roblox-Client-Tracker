PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K10 [{["TextProps"], ["AutomaticSize"], ["TextXAlignment"], ["HorizontalAlignment"], ["MaxWidth"] = 300, ["Text"] = "Click [link] to learn more.", ["LinkMap"]}]
        5 DUPTABLE                         R3 K14 [{["Font"], ["TextSize"] = 18, ["TextXAlignment"]}]
        6 GETIMPORT                        R4 K17 [Enum.Font.SourceSans]
        8 SETTABLEKS                       R4 R3 K11 ["Font"]
       10 GETIMPORT                        R4 K19 [Enum.TextXAlignment.Left]
       12 SETTABLEKS                       R4 R3 K3 ["TextXAlignment"]
       14 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       16 GETIMPORT                        R3 K21 [Enum.AutomaticSize.Y]
       18 SETTABLEKS                       R3 R2 K2 ["AutomaticSize"]
       20 GETIMPORT                        R3 K19 [Enum.TextXAlignment.Left]
       22 SETTABLEKS                       R3 R2 K3 ["TextXAlignment"]
       24 GETIMPORT                        R3 K22 [Enum.HorizontalAlignment.Left]
       26 SETTABLEKS                       R3 R2 K4 ["HorizontalAlignment"]
       28 NEWTABLE                         R3 1 0
       30 DUPTABLE                         R4 K26 [{["LinkText"] = "here", ["LinkCallback"]}]
       31 DUPCLOSURE                       R5 K27 [PROTO_0]
       32 SETTABLEKS                       R5 R4 K25 ["LinkCallback"]
       34 SETTABLEKS                       R4 R3 K28 ["[link]"]
       36 SETTABLEKS                       R3 R2 K9 ["LinkMap"]
       38 CALL                             R0 2 -1
       39 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K9 [{["TextProps"], ["MaxWidth"] = 100, ["Text"] = "Hello here is a {link} that is going to cause this to wrap onto another line and this line after the link will wrap on its own it's that long!", ["HorizontalAlignment"], ["TextXAlignment"], ["LinkMap"]}]
        5 DUPTABLE                         R3 K13 [{["TextSize"] = 18, ["TextXAlignment"], ["Font"]}]
        6 GETIMPORT                        R4 K16 [Enum.TextXAlignment.Left]
        8 SETTABLEKS                       R4 R3 K7 ["TextXAlignment"]
       10 GETIMPORT                        R4 K18 [Enum.Font.SourceSans]
       12 SETTABLEKS                       R4 R3 K12 ["Font"]
       14 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       16 GETIMPORT                        R3 K19 [Enum.HorizontalAlignment.Left]
       18 SETTABLEKS                       R3 R2 K6 ["HorizontalAlignment"]
       20 GETIMPORT                        R3 K16 [Enum.TextXAlignment.Left]
       22 SETTABLEKS                       R3 R2 K7 ["TextXAlignment"]
       24 NEWTABLE                         R3 1 0
       26 DUPTABLE                         R4 K23 [{["LinkText"] = "link", ["LinkCallback"]}]
       27 DUPCLOSURE                       R5 K24 [PROTO_2]
       28 SETTABLEKS                       R5 R4 K22 ["LinkCallback"]
       30 SETTABLEKS                       R4 R3 K25 ["{link}"]
       32 SETTABLEKS                       R3 R2 K8 ["LinkMap"]
       34 CALL                             R0 2 -1
       35 RETURN                           R0 -1

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
        4 DUPTABLE                         R2 K9 [{["TextProps"], ["MaxWidth"] = 100, ["Text"] = "Hello here is some long text with multiple links. This first {link1} uses one placeholder, while this second {link2} uses another. This third {link1} uses the same placeholder as the first. This line after the link will wrap on its own it's that long!", ["HorizontalAlignment"], ["TextXAlignment"], ["LinkMap"]}]
        5 DUPTABLE                         R3 K13 [{["TextSize"] = 18, ["TextXAlignment"], ["Font"]}]
        6 GETIMPORT                        R4 K16 [Enum.TextXAlignment.Left]
        8 SETTABLEKS                       R4 R3 K7 ["TextXAlignment"]
       10 GETIMPORT                        R4 K18 [Enum.Font.SourceSans]
       12 SETTABLEKS                       R4 R3 K12 ["Font"]
       14 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       16 GETIMPORT                        R3 K19 [Enum.HorizontalAlignment.Left]
       18 SETTABLEKS                       R3 R2 K6 ["HorizontalAlignment"]
       20 GETIMPORT                        R3 K16 [Enum.TextXAlignment.Left]
       22 SETTABLEKS                       R3 R2 K7 ["TextXAlignment"]
       24 NEWTABLE                         R3 2 0
       26 DUPTABLE                         R4 K23 [{["LinkText"] = "link", ["LinkCallback"]}]
       27 DUPCLOSURE                       R5 K24 [PROTO_4]
       28 SETTABLEKS                       R5 R4 K22 ["LinkCallback"]
       30 SETTABLEKS                       R4 R3 K25 ["{link1}"]
       32 DUPTABLE                         R4 K23 [{["LinkText"] = "link", ["LinkCallback"]}]
       33 DUPCLOSURE                       R5 K26 [PROTO_5]
       34 SETTABLEKS                       R5 R4 K22 ["LinkCallback"]
       36 SETTABLEKS                       R4 R3 K27 ["{link2}"]
       38 SETTABLEKS                       R3 R2 K8 ["LinkMap"]
       40 CALL                             R0 2 -1
       41 RETURN                           R0 -1

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
       28 DUPTABLE                         R5 K15 [{["name"] = "Small", ["story"]}]
       29 DUPCLOSURE                       R6 K16 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R6 R5 K14 ["story"]
       34 DUPTABLE                         R6 K18 [{["name"] = "Long", ["story"]}]
       35 DUPCLOSURE                       R7 K19 [PROTO_3]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R7 R6 K14 ["story"]
       40 DUPTABLE                         R7 K21 [{["name"] = "Varied", ["story"]}]
       41 DUPCLOSURE                       R8 K22 [PROTO_6]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R8 R7 K14 ["story"]
       46 SETLIST                          R4 R5 3 [1]
       48 SETTABLEKS                       R4 R3 K10 ["stories"]
       50 RETURN                           R3 1
