PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["items"]
        6 NEWTABLE                         R2 0 2
        8 LOADN                            R3 1
        9 LOADK                            R4 K1 ["items"]
       10 SETLIST                          R2 R3 2 [1]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K2 ["FoundationBaseMenuSubmenuSupport"]
       16 JUMPIFNOT                        R2 ; [+14]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K0 ["get"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K1 ["items"]
       23 NEWTABLE                         R3 0 2
       25 LOADN                            R4 1
       26 LOADK                            R5 K3 ["id"]
       27 SETLIST                          R3 R4 2 [1]
       29 CALL                             R1 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R1
       32 JUMPIFNOT                        R0 ; [+5]
       33 JUMPIF                           R1 ; [+4]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R2 R3 K1 ["items"]
       37 RETURN                           R2 1
       38 NEWTABLE                         R2 0 1
       40 DUPTABLE                         R3 K4 [{"items"}]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R4 R5 K1 ["items"]
       44 SETTABLEKS                       R4 R3 K1 ["items"]
       46 SETLIST                          R2 R3 1 [1]
       48 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K11 [{"LayoutOrder", "key", "icon", "isChecked", "isDisabled", "text", "onActivated", "id", "testId", "ref"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 GETTABLEKS                       R5 R0 K8 ["id"]
        9 SETTABLEKS                       R5 R4 K2 ["key"]
       11 GETTABLEKS                       R5 R0 K3 ["icon"]
       13 SETTABLEKS                       R5 R4 K3 ["icon"]
       15 GETTABLEKS                       R5 R0 K4 ["isChecked"]
       17 SETTABLEKS                       R5 R4 K4 ["isChecked"]
       19 GETTABLEKS                       R5 R0 K5 ["isDisabled"]
       21 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       23 GETTABLEKS                       R5 R0 K6 ["text"]
       25 SETTABLEKS                       R5 R4 K6 ["text"]
       27 GETTABLEKS                       R5 R0 K7 ["onActivated"]
       29 SETTABLEKS                       R5 R4 K7 ["onActivated"]
       31 GETTABLEKS                       R5 R0 K8 ["id"]
       33 SETTABLEKS                       R5 R4 K8 ["id"]
       35 GETTABLEKS                       R6 R0 K12 ["items"]
       37 JUMPIFNOT                        R6 ; [+2]
       38 LOADK                            R5 K13 ["--foundation-menu-submenu-item"]
       39 JUMP                             ; [+1]
       40 LOADK                            R5 K14 ["--foundation-menu-item"]
       41 SETTABLEKS                       R5 R4 K9 ["testId"]
       43 GETTABLEKS                       R5 R0 K10 ["ref"]
       45 SETTABLEKS                       R5 R4 K10 ["ref"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R6 R7 K15 ["FoundationBaseMenuSubmenuSupport"]
       50 JUMPIFNOT                        R6 ; [+14]
       51 GETTABLEKS                       R6 R0 K12 ["items"]
       53 JUMPIFNOT                        R6 ; [+11]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K0 ["createElement"]
       57 GETUPVAL                         R6 3
       58 DUPTABLE                         R7 K16 [{"items"}]
       59 GETTABLEKS                       R8 R0 K12 ["items"]
       61 SETTABLEKS                       R8 R7 K12 ["items"]
       63 CALL                             R5 2 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R5
       66 CALL                             R2 3 -1
       67 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"key", "LayoutOrder", "title"}]
        5 SETTABLEKS                       R1 R4 K1 ["key"]
        7 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K3 ["title"]
       11 SETTABLEKS                       R5 R4 K3 ["title"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K5 ["map"]
       16 GETTABLEKS                       R6 R0 K6 ["items"]
       18 DUPCLOSURE                       R7 K7 [PROTO_1]
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CALL                             R5 2 -1
       24 CALL                             R2 -1 -1
       25 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["items"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["createElement"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K3 ["Fragment"]
       20 LOADNIL                          R4
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K4 ["map"]
       24 MOVE                             R6 R1
       25 DUPCLOSURE                       R7 K5 [PROTO_2]
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U5
       32 CALL                             R5 2 -1
       33 CALL                             R2 -1 -1
       34 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R8 R9 K4 ["Parent"]
       39 GETTABLEKS                       R7 R8 K13 ["BaseMenuGroup"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R9 R10 K4 ["Parent"]
       48 GETTABLEKS                       R8 R9 K14 ["BaseMenuItem"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K15 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 GETTABLEKS                       R9 R3 K16 ["memo"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 -1
       62 RETURN                           R9 -1
