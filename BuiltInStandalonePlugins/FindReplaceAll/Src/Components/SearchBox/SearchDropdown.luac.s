PROTO_0:
        0 DUPTABLE                         R1 K1 [{"text"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["dropdownOverlay"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["dropdownOverlay"]
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R1 R0 K2 ["currentDropdown"]
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["createPortal"]
       18 GETUPVAL                         R2 1
       19 LOADK                            R3 K4 ["Frame"]
       20 NEWTABLE                         R4 4 0
       22 LOADN                            R5 1
       23 SETTABLEKS                       R5 R4 K5 ["BackgroundTransparency"]
       25 GETIMPORT                        R5 K8 [UDim2.fromOffset]
       27 LOADN                            R6 0
       28 GETTABLEKS                       R7 R0 K9 ["dropdownOffset"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K10 ["Position"]
       33 GETIMPORT                        R5 K12 [UDim2.fromScale]
       35 LOADN                            R6 1
       36 LOADN                            R7 0
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K13 ["Size"]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K14 ["Tag"]
       43 LOADK                            R6 K15 ["data-testid=SearchDropdownFrame"]
       44 SETTABLE                         R6 R4 R5
       45 DUPTABLE                         R5 K18 [{"HistoryDropdown", "SettingsDropdown"}]
       46 LOADB                            R6 0
       47 GETTABLEKS                       R7 R0 K2 ["currentDropdown"]
       49 JUMPIFNOTEQKS                    R7 K19 ["History"] ; [+20]
       51 GETUPVAL                         R6 1
       52 GETUPVAL                         R7 3
       53 DUPTABLE                         R8 K23 [{"dropdownRef", "itemData", "onItemClicked"}]
       54 GETTABLEKS                       R9 R0 K20 ["dropdownRef"]
       56 SETTABLEKS                       R9 R8 K20 ["dropdownRef"]
       58 GETUPVAL                         R9 4
       59 GETTABLEKS                       R10 R0 K24 ["searchHistory"]
       61 DUPCLOSURE                       R11 K25 [PROTO_0]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K21 ["itemData"]
       65 GETTABLEKS                       R9 R0 K26 ["onDropdownItemClicked"]
       67 SETTABLEKS                       R9 R8 K22 ["onItemClicked"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K16 ["HistoryDropdown"]
       72 GETTABLEKS                       R6 R0 K27 ["settingsDropdownItemData"]
       74 JUMPIFNOT                        R6 ; [+26]
       75 LOADB                            R6 0
       76 GETTABLEKS                       R7 R0 K2 ["currentDropdown"]
       78 JUMPIFNOTEQKS                    R7 K28 ["Settings"] ; [+22]
       80 GETUPVAL                         R6 1
       81 GETUPVAL                         R7 3
       82 DUPTABLE                         R8 K30 [{"dropdownRef", "itemData", "onItemClicked", "shouldIgnoreMaxHeight"}]
       83 GETTABLEKS                       R9 R0 K20 ["dropdownRef"]
       85 SETTABLEKS                       R9 R8 K20 ["dropdownRef"]
       87 GETTABLEKS                       R9 R0 K27 ["settingsDropdownItemData"]
       89 SETTABLEKS                       R9 R8 K21 ["itemData"]
       91 GETTABLEKS                       R9 R0 K31 ["onSettingsDropdownItemClicked"]
       93 JUMPIF                           R9 ; [+1]
       94 DUPCLOSURE                       R9 K32 [PROTO_1]
       95 SETTABLEKS                       R9 R8 K22 ["onItemClicked"]
       97 LOADB                            R9 1
       98 SETTABLEKS                       R9 R8 K29 ["shouldIgnoreMaxHeight"]
      100 CALL                             R6 2 1
      101 SETTABLEKS                       R6 R5 K17 ["SettingsDropdown"]
      103 CALL                             R2 3 1
      104 GETTABLEKS                       R3 R0 K0 ["dropdownOverlay"]
      106 GETTABLEKS                       R3 R3 K1 ["current"]
      108 CALL                             R1 2 -1
      109 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Dropdown"]
       29 GETTABLEKS                       R4 R4 K11 ["Dropdown"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["mapValues"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Types"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K15 ["createElement"]
       50 DUPCLOSURE                       R7 K16 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 RETURN                           R7 1
