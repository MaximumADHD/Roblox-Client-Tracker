PROTO_0:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        4 FASTCALL1                        TONUMBER R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K2 [tonumber]
        8 CALL                             R2 1 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETTABLEKS                       R2 R0 K1 ["HasError"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K9 [{"Disabled", "OnFocusLost", "PlaceholderText", "Size", "StyleModifier", "Text"}]
       10 GETTABLEKS                       R7 R0 K3 ["Disabled"]
       12 SETTABLEKS                       R7 R6 K3 ["Disabled"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R7 R6 K4 ["OnFocusLost"]
       18 GETTABLEKS                       R7 R1 K5 ["PlaceholderText"]
       20 SETTABLEKS                       R7 R6 K5 ["PlaceholderText"]
       22 GETTABLEKS                       R8 R0 K10 ["AutomaticSize"]
       24 JUMPIFNOT                        R8 ; [+10]
       25 GETIMPORT                        R7 K13 [UDim2.new]
       27 LOADN                            R8 1
       28 LOADN                            R9 0
       29 LOADN                            R10 0
       30 GETTABLEKS                       R12 R0 K15 ["MinimumHeight"]
       32 ORK                              R11 R12 K14 [24]
       33 CALL                             R7 4 1
       34 JUMP                             ; [+5]
       35 GETIMPORT                        R7 K17 [UDim2.fromScale]
       37 LOADN                            R8 1
       38 LOADN                            R9 1
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K6 ["Size"]
       42 GETUPVAL                         R8 3
       43 JUMPIF                           R8 ; [+5]
       44 JUMPIFNOT                        R2 ; [+4]
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R7 R8 K18 ["Error"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R7
       50 SETTABLEKS                       R7 R6 K7 ["StyleModifier"]
       52 GETUPVAL                         R7 5
       53 GETTABLEKS                       R8 R0 K19 ["Value"]
       55 GETTABLEKS                       R10 R1 K21 ["Precision"]
       57 ORK                              R9 R10 K20 [2]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K8 ["Text"]
       61 GETUPVAL                         R8 3
       62 JUMPIFNOT                        R8 ; [+12]
       63 NEWTABLE                         R7 1 0
       65 GETUPVAL                         R9 6
       66 GETTABLEKS                       R8 R9 K22 ["Tag"]
       68 JUMPIFNOT                        R2 ; [+3]
       69 GETTABLEKS                       R9 R1 K23 ["ErrorStyle"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 SETTABLE                         R9 R7 R8
       74 JUMP                             ; [+1]
       75 LOADNIL                          R7
       76 CALL                             R5 2 -1
       77 CALL                             R3 -1 -1
       78 RETURN                           R3 -1

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
       23 GETTABLEKS                       R3 R0 K8 ["Util"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R3 K10 ["numberToString"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K11 ["Dash"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["join"]
       39 GETTABLEKS                       R8 R0 K4 ["Parent"]
       41 LOADK                            R10 K13 ["React"]
       42 NAMECALL                         R8 R8 K14 ["FindFirstChild"]
       44 CALL                             R8 2 1
       45 JUMPIFNOT                        R8 ; [+8]
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R9 R0 K4 ["Parent"]
       50 GETTABLEKS                       R8 R9 K13 ["React"]
       52 CALL                             R7 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R7
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R10 R0 K15 ["Styling"]
       59 GETTABLEKS                       R9 R10 K16 ["supportsStyleSheets"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R12 R0 K2 ["UI"]
       66 GETTABLEKS                       R11 R12 K17 ["Components"]
       68 GETTABLEKS                       R10 R11 K18 ["TextInput"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETIMPORT                        R14 K1 [script]
       75 GETTABLEKS                       R13 R14 K4 ["Parent"]
       77 GETTABLEKS                       R12 R13 K4 ["Parent"]
       79 GETTABLEKS                       R11 R12 K19 ["Types"]
       81 CALL                             R10 1 1
       82 DUPCLOSURE                       R11 K20 [PROTO_1]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R7
       90 RETURN                           R11 1
