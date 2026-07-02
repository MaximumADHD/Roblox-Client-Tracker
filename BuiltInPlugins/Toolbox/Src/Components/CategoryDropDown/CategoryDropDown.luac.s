PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = 1}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["AudioType"]
        4 GETTABLEKS                       R4 R1 K1 ["AudioType"]
        6 JUMPIFEQ                         R3 R4 ; [+5]
        8 DUPTABLE                         R5 K4 [{["selectedIndex"] = 1}]
        9 NAMECALL                         R3 R0 K5 ["setState"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R4 R1 K0 ["index"]
        4 SUB                              R2 R3 R4
        5 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLE                         R2 R3 R0
       10 GETTABLEKS                       R2 R2 K3 ["subcategory"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R0 152
        1 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["OnCategorySelect"]
       10 GETTABLEKS                       R6 R1 K5 ["AudioType"]
       12 GETTABLEKS                       R7 R2 K6 ["selectedIndex"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K7 ["MUSIC"]
       17 GETTABLEKS                       R9 R9 K8 ["name"]
       19 JUMPIFNOTEQ                      R9 R6 ; [+6]
       21 GETTABLEKS                       R9 R1 K10 ["Subcategories"]
       23 GETTABLEKS                       R8 R9 K9 ["music"]
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R9 R1 K10 ["Subcategories"]
       28 GETTABLEKS                       R8 R9 K11 ["sound-effect"]
       30 NEWTABLE                         R9 0 0
       32 DUPTABLE                         R12 K14 [{["index"] = 1, ["name"]}]
       33 GETUPVAL                         R14 0
       34 GETTABLEKS                       R14 R14 K7 ["MUSIC"]
       36 GETTABLEKS                       R14 R14 K8 ["name"]
       38 JUMPIFNOTEQ                      R14 R6 ; [+7]
       40 LOADK                            R15 K15 ["Audio.Music"]
       41 LOADK                            R16 K16 ["Browse"]
       42 NAMECALL                         R13 R3 K17 ["getText"]
       44 CALL                             R13 3 1
       45 JUMP                             ; [+5]
       46 LOADK                            R15 K18 ["Audio.SoundEffect"]
       47 LOADK                            R16 K16 ["Browse"]
       48 NAMECALL                         R13 R3 K17 ["getText"]
       50 CALL                             R13 3 1
       51 SETTABLEKS                       R13 R12 K8 ["name"]
       53 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       55 MOVE                             R11 R9
       56 GETIMPORT                        R10 K21 [table.insert]
       58 CALL                             R10 2 0
       59 JUMPIFNOT                        R8 ; [+46]
       60 GETTABLEKS                       R10 R8 K22 ["children"]
       62 JUMPIFNOT                        R10 ; [+43]
       63 GETIMPORT                        R10 K24 [pairs]
       65 GETTABLEKS                       R11 R8 K22 ["children"]
       67 CALL                             R10 1 3
       68 FORGPREP_NEXT                    R10
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K7 ["MUSIC"]
       72 GETTABLEKS                       R16 R16 K8 ["name"]
       74 JUMPIFNOTEQ                      R16 R6 ; [+3]
       76 LOADK                            R15 K25 ["Audio.Music.Genre"]
       77 JUMP                             ; [+1]
       78 LOADK                            R15 K26 ["Audio.SoundEffect.Category"]
       79 GETTABLEKS                       R16 R14 K27 ["hidden"]
       81 JUMPIF                           R16 ; [+22]
       82 DUPTABLE                         R16 K29 [{"name", "subcategory", "index"}]
       83 MOVE                             R19 R15
       84 MOVE                             R20 R13
       85 NAMECALL                         R17 R3 K17 ["getText"]
       87 CALL                             R17 3 1
       88 SETTABLEKS                       R17 R16 K8 ["name"]
       90 SETTABLEKS                       R14 R16 K28 ["subcategory"]
       92 GETTABLEKS                       R18 R14 K12 ["index"]
       94 ADDK                             R17 R18 K13 [1]
       95 SETTABLEKS                       R17 R16 K12 ["index"]
       97 FASTCALL2                        TABLE_INSERT R9 R16 ; [+5]
       99 MOVE                             R18 R9
      100 MOVE                             R19 R16
      101 GETIMPORT                        R17 K21 [table.insert]
      103 CALL                             R17 2 0
      104 FORGLOOP                         R10 2 ; [-36]
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R10 R10 K30 ["sort"]
      109 MOVE                             R11 R9
      110 DUPCLOSURE                       R12 K31 [PROTO_2]
      111 CALL                             R10 2 1
      112 MOVE                             R9 R10
      113 NEWCLOSURE                       R10 P1
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R5
      116 CAPTURE                          REF R9
      117 GETUPVAL                         R11 2
      118 GETTABLEKS                       R11 R11 K32 ["createElement"]
      120 GETUPVAL                         R12 3
      121 DUPTABLE                         R13 K41 [{["Size"], ["visibleDropDownCount"] = 5, ["selectedDropDownIndex"], ["fontSize"], ["items"], ["onItemClicked"], ["setDropdownHeight"], ["LayoutOrder"]}]
      122 GETIMPORT                        R14 K44 [UDim2.new]
      124 LOADN                            R15 1
      125 LOADN                            R16 0
      126 LOADN                            R17 0
      127 LOADN                            R18 40
      128 CALL                             R14 4 1
      129 SETTABLEKS                       R14 R13 K33 ["Size"]
      131 SETTABLEKS                       R7 R13 K36 ["selectedDropDownIndex"]
      133 GETUPVAL                         R14 4
      134 GETTABLEKS                       R14 R14 K45 ["FONT_SIZE_LARGE"]
      136 SETTABLEKS                       R14 R13 K37 ["fontSize"]
      138 SETTABLEKS                       R9 R13 K38 ["items"]
      140 SETTABLEKS                       R10 R13 K39 ["onItemClicked"]
      142 DUPCLOSURE                       R14 K46 [PROTO_4]
      143 SETTABLEKS                       R14 R13 K40 ["setDropdownHeight"]
      145 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
      147 CALL                             R11 2 -1
      148 CLOSEUPVALS                      R9
      149 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R5 K11 ["Util"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R5 K12 ["LayoutOrderIterator"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R5 K13 ["Constants"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R3 K14 ["ContextServices"]
       40 GETTABLEKS                       R9 R8 K15 ["withContext"]
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R1 K16 ["LuauPolyfill"]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R11 R10 K17 ["Array"]
       49 GETIMPORT                        R12 K6 [require]
       51 GETTABLEKS                       R13 R0 K10 ["Src"]
       53 GETTABLEKS                       R13 R13 K11 ["Util"]
       55 GETTABLEKS                       R13 R13 K18 ["Images"]
       57 CALL                             R12 1 1
       58 GETIMPORT                        R13 K6 [require]
       60 GETTABLEKS                       R14 R0 K10 ["Src"]
       62 GETTABLEKS                       R14 R14 K19 ["Types"]
       64 GETTABLEKS                       R14 R14 K20 ["Category"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K6 [require]
       69 GETTABLEKS                       R15 R0 K10 ["Src"]
       71 GETTABLEKS                       R15 R15 K19 ["Types"]
       73 GETTABLEKS                       R15 R15 K21 ["HomeTypes"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K6 [require]
       78 GETTABLEKS                       R16 R0 K10 ["Src"]
       80 GETTABLEKS                       R16 R16 K22 ["Components"]
       82 GETTABLEKS                       R16 R16 K23 ["DropdownMenu"]
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R16 R2 K24 ["PureComponent"]
       87 LOADK                            R18 K25 ["CategoryDropDown"]
       88 NAMECALL                         R16 R16 K26 ["extend"]
       90 CALL                             R16 2 1
       91 DUPCLOSURE                       R17 K27 [PROTO_0]
       92 SETTABLEKS                       R17 R16 K28 ["init"]
       94 DUPCLOSURE                       R17 K29 [PROTO_1]
       95 SETTABLEKS                       R17 R16 K30 ["didUpdate"]
       97 DUPCLOSURE                       R17 K31 [PROTO_5]
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R7
      103 SETTABLEKS                       R17 R16 K32 ["render"]
      105 MOVE                             R17 R9
      106 DUPTABLE                         R18 K34 [{"Localization"}]
      107 GETTABLEKS                       R19 R8 K33 ["Localization"]
      109 SETTABLEKS                       R19 R18 K33 ["Localization"]
      111 CALL                             R17 1 1
      112 MOVE                             R18 R16
      113 CALL                             R17 1 1
      114 MOVE                             R16 R17
      115 RETURN                           R16 1
