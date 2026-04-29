PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["TextInputDialog - OnClose - TextInput: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K4 [{"enabled"}]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K3 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["TextInputDialog - OnButtonPressed: "]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K3 [" - TextInput: "]
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K5 [{"enabled"}]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K4 ["enabled"]
       12 NAMECALL                         R2 R2 K6 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"Size", "LayoutOrder", "Text", "Style", "OnClick"}]
        5 GETIMPORT                        R4 K9 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 200
        9 LOADN                            R7 0
       10 LOADN                            R8 30
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 LOADN                            R4 1
       15 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       17 LOADK                            R4 K10 ["Open TextInputDialog"]
       18 SETTABLEKS                       R4 R3 K3 ["Text"]
       20 LOADK                            R4 K11 ["RoundPrimary"]
       21 SETTABLEKS                       R4 R3 K4 ["Style"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R3 K5 ["OnClick"]
       27 DUPTABLE                         R4 K13 [{"Dialog"}]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["createElement"]
       31 GETUPVAL                         R6 2
       32 DUPTABLE                         R7 K23 [{"Enabled", "Title", "Header", "Buttons", "Body", "Description", "TextInput", "OnClose", "OnButtonPressed"}]
       33 GETTABLEKS                       R9 R0 K24 ["state"]
       35 GETTABLEKS                       R8 R9 K25 ["enabled"]
       37 SETTABLEKS                       R8 R7 K14 ["Enabled"]
       39 LOADK                            R8 K15 ["Title"]
       40 SETTABLEKS                       R8 R7 K15 ["Title"]
       42 LOADK                            R8 K16 ["Header"]
       43 SETTABLEKS                       R8 R7 K16 ["Header"]
       45 NEWTABLE                         R8 0 2
       47 DUPTABLE                         R9 K27 [{"Key", "Text"}]
       48 LOADK                            R10 K28 ["Submit"]
       49 SETTABLEKS                       R10 R9 K26 ["Key"]
       51 LOADK                            R10 K28 ["Submit"]
       52 SETTABLEKS                       R10 R9 K3 ["Text"]
       54 DUPTABLE                         R10 K27 [{"Key", "Text"}]
       55 LOADK                            R11 K29 ["Cancel"]
       56 SETTABLEKS                       R11 R10 K26 ["Key"]
       58 LOADK                            R11 K29 ["Cancel"]
       59 SETTABLEKS                       R11 R10 K3 ["Text"]
       61 SETLIST                          R8 R9 2 [1]
       63 SETTABLEKS                       R8 R7 K17 ["Buttons"]
       65 LOADK                            R8 K30 ["Body of Dialog. You could use this to inform a user about what the dialog is doing."]
       66 SETTABLEKS                       R8 R7 K18 ["Body"]
       68 LOADK                            R8 K31 ["Description for the TextInput on what the user should input or whatever you want!"]
       69 SETTABLEKS                       R8 R7 K19 ["Description"]
       71 NEWTABLE                         R8 0 1
       73 DUPTABLE                         R9 K33 [{"PlaceholderText"}]
       74 LOADK                            R10 K34 ["Placeholder Text"]
       75 SETTABLEKS                       R10 R9 K32 ["PlaceholderText"]
       77 SETLIST                          R8 R9 1 [1]
       79 SETTABLEKS                       R8 R7 K20 ["TextInput"]
       81 NEWCLOSURE                       R8 P1
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R8 R7 K21 ["OnClose"]
       85 NEWCLOSURE                       R8 P2
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R8 R7 K22 ["OnButtonPressed"]
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K12 ["Dialog"]
       92 CALL                             R1 3 -1
       93 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R4 K9 ["TextInputDialog"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["DEPRECATED_Button"]
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
