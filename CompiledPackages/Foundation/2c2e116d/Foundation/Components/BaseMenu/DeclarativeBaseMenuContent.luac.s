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
        4 DUPTABLE                         R4 K15 [{"LayoutOrder", "key", "icon", "leading", "trailing", "isChecked", "isDisabled", "text", "onActivated", "id", "testId", "ref", "menuHasLeading", "menuHasCheck"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 GETTABLEKS                       R5 R0 K10 ["id"]
        9 SETTABLEKS                       R5 R4 K2 ["key"]
       11 GETTABLEKS                       R5 R0 K3 ["icon"]
       13 SETTABLEKS                       R5 R4 K3 ["icon"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K16 ["FoundationBaseMenuBeta"]
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETTABLEKS                       R5 R0 K4 ["leading"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R5
       23 SETTABLEKS                       R5 R4 K4 ["leading"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K16 ["FoundationBaseMenuBeta"]
       28 JUMPIFNOT                        R6 ; [+3]
       29 GETTABLEKS                       R5 R0 K5 ["trailing"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R5
       33 SETTABLEKS                       R5 R4 K5 ["trailing"]
       35 GETTABLEKS                       R5 R0 K6 ["isChecked"]
       37 SETTABLEKS                       R5 R4 K6 ["isChecked"]
       39 GETTABLEKS                       R5 R0 K7 ["isDisabled"]
       41 SETTABLEKS                       R5 R4 K7 ["isDisabled"]
       43 GETTABLEKS                       R5 R0 K8 ["text"]
       45 SETTABLEKS                       R5 R4 K8 ["text"]
       47 GETTABLEKS                       R5 R0 K9 ["onActivated"]
       49 SETTABLEKS                       R5 R4 K9 ["onActivated"]
       51 GETTABLEKS                       R5 R0 K10 ["id"]
       53 SETTABLEKS                       R5 R4 K10 ["id"]
       55 GETTABLEKS                       R6 R0 K17 ["items"]
       57 JUMPIFNOT                        R6 ; [+2]
       58 LOADK                            R5 K18 ["--foundation-menu-submenu-item"]
       59 JUMP                             ; [+1]
       60 LOADK                            R5 K19 ["--foundation-menu-item"]
       61 SETTABLEKS                       R5 R4 K11 ["testId"]
       63 GETTABLEKS                       R5 R0 K12 ["ref"]
       65 SETTABLEKS                       R5 R4 K12 ["ref"]
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R6 R6 K16 ["FoundationBaseMenuBeta"]
       70 JUMPIFNOT                        R6 ; [+2]
       71 GETUPVAL                         R5 3
       72 JUMP                             ; [+1]
       73 LOADNIL                          R5
       74 SETTABLEKS                       R5 R4 K13 ["menuHasLeading"]
       76 GETUPVAL                         R6 2
       77 GETTABLEKS                       R6 R6 K16 ["FoundationBaseMenuBeta"]
       79 JUMPIFNOT                        R6 ; [+2]
       80 GETUPVAL                         R5 4
       81 JUMP                             ; [+1]
       82 LOADNIL                          R5
       83 SETTABLEKS                       R5 R4 K14 ["menuHasCheck"]
       85 GETTABLEKS                       R6 R0 K17 ["items"]
       87 JUMPIFNOT                        R6 ; [+11]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K0 ["createElement"]
       91 GETUPVAL                         R6 5
       92 DUPTABLE                         R7 K20 [{"items"}]
       93 GETTABLEKS                       R8 R0 K17 ["items"]
       95 SETTABLEKS                       R8 R7 K17 ["items"]
       97 CALL                             R5 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R5
      100 CALL                             R2 3 -1
      101 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["createElement"]
        5 GETUPVAL                         R4 2
        6 DUPTABLE                         R5 K6 [{"key", "LayoutOrder", "title", "menuHasLeading", "menuHasCheck"}]
        7 SETTABLEKS                       R1 R5 K1 ["key"]
        9 SETTABLEKS                       R1 R5 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K3 ["title"]
       13 SETTABLEKS                       R6 R5 K3 ["title"]
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R7 R7 K7 ["FoundationBaseMenuBeta"]
       18 JUMPIFNOT                        R7 ; [+2]
       19 MOVE                             R6 R2
       20 JUMP                             ; [+1]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K4 ["menuHasLeading"]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["FoundationBaseMenuBeta"]
       27 JUMPIFNOT                        R7 ; [+2]
       28 GETUPVAL                         R6 4
       29 JUMP                             ; [+1]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K5 ["menuHasCheck"]
       33 GETUPVAL                         R6 5
       34 GETTABLEKS                       R6 R6 K8 ["map"]
       36 GETTABLEKS                       R7 R0 K9 ["items"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U7
       45 CALL                             R6 2 -1
       46 CALL                             R3 -1 -1
       47 RETURN                           R3 -1

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
       13 NEWTABLE                         R2 0 0
       15 LOADB                            R3 0
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["FoundationBaseMenuBeta"]
       19 JUMPIFNOT                        R4 ; [+31]
       20 MOVE                             R4 R1
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 LOADB                            R9 0
       25 GETTABLEKS                       R10 R8 K1 ["items"]
       27 LOADNIL                          R11
       28 LOADNIL                          R12
       29 FORGPREP                         R10
       30 JUMPIF                           R9 ; [+9]
       31 GETTABLEKS                       R15 R14 K3 ["leading"]
       33 JUMPIFNOTEQKNIL                  R15 ; [+5]
       35 GETTABLEKS                       R15 R14 K4 ["icon"]
       37 JUMPIFEQKNIL                     R15 ; [+2]
       39 LOADB                            R9 1
       40 JUMPIF                           R3 ; [+5]
       41 GETTABLEKS                       R15 R14 K5 ["isChecked"]
       43 JUMPIFNOTEQKB                    R15 TRUE ; [+2]
       45 LOADB                            R3 1
       46 FORGLOOP                         R10 2 ; [-17]
       48 SETTABLE                         R9 R2 R7
       49 FORGLOOP                         R4 2 ; [-26]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K6 ["createElement"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K7 ["Fragment"]
       57 LOADNIL                          R6
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K8 ["map"]
       61 MOVE                             R8 R1
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          REF R3
       68 CAPTURE                          UPVAL U1
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U5
       71 CALL                             R7 2 -1
       72 CALL                             R4 -1 -1
       73 CLOSEUPVALS                      R3
       74 RETURN                           R4 -1

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
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K4 ["Parent"]
       39 GETTABLEKS                       R7 R7 K13 ["BaseMenuGroup"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K14 ["BaseMenuItem"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K15 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 GETTABLEKS                       R9 R3 K16 ["memo"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 -1
       62 RETURN                           R9 -1
