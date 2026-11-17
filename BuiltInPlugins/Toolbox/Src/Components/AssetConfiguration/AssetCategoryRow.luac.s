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
       29 DUPTABLE                         R9 K21 [{["LayoutOrder"] = 1, ["items"], ["selectedDropDownIndex"], ["onItemClicked"], ["placeholder"], ["isDisabled"], ["width"]}]
       30 GETTABLEKS                       R10 R0 K22 ["dropdownItems"]
       32 SETTABLEKS                       R10 R9 K15 ["items"]
       34 GETTABLEKS                       R10 R0 K16 ["selectedDropDownIndex"]
       36 SETTABLEKS                       R10 R9 K16 ["selectedDropDownIndex"]
       38 GETTABLEKS                       R10 R0 K17 ["onItemClicked"]
       40 SETTABLEKS                       R10 R9 K17 ["onItemClicked"]
       42 GETTABLEKS                       R10 R0 K18 ["placeholder"]
       44 SETTABLEKS                       R10 R9 K18 ["placeholder"]
       46 GETTABLEKS                       R11 R0 K19 ["isDisabled"]
       48 JUMPIFEQKB                       R11 TRUE ; [+2]
       50 LOADB                            R10 0 +1
       51 LOADB                            R10 1
       52 SETTABLEKS                       R10 R9 K19 ["isDisabled"]
       54 GETTABLEKS                       R10 R0 K23 ["dropdownWidth"]
       56 SETTABLEKS                       R10 R9 K20 ["width"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K9 ["Dropdown"]
       61 JUMPIF                           R1 ; [+21]
       62 JUMPIFNOT                        R2 ; [+20]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K3 ["createElement"]
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K24 ["Text"]
       69 DUPTABLE                         R9 K28 [{["tag"] = "auto-xy text-body-medium", ["Text"], ["textStyle"], ["LayoutOrder"] = 2}]
       70 GETTABLEKS                       R10 R0 K1 ["validationStatusMessage"]
       72 SETTABLEKS                       R10 R9 K24 ["Text"]
       74 DUPTABLE                         R10 K30 [{"Color3"}]
       75 GETTABLEKS                       R11 R0 K31 ["validationStatusColor"]
       77 SETTABLEKS                       R11 R10 K29 ["Color3"]
       79 SETTABLEKS                       R10 R9 K26 ["textStyle"]
       81 CALL                             R7 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R7
       84 SETTABLEKS                       R7 R6 K10 ["ValidationResult"]
       86 JUMPIFNOT                        R1 ; [+20]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K3 ["createElement"]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K32 ["Image"]
       93 DUPTABLE                         R9 K37 [{["tag"] = "content-alert", ["Image"] = "rbxasset://textures/ui/ErrorIcon.png", ["Size"], ["onActivated"], ["LayoutOrder"] = 2}]
       94 GETIMPORT                        R10 K40 [UDim2.fromOffset]
       96 LOADN                            R11 24
       97 LOADN                            R12 24
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K35 ["Size"]
      101 GETTABLEKS                       R10 R0 K41 ["onErrorClicked"]
      103 SETTABLEKS                       R10 R9 K36 ["onActivated"]
      105 CALL                             R7 2 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R7
      108 SETTABLEKS                       R7 R6 K11 ["ErrorIconButton"]
      110 JUMPIFNOT                        R1 ; [+17]
      111 GETUPVAL                         R7 0
      112 GETTABLEKS                       R7 R7 K3 ["createElement"]
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R8 R8 K24 ["Text"]
      117 DUPTABLE                         R9 K44 [{["tag"] = "auto-xy text-body-medium content-alert", ["Text"], ["onActivated"], ["LayoutOrder"] = 3}]
      118 GETTABLEKS                       R10 R0 K1 ["validationStatusMessage"]
      120 SETTABLEKS                       R10 R9 K24 ["Text"]
      122 GETTABLEKS                       R10 R0 K41 ["onErrorClicked"]
      124 SETTABLEKS                       R10 R9 K36 ["onActivated"]
      126 CALL                             R7 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R7
      129 SETTABLEKS                       R7 R6 K12 ["ErrorMessageTextButton"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1

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
