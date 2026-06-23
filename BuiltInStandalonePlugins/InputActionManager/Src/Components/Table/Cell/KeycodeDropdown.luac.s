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
       13 DUPTABLE                         R7 K16 [{"align", "anchorRef", "size", "isOpen", "items", "maxHeight", "onActivated", "radius", "side", "testId", "width"}]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K17 ["End"]
       17 SETTABLEKS                       R8 R7 K5 ["align"]
       19 GETTABLEKS                       R8 R0 K6 ["anchorRef"]
       21 SETTABLEKS                       R8 R7 K6 ["anchorRef"]
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K18 ["Medium"]
       26 SETTABLEKS                       R8 R7 K7 ["size"]
       28 GETTABLEKS                       R8 R0 K8 ["isOpen"]
       30 SETTABLEKS                       R8 R7 K8 ["isOpen"]
       32 GETTABLEKS                       R8 R0 K9 ["items"]
       34 SETTABLEKS                       R8 R7 K9 ["items"]
       36 LOADN                            R8 200
       37 SETTABLEKS                       R8 R7 K10 ["maxHeight"]
       39 GETTABLEKS                       R8 R0 K19 ["onItemChanged"]
       41 SETTABLEKS                       R8 R7 K11 ["onActivated"]
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K18 ["Medium"]
       46 SETTABLEKS                       R8 R7 K12 ["radius"]
       48 GETUPVAL                         R8 5
       49 GETTABLEKS                       R8 R8 K20 ["Bottom"]
       51 SETTABLEKS                       R8 R7 K13 ["side"]
       53 LOADK                            R9 K21 ["%*-%*-Dropdown"]
       54 GETTABLEKS                       R11 R0 K22 ["property"]
       56 GETTABLEKS                       R12 R0 K23 ["schema"]
       58 NAMECALL                         R9 R9 K24 ["format"]
       60 CALL                             R9 3 1
       61 MOVE                             R8 R9
       62 SETTABLEKS                       R8 R7 K14 ["testId"]
       64 GETIMPORT                        R8 K27 [UDim.new]
       66 LOADN                            R9 0
       67 GETTABLEKS                       R11 R0 K6 ["anchorRef"]
       69 GETTABLEKS                       R11 R11 K28 ["current"]
       71 JUMPIFNOT                        R11 ; [+9]
       72 GETTABLEKS                       R10 R0 K6 ["anchorRef"]
       74 GETTABLEKS                       R10 R10 K28 ["current"]
       76 GETTABLEKS                       R10 R10 K29 ["AbsoluteSize"]
       78 GETTABLEKS                       R10 R10 K30 ["X"]
       80 JUMP                             ; [+1]
       81 LOADN                            R10 0
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K15 ["width"]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K2 ["Menu"]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K0 ["createElement"]
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K1 ["Fragment"]
       94 NEWTABLE                         R7 0 0
       96 GETTABLEKS                       R8 R0 K31 ["children"]
       98 CALL                             R5 3 1
       99 SETTABLEKS                       R5 R4 K3 ["Control"]
      101 CALL                             R1 3 -1
      102 RETURN                           R1 -1

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
       46 DUPCLOSURE                       R9 K17 [PROTO_0]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R7
       53 RETURN                           R9 1
