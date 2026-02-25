PROTO_0:
        0 DUPTABLE                         R1 K1 [{"selectedIndex"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["selectedIndex"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["AudioType"]
        4 GETTABLEKS                       R4 R1 K1 ["AudioType"]
        6 JUMPIFEQ                         R3 R4 ; [+8]
        8 DUPTABLE                         R5 K3 [{"selectedIndex"}]
        9 LOADN                            R6 1
       10 SETTABLEKS                       R6 R5 K2 ["selectedIndex"]
       12 NAMECALL                         R3 R0 K4 ["setState"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

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
        8 GETUPVAL                         R4 2
        9 GETTABLE                         R3 R4 R0
       10 GETTABLEKS                       R2 R3 K3 ["subcategory"]
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
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R10 R11 K7 ["MUSIC"]
       17 GETTABLEKS                       R9 R10 K8 ["name"]
       19 JUMPIFNOTEQ                      R9 R6 ; [+6]
       21 GETTABLEKS                       R9 R1 K10 ["Subcategories"]
       23 GETTABLEKS                       R8 R9 K9 ["music"]
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R9 R1 K10 ["Subcategories"]
       28 GETTABLEKS                       R8 R9 K11 ["sound-effect"]
       30 NEWTABLE                         R9 0 0
       32 DUPTABLE                         R12 K13 [{"index", "name"}]
       33 LOADN                            R13 1
       34 SETTABLEKS                       R13 R12 K12 ["index"]
       36 GETUPVAL                         R16 0
       37 GETTABLEKS                       R15 R16 K7 ["MUSIC"]
       39 GETTABLEKS                       R14 R15 K8 ["name"]
       41 JUMPIFNOTEQ                      R14 R6 ; [+7]
       43 LOADK                            R15 K14 ["Audio.Music"]
       44 LOADK                            R16 K15 ["Browse"]
       45 NAMECALL                         R13 R3 K16 ["getText"]
       47 CALL                             R13 3 1
       48 JUMP                             ; [+5]
       49 LOADK                            R15 K17 ["Audio.SoundEffect"]
       50 LOADK                            R16 K15 ["Browse"]
       51 NAMECALL                         R13 R3 K16 ["getText"]
       53 CALL                             R13 3 1
       54 SETTABLEKS                       R13 R12 K8 ["name"]
       56 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       58 MOVE                             R11 R9
       59 GETIMPORT                        R10 K20 [table.insert]
       61 CALL                             R10 2 0
       62 JUMPIFNOT                        R8 ; [+46]
       63 GETTABLEKS                       R10 R8 K21 ["children"]
       65 JUMPIFNOT                        R10 ; [+43]
       66 GETIMPORT                        R10 K23 [pairs]
       68 GETTABLEKS                       R11 R8 K21 ["children"]
       70 CALL                             R10 1 3
       71 FORGPREP_NEXT                    R10
       72 GETUPVAL                         R18 0
       73 GETTABLEKS                       R17 R18 K7 ["MUSIC"]
       75 GETTABLEKS                       R16 R17 K8 ["name"]
       77 JUMPIFNOTEQ                      R16 R6 ; [+3]
       79 LOADK                            R15 K24 ["Audio.Music.Genre"]
       80 JUMP                             ; [+1]
       81 LOADK                            R15 K25 ["Audio.SoundEffect.Category"]
       82 GETTABLEKS                       R16 R14 K26 ["hidden"]
       84 JUMPIF                           R16 ; [+22]
       85 DUPTABLE                         R16 K28 [{"name", "subcategory", "index"}]
       86 MOVE                             R19 R15
       87 MOVE                             R20 R13
       88 NAMECALL                         R17 R3 K16 ["getText"]
       90 CALL                             R17 3 1
       91 SETTABLEKS                       R17 R16 K8 ["name"]
       93 SETTABLEKS                       R14 R16 K27 ["subcategory"]
       95 GETTABLEKS                       R18 R14 K12 ["index"]
       97 ADDK                             R17 R18 K29 [1]
       98 SETTABLEKS                       R17 R16 K12 ["index"]
      100 FASTCALL2                        TABLE_INSERT R9 R16 ; [+5]
      102 MOVE                             R18 R9
      103 MOVE                             R19 R16
      104 GETIMPORT                        R17 K20 [table.insert]
      106 CALL                             R17 2 0
      107 FORGLOOP                         R10 2 ; [-36]
      109 GETUPVAL                         R11 1
      110 GETTABLEKS                       R10 R11 K30 ["sort"]
      112 MOVE                             R11 R9
      113 DUPCLOSURE                       R12 K31 [PROTO_2]
      114 CALL                             R10 2 1
      115 MOVE                             R9 R10
      116 NEWCLOSURE                       R10 P1
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R5
      119 CAPTURE                          REF R9
      120 GETUPVAL                         R12 2
      121 GETTABLEKS                       R11 R12 K32 ["createElement"]
      123 GETUPVAL                         R12 3
      124 DUPTABLE                         R13 K40 [{"Size", "visibleDropDownCount", "selectedDropDownIndex", "fontSize", "items", "onItemClicked", "setDropdownHeight", "LayoutOrder"}]
      125 GETIMPORT                        R14 K43 [UDim2.new]
      127 LOADN                            R15 1
      128 LOADN                            R16 0
      129 LOADN                            R17 0
      130 LOADN                            R18 40
      131 CALL                             R14 4 1
      132 SETTABLEKS                       R14 R13 K33 ["Size"]
      134 LOADN                            R14 5
      135 SETTABLEKS                       R14 R13 K34 ["visibleDropDownCount"]
      137 SETTABLEKS                       R7 R13 K35 ["selectedDropDownIndex"]
      139 GETUPVAL                         R15 4
      140 GETTABLEKS                       R14 R15 K44 ["FONT_SIZE_LARGE"]
      142 SETTABLEKS                       R14 R13 K36 ["fontSize"]
      144 SETTABLEKS                       R9 R13 K37 ["items"]
      146 SETTABLEKS                       R10 R13 K38 ["onItemClicked"]
      148 DUPCLOSURE                       R14 K45 [PROTO_4]
      149 SETTABLEKS                       R14 R13 K39 ["setDropdownHeight"]
      151 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
      153 CALL                             R11 2 -1
      154 CLOSEUPVALS                      R9
      155 RETURN                           R11 -1

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
       24 GETTABLEKS                       R6 R0 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
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
       51 GETTABLEKS                       R15 R0 K10 ["Src"]
       53 GETTABLEKS                       R14 R15 K11 ["Util"]
       55 GETTABLEKS                       R13 R14 K18 ["Images"]
       57 CALL                             R12 1 1
       58 GETIMPORT                        R13 K6 [require]
       60 GETTABLEKS                       R16 R0 K10 ["Src"]
       62 GETTABLEKS                       R15 R16 K19 ["Types"]
       64 GETTABLEKS                       R14 R15 K20 ["Category"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K6 [require]
       69 GETTABLEKS                       R17 R0 K10 ["Src"]
       71 GETTABLEKS                       R16 R17 K19 ["Types"]
       73 GETTABLEKS                       R15 R16 K21 ["HomeTypes"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K6 [require]
       78 GETTABLEKS                       R18 R0 K10 ["Src"]
       80 GETTABLEKS                       R17 R18 K22 ["Components"]
       82 GETTABLEKS                       R16 R17 K23 ["DropdownMenu"]
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
