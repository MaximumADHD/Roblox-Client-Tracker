PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["icons/common/safety"]
        2 JUMP                             ; [+1]
        3 LOADNIL                          R1
        4 NEWTABLE                         R2 0 4
        6 DUPTABLE                         R3 K6 [{["id"] = "A", ["text"] = "Item A", ["icon"]}]
        7 SETTABLEKS                       R1 R3 K5 ["icon"]
        9 DUPTABLE                         R4 K11 [{["id"] = "B", ["text"] = "Item B", ["isDisabled"] = True}]
       10 DUPTABLE                         R5 K14 [{["id"] = "G", ["text"] = "Long text item that should be truncated in the dropdown menu"}]
       11 DUPTABLE                         R6 K17 [{["id"] = "C", ["text"] = "Item C", ["icon"]}]
       12 SETTABLEKS                       R1 R6 K5 ["icon"]
       14 SETLIST                          R2 R3 4 [1]
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Root"]
       11 DUPTABLE                         R5 K15 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "variant", "label", "hint", "width", "maxHeight"}]
       12 SETTABLEKS                       R1 R5 K3 ["value"]
       14 GETTABLEKS                       R6 R0 K4 ["placeholder"]
       16 SETTABLEKS                       R6 R5 K4 ["placeholder"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R6 R5 K5 ["onItemChanged"]
       22 GETTABLEKS                       R6 R0 K6 ["hasError"]
       24 SETTABLEKS                       R6 R5 K6 ["hasError"]
       26 GETTABLEKS                       R6 R0 K7 ["isDisabled"]
       28 SETTABLEKS                       R6 R5 K7 ["isDisabled"]
       30 GETTABLEKS                       R7 R0 K8 ["items"]
       32 JUMPIFNOT                        R7 ; [+3]
       33 GETTABLEKS                       R6 R0 K8 ["items"]
       35 JUMP                             ; [+4]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R7 R0 K16 ["hasIcon"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K8 ["items"]
       42 GETTABLEKS                       R6 R0 K9 ["size"]
       44 SETTABLEKS                       R6 R5 K9 ["size"]
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R7 R7 K17 ["FoundationDropdownVariant"]
       49 JUMPIFNOT                        R7 ; [+3]
       50 GETTABLEKS                       R6 R0 K10 ["variant"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R6
       54 SETTABLEKS                       R6 R5 K10 ["variant"]
       56 GETTABLEKS                       R6 R0 K11 ["label"]
       58 SETTABLEKS                       R6 R5 K11 ["label"]
       60 GETTABLEKS                       R6 R0 K12 ["hint"]
       62 SETTABLEKS                       R6 R5 K12 ["hint"]
       64 GETTABLEKS                       R6 R0 K13 ["width"]
       66 SETTABLEKS                       R6 R5 K13 ["width"]
       68 GETTABLEKS                       R6 R0 K14 ["maxHeight"]
       70 SETTABLEKS                       R6 R5 K14 ["maxHeight"]
       72 CALL                             R3 2 -1
       73 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["Text"], ["tag"] = "auto-xy text-label-medium content-muted", ["LayoutOrder"]}]
        5 SETTABLEKS                       R0 R4 K1 ["Text"]
        7 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R8 K4 ["col gap-xsmall "]
        6 MOVE                             R9 R2
        7 CONCAT                           R7 R8 R9
        8 SETTABLEKS                       R7 R6 K1 ["tag"]
       10 SETTABLEKS                       R1 R6 K2 ["LayoutOrder"]
       12 DUPTABLE                         R7 K7 [{"Label", "Content"}]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K0 ["createElement"]
       16 GETUPVAL                         R9 2
       17 DUPTABLE                         R10 K11 [{["Text"], ["tag"] = "auto-xy text-label-medium content-muted", ["LayoutOrder"] = 1}]
       18 SETTABLEKS                       R0 R10 K8 ["Text"]
       20 CALL                             R8 2 1
       21 SETTABLEKS                       R8 R7 K5 ["Label"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K0 ["createElement"]
       26 GETUPVAL                         R9 1
       27 DUPTABLE                         R10 K13 [{["tag"], ["LayoutOrder"] = 2}]
       28 SETTABLEKS                       R2 R10 K1 ["tag"]
       30 MOVE                             R11 R3
       31 CALL                             R8 3 1
       32 SETTABLEKS                       R8 R7 K6 ["Content"]
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K11 [{"label", "size", "variant", "isDisabled", "hasError", "hasIcon", "placeholder", "hint", "width"}]
        7 GETTABLEKS                       R5 R1 K2 ["label"]
        9 SETTABLEKS                       R5 R4 K2 ["label"]
       11 GETTABLEKS                       R5 R1 K3 ["size"]
       13 SETTABLEKS                       R5 R4 K3 ["size"]
       15 GETTABLEKS                       R5 R1 K4 ["variant"]
       17 SETTABLEKS                       R5 R4 K4 ["variant"]
       19 GETTABLEKS                       R5 R1 K5 ["isDisabled"]
       21 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       23 GETTABLEKS                       R5 R1 K6 ["hasError"]
       25 SETTABLEKS                       R5 R4 K6 ["hasError"]
       27 GETTABLEKS                       R5 R1 K7 ["hasIcon"]
       29 SETTABLEKS                       R5 R4 K7 ["hasIcon"]
       31 GETTABLEKS                       R6 R1 K12 ["hasPlaceholder"]
       33 JUMPIFNOT                        R6 ; [+3]
       34 GETTABLEKS                       R5 R1 K8 ["placeholder"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K8 ["placeholder"]
       40 GETTABLEKS                       R6 R1 K13 ["hasHint"]
       42 JUMPIFNOT                        R6 ; [+3]
       43 GETTABLEKS                       R5 R1 K9 ["hint"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R4 K9 ["hint"]
       49 GETIMPORT                        R5 K16 [UDim.new]
       51 LOADN                            R6 0
       52 GETTABLEKS                       R7 R1 K10 ["width"]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K10 ["width"]
       57 CALL                             R2 2 -1
       58 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
        5 DUPTABLE                         R4 K8 [{"Large", "Medium", "Small", "XSmall"}]
        6 GETUPVAL                         R5 2
        7 LOADK                            R6 K4 ["Large"]
        8 LOADN                            R7 1
        9 LOADK                            R8 K9 ["auto-xy"]
       10 DUPTABLE                         R9 K11 [{"Dropdown"}]
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R10 R10 K0 ["createElement"]
       14 GETUPVAL                         R11 3
       15 DUPTABLE                         R12 K18 [{["label"] = "Label", ["size"], ["placeholder"] = "Select an option", ["width"]}]
       16 GETUPVAL                         R13 4
       17 GETTABLEKS                       R13 R13 K4 ["Large"]
       19 SETTABLEKS                       R13 R12 K14 ["size"]
       21 GETUPVAL                         R13 5
       22 SETTABLEKS                       R13 R12 K17 ["width"]
       24 CALL                             R10 2 1
       25 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       27 CALL                             R5 4 1
       28 SETTABLEKS                       R5 R4 K4 ["Large"]
       30 GETUPVAL                         R5 2
       31 LOADK                            R6 K5 ["Medium"]
       32 LOADN                            R7 2
       33 LOADK                            R8 K9 ["auto-xy"]
       34 DUPTABLE                         R9 K11 [{"Dropdown"}]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K0 ["createElement"]
       38 GETUPVAL                         R11 3
       39 DUPTABLE                         R12 K18 [{["label"] = "Label", ["size"], ["placeholder"] = "Select an option", ["width"]}]
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R13 R13 K5 ["Medium"]
       43 SETTABLEKS                       R13 R12 K14 ["size"]
       45 GETUPVAL                         R13 5
       46 SETTABLEKS                       R13 R12 K17 ["width"]
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       51 CALL                             R5 4 1
       52 SETTABLEKS                       R5 R4 K5 ["Medium"]
       54 GETUPVAL                         R5 2
       55 LOADK                            R6 K6 ["Small"]
       56 LOADN                            R7 3
       57 LOADK                            R8 K9 ["auto-xy"]
       58 DUPTABLE                         R9 K11 [{"Dropdown"}]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K0 ["createElement"]
       62 GETUPVAL                         R11 3
       63 DUPTABLE                         R12 K18 [{["label"] = "Label", ["size"], ["placeholder"] = "Select an option", ["width"]}]
       64 GETUPVAL                         R13 4
       65 GETTABLEKS                       R13 R13 K6 ["Small"]
       67 SETTABLEKS                       R13 R12 K14 ["size"]
       69 GETUPVAL                         R13 5
       70 SETTABLEKS                       R13 R12 K17 ["width"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       75 CALL                             R5 4 1
       76 SETTABLEKS                       R5 R4 K6 ["Small"]
       78 GETUPVAL                         R5 2
       79 LOADK                            R6 K7 ["XSmall"]
       80 LOADN                            R7 4
       81 LOADK                            R8 K9 ["auto-xy"]
       82 DUPTABLE                         R9 K11 [{"Dropdown"}]
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R10 R10 K0 ["createElement"]
       86 GETUPVAL                         R11 3
       87 DUPTABLE                         R12 K18 [{["label"] = "Label", ["size"], ["placeholder"] = "Select an option", ["width"]}]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K7 ["XSmall"]
       91 SETTABLEKS                       R13 R12 K14 ["size"]
       93 GETUPVAL                         R13 5
       94 SETTABLEKS                       R13 R12 K17 ["width"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       99 CALL                             R5 4 1
      100 SETTABLEKS                       R5 R4 K7 ["XSmall"]
      102 CALL                             R1 3 -1
      103 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationDropdownVariant"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K6 [{["Text"] = "Enable FoundationDropdownVariant to preview Dropdown variants.", ["tag"] = "auto-xy text-body-medium content-muted"}]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["createElement"]
       14 GETUPVAL                         R2 3
       15 DUPTABLE                         R3 K8 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
       16 DUPTABLE                         R4 K12 [{"Standard", "Contrast", "Utility"}]
       17 GETUPVAL                         R5 4
       18 LOADK                            R6 K9 ["Standard"]
       19 LOADN                            R7 1
       20 LOADK                            R8 K13 ["auto-xy"]
       21 DUPTABLE                         R9 K15 [{"Dropdown"}]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K1 ["createElement"]
       25 GETUPVAL                         R11 5
       26 DUPTABLE                         R12 K22 [{["label"] = "Label", ["variant"], ["placeholder"] = "Select an option", ["width"]}]
       27 GETUPVAL                         R13 6
       28 GETTABLEKS                       R13 R13 K9 ["Standard"]
       30 SETTABLEKS                       R13 R12 K18 ["variant"]
       32 GETUPVAL                         R13 7
       33 SETTABLEKS                       R13 R12 K21 ["width"]
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K14 ["Dropdown"]
       38 CALL                             R5 4 1
       39 SETTABLEKS                       R5 R4 K9 ["Standard"]
       41 GETUPVAL                         R5 4
       42 LOADK                            R6 K10 ["Contrast"]
       43 LOADN                            R7 2
       44 LOADK                            R8 K13 ["auto-xy"]
       45 DUPTABLE                         R9 K15 [{"Dropdown"}]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K1 ["createElement"]
       49 GETUPVAL                         R11 5
       50 DUPTABLE                         R12 K22 [{["label"] = "Label", ["variant"], ["placeholder"] = "Select an option", ["width"]}]
       51 GETUPVAL                         R13 6
       52 GETTABLEKS                       R13 R13 K10 ["Contrast"]
       54 SETTABLEKS                       R13 R12 K18 ["variant"]
       56 GETUPVAL                         R13 7
       57 SETTABLEKS                       R13 R12 K21 ["width"]
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K14 ["Dropdown"]
       62 CALL                             R5 4 1
       63 SETTABLEKS                       R5 R4 K10 ["Contrast"]
       65 GETUPVAL                         R5 4
       66 LOADK                            R6 K11 ["Utility"]
       67 LOADN                            R7 3
       68 LOADK                            R8 K13 ["auto-xy"]
       69 DUPTABLE                         R9 K15 [{"Dropdown"}]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K1 ["createElement"]
       73 GETUPVAL                         R11 5
       74 DUPTABLE                         R12 K22 [{["label"] = "Label", ["variant"], ["placeholder"] = "Select an option", ["width"]}]
       75 GETUPVAL                         R13 6
       76 GETTABLEKS                       R13 R13 K11 ["Utility"]
       78 SETTABLEKS                       R13 R12 K18 ["variant"]
       80 GETUPVAL                         R13 7
       81 SETTABLEKS                       R13 R12 K21 ["width"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K14 ["Dropdown"]
       86 CALL                             R5 4 1
       87 SETTABLEKS                       R5 R4 K11 ["Utility"]
       89 CALL                             R1 3 -1
       90 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
        5 DUPTABLE                         R4 K8 [{"Default", "WithHint", "Disabled", "Error"}]
        6 GETUPVAL                         R5 2
        7 LOADK                            R6 K4 ["Default"]
        8 LOADN                            R7 1
        9 LOADK                            R8 K9 ["auto-xy"]
       10 DUPTABLE                         R9 K11 [{"Dropdown"}]
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R10 R10 K0 ["createElement"]
       14 GETUPVAL                         R11 3
       15 DUPTABLE                         R12 K17 [{["label"] = "Label", ["placeholder"] = "Select an option", ["width"]}]
       16 GETUPVAL                         R13 4
       17 SETTABLEKS                       R13 R12 K16 ["width"]
       19 CALL                             R10 2 1
       20 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       22 CALL                             R5 4 1
       23 SETTABLEKS                       R5 R4 K4 ["Default"]
       25 GETUPVAL                         R5 2
       26 LOADK                            R6 K18 ["With hint"]
       27 LOADN                            R7 2
       28 LOADK                            R8 K9 ["auto-xy"]
       29 DUPTABLE                         R9 K11 [{"Dropdown"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K0 ["createElement"]
       33 GETUPVAL                         R11 3
       34 DUPTABLE                         R12 K21 [{["label"] = "Label", ["placeholder"] = "Select an option", ["hint"] = "Pick wisely", ["width"]}]
       35 GETUPVAL                         R13 4
       36 SETTABLEKS                       R13 R12 K16 ["width"]
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       41 CALL                             R5 4 1
       42 SETTABLEKS                       R5 R4 K5 ["WithHint"]
       44 GETUPVAL                         R5 2
       45 LOADK                            R6 K6 ["Disabled"]
       46 LOADN                            R7 3
       47 LOADK                            R8 K9 ["auto-xy"]
       48 DUPTABLE                         R9 K11 [{"Dropdown"}]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K0 ["createElement"]
       52 GETUPVAL                         R11 3
       53 DUPTABLE                         R12 K24 [{["label"] = "Label", ["placeholder"] = "Select an option", ["isDisabled"] = True, ["width"]}]
       54 GETUPVAL                         R13 4
       55 SETTABLEKS                       R13 R12 K16 ["width"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       60 CALL                             R5 4 1
       61 SETTABLEKS                       R5 R4 K6 ["Disabled"]
       63 GETUPVAL                         R5 2
       64 LOADK                            R6 K7 ["Error"]
       65 LOADN                            R7 4
       66 LOADK                            R8 K9 ["auto-xy"]
       67 DUPTABLE                         R9 K11 [{"Dropdown"}]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K0 ["createElement"]
       71 GETUPVAL                         R11 3
       72 DUPTABLE                         R12 K27 [{["label"] = "Label", ["placeholder"] = "Select an option", ["hasError"] = True, ["hint"] = "This field is required", ["width"]}]
       73 GETUPVAL                         R13 4
       74 SETTABLEKS                       R13 R12 K16 ["width"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       79 CALL                             R5 4 1
       80 SETTABLEKS                       R5 R4 K7 ["Error"]
       82 CALL                             R1 3 -1
       83 RETURN                           R1 -1

PROTO_9:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K4 [{[1] = "A", ["text"] = "Item A"}]
        3 DUPTABLE                         R3 K9 [{[1] = "B", ["text"] = "Item B", ["isDisabled"] = True}]
        4 SETLIST                          R1 R2 2 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K10 ["createElement"]
        9 GETUPVAL                         R3 1
       10 DUPTABLE                         R4 K13 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
       11 DUPTABLE                         R5 K17 [{"NarrowNarrow", "NarrowWide", "Fill"}]
       12 GETUPVAL                         R6 2
       13 LOADK                            R7 K18 ["Narrow dropdown — narrow items"]
       14 LOADN                            R8 1
       15 LOADK                            R9 K19 ["auto-xy"]
       16 DUPTABLE                         R10 K21 [{"Dropdown"}]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R11 R11 K10 ["createElement"]
       20 GETUPVAL                         R12 3
       21 DUPTABLE                         R13 K28 [{["label"] = "Label", ["placeholder"] = "Pick one", ["width"], ["items"]}]
       22 GETIMPORT                        R14 K31 [UDim.new]
       24 LOADN                            R15 0
       25 LOADN                            R16 150
       26 CALL                             R14 2 1
       27 SETTABLEKS                       R14 R13 K26 ["width"]
       29 SETTABLEKS                       R1 R13 K27 ["items"]
       31 CALL                             R11 2 1
       32 SETTABLEKS                       R11 R10 K20 ["Dropdown"]
       34 CALL                             R6 4 1
       35 SETTABLEKS                       R6 R5 K14 ["NarrowNarrow"]
       37 GETUPVAL                         R6 2
       38 LOADK                            R7 K32 ["Narrow dropdown — wide items (truncate)"]
       39 LOADN                            R8 2
       40 LOADK                            R9 K19 ["auto-xy"]
       41 DUPTABLE                         R10 K21 [{"Dropdown"}]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K10 ["createElement"]
       45 GETUPVAL                         R12 3
       46 DUPTABLE                         R13 K33 [{["label"] = "Label", ["placeholder"] = "Pick one", ["width"]}]
       47 GETIMPORT                        R14 K31 [UDim.new]
       49 LOADN                            R15 0
       50 LOADN                            R16 150
       51 CALL                             R14 2 1
       52 SETTABLEKS                       R14 R13 K26 ["width"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K20 ["Dropdown"]
       57 CALL                             R6 4 1
       58 SETTABLEKS                       R6 R5 K15 ["NarrowWide"]
       60 GETUPVAL                         R6 2
       61 LOADK                            R7 K34 ["Fill width — narrow items"]
       62 LOADN                            R8 3
       63 LOADK                            R9 K35 ["size-full-0 auto-y"]
       64 DUPTABLE                         R10 K21 [{"Dropdown"}]
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K10 ["createElement"]
       68 GETUPVAL                         R12 3
       69 DUPTABLE                         R13 K28 [{["label"] = "Label", ["placeholder"] = "Pick one", ["width"], ["items"]}]
       70 GETIMPORT                        R14 K31 [UDim.new]
       72 LOADN                            R15 1
       73 LOADN                            R16 0
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K26 ["width"]
       77 SETTABLEKS                       R1 R13 K27 ["items"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K20 ["Dropdown"]
       82 CALL                             R6 4 1
       83 SETTABLEKS                       R6 R5 K16 ["Fill"]
       85 CALL                             R2 3 -1
       86 RETURN                           R2 -1

PROTO_10:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K3 [{[1] = "First title", ["items"]}]
        3 NEWTABLE                         R3 0 2
        5 DUPTABLE                         R4 K10 [{["id"] = "a1", ["icon"] = "icons/common/robux", ["text"] = "Alpha 1"}]
        6 DUPTABLE                         R5 K13 [{["id"] = "a2", ["text"] = "Alpha 2"}]
        7 SETLIST                          R3 R4 2 [1]
        9 SETTABLEKS                       R3 R2 K2 ["items"]
       11 DUPTABLE                         R3 K14 [{"items"}]
       12 NEWTABLE                         R4 0 2
       14 DUPTABLE                         R5 K17 [{["id"] = "b1", ["text"] = "Beta 1"}]
       15 DUPTABLE                         R6 K22 [{["id"] = "b2", ["isDisabled"] = True, ["text"] = "Beta 2 (disabled)"}]
       16 SETLIST                          R4 R5 2 [1]
       18 SETTABLEKS                       R4 R3 K2 ["items"]
       20 DUPTABLE                         R4 K14 [{"items"}]
       21 NEWTABLE                         R5 0 1
       23 DUPTABLE                         R6 K25 [{["id"] = "c1", ["text"] = "Untitled group item"}]
       24 SETLIST                          R5 R6 1 [1]
       26 SETTABLEKS                       R5 R4 K2 ["items"]
       28 SETLIST                          R1 R2 3 [1]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K26 ["createElement"]
       33 GETUPVAL                         R3 1
       34 DUPTABLE                         R4 K32 [{["label"] = "With item groups", ["placeholder"] = "Select an option", ["width"], ["items"]}]
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K31 ["width"]
       38 SETTABLEKS                       R1 R4 K2 ["items"]
       40 CALL                             R2 2 -1
       41 RETURN                           R2 -1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 100
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 FASTCALL1                        TOSTRING R3 ; [+3]
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K1 [tostring]
       10 CALL                             R4 1 1
       11 DUPTABLE                         R7 K7 [{["id"], ["icon"] = "icons/common/robux", ["text"], ["isDisabled"]}]
       12 SETTABLEKS                       R4 R7 K2 ["id"]
       14 LOADK                            R9 K8 ["Item %*"]
       15 MOVE                             R11 R4
       16 NAMECALL                         R9 R9 K9 ["format"]
       18 CALL                             R9 2 1
       19 MOVE                             R8 R9
       20 SETTABLEKS                       R8 R7 K5 ["text"]
       22 MODK                             R9 R3 K10 [7]
       23 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 SETTABLEKS                       R8 R7 K6 ["isDisabled"]
       29 FASTCALL2                        TABLE_INSERT R0 R7 ; [+4]
       31 MOVE                             R6 R0
       32 GETIMPORT                        R5 K14 [table.insert]
       34 CALL                             R5 2 0
       35 FORNLOOP                         R1
       36 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_11]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R4 K11 [{["label"] = "Overflow", ["placeholder"] = "Choose a value", ["width"], ["maxHeight"] = 500, ["items"]}]
       12 GETUPVAL                         R5 2
       13 SETTABLEKS                       R5 R4 K7 ["width"]
       15 SETTABLEKS                       R1 R4 K10 ["items"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Dropdown"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Enums"]
       37 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["InputVariant"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K17 ["Types"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Components"]
       65 GETTABLEKS                       R11 R11 K18 ["View"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K19 [PROTO_0]
       69 DUPCLOSURE                       R12 K20 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R5
       74 DUPCLOSURE                       R13 K21 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 DUPCLOSURE                       R14 K22 [PROTO_4]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R8
       81 DUPCLOSURE                       R15 K23 [PROTO_5]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R12
       84 GETIMPORT                        R16 K26 [UDim.new]
       86 LOADN                            R17 0
       87 LOADN                            R18 220
       88 CALL                             R16 2 1
       89 DUPCLOSURE                       R17 K27 [PROTO_6]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R16
       96 DUPCLOSURE                       R18 K28 [PROTO_7]
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R16
      105 DUPCLOSURE                       R19 K29 [PROTO_8]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R16
      111 DUPCLOSURE                       R20 K30 [PROTO_9]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R12
      116 DUPCLOSURE                       R21 K31 [PROTO_10]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R16
      120 DUPCLOSURE                       R22 K32 [PROTO_12]
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R16
      124 DUPTABLE                         R23 K36 [{["summary"] = "Dropdown", ["stories"], ["controls"]}]
      125 NEWTABLE                         R24 0 7
      127 DUPTABLE                         R25 K40 [{["name"] = "Playground", ["story"]}]
      128 SETTABLEKS                       R15 R25 K39 ["story"]
      130 DUPTABLE                         R26 K42 [{["name"] = "Sizes", ["story"]}]
      131 SETTABLEKS                       R17 R26 K39 ["story"]
      133 DUPTABLE                         R27 K44 [{["name"] = "Variants", ["story"]}]
      134 SETTABLEKS                       R18 R27 K39 ["story"]
      136 DUPTABLE                         R28 K46 [{["name"] = "States", ["story"]}]
      137 SETTABLEKS                       R19 R28 K39 ["story"]
      139 DUPTABLE                         R29 K48 [{["name"] = "Widths", ["story"]}]
      140 SETTABLEKS                       R20 R29 K39 ["story"]
      142 DUPTABLE                         R30 K50 [{["name"] = "Item groups", ["story"]}]
      143 SETTABLEKS                       R21 R30 K39 ["story"]
      145 DUPTABLE                         R31 K52 [{["name"] = "Overflow", ["story"]}]
      146 SETTABLEKS                       R22 R31 K39 ["story"]
      148 SETLIST                          R24 R25 7 [1]
      150 SETTABLEKS                       R24 R23 K34 ["stories"]
      152 DUPTABLE                         R24 K70 [{["size"], ["variant"], ["isDisabled"] = False, ["hasError"] = False, ["hasIcon"] = True, ["hasPlaceholder"] = False, ["hasHint"] = False, ["label"] = "Dropdown Label", ["placeholder"] = "Choose an option", ["hint"] = "Optional hint text", ["width"] = 400}]
      153 GETTABLEKS                       R25 R3 K71 ["values"]
      155 MOVE                             R26 R6
      156 CALL                             R25 1 1
      157 SETTABLEKS                       R25 R24 K53 ["size"]
      159 GETTABLEKS                       R26 R5 K72 ["FoundationDropdownVariant"]
      161 JUMPIFNOT                        R26 ; [+5]
      162 GETTABLEKS                       R25 R3 K71 ["values"]
      164 MOVE                             R26 R7
      165 CALL                             R25 1 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R25
      168 SETTABLEKS                       R25 R24 K54 ["variant"]
      170 SETTABLEKS                       R24 R23 K35 ["controls"]
      172 RETURN                           R23 1
