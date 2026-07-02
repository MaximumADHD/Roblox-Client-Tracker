PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Fragment"]
        6 NEWTABLE                         R3 0 0
        8 DUPTABLE                         R4 K4 [{"Menu", "Control"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 1
       13 DUPTABLE                         R7 K18 [{["align"], ["anchorRef"], ["size"], ["isOpen"], ["items"], ["maxHeight"] = 200, ["onActivated"], ["onPressedOutside"], ["radius"], ["side"], ["testId"], ["width"]}]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K19 ["End"]
       17 SETTABLEKS                       R8 R7 K5 ["align"]
       19 GETTABLEKS                       R8 R0 K6 ["anchorRef"]
       21 SETTABLEKS                       R8 R7 K6 ["anchorRef"]
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K20 ["Medium"]
       26 SETTABLEKS                       R8 R7 K7 ["size"]
       28 GETTABLEKS                       R8 R0 K8 ["isOpen"]
       30 SETTABLEKS                       R8 R7 K8 ["isOpen"]
       32 GETTABLEKS                       R8 R0 K9 ["items"]
       34 SETTABLEKS                       R8 R7 K9 ["items"]
       36 GETTABLEKS                       R8 R0 K21 ["onItemChanged"]
       38 SETTABLEKS                       R8 R7 K12 ["onActivated"]
       40 GETUPVAL                         R9 4
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+3]
       43 GETTABLEKS                       R8 R0 K22 ["onCloseMenu"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 SETTABLEKS                       R8 R7 K13 ["onPressedOutside"]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R8 R8 K20 ["Medium"]
       52 SETTABLEKS                       R8 R7 K14 ["radius"]
       54 GETUPVAL                         R8 6
       55 GETTABLEKS                       R8 R8 K23 ["Bottom"]
       57 SETTABLEKS                       R8 R7 K15 ["side"]
       59 LOADK                            R9 K24 ["%*-%*-Dropdown"]
       60 GETTABLEKS                       R11 R0 K25 ["property"]
       62 GETTABLEKS                       R12 R0 K26 ["schema"]
       64 NAMECALL                         R9 R9 K27 ["format"]
       66 CALL                             R9 3 1
       67 MOVE                             R8 R9
       68 SETTABLEKS                       R8 R7 K16 ["testId"]
       70 GETIMPORT                        R8 K30 [UDim.new]
       72 LOADN                            R9 0
       73 GETTABLEKS                       R11 R0 K6 ["anchorRef"]
       75 GETTABLEKS                       R11 R11 K31 ["current"]
       77 JUMPIFNOT                        R11 ; [+9]
       78 GETTABLEKS                       R10 R0 K6 ["anchorRef"]
       80 GETTABLEKS                       R10 R10 K31 ["current"]
       82 GETTABLEKS                       R10 R10 K32 ["AbsoluteSize"]
       84 GETTABLEKS                       R10 R10 K33 ["X"]
       86 JUMP                             ; [+1]
       87 LOADN                            R10 0
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K17 ["width"]
       91 CALL                             R5 2 1
       92 SETTABLEKS                       R5 R4 K2 ["Menu"]
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R5 R5 K0 ["createElement"]
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R6 R6 K1 ["Fragment"]
      100 NEWTABLE                         R7 0 0
      102 GETTABLEKS                       R8 R0 K34 ["children"]
      104 CALL                             R5 3 1
      105 SETTABLEKS                       R5 R4 K3 ["Control"]
      107 CALL                             R1 3 -1
      108 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["Menu"]
       30 GETTABLEKS                       R5 R2 K12 ["Enums"]
       32 GETTABLEKS                       R5 R5 K13 ["InputSize"]
       34 GETTABLEKS                       R6 R2 K12 ["Enums"]
       36 GETTABLEKS                       R6 R6 K14 ["PopoverAlign"]
       38 GETTABLEKS                       R7 R2 K12 ["Enums"]
       40 GETTABLEKS                       R7 R7 K15 ["PopoverSide"]
       42 GETTABLEKS                       R8 R2 K12 ["Enums"]
       44 GETTABLEKS                       R8 R8 K16 ["Radius"]
       46 GETTABLEKS                       R9 R0 K9 ["Src"]
       48 GETTABLEKS                       R9 R9 K17 ["Flags"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R9 K18 ["getFFlagIAMDropdownStabilityImprovements"]
       54 CALL                             R10 1 1
       55 DUPCLOSURE                       R11 K19 [PROTO_0]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 RETURN                           R11 1
