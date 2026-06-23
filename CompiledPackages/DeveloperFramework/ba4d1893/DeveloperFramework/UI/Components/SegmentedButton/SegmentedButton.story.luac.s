PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+9]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K4 [{"currentIndex"}]
        9 SETTABLEKS                       R0 R3 K3 ["currentIndex"]
       11 NAMECALL                         R1 R1 K5 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 DUPTABLE                         R3 K7 [{"currentId"}]
       17 GETTABLEKS                       R4 R0 K8 ["Id"]
       19 SETTABLEKS                       R4 R3 K6 ["currentId"]
       21 NAMECALL                         R1 R1 K5 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"currentId", "currentIndex"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["currentId"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["currentIndex"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["selectItem"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R3 K2 ["join"]
        9 DUPTABLE                         R4 K8 [{"SelectedId", "SelectedIndex", "Items", "OnItemActivated", "Size"}]
       10 GETTABLEKS                       R5 R0 K9 ["state"]
       12 GETTABLEKS                       R5 R5 K10 ["currentId"]
       14 SETTABLEKS                       R5 R4 K3 ["SelectedId"]
       16 GETTABLEKS                       R5 R0 K9 ["state"]
       18 GETTABLEKS                       R5 R5 K11 ["currentIndex"]
       20 SETTABLEKS                       R5 R4 K4 ["SelectedIndex"]
       22 NEWTABLE                         R5 0 3
       24 LOADK                            R6 K12 ["Left"]
       25 LOADK                            R7 K13 ["Center"]
       26 LOADK                            R8 K14 ["Right"]
       27 SETLIST                          R5 R6 3 [1]
       29 SETTABLEKS                       R5 R4 K5 ["Items"]
       31 GETTABLEKS                       R5 R0 K15 ["selectItem"]
       33 SETTABLEKS                       R5 R4 K6 ["OnItemActivated"]
       35 GETIMPORT                        R5 K18 [UDim2.fromOffset]
       37 LOADN                            R6 160
       38 LOADN                            R7 32
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K7 ["Size"]
       42 GETTABLEKS                       R5 R0 K19 ["props"]
       44 CALL                             R3 2 -1
       45 CALL                             R1 -1 -1
       46 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Items"}]
        5 NEWTABLE                         R3 0 2
        7 LOADK                            R4 K3 ["Left"]
        8 LOADK                            R5 K4 ["Right"]
        9 SETLIST                          R3 R4 2 [1]
       11 SETTABLEKS                       R3 R2 K1 ["Items"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Items", "Size"}]
        5 NEWTABLE                         R3 0 3
        7 DUPTABLE                         R4 K7 [{"Icon", "Id", "Label"}]
        8 LOADK                            R5 K8 ["rbxasset://textures/StudioToolbox/Tabs/Inventory.png"]
        9 SETTABLEKS                       R5 R4 K4 ["Icon"]
       11 LOADK                            R5 K9 ["Inventory"]
       12 SETTABLEKS                       R5 R4 K5 ["Id"]
       14 LOADK                            R5 K9 ["Inventory"]
       15 SETTABLEKS                       R5 R4 K6 ["Label"]
       17 DUPTABLE                         R5 K7 [{"Icon", "Id", "Label"}]
       18 LOADK                            R6 K10 ["rbxasset://textures/StudioToolbox/Tabs/Shop.png"]
       19 SETTABLEKS                       R6 R5 K4 ["Icon"]
       21 LOADK                            R6 K11 ["Shop"]
       22 SETTABLEKS                       R6 R5 K5 ["Id"]
       24 LOADK                            R6 K11 ["Shop"]
       25 SETTABLEKS                       R6 R5 K6 ["Label"]
       27 DUPTABLE                         R6 K7 [{"Icon", "Id", "Label"}]
       28 LOADK                            R7 K12 ["rbxasset://textures/StudioToolbox/Tabs/Recent.png"]
       29 SETTABLEKS                       R7 R6 K4 ["Icon"]
       31 LOADK                            R7 K13 ["Recent"]
       32 SETTABLEKS                       R7 R6 K5 ["Id"]
       34 LOADK                            R7 K13 ["Recent"]
       35 SETTABLEKS                       R7 R6 K6 ["Label"]
       37 SETLIST                          R3 R4 3 [1]
       39 SETTABLEKS                       R3 R2 K1 ["Items"]
       41 GETIMPORT                        R3 K16 [UDim2.fromOffset]
       43 LOADN                            R4 44
       44 LOADN                            R5 32
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K2 ["Size"]
       48 CALL                             R0 2 -1
       49 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Items"}]
        5 NEWTABLE                         R3 0 3
        7 DUPTABLE                         R4 K5 [{"Icon", "Id"}]
        8 LOADK                            R5 K6 ["rbxasset://textures/StudioToolbox/Tabs/Inventory.png"]
        9 SETTABLEKS                       R5 R4 K3 ["Icon"]
       11 LOADK                            R5 K7 ["Inventory"]
       12 SETTABLEKS                       R5 R4 K4 ["Id"]
       14 DUPTABLE                         R5 K5 [{"Icon", "Id"}]
       15 LOADK                            R6 K8 ["rbxasset://textures/StudioToolbox/Tabs/Shop.png"]
       16 SETTABLEKS                       R6 R5 K3 ["Icon"]
       18 LOADK                            R6 K9 ["Shop"]
       19 SETTABLEKS                       R6 R5 K4 ["Id"]
       21 DUPTABLE                         R6 K5 [{"Icon", "Id"}]
       22 LOADK                            R7 K10 ["rbxasset://textures/StudioToolbox/Tabs/Recent.png"]
       23 SETTABLEKS                       R7 R6 K3 ["Icon"]
       25 LOADK                            R7 K11 ["Recent"]
       26 SETTABLEKS                       R7 R6 K4 ["Id"]
       28 SETLIST                          R3 R4 3 [1]
       30 SETTABLEKS                       R3 R2 K1 ["Items"]
       32 CALL                             R0 2 -1
       33 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"StyleModifier"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["Disabled"]
        8 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

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
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["SegmentedButton"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["StyleModifier"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K13 ["PureComponent"]
       41 LOADK                            R7 K14 ["SegmentedButtonExample"]
       42 NAMECALL                         R5 R5 K15 ["extend"]
       44 CALL                             R5 2 1
       45 DUPCLOSURE                       R6 K16 [PROTO_1]
       46 SETTABLEKS                       R6 R5 K17 ["init"]
       48 DUPCLOSURE                       R6 K18 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R6 R5 K19 ["render"]
       54 DUPTABLE                         R6 K21 [{"stories"}]
       55 NEWTABLE                         R7 0 5
       57 DUPTABLE                         R8 K24 [{"name", "story"}]
       58 LOADK                            R9 K25 ["Default"]
       59 SETTABLEKS                       R9 R8 K22 ["name"]
       61 DUPCLOSURE                       R9 K26 [PROTO_3]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R9 R8 K23 ["story"]
       66 DUPTABLE                         R9 K24 [{"name", "story"}]
       67 LOADK                            R10 K27 ["Two Items"]
       68 SETTABLEKS                       R10 R9 K22 ["name"]
       70 DUPCLOSURE                       R10 K28 [PROTO_4]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R10 R9 K23 ["story"]
       75 DUPTABLE                         R10 K24 [{"name", "story"}]
       76 LOADK                            R11 K29 ["Icon Items"]
       77 SETTABLEKS                       R11 R10 K22 ["name"]
       79 DUPCLOSURE                       R11 K30 [PROTO_5]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R11 R10 K23 ["story"]
       84 DUPTABLE                         R11 K24 [{"name", "story"}]
       85 LOADK                            R12 K29 ["Icon Items"]
       86 SETTABLEKS                       R12 R11 K22 ["name"]
       88 DUPCLOSURE                       R12 K31 [PROTO_6]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R5
       91 SETTABLEKS                       R12 R11 K23 ["story"]
       93 DUPTABLE                         R12 K24 [{"name", "story"}]
       94 LOADK                            R13 K32 ["Disabled"]
       95 SETTABLEKS                       R13 R12 K22 ["name"]
       97 DUPCLOSURE                       R13 K33 [PROTO_7]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R13 R12 K23 ["story"]
      103 SETLIST                          R7 R8 5 [1]
      105 SETTABLEKS                       R7 R6 K20 ["stories"]
      107 RETURN                           R6 1
