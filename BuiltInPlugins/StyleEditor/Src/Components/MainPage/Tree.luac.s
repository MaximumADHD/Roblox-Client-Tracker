PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R4 K0 ["StyleRule"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["SelectorSchema"]
       10 GETTABLEKS                       R3 R1 K3 ["SelectorError"]
       12 GETTABLEKS                       R4 R1 K4 ["Selector"]
       14 JUMPIFNOTEQKS                    R4 K5 [""] ; [+12]
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K2 ["SelectorSchema"]
       20 DUPTABLE                         R6 K7 [{"Editing"}]
       21 LOADB                            R7 1
       22 SETTABLEKS                       R7 R6 K6 ["Editing"]
       24 CALL                             R4 2 1
       25 MOVE                             R2 R4
       26 JUMP                             ; [+17]
       27 GETUPVAL                         R4 2
       28 JUMPIF                           R4 ; [+15]
       29 JUMPIFNOTEQKS                    R3 K5 [""] ; [+14]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K8 ["DEPRECATED_isNestedPseudoInstance"]
       34 MOVE                             R5 R1
       35 CALL                             R4 1 1
       36 JUMPIFNOT                        R4 ; [+7]
       37 GETUPVAL                         R4 4
       38 LOADK                            R6 K9 ["Label"]
       39 LOADK                            R7 K10 ["NestedPseudoInstanceError"]
       40 NAMECALL                         R4 R4 K11 ["getText"]
       42 CALL                             R4 3 1
       43 MOVE                             R3 R4
       44 DUPTABLE                         R4 K16 [{"Name", "Id", "Instance", "Children"}]
       45 DUPTABLE                         R5 K21 [{"Actions", "ErrorMessage", "Schema", "Value"}]
       46 GETUPVAL                         R7 5
       47 GETTABLEKS                       R6 R7 K22 ["MoreAction"]
       49 SETTABLEKS                       R6 R5 K17 ["Actions"]
       51 SETTABLEKS                       R3 R5 K18 ["ErrorMessage"]
       53 SETTABLEKS                       R2 R5 K19 ["Schema"]
       55 GETTABLEKS                       R6 R1 K4 ["Selector"]
       57 SETTABLEKS                       R6 R5 K20 ["Value"]
       59 SETTABLEKS                       R5 R4 K12 ["Name"]
       61 GETUPVAL                         R6 6
       62 GETTABLEKS                       R5 R6 K23 ["createItemId"]
       64 MOVE                             R6 R1
       65 CALL                             R5 1 1
       66 SETTABLEKS                       R5 R4 K13 ["Id"]
       68 SETTABLEKS                       R1 R4 K14 ["Instance"]
       70 GETUPVAL                         R5 7
       71 MOVE                             R6 R1
       72 GETUPVAL                         R7 4
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R4 K15 ["Children"]
       76 RETURN                           R4 1

PROTO_3:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K0 ["getOrderedStyleRules"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_4:
        0 LOADK                            R3 K0 ["StyleRule"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+31]
        5 LOADK                            R3 K2 ["StyleCategory"]
        6 NAMECALL                         R1 R0 K3 ["GetAttribute"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+6]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["getSelectorCategory"]
       13 GETTABLEKS                       R2 R0 K5 ["Selector"]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLE                         R2 R3 R1
       18 JUMPIF                           R2 ; [+10]
       19 GETUPVAL                         R2 1
       20 NEWTABLE                         R3 0 0
       22 SETTABLE                         R3 R2 R1
       23 GETUPVAL                         R3 2
       24 FASTCALL2                        TABLE_INSERT R3 R1 ; [+3]
       26 MOVE                             R4 R1
       27 GETUPVAL                         R2 3
       28 CALL                             R2 2 0
       29 GETUPVAL                         R4 1
       30 GETTABLE                         R3 R4 R1
       31 FASTCALL2                        TABLE_INSERT R3 R0 ; [+3]
       33 MOVE                             R4 R0
       34 GETUPVAL                         R2 3
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SelectorSchema"]
        3 GETTABLEKS                       R2 R0 K1 ["Selector"]
        5 JUMPIFNOTEQKS                    R2 K2 [""] ; [+11]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["SelectorSchema"]
       11 DUPTABLE                         R4 K4 [{"Editing"}]
       12 LOADB                            R5 1
       13 SETTABLEKS                       R5 R4 K3 ["Editing"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 DUPTABLE                         R2 K9 [{"Name", "Id", "Instance", "Children"}]
       18 DUPTABLE                         R3 K14 [{"Actions", "ErrorMessage", "Schema", "Value"}]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K15 ["MoreAction"]
       22 SETTABLEKS                       R4 R3 K10 ["Actions"]
       24 JUMPIFNOT                        R0 ; [+3]
       25 GETTABLEKS                       R4 R0 K16 ["SelectorError"]
       27 JUMP                             ; [+1]
       28 LOADK                            R4 K2 [""]
       29 SETTABLEKS                       R4 R3 K11 ["ErrorMessage"]
       31 SETTABLEKS                       R1 R3 K12 ["Schema"]
       33 GETTABLEKS                       R4 R0 K1 ["Selector"]
       35 SETTABLEKS                       R4 R3 K13 ["Value"]
       37 SETTABLEKS                       R3 R2 K5 ["Name"]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R3 R4 K17 ["createItemId"]
       42 MOVE                             R4 R0
       43 CALL                             R3 1 1
       44 SETTABLEKS                       R3 R2 K6 ["Id"]
       46 SETTABLEKS                       R0 R2 K7 ["Instance"]
       48 GETUPVAL                         R3 4
       49 MOVE                             R4 R0
       50 GETUPVAL                         R5 5
       51 CALL                             R3 2 1
       52 SETTABLEKS                       R3 R2 K8 ["Children"]
       54 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LENGTH                           R3 R2
        3 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 DUPTABLE                         R3 K4 [{"Id", "Name", "Children"}]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K5 ["createItemId"]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R1
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K1 ["Id"]
       16 DUPTABLE                         R4 K9 [{"Actions", "LeftIcon", "Value"}]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K10 ["MoreAction"]
       20 SETTABLEKS                       R5 R4 K6 ["Actions"]
       22 DUPTABLE                         R5 K13 [{"Image", "Size"}]
       23 JUMPIFNOTEQKS                    R1 K14 ["UI Elements"] ; [+8]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K15 ["Selectors"]
       28 GETTABLEKS                       R6 R7 K16 ["Class"]
       30 CALL                             R6 0 1
       31 JUMP                             ; [+23]
       32 JUMPIFNOTEQKS                    R1 K17 ["Tags"] ; [+8]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R7 R8 K15 ["Selectors"]
       37 GETTABLEKS                       R6 R7 K18 ["Tag"]
       39 CALL                             R6 0 1
       40 JUMP                             ; [+14]
       41 JUMPIFNOTEQKS                    R1 K19 ["Queries"] ; [+8]
       43 GETUPVAL                         R7 5
       44 JUMPIFNOT                        R7 ; [+5]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R6 R7 K20 ["dimensions"]
       48 CALL                             R6 0 1
       49 JUMP                             ; [+5]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R6 R7 K21 ["getClassIcon"]
       53 LOADK                            R7 K22 ["Folder"]
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K11 ["Image"]
       57 GETUPVAL                         R6 6
       58 SETTABLEKS                       R6 R5 K12 ["Size"]
       60 SETTABLEKS                       R5 R4 K7 ["LeftIcon"]
       62 SETTABLEKS                       R1 R4 K8 ["Value"]
       64 SETTABLEKS                       R4 R3 K2 ["Name"]
       66 GETUPVAL                         R4 7
       67 MOVE                             R5 R2
       68 NEWCLOSURE                       R6 P0
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          UPVAL U11
       75 CALL                             R4 2 1
       76 SETTABLEKS                       R4 R3 K3 ["Children"]
       78 RETURN                           R3 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 NEWTABLE                         R2 0 0
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 4 0
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K0 ["UI Elements"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K1 ["Tags"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K2 ["Components"]
       19 GETUPVAL                         R3 0
       20 JUMPIFNOT                        R3 ; [+4]
       21 NEWTABLE                         R3 0 0
       23 SETTABLEKS                       R3 R2 K3 ["Queries"]
       25 NEWTABLE                         R3 0 3
       27 LOADK                            R4 K0 ["UI Elements"]
       28 LOADK                            R5 K1 ["Tags"]
       29 LOADK                            R6 K2 ["Components"]
       30 SETLIST                          R3 R4 3 [1]
       32 GETUPVAL                         R4 0
       33 JUMPIFNOT                        R4 ; [+8]
       34 LOADN                            R6 3
       35 LOADK                            R7 K3 ["Queries"]
       36 FASTCALL3                        TABLE_INSERT R3 R6 R7
       38 MOVE                             R5 R3
       39 GETIMPORT                        R4 K6 [table.insert]
       41 CALL                             R4 3 0
       42 GETUPVAL                         R4 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K7 ["getOrderedStyleRules"]
       46 MOVE                             R6 R0
       47 CALL                             R5 1 1
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          UPVAL U4
       53 CALL                             R4 2 0
       54 GETUPVAL                         R4 5
       55 MOVE                             R5 R3
       56 NEWCLOSURE                       R6 P1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          UPVAL U12
       67 CAPTURE                          UPVAL U13
       68 CAPTURE                          VAL R1
       69 CALL                             R4 2 1
       70 RETURN                           R4 1

PROTO_8:
        0 DUPTABLE                         R2 K4 [{"Name", "Id", "Children", "Instance"}]
        1 DUPTABLE                         R3 K8 [{"Actions", "Schema", "Value"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K9 ["MoreAction"]
        5 SETTABLEKS                       R4 R3 K5 ["Actions"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K10 ["StyleSheetSchema"]
       10 SETTABLEKS                       R4 R3 K6 ["Schema"]
       12 GETTABLEKS                       R4 R1 K0 ["Name"]
       14 SETTABLEKS                       R4 R3 K7 ["Value"]
       16 SETTABLEKS                       R3 R2 K0 ["Name"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K11 ["createItemId"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K1 ["Id"]
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R1
       27 GETUPVAL                         R5 4
       28 CALL                             R3 2 1
       29 SETTABLEKS                       R3 R2 K2 ["Children"]
       31 SETTABLEKS                       R1 R2 K3 ["Instance"]
       33 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 OR                               R2 R3 R0
        3 DUPTABLE                         R3 K4 [{"Name", "Id", "Instance", "Children"}]
        4 DUPTABLE                         R4 K8 [{"Actions", "Schema", "Value"}]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K9 ["MoreAction"]
        8 SETTABLEKS                       R5 R4 K5 ["Actions"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K10 ["FolderSchema"]
       13 SETTABLEKS                       R5 R4 K6 ["Schema"]
       15 SETTABLEKS                       R2 R4 K7 ["Value"]
       17 SETTABLEKS                       R4 R3 K0 ["Name"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K11 ["createItemId"]
       22 MOVE                             R5 R0
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K1 ["Id"]
       26 FASTCALL1                        TYPEOF R0 ; [+3]
       27 MOVE                             R6 R0
       28 GETIMPORT                        R5 K13 [typeof]
       30 CALL                             R5 1 1
       31 JUMPIFNOTEQKS                    R5 K2 ["Instance"] ; [+3]
       33 MOVE                             R4 R0
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K2 ["Instance"]
       38 GETUPVAL                         R4 3
       39 MOVE                             R5 R1
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K3 ["Children"]
       49 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R1
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_11:
        0 LOADK                            R3 K0 ["StyleCategory"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["Folder"]
        5 NAMECALL                         R2 R0 K3 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+14]
        9 JUMPIFNOT                        R1 ; [+13]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R1
       12 LOADK                            R4 K4 ["Themes"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+77]
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R2 R3 R0
       17 JUMPIF                           R2 ; [+74]
       18 GETUPVAL                         R2 1
       19 NEWTABLE                         R3 0 0
       21 SETTABLE                         R3 R2 R0
       22 RETURN                           R0 0
       23 LOADK                            R4 K5 ["StyleSheet"]
       24 NAMECALL                         R2 R0 K3 ["IsA"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+64]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K6 ["getStudioDefaultStyleSheet"]
       31 CALL                             R2 0 1
       32 JUMPIFNOTEQ                      R0 R2 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R2 R0 K7 ["Parent"]
       37 JUMPIF                           R1 ; [+9]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K8 ["isTheme"]
       41 MOVE                             R4 R0
       42 CALL                             R3 1 1
       43 JUMPIFNOT                        R3 ; [+2]
       44 LOADK                            R1 K4 ["Themes"]
       45 JUMP                             ; [+1]
       46 LOADK                            R1 K9 ["StyleSheets"]
       47 JUMPIFNOTEQKS                    R1 K4 ["Themes"] ; [+24]
       49 LOADK                            R6 K2 ["Folder"]
       50 NAMECALL                         R4 R2 K3 ["IsA"]
       52 CALL                             R4 2 1
       53 JUMPIFNOT                        R4 ; [+2]
       54 MOVE                             R3 R2
       55 JUMP                             ; [+1]
       56 LOADK                            R3 K10 ["Other"]
       57 GETUPVAL                         R5 1
       58 GETTABLE                         R4 R5 R3
       59 JUMPIF                           R4 ; [+4]
       60 GETUPVAL                         R4 1
       61 NEWTABLE                         R5 0 0
       63 SETTABLE                         R5 R4 R3
       64 GETUPVAL                         R6 1
       65 GETTABLE                         R5 R6 R3
       66 FASTCALL2                        TABLE_INSERT R5 R0 ; [+3]
       68 MOVE                             R6 R0
       69 GETUPVAL                         R4 3
       70 CALL                             R4 2 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R4 4
       73 GETTABLE                         R3 R4 R1
       74 JUMPIF                           R3 ; [+10]
       75 GETUPVAL                         R3 4
       76 NEWTABLE                         R4 0 0
       78 SETTABLE                         R4 R3 R1
       79 GETUPVAL                         R4 5
       80 FASTCALL2                        TABLE_INSERT R4 R1 ; [+3]
       82 MOVE                             R5 R1
       83 GETUPVAL                         R3 3
       84 CALL                             R3 2 0
       85 GETUPVAL                         R5 4
       86 GETTABLE                         R4 R5 R1
       87 FASTCALL2                        TABLE_INSERT R4 R0 ; [+3]
       89 MOVE                             R5 R0
       90 GETUPVAL                         R3 3
       91 CALL                             R3 2 0
       92 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["StyleSheetSchema"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 JUMPIFNOTEQKS                    R2 K2 [""] ; [+9]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 DUPTABLE                         R4 K4 [{"Editing"}]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K3 ["Editing"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 DUPTABLE                         R2 K8 [{"Name", "Id", "Children", "Instance"}]
       16 DUPTABLE                         R3 K12 [{"Actions", "Schema", "Value"}]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K13 ["MoreAction"]
       20 SETTABLEKS                       R4 R3 K9 ["Actions"]
       22 SETTABLEKS                       R1 R3 K10 ["Schema"]
       24 GETTABLEKS                       R4 R0 K1 ["Name"]
       26 SETTABLEKS                       R4 R3 K11 ["Value"]
       28 SETTABLEKS                       R3 R2 K1 ["Name"]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R3 R4 K14 ["createItemId"]
       33 MOVE                             R4 R0
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K5 ["Id"]
       37 GETUPVAL                         R3 4
       38 MOVE                             R4 R0
       39 GETUPVAL                         R5 5
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K6 ["Children"]
       43 SETTABLEKS                       R0 R2 K7 ["Instance"]
       45 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 LOADK                            R7 K0 ["Themes"]
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+21]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 GETUPVAL                         R7 4
       12 MOVE                             R8 R5
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          VAL R6
       20 CALL                             R7 2 1
       21 MOVE                             R3 R7
       22 GETUPVAL                         R7 9
       23 GETTABLEKS                       R6 R7 K1 ["Standard"]
       25 GETTABLEKS                       R5 R6 K2 ["ThemeSheet"]
       27 CALL                             R5 0 1
       28 MOVE                             R4 R5
       29 JUMP                             ; [+13]
       30 GETUPVAL                         R5 10
       31 GETTABLE                         R4 R5 R1
       32 GETUPVAL                         R5 11
       33 MOVE                             R6 R2
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U12
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U3
       41 CALL                             R5 2 1
       42 MOVE                             R3 R5
       43 DUPTABLE                         R5 K6 [{"Name", "Id", "Children"}]
       44 DUPTABLE                         R6 K13 [{"Actions", "ExpandByDefault", "FullSpan", "Value", "AlwaysShowActions", "LeftIcon"}]
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R7 R8 K14 ["CategoryPlusButtonAction"]
       48 SETTABLEKS                       R7 R6 K7 ["Actions"]
       50 LOADB                            R7 1
       51 SETTABLEKS                       R7 R6 K8 ["ExpandByDefault"]
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R6 K9 ["FullSpan"]
       56 SETTABLEKS                       R1 R6 K10 ["Value"]
       58 LOADB                            R7 1
       59 SETTABLEKS                       R7 R6 K11 ["AlwaysShowActions"]
       61 DUPTABLE                         R7 K17 [{"Image", "Size"}]
       62 SETTABLEKS                       R4 R7 K15 ["Image"]
       64 GETUPVAL                         R8 13
       65 SETTABLEKS                       R8 R7 K16 ["Size"]
       67 SETTABLEKS                       R7 R6 K12 ["LeftIcon"]
       69 SETTABLEKS                       R6 R5 K3 ["Name"]
       71 GETUPVAL                         R7 7
       72 GETTABLEKS                       R6 R7 K18 ["createItemId"]
       74 MOVE                             R7 R1
       75 CALL                             R6 1 1
       76 SETTABLEKS                       R6 R5 K4 ["Id"]
       78 SETTABLEKS                       R3 R5 K5 ["Children"]
       80 RETURN                           R5 1

PROTO_14:
        0 DUPTABLE                         R2 K2 [{"StyleSheets", "Tokens"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["StyleSheets"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["Tokens"]
        9 DUPTABLE                         R3 K4 [{"StyleSheets", "Tokens", "Themes"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K5 ["Standard"]
       13 GETTABLEKS                       R4 R5 K6 ["DesignSheet"]
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K0 ["StyleSheets"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K5 ["Standard"]
       21 GETTABLEKS                       R4 R5 K7 ["TokenSheet"]
       23 CALL                             R4 0 1
       24 SETTABLEKS                       R4 R3 K1 ["Tokens"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K5 ["Standard"]
       29 GETTABLEKS                       R4 R5 K8 ["ThemeSheet"]
       31 CALL                             R4 0 1
       32 SETTABLEKS                       R4 R3 K3 ["Themes"]
       34 NEWTABLE                         R4 0 0
       36 NEWTABLE                         R5 0 3
       38 LOADK                            R6 K0 ["StyleSheets"]
       39 LOADK                            R7 K1 ["Tokens"]
       40 LOADK                            R8 K3 ["Themes"]
       41 SETLIST                          R5 R6 3 [1]
       43 GETUPVAL                         R6 1
       44 NAMECALL                         R7 R0 K9 ["GetDescendants"]
       46 CALL                             R7 1 1
       47 NEWCLOSURE                       R8 P0
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CALL                             R6 2 0
       55 GETUPVAL                         R6 5
       56 MOVE                             R7 R5
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          UPVAL U11
       71 CAPTURE                          UPVAL U12
       72 CALL                             R6 2 1
       73 RETURN                           R6 1

PROTO_15:
        0 LOADK                            R3 K0 ["StyleCategory"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["Folder"]
        5 NAMECALL                         R2 R0 K3 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+14]
        9 JUMPIFNOT                        R1 ; [+13]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R1
       12 LOADK                            R4 K4 ["Themes"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+77]
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R2 R3 R0
       17 JUMPIF                           R2 ; [+74]
       18 GETUPVAL                         R2 1
       19 NEWTABLE                         R3 0 0
       21 SETTABLE                         R3 R2 R0
       22 RETURN                           R0 0
       23 LOADK                            R4 K5 ["StyleSheet"]
       24 NAMECALL                         R2 R0 K3 ["IsA"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+64]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K6 ["getStudioDefaultStyleSheet"]
       31 CALL                             R2 0 1
       32 JUMPIFNOTEQ                      R0 R2 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R2 R0 K7 ["Parent"]
       37 JUMPIF                           R1 ; [+9]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K8 ["isTheme"]
       41 MOVE                             R4 R0
       42 CALL                             R3 1 1
       43 JUMPIFNOT                        R3 ; [+2]
       44 LOADK                            R1 K4 ["Themes"]
       45 JUMP                             ; [+1]
       46 LOADK                            R1 K9 ["StyleSheets"]
       47 JUMPIFNOTEQKS                    R1 K4 ["Themes"] ; [+24]
       49 LOADK                            R6 K2 ["Folder"]
       50 NAMECALL                         R4 R2 K3 ["IsA"]
       52 CALL                             R4 2 1
       53 JUMPIFNOT                        R4 ; [+2]
       54 MOVE                             R3 R2
       55 JUMP                             ; [+1]
       56 LOADK                            R3 K10 ["Other"]
       57 GETUPVAL                         R5 1
       58 GETTABLE                         R4 R5 R3
       59 JUMPIF                           R4 ; [+4]
       60 GETUPVAL                         R4 1
       61 NEWTABLE                         R5 0 0
       63 SETTABLE                         R5 R4 R3
       64 GETUPVAL                         R6 1
       65 GETTABLE                         R5 R6 R3
       66 FASTCALL2                        TABLE_INSERT R5 R0 ; [+3]
       68 MOVE                             R6 R0
       69 GETUPVAL                         R4 3
       70 CALL                             R4 2 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R4 4
       73 GETTABLE                         R3 R4 R1
       74 JUMPIF                           R3 ; [+10]
       75 GETUPVAL                         R3 4
       76 NEWTABLE                         R4 0 0
       78 SETTABLE                         R4 R3 R1
       79 GETUPVAL                         R4 5
       80 FASTCALL2                        TABLE_INSERT R4 R1 ; [+3]
       82 MOVE                             R5 R1
       83 GETUPVAL                         R3 3
       84 CALL                             R3 2 0
       85 GETUPVAL                         R5 4
       86 GETTABLE                         R4 R5 R1
       87 FASTCALL2                        TABLE_INSERT R4 R0 ; [+3]
       89 MOVE                             R5 R0
       90 GETUPVAL                         R3 3
       91 CALL                             R3 2 0
       92 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        3 CALL                             R2 1 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["StyleSheetSchema"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 JUMPIFNOTEQKS                    R2 K2 [""] ; [+9]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 DUPTABLE                         R4 K4 [{"Editing"}]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K3 ["Editing"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 DUPTABLE                         R2 K8 [{"Name", "Id", "Children", "Instance"}]
       16 DUPTABLE                         R3 K12 [{"Actions", "Schema", "Value"}]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K13 ["MoreAction"]
       20 SETTABLEKS                       R4 R3 K9 ["Actions"]
       22 SETTABLEKS                       R1 R3 K10 ["Schema"]
       24 GETTABLEKS                       R4 R0 K1 ["Name"]
       26 SETTABLEKS                       R4 R3 K11 ["Value"]
       28 SETTABLEKS                       R3 R2 K1 ["Name"]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R3 R4 K14 ["createItemId"]
       33 MOVE                             R4 R0
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K5 ["Id"]
       37 GETUPVAL                         R3 4
       38 MOVE                             R4 R0
       39 GETUPVAL                         R5 5
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K6 ["Children"]
       43 SETTABLEKS                       R0 R2 K7 ["Instance"]
       45 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 LOADK                            R7 K0 ["Themes"]
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+21]
        9 GETUPVAL                         R5 2
       10 GETUPVAL                         R6 3
       11 GETUPVAL                         R7 4
       12 MOVE                             R8 R5
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          VAL R6
       20 CALL                             R7 2 1
       21 MOVE                             R3 R7
       22 GETUPVAL                         R7 9
       23 GETTABLEKS                       R6 R7 K1 ["Standard"]
       25 GETTABLEKS                       R5 R6 K2 ["ThemeSheet"]
       27 CALL                             R5 0 1
       28 MOVE                             R4 R5
       29 JUMP                             ; [+13]
       30 GETUPVAL                         R5 10
       31 GETTABLE                         R4 R5 R1
       32 GETUPVAL                         R5 11
       33 MOVE                             R6 R2
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U12
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U3
       41 CALL                             R5 2 1
       42 MOVE                             R3 R5
       43 DUPTABLE                         R5 K6 [{"Name", "Id", "Children"}]
       44 DUPTABLE                         R6 K13 [{"Actions", "ExpandByDefault", "FullSpan", "Value", "AlwaysShowActions", "LeftIcon"}]
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R7 R8 K14 ["CategoryPlusButtonAction"]
       48 SETTABLEKS                       R7 R6 K7 ["Actions"]
       50 LOADB                            R7 1
       51 SETTABLEKS                       R7 R6 K8 ["ExpandByDefault"]
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R6 K9 ["FullSpan"]
       56 SETTABLEKS                       R1 R6 K10 ["Value"]
       58 LOADB                            R7 1
       59 SETTABLEKS                       R7 R6 K11 ["AlwaysShowActions"]
       61 DUPTABLE                         R7 K17 [{"Image", "Size"}]
       62 SETTABLEKS                       R4 R7 K15 ["Image"]
       64 GETUPVAL                         R8 13
       65 SETTABLEKS                       R8 R7 K16 ["Size"]
       67 SETTABLEKS                       R7 R6 K12 ["LeftIcon"]
       69 SETTABLEKS                       R6 R5 K3 ["Name"]
       71 GETUPVAL                         R7 7
       72 GETTABLEKS                       R6 R7 K18 ["createItemId"]
       74 MOVE                             R7 R1
       75 CALL                             R6 1 1
       76 SETTABLEKS                       R6 R5 K4 ["Id"]
       78 SETTABLEKS                       R3 R5 K5 ["Children"]
       80 RETURN                           R5 1

PROTO_19:
        0 JUMPIF                           R0 ; [+6]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 0
        4 SETLIST                          R2 R3 1 [1]
        6 MOVE                             R0 R2
        7 DUPTABLE                         R2 K2 [{"StyleSheets", "Tokens"}]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K0 ["StyleSheets"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K1 ["Tokens"]
       16 DUPTABLE                         R3 K4 [{"StyleSheets", "Tokens", "Themes"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["Standard"]
       20 GETTABLEKS                       R4 R5 K6 ["DesignSheet"]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R3 K0 ["StyleSheets"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K5 ["Standard"]
       28 GETTABLEKS                       R4 R5 K7 ["TokenSheet"]
       30 CALL                             R4 0 1
       31 SETTABLEKS                       R4 R3 K1 ["Tokens"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K5 ["Standard"]
       36 GETTABLEKS                       R4 R5 K8 ["ThemeSheet"]
       38 CALL                             R4 0 1
       39 SETTABLEKS                       R4 R3 K3 ["Themes"]
       41 NEWTABLE                         R4 0 0
       43 NEWTABLE                         R5 0 3
       45 LOADK                            R6 K0 ["StyleSheets"]
       46 LOADK                            R7 K1 ["Tokens"]
       47 LOADK                            R8 K3 ["Themes"]
       48 SETLIST                          R5 R6 3 [1]
       50 GETUPVAL                         R6 2
       51 MOVE                             R7 R0
       52 NEWCLOSURE                       R8 P0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CALL                             R6 2 0
       61 GETUPVAL                         R6 6
       62 MOVE                             R7 R5
       63 NEWCLOSURE                       R8 P1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          UPVAL U10
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          UPVAL U13
       78 CALL                             R6 2 1
       79 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R4 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R4 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R4 R2 K11 ["Util"]
       26 GETTABLEKS                       R3 R4 K12 ["EditTree"]
       28 GETIMPORT                        R4 K8 [require]
       30 GETTABLEKS                       R7 R1 K13 ["Src"]
       32 GETTABLEKS                       R6 R7 K14 ["Flags"]
       34 GETTABLEKS                       R5 R6 K15 ["getFFlagStyleQuery"]
       36 CALL                             R4 1 1
       37 CALL                             R4 0 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R8 R1 K13 ["Src"]
       42 GETTABLEKS                       R7 R8 K14 ["Flags"]
       44 GETTABLEKS                       R6 R7 K16 ["getEngineFeatureNestedPseudoInstance"]
       46 CALL                             R5 1 1
       47 CALL                             R5 0 1
       48 GETIMPORT                        R6 K8 [require]
       50 GETTABLEKS                       R9 R1 K13 ["Src"]
       52 GETTABLEKS                       R8 R9 K11 ["Util"]
       54 GETTABLEKS                       R7 R8 K17 ["DesignHelpers"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K8 [require]
       59 GETTABLEKS                       R10 R1 K13 ["Src"]
       61 GETTABLEKS                       R9 R10 K11 ["Util"]
       63 GETTABLEKS                       R8 R9 K18 ["MenuHelpers"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K8 [require]
       68 GETTABLEKS                       R11 R1 K13 ["Src"]
       70 GETTABLEKS                       R10 R11 K11 ["Util"]
       72 GETTABLEKS                       R9 R10 K19 ["StyleSchema"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K8 [require]
       77 GETTABLEKS                       R12 R1 K13 ["Src"]
       79 GETTABLEKS                       R11 R12 K20 ["Resources"]
       81 GETTABLEKS                       R10 R11 K21 ["ModernIcons"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K8 [require]
       86 GETTABLEKS                       R13 R1 K13 ["Src"]
       88 GETTABLEKS                       R12 R13 K11 ["Util"]
       90 GETTABLEKS                       R11 R12 K22 ["SelectorHelpers"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K8 [require]
       95 GETTABLEKS                       R14 R1 K13 ["Src"]
       97 GETTABLEKS                       R13 R14 K11 ["Util"]
       99 GETTABLEKS                       R12 R13 K23 ["StyleRuleHelpers"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K8 [require]
      104 GETTABLEKS                       R15 R1 K13 ["Src"]
      106 GETTABLEKS                       R14 R15 K11 ["Util"]
      108 GETTABLEKS                       R13 R14 K24 ["TreeTableHelpers"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K8 [require]
      113 GETTABLEKS                       R15 R1 K9 ["Packages"]
      115 GETTABLEKS                       R14 R15 K25 ["Dash"]
      117 CALL                             R13 1 1
      118 GETTABLEKS                       R14 R13 K26 ["collectArray"]
      120 GETTABLEKS                       R15 R13 K27 ["forEach"]
      122 GETTABLEKS                       R16 R13 K28 ["join"]
      124 GETTABLEKS                       R17 R13 K29 ["map"]
      126 GETTABLEKS                       R18 R13 K30 ["startsWith"]
      128 GETIMPORT                        R19 K33 [table.insert]
      130 GETIMPORT                        R20 K8 [require]
      132 GETTABLEKS                       R23 R1 K13 ["Src"]
      134 GETTABLEKS                       R22 R23 K20 ["Resources"]
      136 GETTABLEKS                       R21 R22 K34 ["PluginStyles"]
      138 CALL                             R20 1 1
      139 LOADK                            R23 K35 ["Icon16"]
      140 NAMECALL                         R21 R20 K36 ["GetAttribute"]
      142 CALL                             R21 2 1
      143 GETIMPORT                        R22 K8 [require]
      145 GETTABLEKS                       R24 R1 K13 ["Src"]
      147 GETTABLEKS                       R23 R24 K37 ["Types"]
      149 CALL                             R22 1 1
      150 NEWTABLE                         R23 4 0
      152 NEWTABLE                         R24 0 1
      154 DUPTABLE                         R25 K41 [{"Name", "Key", "Width"}]
      155 LOADK                            R26 K38 ["Name"]
      156 SETTABLEKS                       R26 R25 K38 ["Name"]
      158 LOADK                            R26 K38 ["Name"]
      159 SETTABLEKS                       R26 R25 K39 ["Key"]
      161 GETIMPORT                        R26 K44 [UDim.new]
      163 LOADN                            R27 1
      164 LOADN                            R28 0
      165 CALL                             R26 2 1
      166 SETTABLEKS                       R26 R25 K40 ["Width"]
      168 SETLIST                          R24 R25 1 [1]
      170 SETTABLEKS                       R24 R23 K45 ["Columns"]
      172 GETTABLEKS                       R24 R3 K43 ["new"]
      174 DUPTABLE                         R25 K48 [{"getChildren", "getId"}]
      175 DUPCLOSURE                       R26 K49 [PROTO_0]
      176 SETTABLEKS                       R26 R25 K46 ["getChildren"]
      178 DUPCLOSURE                       R26 K50 [PROTO_1]
      179 SETTABLEKS                       R26 R25 K47 ["getId"]
      181 CALL                             R24 1 1
      182 SETTABLEKS                       R24 R23 K12 ["EditTree"]
      184 DUPCLOSURE                       R25 K51 [PROTO_3]
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R5
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R25
      194 DUPCLOSURE                       R26 K52 [PROTO_7]
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R25
      209 DUPCLOSURE                       R27 K53 [PROTO_10]
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R26
      215 DUPCLOSURE                       R28 K54 [PROTO_14]
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R18
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R21
      229 SETTABLEKS                       R28 R23 K55 ["buildTree"]
      231 DUPCLOSURE                       R28 K56 [PROTO_19]
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R19
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R8
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R17
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R21
      246 SETTABLEKS                       R28 R23 K57 ["DEPRECATED_buildTree"]
      248 RETURN                           R23 1
