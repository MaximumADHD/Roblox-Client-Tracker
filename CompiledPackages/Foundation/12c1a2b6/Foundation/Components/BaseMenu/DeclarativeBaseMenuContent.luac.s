PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["items"]
        6 NEWTABLE                         R2 0 2
        8 LOADN                            R3 1
        9 LOADK                            R4 K1 ["items"]
       10 SETLIST                          R2 R3 2 [1]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["get"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K1 ["items"]
       19 NEWTABLE                         R3 0 2
       21 LOADN                            R4 1
       22 LOADK                            R5 K2 ["id"]
       23 SETLIST                          R3 R4 2 [1]
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R0 ; [+5]
       27 JUMPIF                           R1 ; [+4]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K1 ["items"]
       31 RETURN                           R2 1
       32 NEWTABLE                         R2 0 1
       34 DUPTABLE                         R3 K3 [{"items"}]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K1 ["items"]
       38 SETTABLEKS                       R4 R3 K1 ["items"]
       40 SETLIST                          R2 R3 1 [1]
       42 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
       47 GETTABLEKS                       R6 R0 K12 ["items"]
       49 JUMPIFNOT                        R6 ; [+11]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K0 ["createElement"]
       53 GETUPVAL                         R6 2
       54 DUPTABLE                         R7 K15 [{"items"}]
       55 GETTABLEKS                       R8 R0 K12 ["items"]
       57 SETTABLEKS                       R8 R7 K12 ["items"]
       59 CALL                             R5 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R5
       62 CALL                             R2 3 -1
       63 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"key", "LayoutOrder", "title"}]
        5 SETTABLEKS                       R1 R4 K1 ["key"]
        7 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K3 ["title"]
       11 SETTABLEKS                       R5 R4 K3 ["title"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K5 ["map"]
       16 GETTABLEKS                       R6 R0 K6 ["items"]
       18 DUPCLOSURE                       R7 K7 [PROTO_1]
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CALL                             R5 2 -1
       23 CALL                             R2 -1 -1
       24 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["items"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["createElement"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["Fragment"]
       19 LOADNIL                          R4
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["map"]
       23 MOVE                             R6 R1
       24 DUPCLOSURE                       R7 K5 [PROTO_2]
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CALL                             R5 2 -1
       31 CALL                             R2 -1 -1
       32 RETURN                           R2 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["BaseMenuGroup"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["BaseMenuItem"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K13 [PROTO_3]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 GETTABLEKS                       R8 R3 K14 ["memo"]
       52 MOVE                             R9 R7
       53 CALL                             R8 1 -1
       54 RETURN                           R8 -1
