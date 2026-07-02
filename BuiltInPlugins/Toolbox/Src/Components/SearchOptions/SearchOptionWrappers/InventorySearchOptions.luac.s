PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETTABLEKS                       R2 R0 K2 ["pageInfo"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["liveSearch"]
        2 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"Id", "Name", "Type"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["Id"]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K1 ["Name"]
        9 GETIMPORT                        R1 K7 [Enum.CreatorType.User]
       11 SETTABLEKS                       R1 R0 K2 ["Type"]
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["creatorTargetIds"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["creatorTargetIds"]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["groupTargetIds"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["groupTargetIds"]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["uiSortIntent"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["uiSortIntent"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["UiSortIntent"]
       11 GETTABLEKS                       R0 R0 K2 ["Default"]
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["Id"]
        4 FASTCALL1                        TOSTRING R4 ; [+2]
        5 GETIMPORT                        R3 K2 [tostring]
        7 CALL                             R3 1 1
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 DUPTABLE                         R1 K6 [{"includeUnverifiedCreators", "myCreations", "myAssets"}]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["includeUnverifiedCreators"]
       17 SETTABLEKS                       R2 R1 K3 ["includeUnverifiedCreators"]
       19 SETTABLEKS                       R0 R1 K4 ["myCreations"]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K7 ["excludeGroupCreations"]
       24 SETTABLEKS                       R2 R1 K5 ["myAssets"]
       26 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R0 K1 ["join"]
        5 GETUPVAL                         R1 1
        6 NEWTABLE                         R2 1 0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["Id"]
       11 FASTCALL1                        TOSTRING R4 ; [+2]
       12 GETIMPORT                        R3 K4 [tostring]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K5 ["None"]
       18 SETTABLE                         R4 R2 R3
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NOT                              R0 R1
        3 RETURN                           R0 1

PROTO_9:
        0 NEWTABLE                         R0 0 5
        2 DUPTABLE                         R1 K2 [{"Key", "Text"}]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["UiSortIntent"]
        6 GETTABLEKS                       R2 R2 K4 ["Relevance"]
        8 SETTABLEKS                       R2 R1 K0 ["Key"]
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K5 ["SearchOptionsSort"]
       12 LOADK                            R5 K4 ["Relevance"]
       13 NAMECALL                         R2 R2 K6 ["getText"]
       15 CALL                             R2 3 1
       16 SETTABLEKS                       R2 R1 K1 ["Text"]
       18 DUPTABLE                         R2 K2 [{"Key", "Text"}]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K3 ["UiSortIntent"]
       22 GETTABLEKS                       R3 R3 K7 ["Name"]
       24 SETTABLEKS                       R3 R2 K0 ["Key"]
       26 GETUPVAL                         R3 1
       27 LOADK                            R5 K5 ["SearchOptionsSort"]
       28 LOADK                            R6 K7 ["Name"]
       29 NAMECALL                         R3 R3 K6 ["getText"]
       31 CALL                             R3 3 1
       32 SETTABLEKS                       R3 R2 K1 ["Text"]
       34 DUPTABLE                         R3 K2 [{"Key", "Text"}]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K3 ["UiSortIntent"]
       38 GETTABLEKS                       R4 R4 K8 ["DateModified"]
       40 SETTABLEKS                       R4 R3 K0 ["Key"]
       42 GETUPVAL                         R4 1
       43 LOADK                            R6 K5 ["SearchOptionsSort"]
       44 LOADK                            R7 K8 ["DateModified"]
       45 NAMECALL                         R4 R4 K6 ["getText"]
       47 CALL                             R4 3 1
       48 SETTABLEKS                       R4 R3 K1 ["Text"]
       50 DUPTABLE                         R4 K2 [{"Key", "Text"}]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K3 ["UiSortIntent"]
       54 GETTABLEKS                       R5 R5 K9 ["DateCreated"]
       56 SETTABLEKS                       R5 R4 K0 ["Key"]
       58 GETUPVAL                         R5 1
       59 LOADK                            R7 K5 ["SearchOptionsSort"]
       60 LOADK                            R8 K9 ["DateCreated"]
       61 NAMECALL                         R5 R5 K6 ["getText"]
       63 CALL                             R5 3 1
       64 SETTABLEKS                       R5 R4 K1 ["Text"]
       66 DUPTABLE                         R5 K2 [{"Key", "Text"}]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R6 R6 K3 ["UiSortIntent"]
       70 GETTABLEKS                       R6 R6 K10 ["Creator"]
       72 SETTABLEKS                       R6 R5 K0 ["Key"]
       74 GETUPVAL                         R6 1
       75 LOADK                            R8 K5 ["SearchOptionsSort"]
       76 LOADK                            R9 K10 ["Creator"]
       77 NAMECALL                         R6 R6 K6 ["getText"]
       79 CALL                             R6 3 1
       80 SETTABLEKS                       R6 R5 K1 ["Text"]
       82 SETLIST                          R0 R1 5 [1]
       84 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NEWTABLE                         R1 0 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 NEWTABLE                         R1 0 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K0 ["UiSortIntent"]
       15 GETTABLEKS                       R1 R1 K1 ["Default"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 5
       19 DUPTABLE                         R1 K6 [{["includeUnverifiedCreators"] = False, ["myCreations"] = False, ["myAssets"] = False}]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["Id"]
       11 FASTCALL1                        TOSTRING R5 ; [+2]
       12 GETIMPORT                        R4 K4 [tostring]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 1
       16 SETTABLE                         R5 R3 R4
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R2 R0 K0 ["Type"]
        5 GETIMPORT                        R3 K4 [Enum.CreatorType.User]
        7 JUMPIFNOTEQ                      R2 R3 ; [+5]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["Id"]
       11 FASTCALL1                        TOSTRING R5 ; [+2]
       12 GETIMPORT                        R4 K4 [tostring]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["None"]
       18 SETTABLE                         R5 R3 R4
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_14:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R2 R0 K0 ["Type"]
        5 GETIMPORT                        R3 K4 [Enum.CreatorType.User]
        7 JUMPIFNOTEQ                      R2 R3 ; [+5]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 1
        1 GETTABLE                         R2 R0 R3
        2 NOT                              R1 R2
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        7 GETTABLEKS                       R1 R1 K1 ["join"]
        9 MOVE                             R2 R0
       10 NEWTABLE                         R3 1 0
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R5 0
       14 SETTABLE                         R5 R3 R4
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_16:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 1 0
        7 CLOSEUPVALS                      R1
        8 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["includeUnverifiedCreators"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["myCreations"]
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R0 K6 [{"Creator", "creatorTargetIds", "excludeGroupCreations", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K7 ["myCreations"]
        4 JUMPIF                           R2 ; [+2]
        5 GETUPVAL                         R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["Creator"]
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R1 R0 K1 ["creatorTargetIds"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K8 ["myAssets"]
       16 SETTABLEKS                       R1 R0 K2 ["excludeGroupCreations"]
       18 GETUPVAL                         R1 3
       19 SETTABLEKS                       R1 R0 K3 ["groupTargetIds"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["includeUnverifiedCreators"]
       24 SETTABLEKS                       R1 R0 K4 ["includeUnverifiedCreators"]
       26 GETUPVAL                         R1 4
       27 SETTABLEKS                       R1 R0 K5 ["uiSortIntent"]
       29 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 DUPCLOSURE                       R3 K2 [PROTO_0]
        8 CAPTURE                          UPVAL U2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 DUPCLOSURE                       R4 K3 [PROTO_1]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 3
       14 DUPCLOSURE                       R5 K4 [PROTO_2]
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 6
       21 LOADNIL                          R6
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 6
       24 NEWCLOSURE                       R8 P3
       25 CAPTURE                          VAL R2
       26 CALL                             R7 1 2
       27 GETUPVAL                         R9 6
       28 NEWCLOSURE                       R10 P4
       29 CAPTURE                          VAL R2
       30 CALL                             R9 1 2
       31 GETUPVAL                         R11 6
       32 NEWCLOSURE                       R12 P5
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U7
       35 CALL                             R11 1 2
       36 GETUPVAL                         R13 6
       37 NEWCLOSURE                       R14 P6
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CALL                             R13 1 2
       42 GETUPVAL                         R15 3
       43 NEWCLOSURE                       R16 P7
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R17 0 1
       49 MOVE                             R18 R7
       50 SETLIST                          R17 R18 1 [1]
       52 CALL                             R15 2 1
       53 GETUPVAL                         R16 3
       54 DUPCLOSURE                       R17 K5 [PROTO_8]
       55 CAPTURE                          UPVAL U8
       56 NEWTABLE                         R18 0 0
       58 CALL                             R16 2 1
       59 GETUPVAL                         R17 3
       60 NEWCLOSURE                       R18 P9
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R1
       63 NEWTABLE                         R19 0 1
       65 MOVE                             R20 R1
       66 SETLIST                          R19 R20 1 [1]
       68 CALL                             R17 2 1
       69 GETUPVAL                         R18 9
       70 NEWCLOSURE                       R19 P10
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R12
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          VAL R14
       77 NEWTABLE                         R20 0 1
       79 MOVE                             R21 R2
       80 SETLIST                          R20 R21 1 [1]
       82 CALL                             R18 2 1
       83 GETUPVAL                         R19 9
       84 NEWCLOSURE                       R20 P11
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R10
       88 NEWTABLE                         R21 0 0
       90 CALL                             R19 2 1
       91 GETUPVAL                         R20 9
       92 NEWCLOSURE                       R21 P12
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 NEWTABLE                         R22 0 0
       98 CALL                             R20 2 1
       99 GETUPVAL                         R21 9
      100 NEWCLOSURE                       R22 P13
      101 CAPTURE                          VAL R14
      102 CAPTURE                          UPVAL U2
      103 NEWTABLE                         R23 0 0
      105 CALL                             R21 2 1
      106 GETUPVAL                         R22 9
      107 NEWCLOSURE                       R23 P14
      108 CAPTURE                          VAL R21
      109 NEWTABLE                         R24 0 0
      111 CALL                             R22 2 1
      112 GETUPVAL                         R23 9
      113 NEWCLOSURE                       R24 P15
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R20
      118 NEWTABLE                         R25 0 2
      120 GETTABLEKS                       R26 R13 K6 ["myCreations"]
      122 MOVE                             R27 R4
      123 SETLIST                          R25 R26 2 [1]
      125 CALL                             R23 2 1
      126 GETUPVAL                         R24 9
      127 NEWCLOSURE                       R25 P16
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R6
      130 NEWTABLE                         R26 0 0
      132 CALL                             R24 2 1
      133 GETUPVAL                         R25 9
      134 NEWCLOSURE                       R26 P17
      135 CAPTURE                          VAL R6
      136 NEWTABLE                         R27 0 0
      138 CALL                             R25 2 1
      139 GETUPVAL                         R26 9
      140 NEWCLOSURE                       R27 P18
      141 CAPTURE                          VAL R20
      142 NEWTABLE                         R28 0 0
      144 CALL                             R26 2 1
      145 GETUPVAL                         R27 9
      146 NEWCLOSURE                       R28 P19
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R11
      152 NEWTABLE                         R29 0 5
      154 MOVE                             R30 R5
      155 MOVE                             R31 R7
      156 MOVE                             R32 R13
      157 MOVE                             R33 R9
      158 MOVE                             R34 R11
      159 SETLIST                          R29 R30 5 [1]
      161 CALL                             R27 2 1
      162 GETUPVAL                         R28 10
      163 GETTABLEKS                       R28 R28 K7 ["new"]
      165 CALL                             R28 0 1
      166 GETUPVAL                         R29 11
      167 GETTABLEKS                       R29 R29 K8 ["createElement"]
      169 GETUPVAL                         R30 12
      170 DUPTABLE                         R31 K12 [{"GetSearchOptions", "OnClose", "OnReset"}]
      171 SETTABLEKS                       R27 R31 K9 ["GetSearchOptions"]
      173 GETTABLEKS                       R32 R0 K10 ["OnClose"]
      175 SETTABLEKS                       R32 R31 K10 ["OnClose"]
      177 SETTABLEKS                       R18 R31 K11 ["OnReset"]
      179 DUPTABLE                         R32 K15 [{"CreatorAndGroup", "SortBy"}]
      180 JUMPIFNOT                        R16 ; [+164]
      181 GETUPVAL                         R33 11
      182 GETTABLEKS                       R33 R33 K8 ["createElement"]
      184 GETUPVAL                         R34 13
      185 DUPTABLE                         R35 K18 [{"Header", "LayoutOrder"}]
      186 LOADK                            R38 K19 ["General"]
      187 LOADK                            R39 K20 ["SearchOptionCreatorAndGroups"]
      188 NAMECALL                         R36 R1 K21 ["getText"]
      190 CALL                             R36 3 1
      191 SETTABLEKS                       R36 R35 K16 ["Header"]
      193 NAMECALL                         R36 R28 K22 ["getNextOrder"]
      195 CALL                             R36 1 1
      196 SETTABLEKS                       R36 R35 K17 ["LayoutOrder"]
      198 DUPTABLE                         R36 K25 [{"VerfifiedCreatorCheckbox", "CreatorGroupFilterContainer"}]
      199 GETUPVAL                         R37 11
      200 GETTABLEKS                       R37 R37 K8 ["createElement"]
      202 GETUPVAL                         R38 14
      203 DUPTABLE                         R39 K28 [{"LayoutOrder", "IsChecked", "OnClick"}]
      204 NAMECALL                         R40 R28 K22 ["getNextOrder"]
      206 CALL                             R40 1 1
      207 SETTABLEKS                       R40 R39 K17 ["LayoutOrder"]
      209 GETTABLEKS                       R40 R13 K29 ["includeUnverifiedCreators"]
      211 SETTABLEKS                       R40 R39 K26 ["IsChecked"]
      213 SETTABLEKS                       R22 R39 K27 ["OnClick"]
      215 CALL                             R37 2 1
      216 SETTABLEKS                       R37 R36 K23 ["VerfifiedCreatorCheckbox"]
      218 GETUPVAL                         R37 11
      219 GETTABLEKS                       R37 R37 K8 ["createElement"]
      221 GETUPVAL                         R38 15
      222 DUPTABLE                         R39 K35 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 6}]
      223 GETIMPORT                        R40 K38 [Enum.AutomaticSize.XY]
      225 SETTABLEKS                       R40 R39 K30 ["AutomaticSize"]
      227 GETIMPORT                        R40 K40 [Enum.HorizontalAlignment.Left]
      229 SETTABLEKS                       R40 R39 K31 ["HorizontalAlignment"]
      231 GETIMPORT                        R40 K43 [Enum.FillDirection.Vertical]
      233 SETTABLEKS                       R40 R39 K32 ["Layout"]
      235 NAMECALL                         R40 R28 K22 ["getNextOrder"]
      237 CALL                             R40 1 1
      238 SETTABLEKS                       R40 R39 K17 ["LayoutOrder"]
      240 DUPTABLE                         R40 K47 [{"MyCreationsCheckbox", "MyAssetsCheckbox", "SearchBar"}]
      241 GETUPVAL                         R41 11
      242 GETTABLEKS                       R41 R41 K8 ["createElement"]
      244 GETUPVAL                         R42 16
      245 DUPTABLE                         R43 K51 [{["Checked"], ["Key"] = "myCreations", ["LayoutOrder"], ["OnClick"], ["Text"]}]
      246 GETTABLEKS                       R44 R13 K6 ["myCreations"]
      248 SETTABLEKS                       R44 R43 K48 ["Checked"]
      250 NAMECALL                         R44 R28 K22 ["getNextOrder"]
      252 CALL                             R44 1 1
      253 SETTABLEKS                       R44 R43 K17 ["LayoutOrder"]
      255 SETTABLEKS                       R23 R43 K27 ["OnClick"]
      257 LOADK                            R46 K19 ["General"]
      258 LOADK                            R47 K52 ["MyCreations"]
      259 NAMECALL                         R44 R1 K21 ["getText"]
      261 CALL                             R44 3 1
      262 SETTABLEKS                       R44 R43 K50 ["Text"]
      264 DUPTABLE                         R44 K54 [{"HoverArea"}]
      265 GETUPVAL                         R45 11
      266 GETTABLEKS                       R45 R45 K8 ["createElement"]
      268 GETUPVAL                         R46 17
      269 DUPTABLE                         R47 K57 [{["Cursor"] = "PointingHand"}]
      270 CALL                             R45 2 1
      271 SETTABLEKS                       R45 R44 K53 ["HoverArea"]
      273 CALL                             R41 3 1
      274 SETTABLEKS                       R41 R40 K44 ["MyCreationsCheckbox"]
      276 GETUPVAL                         R41 11
      277 GETTABLEKS                       R41 R41 K8 ["createElement"]
      279 GETUPVAL                         R42 16
      280 DUPTABLE                         R43 K59 [{["Checked"], ["Key"] = "myAssets", ["LayoutOrder"], ["OnClick"], ["Text"]}]
      281 GETTABLEKS                       R44 R13 K58 ["myAssets"]
      283 SETTABLEKS                       R44 R43 K48 ["Checked"]
      285 NAMECALL                         R44 R28 K22 ["getNextOrder"]
      287 CALL                             R44 1 1
      288 SETTABLEKS                       R44 R43 K17 ["LayoutOrder"]
      290 SETTABLEKS                       R21 R43 K27 ["OnClick"]
      292 LOADK                            R46 K19 ["General"]
      293 LOADK                            R47 K60 ["MyAssets"]
      294 NAMECALL                         R44 R1 K21 ["getText"]
      296 CALL                             R44 3 1
      297 SETTABLEKS                       R44 R43 K50 ["Text"]
      299 DUPTABLE                         R44 K54 [{"HoverArea"}]
      300 GETUPVAL                         R45 11
      301 GETTABLEKS                       R45 R45 K8 ["createElement"]
      303 GETUPVAL                         R46 17
      304 DUPTABLE                         R47 K57 [{["Cursor"] = "PointingHand"}]
      305 CALL                             R45 2 1
      306 SETTABLEKS                       R45 R44 K53 ["HoverArea"]
      308 CALL                             R41 3 1
      309 SETTABLEKS                       R41 R40 K45 ["MyAssetsCheckbox"]
      311 GETUPVAL                         R41 11
      312 GETTABLEKS                       R41 R41 K8 ["createElement"]
      314 GETUPVAL                         R42 18
      315 DUPTABLE                         R43 K68 [{"LayoutOrder", "OnDeleteCreatorPill", "OnSearchUpdate", "OnSelectCreator", "CreatorResults", "SearchTerm", "SelectedUsers", "SelectedGroups"}]
      316 NAMECALL                         R44 R28 K22 ["getNextOrder"]
      318 CALL                             R44 1 1
      319 SETTABLEKS                       R44 R43 K17 ["LayoutOrder"]
      321 SETTABLEKS                       R26 R43 K61 ["OnDeleteCreatorPill"]
      323 SETTABLEKS                       R25 R43 K62 ["OnSearchUpdate"]
      325 SETTABLEKS                       R24 R43 K63 ["OnSelectCreator"]
      327 GETTABLEKS                       R44 R3 K69 ["results"]
      329 SETTABLEKS                       R44 R43 K64 ["CreatorResults"]
      331 SETTABLEKS                       R5 R43 K65 ["SearchTerm"]
      333 SETTABLEKS                       R15 R43 K66 ["SelectedUsers"]
      335 SETTABLEKS                       R9 R43 K67 ["SelectedGroups"]
      337 CALL                             R41 2 1
      338 SETTABLEKS                       R41 R40 K46 ["SearchBar"]
      340 CALL                             R37 3 1
      341 SETTABLEKS                       R37 R36 K24 ["CreatorGroupFilterContainer"]
      343 CALL                             R33 3 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R33
      346 SETTABLEKS                       R33 R32 K13 ["CreatorAndGroup"]
      348 GETUPVAL                         R33 11
      349 GETTABLEKS                       R33 R33 K8 ["createElement"]
      351 GETUPVAL                         R34 13
      352 DUPTABLE                         R35 K72 [{["Header"], ["HideLowerSeparator"] = True, ["LayoutOrder"]}]
      353 LOADK                            R38 K19 ["General"]
      354 LOADK                            R39 K73 ["SearchOptionSort"]
      355 NAMECALL                         R36 R1 K21 ["getText"]
      357 CALL                             R36 3 1
      358 SETTABLEKS                       R36 R35 K16 ["Header"]
      360 NAMECALL                         R36 R28 K22 ["getNextOrder"]
      362 CALL                             R36 1 1
      363 SETTABLEKS                       R36 R35 K17 ["LayoutOrder"]
      365 DUPTABLE                         R36 K75 [{"RadioButtons"}]
      366 GETUPVAL                         R37 11
      367 GETTABLEKS                       R37 R37 K8 ["createElement"]
      369 GETUPVAL                         R38 19
      370 DUPTABLE                         R39 K79 [{"Buttons", "CurrentSelectedKey", "OnClick", "SelectedKey"}]
      371 SETTABLEKS                       R17 R39 K76 ["Buttons"]
      373 SETTABLEKS                       R11 R39 K77 ["CurrentSelectedKey"]
      375 SETTABLEKS                       R12 R39 K27 ["OnClick"]
      377 GETTABLEKS                       R40 R2 K80 ["uiSortIntent"]
      379 SETTABLEKS                       R40 R39 K78 ["SelectedKey"]
      381 CALL                             R37 2 1
      382 SETTABLEKS                       R37 R36 K74 ["RadioButtons"]
      384 CALL                             R33 3 1
      385 SETTABLEKS                       R33 R32 K14 ["SortBy"]
      387 CALL                             R29 3 -1
      388 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Roact"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Src"]
       35 GETTABLEKS                       R8 R8 K13 ["Components"]
       37 GETTABLEKS                       R8 R8 K14 ["SearchOptions"]
       39 GETTABLEKS                       R8 R8 K15 ["UserAndGroupFilter"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Src"]
       46 GETTABLEKS                       R9 R9 K13 ["Components"]
       48 GETTABLEKS                       R9 R9 K14 ["SearchOptions"]
       50 GETTABLEKS                       R9 R9 K16 ["SearchOptionsEntry"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K12 ["Src"]
       57 GETTABLEKS                       R10 R10 K13 ["Components"]
       59 GETTABLEKS                       R10 R10 K14 ["SearchOptions"]
       61 GETTABLEKS                       R10 R10 K17 ["SearchOptionsLayout"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R11 R0 K12 ["Src"]
       68 GETTABLEKS                       R11 R11 K13 ["Components"]
       70 GETTABLEKS                       R11 R11 K14 ["SearchOptions"]
       72 GETTABLEKS                       R11 R11 K18 ["VerfifiedCreatorCheckbox"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R5 K19 ["UI"]
       77 GETTABLEKS                       R11 R11 K20 ["Checkbox"]
       79 GETTABLEKS                       R12 R5 K19 ["UI"]
       81 GETTABLEKS                       R12 R12 K21 ["HoverArea"]
       83 GETTABLEKS                       R13 R5 K19 ["UI"]
       85 GETTABLEKS                       R13 R13 K22 ["RadioButtonList"]
       87 GETTABLEKS                       R14 R5 K19 ["UI"]
       89 GETTABLEKS                       R14 R14 K23 ["Pane"]
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R16 R0 K12 ["Src"]
       95 GETTABLEKS                       R16 R16 K24 ["Reducers"]
       97 GETTABLEKS                       R16 R16 K25 ["PageInfo"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K12 ["Src"]
      104 GETTABLEKS                       R17 R17 K24 ["Reducers"]
      106 GETTABLEKS                       R17 R17 K26 ["LiveSearch"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K6 [require]
      111 GETTABLEKS                       R18 R0 K12 ["Src"]
      113 GETTABLEKS                       R18 R18 K27 ["Util"]
      115 GETTABLEKS                       R18 R18 K28 ["getUserId"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K6 [require]
      120 GETTABLEKS                       R19 R0 K12 ["Src"]
      122 GETTABLEKS                       R19 R19 K27 ["Util"]
      124 GETTABLEKS                       R19 R19 K29 ["getUsername"]
      126 CALL                             R18 1 1
      127 GETTABLEKS                       R19 R5 K27 ["Util"]
      129 GETTABLEKS                       R19 R19 K30 ["LayoutOrderIterator"]
      131 GETIMPORT                        R20 K6 [require]
      133 GETTABLEKS                       R21 R0 K12 ["Src"]
      135 GETTABLEKS                       R21 R21 K27 ["Util"]
      137 GETTABLEKS                       R21 R21 K31 ["ToolboxUtilities"]
      139 CALL                             R20 1 1
      140 GETTABLEKS                       R20 R20 K32 ["showRobloxCreatedAssets"]
      142 GETIMPORT                        R21 K6 [require]
      144 GETTABLEKS                       R22 R0 K12 ["Src"]
      146 GETTABLEKS                       R22 R22 K33 ["Types"]
      148 GETTABLEKS                       R22 R22 K34 ["BackendTypes"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K6 [require]
      153 GETTABLEKS                       R23 R0 K12 ["Src"]
      155 GETTABLEKS                       R23 R23 K33 ["Types"]
      157 GETTABLEKS                       R23 R23 K35 ["CreatorTypes"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K6 [require]
      162 GETTABLEKS                       R24 R0 K12 ["Src"]
      164 GETTABLEKS                       R24 R24 K36 ["Hooks"]
      166 GETTABLEKS                       R24 R24 K37 ["useSelector"]
      168 CALL                             R23 1 1
      169 GETTABLEKS                       R24 R3 K38 ["useCallback"]
      171 GETTABLEKS                       R25 R3 K39 ["useMemo"]
      173 GETTABLEKS                       R26 R3 K40 ["useState"]
      175 DUPTABLE                         R27 K47 [{["IncludeUnverifiedCreators"] = "includeUnverifiedCreators", ["MyAssets"] = "myAssets", ["MyCreations"] = "myCreations"}]
      176 DUPCLOSURE                       R28 K48 [PROTO_23]
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R24
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R13
      197 RETURN                           R28 1
