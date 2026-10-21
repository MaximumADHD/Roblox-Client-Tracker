PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["Text"]
        2 LENGTH                           R2 R3
        3 ADDK                             R1 R2 K0 [1]
        4 SETTABLEKS                       R1 R0 K2 ["CursorPosition"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K3 ["SelectionStart"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["onFocused"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K4 ["onFocused"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["onFocused"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 DUPTABLE                         R5 K5 [{"Visible", "LayoutOrder", "Size"}]
       17 GETTABLEKS                       R7 R0 K6 ["visible"]
       19 JUMPIFNOTEQKNIL                  R7 ; [+3]
       21 LOADB                            R6 1
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R6 R0 K6 ["visible"]
       25 SETTABLEKS                       R6 R5 K2 ["Visible"]
       27 GETTABLEKS                       R6 R0 K7 ["layoutOrder"]
       29 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       31 GETTABLEKS                       R6 R0 K8 ["size"]
       33 SETTABLEKS                       R6 R5 K4 ["Size"]
       35 DUPTABLE                         R6 K11 [{"Divider", "TextContainer"}]
       36 GETUPVAL                         R7 2
       37 GETUPVAL                         R8 4
       38 DUPTABLE                         R9 K13 [{"LayoutOrder", "orientation"}]
       39 MOVE                             R10 R2
       40 CALL                             R10 0 1
       41 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       43 GETUPVAL                         R10 5
       44 GETTABLEKS                       R10 R10 K14 ["Enums"]
       46 GETTABLEKS                       R10 R10 K15 ["Orientation"]
       48 GETTABLEKS                       R10 R10 K16 ["Vertical"]
       50 SETTABLEKS                       R10 R9 K12 ["orientation"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K9 ["Divider"]
       55 GETUPVAL                         R7 2
       56 GETUPVAL                         R8 3
       57 DUPTABLE                         R9 K19 [{["tag"] = "size-full-full padding-left-xsmall", ["LayoutOrder"]}]
       58 MOVE                             R10 R2
       59 CALL                             R10 0 1
       60 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       62 DUPTABLE                         R10 K21 [{"Text"}]
       63 GETUPVAL                         R11 2
       64 GETUPVAL                         R12 6
       65 DUPTABLE                         R13 K24 [{"size", "text", "onFocused", "onFocusLost"}]
       66 GETIMPORT                        R14 K27 [UDim2.fromScale]
       68 LOADN                            R15 1
       69 LOADN                            R16 1
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K8 ["size"]
       73 GETTABLEKS                       R14 R0 K22 ["text"]
       75 SETTABLEKS                       R14 R13 K22 ["text"]
       77 SETTABLEKS                       R1 R13 K1 ["onFocused"]
       79 GETTABLEKS                       R14 R0 K23 ["onFocusLost"]
       81 SETTABLEKS                       R14 R13 K23 ["onFocusLost"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K20 ["Text"]
       86 CALL                             R7 3 1
       87 SETTABLEKS                       R7 R6 K10 ["TextContainer"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["PlaceholderTextBox"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["View"]
       39 GETTABLEKS                       R6 R3 K14 ["createElement"]
       41 GETTABLEKS                       R7 R1 K15 ["Divider"]
       43 GETTABLEKS                       R8 R4 K16 ["createNextOrder"]
       45 DUPCLOSURE                       R9 K17 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 RETURN                           R9 1
