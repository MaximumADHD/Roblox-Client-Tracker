PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["Text"]
        2 LENGTH                           R2 R3
        3 ADDK                             R1 R2 K0 [1]
        4 SETTABLEKS                       R1 R0 K2 ["CursorPosition"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K3 ["SelectionStart"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["onFocused"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K4 ["onFocused"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["onFocused"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 DUPTABLE                         R4 K4 [{"LayoutOrder", "tag"}]
       15 GETTABLEKS                       R5 R0 K5 ["layoutOrder"]
       17 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       19 LOADK                            R5 K6 ["size-full-full padding-left-xxsmall"]
       20 SETTABLEKS                       R5 R4 K3 ["tag"]
       22 DUPTABLE                         R5 K8 [{"BrickColorBox"}]
       23 GETUPVAL                         R6 1
       24 GETUPVAL                         R7 3
       25 DUPTABLE                         R8 K12 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
       26 GETTABLEKS                       R9 R0 K5 ["layoutOrder"]
       28 SETTABLEKS                       R9 R8 K5 ["layoutOrder"]
       30 GETIMPORT                        R9 K15 [UDim2.fromScale]
       32 LOADN                            R10 1
       33 LOADN                            R11 1
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K9 ["size"]
       37 GETTABLEKS                       R11 R0 K16 ["brickColorPart"]
       39 GETTABLEKS                       R10 R11 K17 ["multiple"]
       41 JUMPIFNOT                        R10 ; [+2]
       42 LOADK                            R9 K17 ["multiple"]
       43 JUMP                             ; [+13]
       44 LOADK                            R10 K18 ["'%*'"]
       45 GETTABLEKS                       R14 R0 K16 ["brickColorPart"]
       47 GETTABLEKS                       R13 R14 K19 ["value"]
       49 FASTCALL1                        TOSTRING R13 ; [+2]
       50 GETIMPORT                        R12 K21 [tostring]
       52 CALL                             R12 1 1
       53 NAMECALL                         R10 R10 K22 ["format"]
       55 CALL                             R10 2 1
       56 MOVE                             R9 R10
       57 SETTABLEKS                       R9 R8 K10 ["text"]
       59 SETTABLEKS                       R1 R8 K1 ["onFocused"]
       61 GETTABLEKS                       R9 R0 K11 ["onFocusLost"]
       63 SETTABLEKS                       R9 R8 K11 ["onFocusLost"]
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K7 ["BrickColorBox"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["PlaceholderTextBox"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["PropertyTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K13 ["View"]
       37 GETTABLEKS                       R6 R4 K14 ["createElement"]
       39 DUPCLOSURE                       R7 K15 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 RETURN                           R7 1
