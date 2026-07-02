PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 ["None"] ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R0 K1 ["Avatar"] ; [+3]
        8 DUPTABLE                         R2 K5 [{["type"] = "Avatar", ["userId"] = 24813339}]
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKS                    R0 K6 ["Mixed"] ; [+11]
       12 SUBK                             R3 R1 K8 [1]
       13 MODK                             R2 R3 K7 [3]
       14 JUMPIFNOTEQKN                    R2 K8 [1] ; [+3]
       16 DUPTABLE                         R3 K5 [{["type"] = "Avatar", ["userId"] = 24813339}]
       17 RETURN                           R3 1
       18 JUMPIFNOTEQKN                    R2 K9 [2] ; [+3]
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 GETUPVAL                         R3 0
       23 SUBK                             R6 R1 K8 [1]
       24 GETUPVAL                         R8 0
       25 LENGTH                           R7 R8
       26 MOD                              R5 R6 R7
       27 ADDK                             R4 R5 K8 [1]
       28 GETTABLE                         R2 R3 R4
       29 RETURN                           R2 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 ["None"] ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R0 K1 ["Hint"] ; [+12]
        8 DUPTABLE                         R2 K4 [{["type"] = "Hint", ["text"]}]
        9 GETUPVAL                         R4 0
       10 SUBK                             R7 R1 K5 [1]
       11 GETUPVAL                         R9 0
       12 LENGTH                           R8 R9
       13 MOD                              R6 R7 R8
       14 ADDK                             R5 R6 K5 [1]
       15 GETTABLE                         R3 R4 R5
       16 SETTABLEKS                       R3 R2 K3 ["text"]
       18 RETURN                           R2 1
       19 JUMPIFNOTEQKS                    R0 K6 ["Badge"] ; [+18]
       21 GETUPVAL                         R3 1
       22 SUBK                             R6 R1 K5 [1]
       23 GETUPVAL                         R8 1
       24 LENGTH                           R7 R8
       25 MOD                              R5 R6 R7
       26 ADDK                             R4 R5 K5 [1]
       27 GETTABLE                         R2 R3 R4
       28 DUPTABLE                         R3 K8 [{["type"] = "Badge", ["text"], ["variant"]}]
       29 GETTABLEKS                       R4 R2 K3 ["text"]
       31 SETTABLEKS                       R4 R3 K3 ["text"]
       33 GETTABLEKS                       R4 R2 K7 ["variant"]
       35 SETTABLEKS                       R4 R3 K7 ["variant"]
       37 RETURN                           R3 1
       38 MODK                             R2 R1 K9 [2]
       39 JUMPIFNOTEQKN                    R2 K5 [1] ; [+12]
       41 DUPTABLE                         R2 K4 [{["type"] = "Hint", ["text"]}]
       42 GETUPVAL                         R4 0
       43 SUBK                             R7 R1 K5 [1]
       44 GETUPVAL                         R9 0
       45 LENGTH                           R8 R9
       46 MOD                              R6 R7 R8
       47 ADDK                             R5 R6 K5 [1]
       48 GETTABLE                         R3 R4 R5
       49 SETTABLEKS                       R3 R2 K3 ["text"]
       51 RETURN                           R2 1
       52 GETUPVAL                         R3 1
       53 SUBK                             R6 R1 K5 [1]
       54 GETUPVAL                         R8 1
       55 LENGTH                           R7 R8
       56 MOD                              R5 R6 R7
       57 ADDK                             R4 R5 K5 [1]
       58 GETTABLE                         R2 R3 R4
       59 DUPTABLE                         R3 K8 [{["type"] = "Badge", ["text"], ["variant"]}]
       60 GETTABLEKS                       R4 R2 K3 ["text"]
       62 SETTABLEKS                       R4 R3 K3 ["text"]
       64 GETTABLEKS                       R4 R2 K7 ["variant"]
       66 SETTABLEKS                       R4 R3 K7 ["variant"]
       68 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Icon"]
        4 GETTABLEKS                       R1 R1 K1 ["ShieldCheck"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 NEWTABLE                         R2 0 4
       10 DUPTABLE                         R3 K7 [{["id"] = "A", ["text"] = "Item A", ["icon"]}]
       11 SETTABLEKS                       R1 R3 K6 ["icon"]
       13 DUPTABLE                         R4 K12 [{["id"] = "B", ["text"] = "Item B", ["isDisabled"] = True}]
       14 DUPTABLE                         R5 K15 [{["id"] = "G", ["text"] = "Long text item that should be truncated in the dropdown menu"}]
       15 DUPTABLE                         R6 K18 [{["id"] = "C", ["text"] = "Item C", ["icon"]}]
       16 SETTABLEKS                       R1 R6 K6 ["icon"]
       18 SETLIST                          R2 R3 4 [1]
       20 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["Text"], ["tag"] = "auto-xy text-label-medium content-muted", ["LayoutOrder"]}]
        5 SETTABLEKS                       R0 R4 K1 ["Text"]
        7 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["FoundationBaseMenuBeta"]
        6 JUMPIFNOT                        R3 ; [+58]
        7 GETTABLEKS                       R3 R1 K2 ["leading"]
        9 GETTABLEKS                       R4 R1 K3 ["trailing"]
       11 NEWTABLE                         R5 0 6
       13 LOADK                            R6 K4 ["Action one"]
       14 LOADK                            R7 K5 ["Action two"]
       15 LOADK                            R8 K6 ["Action three"]
       16 LOADK                            R9 K7 ["Other one"]
       17 LOADK                            R10 K8 ["Other two"]
       18 LOADK                            R11 K9 ["Other three"]
       19 SETLIST                          R5 R6 6 [1]
       21 NEWTABLE                         R6 0 0
       23 MOVE                             R7 R5
       24 LOADNIL                          R8
       25 LOADNIL                          R9
       26 FORGPREP                         R7
       27 DUPTABLE                         R14 K13 [{"id", "text", "leading", "trailing", "isDisabled"}]
       28 LOADK                            R16 K14 ["item-%*"]
       29 MOVE                             R18 R10
       30 NAMECALL                         R16 R16 K15 ["format"]
       32 CALL                             R16 2 1
       33 MOVE                             R15 R16
       34 SETTABLEKS                       R15 R14 K10 ["id"]
       36 SETTABLEKS                       R11 R14 K11 ["text"]
       38 GETUPVAL                         R15 1
       39 MOVE                             R16 R3
       40 MOVE                             R17 R10
       41 CALL                             R15 2 1
       42 SETTABLEKS                       R15 R14 K2 ["leading"]
       44 GETUPVAL                         R15 2
       45 MOVE                             R16 R4
       46 MOVE                             R17 R10
       47 CALL                             R15 2 1
       48 SETTABLEKS                       R15 R14 K3 ["trailing"]
       50 JUMPIFEQKN                       R10 K16 [5] ; [+2]
       52 LOADB                            R15 0 +1
       53 LOADB                            R15 1
       54 SETTABLEKS                       R15 R14 K12 ["isDisabled"]
       56 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       58 MOVE                             R13 R6
       59 GETIMPORT                        R12 K19 [table.insert]
       61 CALL                             R12 2 0
       62 FORGLOOP                         R7 2 ; [-36]
       64 MOVE                             R2 R6
       65 GETUPVAL                         R3 3
       66 GETTABLEKS                       R3 R3 K20 ["createElement"]
       68 GETUPVAL                         R4 4
       69 DUPTABLE                         R5 K30 [{"label", "size", "variant", "isDisabled", "hasError", "hasIcon", "placeholder", "hint", "width", "items"}]
       70 GETTABLEKS                       R6 R1 K21 ["label"]
       72 SETTABLEKS                       R6 R5 K21 ["label"]
       74 GETTABLEKS                       R6 R1 K22 ["size"]
       76 SETTABLEKS                       R6 R5 K22 ["size"]
       78 GETTABLEKS                       R6 R1 K23 ["variant"]
       80 SETTABLEKS                       R6 R5 K23 ["variant"]
       82 GETTABLEKS                       R6 R1 K12 ["isDisabled"]
       84 SETTABLEKS                       R6 R5 K12 ["isDisabled"]
       86 GETTABLEKS                       R6 R1 K24 ["hasError"]
       88 SETTABLEKS                       R6 R5 K24 ["hasError"]
       90 GETTABLEKS                       R6 R1 K25 ["hasIcon"]
       92 SETTABLEKS                       R6 R5 K25 ["hasIcon"]
       94 GETTABLEKS                       R7 R1 K31 ["hasPlaceholder"]
       96 JUMPIFNOT                        R7 ; [+3]
       97 GETTABLEKS                       R6 R1 K26 ["placeholder"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R6
      101 SETTABLEKS                       R6 R5 K26 ["placeholder"]
      103 GETTABLEKS                       R7 R1 K32 ["hasHint"]
      105 JUMPIFNOT                        R7 ; [+3]
      106 GETTABLEKS                       R6 R1 K27 ["hint"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R6
      110 SETTABLEKS                       R6 R5 K27 ["hint"]
      112 GETIMPORT                        R6 K35 [UDim.new]
      114 LOADN                            R7 0
      115 GETTABLEKS                       R8 R1 K28 ["width"]
      117 CALL                             R6 2 1
      118 SETTABLEKS                       R6 R5 K28 ["width"]
      120 SETTABLEKS                       R2 R5 K29 ["items"]
      122 CALL                             R3 2 -1
      123 RETURN                           R3 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K3 [{[1] = "First title", ["items"]}]
        3 NEWTABLE                         R3 0 2
        5 DUPTABLE                         R4 K9 [{["id"] = "a1", ["icon"], ["text"] = "Alpha 1"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K10 ["Icon"]
        9 GETTABLEKS                       R5 R5 K11 ["Robux"]
       11 SETTABLEKS                       R5 R4 K6 ["icon"]
       13 DUPTABLE                         R5 K14 [{["id"] = "a2", ["text"] = "Alpha 2"}]
       14 SETLIST                          R3 R4 2 [1]
       16 SETTABLEKS                       R3 R2 K2 ["items"]
       18 DUPTABLE                         R3 K15 [{"items"}]
       19 NEWTABLE                         R4 0 2
       21 DUPTABLE                         R5 K18 [{["id"] = "b1", ["text"] = "Beta 1"}]
       22 DUPTABLE                         R6 K23 [{["id"] = "b2", ["isDisabled"] = True, ["text"] = "Beta 2 (disabled)"}]
       23 SETLIST                          R4 R5 2 [1]
       25 SETTABLEKS                       R4 R3 K2 ["items"]
       27 DUPTABLE                         R4 K15 [{"items"}]
       28 NEWTABLE                         R5 0 1
       30 DUPTABLE                         R6 K26 [{["id"] = "c1", ["text"] = "Untitled group item"}]
       31 SETLIST                          R5 R6 1 [1]
       33 SETTABLEKS                       R5 R4 K2 ["items"]
       35 SETLIST                          R1 R2 3 [1]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K27 ["createElement"]
       40 GETUPVAL                         R3 2
       41 DUPTABLE                         R4 K33 [{["label"] = "With item groups", ["placeholder"] = "Select an option", ["width"], ["items"]}]
       42 GETUPVAL                         R5 3
       43 SETTABLEKS                       R5 R4 K32 ["width"]
       45 SETTABLEKS                       R1 R4 K2 ["items"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1

PROTO_13:
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
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["Icon"]
       17 GETTABLEKS                       R8 R8 K8 ["Robux"]
       19 SETTABLEKS                       R8 R7 K3 ["icon"]
       21 LOADK                            R9 K9 ["Item %*"]
       22 MOVE                             R11 R4
       23 NAMECALL                         R9 R9 K10 ["format"]
       25 CALL                             R9 2 1
       26 MOVE                             R8 R9
       27 SETTABLEKS                       R8 R7 K4 ["text"]
       29 MODK                             R9 R3 K11 [7]
       30 JUMPIFEQKN                       R9 K12 [0] ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 SETTABLEKS                       R8 R7 K5 ["isDisabled"]
       36 FASTCALL2                        TABLE_INSERT R0 R7 ; [+4]
       38 MOVE                             R6 R0
       39 GETIMPORT                        R5 K15 [table.insert]
       41 CALL                             R5 2 0
       42 FORNLOOP                         R1
       43 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_13]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["createElement"]
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K11 [{["label"] = "Overflow", ["placeholder"] = "Choose a value", ["width"], ["maxHeight"] = 500, ["items"]}]
       13 GETUPVAL                         R5 3
       14 SETTABLEKS                       R5 R4 K7 ["width"]
       16 SETTABLEKS                       R1 R4 K10 ["items"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationBaseMenuBeta"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K6 [{["Text"] = "Enable FoundationBaseMenuBeta to preview leading accessories.", ["tag"] = "auto-xy text-body-medium content-muted"}]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 NEWTABLE                         R1 0 4
       13 DUPTABLE                         R2 K12 [{["id"] = "edit", ["text"] = "Edit", ["leading"]}]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K13 ["Icon"]
       17 GETTABLEKS                       R3 R3 K14 ["Pencil"]
       19 SETTABLEKS                       R3 R2 K11 ["leading"]
       21 DUPTABLE                         R3 K17 [{["id"] = "share", ["text"] = "Share", ["leading"]}]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K13 ["Icon"]
       25 GETTABLEKS                       R4 R4 K18 ["PaperAirplane"]
       27 SETTABLEKS                       R4 R3 K11 ["leading"]
       29 DUPTABLE                         R4 K21 [{["id"] = "copy", ["text"] = "Duplicate", ["leading"]}]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K13 ["Icon"]
       33 GETTABLEKS                       R5 R5 K22 ["TwoStackedSquares"]
       35 SETTABLEKS                       R5 R4 K11 ["leading"]
       37 DUPTABLE                         R5 K25 [{["id"] = "delete", ["text"] = "Delete", ["leading"]}]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K13 ["Icon"]
       41 GETTABLEKS                       R6 R6 K26 ["TrashCan"]
       43 SETTABLEKS                       R6 R5 K11 ["leading"]
       45 SETLIST                          R1 R2 4 [1]
       47 NEWTABLE                         R2 0 3
       49 DUPTABLE                         R3 K29 [{["id"] = "u1", ["text"] = "Builderman", ["leading"]}]
       50 DUPTABLE                         R4 K34 [{["type"] = "Avatar", ["userId"] = 156}]
       51 SETTABLEKS                       R4 R3 K11 ["leading"]
       53 DUPTABLE                         R4 K37 [{["id"] = "u2", ["text"] = "User", ["leading"]}]
       54 DUPTABLE                         R5 K39 [{["type"] = "Avatar", ["userId"] = 24813339}]
       55 SETTABLEKS                       R5 R4 K11 ["leading"]
       57 DUPTABLE                         R5 K42 [{["id"] = "u3", ["text"] = "Roblox", ["leading"]}]
       58 DUPTABLE                         R6 K44 [{["type"] = "Avatar", ["userId"] = 1}]
       59 SETTABLEKS                       R6 R5 K11 ["leading"]
       61 SETLIST                          R2 R3 3 [1]
       63 NEWTABLE                         R3 0 4
       65 DUPTABLE                         R4 K47 [{["id"] = "i1", ["text"] = "Settings", ["leading"]}]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K13 ["Icon"]
       69 GETTABLEKS                       R5 R5 K14 ["Pencil"]
       71 SETTABLEKS                       R5 R4 K11 ["leading"]
       73 DUPTABLE                         R5 K50 [{["id"] = "i2", ["text"] = "Profile", ["leading"]}]
       74 DUPTABLE                         R6 K39 [{["type"] = "Avatar", ["userId"] = 24813339}]
       75 SETTABLEKS                       R6 R5 K11 ["leading"]
       77 DUPTABLE                         R6 K53 [{["id"] = "i3", ["text"] = "No leading"}]
       78 DUPTABLE                         R7 K56 [{["id"] = "i4", ["text"] = "Trash", ["leading"]}]
       79 GETUPVAL                         R8 3
       80 GETTABLEKS                       R8 R8 K13 ["Icon"]
       82 GETTABLEKS                       R8 R8 K26 ["TrashCan"]
       84 SETTABLEKS                       R8 R7 K11 ["leading"]
       86 SETLIST                          R3 R4 4 [1]
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R4 R4 K1 ["createElement"]
       91 GETUPVAL                         R5 4
       92 DUPTABLE                         R6 K58 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
       93 DUPTABLE                         R7 K62 [{"Icons", "Avatars", "Mixed"}]
       94 GETUPVAL                         R8 5
       95 LOADK                            R9 K63 ["Icon leading"]
       96 LOADN                            R10 1
       97 LOADK                            R11 K64 ["auto-xy"]
       98 DUPTABLE                         R12 K66 [{"Dropdown"}]
       99 GETUPVAL                         R13 1
      100 GETTABLEKS                       R13 R13 K1 ["createElement"]
      102 GETUPVAL                         R14 6
      103 DUPTABLE                         R15 K73 [{["label"] = "Action", ["placeholder"] = "Pick an action", ["width"], ["items"]}]
      104 GETUPVAL                         R16 7
      105 SETTABLEKS                       R16 R15 K71 ["width"]
      107 SETTABLEKS                       R1 R15 K72 ["items"]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K65 ["Dropdown"]
      112 CALL                             R8 4 1
      113 SETTABLEKS                       R8 R7 K59 ["Icons"]
      115 GETUPVAL                         R8 5
      116 LOADK                            R9 K74 ["Avatar leading"]
      117 LOADN                            R10 2
      118 LOADK                            R11 K64 ["auto-xy"]
      119 DUPTABLE                         R12 K66 [{"Dropdown"}]
      120 GETUPVAL                         R13 1
      121 GETTABLEKS                       R13 R13 K1 ["createElement"]
      123 GETUPVAL                         R14 6
      124 DUPTABLE                         R15 K77 [{["label"] = "Member", ["placeholder"] = "Pick a member", ["width"], ["items"]}]
      125 GETUPVAL                         R16 7
      126 SETTABLEKS                       R16 R15 K71 ["width"]
      128 SETTABLEKS                       R2 R15 K72 ["items"]
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K65 ["Dropdown"]
      133 CALL                             R8 4 1
      134 SETTABLEKS                       R8 R7 K60 ["Avatars"]
      136 GETUPVAL                         R8 5
      137 LOADK                            R9 K78 ["Mixed leading (some items have none)"]
      138 LOADN                            R10 3
      139 LOADK                            R11 K64 ["auto-xy"]
      140 DUPTABLE                         R12 K66 [{"Dropdown"}]
      141 GETUPVAL                         R13 1
      142 GETTABLEKS                       R13 R13 K1 ["createElement"]
      144 GETUPVAL                         R14 6
      145 DUPTABLE                         R15 K81 [{["label"] = "Sample", ["placeholder"] = "Pick one", ["width"], ["items"]}]
      146 GETUPVAL                         R16 7
      147 SETTABLEKS                       R16 R15 K71 ["width"]
      149 SETTABLEKS                       R3 R15 K72 ["items"]
      151 CALL                             R13 2 1
      152 SETTABLEKS                       R13 R12 K65 ["Dropdown"]
      154 CALL                             R8 4 1
      155 SETTABLEKS                       R8 R7 K61 ["Mixed"]
      157 CALL                             R4 3 -1
      158 RETURN                           R4 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationBaseMenuBeta"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K6 [{["Text"] = "Enable FoundationBaseMenuBeta to preview trailing accessories.", ["tag"] = "auto-xy text-body-medium content-muted"}]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 NEWTABLE                         R1 0 3
       13 DUPTABLE                         R2 K12 [{["id"] = "b", ["text"] = "Bold", ["trailing"]}]
       14 DUPTABLE                         R3 K16 [{["type"] = "Hint", ["text"] = "⌘B"}]
       15 SETTABLEKS                       R3 R2 K11 ["trailing"]
       17 DUPTABLE                         R3 K19 [{["id"] = "i", ["text"] = "Italic", ["trailing"]}]
       18 DUPTABLE                         R4 K21 [{["type"] = "Hint", ["text"] = "⌘I"}]
       19 SETTABLEKS                       R4 R3 K11 ["trailing"]
       21 DUPTABLE                         R4 K24 [{["id"] = "u", ["text"] = "Underline", ["trailing"]}]
       22 DUPTABLE                         R5 K26 [{["type"] = "Hint", ["text"] = "⌘U"}]
       23 SETTABLEKS                       R5 R4 K11 ["trailing"]
       25 SETLIST                          R1 R2 3 [1]
       27 NEWTABLE                         R2 0 3
       29 DUPTABLE                         R3 K29 [{["id"] = "new", ["text"] = "New feature", ["trailing"]}]
       30 DUPTABLE                         R4 K33 [{["type"] = "Badge", ["text"] = "New", ["variant"]}]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K34 ["Success"]
       34 SETTABLEKS                       R5 R4 K32 ["variant"]
       36 SETTABLEKS                       R4 R3 K11 ["trailing"]
       38 DUPTABLE                         R4 K37 [{["id"] = "beta", ["text"] = "Beta channel", ["trailing"]}]
       39 DUPTABLE                         R5 K39 [{["type"] = "Badge", ["text"] = "Beta", ["variant"]}]
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K40 ["Warning"]
       43 SETTABLEKS                       R6 R5 K32 ["variant"]
       45 SETTABLEKS                       R5 R4 K11 ["trailing"]
       47 DUPTABLE                         R5 K43 [{["id"] = "pro", ["text"] = "Pro mode", ["trailing"]}]
       48 DUPTABLE                         R6 K45 [{["type"] = "Badge", ["text"] = "Pro", ["variant"]}]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K46 ["Contrast"]
       52 SETTABLEKS                       R7 R6 K32 ["variant"]
       54 SETTABLEKS                       R6 R5 K11 ["trailing"]
       56 SETLIST                          R2 R3 3 [1]
       58 NEWTABLE                         R3 0 3
       60 DUPTABLE                         R4 K49 [{["id"] = "save", ["text"] = "Save", ["trailing"]}]
       61 DUPTABLE                         R5 K51 [{["type"] = "Hint", ["text"] = "⌘S"}]
       62 SETTABLEKS                       R5 R4 K11 ["trailing"]
       64 DUPTABLE                         R5 K54 [{["id"] = "publish", ["text"] = "Publish", ["trailing"]}]
       65 DUPTABLE                         R6 K33 [{["type"] = "Badge", ["text"] = "New", ["variant"]}]
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K34 ["Success"]
       69 SETTABLEKS                       R7 R6 K32 ["variant"]
       71 SETTABLEKS                       R6 R5 K11 ["trailing"]
       73 DUPTABLE                         R6 K57 [{["id"] = "plain", ["text"] = "Plain item"}]
       74 SETLIST                          R3 R4 3 [1]
       76 GETUPVAL                         R4 1
       77 GETTABLEKS                       R4 R4 K1 ["createElement"]
       79 GETUPVAL                         R5 4
       80 DUPTABLE                         R6 K59 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
       81 DUPTABLE                         R7 K63 [{"Hints", "Badges", "Mixed"}]
       82 GETUPVAL                         R8 5
       83 LOADK                            R9 K64 ["Hint trailing"]
       84 LOADN                            R10 1
       85 LOADK                            R11 K65 ["auto-xy"]
       86 DUPTABLE                         R12 K67 [{"Dropdown"}]
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K1 ["createElement"]
       90 GETUPVAL                         R14 6
       91 DUPTABLE                         R15 K74 [{["label"] = "Format", ["placeholder"] = "Pick a style", ["width"], ["items"]}]
       92 GETUPVAL                         R16 7
       93 SETTABLEKS                       R16 R15 K72 ["width"]
       95 SETTABLEKS                       R1 R15 K73 ["items"]
       97 CALL                             R13 2 1
       98 SETTABLEKS                       R13 R12 K66 ["Dropdown"]
      100 CALL                             R8 4 1
      101 SETTABLEKS                       R8 R7 K60 ["Hints"]
      103 GETUPVAL                         R8 5
      104 LOADK                            R9 K75 ["Badge trailing"]
      105 LOADN                            R10 2
      106 LOADK                            R11 K65 ["auto-xy"]
      107 DUPTABLE                         R12 K67 [{"Dropdown"}]
      108 GETUPVAL                         R13 1
      109 GETTABLEKS                       R13 R13 K1 ["createElement"]
      111 GETUPVAL                         R14 6
      112 DUPTABLE                         R15 K78 [{["label"] = "Channel", ["placeholder"] = "Pick a channel", ["width"], ["items"]}]
      113 GETUPVAL                         R16 7
      114 SETTABLEKS                       R16 R15 K72 ["width"]
      116 SETTABLEKS                       R2 R15 K73 ["items"]
      118 CALL                             R13 2 1
      119 SETTABLEKS                       R13 R12 K66 ["Dropdown"]
      121 CALL                             R8 4 1
      122 SETTABLEKS                       R8 R7 K61 ["Badges"]
      124 GETUPVAL                         R8 5
      125 LOADK                            R9 K79 ["Mixed trailing"]
      126 LOADN                            R10 3
      127 LOADK                            R11 K65 ["auto-xy"]
      128 DUPTABLE                         R12 K67 [{"Dropdown"}]
      129 GETUPVAL                         R13 1
      130 GETTABLEKS                       R13 R13 K1 ["createElement"]
      132 GETUPVAL                         R14 6
      133 DUPTABLE                         R15 K82 [{["label"] = "Action", ["placeholder"] = "Pick an action", ["width"], ["items"]}]
      134 GETUPVAL                         R16 7
      135 SETTABLEKS                       R16 R15 K72 ["width"]
      137 SETTABLEKS                       R3 R15 K73 ["items"]
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K66 ["Dropdown"]
      142 CALL                             R8 4 1
      143 SETTABLEKS                       R8 R7 K62 ["Mixed"]
      145 CALL                             R4 3 -1
      146 RETURN                           R4 -1

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationBaseMenuBeta"]
        3 JUMPIF                           R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K6 [{["Text"] = "Enable FoundationBaseMenuBeta to preview the Apple-style check column.", ["tag"] = "auto-xy text-body-medium content-muted"}]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 NEWTABLE                         R1 0 3
       13 DUPTABLE                         R2 K12 [{["id"] = "low", ["text"] = "Low quality", ["leading"]}]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K13 ["Icon"]
       17 GETTABLEKS                       R3 R3 K14 ["Pencil"]
       19 SETTABLEKS                       R3 R2 K11 ["leading"]
       21 DUPTABLE                         R3 K17 [{["id"] = "med", ["text"] = "Medium quality", ["leading"]}]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K13 ["Icon"]
       25 GETTABLEKS                       R4 R4 K18 ["PaperAirplane"]
       27 SETTABLEKS                       R4 R3 K11 ["leading"]
       29 DUPTABLE                         R4 K21 [{["id"] = "high", ["text"] = "High quality", ["leading"]}]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K13 ["Icon"]
       33 GETTABLEKS                       R5 R5 K22 ["ClipboardPencil"]
       35 SETTABLEKS                       R5 R4 K11 ["leading"]
       37 SETLIST                          R1 R2 3 [1]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K1 ["createElement"]
       42 GETUPVAL                         R3 4
       43 DUPTABLE                         R4 K24 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
       44 DUPTABLE                         R5 K27 [{"Selected", "Empty"}]
       45 GETUPVAL                         R6 5
       46 LOADK                            R7 K28 ["Pre-selected (check + leading both visible)"]
       47 LOADN                            R8 1
       48 LOADK                            R9 K29 ["auto-xy"]
       49 DUPTABLE                         R10 K31 [{"Dropdown"}]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R11 R11 K1 ["createElement"]
       53 GETUPVAL                         R12 6
       54 GETTABLEKS                       R12 R12 K32 ["Root"]
       56 DUPTABLE                         R13 K39 [{["value"] = "med", ["onItemChanged"], ["items"], ["label"] = "Quality", ["width"]}]
       57 DUPCLOSURE                       R14 K40 [PROTO_17]
       58 SETTABLEKS                       R14 R13 K34 ["onItemChanged"]
       60 SETTABLEKS                       R1 R13 K35 ["items"]
       62 GETUPVAL                         R14 7
       63 SETTABLEKS                       R14 R13 K38 ["width"]
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K30 ["Dropdown"]
       68 CALL                             R6 4 1
       69 SETTABLEKS                       R6 R5 K25 ["Selected"]
       71 GETUPVAL                         R6 5
       72 LOADK                            R7 K41 ["Unselected (no check column reserved)"]
       73 LOADN                            R8 2
       74 LOADK                            R9 K29 ["auto-xy"]
       75 DUPTABLE                         R10 K31 [{"Dropdown"}]
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K1 ["createElement"]
       79 GETUPVAL                         R12 6
       80 GETTABLEKS                       R12 R12 K32 ["Root"]
       82 DUPTABLE                         R13 K44 [{["onItemChanged"], ["items"], ["label"] = "Quality", ["placeholder"] = "Pick a quality", ["width"]}]
       83 DUPCLOSURE                       R14 K45 [PROTO_18]
       84 SETTABLEKS                       R14 R13 K34 ["onItemChanged"]
       86 SETTABLEKS                       R1 R13 K35 ["items"]
       88 GETUPVAL                         R14 7
       89 SETTABLEKS                       R14 R13 K38 ["width"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K30 ["Dropdown"]
       94 CALL                             R6 4 1
       95 SETTABLEKS                       R6 R5 K26 ["Empty"]
       97 CALL                             R2 3 -1
       98 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["BadgeVariant"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Dropdown"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Utility"]
       42 GETTABLEKS                       R8 R8 K15 ["Flags"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Enums"]
       49 GETTABLEKS                       R9 R9 K16 ["InputSize"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Enums"]
       56 GETTABLEKS                       R10 R10 K17 ["InputVariant"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Components"]
       63 GETTABLEKS                       R11 R11 K18 ["Text"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K12 ["Components"]
       70 GETTABLEKS                       R12 R12 K19 ["Types"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K12 ["Components"]
       77 GETTABLEKS                       R13 R13 K20 ["View"]
       79 CALL                             R12 1 1
       80 NEWTABLE                         R13 0 6
       82 GETTABLEKS                       R14 R2 K21 ["Icon"]
       84 GETTABLEKS                       R14 R14 K22 ["Pencil"]
       86 GETTABLEKS                       R15 R2 K21 ["Icon"]
       88 GETTABLEKS                       R15 R15 K23 ["ClipboardPencil"]
       90 GETTABLEKS                       R16 R2 K21 ["Icon"]
       92 GETTABLEKS                       R16 R16 K24 ["TextBBold"]
       94 GETTABLEKS                       R17 R2 K21 ["Icon"]
       96 GETTABLEKS                       R17 R17 K25 ["PaperAirplane"]
       98 GETTABLEKS                       R18 R2 K21 ["Icon"]
      100 GETTABLEKS                       R18 R18 K26 ["TwoStackedSquares"]
      102 GETTABLEKS                       R19 R2 K21 ["Icon"]
      104 GETTABLEKS                       R19 R19 K27 ["TrashCan"]
      106 SETLIST                          R13 R14 6 [1]
      108 NEWTABLE                         R14 0 6
      110 LOADK                            R15 K28 ["⌘B"]
      111 LOADK                            R16 K29 ["⌘I"]
      112 LOADK                            R17 K30 ["⌘C"]
      113 LOADK                            R18 K31 ["⌘V"]
      114 LOADK                            R19 K32 ["⌘S"]
      115 LOADK                            R20 K33 ["⌘Z"]
      116 SETLIST                          R14 R15 6 [1]
      118 NEWTABLE                         R15 0 4
      120 DUPTABLE                         R16 K37 [{["text"] = "New", ["variant"]}]
      121 GETTABLEKS                       R17 R5 K38 ["Success"]
      123 SETTABLEKS                       R17 R16 K36 ["variant"]
      125 DUPTABLE                         R17 K40 [{["text"] = "Beta", ["variant"]}]
      126 GETTABLEKS                       R18 R5 K41 ["Warning"]
      128 SETTABLEKS                       R18 R17 K36 ["variant"]
      130 DUPTABLE                         R18 K43 [{["text"] = "Pro", ["variant"]}]
      131 GETTABLEKS                       R19 R5 K44 ["Contrast"]
      133 SETTABLEKS                       R19 R18 K36 ["variant"]
      135 DUPTABLE                         R19 K46 [{["text"] = "Soon", ["variant"]}]
      136 GETTABLEKS                       R20 R5 K47 ["Neutral"]
      138 SETTABLEKS                       R20 R19 K36 ["variant"]
      140 SETLIST                          R15 R16 4 [1]
      142 DUPCLOSURE                       R16 K48 [PROTO_0]
      143 CAPTURE                          VAL R13
      144 DUPCLOSURE                       R17 K49 [PROTO_1]
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R15
      147 DUPCLOSURE                       R18 K50 [PROTO_2]
      148 CAPTURE                          VAL R2
      149 DUPCLOSURE                       R19 K51 [PROTO_4]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R7
      154 DUPCLOSURE                       R20 K52 [PROTO_5]
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R10
      157 DUPCLOSURE                       R21 K53 [PROTO_6]
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R10
      161 DUPCLOSURE                       R22 K54 [PROTO_7]
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R19
      167 GETIMPORT                        R23 K57 [UDim.new]
      169 LOADN                            R24 0
      170 LOADN                            R25 220
      171 CALL                             R23 2 1
      172 DUPCLOSURE                       R24 K58 [PROTO_8]
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R23
      179 DUPCLOSURE                       R25 K59 [PROTO_9]
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R23
      188 DUPCLOSURE                       R26 K60 [PROTO_10]
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R23
      194 DUPCLOSURE                       R27 K61 [PROTO_11]
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R19
      199 DUPCLOSURE                       R28 K62 [PROTO_12]
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R23
      204 DUPCLOSURE                       R29 K63 [PROTO_14]
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R23
      209 DUPCLOSURE                       R30 K64 [PROTO_15]
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R23
      218 DUPCLOSURE                       R31 K65 [PROTO_16]
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R23
      227 DUPCLOSURE                       R32 K66 [PROTO_19]
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R23
      236 DUPTABLE                         R33 K70 [{["summary"] = "Dropdown", ["stories"], ["controls"]}]
      237 NEWTABLE                         R34 0 10
      239 DUPTABLE                         R35 K74 [{["name"] = "Playground", ["story"]}]
      240 SETTABLEKS                       R22 R35 K73 ["story"]
      242 DUPTABLE                         R36 K76 [{["name"] = "Sizes", ["story"]}]
      243 SETTABLEKS                       R24 R36 K73 ["story"]
      245 DUPTABLE                         R37 K78 [{["name"] = "Variants", ["story"]}]
      246 SETTABLEKS                       R25 R37 K73 ["story"]
      248 DUPTABLE                         R38 K80 [{["name"] = "States", ["story"]}]
      249 SETTABLEKS                       R26 R38 K73 ["story"]
      251 DUPTABLE                         R39 K82 [{["name"] = "Widths", ["story"]}]
      252 SETTABLEKS                       R27 R39 K73 ["story"]
      254 DUPTABLE                         R40 K84 [{["name"] = "Item groups", ["story"]}]
      255 SETTABLEKS                       R28 R40 K73 ["story"]
      257 DUPTABLE                         R41 K86 [{["name"] = "Overflow", ["story"]}]
      258 SETTABLEKS                       R29 R41 K73 ["story"]
      260 DUPTABLE                         R42 K88 [{["name"] = "Leading accessories", ["story"]}]
      261 SETTABLEKS                       R30 R42 K73 ["story"]
      263 DUPTABLE                         R43 K90 [{["name"] = "Trailing accessories", ["story"]}]
      264 SETTABLEKS                       R31 R43 K73 ["story"]
      266 DUPTABLE                         R44 K92 [{["name"] = "Check column", ["story"]}]
      267 SETTABLEKS                       R32 R44 K73 ["story"]
      269 SETLIST                          R34 R35 10 [1]
      271 SETTABLEKS                       R34 R33 K68 ["stories"]
      273 DUPTABLE                         R34 K110 [{["size"], ["variant"], ["isDisabled"] = False, ["hasError"] = False, ["hasIcon"], ["hasPlaceholder"] = False, ["hasHint"] = False, ["label"] = "Dropdown Label", ["placeholder"] = "Choose an option", ["hint"] = "Optional hint text", ["width"] = 400, ["leading"], ["trailing"]}]
      274 GETTABLEKS                       R35 R4 K111 ["values"]
      276 MOVE                             R36 R8
      277 CALL                             R35 1 1
      278 SETTABLEKS                       R35 R34 K93 ["size"]
      280 GETTABLEKS                       R36 R7 K112 ["FoundationDropdownVariant"]
      282 JUMPIFNOT                        R36 ; [+5]
      283 GETTABLEKS                       R35 R4 K111 ["values"]
      285 MOVE                             R36 R9
      286 CALL                             R35 1 1
      287 JUMP                             ; [+1]
      288 LOADNIL                          R35
      289 SETTABLEKS                       R35 R34 K36 ["variant"]
      291 GETTABLEKS                       R36 R7 K113 ["FoundationBaseMenuBeta"]
      293 JUMPIFNOT                        R36 ; [+2]
      294 LOADNIL                          R35
      295 JUMP                             ; [+1]
      296 LOADB                            R35 1
      297 SETTABLEKS                       R35 R34 K97 ["hasIcon"]
      299 GETTABLEKS                       R36 R7 K113 ["FoundationBaseMenuBeta"]
      301 JUMPIFNOT                        R36 ; [+9]
      302 NEWTABLE                         R35 0 4
      304 LOADK                            R36 K21 ["Icon"]
      305 LOADK                            R37 K114 ["Avatar"]
      306 LOADK                            R38 K115 ["Mixed"]
      307 LOADK                            R39 K116 ["None"]
      308 SETLIST                          R35 R36 4 [1]
      310 JUMP                             ; [+1]
      311 LOADNIL                          R35
      312 SETTABLEKS                       R35 R34 K108 ["leading"]
      314 GETTABLEKS                       R36 R7 K113 ["FoundationBaseMenuBeta"]
      316 JUMPIFNOT                        R36 ; [+9]
      317 NEWTABLE                         R35 0 4
      319 LOADK                            R36 K117 ["Hint"]
      320 LOADK                            R37 K118 ["Badge"]
      321 LOADK                            R38 K115 ["Mixed"]
      322 LOADK                            R39 K116 ["None"]
      323 SETLIST                          R35 R36 4 [1]
      325 JUMP                             ; [+1]
      326 LOADNIL                          R35
      327 SETTABLEKS                       R35 R34 K109 ["trailing"]
      329 SETTABLEKS                       R34 R33 K69 ["controls"]
      331 RETURN                           R33 1
