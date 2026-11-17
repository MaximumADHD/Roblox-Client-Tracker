PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 NEWTABLE                         R1 0 0
        7 NAMECALL                         R2 R0 K2 ["GetStyleRules"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 GETTABLE                         R7 R1 R6
       12 JUMPIF                           R7 ; [+26]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K3 ["getQueryTypeFromSelector"]
       16 GETTABLEKS                       R8 R6 K4 ["Selector"]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K5 ["Type"]
       22 GETTABLEKS                       R8 R8 K6 ["Pseudo"]
       24 JUMPIFNOTEQ                      R7 R8 ; [+14]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K7 ["getQueryStyleRulesForPseudo"]
       29 MOVE                             R9 R6
       30 CALL                             R8 1 1
       31 MOVE                             R9 R8
       32 LOADNIL                          R10
       33 LOADNIL                          R11
       34 FORGPREP                         R9
       35 LOADB                            R14 1
       36 SETTABLE                         R14 R1 R13
       37 FORGLOOP                         R9 2 ; [-3]
       39 FORGLOOP                         R2 2 ; [-29]
       41 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 ["StyleRule"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["SelectorSchema"]
       10 GETTABLEKS                       R3 R1 K3 ["SelectorError"]
       12 GETTABLEKS                       R4 R1 K4 ["Selector"]
       14 JUMPIFNOTEQKS                    R4 K5 [""] ; [+8]
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K2 ["SelectorSchema"]
       20 DUPTABLE                         R6 K8 [{["Editing"] = True}]
       21 CALL                             R4 2 1
       22 MOVE                             R2 R4
       23 DUPTABLE                         R4 K13 [{"Name", "Id", "Instance", "Children"}]
       24 DUPTABLE                         R5 K18 [{"Actions", "ErrorMessage", "Schema", "Value"}]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K19 ["MoreAction"]
       28 SETTABLEKS                       R6 R5 K14 ["Actions"]
       30 SETTABLEKS                       R3 R5 K15 ["ErrorMessage"]
       32 SETTABLEKS                       R2 R5 K16 ["Schema"]
       34 GETTABLEKS                       R6 R1 K4 ["Selector"]
       36 SETTABLEKS                       R6 R5 K17 ["Value"]
       38 SETTABLEKS                       R5 R4 K9 ["Name"]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K20 ["createItemId"]
       43 MOVE                             R6 R1
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K10 ["Id"]
       47 SETTABLEKS                       R1 R4 K11 ["Instance"]
       49 GETUPVAL                         R5 4
       50 MOVE                             R6 R1
       51 GETUPVAL                         R7 5
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K12 ["Children"]
       55 RETURN                           R4 1

PROTO_4:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["getOrderedStyleRules"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          VAL R1
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_5:
        0 LOADK                            R4 K0 ["Folder"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+35]
        5 DUPTABLE                         R2 K6 [{"Id", "Instance", "Name", "Children"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K7 ["createItemId"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R2 K2 ["Id"]
       13 SETTABLEKS                       R1 R2 K3 ["Instance"]
       15 DUPTABLE                         R3 K11 [{"Schema", "Value", "Actions"}]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K12 ["FolderSchema"]
       19 SETTABLEKS                       R4 R3 K8 ["Schema"]
       21 GETTABLEKS                       R4 R1 K4 ["Name"]
       23 SETTABLEKS                       R4 R3 K9 ["Value"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K13 ["MoreAction"]
       28 SETTABLEKS                       R4 R3 K10 ["Actions"]
       30 SETTABLEKS                       R3 R2 K4 ["Name"]
       32 GETUPVAL                         R3 3
       33 MOVE                             R4 R1
       34 GETUPVAL                         R5 4
       35 GETUPVAL                         R6 5
       36 CALL                             R3 3 1
       37 SETTABLEKS                       R3 R2 K5 ["Children"]
       39 RETURN                           R2 1
       40 LOADK                            R5 K14 ["StyleRule"]
       41 NAMECALL                         R3 R1 K1 ["IsA"]
       43 CALL                             R3 2 -1
       44 FASTCALL                         ASSERT ; [+2]
       45 GETIMPORT                        R2 K16 [assert]
       47 CALL                             R2 -1 0
       48 GETUPVAL                         R3 4
       49 GETTABLE                         R2 R3 R1
       50 JUMPIFNOT                        R2 ; [+2]
       51 LOADNIL                          R2
       52 RETURN                           R2 1
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K17 ["SelectorSchema"]
       56 GETTABLEKS                       R3 R1 K18 ["SelectorError"]
       58 GETTABLEKS                       R4 R1 K19 ["Selector"]
       60 JUMPIFNOTEQKS                    R4 K20 [""] ; [+8]
       62 GETUPVAL                         R4 6
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K17 ["SelectorSchema"]
       66 DUPTABLE                         R6 K23 [{["Editing"] = True}]
       67 CALL                             R4 2 1
       68 MOVE                             R2 R4
       69 GETUPVAL                         R4 3
       70 MOVE                             R5 R1
       71 GETUPVAL                         R6 7
       72 MOVE                             R7 R1
       73 CALL                             R6 1 1
       74 GETUPVAL                         R7 5
       75 CALL                             R4 3 1
       76 GETUPVAL                         R5 8
       77 GETTABLEKS                       R5 R5 K24 ["getQueryTypeFromSelector"]
       79 GETTABLEKS                       R6 R1 K19 ["Selector"]
       81 CALL                             R5 1 1
       82 JUMPIFNOT                        R5 ; [+60]
       83 GETUPVAL                         R6 8
       84 GETTABLEKS                       R6 R6 K25 ["Type"]
       86 GETTABLEKS                       R6 R6 K26 ["Pseudo"]
       88 JUMPIFNOTEQ                      R5 R6 ; [+54]
       90 GETUPVAL                         R6 8
       91 GETTABLEKS                       R6 R6 K27 ["getQueryStyleRulesForPseudo"]
       93 MOVE                             R7 R1
       94 CALL                             R6 1 1
       95 MOVE                             R7 R6
       96 LOADNIL                          R8
       97 LOADNIL                          R9
       98 FORGPREP                         R7
       99 DUPTABLE                         R12 K6 [{"Id", "Instance", "Name", "Children"}]
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R13 R13 K7 ["createItemId"]
      103 MOVE                             R14 R11
      104 CALL                             R13 1 1
      105 SETTABLEKS                       R13 R12 K2 ["Id"]
      107 SETTABLEKS                       R11 R12 K3 ["Instance"]
      109 DUPTABLE                         R13 K29 [{"Value", "Schema", "ErrorMessage", "Actions"}]
      110 GETTABLEKS                       R14 R11 K19 ["Selector"]
      112 SETTABLEKS                       R14 R13 K9 ["Value"]
      114 SETTABLEKS                       R2 R13 K8 ["Schema"]
      116 SETTABLEKS                       R3 R13 K28 ["ErrorMessage"]
      118 GETUPVAL                         R14 2
      119 GETTABLEKS                       R14 R14 K13 ["MoreAction"]
      121 SETTABLEKS                       R14 R13 K10 ["Actions"]
      123 SETTABLEKS                       R13 R12 K4 ["Name"]
      125 GETUPVAL                         R13 3
      126 MOVE                             R14 R11
      127 GETUPVAL                         R15 7
      128 MOVE                             R16 R11
      129 CALL                             R15 1 1
      130 GETUPVAL                         R16 5
      131 CALL                             R13 3 1
      132 SETTABLEKS                       R13 R12 K5 ["Children"]
      134 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
      136 MOVE                             R14 R4
      137 MOVE                             R15 R12
      138 GETIMPORT                        R13 K32 [table.insert]
      140 CALL                             R13 2 0
      141 FORGLOOP                         R7 2 ; [-43]
      143 DUPTABLE                         R6 K6 [{"Id", "Instance", "Name", "Children"}]
      144 GETUPVAL                         R7 0
      145 GETTABLEKS                       R7 R7 K7 ["createItemId"]
      147 MOVE                             R8 R1
      148 CALL                             R7 1 1
      149 SETTABLEKS                       R7 R6 K2 ["Id"]
      151 SETTABLEKS                       R1 R6 K3 ["Instance"]
      153 DUPTABLE                         R7 K29 [{"Value", "Schema", "ErrorMessage", "Actions"}]
      154 GETTABLEKS                       R8 R1 K19 ["Selector"]
      156 SETTABLEKS                       R8 R7 K9 ["Value"]
      158 SETTABLEKS                       R2 R7 K8 ["Schema"]
      160 SETTABLEKS                       R3 R7 K28 ["ErrorMessage"]
      162 GETUPVAL                         R8 2
      163 GETTABLEKS                       R8 R8 K13 ["MoreAction"]
      165 SETTABLEKS                       R8 R7 K10 ["Actions"]
      167 SETTABLEKS                       R7 R6 K4 ["Name"]
      169 SETTABLEKS                       R4 R6 K5 ["Children"]
      171 RETURN                           R6 1

PROTO_6:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R3 0 0
        3 RETURN                           R3 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["getOrderedStyleRulesAndFolders"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R3
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CALL                             R4 2 -1
       22 RETURN                           R4 -1

PROTO_7:
        0 LOADK                            R3 K0 ["StyleRule"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+32]
        5 LOADK                            R3 K2 ["StyleCategory"]
        6 NAMECALL                         R1 R0 K3 ["GetAttribute"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+6]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["getSelectorCategory"]
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
       37 LOADK                            R3 K6 ["Folder"]
       38 NAMECALL                         R1 R0 K1 ["IsA"]
       40 CALL                             R1 2 1
       41 JUMPIFNOT                        R1 ; [+6]
       42 GETUPVAL                         R2 4
       43 FASTCALL2                        TABLE_INSERT R2 R0 ; [+3]
       45 MOVE                             R3 R0
       46 GETUPVAL                         R1 3
       47 CALL                             R1 2 0
       48 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R3 K0 ["StyleRule"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+31]
        5 LOADK                            R3 K2 ["StyleCategory"]
        6 NAMECALL                         R1 R0 K3 ["GetAttribute"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+6]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["getSelectorCategory"]
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectorSchema"]
        3 GETTABLEKS                       R2 R0 K1 ["Selector"]
        5 JUMPIFNOTEQKS                    R2 K2 [""] ; [+8]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["SelectorSchema"]
       11 DUPTABLE                         R4 K5 [{["Editing"] = True}]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 DUPTABLE                         R2 K10 [{"Name", "Id", "Instance", "Children"}]
       15 DUPTABLE                         R3 K15 [{"Actions", "ErrorMessage", "Schema", "Value"}]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K16 ["MoreAction"]
       19 SETTABLEKS                       R4 R3 K11 ["Actions"]
       21 JUMPIFNOT                        R0 ; [+3]
       22 GETTABLEKS                       R4 R0 K17 ["SelectorError"]
       24 JUMP                             ; [+1]
       25 LOADK                            R4 K2 [""]
       26 SETTABLEKS                       R4 R3 K12 ["ErrorMessage"]
       28 SETTABLEKS                       R1 R3 K13 ["Schema"]
       30 GETTABLEKS                       R4 R0 K1 ["Selector"]
       32 SETTABLEKS                       R4 R3 K14 ["Value"]
       34 SETTABLEKS                       R3 R2 K6 ["Name"]
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K18 ["createItemId"]
       39 MOVE                             R4 R0
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K7 ["Id"]
       43 SETTABLEKS                       R0 R2 K8 ["Instance"]
       45 GETUPVAL                         R4 4
       46 JUMPIFNOT                        R4 ; [+8]
       47 GETUPVAL                         R3 5
       48 MOVE                             R4 R0
       49 GETUPVAL                         R5 6
       50 MOVE                             R6 R0
       51 CALL                             R5 1 1
       52 GETUPVAL                         R6 7
       53 CALL                             R3 3 1
       54 JUMP                             ; [+4]
       55 GETUPVAL                         R3 8
       56 MOVE                             R4 R0
       57 GETUPVAL                         R5 7
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R2 K9 ["Children"]
       61 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LENGTH                           R3 R2
        3 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 DUPTABLE                         R3 K4 [{"Id", "Name", "Children"}]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K5 ["createItemId"]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R1
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K1 ["Id"]
       16 DUPTABLE                         R4 K9 [{"Actions", "LeftIcon", "Value"}]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K10 ["MoreAction"]
       20 SETTABLEKS                       R5 R4 K6 ["Actions"]
       22 DUPTABLE                         R5 K13 [{"Image", "Size"}]
       23 JUMPIFNOTEQKS                    R1 K14 ["UI Elements"] ; [+8]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K15 ["Selectors"]
       28 GETTABLEKS                       R6 R6 K16 ["Class"]
       30 CALL                             R6 0 1
       31 JUMP                             ; [+23]
       32 JUMPIFNOTEQKS                    R1 K17 ["Tags"] ; [+8]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K15 ["Selectors"]
       37 GETTABLEKS                       R6 R6 K18 ["Tag"]
       39 CALL                             R6 0 1
       40 JUMP                             ; [+14]
       41 JUMPIFNOTEQKS                    R1 K19 ["Queries"] ; [+8]
       43 GETUPVAL                         R7 5
       44 JUMPIFNOT                        R7 ; [+5]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K20 ["dimensions"]
       48 CALL                             R6 0 1
       49 JUMP                             ; [+5]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K21 ["getClassIcon"]
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
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          UPVAL U13
       78 CALL                             R4 2 1
       79 SETTABLEKS                       R4 R3 K3 ["Children"]
       81 RETURN                           R3 1

PROTO_11:
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
       32 NEWTABLE                         R4 0 0
       34 GETUPVAL                         R5 0
       35 JUMPIFNOT                        R5 ; [+8]
       36 LOADN                            R7 3
       37 LOADK                            R8 K3 ["Queries"]
       38 FASTCALL3                        TABLE_INSERT R3 R7 R8
       40 MOVE                             R6 R3
       41 GETIMPORT                        R5 K6 [table.insert]
       43 CALL                             R5 3 0
       44 GETUPVAL                         R5 0
       45 JUMPIFNOT                        R5 ; [+14]
       46 GETUPVAL                         R5 1
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R6 R6 K7 ["getOrderedStyleRulesAndFolders"]
       50 MOVE                             R7 R0
       51 CALL                             R6 1 1
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          VAL R4
       58 CALL                             R5 2 0
       59 JUMP                             ; [+12]
       60 GETUPVAL                         R5 1
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R6 R6 K8 ["getOrderedStyleRules"]
       64 MOVE                             R7 R0
       65 CALL                             R6 1 1
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          UPVAL U4
       71 CALL                             R5 2 0
       72 GETUPVAL                         R5 5
       73 MOVE                             R6 R3
       74 NEWCLOSURE                       R7 P2
       75 CAPTURE                          VAL R2
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          UPVAL U12
       85 CAPTURE                          UPVAL U13
       86 CAPTURE                          UPVAL U14
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U15
       89 CALL                             R5 2 1
       90 GETUPVAL                         R6 0
       91 JUMPIFNOT                        R6 ; [+46]
       92 MOVE                             R6 R4
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 FORGPREP                         R6
       96 DUPTABLE                         R13 K13 [{"Id", "Instance", "Name", "Children"}]
       97 GETUPVAL                         R14 6
       98 GETTABLEKS                       R14 R14 K14 ["createItemId"]
      100 MOVE                             R15 R10
      101 CALL                             R14 1 1
      102 SETTABLEKS                       R14 R13 K9 ["Id"]
      104 SETTABLEKS                       R10 R13 K10 ["Instance"]
      106 DUPTABLE                         R14 K18 [{"Actions", "Schema", "Value"}]
      107 GETUPVAL                         R15 7
      108 GETTABLEKS                       R15 R15 K19 ["MoreAction"]
      110 SETTABLEKS                       R15 R14 K15 ["Actions"]
      112 GETUPVAL                         R15 11
      113 GETTABLEKS                       R15 R15 K20 ["FolderSchema"]
      115 SETTABLEKS                       R15 R14 K16 ["Schema"]
      117 GETTABLEKS                       R15 R10 K11 ["Name"]
      119 SETTABLEKS                       R15 R14 K17 ["Value"]
      121 SETTABLEKS                       R14 R13 K11 ["Name"]
      123 GETUPVAL                         R14 13
      124 MOVE                             R15 R10
      125 NEWTABLE                         R16 0 0
      127 MOVE                             R17 R1
      128 CALL                             R14 3 1
      129 SETTABLEKS                       R14 R13 K12 ["Children"]
      131 FASTCALL2                        TABLE_INSERT R5 R13 ; [+3]
      133 MOVE                             R12 R5
      134 GETUPVAL                         R11 4
      135 CALL                             R11 2 0
      136 FORGLOOP                         R6 2 ; [-41]
      138 RETURN                           R5 1

PROTO_12:
        0 DUPTABLE                         R2 K4 [{"Name", "Id", "Children", "Instance"}]
        1 DUPTABLE                         R3 K8 [{"Actions", "Schema", "Value"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K9 ["MoreAction"]
        5 SETTABLEKS                       R4 R3 K5 ["Actions"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K10 ["StyleSheetSchema"]
       10 SETTABLEKS                       R4 R3 K6 ["Schema"]
       12 GETTABLEKS                       R4 R1 K0 ["Name"]
       14 SETTABLEKS                       R4 R3 K7 ["Value"]
       16 SETTABLEKS                       R3 R2 K0 ["Name"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K11 ["createItemId"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K1 ["Id"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K12 ["getStyleRules"]
       28 MOVE                             R4 R1
       29 GETUPVAL                         R5 4
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K2 ["Children"]
       33 SETTABLEKS                       R1 R2 K3 ["Instance"]
       35 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 OR                               R2 R3 R0
        3 DUPTABLE                         R3 K4 [{"Name", "Id", "Instance", "Children"}]
        4 DUPTABLE                         R4 K8 [{"Actions", "Schema", "Value"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K9 ["MoreAction"]
        8 SETTABLEKS                       R5 R4 K5 ["Actions"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K10 ["FolderSchema"]
       13 SETTABLEKS                       R5 R4 K6 ["Schema"]
       15 SETTABLEKS                       R2 R4 K7 ["Value"]
       17 SETTABLEKS                       R4 R3 K0 ["Name"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K11 ["createItemId"]
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

PROTO_14:
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
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K6 ["getStudioDefaultStyleSheet"]
       31 CALL                             R2 0 1
       32 JUMPIFNOTEQ                      R0 R2 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R2 R0 K7 ["Parent"]
       37 JUMPIF                           R1 ; [+9]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K8 ["isTheme"]
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
        1 GETTABLEKS                       R1 R1 K0 ["StyleSheetSchema"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 JUMPIFNOTEQKS                    R2 K2 [""] ; [+6]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 DUPTABLE                         R4 K5 [{["Editing"] = True}]
       10 CALL                             R2 2 1
       11 MOVE                             R1 R2
       12 DUPTABLE                         R2 K9 [{"Name", "Id", "Children", "Instance"}]
       13 DUPTABLE                         R3 K13 [{"Actions", "Schema", "Value"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K14 ["MoreAction"]
       17 SETTABLEKS                       R4 R3 K10 ["Actions"]
       19 SETTABLEKS                       R1 R3 K11 ["Schema"]
       21 GETTABLEKS                       R4 R0 K1 ["Name"]
       23 SETTABLEKS                       R4 R3 K12 ["Value"]
       25 SETTABLEKS                       R3 R2 K1 ["Name"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K15 ["createItemId"]
       30 MOVE                             R4 R0
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K6 ["Id"]
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R3 R3 K16 ["getStyleRules"]
       37 MOVE                             R4 R0
       38 GETUPVAL                         R5 5
       39 CALL                             R3 2 1
       40 SETTABLEKS                       R3 R2 K7 ["Children"]
       42 SETTABLEKS                       R0 R2 K8 ["Instance"]
       44 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 LOADK                            R7 K0 ["Themes"]
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+15]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["getThemes"]
       12 GETUPVAL                         R6 3
       13 GETUPVAL                         R7 4
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 GETUPVAL                         R5 5
       17 GETTABLEKS                       R5 R5 K2 ["Standard"]
       19 GETTABLEKS                       R5 R5 K3 ["ThemeSheet"]
       21 CALL                             R5 0 1
       22 MOVE                             R4 R5
       23 JUMP                             ; [+13]
       24 GETUPVAL                         R5 6
       25 GETTABLE                         R4 R5 R1
       26 GETUPVAL                         R5 7
       27 MOVE                             R6 R2
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U4
       35 CALL                             R5 2 1
       36 MOVE                             R3 R5
       37 DUPTABLE                         R5 K7 [{"Name", "Id", "Children"}]
       38 DUPTABLE                         R6 K15 [{["Actions"], ["ExpandByDefault"] = True, ["FullSpan"] = True, ["Value"], ["AlwaysShowActions"] = True, ["LeftIcon"]}]
       39 GETUPVAL                         R7 10
       40 GETTABLEKS                       R7 R7 K16 ["CategoryPlusButtonAction"]
       42 SETTABLEKS                       R7 R6 K8 ["Actions"]
       44 SETTABLEKS                       R1 R6 K12 ["Value"]
       46 DUPTABLE                         R7 K19 [{"Image", "Size"}]
       47 SETTABLEKS                       R4 R7 K17 ["Image"]
       49 GETUPVAL                         R8 12
       50 SETTABLEKS                       R8 R7 K18 ["Size"]
       52 SETTABLEKS                       R7 R6 K14 ["LeftIcon"]
       54 SETTABLEKS                       R6 R5 K4 ["Name"]
       56 GETUPVAL                         R6 11
       57 GETTABLEKS                       R6 R6 K20 ["createItemId"]
       59 MOVE                             R7 R1
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K5 ["Id"]
       63 SETTABLEKS                       R3 R5 K6 ["Children"]
       65 RETURN                           R5 1

PROTO_18:
        0 DUPTABLE                         R2 K2 [{"StyleSheets", "Tokens"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["StyleSheets"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["Tokens"]
        9 DUPTABLE                         R3 K4 [{"StyleSheets", "Tokens", "Themes"}]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["Standard"]
       13 GETTABLEKS                       R4 R4 K6 ["DesignSheet"]
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K0 ["StyleSheets"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["Standard"]
       21 GETTABLEKS                       R4 R4 K7 ["TokenSheet"]
       23 CALL                             R4 0 1
       24 SETTABLEKS                       R4 R3 K1 ["Tokens"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K5 ["Standard"]
       29 GETTABLEKS                       R4 R4 K8 ["ThemeSheet"]
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
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          VAL R3
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          UPVAL U11
       70 CAPTURE                          UPVAL U12
       71 CALL                             R6 2 1
       72 RETURN                           R6 1

PROTO_19:
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
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K6 ["getStudioDefaultStyleSheet"]
       31 CALL                             R2 0 1
       32 JUMPIFNOTEQ                      R0 R2 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R2 R0 K7 ["Parent"]
       37 JUMPIF                           R1 ; [+9]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K8 ["isTheme"]
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["StyleSheetSchema"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 JUMPIFNOTEQKS                    R2 K2 [""] ; [+6]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 DUPTABLE                         R4 K5 [{["Editing"] = True}]
       10 CALL                             R2 2 1
       11 MOVE                             R1 R2
       12 DUPTABLE                         R2 K9 [{"Name", "Id", "Children", "Instance"}]
       13 DUPTABLE                         R3 K13 [{"Actions", "Schema", "Value"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K14 ["MoreAction"]
       17 SETTABLEKS                       R4 R3 K10 ["Actions"]
       19 SETTABLEKS                       R1 R3 K11 ["Schema"]
       21 GETTABLEKS                       R4 R0 K1 ["Name"]
       23 SETTABLEKS                       R4 R3 K12 ["Value"]
       25 SETTABLEKS                       R3 R2 K1 ["Name"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K15 ["createItemId"]
       30 MOVE                             R4 R0
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K6 ["Id"]
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R3 R3 K16 ["getStyleRules"]
       37 MOVE                             R4 R0
       38 GETUPVAL                         R5 5
       39 CALL                             R3 2 1
       40 SETTABLEKS                       R3 R2 K7 ["Children"]
       42 SETTABLEKS                       R0 R2 K8 ["Instance"]
       44 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 LOADK                            R7 K0 ["Themes"]
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+15]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["getThemes"]
       12 GETUPVAL                         R6 3
       13 GETUPVAL                         R7 4
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 GETUPVAL                         R5 5
       17 GETTABLEKS                       R5 R5 K2 ["Standard"]
       19 GETTABLEKS                       R5 R5 K3 ["ThemeSheet"]
       21 CALL                             R5 0 1
       22 MOVE                             R4 R5
       23 JUMP                             ; [+13]
       24 GETUPVAL                         R5 6
       25 GETTABLE                         R4 R5 R1
       26 GETUPVAL                         R5 7
       27 MOVE                             R6 R2
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U4
       35 CALL                             R5 2 1
       36 MOVE                             R3 R5
       37 DUPTABLE                         R5 K7 [{"Name", "Id", "Children"}]
       38 DUPTABLE                         R6 K15 [{["Actions"], ["ExpandByDefault"] = True, ["FullSpan"] = True, ["Value"], ["AlwaysShowActions"] = True, ["LeftIcon"]}]
       39 GETUPVAL                         R7 10
       40 GETTABLEKS                       R7 R7 K16 ["CategoryPlusButtonAction"]
       42 SETTABLEKS                       R7 R6 K8 ["Actions"]
       44 SETTABLEKS                       R1 R6 K12 ["Value"]
       46 DUPTABLE                         R7 K19 [{"Image", "Size"}]
       47 SETTABLEKS                       R4 R7 K17 ["Image"]
       49 GETUPVAL                         R8 12
       50 SETTABLEKS                       R8 R7 K18 ["Size"]
       52 SETTABLEKS                       R7 R6 K14 ["LeftIcon"]
       54 SETTABLEKS                       R6 R5 K4 ["Name"]
       56 GETUPVAL                         R6 11
       57 GETTABLEKS                       R6 R6 K20 ["createItemId"]
       59 MOVE                             R7 R1
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K5 ["Id"]
       63 SETTABLEKS                       R3 R5 K6 ["Children"]
       65 RETURN                           R5 1

PROTO_23:
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
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["Standard"]
       20 GETTABLEKS                       R4 R4 K6 ["DesignSheet"]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R3 K0 ["StyleSheets"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["Standard"]
       28 GETTABLEKS                       R4 R4 K7 ["TokenSheet"]
       30 CALL                             R4 0 1
       31 SETTABLEKS                       R4 R3 K1 ["Tokens"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K5 ["Standard"]
       36 GETTABLEKS                       R4 R4 K8 ["ThemeSheet"]
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
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          UPVAL U11
       75 CAPTURE                          UPVAL U12
       76 CAPTURE                          UPVAL U13
       77 CALL                             R6 2 1
       78 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K11 ["Util"]
       26 GETTABLEKS                       R3 R3 K12 ["EditTree"]
       28 GETIMPORT                        R4 K8 [require]
       30 GETTABLEKS                       R5 R1 K13 ["Src"]
       32 GETTABLEKS                       R5 R5 K14 ["Flags"]
       34 GETTABLEKS                       R5 R5 K15 ["getFFlagStyleQuery"]
       36 CALL                             R4 1 1
       37 CALL                             R4 0 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R1 K13 ["Src"]
       42 GETTABLEKS                       R6 R6 K11 ["Util"]
       44 GETTABLEKS                       R6 R6 K16 ["DesignHelpers"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K8 [require]
       49 GETTABLEKS                       R7 R1 K13 ["Src"]
       51 GETTABLEKS                       R7 R7 K11 ["Util"]
       53 GETTABLEKS                       R7 R7 K17 ["MenuHelpers"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K8 [require]
       58 GETTABLEKS                       R8 R1 K13 ["Src"]
       60 GETTABLEKS                       R8 R8 K11 ["Util"]
       62 GETTABLEKS                       R8 R8 K18 ["StyleSchema"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K8 [require]
       67 GETTABLEKS                       R9 R1 K13 ["Src"]
       69 GETTABLEKS                       R9 R9 K19 ["Resources"]
       71 GETTABLEKS                       R9 R9 K20 ["ModernIcons"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K8 [require]
       76 GETTABLEKS                       R10 R1 K13 ["Src"]
       78 GETTABLEKS                       R10 R10 K11 ["Util"]
       80 GETTABLEKS                       R10 R10 K21 ["StyleQueryHelpers"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K8 [require]
       85 GETTABLEKS                       R11 R1 K13 ["Src"]
       87 GETTABLEKS                       R11 R11 K11 ["Util"]
       89 GETTABLEKS                       R11 R11 K22 ["StyleRuleHelpers"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K8 [require]
       94 GETTABLEKS                       R12 R1 K13 ["Src"]
       96 GETTABLEKS                       R12 R12 K11 ["Util"]
       98 GETTABLEKS                       R12 R12 K23 ["TreeTableHelpers"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K8 [require]
      103 GETTABLEKS                       R13 R1 K9 ["Packages"]
      105 GETTABLEKS                       R13 R13 K24 ["Dash"]
      107 CALL                             R12 1 1
      108 GETTABLEKS                       R13 R12 K25 ["collectArray"]
      110 GETTABLEKS                       R14 R12 K26 ["forEach"]
      112 GETTABLEKS                       R15 R12 K27 ["join"]
      114 GETTABLEKS                       R16 R12 K28 ["map"]
      116 GETTABLEKS                       R17 R12 K29 ["startsWith"]
      118 GETIMPORT                        R18 K32 [table.insert]
      120 GETIMPORT                        R19 K8 [require]
      122 GETTABLEKS                       R20 R1 K13 ["Src"]
      124 GETTABLEKS                       R20 R20 K19 ["Resources"]
      126 GETTABLEKS                       R20 R20 K33 ["PluginStyles"]
      128 CALL                             R19 1 1
      129 LOADK                            R22 K34 ["Icon16"]
      130 NAMECALL                         R20 R19 K35 ["GetAttribute"]
      132 CALL                             R20 2 1
      133 GETIMPORT                        R21 K8 [require]
      135 GETTABLEKS                       R22 R1 K13 ["Src"]
      137 GETTABLEKS                       R22 R22 K36 ["Types"]
      139 CALL                             R21 1 1
      140 NEWTABLE                         R22 8 0
      142 NEWTABLE                         R23 0 1
      144 DUPTABLE                         R24 K40 [{["Name"] = "Name", ["Key"] = "Name", ["Width"]}]
      145 GETIMPORT                        R25 K43 [UDim.new]
      147 LOADN                            R26 1
      148 LOADN                            R27 0
      149 CALL                             R25 2 1
      150 SETTABLEKS                       R25 R24 K39 ["Width"]
      152 SETLIST                          R23 R24 1 [1]
      154 SETTABLEKS                       R23 R22 K44 ["Columns"]
      156 GETTABLEKS                       R23 R3 K42 ["new"]
      158 DUPTABLE                         R24 K47 [{"getChildren", "getId"}]
      159 DUPCLOSURE                       R25 K48 [PROTO_0]
      160 SETTABLEKS                       R25 R24 K45 ["getChildren"]
      162 DUPCLOSURE                       R25 K49 [PROTO_1]
      163 SETTABLEKS                       R25 R24 K46 ["getId"]
      165 CALL                             R23 1 1
      166 SETTABLEKS                       R23 R22 K12 ["EditTree"]
      168 DUPCLOSURE                       R24 K50 [PROTO_2]
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R9
      171 DUPCLOSURE                       R25 K51 [PROTO_4]
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R25
      179 DUPCLOSURE                       R26 K52 [PROTO_6]
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R9
      189 DUPCLOSURE                       R27 K53 [PROTO_11]
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R7
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R25
      206 SETTABLEKS                       R27 R22 K54 ["getStyleRules"]
      208 DUPCLOSURE                       R27 K55 [PROTO_14]
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R22
      214 SETTABLEKS                       R27 R22 K56 ["getThemes"]
      216 DUPCLOSURE                       R27 K57 [PROTO_18]
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R15
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R20
      230 SETTABLEKS                       R27 R22 K58 ["buildTree"]
      232 DUPCLOSURE                       R27 K59 [PROTO_23]
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R5
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R20
      247 SETTABLEKS                       R27 R22 K60 ["DEPRECATED_buildTree"]
      249 RETURN                           R22 1
