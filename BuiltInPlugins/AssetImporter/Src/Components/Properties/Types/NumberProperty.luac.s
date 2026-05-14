PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R2 K3 [string.match]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K4 ["^%s*(.-)%s*$"]
       10 CALL                             R2 2 1
       11 OR                               R1 R2 R0
       12 FASTCALL1                        TONUMBER R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K6 [tonumber]
       16 CALL                             R2 1 1
       17 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%.7g"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["Value"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        5 LOADNIL                          R0
        6 JUMP                             ; [+12]
        7 GETIMPORT                        R3 K3 [string.match]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       11 CALL                             R3 2 1
       12 OR                               R2 R3 R1
       13 FASTCALL1                        TONUMBER R2 ; [+3]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K6 [tonumber]
       17 CALL                             R3 1 1
       18 MOVE                             R0 R3
       19 JUMPIFNOT                        R0 ; [+13]
       20 LOADN                            R1 0
       21 JUMPIFNOTLE                      R1 R0 ; [+11]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K7 ["OnSetItem"]
       26 JUMPIFNOT                        R1 ; [+13]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K7 ["OnSetItem"]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 2
       34 GETUPVAL                         R2 3
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K8 ["Value"]
       38 CALL                             R2 1 -1
       39 CALL                             R1 -1 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["Value"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R5 0 1
       17 GETTABLEKS                       R6 R0 K1 ["Value"]
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 0
       22 LOADB                            R3 1
       23 GETTABLEKS                       R4 R0 K3 ["Editable"]
       25 JUMPIFEQKNIL                     R4 ; [+4]
       27 GETTABLEKS                       R4 R0 K3 ["Editable"]
       29 NOT                              R3 R4
       30 JUMPIFNOT                        R3 ; [+40]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K4 ["createElement"]
       34 GETUPVAL                         R5 3
       35 DUPTABLE                         R6 K10 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
       36 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       38 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       40 GETIMPORT                        R7 K13 [UDim2.new]
       42 LOADN                            R8 0
       43 LOADN                            R9 0
       44 GETTABLEKS                       R10 R0 K6 ["Size"]
       46 GETTABLEKS                       R10 R10 K14 ["Y"]
       48 GETTABLEKS                       R10 R10 K15 ["Scale"]
       50 GETTABLEKS                       R11 R0 K6 ["Size"]
       52 GETTABLEKS                       R11 R11 K14 ["Y"]
       54 GETTABLEKS                       R11 R11 K16 ["Offset"]
       56 CALL                             R7 4 1
       57 SETTABLEKS                       R7 R6 K6 ["Size"]
       59 GETIMPORT                        R7 K19 [Enum.AutomaticSize.X]
       61 SETTABLEKS                       R7 R6 K7 ["AutomaticSize"]
       63 SETTABLEKS                       R1 R6 K8 ["Text"]
       65 GETIMPORT                        R7 K21 [Enum.TextXAlignment.Left]
       67 SETTABLEKS                       R7 R6 K9 ["TextXAlignment"]
       69 CALL                             R4 2 -1
       70 RETURN                           R4 -1
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K4 ["createElement"]
       74 GETUPVAL                         R5 4
       75 DUPTABLE                         R6 K25 [{"Disabled", "LayoutOrder", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
       76 LOADB                            R7 0
       77 SETTABLEKS                       R7 R6 K22 ["Disabled"]
       79 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       81 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       83 GETTABLEKS                       R7 R0 K6 ["Size"]
       85 SETTABLEKS                       R7 R6 K6 ["Size"]
       87 SETTABLEKS                       R1 R6 K8 ["Text"]
       89 NEWCLOSURE                       R7 P1
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R7 R6 K23 ["OnTextChanged"]
       93 NEWCLOSURE                       R7 P2
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R2
       97 CAPTURE                          UPVAL U1
       98 SETTABLEKS                       R7 R6 K24 ["OnFocusLost"]
      100 CALL                             R4 2 -1
      101 RETURN                           R4 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Value"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K3 ["Editable"]
        8 JUMPIFEQKNIL                     R2 ; [+44]
       10 GETTABLEKS                       R2 R0 K3 ["Editable"]
       12 JUMPIF                           R2 ; [+40]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K4 ["createElement"]
       16 GETUPVAL                         R3 1
       17 DUPTABLE                         R4 K10 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
       18 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       22 GETIMPORT                        R5 K13 [UDim2.new]
       24 LOADN                            R6 0
       25 LOADN                            R7 0
       26 GETTABLEKS                       R8 R0 K6 ["Size"]
       28 GETTABLEKS                       R8 R8 K14 ["Y"]
       30 GETTABLEKS                       R8 R8 K15 ["Scale"]
       32 GETTABLEKS                       R9 R0 K6 ["Size"]
       34 GETTABLEKS                       R9 R9 K14 ["Y"]
       36 GETTABLEKS                       R9 R9 K16 ["Offset"]
       38 CALL                             R5 4 1
       39 SETTABLEKS                       R5 R4 K6 ["Size"]
       41 GETIMPORT                        R5 K19 [Enum.AutomaticSize.X]
       43 SETTABLEKS                       R5 R4 K7 ["AutomaticSize"]
       45 SETTABLEKS                       R1 R4 K8 ["Text"]
       47 GETIMPORT                        R5 K21 [Enum.TextXAlignment.Left]
       49 SETTABLEKS                       R5 R4 K9 ["TextXAlignment"]
       51 CALL                             R2 2 -1
       52 RETURN                           R2 -1
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K4 ["createElement"]
       56 GETUPVAL                         R3 2
       57 DUPTABLE                         R4 K23 [{"Disabled", "LayoutOrder", "Size", "Text"}]
       58 LOADB                            R5 1
       59 SETTABLEKS                       R5 R4 K22 ["Disabled"]
       61 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       63 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       65 GETTABLEKS                       R5 R0 K6 ["Size"]
       67 SETTABLEKS                       R5 R4 K6 ["Size"]
       69 SETTABLEKS                       R1 R4 K8 ["Text"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getDFFlagMeshImporterEnableCustomScaleFactor"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["UI"]
       39 GETTABLEKS                       R6 R5 K14 ["TextInput"]
       41 GETTABLEKS                       R7 R5 K15 ["TextLabel"]
       43 MOVE                             R8 R4
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+9]
       46 DUPCLOSURE                       R8 K16 [PROTO_0]
       47 DUPCLOSURE                       R9 K17 [PROTO_1]
       48 DUPCLOSURE                       R10 K18 [PROTO_5]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 RETURN                           R10 1
       55 DUPCLOSURE                       R8 K19 [PROTO_6]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R6
       59 RETURN                           R8 1
