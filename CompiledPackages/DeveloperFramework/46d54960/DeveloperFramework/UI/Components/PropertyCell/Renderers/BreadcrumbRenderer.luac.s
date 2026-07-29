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
       37 GETUPVAL                         R8 3
       38 JUMPIFNOT                        R8 ; [+3]
       39 GETTABLEKS                       R7 R0 K9 ["OnRightClick"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 SETTABLEKS                       R7 R6 K9 ["OnRightClick"]
       45 GETTABLEKS                       R7 R0 K10 ["OnDoubleClick"]
       47 SETTABLEKS                       R7 R6 K10 ["OnDoubleClick"]
       49 GETTABLEKS                       R7 R0 K16 ["OnChanged"]
       51 SETTABLEKS                       R7 R6 K11 ["OnEdited"]
       53 GETTABLEKS                       R8 R0 K17 ["AutomaticSize"]
       55 JUMPIFNOT                        R8 ; [+10]
       56 GETIMPORT                        R7 K20 [UDim2.new]
       58 LOADN                            R8 1
       59 LOADN                            R9 0
       60 LOADN                            R10 0
       61 GETTABLEKS                       R12 R0 K22 ["MinimumHeight"]
       63 ORK                              R11 R12 K21 [24]
       64 CALL                             R7 4 1
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R7 K24 [UDim2.fromScale]
       68 LOADN                            R8 1
       69 LOADN                            R9 1
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K12 ["Size"]
       73 GETUPVAL                         R8 4
       74 JUMPIF                           R8 ; [+4]
       75 JUMPIFNOT                        R2 ; [+3]
       76 GETTABLEKS                       R7 R1 K25 ["ErrorStyle"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R7
       80 SETTABLEKS                       R7 R6 K13 ["Style"]
       82 GETTABLEKS                       R7 R0 K26 ["Value"]
       84 SETTABLEKS                       R7 R6 K14 ["Text"]
       86 GETUPVAL                         R8 4
       87 JUMPIFNOT                        R8 ; [+12]
       88 NEWTABLE                         R7 1 0
       90 GETUPVAL                         R8 5
       91 GETTABLEKS                       R8 R8 K27 ["Tag"]
       93 JUMPIFNOT                        R2 ; [+3]
       94 GETTABLEKS                       R9 R1 K25 ["ErrorStyle"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R9
       98 SETTABLE                         R9 R7 R8
       99 JUMP                             ; [+1]
      100 LOADNIL                          R7
      101 CALL                             R5 2 -1
      102 CALL                             R3 -1 -1
      103 RETURN                           R3 -1

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
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K14 ["SharedFlags"]
       52 GETTABLEKS                       R7 R7 K15 ["getFFlagDevFrameworkFixTreeTableRightClick"]
       54 CALL                             R6 1 1
       55 CALL                             R6 0 1
       56 GETTABLEKS                       R7 R0 K2 ["UI"]
       58 GETTABLEKS                       R7 R7 K16 ["Components"]
       60 GETIMPORT                        R8 K6 [require]
       62 GETTABLEKS                       R9 R7 K17 ["Breadcrumb"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K6 [require]
       67 GETIMPORT                        R10 K1 [script]
       69 GETTABLEKS                       R10 R10 K4 ["Parent"]
       71 GETTABLEKS                       R10 R10 K4 ["Parent"]
       73 GETTABLEKS                       R10 R10 K18 ["Types"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K19 [PROTO_0]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 RETURN                           R10 1
