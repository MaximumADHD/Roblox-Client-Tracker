PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["showError"]
        2 LOADB                            R2 0
        3 GETTABLEKS                       R3 R0 K1 ["validationStatusMessage"]
        5 JUMPIFEQKNIL                     R3 ; [+7]
        7 GETTABLEKS                       R3 R0 K1 ["validationStatusMessage"]
        9 JUMPIFNOTEQKS                    R3 K2 [""] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["createElement"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["View"]
       19 DUPTABLE                         R5 K8 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
       20 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       22 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       24 DUPTABLE                         R6 K13 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K3 ["createElement"]
       28 GETUPVAL                         R8 2
       29 DUPTABLE                         R9 K22 [{["LayoutOrder"] = 1, ["items"], ["selectedDropDownIndex"], ["onItemClicked"], ["placeholder"], ["isDisabled"] = False, ["width"]}]
       30 GETTABLEKS                       R10 R0 K23 ["dropdownItems"]
       32 SETTABLEKS                       R10 R9 K15 ["items"]
       34 GETTABLEKS                       R10 R0 K16 ["selectedDropDownIndex"]
       36 SETTABLEKS                       R10 R9 K16 ["selectedDropDownIndex"]
       38 GETTABLEKS                       R10 R0 K17 ["onItemClicked"]
       40 SETTABLEKS                       R10 R9 K17 ["onItemClicked"]
       42 GETTABLEKS                       R10 R0 K18 ["placeholder"]
       44 SETTABLEKS                       R10 R9 K18 ["placeholder"]
       46 GETTABLEKS                       R10 R0 K24 ["dropdownWidth"]
       48 SETTABLEKS                       R10 R9 K21 ["width"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K9 ["Dropdown"]
       53 JUMPIF                           R1 ; [+21]
       54 JUMPIFNOT                        R2 ; [+20]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K3 ["createElement"]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K25 ["Text"]
       61 DUPTABLE                         R9 K29 [{["tag"] = "auto-xy text-body-medium", ["Text"], ["textStyle"], ["LayoutOrder"] = 2}]
       62 GETTABLEKS                       R10 R0 K1 ["validationStatusMessage"]
       64 SETTABLEKS                       R10 R9 K25 ["Text"]
       66 DUPTABLE                         R10 K31 [{"Color3"}]
       67 GETTABLEKS                       R11 R0 K32 ["validationStatusColor"]
       69 SETTABLEKS                       R11 R10 K30 ["Color3"]
       71 SETTABLEKS                       R10 R9 K27 ["textStyle"]
       73 CALL                             R7 2 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K10 ["ValidationResult"]
       78 JUMPIFNOT                        R1 ; [+20]
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K3 ["createElement"]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K33 ["Image"]
       85 DUPTABLE                         R9 K38 [{["tag"] = "content-alert", ["Image"] = "rbxasset://textures/ui/ErrorIcon.png", ["Size"], ["onActivated"], ["LayoutOrder"] = 2}]
       86 GETIMPORT                        R10 K41 [UDim2.fromOffset]
       88 LOADN                            R11 24
       89 LOADN                            R12 24
       90 CALL                             R10 2 1
       91 SETTABLEKS                       R10 R9 K36 ["Size"]
       93 GETTABLEKS                       R10 R0 K42 ["onErrorClicked"]
       95 SETTABLEKS                       R10 R9 K37 ["onActivated"]
       97 CALL                             R7 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R7
      100 SETTABLEKS                       R7 R6 K11 ["ErrorIconButton"]
      102 JUMPIFNOT                        R1 ; [+17]
      103 GETUPVAL                         R7 0
      104 GETTABLEKS                       R7 R7 K3 ["createElement"]
      106 GETUPVAL                         R8 1
      107 GETTABLEKS                       R8 R8 K25 ["Text"]
      109 DUPTABLE                         R9 K45 [{["tag"] = "auto-xy text-body-medium content-alert", ["Text"], ["onActivated"], ["LayoutOrder"] = 3}]
      110 GETTABLEKS                       R10 R0 K1 ["validationStatusMessage"]
      112 SETTABLEKS                       R10 R9 K25 ["Text"]
      114 GETTABLEKS                       R10 R0 K42 ["onErrorClicked"]
      116 SETTABLEKS                       R10 R9 K37 ["onActivated"]
      118 CALL                             R7 2 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R7
      121 SETTABLEKS                       R7 R6 K12 ["ErrorMessageTextButton"]
      123 CALL                             R3 3 -1
      124 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
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
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Components"]
       25 GETTABLEKS                       R3 R3 K11 ["AssetConfiguration"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["AssetConfigDropdown"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 RETURN                           R5 1
