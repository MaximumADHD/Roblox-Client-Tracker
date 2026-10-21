PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["TextInputDialog - OnClose - TextInput: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K5 [{["enabled"] = False}]
        7 NAMECALL                         R1 R1 K6 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["TextInputDialog - OnButtonPressed: "]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K3 [" - TextInput: "]
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K6 [{["enabled"] = False}]
        9 NAMECALL                         R2 R2 K7 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["Size"], ["LayoutOrder"] = 1, ["Text"] = "Open TextInputDialog", ["Style"] = "RoundPrimary", ["OnClick"]}]
        5 GETIMPORT                        R4 K12 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 200
        9 LOADN                            R7 0
       10 LOADN                            R8 30
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R4 R3 K8 ["OnClick"]
       18 DUPTABLE                         R4 K14 [{"Dialog"}]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 2
       23 DUPTABLE                         R7 K26 [{["Enabled"], ["Title"] = "Title", ["Header"] = "Header", ["Buttons"], ["Body"] = "Body of Dialog. You could use this to inform a user about what the dialog is doing.", ["Description"] = "Description for the TextInput on what the user should input or whatever you want!", ["TextInput"], ["OnClose"], ["OnButtonPressed"]}]
       24 GETTABLEKS                       R8 R0 K27 ["state"]
       26 GETTABLEKS                       R8 R8 K28 ["enabled"]
       28 SETTABLEKS                       R8 R7 K15 ["Enabled"]
       30 NEWTABLE                         R8 0 2
       32 DUPTABLE                         R9 K31 [{["Key"] = "Submit", ["Text"] = "Submit"}]
       33 DUPTABLE                         R10 K33 [{["Key"] = "Cancel", ["Text"] = "Cancel"}]
       34 SETLIST                          R8 R9 2 [1]
       36 SETTABLEKS                       R8 R7 K18 ["Buttons"]
       38 NEWTABLE                         R8 0 1
       40 DUPTABLE                         R9 K36 [{["PlaceholderText"] = "Placeholder Text"}]
       41 SETLIST                          R8 R9 1 [1]
       43 SETTABLEKS                       R8 R7 K23 ["TextInput"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R8 R7 K24 ["OnClose"]
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R8 R7 K25 ["OnButtonPressed"]
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K13 ["Dialog"]
       56 CALL                             R1 3 -1
       57 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["TextInputDialog"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["DEPRECATED_Button"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ExampleTextInputDialog"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_0]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_4]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 RETURN                           R4 1
