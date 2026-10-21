PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETTABLEKS                       R2 R0 K1 ["ErrorMessage"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R3 R0 K1 ["ErrorMessage"]
        7 JUMPIFNOTEQKS                    R3 K2 [""] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["createElement"]
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 DUPTABLE                         R6 K15 [{"Delimiters", "Editing", "GetAutocompleteItems", "GetImageProps", "OnPressed", "OnRightClick", "OnDoubleClick", "OnEdited", "Size", "Style", "Text"}]
       17 GETTABLEKS                       R7 R1 K4 ["Delimiters"]
       19 SETTABLEKS                       R7 R6 K4 ["Delimiters"]
       21 GETTABLEKS                       R7 R1 K5 ["Editing"]
       23 SETTABLEKS                       R7 R6 K5 ["Editing"]
       25 GETTABLEKS                       R7 R0 K6 ["GetAutocompleteItems"]
       27 SETTABLEKS                       R7 R6 K6 ["GetAutocompleteItems"]
       29 GETTABLEKS                       R7 R1 K7 ["GetImageProps"]
       31 SETTABLEKS                       R7 R6 K7 ["GetImageProps"]
       33 GETTABLEKS                       R7 R0 K8 ["OnPressed"]
       35 SETTABLEKS                       R7 R6 K8 ["OnPressed"]
       37 GETTABLEKS                       R7 R0 K9 ["OnRightClick"]
       39 SETTABLEKS                       R7 R6 K9 ["OnRightClick"]
       41 GETTABLEKS                       R7 R0 K10 ["OnDoubleClick"]
       43 SETTABLEKS                       R7 R6 K10 ["OnDoubleClick"]
       45 GETTABLEKS                       R7 R0 K16 ["OnChanged"]
       47 SETTABLEKS                       R7 R6 K11 ["OnEdited"]
       49 GETTABLEKS                       R8 R0 K17 ["AutomaticSize"]
       51 JUMPIFNOT                        R8 ; [+10]
       52 GETIMPORT                        R7 K20 [UDim2.new]
       54 LOADN                            R8 1
       55 LOADN                            R9 0
       56 LOADN                            R10 0
       57 GETTABLEKS                       R12 R0 K22 ["MinimumHeight"]
       59 ORK                              R11 R12 K21 [24]
       60 CALL                             R7 4 1
       61 JUMP                             ; [+5]
       62 GETIMPORT                        R7 K24 [UDim2.fromScale]
       64 LOADN                            R8 1
       65 LOADN                            R9 1
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K12 ["Size"]
       69 GETUPVAL                         R8 3
       70 JUMPIF                           R8 ; [+4]
       71 JUMPIFNOT                        R2 ; [+3]
       72 GETTABLEKS                       R7 R1 K25 ["ErrorStyle"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K13 ["Style"]
       78 GETTABLEKS                       R7 R0 K26 ["Value"]
       80 SETTABLEKS                       R7 R6 K14 ["Text"]
       82 GETUPVAL                         R8 3
       83 JUMPIFNOT                        R8 ; [+12]
       84 NEWTABLE                         R7 1 0
       86 GETUPVAL                         R8 4
       87 GETTABLEKS                       R8 R8 K27 ["Tag"]
       89 JUMPIFNOT                        R2 ; [+3]
       90 GETTABLEKS                       R9 R1 K25 ["ErrorStyle"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 SETTABLE                         R9 R7 R8
       95 JUMP                             ; [+1]
       96 LOADNIL                          R7
       97 CALL                             R5 2 -1
       98 CALL                             R3 -1 -1
       99 RETURN                           R3 -1

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
       54 GETTABLEKS                       R8 R6 K15 ["Breadcrumb"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETIMPORT                        R9 K1 [script]
       61 GETTABLEKS                       R9 R9 K4 ["Parent"]
       63 GETTABLEKS                       R9 R9 K4 ["Parent"]
       65 GETTABLEKS                       R9 R9 K16 ["Types"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K17 [PROTO_0]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 RETURN                           R9 1
