PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["icons/common/safety"]
        2 JUMP                             ; [+1]
        3 LOADNIL                          R1
        4 NEWTABLE                         R2 0 4
        6 DUPTABLE                         R3 K4 [{"id", "text", "icon"}]
        7 LOADK                            R4 K5 ["A"]
        8 SETTABLEKS                       R4 R3 K1 ["id"]
       10 LOADK                            R4 K6 ["Item A"]
       11 SETTABLEKS                       R4 R3 K2 ["text"]
       13 SETTABLEKS                       R1 R3 K3 ["icon"]
       15 DUPTABLE                         R4 K8 [{"id", "text", "isDisabled"}]
       16 LOADK                            R5 K9 ["B"]
       17 SETTABLEKS                       R5 R4 K1 ["id"]
       19 LOADK                            R5 K10 ["Item B"]
       20 SETTABLEKS                       R5 R4 K2 ["text"]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K7 ["isDisabled"]
       25 DUPTABLE                         R5 K11 [{"id", "text"}]
       26 LOADK                            R6 K12 ["G"]
       27 SETTABLEKS                       R6 R5 K1 ["id"]
       29 LOADK                            R6 K13 ["Long text item that should be truncated in the dropdown menu"]
       30 SETTABLEKS                       R6 R5 K2 ["text"]
       32 DUPTABLE                         R6 K4 [{"id", "text", "icon"}]
       33 LOADK                            R7 K14 ["C"]
       34 SETTABLEKS                       R7 R6 K1 ["id"]
       36 LOADK                            R7 K15 ["Item C"]
       37 SETTABLEKS                       R7 R6 K2 ["text"]
       39 SETTABLEKS                       R1 R6 K3 ["icon"]
       41 SETLIST                          R2 R3 4 [1]
       43 RETURN                           R2 1

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
        4 DUPTABLE                         R4 K4 [{"Text", "tag", "LayoutOrder"}]
        5 SETTABLEKS                       R0 R4 K1 ["Text"]
        7 LOADK                            R5 K5 ["auto-xy text-label-medium content-muted"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

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
       17 DUPTABLE                         R10 K9 [{"Text", "tag", "LayoutOrder"}]
       18 SETTABLEKS                       R0 R10 K8 ["Text"]
       20 LOADK                            R11 K10 ["auto-xy text-label-medium content-muted"]
       21 SETTABLEKS                       R11 R10 K1 ["tag"]
       23 LOADN                            R11 1
       24 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K5 ["Label"]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K0 ["createElement"]
       32 GETUPVAL                         R9 1
       33 DUPTABLE                         R10 K3 [{"tag", "LayoutOrder"}]
       34 SETTABLEKS                       R2 R10 K1 ["tag"]
       36 LOADN                            R11 2
       37 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       39 MOVE                             R11 R3
       40 CALL                             R8 3 1
       41 SETTABLEKS                       R8 R7 K6 ["Content"]
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1

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
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col gap-xlarge size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K8 [{"Large", "Medium", "Small", "XSmall"}]
        9 GETUPVAL                         R5 2
       10 LOADK                            R6 K4 ["Large"]
       11 LOADN                            R7 1
       12 LOADK                            R8 K9 ["auto-xy"]
       13 DUPTABLE                         R9 K11 [{"Dropdown"}]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K0 ["createElement"]
       17 GETUPVAL                         R11 3
       18 DUPTABLE                         R12 K16 [{"label", "size", "placeholder", "width"}]
       19 LOADK                            R13 K17 ["Label"]
       20 SETTABLEKS                       R13 R12 K12 ["label"]
       22 GETUPVAL                         R13 4
       23 GETTABLEKS                       R13 R13 K4 ["Large"]
       25 SETTABLEKS                       R13 R12 K13 ["size"]
       27 LOADK                            R13 K18 ["Select an option"]
       28 SETTABLEKS                       R13 R12 K14 ["placeholder"]
       30 GETUPVAL                         R13 5
       31 SETTABLEKS                       R13 R12 K15 ["width"]
       33 CALL                             R10 2 1
       34 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       36 CALL                             R5 4 1
       37 SETTABLEKS                       R5 R4 K4 ["Large"]
       39 GETUPVAL                         R5 2
       40 LOADK                            R6 K5 ["Medium"]
       41 LOADN                            R7 2
       42 LOADK                            R8 K9 ["auto-xy"]
       43 DUPTABLE                         R9 K11 [{"Dropdown"}]
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K0 ["createElement"]
       47 GETUPVAL                         R11 3
       48 DUPTABLE                         R12 K16 [{"label", "size", "placeholder", "width"}]
       49 LOADK                            R13 K17 ["Label"]
       50 SETTABLEKS                       R13 R12 K12 ["label"]
       52 GETUPVAL                         R13 4
       53 GETTABLEKS                       R13 R13 K5 ["Medium"]
       55 SETTABLEKS                       R13 R12 K13 ["size"]
       57 LOADK                            R13 K18 ["Select an option"]
       58 SETTABLEKS                       R13 R12 K14 ["placeholder"]
       60 GETUPVAL                         R13 5
       61 SETTABLEKS                       R13 R12 K15 ["width"]
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       66 CALL                             R5 4 1
       67 SETTABLEKS                       R5 R4 K5 ["Medium"]
       69 GETUPVAL                         R5 2
       70 LOADK                            R6 K6 ["Small"]
       71 LOADN                            R7 3
       72 LOADK                            R8 K9 ["auto-xy"]
       73 DUPTABLE                         R9 K11 [{"Dropdown"}]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K0 ["createElement"]
       77 GETUPVAL                         R11 3
       78 DUPTABLE                         R12 K16 [{"label", "size", "placeholder", "width"}]
       79 LOADK                            R13 K17 ["Label"]
       80 SETTABLEKS                       R13 R12 K12 ["label"]
       82 GETUPVAL                         R13 4
       83 GETTABLEKS                       R13 R13 K6 ["Small"]
       85 SETTABLEKS                       R13 R12 K13 ["size"]
       87 LOADK                            R13 K18 ["Select an option"]
       88 SETTABLEKS                       R13 R12 K14 ["placeholder"]
       90 GETUPVAL                         R13 5
       91 SETTABLEKS                       R13 R12 K15 ["width"]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       96 CALL                             R5 4 1
       97 SETTABLEKS                       R5 R4 K6 ["Small"]
       99 GETUPVAL                         R5 2
      100 LOADK                            R6 K7 ["XSmall"]
      101 LOADN                            R7 4
      102 LOADK                            R8 K9 ["auto-xy"]
      103 DUPTABLE                         R9 K11 [{"Dropdown"}]
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R10 R10 K0 ["createElement"]
      107 GETUPVAL                         R11 3
      108 DUPTABLE                         R12 K16 [{"label", "size", "placeholder", "width"}]
      109 LOADK                            R13 K17 ["Label"]
      110 SETTABLEKS                       R13 R12 K12 ["label"]
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R13 R13 K7 ["XSmall"]
      115 SETTABLEKS                       R13 R12 K13 ["size"]
      117 LOADK                            R13 K18 ["Select an option"]
      118 SETTABLEKS                       R13 R12 K14 ["placeholder"]
      120 GETUPVAL                         R13 5
      121 SETTABLEKS                       R13 R12 K15 ["width"]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
      126 CALL                             R5 4 1
      127 SETTABLEKS                       R5 R4 K7 ["XSmall"]
      129 CALL                             R1 3 -1
      130 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationDropdownVariant"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K4 [{"Text", "tag"}]
        9 LOADK                            R4 K5 ["Enable FoundationDropdownVariant to preview Dropdown variants."]
       10 SETTABLEKS                       R4 R3 K2 ["Text"]
       12 LOADK                            R4 K6 ["auto-xy text-body-medium content-muted"]
       13 SETTABLEKS                       R4 R3 K3 ["tag"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K1 ["createElement"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K7 [{"tag"}]
       22 LOADK                            R4 K8 ["col gap-xlarge size-full-0 auto-y"]
       23 SETTABLEKS                       R4 R3 K3 ["tag"]
       25 DUPTABLE                         R4 K12 [{"Standard", "Contrast", "Utility"}]
       26 GETUPVAL                         R5 4
       27 LOADK                            R6 K9 ["Standard"]
       28 LOADN                            R7 1
       29 LOADK                            R8 K13 ["auto-xy"]
       30 DUPTABLE                         R9 K15 [{"Dropdown"}]
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R10 R10 K1 ["createElement"]
       34 GETUPVAL                         R11 5
       35 DUPTABLE                         R12 K20 [{"label", "variant", "placeholder", "width"}]
       36 LOADK                            R13 K21 ["Label"]
       37 SETTABLEKS                       R13 R12 K16 ["label"]
       39 GETUPVAL                         R13 6
       40 GETTABLEKS                       R13 R13 K9 ["Standard"]
       42 SETTABLEKS                       R13 R12 K17 ["variant"]
       44 LOADK                            R13 K22 ["Select an option"]
       45 SETTABLEKS                       R13 R12 K18 ["placeholder"]
       47 GETUPVAL                         R13 7
       48 SETTABLEKS                       R13 R12 K19 ["width"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K14 ["Dropdown"]
       53 CALL                             R5 4 1
       54 SETTABLEKS                       R5 R4 K9 ["Standard"]
       56 GETUPVAL                         R5 4
       57 LOADK                            R6 K10 ["Contrast"]
       58 LOADN                            R7 2
       59 LOADK                            R8 K13 ["auto-xy"]
       60 DUPTABLE                         R9 K15 [{"Dropdown"}]
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K1 ["createElement"]
       64 GETUPVAL                         R11 5
       65 DUPTABLE                         R12 K20 [{"label", "variant", "placeholder", "width"}]
       66 LOADK                            R13 K21 ["Label"]
       67 SETTABLEKS                       R13 R12 K16 ["label"]
       69 GETUPVAL                         R13 6
       70 GETTABLEKS                       R13 R13 K10 ["Contrast"]
       72 SETTABLEKS                       R13 R12 K17 ["variant"]
       74 LOADK                            R13 K22 ["Select an option"]
       75 SETTABLEKS                       R13 R12 K18 ["placeholder"]
       77 GETUPVAL                         R13 7
       78 SETTABLEKS                       R13 R12 K19 ["width"]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K14 ["Dropdown"]
       83 CALL                             R5 4 1
       84 SETTABLEKS                       R5 R4 K10 ["Contrast"]
       86 GETUPVAL                         R5 4
       87 LOADK                            R6 K11 ["Utility"]
       88 LOADN                            R7 3
       89 LOADK                            R8 K13 ["auto-xy"]
       90 DUPTABLE                         R9 K15 [{"Dropdown"}]
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R10 R10 K1 ["createElement"]
       94 GETUPVAL                         R11 5
       95 DUPTABLE                         R12 K20 [{"label", "variant", "placeholder", "width"}]
       96 LOADK                            R13 K21 ["Label"]
       97 SETTABLEKS                       R13 R12 K16 ["label"]
       99 GETUPVAL                         R13 6
      100 GETTABLEKS                       R13 R13 K11 ["Utility"]
      102 SETTABLEKS                       R13 R12 K17 ["variant"]
      104 LOADK                            R13 K22 ["Select an option"]
      105 SETTABLEKS                       R13 R12 K18 ["placeholder"]
      107 GETUPVAL                         R13 7
      108 SETTABLEKS                       R13 R12 K19 ["width"]
      110 CALL                             R10 2 1
      111 SETTABLEKS                       R10 R9 K14 ["Dropdown"]
      113 CALL                             R5 4 1
      114 SETTABLEKS                       R5 R4 K11 ["Utility"]
      116 CALL                             R1 3 -1
      117 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col gap-xlarge size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K8 [{"Default", "WithHint", "Disabled", "Error"}]
        9 GETUPVAL                         R5 2
       10 LOADK                            R6 K4 ["Default"]
       11 LOADN                            R7 1
       12 LOADK                            R8 K9 ["auto-xy"]
       13 DUPTABLE                         R9 K11 [{"Dropdown"}]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K0 ["createElement"]
       17 GETUPVAL                         R11 3
       18 DUPTABLE                         R12 K15 [{"label", "placeholder", "width"}]
       19 LOADK                            R13 K16 ["Label"]
       20 SETTABLEKS                       R13 R12 K12 ["label"]
       22 LOADK                            R13 K17 ["Select an option"]
       23 SETTABLEKS                       R13 R12 K13 ["placeholder"]
       25 GETUPVAL                         R13 4
       26 SETTABLEKS                       R13 R12 K14 ["width"]
       28 CALL                             R10 2 1
       29 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       31 CALL                             R5 4 1
       32 SETTABLEKS                       R5 R4 K4 ["Default"]
       34 GETUPVAL                         R5 2
       35 LOADK                            R6 K18 ["With hint"]
       36 LOADN                            R7 2
       37 LOADK                            R8 K9 ["auto-xy"]
       38 DUPTABLE                         R9 K11 [{"Dropdown"}]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K0 ["createElement"]
       42 GETUPVAL                         R11 3
       43 DUPTABLE                         R12 K20 [{"label", "placeholder", "hint", "width"}]
       44 LOADK                            R13 K16 ["Label"]
       45 SETTABLEKS                       R13 R12 K12 ["label"]
       47 LOADK                            R13 K17 ["Select an option"]
       48 SETTABLEKS                       R13 R12 K13 ["placeholder"]
       50 LOADK                            R13 K21 ["Pick wisely"]
       51 SETTABLEKS                       R13 R12 K19 ["hint"]
       53 GETUPVAL                         R13 4
       54 SETTABLEKS                       R13 R12 K14 ["width"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       59 CALL                             R5 4 1
       60 SETTABLEKS                       R5 R4 K5 ["WithHint"]
       62 GETUPVAL                         R5 2
       63 LOADK                            R6 K6 ["Disabled"]
       64 LOADN                            R7 3
       65 LOADK                            R8 K9 ["auto-xy"]
       66 DUPTABLE                         R9 K11 [{"Dropdown"}]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K0 ["createElement"]
       70 GETUPVAL                         R11 3
       71 DUPTABLE                         R12 K23 [{"label", "placeholder", "isDisabled", "width"}]
       72 LOADK                            R13 K16 ["Label"]
       73 SETTABLEKS                       R13 R12 K12 ["label"]
       75 LOADK                            R13 K17 ["Select an option"]
       76 SETTABLEKS                       R13 R12 K13 ["placeholder"]
       78 LOADB                            R13 1
       79 SETTABLEKS                       R13 R12 K22 ["isDisabled"]
       81 GETUPVAL                         R13 4
       82 SETTABLEKS                       R13 R12 K14 ["width"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
       87 CALL                             R5 4 1
       88 SETTABLEKS                       R5 R4 K6 ["Disabled"]
       90 GETUPVAL                         R5 2
       91 LOADK                            R6 K7 ["Error"]
       92 LOADN                            R7 4
       93 LOADK                            R8 K9 ["auto-xy"]
       94 DUPTABLE                         R9 K11 [{"Dropdown"}]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K0 ["createElement"]
       98 GETUPVAL                         R11 3
       99 DUPTABLE                         R12 K25 [{"label", "placeholder", "hasError", "hint", "width"}]
      100 LOADK                            R13 K16 ["Label"]
      101 SETTABLEKS                       R13 R12 K12 ["label"]
      103 LOADK                            R13 K17 ["Select an option"]
      104 SETTABLEKS                       R13 R12 K13 ["placeholder"]
      106 LOADB                            R13 1
      107 SETTABLEKS                       R13 R12 K24 ["hasError"]
      109 LOADK                            R13 K26 ["This field is required"]
      110 SETTABLEKS                       R13 R12 K19 ["hint"]
      112 GETUPVAL                         R13 4
      113 SETTABLEKS                       R13 R12 K14 ["width"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K10 ["Dropdown"]
      118 CALL                             R5 4 1
      119 SETTABLEKS                       R5 R4 K7 ["Error"]
      121 CALL                             R1 3 -1
      122 RETURN                           R1 -1

PROTO_9:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K2 [{"id", "text"}]
        3 LOADK                            R3 K3 ["A"]
        4 SETTABLEKS                       R3 R2 K0 ["id"]
        6 LOADK                            R3 K4 ["Item A"]
        7 SETTABLEKS                       R3 R2 K1 ["text"]
        9 DUPTABLE                         R3 K6 [{"id", "text", "isDisabled"}]
       10 LOADK                            R4 K7 ["B"]
       11 SETTABLEKS                       R4 R3 K0 ["id"]
       13 LOADK                            R4 K8 ["Item B"]
       14 SETTABLEKS                       R4 R3 K1 ["text"]
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       19 SETLIST                          R1 R2 2 [1]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K9 ["createElement"]
       24 GETUPVAL                         R3 1
       25 DUPTABLE                         R4 K11 [{"tag"}]
       26 LOADK                            R5 K12 ["col gap-xlarge size-full-0 auto-y"]
       27 SETTABLEKS                       R5 R4 K10 ["tag"]
       29 DUPTABLE                         R5 K16 [{"NarrowNarrow", "NarrowWide", "Fill"}]
       30 GETUPVAL                         R6 2
       31 LOADK                            R7 K17 ["Narrow dropdown — narrow items"]
       32 LOADN                            R8 1
       33 LOADK                            R9 K18 ["auto-xy"]
       34 DUPTABLE                         R10 K20 [{"Dropdown"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K9 ["createElement"]
       38 GETUPVAL                         R12 3
       39 DUPTABLE                         R13 K25 [{"label", "placeholder", "width", "items"}]
       40 LOADK                            R14 K26 ["Label"]
       41 SETTABLEKS                       R14 R13 K21 ["label"]
       43 LOADK                            R14 K27 ["Pick one"]
       44 SETTABLEKS                       R14 R13 K22 ["placeholder"]
       46 GETIMPORT                        R14 K30 [UDim.new]
       48 LOADN                            R15 0
       49 LOADN                            R16 150
       50 CALL                             R14 2 1
       51 SETTABLEKS                       R14 R13 K23 ["width"]
       53 SETTABLEKS                       R1 R13 K24 ["items"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K19 ["Dropdown"]
       58 CALL                             R6 4 1
       59 SETTABLEKS                       R6 R5 K13 ["NarrowNarrow"]
       61 GETUPVAL                         R6 2
       62 LOADK                            R7 K31 ["Narrow dropdown — wide items (truncate)"]
       63 LOADN                            R8 2
       64 LOADK                            R9 K18 ["auto-xy"]
       65 DUPTABLE                         R10 K20 [{"Dropdown"}]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K9 ["createElement"]
       69 GETUPVAL                         R12 3
       70 DUPTABLE                         R13 K32 [{"label", "placeholder", "width"}]
       71 LOADK                            R14 K26 ["Label"]
       72 SETTABLEKS                       R14 R13 K21 ["label"]
       74 LOADK                            R14 K27 ["Pick one"]
       75 SETTABLEKS                       R14 R13 K22 ["placeholder"]
       77 GETIMPORT                        R14 K30 [UDim.new]
       79 LOADN                            R15 0
       80 LOADN                            R16 150
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K23 ["width"]
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K19 ["Dropdown"]
       87 CALL                             R6 4 1
       88 SETTABLEKS                       R6 R5 K14 ["NarrowWide"]
       90 GETUPVAL                         R6 2
       91 LOADK                            R7 K33 ["Fill width — narrow items"]
       92 LOADN                            R8 3
       93 LOADK                            R9 K34 ["size-full-0 auto-y"]
       94 DUPTABLE                         R10 K20 [{"Dropdown"}]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K9 ["createElement"]
       98 GETUPVAL                         R12 3
       99 DUPTABLE                         R13 K25 [{"label", "placeholder", "width", "items"}]
      100 LOADK                            R14 K26 ["Label"]
      101 SETTABLEKS                       R14 R13 K21 ["label"]
      103 LOADK                            R14 K27 ["Pick one"]
      104 SETTABLEKS                       R14 R13 K22 ["placeholder"]
      106 GETIMPORT                        R14 K30 [UDim.new]
      108 LOADN                            R15 1
      109 LOADN                            R16 0
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K23 ["width"]
      113 SETTABLEKS                       R1 R13 K24 ["items"]
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K19 ["Dropdown"]
      118 CALL                             R6 4 1
      119 SETTABLEKS                       R6 R5 K15 ["Fill"]
      121 CALL                             R2 3 -1
      122 RETURN                           R2 -1

PROTO_10:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K2 [{"title", "items"}]
        3 LOADK                            R3 K3 ["First title"]
        4 SETTABLEKS                       R3 R2 K0 ["title"]
        6 NEWTABLE                         R3 0 2
        8 DUPTABLE                         R4 K7 [{"id", "icon", "text"}]
        9 LOADK                            R5 K8 ["a1"]
       10 SETTABLEKS                       R5 R4 K4 ["id"]
       12 LOADK                            R5 K9 ["icons/common/robux"]
       13 SETTABLEKS                       R5 R4 K5 ["icon"]
       15 LOADK                            R5 K10 ["Alpha 1"]
       16 SETTABLEKS                       R5 R4 K6 ["text"]
       18 DUPTABLE                         R5 K11 [{"id", "text"}]
       19 LOADK                            R6 K12 ["a2"]
       20 SETTABLEKS                       R6 R5 K4 ["id"]
       22 LOADK                            R6 K13 ["Alpha 2"]
       23 SETTABLEKS                       R6 R5 K6 ["text"]
       25 SETLIST                          R3 R4 2 [1]
       27 SETTABLEKS                       R3 R2 K1 ["items"]
       29 DUPTABLE                         R3 K14 [{"items"}]
       30 NEWTABLE                         R4 0 2
       32 DUPTABLE                         R5 K11 [{"id", "text"}]
       33 LOADK                            R6 K15 ["b1"]
       34 SETTABLEKS                       R6 R5 K4 ["id"]
       36 LOADK                            R6 K16 ["Beta 1"]
       37 SETTABLEKS                       R6 R5 K6 ["text"]
       39 DUPTABLE                         R6 K18 [{"id", "isDisabled", "text"}]
       40 LOADK                            R7 K19 ["b2"]
       41 SETTABLEKS                       R7 R6 K4 ["id"]
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K17 ["isDisabled"]
       46 LOADK                            R7 K20 ["Beta 2 (disabled)"]
       47 SETTABLEKS                       R7 R6 K6 ["text"]
       49 SETLIST                          R4 R5 2 [1]
       51 SETTABLEKS                       R4 R3 K1 ["items"]
       53 DUPTABLE                         R4 K14 [{"items"}]
       54 NEWTABLE                         R5 0 1
       56 DUPTABLE                         R6 K11 [{"id", "text"}]
       57 LOADK                            R7 K21 ["c1"]
       58 SETTABLEKS                       R7 R6 K4 ["id"]
       60 LOADK                            R7 K22 ["Untitled group item"]
       61 SETTABLEKS                       R7 R6 K6 ["text"]
       63 SETLIST                          R5 R6 1 [1]
       65 SETTABLEKS                       R5 R4 K1 ["items"]
       67 SETLIST                          R1 R2 3 [1]
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K23 ["createElement"]
       72 GETUPVAL                         R3 1
       73 DUPTABLE                         R4 K27 [{"label", "placeholder", "width", "items"}]
       74 LOADK                            R5 K28 ["With item groups"]
       75 SETTABLEKS                       R5 R4 K24 ["label"]
       77 LOADK                            R5 K29 ["Select an option"]
       78 SETTABLEKS                       R5 R4 K25 ["placeholder"]
       80 GETUPVAL                         R5 2
       81 SETTABLEKS                       R5 R4 K26 ["width"]
       83 SETTABLEKS                       R1 R4 K1 ["items"]
       85 CALL                             R2 2 -1
       86 RETURN                           R2 -1

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
       11 DUPTABLE                         R7 K6 [{"id", "icon", "text", "isDisabled"}]
       12 SETTABLEKS                       R4 R7 K2 ["id"]
       14 LOADK                            R8 K7 ["icons/common/robux"]
       15 SETTABLEKS                       R8 R7 K3 ["icon"]
       17 LOADK                            R9 K8 ["Item %*"]
       18 MOVE                             R11 R4
       19 NAMECALL                         R9 R9 K9 ["format"]
       21 CALL                             R9 2 1
       22 MOVE                             R8 R9
       23 SETTABLEKS                       R8 R7 K4 ["text"]
       25 MODK                             R9 R3 K10 [7]
       26 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       28 LOADB                            R8 0 +1
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K5 ["isDisabled"]
       32 FASTCALL2                        TABLE_INSERT R0 R7 ; [+4]
       34 MOVE                             R6 R0
       35 GETIMPORT                        R5 K14 [table.insert]
       37 CALL                             R5 2 0
       38 FORNLOOP                         R1
       39 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_11]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R4 K8 [{"label", "placeholder", "width", "maxHeight", "items"}]
       12 LOADK                            R5 K9 ["Overflow"]
       13 SETTABLEKS                       R5 R4 K3 ["label"]
       15 LOADK                            R5 K10 ["Choose a value"]
       16 SETTABLEKS                       R5 R4 K4 ["placeholder"]
       18 GETUPVAL                         R5 2
       19 SETTABLEKS                       R5 R4 K5 ["width"]
       21 LOADN                            R5 244
       22 SETTABLEKS                       R5 R4 K6 ["maxHeight"]
       24 SETTABLEKS                       R1 R4 K7 ["items"]
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

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
      124 DUPTABLE                         R23 K36 [{"summary", "stories", "controls"}]
      125 LOADK                            R24 K10 ["Dropdown"]
      126 SETTABLEKS                       R24 R23 K33 ["summary"]
      128 NEWTABLE                         R24 0 7
      130 DUPTABLE                         R25 K39 [{"name", "story"}]
      131 LOADK                            R26 K40 ["Playground"]
      132 SETTABLEKS                       R26 R25 K37 ["name"]
      134 SETTABLEKS                       R15 R25 K38 ["story"]
      136 DUPTABLE                         R26 K39 [{"name", "story"}]
      137 LOADK                            R27 K41 ["Sizes"]
      138 SETTABLEKS                       R27 R26 K37 ["name"]
      140 SETTABLEKS                       R17 R26 K38 ["story"]
      142 DUPTABLE                         R27 K39 [{"name", "story"}]
      143 LOADK                            R28 K42 ["Variants"]
      144 SETTABLEKS                       R28 R27 K37 ["name"]
      146 SETTABLEKS                       R18 R27 K38 ["story"]
      148 DUPTABLE                         R28 K39 [{"name", "story"}]
      149 LOADK                            R29 K43 ["States"]
      150 SETTABLEKS                       R29 R28 K37 ["name"]
      152 SETTABLEKS                       R19 R28 K38 ["story"]
      154 DUPTABLE                         R29 K39 [{"name", "story"}]
      155 LOADK                            R30 K44 ["Widths"]
      156 SETTABLEKS                       R30 R29 K37 ["name"]
      158 SETTABLEKS                       R20 R29 K38 ["story"]
      160 DUPTABLE                         R30 K39 [{"name", "story"}]
      161 LOADK                            R31 K45 ["Item groups"]
      162 SETTABLEKS                       R31 R30 K37 ["name"]
      164 SETTABLEKS                       R21 R30 K38 ["story"]
      166 DUPTABLE                         R31 K39 [{"name", "story"}]
      167 LOADK                            R32 K46 ["Overflow"]
      168 SETTABLEKS                       R32 R31 K37 ["name"]
      170 SETTABLEKS                       R22 R31 K38 ["story"]
      172 SETLIST                          R24 R25 7 [1]
      174 SETTABLEKS                       R24 R23 K34 ["stories"]
      176 DUPTABLE                         R24 K58 [{"size", "variant", "isDisabled", "hasError", "hasIcon", "hasPlaceholder", "hasHint", "label", "placeholder", "hint", "width"}]
      177 GETTABLEKS                       R25 R3 K59 ["values"]
      179 MOVE                             R26 R6
      180 CALL                             R25 1 1
      181 SETTABLEKS                       R25 R24 K47 ["size"]
      183 GETTABLEKS                       R26 R5 K60 ["FoundationDropdownVariant"]
      185 JUMPIFNOT                        R26 ; [+5]
      186 GETTABLEKS                       R25 R3 K59 ["values"]
      188 MOVE                             R26 R7
      189 CALL                             R25 1 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R25
      192 SETTABLEKS                       R25 R24 K48 ["variant"]
      194 LOADB                            R25 0
      195 SETTABLEKS                       R25 R24 K49 ["isDisabled"]
      197 LOADB                            R25 0
      198 SETTABLEKS                       R25 R24 K50 ["hasError"]
      200 LOADB                            R25 1
      201 SETTABLEKS                       R25 R24 K51 ["hasIcon"]
      203 LOADB                            R25 0
      204 SETTABLEKS                       R25 R24 K52 ["hasPlaceholder"]
      206 LOADB                            R25 0
      207 SETTABLEKS                       R25 R24 K53 ["hasHint"]
      209 LOADK                            R25 K61 ["Dropdown Label"]
      210 SETTABLEKS                       R25 R24 K54 ["label"]
      212 LOADK                            R25 K62 ["Choose an option"]
      213 SETTABLEKS                       R25 R24 K55 ["placeholder"]
      215 LOADK                            R25 K63 ["Optional hint text"]
      216 SETTABLEKS                       R25 R24 K56 ["hint"]
      218 LOADN                            R25 144
      219 SETTABLEKS                       R25 R24 K57 ["width"]
      221 SETTABLEKS                       R24 R23 K35 ["controls"]
      223 RETURN                           R23 1
