PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 ["None"] ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R0 K1 ["Avatar"] ; [+9]
        8 DUPTABLE                         R2 K4 [{"type", "userId"}]
        9 LOADK                            R3 K1 ["Avatar"]
       10 SETTABLEKS                       R3 R2 K2 ["type"]
       12 LOADK                            R3 K5 [24813339]
       13 SETTABLEKS                       R3 R2 K3 ["userId"]
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKS                    R0 K6 ["Mixed"] ; [+17]
       18 SUBK                             R3 R1 K8 [1]
       19 MODK                             R2 R3 K7 [3]
       20 JUMPIFNOTEQKN                    R2 K8 [1] ; [+9]
       22 DUPTABLE                         R3 K4 [{"type", "userId"}]
       23 LOADK                            R4 K1 ["Avatar"]
       24 SETTABLEKS                       R4 R3 K2 ["type"]
       26 LOADK                            R4 K5 [24813339]
       27 SETTABLEKS                       R4 R3 K3 ["userId"]
       29 RETURN                           R3 1
       30 JUMPIFNOTEQKN                    R2 K9 [2] ; [+3]
       32 LOADNIL                          R3
       33 RETURN                           R3 1
       34 GETUPVAL                         R3 0
       35 SUBK                             R6 R1 K8 [1]
       36 GETUPVAL                         R8 0
       37 LENGTH                           R7 R8
       38 MOD                              R5 R6 R7
       39 ADDK                             R4 R5 K8 [1]
       40 GETTABLE                         R2 R3 R4
       41 RETURN                           R2 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 ["None"] ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R0 K1 ["Hint"] ; [+15]
        8 DUPTABLE                         R2 K4 [{"type", "text"}]
        9 LOADK                            R3 K1 ["Hint"]
       10 SETTABLEKS                       R3 R2 K2 ["type"]
       12 GETUPVAL                         R4 0
       13 SUBK                             R7 R1 K5 [1]
       14 GETUPVAL                         R9 0
       15 LENGTH                           R8 R9
       16 MOD                              R6 R7 R8
       17 ADDK                             R5 R6 K5 [1]
       18 GETTABLE                         R3 R4 R5
       19 SETTABLEKS                       R3 R2 K3 ["text"]
       21 RETURN                           R2 1
       22 JUMPIFNOTEQKS                    R0 K6 ["Badge"] ; [+21]
       24 GETUPVAL                         R3 1
       25 SUBK                             R6 R1 K5 [1]
       26 GETUPVAL                         R8 1
       27 LENGTH                           R7 R8
       28 MOD                              R5 R6 R7
       29 ADDK                             R4 R5 K5 [1]
       30 GETTABLE                         R2 R3 R4
       31 DUPTABLE                         R3 K8 [{"type", "text", "variant"}]
       32 LOADK                            R4 K6 ["Badge"]
       33 SETTABLEKS                       R4 R3 K2 ["type"]
       35 GETTABLEKS                       R4 R2 K3 ["text"]
       37 SETTABLEKS                       R4 R3 K3 ["text"]
       39 GETTABLEKS                       R4 R2 K7 ["variant"]
       41 SETTABLEKS                       R4 R3 K7 ["variant"]
       43 RETURN                           R3 1
       44 MODK                             R2 R1 K9 [2]
       45 JUMPIFNOTEQKN                    R2 K5 [1] ; [+15]
       47 DUPTABLE                         R2 K4 [{"type", "text"}]
       48 LOADK                            R3 K1 ["Hint"]
       49 SETTABLEKS                       R3 R2 K2 ["type"]
       51 GETUPVAL                         R4 0
       52 SUBK                             R7 R1 K5 [1]
       53 GETUPVAL                         R9 0
       54 LENGTH                           R8 R9
       55 MOD                              R6 R7 R8
       56 ADDK                             R5 R6 K5 [1]
       57 GETTABLE                         R3 R4 R5
       58 SETTABLEKS                       R3 R2 K3 ["text"]
       60 RETURN                           R2 1
       61 GETUPVAL                         R3 1
       62 SUBK                             R6 R1 K5 [1]
       63 GETUPVAL                         R8 1
       64 LENGTH                           R7 R8
       65 MOD                              R5 R6 R7
       66 ADDK                             R4 R5 K5 [1]
       67 GETTABLE                         R2 R3 R4
       68 DUPTABLE                         R3 K8 [{"type", "text", "variant"}]
       69 LOADK                            R4 K6 ["Badge"]
       70 SETTABLEKS                       R4 R3 K2 ["type"]
       72 GETTABLEKS                       R4 R2 K3 ["text"]
       74 SETTABLEKS                       R4 R3 K3 ["text"]
       76 GETTABLEKS                       R4 R2 K7 ["variant"]
       78 SETTABLEKS                       R4 R3 K7 ["variant"]
       80 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Icon"]
        4 GETTABLEKS                       R1 R1 K1 ["ShieldCheck"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 NEWTABLE                         R2 0 4
       10 DUPTABLE                         R3 K5 [{"id", "text", "icon"}]
       11 LOADK                            R4 K6 ["A"]
       12 SETTABLEKS                       R4 R3 K2 ["id"]
       14 LOADK                            R4 K7 ["Item A"]
       15 SETTABLEKS                       R4 R3 K3 ["text"]
       17 SETTABLEKS                       R1 R3 K4 ["icon"]
       19 DUPTABLE                         R4 K9 [{"id", "text", "isDisabled"}]
       20 LOADK                            R5 K10 ["B"]
       21 SETTABLEKS                       R5 R4 K2 ["id"]
       23 LOADK                            R5 K11 ["Item B"]
       24 SETTABLEKS                       R5 R4 K3 ["text"]
       26 LOADB                            R5 1
       27 SETTABLEKS                       R5 R4 K8 ["isDisabled"]
       29 DUPTABLE                         R5 K12 [{"id", "text"}]
       30 LOADK                            R6 K13 ["G"]
       31 SETTABLEKS                       R6 R5 K2 ["id"]
       33 LOADK                            R6 K14 ["Long text item that should be truncated in the dropdown menu"]
       34 SETTABLEKS                       R6 R5 K3 ["text"]
       36 DUPTABLE                         R6 K5 [{"id", "text", "icon"}]
       37 LOADK                            R7 K15 ["C"]
       38 SETTABLEKS                       R7 R6 K2 ["id"]
       40 LOADK                            R7 K16 ["Item C"]
       41 SETTABLEKS                       R7 R6 K3 ["text"]
       43 SETTABLEKS                       R1 R6 K4 ["icon"]
       45 SETLIST                          R2 R3 4 [1]
       47 RETURN                           R2 1

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
        4 DUPTABLE                         R4 K4 [{"Text", "tag", "LayoutOrder"}]
        5 SETTABLEKS                       R0 R4 K1 ["Text"]
        7 LOADK                            R5 K5 ["auto-xy text-label-medium content-muted"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K2 [{"title", "items"}]
        3 LOADK                            R3 K3 ["First title"]
        4 SETTABLEKS                       R3 R2 K0 ["title"]
        6 NEWTABLE                         R3 0 2
        8 DUPTABLE                         R4 K7 [{"id", "icon", "text"}]
        9 LOADK                            R5 K8 ["a1"]
       10 SETTABLEKS                       R5 R4 K4 ["id"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K9 ["Icon"]
       15 GETTABLEKS                       R5 R5 K10 ["Robux"]
       17 SETTABLEKS                       R5 R4 K5 ["icon"]
       19 LOADK                            R5 K11 ["Alpha 1"]
       20 SETTABLEKS                       R5 R4 K6 ["text"]
       22 DUPTABLE                         R5 K12 [{"id", "text"}]
       23 LOADK                            R6 K13 ["a2"]
       24 SETTABLEKS                       R6 R5 K4 ["id"]
       26 LOADK                            R6 K14 ["Alpha 2"]
       27 SETTABLEKS                       R6 R5 K6 ["text"]
       29 SETLIST                          R3 R4 2 [1]
       31 SETTABLEKS                       R3 R2 K1 ["items"]
       33 DUPTABLE                         R3 K15 [{"items"}]
       34 NEWTABLE                         R4 0 2
       36 DUPTABLE                         R5 K12 [{"id", "text"}]
       37 LOADK                            R6 K16 ["b1"]
       38 SETTABLEKS                       R6 R5 K4 ["id"]
       40 LOADK                            R6 K17 ["Beta 1"]
       41 SETTABLEKS                       R6 R5 K6 ["text"]
       43 DUPTABLE                         R6 K19 [{"id", "isDisabled", "text"}]
       44 LOADK                            R7 K20 ["b2"]
       45 SETTABLEKS                       R7 R6 K4 ["id"]
       47 LOADB                            R7 1
       48 SETTABLEKS                       R7 R6 K18 ["isDisabled"]
       50 LOADK                            R7 K21 ["Beta 2 (disabled)"]
       51 SETTABLEKS                       R7 R6 K6 ["text"]
       53 SETLIST                          R4 R5 2 [1]
       55 SETTABLEKS                       R4 R3 K1 ["items"]
       57 DUPTABLE                         R4 K15 [{"items"}]
       58 NEWTABLE                         R5 0 1
       60 DUPTABLE                         R6 K12 [{"id", "text"}]
       61 LOADK                            R7 K22 ["c1"]
       62 SETTABLEKS                       R7 R6 K4 ["id"]
       64 LOADK                            R7 K23 ["Untitled group item"]
       65 SETTABLEKS                       R7 R6 K6 ["text"]
       67 SETLIST                          R5 R6 1 [1]
       69 SETTABLEKS                       R5 R4 K1 ["items"]
       71 SETLIST                          R1 R2 3 [1]
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R2 R2 K24 ["createElement"]
       76 GETUPVAL                         R3 2
       77 DUPTABLE                         R4 K28 [{"label", "placeholder", "width", "items"}]
       78 LOADK                            R5 K29 ["With item groups"]
       79 SETTABLEKS                       R5 R4 K25 ["label"]
       81 LOADK                            R5 K30 ["Select an option"]
       82 SETTABLEKS                       R5 R4 K26 ["placeholder"]
       84 GETUPVAL                         R5 3
       85 SETTABLEKS                       R5 R4 K27 ["width"]
       87 SETTABLEKS                       R1 R4 K1 ["items"]
       89 CALL                             R2 2 -1
       90 RETURN                           R2 -1

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
       12 DUPTABLE                         R4 K8 [{"label", "placeholder", "width", "maxHeight", "items"}]
       13 LOADK                            R5 K9 ["Overflow"]
       14 SETTABLEKS                       R5 R4 K3 ["label"]
       16 LOADK                            R5 K10 ["Choose a value"]
       17 SETTABLEKS                       R5 R4 K4 ["placeholder"]
       19 GETUPVAL                         R5 3
       20 SETTABLEKS                       R5 R4 K5 ["width"]
       22 LOADN                            R5 244
       23 SETTABLEKS                       R5 R4 K6 ["maxHeight"]
       25 SETTABLEKS                       R1 R4 K7 ["items"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationBaseMenuBeta"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K4 [{"Text", "tag"}]
        9 LOADK                            R4 K5 ["Enable FoundationBaseMenuBeta to preview leading accessories."]
       10 SETTABLEKS                       R4 R3 K2 ["Text"]
       12 LOADK                            R4 K6 ["auto-xy text-body-medium content-muted"]
       13 SETTABLEKS                       R4 R3 K3 ["tag"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 NEWTABLE                         R1 0 4
       19 DUPTABLE                         R2 K10 [{"id", "text", "leading"}]
       20 LOADK                            R3 K11 ["edit"]
       21 SETTABLEKS                       R3 R2 K7 ["id"]
       23 LOADK                            R3 K12 ["Edit"]
       24 SETTABLEKS                       R3 R2 K8 ["text"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K13 ["Icon"]
       29 GETTABLEKS                       R3 R3 K14 ["Pencil"]
       31 SETTABLEKS                       R3 R2 K9 ["leading"]
       33 DUPTABLE                         R3 K10 [{"id", "text", "leading"}]
       34 LOADK                            R4 K15 ["share"]
       35 SETTABLEKS                       R4 R3 K7 ["id"]
       37 LOADK                            R4 K16 ["Share"]
       38 SETTABLEKS                       R4 R3 K8 ["text"]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K13 ["Icon"]
       43 GETTABLEKS                       R4 R4 K17 ["PaperAirplane"]
       45 SETTABLEKS                       R4 R3 K9 ["leading"]
       47 DUPTABLE                         R4 K10 [{"id", "text", "leading"}]
       48 LOADK                            R5 K18 ["copy"]
       49 SETTABLEKS                       R5 R4 K7 ["id"]
       51 LOADK                            R5 K19 ["Duplicate"]
       52 SETTABLEKS                       R5 R4 K8 ["text"]
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K13 ["Icon"]
       57 GETTABLEKS                       R5 R5 K20 ["TwoStackedSquares"]
       59 SETTABLEKS                       R5 R4 K9 ["leading"]
       61 DUPTABLE                         R5 K10 [{"id", "text", "leading"}]
       62 LOADK                            R6 K21 ["delete"]
       63 SETTABLEKS                       R6 R5 K7 ["id"]
       65 LOADK                            R6 K22 ["Delete"]
       66 SETTABLEKS                       R6 R5 K8 ["text"]
       68 GETUPVAL                         R6 3
       69 GETTABLEKS                       R6 R6 K13 ["Icon"]
       71 GETTABLEKS                       R6 R6 K23 ["TrashCan"]
       73 SETTABLEKS                       R6 R5 K9 ["leading"]
       75 SETLIST                          R1 R2 4 [1]
       77 NEWTABLE                         R2 0 3
       79 DUPTABLE                         R3 K10 [{"id", "text", "leading"}]
       80 LOADK                            R4 K24 ["u1"]
       81 SETTABLEKS                       R4 R3 K7 ["id"]
       83 LOADK                            R4 K25 ["Builderman"]
       84 SETTABLEKS                       R4 R3 K8 ["text"]
       86 DUPTABLE                         R4 K28 [{"type", "userId"}]
       87 LOADK                            R5 K29 ["Avatar"]
       88 SETTABLEKS                       R5 R4 K26 ["type"]
       90 LOADN                            R5 156
       91 SETTABLEKS                       R5 R4 K27 ["userId"]
       93 SETTABLEKS                       R4 R3 K9 ["leading"]
       95 DUPTABLE                         R4 K10 [{"id", "text", "leading"}]
       96 LOADK                            R5 K30 ["u2"]
       97 SETTABLEKS                       R5 R4 K7 ["id"]
       99 LOADK                            R5 K31 ["User"]
      100 SETTABLEKS                       R5 R4 K8 ["text"]
      102 DUPTABLE                         R5 K28 [{"type", "userId"}]
      103 LOADK                            R6 K29 ["Avatar"]
      104 SETTABLEKS                       R6 R5 K26 ["type"]
      106 LOADK                            R6 K32 [24813339]
      107 SETTABLEKS                       R6 R5 K27 ["userId"]
      109 SETTABLEKS                       R5 R4 K9 ["leading"]
      111 DUPTABLE                         R5 K10 [{"id", "text", "leading"}]
      112 LOADK                            R6 K33 ["u3"]
      113 SETTABLEKS                       R6 R5 K7 ["id"]
      115 LOADK                            R6 K34 ["Roblox"]
      116 SETTABLEKS                       R6 R5 K8 ["text"]
      118 DUPTABLE                         R6 K28 [{"type", "userId"}]
      119 LOADK                            R7 K29 ["Avatar"]
      120 SETTABLEKS                       R7 R6 K26 ["type"]
      122 LOADN                            R7 1
      123 SETTABLEKS                       R7 R6 K27 ["userId"]
      125 SETTABLEKS                       R6 R5 K9 ["leading"]
      127 SETLIST                          R2 R3 3 [1]
      129 NEWTABLE                         R3 0 4
      131 DUPTABLE                         R4 K10 [{"id", "text", "leading"}]
      132 LOADK                            R5 K35 ["i1"]
      133 SETTABLEKS                       R5 R4 K7 ["id"]
      135 LOADK                            R5 K36 ["Settings"]
      136 SETTABLEKS                       R5 R4 K8 ["text"]
      138 GETUPVAL                         R5 3
      139 GETTABLEKS                       R5 R5 K13 ["Icon"]
      141 GETTABLEKS                       R5 R5 K14 ["Pencil"]
      143 SETTABLEKS                       R5 R4 K9 ["leading"]
      145 DUPTABLE                         R5 K10 [{"id", "text", "leading"}]
      146 LOADK                            R6 K37 ["i2"]
      147 SETTABLEKS                       R6 R5 K7 ["id"]
      149 LOADK                            R6 K38 ["Profile"]
      150 SETTABLEKS                       R6 R5 K8 ["text"]
      152 DUPTABLE                         R6 K28 [{"type", "userId"}]
      153 LOADK                            R7 K29 ["Avatar"]
      154 SETTABLEKS                       R7 R6 K26 ["type"]
      156 LOADK                            R7 K32 [24813339]
      157 SETTABLEKS                       R7 R6 K27 ["userId"]
      159 SETTABLEKS                       R6 R5 K9 ["leading"]
      161 DUPTABLE                         R6 K39 [{"id", "text"}]
      162 LOADK                            R7 K40 ["i3"]
      163 SETTABLEKS                       R7 R6 K7 ["id"]
      165 LOADK                            R7 K41 ["No leading"]
      166 SETTABLEKS                       R7 R6 K8 ["text"]
      168 DUPTABLE                         R7 K10 [{"id", "text", "leading"}]
      169 LOADK                            R8 K42 ["i4"]
      170 SETTABLEKS                       R8 R7 K7 ["id"]
      172 LOADK                            R8 K43 ["Trash"]
      173 SETTABLEKS                       R8 R7 K8 ["text"]
      175 GETUPVAL                         R8 3
      176 GETTABLEKS                       R8 R8 K13 ["Icon"]
      178 GETTABLEKS                       R8 R8 K23 ["TrashCan"]
      180 SETTABLEKS                       R8 R7 K9 ["leading"]
      182 SETLIST                          R3 R4 4 [1]
      184 GETUPVAL                         R4 1
      185 GETTABLEKS                       R4 R4 K1 ["createElement"]
      187 GETUPVAL                         R5 4
      188 DUPTABLE                         R6 K44 [{"tag"}]
      189 LOADK                            R7 K45 ["col gap-xlarge size-full-0 auto-y"]
      190 SETTABLEKS                       R7 R6 K3 ["tag"]
      192 DUPTABLE                         R7 K49 [{"Icons", "Avatars", "Mixed"}]
      193 GETUPVAL                         R8 5
      194 LOADK                            R9 K50 ["Icon leading"]
      195 LOADN                            R10 1
      196 LOADK                            R11 K51 ["auto-xy"]
      197 DUPTABLE                         R12 K53 [{"Dropdown"}]
      198 GETUPVAL                         R13 1
      199 GETTABLEKS                       R13 R13 K1 ["createElement"]
      201 GETUPVAL                         R14 6
      202 DUPTABLE                         R15 K58 [{"label", "placeholder", "width", "items"}]
      203 LOADK                            R16 K59 ["Action"]
      204 SETTABLEKS                       R16 R15 K54 ["label"]
      206 LOADK                            R16 K60 ["Pick an action"]
      207 SETTABLEKS                       R16 R15 K55 ["placeholder"]
      209 GETUPVAL                         R16 7
      210 SETTABLEKS                       R16 R15 K56 ["width"]
      212 SETTABLEKS                       R1 R15 K57 ["items"]
      214 CALL                             R13 2 1
      215 SETTABLEKS                       R13 R12 K52 ["Dropdown"]
      217 CALL                             R8 4 1
      218 SETTABLEKS                       R8 R7 K46 ["Icons"]
      220 GETUPVAL                         R8 5
      221 LOADK                            R9 K61 ["Avatar leading"]
      222 LOADN                            R10 2
      223 LOADK                            R11 K51 ["auto-xy"]
      224 DUPTABLE                         R12 K53 [{"Dropdown"}]
      225 GETUPVAL                         R13 1
      226 GETTABLEKS                       R13 R13 K1 ["createElement"]
      228 GETUPVAL                         R14 6
      229 DUPTABLE                         R15 K58 [{"label", "placeholder", "width", "items"}]
      230 LOADK                            R16 K62 ["Member"]
      231 SETTABLEKS                       R16 R15 K54 ["label"]
      233 LOADK                            R16 K63 ["Pick a member"]
      234 SETTABLEKS                       R16 R15 K55 ["placeholder"]
      236 GETUPVAL                         R16 7
      237 SETTABLEKS                       R16 R15 K56 ["width"]
      239 SETTABLEKS                       R2 R15 K57 ["items"]
      241 CALL                             R13 2 1
      242 SETTABLEKS                       R13 R12 K52 ["Dropdown"]
      244 CALL                             R8 4 1
      245 SETTABLEKS                       R8 R7 K47 ["Avatars"]
      247 GETUPVAL                         R8 5
      248 LOADK                            R9 K64 ["Mixed leading (some items have none)"]
      249 LOADN                            R10 3
      250 LOADK                            R11 K51 ["auto-xy"]
      251 DUPTABLE                         R12 K53 [{"Dropdown"}]
      252 GETUPVAL                         R13 1
      253 GETTABLEKS                       R13 R13 K1 ["createElement"]
      255 GETUPVAL                         R14 6
      256 DUPTABLE                         R15 K58 [{"label", "placeholder", "width", "items"}]
      257 LOADK                            R16 K65 ["Sample"]
      258 SETTABLEKS                       R16 R15 K54 ["label"]
      260 LOADK                            R16 K66 ["Pick one"]
      261 SETTABLEKS                       R16 R15 K55 ["placeholder"]
      263 GETUPVAL                         R16 7
      264 SETTABLEKS                       R16 R15 K56 ["width"]
      266 SETTABLEKS                       R3 R15 K57 ["items"]
      268 CALL                             R13 2 1
      269 SETTABLEKS                       R13 R12 K52 ["Dropdown"]
      271 CALL                             R8 4 1
      272 SETTABLEKS                       R8 R7 K48 ["Mixed"]
      274 CALL                             R4 3 -1
      275 RETURN                           R4 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationBaseMenuBeta"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K4 [{"Text", "tag"}]
        9 LOADK                            R4 K5 ["Enable FoundationBaseMenuBeta to preview trailing accessories."]
       10 SETTABLEKS                       R4 R3 K2 ["Text"]
       12 LOADK                            R4 K6 ["auto-xy text-body-medium content-muted"]
       13 SETTABLEKS                       R4 R3 K3 ["tag"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 NEWTABLE                         R1 0 3
       19 DUPTABLE                         R2 K10 [{"id", "text", "trailing"}]
       20 LOADK                            R3 K11 ["b"]
       21 SETTABLEKS                       R3 R2 K7 ["id"]
       23 LOADK                            R3 K12 ["Bold"]
       24 SETTABLEKS                       R3 R2 K8 ["text"]
       26 DUPTABLE                         R3 K14 [{"type", "text"}]
       27 LOADK                            R4 K15 ["Hint"]
       28 SETTABLEKS                       R4 R3 K13 ["type"]
       30 LOADK                            R4 K16 ["⌘B"]
       31 SETTABLEKS                       R4 R3 K8 ["text"]
       33 SETTABLEKS                       R3 R2 K9 ["trailing"]
       35 DUPTABLE                         R3 K10 [{"id", "text", "trailing"}]
       36 LOADK                            R4 K17 ["i"]
       37 SETTABLEKS                       R4 R3 K7 ["id"]
       39 LOADK                            R4 K18 ["Italic"]
       40 SETTABLEKS                       R4 R3 K8 ["text"]
       42 DUPTABLE                         R4 K14 [{"type", "text"}]
       43 LOADK                            R5 K15 ["Hint"]
       44 SETTABLEKS                       R5 R4 K13 ["type"]
       46 LOADK                            R5 K19 ["⌘I"]
       47 SETTABLEKS                       R5 R4 K8 ["text"]
       49 SETTABLEKS                       R4 R3 K9 ["trailing"]
       51 DUPTABLE                         R4 K10 [{"id", "text", "trailing"}]
       52 LOADK                            R5 K20 ["u"]
       53 SETTABLEKS                       R5 R4 K7 ["id"]
       55 LOADK                            R5 K21 ["Underline"]
       56 SETTABLEKS                       R5 R4 K8 ["text"]
       58 DUPTABLE                         R5 K14 [{"type", "text"}]
       59 LOADK                            R6 K15 ["Hint"]
       60 SETTABLEKS                       R6 R5 K13 ["type"]
       62 LOADK                            R6 K22 ["⌘U"]
       63 SETTABLEKS                       R6 R5 K8 ["text"]
       65 SETTABLEKS                       R5 R4 K9 ["trailing"]
       67 SETLIST                          R1 R2 3 [1]
       69 NEWTABLE                         R2 0 3
       71 DUPTABLE                         R3 K10 [{"id", "text", "trailing"}]
       72 LOADK                            R4 K23 ["new"]
       73 SETTABLEKS                       R4 R3 K7 ["id"]
       75 LOADK                            R4 K24 ["New feature"]
       76 SETTABLEKS                       R4 R3 K8 ["text"]
       78 DUPTABLE                         R4 K26 [{"type", "text", "variant"}]
       79 LOADK                            R5 K27 ["Badge"]
       80 SETTABLEKS                       R5 R4 K13 ["type"]
       82 LOADK                            R5 K28 ["New"]
       83 SETTABLEKS                       R5 R4 K8 ["text"]
       85 GETUPVAL                         R5 3
       86 GETTABLEKS                       R5 R5 K29 ["Success"]
       88 SETTABLEKS                       R5 R4 K25 ["variant"]
       90 SETTABLEKS                       R4 R3 K9 ["trailing"]
       92 DUPTABLE                         R4 K10 [{"id", "text", "trailing"}]
       93 LOADK                            R5 K30 ["beta"]
       94 SETTABLEKS                       R5 R4 K7 ["id"]
       96 LOADK                            R5 K31 ["Beta channel"]
       97 SETTABLEKS                       R5 R4 K8 ["text"]
       99 DUPTABLE                         R5 K26 [{"type", "text", "variant"}]
      100 LOADK                            R6 K27 ["Badge"]
      101 SETTABLEKS                       R6 R5 K13 ["type"]
      103 LOADK                            R6 K32 ["Beta"]
      104 SETTABLEKS                       R6 R5 K8 ["text"]
      106 GETUPVAL                         R6 3
      107 GETTABLEKS                       R6 R6 K33 ["Warning"]
      109 SETTABLEKS                       R6 R5 K25 ["variant"]
      111 SETTABLEKS                       R5 R4 K9 ["trailing"]
      113 DUPTABLE                         R5 K10 [{"id", "text", "trailing"}]
      114 LOADK                            R6 K34 ["pro"]
      115 SETTABLEKS                       R6 R5 K7 ["id"]
      117 LOADK                            R6 K35 ["Pro mode"]
      118 SETTABLEKS                       R6 R5 K8 ["text"]
      120 DUPTABLE                         R6 K26 [{"type", "text", "variant"}]
      121 LOADK                            R7 K27 ["Badge"]
      122 SETTABLEKS                       R7 R6 K13 ["type"]
      124 LOADK                            R7 K36 ["Pro"]
      125 SETTABLEKS                       R7 R6 K8 ["text"]
      127 GETUPVAL                         R7 3
      128 GETTABLEKS                       R7 R7 K37 ["Contrast"]
      130 SETTABLEKS                       R7 R6 K25 ["variant"]
      132 SETTABLEKS                       R6 R5 K9 ["trailing"]
      134 SETLIST                          R2 R3 3 [1]
      136 NEWTABLE                         R3 0 3
      138 DUPTABLE                         R4 K10 [{"id", "text", "trailing"}]
      139 LOADK                            R5 K38 ["save"]
      140 SETTABLEKS                       R5 R4 K7 ["id"]
      142 LOADK                            R5 K39 ["Save"]
      143 SETTABLEKS                       R5 R4 K8 ["text"]
      145 DUPTABLE                         R5 K14 [{"type", "text"}]
      146 LOADK                            R6 K15 ["Hint"]
      147 SETTABLEKS                       R6 R5 K13 ["type"]
      149 LOADK                            R6 K40 ["⌘S"]
      150 SETTABLEKS                       R6 R5 K8 ["text"]
      152 SETTABLEKS                       R5 R4 K9 ["trailing"]
      154 DUPTABLE                         R5 K10 [{"id", "text", "trailing"}]
      155 LOADK                            R6 K41 ["publish"]
      156 SETTABLEKS                       R6 R5 K7 ["id"]
      158 LOADK                            R6 K42 ["Publish"]
      159 SETTABLEKS                       R6 R5 K8 ["text"]
      161 DUPTABLE                         R6 K26 [{"type", "text", "variant"}]
      162 LOADK                            R7 K27 ["Badge"]
      163 SETTABLEKS                       R7 R6 K13 ["type"]
      165 LOADK                            R7 K28 ["New"]
      166 SETTABLEKS                       R7 R6 K8 ["text"]
      168 GETUPVAL                         R7 3
      169 GETTABLEKS                       R7 R7 K29 ["Success"]
      171 SETTABLEKS                       R7 R6 K25 ["variant"]
      173 SETTABLEKS                       R6 R5 K9 ["trailing"]
      175 DUPTABLE                         R6 K43 [{"id", "text"}]
      176 LOADK                            R7 K44 ["plain"]
      177 SETTABLEKS                       R7 R6 K7 ["id"]
      179 LOADK                            R7 K45 ["Plain item"]
      180 SETTABLEKS                       R7 R6 K8 ["text"]
      182 SETLIST                          R3 R4 3 [1]
      184 GETUPVAL                         R4 1
      185 GETTABLEKS                       R4 R4 K1 ["createElement"]
      187 GETUPVAL                         R5 4
      188 DUPTABLE                         R6 K46 [{"tag"}]
      189 LOADK                            R7 K47 ["col gap-xlarge size-full-0 auto-y"]
      190 SETTABLEKS                       R7 R6 K3 ["tag"]
      192 DUPTABLE                         R7 K51 [{"Hints", "Badges", "Mixed"}]
      193 GETUPVAL                         R8 5
      194 LOADK                            R9 K52 ["Hint trailing"]
      195 LOADN                            R10 1
      196 LOADK                            R11 K53 ["auto-xy"]
      197 DUPTABLE                         R12 K55 [{"Dropdown"}]
      198 GETUPVAL                         R13 1
      199 GETTABLEKS                       R13 R13 K1 ["createElement"]
      201 GETUPVAL                         R14 6
      202 DUPTABLE                         R15 K60 [{"label", "placeholder", "width", "items"}]
      203 LOADK                            R16 K61 ["Format"]
      204 SETTABLEKS                       R16 R15 K56 ["label"]
      206 LOADK                            R16 K62 ["Pick a style"]
      207 SETTABLEKS                       R16 R15 K57 ["placeholder"]
      209 GETUPVAL                         R16 7
      210 SETTABLEKS                       R16 R15 K58 ["width"]
      212 SETTABLEKS                       R1 R15 K59 ["items"]
      214 CALL                             R13 2 1
      215 SETTABLEKS                       R13 R12 K54 ["Dropdown"]
      217 CALL                             R8 4 1
      218 SETTABLEKS                       R8 R7 K48 ["Hints"]
      220 GETUPVAL                         R8 5
      221 LOADK                            R9 K63 ["Badge trailing"]
      222 LOADN                            R10 2
      223 LOADK                            R11 K53 ["auto-xy"]
      224 DUPTABLE                         R12 K55 [{"Dropdown"}]
      225 GETUPVAL                         R13 1
      226 GETTABLEKS                       R13 R13 K1 ["createElement"]
      228 GETUPVAL                         R14 6
      229 DUPTABLE                         R15 K60 [{"label", "placeholder", "width", "items"}]
      230 LOADK                            R16 K64 ["Channel"]
      231 SETTABLEKS                       R16 R15 K56 ["label"]
      233 LOADK                            R16 K65 ["Pick a channel"]
      234 SETTABLEKS                       R16 R15 K57 ["placeholder"]
      236 GETUPVAL                         R16 7
      237 SETTABLEKS                       R16 R15 K58 ["width"]
      239 SETTABLEKS                       R2 R15 K59 ["items"]
      241 CALL                             R13 2 1
      242 SETTABLEKS                       R13 R12 K54 ["Dropdown"]
      244 CALL                             R8 4 1
      245 SETTABLEKS                       R8 R7 K49 ["Badges"]
      247 GETUPVAL                         R8 5
      248 LOADK                            R9 K66 ["Mixed trailing"]
      249 LOADN                            R10 3
      250 LOADK                            R11 K53 ["auto-xy"]
      251 DUPTABLE                         R12 K55 [{"Dropdown"}]
      252 GETUPVAL                         R13 1
      253 GETTABLEKS                       R13 R13 K1 ["createElement"]
      255 GETUPVAL                         R14 6
      256 DUPTABLE                         R15 K60 [{"label", "placeholder", "width", "items"}]
      257 LOADK                            R16 K67 ["Action"]
      258 SETTABLEKS                       R16 R15 K56 ["label"]
      260 LOADK                            R16 K68 ["Pick an action"]
      261 SETTABLEKS                       R16 R15 K57 ["placeholder"]
      263 GETUPVAL                         R16 7
      264 SETTABLEKS                       R16 R15 K58 ["width"]
      266 SETTABLEKS                       R3 R15 K59 ["items"]
      268 CALL                             R13 2 1
      269 SETTABLEKS                       R13 R12 K54 ["Dropdown"]
      271 CALL                             R8 4 1
      272 SETTABLEKS                       R8 R7 K50 ["Mixed"]
      274 CALL                             R4 3 -1
      275 RETURN                           R4 -1

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationBaseMenuBeta"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K4 [{"Text", "tag"}]
        9 LOADK                            R4 K5 ["Enable FoundationBaseMenuBeta to preview the Apple-style check column."]
       10 SETTABLEKS                       R4 R3 K2 ["Text"]
       12 LOADK                            R4 K6 ["auto-xy text-body-medium content-muted"]
       13 SETTABLEKS                       R4 R3 K3 ["tag"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 NEWTABLE                         R1 0 3
       19 DUPTABLE                         R2 K10 [{"id", "text", "leading"}]
       20 LOADK                            R3 K11 ["low"]
       21 SETTABLEKS                       R3 R2 K7 ["id"]
       23 LOADK                            R3 K12 ["Low quality"]
       24 SETTABLEKS                       R3 R2 K8 ["text"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K13 ["Icon"]
       29 GETTABLEKS                       R3 R3 K14 ["Pencil"]
       31 SETTABLEKS                       R3 R2 K9 ["leading"]
       33 DUPTABLE                         R3 K10 [{"id", "text", "leading"}]
       34 LOADK                            R4 K15 ["med"]
       35 SETTABLEKS                       R4 R3 K7 ["id"]
       37 LOADK                            R4 K16 ["Medium quality"]
       38 SETTABLEKS                       R4 R3 K8 ["text"]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K13 ["Icon"]
       43 GETTABLEKS                       R4 R4 K17 ["PaperAirplane"]
       45 SETTABLEKS                       R4 R3 K9 ["leading"]
       47 DUPTABLE                         R4 K10 [{"id", "text", "leading"}]
       48 LOADK                            R5 K18 ["high"]
       49 SETTABLEKS                       R5 R4 K7 ["id"]
       51 LOADK                            R5 K19 ["High quality"]
       52 SETTABLEKS                       R5 R4 K8 ["text"]
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K13 ["Icon"]
       57 GETTABLEKS                       R5 R5 K20 ["ClipboardPencil"]
       59 SETTABLEKS                       R5 R4 K9 ["leading"]
       61 SETLIST                          R1 R2 3 [1]
       63 GETUPVAL                         R2 1
       64 GETTABLEKS                       R2 R2 K1 ["createElement"]
       66 GETUPVAL                         R3 4
       67 DUPTABLE                         R4 K21 [{"tag"}]
       68 LOADK                            R5 K22 ["col gap-xlarge size-full-0 auto-y"]
       69 SETTABLEKS                       R5 R4 K3 ["tag"]
       71 DUPTABLE                         R5 K25 [{"Selected", "Empty"}]
       72 GETUPVAL                         R6 5
       73 LOADK                            R7 K26 ["Pre-selected (check + leading both visible)"]
       74 LOADN                            R8 1
       75 LOADK                            R9 K27 ["auto-xy"]
       76 DUPTABLE                         R10 K29 [{"Dropdown"}]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K1 ["createElement"]
       80 GETUPVAL                         R12 6
       81 GETTABLEKS                       R12 R12 K30 ["Root"]
       83 DUPTABLE                         R13 K36 [{"value", "onItemChanged", "items", "label", "width"}]
       84 LOADK                            R14 K15 ["med"]
       85 SETTABLEKS                       R14 R13 K31 ["value"]
       87 DUPCLOSURE                       R14 K37 [PROTO_17]
       88 SETTABLEKS                       R14 R13 K32 ["onItemChanged"]
       90 SETTABLEKS                       R1 R13 K33 ["items"]
       92 LOADK                            R14 K38 ["Quality"]
       93 SETTABLEKS                       R14 R13 K34 ["label"]
       95 GETUPVAL                         R14 7
       96 SETTABLEKS                       R14 R13 K35 ["width"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K28 ["Dropdown"]
      101 CALL                             R6 4 1
      102 SETTABLEKS                       R6 R5 K23 ["Selected"]
      104 GETUPVAL                         R6 5
      105 LOADK                            R7 K39 ["Unselected (no check column reserved)"]
      106 LOADN                            R8 2
      107 LOADK                            R9 K27 ["auto-xy"]
      108 DUPTABLE                         R10 K29 [{"Dropdown"}]
      109 GETUPVAL                         R11 1
      110 GETTABLEKS                       R11 R11 K1 ["createElement"]
      112 GETUPVAL                         R12 6
      113 GETTABLEKS                       R12 R12 K30 ["Root"]
      115 DUPTABLE                         R13 K41 [{"onItemChanged", "items", "label", "placeholder", "width"}]
      116 DUPCLOSURE                       R14 K42 [PROTO_18]
      117 SETTABLEKS                       R14 R13 K32 ["onItemChanged"]
      119 SETTABLEKS                       R1 R13 K33 ["items"]
      121 LOADK                            R14 K38 ["Quality"]
      122 SETTABLEKS                       R14 R13 K34 ["label"]
      124 LOADK                            R14 K43 ["Pick a quality"]
      125 SETTABLEKS                       R14 R13 K40 ["placeholder"]
      127 GETUPVAL                         R14 7
      128 SETTABLEKS                       R14 R13 K35 ["width"]
      130 CALL                             R11 2 1
      131 SETTABLEKS                       R11 R10 K28 ["Dropdown"]
      133 CALL                             R6 4 1
      134 SETTABLEKS                       R6 R5 K24 ["Empty"]
      136 CALL                             R2 3 -1
      137 RETURN                           R2 -1

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
      120 DUPTABLE                         R16 K36 [{"text", "variant"}]
      121 LOADK                            R17 K37 ["New"]
      122 SETTABLEKS                       R17 R16 K34 ["text"]
      124 GETTABLEKS                       R17 R5 K38 ["Success"]
      126 SETTABLEKS                       R17 R16 K35 ["variant"]
      128 DUPTABLE                         R17 K36 [{"text", "variant"}]
      129 LOADK                            R18 K39 ["Beta"]
      130 SETTABLEKS                       R18 R17 K34 ["text"]
      132 GETTABLEKS                       R18 R5 K40 ["Warning"]
      134 SETTABLEKS                       R18 R17 K35 ["variant"]
      136 DUPTABLE                         R18 K36 [{"text", "variant"}]
      137 LOADK                            R19 K41 ["Pro"]
      138 SETTABLEKS                       R19 R18 K34 ["text"]
      140 GETTABLEKS                       R19 R5 K42 ["Contrast"]
      142 SETTABLEKS                       R19 R18 K35 ["variant"]
      144 DUPTABLE                         R19 K36 [{"text", "variant"}]
      145 LOADK                            R20 K43 ["Soon"]
      146 SETTABLEKS                       R20 R19 K34 ["text"]
      148 GETTABLEKS                       R20 R5 K44 ["Neutral"]
      150 SETTABLEKS                       R20 R19 K35 ["variant"]
      152 SETLIST                          R15 R16 4 [1]
      154 DUPCLOSURE                       R16 K45 [PROTO_0]
      155 CAPTURE                          VAL R13
      156 DUPCLOSURE                       R17 K46 [PROTO_1]
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R15
      159 DUPCLOSURE                       R18 K47 [PROTO_2]
      160 CAPTURE                          VAL R2
      161 DUPCLOSURE                       R19 K48 [PROTO_4]
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R7
      166 DUPCLOSURE                       R20 K49 [PROTO_5]
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R10
      169 DUPCLOSURE                       R21 K50 [PROTO_6]
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R10
      173 DUPCLOSURE                       R22 K51 [PROTO_7]
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R19
      179 GETIMPORT                        R23 K54 [UDim.new]
      181 LOADN                            R24 0
      182 LOADN                            R25 220
      183 CALL                             R23 2 1
      184 DUPCLOSURE                       R24 K55 [PROTO_8]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R23
      191 DUPCLOSURE                       R25 K56 [PROTO_9]
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R23
      200 DUPCLOSURE                       R26 K57 [PROTO_10]
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R23
      206 DUPCLOSURE                       R27 K58 [PROTO_11]
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R19
      211 DUPCLOSURE                       R28 K59 [PROTO_12]
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R23
      216 DUPCLOSURE                       R29 K60 [PROTO_14]
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R23
      221 DUPCLOSURE                       R30 K61 [PROTO_15]
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R23
      230 DUPCLOSURE                       R31 K62 [PROTO_16]
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R12
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R19
      238 CAPTURE                          VAL R23
      239 DUPCLOSURE                       R32 K63 [PROTO_19]
      240 CAPTURE                          VAL R7
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R2
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R21
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R23
      248 DUPTABLE                         R33 K67 [{"summary", "stories", "controls"}]
      249 LOADK                            R34 K13 ["Dropdown"]
      250 SETTABLEKS                       R34 R33 K64 ["summary"]
      252 NEWTABLE                         R34 0 10
      254 DUPTABLE                         R35 K70 [{"name", "story"}]
      255 LOADK                            R36 K71 ["Playground"]
      256 SETTABLEKS                       R36 R35 K68 ["name"]
      258 SETTABLEKS                       R22 R35 K69 ["story"]
      260 DUPTABLE                         R36 K70 [{"name", "story"}]
      261 LOADK                            R37 K72 ["Sizes"]
      262 SETTABLEKS                       R37 R36 K68 ["name"]
      264 SETTABLEKS                       R24 R36 K69 ["story"]
      266 DUPTABLE                         R37 K70 [{"name", "story"}]
      267 LOADK                            R38 K73 ["Variants"]
      268 SETTABLEKS                       R38 R37 K68 ["name"]
      270 SETTABLEKS                       R25 R37 K69 ["story"]
      272 DUPTABLE                         R38 K70 [{"name", "story"}]
      273 LOADK                            R39 K74 ["States"]
      274 SETTABLEKS                       R39 R38 K68 ["name"]
      276 SETTABLEKS                       R26 R38 K69 ["story"]
      278 DUPTABLE                         R39 K70 [{"name", "story"}]
      279 LOADK                            R40 K75 ["Widths"]
      280 SETTABLEKS                       R40 R39 K68 ["name"]
      282 SETTABLEKS                       R27 R39 K69 ["story"]
      284 DUPTABLE                         R40 K70 [{"name", "story"}]
      285 LOADK                            R41 K76 ["Item groups"]
      286 SETTABLEKS                       R41 R40 K68 ["name"]
      288 SETTABLEKS                       R28 R40 K69 ["story"]
      290 DUPTABLE                         R41 K70 [{"name", "story"}]
      291 LOADK                            R42 K77 ["Overflow"]
      292 SETTABLEKS                       R42 R41 K68 ["name"]
      294 SETTABLEKS                       R29 R41 K69 ["story"]
      296 DUPTABLE                         R42 K70 [{"name", "story"}]
      297 LOADK                            R43 K78 ["Leading accessories"]
      298 SETTABLEKS                       R43 R42 K68 ["name"]
      300 SETTABLEKS                       R30 R42 K69 ["story"]
      302 DUPTABLE                         R43 K70 [{"name", "story"}]
      303 LOADK                            R44 K79 ["Trailing accessories"]
      304 SETTABLEKS                       R44 R43 K68 ["name"]
      306 SETTABLEKS                       R31 R43 K69 ["story"]
      308 DUPTABLE                         R44 K70 [{"name", "story"}]
      309 LOADK                            R45 K80 ["Check column"]
      310 SETTABLEKS                       R45 R44 K68 ["name"]
      312 SETTABLEKS                       R32 R44 K69 ["story"]
      314 SETLIST                          R34 R35 10 [1]
      316 SETTABLEKS                       R34 R33 K65 ["stories"]
      318 DUPTABLE                         R34 K93 [{"size", "variant", "isDisabled", "hasError", "hasIcon", "hasPlaceholder", "hasHint", "label", "placeholder", "hint", "width", "leading", "trailing"}]
      319 GETTABLEKS                       R35 R4 K94 ["values"]
      321 MOVE                             R36 R8
      322 CALL                             R35 1 1
      323 SETTABLEKS                       R35 R34 K81 ["size"]
      325 GETTABLEKS                       R36 R7 K95 ["FoundationDropdownVariant"]
      327 JUMPIFNOT                        R36 ; [+5]
      328 GETTABLEKS                       R35 R4 K94 ["values"]
      330 MOVE                             R36 R9
      331 CALL                             R35 1 1
      332 JUMP                             ; [+1]
      333 LOADNIL                          R35
      334 SETTABLEKS                       R35 R34 K35 ["variant"]
      336 LOADB                            R35 0
      337 SETTABLEKS                       R35 R34 K82 ["isDisabled"]
      339 LOADB                            R35 0
      340 SETTABLEKS                       R35 R34 K83 ["hasError"]
      342 GETTABLEKS                       R36 R7 K96 ["FoundationBaseMenuBeta"]
      344 JUMPIFNOT                        R36 ; [+2]
      345 LOADNIL                          R35
      346 JUMP                             ; [+1]
      347 LOADB                            R35 1
      348 SETTABLEKS                       R35 R34 K84 ["hasIcon"]
      350 LOADB                            R35 0
      351 SETTABLEKS                       R35 R34 K85 ["hasPlaceholder"]
      353 LOADB                            R35 0
      354 SETTABLEKS                       R35 R34 K86 ["hasHint"]
      356 LOADK                            R35 K97 ["Dropdown Label"]
      357 SETTABLEKS                       R35 R34 K87 ["label"]
      359 LOADK                            R35 K98 ["Choose an option"]
      360 SETTABLEKS                       R35 R34 K88 ["placeholder"]
      362 LOADK                            R35 K99 ["Optional hint text"]
      363 SETTABLEKS                       R35 R34 K89 ["hint"]
      365 LOADN                            R35 144
      366 SETTABLEKS                       R35 R34 K90 ["width"]
      368 GETTABLEKS                       R36 R7 K96 ["FoundationBaseMenuBeta"]
      370 JUMPIFNOT                        R36 ; [+9]
      371 NEWTABLE                         R35 0 4
      373 LOADK                            R36 K21 ["Icon"]
      374 LOADK                            R37 K100 ["Avatar"]
      375 LOADK                            R38 K101 ["Mixed"]
      376 LOADK                            R39 K102 ["None"]
      377 SETLIST                          R35 R36 4 [1]
      379 JUMP                             ; [+1]
      380 LOADNIL                          R35
      381 SETTABLEKS                       R35 R34 K91 ["leading"]
      383 GETTABLEKS                       R36 R7 K96 ["FoundationBaseMenuBeta"]
      385 JUMPIFNOT                        R36 ; [+9]
      386 NEWTABLE                         R35 0 4
      388 LOADK                            R36 K103 ["Hint"]
      389 LOADK                            R37 K104 ["Badge"]
      390 LOADK                            R38 K101 ["Mixed"]
      391 LOADK                            R39 K102 ["None"]
      392 SETLIST                          R35 R36 4 [1]
      394 JUMP                             ; [+1]
      395 LOADNIL                          R35
      396 SETTABLEKS                       R35 R34 K92 ["trailing"]
      398 SETTABLEKS                       R34 R33 K66 ["controls"]
      400 RETURN                           R33 1
