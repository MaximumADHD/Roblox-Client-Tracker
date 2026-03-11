PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETTABLEKS                       R2 R0 K1 ["HasError"]
        4 JUMPIF                           R2 ; [+9]
        5 GETTABLEKS                       R2 R0 K2 ["ErrorMessage"]
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETTABLEKS                       R3 R0 K2 ["ErrorMessage"]
       10 JUMPIFNOTEQKS                    R3 K3 [""] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K4 ["createElement"]
       17 GETUPVAL                         R4 1
       18 GETUPVAL                         R5 2
       19 DUPTABLE                         R6 K16 [{"AutomaticSize", "Disabled", "DropdownMenuProps", "GetAutocompleteItems", "OnFocused", "OnFocusLost", "PlaceholderText", "Size", "Style", "StyleModifier", "Text"}]
       20 GETIMPORT                        R7 K19 [Enum.AutomaticSize.None]
       22 SETTABLEKS                       R7 R6 K5 ["AutomaticSize"]
       24 GETTABLEKS                       R7 R0 K6 ["Disabled"]
       26 SETTABLEKS                       R7 R6 K6 ["Disabled"]
       28 DUPTABLE                         R7 K21 [{"ItemHeight"}]
       29 GETTABLEKS                       R8 R1 K20 ["ItemHeight"]
       31 SETTABLEKS                       R8 R7 K20 ["ItemHeight"]
       33 SETTABLEKS                       R7 R6 K7 ["DropdownMenuProps"]
       35 GETTABLEKS                       R7 R0 K8 ["GetAutocompleteItems"]
       37 SETTABLEKS                       R7 R6 K8 ["GetAutocompleteItems"]
       39 GETTABLEKS                       R7 R0 K22 ["OnPressed"]
       41 SETTABLEKS                       R7 R6 K9 ["OnFocused"]
       43 NEWCLOSURE                       R7 P0
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R7 R6 K10 ["OnFocusLost"]
       47 GETTABLEKS                       R7 R1 K11 ["PlaceholderText"]
       49 SETTABLEKS                       R7 R6 K11 ["PlaceholderText"]
       51 GETTABLEKS                       R8 R0 K5 ["AutomaticSize"]
       53 JUMPIFNOT                        R8 ; [+10]
       54 GETIMPORT                        R7 K25 [UDim2.new]
       56 LOADN                            R8 1
       57 LOADN                            R9 0
       58 LOADN                            R10 0
       59 GETTABLEKS                       R12 R0 K27 ["MinimumHeight"]
       61 ORK                              R11 R12 K26 [24]
       62 CALL                             R7 4 1
       63 JUMP                             ; [+5]
       64 GETIMPORT                        R7 K29 [UDim2.fromScale]
       66 LOADN                            R8 1
       67 LOADN                            R9 1
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K12 ["Size"]
       71 GETTABLEKS                       R8 R0 K2 ["ErrorMessage"]
       73 JUMPIFNOT                        R8 ; [+7]
       74 GETTABLEKS                       R8 R0 K2 ["ErrorMessage"]
       76 JUMPIFEQKS                       R8 K3 [""] ; [+4]
       78 GETTABLEKS                       R7 R1 K30 ["ErrorStyle"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R7
       82 SETTABLEKS                       R7 R6 K13 ["Style"]
       84 GETUPVAL                         R8 3
       85 JUMPIF                           R8 ; [+5]
       86 JUMPIFNOT                        R2 ; [+4]
       87 GETUPVAL                         R8 4
       88 GETTABLEKS                       R7 R8 K31 ["Error"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R7
       92 SETTABLEKS                       R7 R6 K14 ["StyleModifier"]
       94 GETTABLEKS                       R7 R0 K32 ["Value"]
       96 SETTABLEKS                       R7 R6 K15 ["Text"]
       98 GETUPVAL                         R8 3
       99 JUMPIFNOT                        R8 ; [+12]
      100 NEWTABLE                         R7 1 0
      102 GETUPVAL                         R9 5
      103 GETTABLEKS                       R8 R9 K33 ["Tag"]
      105 JUMPIFNOT                        R2 ; [+3]
      106 GETTABLEKS                       R9 R1 K30 ["ErrorStyle"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R9
      110 SETTABLE                         R9 R7 R8
      111 JUMP                             ; [+1]
      112 LOADNIL                          R7
      113 CALL                             R5 2 -1
      114 CALL                             R3 -1 -1
      115 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 GETTABLEKS                       R4 R5 K10 ["Dash"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K11 ["join"]
       32 GETTABLEKS                       R6 R0 K4 ["Parent"]
       34 LOADK                            R8 K12 ["React"]
       35 NAMECALL                         R6 R6 K13 ["FindFirstChild"]
       37 CALL                             R6 2 1
       38 JUMPIFNOT                        R6 ; [+8]
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R7 R0 K4 ["Parent"]
       43 GETTABLEKS                       R6 R7 K12 ["React"]
       45 CALL                             R5 1 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Styling"]
       52 GETTABLEKS                       R7 R8 K15 ["supportsStyleSheets"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R10 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R10 K16 ["Components"]
       61 GETTABLEKS                       R8 R9 K17 ["TextInput"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R11 R12 K4 ["Parent"]
       70 GETTABLEKS                       R10 R11 K4 ["Parent"]
       72 GETTABLEKS                       R9 R10 K18 ["Types"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K19 [PROTO_1]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R5
       82 RETURN                           R9 1
