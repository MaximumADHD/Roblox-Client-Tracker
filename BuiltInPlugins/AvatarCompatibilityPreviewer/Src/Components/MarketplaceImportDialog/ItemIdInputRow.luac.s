PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isFetching"]
        3 JUMPIF                           R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isFetching"]
        3 JUMPIF                           R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onTextEntered"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R1 K2 [""]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onTextEntered"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R1 K1 [""]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADK                            R3 K2 [""]
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K7 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       14 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       16 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       18 DUPTABLE                         R7 K10 [{"ItemIdInput", "AddItemButton"}]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K3 ["createElement"]
       22 GETUPVAL                         R9 2
       23 DUPTABLE                         R10 K13 [{["tag"] = "grow auto-y", ["LayoutOrder"] = 1}]
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R11 R11 K3 ["createElement"]
       27 GETUPVAL                         R12 3
       28 DUPTABLE                         R13 K23 [{["text"], ["testId"] = "import-dialog-item-id-input", ["placeholder"], ["label"] = "", ["onChanged"], ["size"], ["width"], ["onReturnPressed"]}]
       29 SETTABLEKS                       R2 R13 K14 ["text"]
       31 LOADK                            R16 K24 ["MarketplaceImport"]
       32 LOADK                            R17 K25 ["ItemIdInputPlaceholder"]
       33 NAMECALL                         R14 R1 K26 ["getText"]
       35 CALL                             R14 3 1
       36 SETTABLEKS                       R14 R13 K17 ["placeholder"]
       38 NEWCLOSURE                       R14 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R14 R13 K19 ["onChanged"]
       43 GETUPVAL                         R14 4
       44 GETTABLEKS                       R14 R14 K27 ["XSmall"]
       46 SETTABLEKS                       R14 R13 K20 ["size"]
       48 GETIMPORT                        R14 K30 [UDim.new]
       50 LOADN                            R15 1
       51 LOADN                            R16 0
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K21 ["width"]
       55 NEWCLOSURE                       R14 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R14 R13 K22 ["onReturnPressed"]
       61 CALL                             R11 2 -1
       62 CALL                             R8 -1 1
       63 SETTABLEKS                       R8 R7 K8 ["ItemIdInput"]
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K3 ["createElement"]
       68 GETUPVAL                         R9 5
       69 DUPTABLE                         R10 K37 [{["text"], ["testId"] = "import-dialog-add-item", ["icon"], ["variant"], ["onActivated"], ["isDisabled"], ["size"], ["LayoutOrder"] = 2}]
       70 LOADK                            R13 K24 ["MarketplaceImport"]
       71 LOADK                            R14 K38 ["AddButtonLabel"]
       72 NAMECALL                         R11 R1 K26 ["getText"]
       74 CALL                             R11 3 1
       75 SETTABLEKS                       R11 R10 K14 ["text"]
       77 GETUPVAL                         R11 6
       78 GETTABLEKS                       R11 R11 K39 ["CirclePlus"]
       80 SETTABLEKS                       R11 R10 K32 ["icon"]
       82 GETUPVAL                         R11 7
       83 GETTABLEKS                       R11 R11 K40 ["Standard"]
       85 SETTABLEKS                       R11 R10 K33 ["variant"]
       87 NEWCLOSURE                       R11 P2
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R11 R10 K34 ["onActivated"]
       93 LOADB                            R11 1
       94 JUMPIFEQKS                       R2 K2 [""] ; [+3]
       96 GETTABLEKS                       R11 R0 K41 ["isFetching"]
       98 SETTABLEKS                       R11 R10 K35 ["isDisabled"]
      100 GETUPVAL                         R11 4
      101 GETTABLEKS                       R11 R11 K27 ["XSmall"]
      103 SETTABLEKS                       R11 R10 K20 ["size"]
      105 CALL                             R8 2 1
      106 SETTABLEKS                       R8 R7 K9 ["AddItemButton"]
      108 CALL                             R4 3 -1
      109 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Enums"]
       23 GETTABLEKS                       R3 R3 K10 ["ButtonVariant"]
       25 GETTABLEKS                       R4 R2 K9 ["Enums"]
       27 GETTABLEKS                       R4 R4 K11 ["IconName"]
       29 GETTABLEKS                       R5 R2 K9 ["Enums"]
       31 GETTABLEKS                       R5 R5 K12 ["InputSize"]
       33 GETTABLEKS                       R6 R2 K13 ["Button"]
       35 GETTABLEKS                       R7 R2 K14 ["TextInput"]
       37 GETTABLEKS                       R8 R2 K15 ["View"]
       39 GETIMPORT                        R9 K5 [require]
       41 GETTABLEKS                       R10 R0 K6 ["Packages"]
       43 GETTABLEKS                       R10 R10 K16 ["Framework"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R10 R9 K17 ["ContextServices"]
       48 GETTABLEKS                       R10 R10 K18 ["Localization"]
       50 DUPCLOSURE                       R11 K19 [PROTO_3]
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 RETURN                           R11 1
