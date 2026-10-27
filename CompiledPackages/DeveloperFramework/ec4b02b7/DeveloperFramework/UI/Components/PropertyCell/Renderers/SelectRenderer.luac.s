PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETTABLEKS                       R2 R0 K1 ["ErrorMessage"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R3 R0 K1 ["ErrorMessage"]
        7 JUMPIFNOTEQKS                    R3 K2 [""] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETIMPORT                        R3 K5 [UDim2.fromScale]
       13 LOADN                            R4 1
       14 LOADN                            R5 1
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R0 K6 ["Size"]
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETTABLEKS                       R3 R0 K6 ["Size"]
       21 JUMP                             ; [+13]
       22 GETTABLEKS                       R4 R0 K7 ["AutomaticSize"]
       24 JUMPIFNOT                        R4 ; [+10]
       25 GETIMPORT                        R4 K9 [UDim2.new]
       27 LOADN                            R5 1
       28 LOADN                            R6 0
       29 LOADN                            R7 0
       30 GETTABLEKS                       R9 R0 K11 ["MinimumHeight"]
       32 ORK                              R8 R9 K10 [24]
       33 CALL                             R4 4 1
       34 MOVE                             R3 R4
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K12 ["createElement"]
       38 GETUPVAL                         R5 1
       39 GETUPVAL                         R6 2
       40 DUPTABLE                         R7 K21 [{"Enabled", "Items", "ItemHeight", "OnRenderItem", "PlaceholderText", "SelectedId", "Size", "StyleModifier", "OnItemActivated"}]
       41 GETTABLEKS                       R9 R0 K22 ["Disabled"]
       43 NOT                              R8 R9
       44 SETTABLEKS                       R8 R7 K13 ["Enabled"]
       46 GETTABLEKS                       R8 R1 K14 ["Items"]
       48 SETTABLEKS                       R8 R7 K14 ["Items"]
       50 GETTABLEKS                       R8 R1 K15 ["ItemHeight"]
       52 SETTABLEKS                       R8 R7 K15 ["ItemHeight"]
       54 GETTABLEKS                       R8 R0 K16 ["OnRenderItem"]
       56 SETTABLEKS                       R8 R7 K16 ["OnRenderItem"]
       58 GETTABLEKS                       R8 R0 K17 ["PlaceholderText"]
       60 JUMPIF                           R8 ; [+2]
       61 GETTABLEKS                       R8 R1 K17 ["PlaceholderText"]
       63 SETTABLEKS                       R8 R7 K17 ["PlaceholderText"]
       65 GETTABLEKS                       R8 R0 K23 ["Value"]
       67 SETTABLEKS                       R8 R7 K18 ["SelectedId"]
       69 SETTABLEKS                       R3 R7 K6 ["Size"]
       71 GETUPVAL                         R9 3
       72 JUMPIF                           R9 ; [+5]
       73 JUMPIFNOT                        R2 ; [+4]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K24 ["Error"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R8
       79 SETTABLEKS                       R8 R7 K19 ["StyleModifier"]
       81 NEWCLOSURE                       R8 P0
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R8 R7 K20 ["OnItemActivated"]
       85 GETUPVAL                         R9 3
       86 JUMPIFNOT                        R9 ; [+12]
       87 NEWTABLE                         R8 1 0
       89 GETUPVAL                         R9 5
       90 GETTABLEKS                       R9 R9 K25 ["Tag"]
       92 JUMPIFNOT                        R2 ; [+3]
       93 GETTABLEKS                       R10 R1 K26 ["ErrorStyle"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R10
       97 SETTABLE                         R10 R8 R9
       98 JUMP                             ; [+1]
       99 LOADNIL                          R8
      100 CALL                             R6 2 -1
      101 CALL                             R4 -1 -1
      102 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R0 K2 ["UI"]
       50 GETTABLEKS                       R6 R6 K14 ["Components"]
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R6 K15 ["SelectInput"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K16 ["Util"]
       61 GETTABLEKS                       R9 R9 K17 ["StyleModifier"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETIMPORT                        R10 K1 [script]
       68 GETTABLEKS                       R10 R10 K4 ["Parent"]
       70 GETTABLEKS                       R10 R10 K4 ["Parent"]
       72 GETTABLEKS                       R10 R10 K18 ["Types"]
       74 CALL                             R9 1 1
       75 DUPCLOSURE                       R10 K19 [PROTO_1]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 RETURN                           R10 1
