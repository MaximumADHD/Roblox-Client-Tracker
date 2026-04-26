PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K10 [{"TextProps", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "Text", "LinkText", "LinkPlaceholder", "OnLinkClicked"}]
        5 DUPTABLE                         R3 K13 [{"Font", "TextSize", "TextXAlignment"}]
        6 GETIMPORT                        R4 K16 [Enum.Font.SourceSans]
        8 SETTABLEKS                       R4 R3 K11 ["Font"]
       10 LOADN                            R4 18
       11 SETTABLEKS                       R4 R3 K12 ["TextSize"]
       13 GETIMPORT                        R4 K18 [Enum.TextXAlignment.Left]
       15 SETTABLEKS                       R4 R3 K3 ["TextXAlignment"]
       17 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       19 GETIMPORT                        R3 K20 [Enum.AutomaticSize.Y]
       21 SETTABLEKS                       R3 R2 K2 ["AutomaticSize"]
       23 GETIMPORT                        R3 K18 [Enum.TextXAlignment.Left]
       25 SETTABLEKS                       R3 R2 K3 ["TextXAlignment"]
       27 GETIMPORT                        R3 K21 [Enum.HorizontalAlignment.Left]
       29 SETTABLEKS                       R3 R2 K4 ["HorizontalAlignment"]
       31 LOADN                            R3 44
       32 SETTABLEKS                       R3 R2 K5 ["MaxWidth"]
       34 LOADK                            R3 K22 ["Click [link] to learn more."]
       35 SETTABLEKS                       R3 R2 K6 ["Text"]
       37 LOADK                            R3 K23 ["here"]
       38 SETTABLEKS                       R3 R2 K7 ["LinkText"]
       40 LOADK                            R3 K24 ["[link]"]
       41 SETTABLEKS                       R3 R2 K8 ["LinkPlaceholder"]
       43 DUPCLOSURE                       R3 K25 [PROTO_0]
       44 SETTABLEKS                       R3 R2 K9 ["OnLinkClicked"]
       46 CALL                             R0 2 -1
       47 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K9 [{"TextProps", "MaxWidth", "Text", "HorizontalAlignment", "TextXAlignment", "LinkText", "LinkPlaceholder", "OnLinkClicked"}]
        5 DUPTABLE                         R3 K12 [{"TextSize", "TextXAlignment", "Font"}]
        6 LOADN                            R4 18
        7 SETTABLEKS                       R4 R3 K10 ["TextSize"]
        9 GETIMPORT                        R4 K15 [Enum.TextXAlignment.Left]
       11 SETTABLEKS                       R4 R3 K5 ["TextXAlignment"]
       13 GETIMPORT                        R4 K17 [Enum.Font.SourceSans]
       15 SETTABLEKS                       R4 R3 K11 ["Font"]
       17 SETTABLEKS                       R3 R2 K1 ["TextProps"]
       19 LOADN                            R3 100
       20 SETTABLEKS                       R3 R2 K2 ["MaxWidth"]
       22 LOADK                            R3 K18 ["Hello here is a {link} that is going to cause this to wrap onto another line and this line after the link will wrap on its own it's that long!"]
       23 SETTABLEKS                       R3 R2 K3 ["Text"]
       25 GETIMPORT                        R3 K19 [Enum.HorizontalAlignment.Left]
       27 SETTABLEKS                       R3 R2 K4 ["HorizontalAlignment"]
       29 GETIMPORT                        R3 K15 [Enum.TextXAlignment.Left]
       31 SETTABLEKS                       R3 R2 K5 ["TextXAlignment"]
       33 LOADK                            R3 K20 ["Link"]
       34 SETTABLEKS                       R3 R2 K6 ["LinkText"]
       36 LOADK                            R3 K21 ["{link}"]
       37 SETTABLEKS                       R3 R2 K7 ["LinkPlaceholder"]
       39 DUPCLOSURE                       R3 K22 [PROTO_2]
       40 SETTABLEKS                       R3 R2 K8 ["OnLinkClicked"]
       42 CALL                             R0 2 -1
       43 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["TextWithInlineLink"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 2
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
       46 SETLIST                          R4 R5 2 [1]
       48 SETTABLEKS                       R4 R3 K10 ["stories"]
       50 RETURN                           R3 1
