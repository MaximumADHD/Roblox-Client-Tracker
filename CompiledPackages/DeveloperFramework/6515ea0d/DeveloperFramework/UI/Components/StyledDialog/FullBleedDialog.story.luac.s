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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["Size"], ["LayoutOrder"] = 2, ["Style"] = "Round", ["Text"] = "Open FullBleed Dialog", ["OnClick"]}]
        5 GETIMPORT                        R4 K12 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
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
       23 DUPTABLE                         R7 K25 [{["Style"] = "FullBleed", ["Enabled"], ["Resizable"] = True, ["Title"] = "Styled Dialog examples", ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       24 GETTABLEKS                       R8 R0 K26 ["state"]
       26 GETTABLEKS                       R8 R8 K27 ["enabled"]
       28 SETTABLEKS                       R8 R7 K16 ["Enabled"]
       30 GETIMPORT                        R8 K29 [Vector2.new]
       32 LOADN                            R9 400
       33 LOADN                            R10 100
       34 CALL                             R8 2 1
       35 SETTABLEKS                       R8 R7 K21 ["MinContentSize"]
       37 NEWTABLE                         R8 0 1
       39 DUPTABLE                         R9 K33 [{["Key"] = "ok", ["Text"] = "OK"}]
       40 SETLIST                          R8 R9 1 [1]
       42 SETTABLEKS                       R8 R7 K22 ["Buttons"]
       44 NEWCLOSURE                       R8 P1
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R8 R7 K23 ["OnButtonPressed"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R8 R7 K24 ["OnClose"]
       52 DUPTABLE                         R8 K35 [{"Contents"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K0 ["createElement"]
       56 LOADK                            R10 K36 ["Frame"]
       57 DUPTABLE                         R11 K38 [{"BackgroundColor3", "Size"}]
       58 GETIMPORT                        R12 K40 [Color3.new]
       60 LOADN                            R13 0
       61 LOADN                            R14 1
       62 LOADN                            R15 0
       63 CALL                             R12 3 1
       64 SETTABLEKS                       R12 R11 K37 ["BackgroundColor3"]
       66 GETIMPORT                        R12 K42 [UDim2.fromScale]
       68 LOADN                            R13 1
       69 LOADN                            R14 1
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K1 ["Size"]
       73 DUPTABLE                         R12 K44 [{"Label"}]
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K0 ["createElement"]
       77 GETUPVAL                         R14 3
       78 DUPTABLE                         R15 K48 [{["Size"], ["Text"] = "No padding is added to content above the button container", ["TextColor"], ["TextWrapped"] = True}]
       79 GETIMPORT                        R16 K42 [UDim2.fromScale]
       81 LOADN                            R17 1
       82 LOADN                            R18 1
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K1 ["Size"]
       86 GETIMPORT                        R16 K40 [Color3.new]
       88 LOADN                            R17 0
       89 LOADN                            R18 0
       90 LOADN                            R19 0
       91 CALL                             R16 3 1
       92 SETTABLEKS                       R16 R15 K46 ["TextColor"]
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K43 ["Label"]
       97 CALL                             R9 3 1
       98 SETTABLEKS                       R9 R8 K34 ["Contents"]
      100 CALL                             R5 3 1
      101 SETTABLEKS                       R5 R4 K13 ["Dialog"]
      103 CALL                             R1 3 -1
      104 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["StyledDialog"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["DEPRECATED_Button"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       45 LOADK                            R7 K13 ["FullBleedDialogStory"]
       46 NAMECALL                         R5 R5 K14 ["extend"]
       48 CALL                             R5 2 1
       49 DUPCLOSURE                       R6 K15 [PROTO_0]
       50 SETTABLEKS                       R6 R5 K16 ["init"]
       52 DUPCLOSURE                       R6 K17 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R6 R5 K18 ["render"]
       59 RETURN                           R5 1
