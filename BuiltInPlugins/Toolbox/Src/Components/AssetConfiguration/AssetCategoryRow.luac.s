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
       19 DUPTABLE                         R5 K7 [{"tag", "LayoutOrder"}]
       20 LOADK                            R6 K8 ["row align-y-center gap-small auto-xy"]
       21 SETTABLEKS                       R6 R5 K5 ["tag"]
       23 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       25 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       27 DUPTABLE                         R6 K13 [{"Dropdown", "ValidationResult", "ErrorIconButton", "ErrorMessageTextButton"}]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K3 ["createElement"]
       31 GETUPVAL                         R8 2
       32 DUPTABLE                         R9 K20 [{"LayoutOrder", "items", "selectedDropDownIndex", "onItemClicked", "placeholder", "isDisabled", "width"}]
       33 LOADN                            R10 1
       34 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       36 GETTABLEKS                       R10 R0 K21 ["dropdownItems"]
       38 SETTABLEKS                       R10 R9 K14 ["items"]
       40 GETTABLEKS                       R10 R0 K15 ["selectedDropDownIndex"]
       42 SETTABLEKS                       R10 R9 K15 ["selectedDropDownIndex"]
       44 GETTABLEKS                       R10 R0 K16 ["onItemClicked"]
       46 SETTABLEKS                       R10 R9 K16 ["onItemClicked"]
       48 GETTABLEKS                       R10 R0 K17 ["placeholder"]
       50 SETTABLEKS                       R10 R9 K17 ["placeholder"]
       52 LOADB                            R10 0
       53 SETTABLEKS                       R10 R9 K18 ["isDisabled"]
       55 GETTABLEKS                       R10 R0 K22 ["dropdownWidth"]
       57 SETTABLEKS                       R10 R9 K19 ["width"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K9 ["Dropdown"]
       62 JUMPIF                           R1 ; [+27]
       63 JUMPIFNOT                        R2 ; [+26]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K3 ["createElement"]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K23 ["Text"]
       70 DUPTABLE                         R9 K25 [{"tag", "Text", "textStyle", "LayoutOrder"}]
       71 LOADK                            R10 K26 ["auto-xy text-body-medium"]
       72 SETTABLEKS                       R10 R9 K5 ["tag"]
       74 GETTABLEKS                       R10 R0 K1 ["validationStatusMessage"]
       76 SETTABLEKS                       R10 R9 K23 ["Text"]
       78 DUPTABLE                         R10 K28 [{"Color3"}]
       79 GETTABLEKS                       R11 R0 K29 ["validationStatusColor"]
       81 SETTABLEKS                       R11 R10 K27 ["Color3"]
       83 SETTABLEKS                       R10 R9 K24 ["textStyle"]
       85 LOADN                            R10 2
       86 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       88 CALL                             R7 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R7
       91 SETTABLEKS                       R7 R6 K10 ["ValidationResult"]
       93 JUMPIFNOT                        R1 ; [+29]
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K3 ["createElement"]
       97 GETUPVAL                         R8 1
       98 GETTABLEKS                       R8 R8 K30 ["Image"]
      100 DUPTABLE                         R9 K33 [{"tag", "Image", "Size", "onActivated", "LayoutOrder"}]
      101 LOADK                            R10 K34 ["content-alert shrink-0"]
      102 SETTABLEKS                       R10 R9 K5 ["tag"]
      104 LOADK                            R10 K35 ["rbxasset://textures/ui/ErrorIcon.png"]
      105 SETTABLEKS                       R10 R9 K30 ["Image"]
      107 GETIMPORT                        R10 K38 [UDim2.fromOffset]
      109 LOADN                            R11 24
      110 LOADN                            R12 24
      111 CALL                             R10 2 1
      112 SETTABLEKS                       R10 R9 K31 ["Size"]
      114 GETTABLEKS                       R10 R0 K39 ["onErrorClicked"]
      116 SETTABLEKS                       R10 R9 K32 ["onActivated"]
      118 LOADN                            R10 2
      119 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      121 CALL                             R7 2 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R7
      124 SETTABLEKS                       R7 R6 K11 ["ErrorIconButton"]
      126 JUMPIFNOT                        R1 ; [+23]
      127 GETUPVAL                         R7 0
      128 GETTABLEKS                       R7 R7 K3 ["createElement"]
      130 GETUPVAL                         R8 1
      131 GETTABLEKS                       R8 R8 K23 ["Text"]
      133 DUPTABLE                         R9 K40 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      134 LOADK                            R10 K41 ["auto-xy content-alert text-body-medium"]
      135 SETTABLEKS                       R10 R9 K5 ["tag"]
      137 GETTABLEKS                       R10 R0 K1 ["validationStatusMessage"]
      139 SETTABLEKS                       R10 R9 K23 ["Text"]
      141 GETTABLEKS                       R10 R0 K39 ["onErrorClicked"]
      143 SETTABLEKS                       R10 R9 K32 ["onActivated"]
      145 LOADN                            R10 3
      146 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      148 CALL                             R7 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R7
      151 SETTABLEKS                       R7 R6 K12 ["ErrorMessageTextButton"]
      153 CALL                             R3 3 -1
      154 RETURN                           R3 -1

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
