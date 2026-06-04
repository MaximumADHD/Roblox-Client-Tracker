PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 DUPTABLE                         R5 K13 [{"Disabled", "Max", "Min", "OnValueChanged", "Size", "CustomValidation", "ShowInput", "SnapIncrement", "StyleModifier", "VerticalDragTolerance", "Value"}]
        8 GETTABLEKS                       R6 R0 K2 ["Disabled"]
       10 SETTABLEKS                       R6 R5 K2 ["Disabled"]
       12 GETTABLEKS                       R6 R1 K3 ["Max"]
       14 SETTABLEKS                       R6 R5 K3 ["Max"]
       16 GETTABLEKS                       R6 R1 K4 ["Min"]
       18 SETTABLEKS                       R6 R5 K4 ["Min"]
       20 GETTABLEKS                       R6 R0 K14 ["OnChanged"]
       22 SETTABLEKS                       R6 R5 K5 ["OnValueChanged"]
       24 GETTABLEKS                       R7 R0 K15 ["AutomaticSize"]
       26 JUMPIFNOT                        R7 ; [+10]
       27 GETIMPORT                        R6 K18 [UDim2.new]
       29 LOADN                            R7 1
       30 LOADN                            R8 0
       31 LOADN                            R9 0
       32 GETTABLEKS                       R11 R0 K20 ["MinimumHeight"]
       34 ORK                              R10 R11 K19 [24]
       35 CALL                             R6 4 1
       36 JUMP                             ; [+5]
       37 GETIMPORT                        R6 K22 [UDim2.fromScale]
       39 LOADN                            R7 1
       40 LOADN                            R8 1
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K6 ["Size"]
       44 GETTABLEKS                       R6 R0 K7 ["CustomValidation"]
       46 SETTABLEKS                       R6 R5 K7 ["CustomValidation"]
       48 GETTABLEKS                       R6 R1 K8 ["ShowInput"]
       50 SETTABLEKS                       R6 R5 K8 ["ShowInput"]
       52 GETTABLEKS                       R6 R1 K9 ["SnapIncrement"]
       54 SETTABLEKS                       R6 R5 K9 ["SnapIncrement"]
       56 GETUPVAL                         R7 3
       57 JUMPIF                           R7 ; [+7]
       58 GETTABLEKS                       R7 R0 K23 ["HasError"]
       60 JUMPIFNOT                        R7 ; [+4]
       61 GETUPVAL                         R6 4
       62 GETTABLEKS                       R6 R6 K24 ["Error"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R6
       66 SETTABLEKS                       R6 R5 K10 ["StyleModifier"]
       68 LOADN                            R6 0
       69 SETTABLEKS                       R6 R5 K11 ["VerticalDragTolerance"]
       71 GETTABLEKS                       R6 R0 K12 ["Value"]
       73 SETTABLEKS                       R6 R5 K12 ["Value"]
       75 GETUPVAL                         R7 3
       76 JUMPIFNOT                        R7 ; [+14]
       77 NEWTABLE                         R6 1 0
       79 GETUPVAL                         R7 5
       80 GETTABLEKS                       R7 R7 K25 ["Tag"]
       82 GETTABLEKS                       R9 R0 K23 ["HasError"]
       84 JUMPIFNOT                        R9 ; [+3]
       85 GETTABLEKS                       R8 R1 K26 ["ErrorStyle"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R8
       89 SETTABLE                         R8 R6 R7
       90 JUMP                             ; [+1]
       91 LOADNIL                          R6
       92 CALL                             R4 2 -1
       93 CALL                             R2 -1 -1
       94 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K2 ["UI"]
       25 GETTABLEKS                       R3 R3 K10 ["Components"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Slider"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K4 ["Parent"]
       36 GETTABLEKS                       R6 R6 K12 ["Dash"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K13 ["join"]
       41 GETTABLEKS                       R8 R0 K4 ["Parent"]
       43 LOADK                            R10 K14 ["React"]
       44 NAMECALL                         R8 R8 K15 ["FindFirstChild"]
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+8]
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K4 ["Parent"]
       52 GETTABLEKS                       R8 R8 K14 ["React"]
       54 CALL                             R7 1 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K16 ["Styling"]
       61 GETTABLEKS                       R9 R9 K17 ["supportsStyleSheets"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETIMPORT                        R10 K1 [script]
       68 GETTABLEKS                       R10 R10 K4 ["Parent"]
       70 GETTABLEKS                       R10 R10 K4 ["Parent"]
       72 GETTABLEKS                       R10 R10 K18 ["Types"]
       74 CALL                             R9 1 1
       75 DUPCLOSURE                       R10 K19 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R7
       82 RETURN                           R10 1
