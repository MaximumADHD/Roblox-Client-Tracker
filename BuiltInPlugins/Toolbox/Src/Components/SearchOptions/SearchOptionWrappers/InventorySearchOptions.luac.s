PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["creatorTargetIds"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["creatorTargetIds"]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["groupTargetIds"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["groupTargetIds"]
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["uiSortIntent"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["uiSortIntent"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K1 ["UiSortIntent"]
       11 GETTABLEKS                       R0 R1 K2 ["Default"]
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["Id"]
        4 FASTCALL1                        TOSTRING R4 ; [+2]
        5 GETIMPORT                        R3 K2 [tostring]
        7 CALL                             R3 1 1
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 DUPTABLE                         R1 K6 [{"includeUnverifiedCreators", "myCreations", "myAssets"}]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K3 ["includeUnverifiedCreators"]
       17 SETTABLEKS                       R2 R1 K3 ["includeUnverifiedCreators"]
       19 SETTABLEKS                       R0 R1 K4 ["myCreations"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K7 ["excludeGroupCreations"]
       24 SETTABLEKS                       R2 R1 K5 ["myAssets"]
       26 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R1 K1 ["join"]
        5 GETUPVAL                         R1 1
        6 NEWTABLE                         R2 1 0
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K2 ["Id"]
       11 FASTCALL1                        TOSTRING R4 ; [+2]
       12 GETIMPORT                        R3 K4 [tostring]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K5 ["None"]
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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["UiSortIntent"]
        6 GETTABLEKS                       R2 R3 K4 ["Relevance"]
        8 SETTABLEKS                       R2 R1 K0 ["Key"]
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K5 ["SearchOptionsSort"]
       12 LOADK                            R5 K4 ["Relevance"]
       13 NAMECALL                         R2 R2 K6 ["getText"]
       15 CALL                             R2 3 1
       16 SETTABLEKS                       R2 R1 K1 ["Text"]
       18 DUPTABLE                         R2 K2 [{"Key", "Text"}]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K3 ["UiSortIntent"]
       22 GETTABLEKS                       R3 R4 K7 ["Name"]
       24 SETTABLEKS                       R3 R2 K0 ["Key"]
       26 GETUPVAL                         R3 1
       27 LOADK                            R5 K5 ["SearchOptionsSort"]
       28 LOADK                            R6 K7 ["Name"]
       29 NAMECALL                         R3 R3 K6 ["getText"]
       31 CALL                             R3 3 1
       32 SETTABLEKS                       R3 R2 K1 ["Text"]
       34 DUPTABLE                         R3 K2 [{"Key", "Text"}]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K3 ["UiSortIntent"]
       38 GETTABLEKS                       R4 R5 K8 ["DateModified"]
       40 SETTABLEKS                       R4 R3 K0 ["Key"]
       42 GETUPVAL                         R4 1
       43 LOADK                            R6 K5 ["SearchOptionsSort"]
       44 LOADK                            R7 K8 ["DateModified"]
       45 NAMECALL                         R4 R4 K6 ["getText"]
       47 CALL                             R4 3 1
       48 SETTABLEKS                       R4 R3 K1 ["Text"]
       50 DUPTABLE                         R4 K2 [{"Key", "Text"}]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K3 ["UiSortIntent"]
       54 GETTABLEKS                       R5 R6 K9 ["DateCreated"]
       56 SETTABLEKS                       R5 R4 K0 ["Key"]
       58 GETUPVAL                         R5 1
       59 LOADK                            R7 K5 ["SearchOptionsSort"]
       60 LOADK                            R8 K9 ["DateCreated"]
       61 NAMECALL                         R5 R5 K6 ["getText"]
       63 CALL                             R5 3 1
       64 SETTABLEKS                       R5 R4 K1 ["Text"]
       66 DUPTABLE                         R5 K2 [{"Key", "Text"}]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R7 R8 K3 ["UiSortIntent"]
       70 GETTABLEKS                       R6 R7 K10 ["Creator"]
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
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R2 R3 K0 ["UiSortIntent"]
       15 GETTABLEKS                       R1 R2 K1 ["Default"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 5
       19 DUPTABLE                         R1 K5 [{"includeUnverifiedCreators", "myCreations", "myAssets"}]
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K2 ["includeUnverifiedCreators"]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K3 ["myCreations"]
       26 LOADB                            R2 0
       27 SETTABLEKS                       R2 R1 K4 ["myAssets"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 MOVE                             R2 R0
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K2 ["Id"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 MOVE                             R2 R0
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K2 ["Id"]
       11 FASTCALL1                        TOSTRING R5 ; [+2]
       12 GETIMPORT                        R4 K4 [tostring]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K5 ["None"]
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
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        7 GETTABLEKS                       R1 R2 K1 ["join"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["IncludeUnverifiedCreators"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["MyCreations"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 4
       11 GETUPVAL                         R2 3
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K7 ["myCreations"]
        4 JUMPIF                           R2 ; [+2]
        5 GETUPVAL                         R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["Creator"]
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R1 R0 K1 ["creatorTargetIds"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K8 ["myAssets"]
       16 SETTABLEKS                       R1 R0 K2 ["excludeGroupCreations"]
       18 GETUPVAL                         R1 3
       19 SETTABLEKS                       R1 R0 K3 ["groupTargetIds"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K4 ["includeUnverifiedCreators"]
       24 SETTABLEKS                       R1 R0 K4 ["includeUnverifiedCreators"]
       26 GETUPVAL                         R1 4
       27 SETTABLEKS                       R1 R0 K5 ["uiSortIntent"]
       29 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
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
      109 CAPTURE                          UPVAL U10
      110 NEWTABLE                         R24 0 0
      112 CALL                             R22 2 1
      113 GETUPVAL                         R23 9
      114 NEWCLOSURE                       R24 P15
      115 CAPTURE                          VAL R21
      116 CAPTURE                          UPVAL U10
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R20
      120 NEWTABLE                         R25 0 2
      122 GETTABLEKS                       R26 R13 K6 ["myCreations"]
      124 MOVE                             R27 R4
      125 SETLIST                          R25 R26 2 [1]
      127 CALL                             R23 2 1
      128 GETUPVAL                         R24 9
      129 NEWCLOSURE                       R25 P16
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R6
      132 NEWTABLE                         R26 0 0
      134 CALL                             R24 2 1
      135 GETUPVAL                         R25 9
      136 NEWCLOSURE                       R26 P17
      137 CAPTURE                          VAL R6
      138 NEWTABLE                         R27 0 0
      140 CALL                             R25 2 1
      141 GETUPVAL                         R26 9
      142 NEWCLOSURE                       R27 P18
      143 CAPTURE                          VAL R20
      144 NEWTABLE                         R28 0 0
      146 CALL                             R26 2 1
      147 GETUPVAL                         R27 9
      148 NEWCLOSURE                       R28 P19
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R11
      154 NEWTABLE                         R29 0 5
      156 MOVE                             R30 R5
      157 MOVE                             R31 R7
      158 MOVE                             R32 R13
      159 MOVE                             R33 R9
      160 MOVE                             R34 R11
      161 SETLIST                          R29 R30 5 [1]
      163 CALL                             R27 2 1
      164 GETUPVAL                         R29 11
      165 GETTABLEKS                       R28 R29 K7 ["new"]
      167 CALL                             R28 0 1
      168 GETUPVAL                         R30 12
      169 GETTABLEKS                       R29 R30 K8 ["createElement"]
      171 GETUPVAL                         R30 13
      172 DUPTABLE                         R31 K12 [{"GetSearchOptions", "OnClose", "OnReset"}]
      173 SETTABLEKS                       R27 R31 K9 ["GetSearchOptions"]
      175 GETTABLEKS                       R32 R0 K10 ["OnClose"]
      177 SETTABLEKS                       R32 R31 K10 ["OnClose"]
      179 SETTABLEKS                       R18 R31 K11 ["OnReset"]
      181 DUPTABLE                         R32 K15 [{"CreatorAndGroup", "SortBy"}]
      182 JUMPIFNOT                        R16 ; [+183]
      183 GETUPVAL                         R34 12
      184 GETTABLEKS                       R33 R34 K8 ["createElement"]
      186 GETUPVAL                         R34 14
      187 DUPTABLE                         R35 K18 [{"Header", "LayoutOrder"}]
      188 LOADK                            R38 K19 ["General"]
      189 LOADK                            R39 K20 ["SearchOptionCreatorAndGroups"]
      190 NAMECALL                         R36 R1 K21 ["getText"]
      192 CALL                             R36 3 1
      193 SETTABLEKS                       R36 R35 K16 ["Header"]
      195 NAMECALL                         R36 R28 K22 ["getNextOrder"]
      197 CALL                             R36 1 1
      198 SETTABLEKS                       R36 R35 K17 ["LayoutOrder"]
      200 DUPTABLE                         R36 K25 [{"VerfifiedCreatorCheckbox", "CreatorGroupFilterContainer"}]
      201 GETUPVAL                         R38 12
      202 GETTABLEKS                       R37 R38 K8 ["createElement"]
      204 GETUPVAL                         R38 15
      205 DUPTABLE                         R39 K28 [{"LayoutOrder", "IsChecked", "OnClick"}]
      206 NAMECALL                         R40 R28 K22 ["getNextOrder"]
      208 CALL                             R40 1 1
      209 SETTABLEKS                       R40 R39 K17 ["LayoutOrder"]
      211 GETTABLEKS                       R40 R13 K29 ["includeUnverifiedCreators"]
      213 SETTABLEKS                       R40 R39 K26 ["IsChecked"]
      215 SETTABLEKS                       R22 R39 K27 ["OnClick"]
      217 CALL                             R37 2 1
      218 SETTABLEKS                       R37 R36 K23 ["VerfifiedCreatorCheckbox"]
      220 GETUPVAL                         R38 12
      221 GETTABLEKS                       R37 R38 K8 ["createElement"]
      223 GETUPVAL                         R38 16
      224 DUPTABLE                         R39 K34 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      225 GETIMPORT                        R40 K37 [Enum.AutomaticSize.XY]
      227 SETTABLEKS                       R40 R39 K30 ["AutomaticSize"]
      229 GETIMPORT                        R40 K39 [Enum.HorizontalAlignment.Left]
      231 SETTABLEKS                       R40 R39 K31 ["HorizontalAlignment"]
      233 GETIMPORT                        R40 K42 [Enum.FillDirection.Vertical]
      235 SETTABLEKS                       R40 R39 K32 ["Layout"]
      237 NAMECALL                         R40 R28 K22 ["getNextOrder"]
      239 CALL                             R40 1 1
      240 SETTABLEKS                       R40 R39 K17 ["LayoutOrder"]
      242 LOADN                            R40 6
      243 SETTABLEKS                       R40 R39 K33 ["Spacing"]
      245 DUPTABLE                         R40 K46 [{"MyCreationsCheckbox", "MyAssetsCheckbox", "SearchBar"}]
      246 GETUPVAL                         R42 12
      247 GETTABLEKS                       R41 R42 K8 ["createElement"]
      249 GETUPVAL                         R42 17
      250 DUPTABLE                         R43 K50 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
      251 GETTABLEKS                       R44 R13 K6 ["myCreations"]
      253 SETTABLEKS                       R44 R43 K47 ["Checked"]
      255 GETUPVAL                         R45 10
      256 GETTABLEKS                       R44 R45 K51 ["MyCreations"]
      258 SETTABLEKS                       R44 R43 K48 ["Key"]
      260 NAMECALL                         R44 R28 K22 ["getNextOrder"]
      262 CALL                             R44 1 1
      263 SETTABLEKS                       R44 R43 K17 ["LayoutOrder"]
      265 SETTABLEKS                       R23 R43 K27 ["OnClick"]
      267 LOADK                            R46 K19 ["General"]
      268 LOADK                            R47 K51 ["MyCreations"]
      269 NAMECALL                         R44 R1 K21 ["getText"]
      271 CALL                             R44 3 1
      272 SETTABLEKS                       R44 R43 K49 ["Text"]
      274 DUPTABLE                         R44 K53 [{"HoverArea"}]
      275 GETUPVAL                         R46 12
      276 GETTABLEKS                       R45 R46 K8 ["createElement"]
      278 GETUPVAL                         R46 18
      279 DUPTABLE                         R47 K55 [{"Cursor"}]
      280 LOADK                            R48 K56 ["PointingHand"]
      281 SETTABLEKS                       R48 R47 K54 ["Cursor"]
      283 CALL                             R45 2 1
      284 SETTABLEKS                       R45 R44 K52 ["HoverArea"]
      286 CALL                             R41 3 1
      287 SETTABLEKS                       R41 R40 K43 ["MyCreationsCheckbox"]
      289 GETUPVAL                         R42 12
      290 GETTABLEKS                       R41 R42 K8 ["createElement"]
      292 GETUPVAL                         R42 17
      293 DUPTABLE                         R43 K50 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
      294 GETTABLEKS                       R44 R13 K57 ["myAssets"]
      296 SETTABLEKS                       R44 R43 K47 ["Checked"]
      298 GETUPVAL                         R45 10
      299 GETTABLEKS                       R44 R45 K58 ["MyAssets"]
      301 SETTABLEKS                       R44 R43 K48 ["Key"]
      303 NAMECALL                         R44 R28 K22 ["getNextOrder"]
      305 CALL                             R44 1 1
      306 SETTABLEKS                       R44 R43 K17 ["LayoutOrder"]
      308 SETTABLEKS                       R21 R43 K27 ["OnClick"]
      310 LOADK                            R46 K19 ["General"]
      311 LOADK                            R47 K58 ["MyAssets"]
      312 NAMECALL                         R44 R1 K21 ["getText"]
      314 CALL                             R44 3 1
      315 SETTABLEKS                       R44 R43 K49 ["Text"]
      317 DUPTABLE                         R44 K53 [{"HoverArea"}]
      318 GETUPVAL                         R46 12
      319 GETTABLEKS                       R45 R46 K8 ["createElement"]
      321 GETUPVAL                         R46 18
      322 DUPTABLE                         R47 K55 [{"Cursor"}]
      323 LOADK                            R48 K56 ["PointingHand"]
      324 SETTABLEKS                       R48 R47 K54 ["Cursor"]
      326 CALL                             R45 2 1
      327 SETTABLEKS                       R45 R44 K52 ["HoverArea"]
      329 CALL                             R41 3 1
      330 SETTABLEKS                       R41 R40 K44 ["MyAssetsCheckbox"]
      332 GETUPVAL                         R42 12
      333 GETTABLEKS                       R41 R42 K8 ["createElement"]
      335 GETUPVAL                         R42 19
      336 DUPTABLE                         R43 K66 [{"LayoutOrder", "OnDeleteCreatorPill", "OnSearchUpdate", "OnSelectCreator", "CreatorResults", "SearchTerm", "SelectedUsers", "SelectedGroups"}]
      337 NAMECALL                         R44 R28 K22 ["getNextOrder"]
      339 CALL                             R44 1 1
      340 SETTABLEKS                       R44 R43 K17 ["LayoutOrder"]
      342 SETTABLEKS                       R26 R43 K59 ["OnDeleteCreatorPill"]
      344 SETTABLEKS                       R25 R43 K60 ["OnSearchUpdate"]
      346 SETTABLEKS                       R24 R43 K61 ["OnSelectCreator"]
      348 GETTABLEKS                       R44 R3 K67 ["results"]
      350 SETTABLEKS                       R44 R43 K62 ["CreatorResults"]
      352 SETTABLEKS                       R5 R43 K63 ["SearchTerm"]
      354 SETTABLEKS                       R15 R43 K64 ["SelectedUsers"]
      356 SETTABLEKS                       R9 R43 K65 ["SelectedGroups"]
      358 CALL                             R41 2 1
      359 SETTABLEKS                       R41 R40 K45 ["SearchBar"]
      361 CALL                             R37 3 1
      362 SETTABLEKS                       R37 R36 K24 ["CreatorGroupFilterContainer"]
      364 CALL                             R33 3 1
      365 JUMP                             ; [+1]
      366 LOADNIL                          R33
      367 SETTABLEKS                       R33 R32 K13 ["CreatorAndGroup"]
      369 GETUPVAL                         R34 12
      370 GETTABLEKS                       R33 R34 K8 ["createElement"]
      372 GETUPVAL                         R34 14
      373 DUPTABLE                         R35 K69 [{"Header", "HideLowerSeparator", "LayoutOrder"}]
      374 LOADK                            R38 K19 ["General"]
      375 LOADK                            R39 K70 ["SearchOptionSort"]
      376 NAMECALL                         R36 R1 K21 ["getText"]
      378 CALL                             R36 3 1
      379 SETTABLEKS                       R36 R35 K16 ["Header"]
      381 LOADB                            R36 1
      382 SETTABLEKS                       R36 R35 K68 ["HideLowerSeparator"]
      384 NAMECALL                         R36 R28 K22 ["getNextOrder"]
      386 CALL                             R36 1 1
      387 SETTABLEKS                       R36 R35 K17 ["LayoutOrder"]
      389 DUPTABLE                         R36 K72 [{"RadioButtons"}]
      390 GETUPVAL                         R38 12
      391 GETTABLEKS                       R37 R38 K8 ["createElement"]
      393 GETUPVAL                         R38 20
      394 DUPTABLE                         R39 K76 [{"Buttons", "CurrentSelectedKey", "OnClick", "SelectedKey"}]
      395 SETTABLEKS                       R17 R39 K73 ["Buttons"]
      397 SETTABLEKS                       R11 R39 K74 ["CurrentSelectedKey"]
      399 SETTABLEKS                       R12 R39 K27 ["OnClick"]
      401 GETTABLEKS                       R40 R2 K77 ["uiSortIntent"]
      403 SETTABLEKS                       R40 R39 K75 ["SelectedKey"]
      405 CALL                             R37 2 1
      406 SETTABLEKS                       R37 R36 K71 ["RadioButtons"]
      408 CALL                             R33 3 1
      409 SETTABLEKS                       R33 R32 K14 ["SortBy"]
      411 CALL                             R29 3 -1
      412 RETURN                           R29 -1

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
       33 GETTABLEKS                       R11 R0 K12 ["Src"]
       35 GETTABLEKS                       R10 R11 K13 ["Components"]
       37 GETTABLEKS                       R9 R10 K14 ["SearchOptions"]
       39 GETTABLEKS                       R8 R9 K15 ["UserAndGroupFilter"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R12 R0 K12 ["Src"]
       46 GETTABLEKS                       R11 R12 K13 ["Components"]
       48 GETTABLEKS                       R10 R11 K14 ["SearchOptions"]
       50 GETTABLEKS                       R9 R10 K16 ["SearchOptionsEntry"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R13 R0 K12 ["Src"]
       57 GETTABLEKS                       R12 R13 K13 ["Components"]
       59 GETTABLEKS                       R11 R12 K14 ["SearchOptions"]
       61 GETTABLEKS                       R10 R11 K17 ["SearchOptionsLayout"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R14 R0 K12 ["Src"]
       68 GETTABLEKS                       R13 R14 K13 ["Components"]
       70 GETTABLEKS                       R12 R13 K14 ["SearchOptions"]
       72 GETTABLEKS                       R11 R12 K18 ["VerfifiedCreatorCheckbox"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R12 R5 K19 ["UI"]
       77 GETTABLEKS                       R11 R12 K20 ["Checkbox"]
       79 GETTABLEKS                       R13 R5 K19 ["UI"]
       81 GETTABLEKS                       R12 R13 K21 ["HoverArea"]
       83 GETTABLEKS                       R14 R5 K19 ["UI"]
       85 GETTABLEKS                       R13 R14 K22 ["RadioButtonList"]
       87 GETTABLEKS                       R15 R5 K19 ["UI"]
       89 GETTABLEKS                       R14 R15 K23 ["Pane"]
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R18 R0 K12 ["Src"]
       95 GETTABLEKS                       R17 R18 K24 ["Reducers"]
       97 GETTABLEKS                       R16 R17 K25 ["PageInfo"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R19 R0 K12 ["Src"]
      104 GETTABLEKS                       R18 R19 K24 ["Reducers"]
      106 GETTABLEKS                       R17 R18 K26 ["LiveSearch"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K6 [require]
      111 GETTABLEKS                       R20 R0 K12 ["Src"]
      113 GETTABLEKS                       R19 R20 K27 ["Util"]
      115 GETTABLEKS                       R18 R19 K28 ["getUserId"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K6 [require]
      120 GETTABLEKS                       R21 R0 K12 ["Src"]
      122 GETTABLEKS                       R20 R21 K27 ["Util"]
      124 GETTABLEKS                       R19 R20 K29 ["getUsername"]
      126 CALL                             R18 1 1
      127 GETTABLEKS                       R20 R5 K27 ["Util"]
      129 GETTABLEKS                       R19 R20 K30 ["LayoutOrderIterator"]
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R24 R0 K12 ["Src"]
      135 GETTABLEKS                       R23 R24 K27 ["Util"]
      137 GETTABLEKS                       R22 R23 K31 ["ToolboxUtilities"]
      139 CALL                             R21 1 1
      140 GETTABLEKS                       R20 R21 K32 ["showRobloxCreatedAssets"]
      142 GETIMPORT                        R21 K6 [require]
      144 GETTABLEKS                       R24 R0 K12 ["Src"]
      146 GETTABLEKS                       R23 R24 K33 ["Types"]
      148 GETTABLEKS                       R22 R23 K34 ["BackendTypes"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K6 [require]
      153 GETTABLEKS                       R25 R0 K12 ["Src"]
      155 GETTABLEKS                       R24 R25 K33 ["Types"]
      157 GETTABLEKS                       R23 R24 K35 ["CreatorTypes"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K6 [require]
      162 GETTABLEKS                       R26 R0 K12 ["Src"]
      164 GETTABLEKS                       R25 R26 K36 ["Hooks"]
      166 GETTABLEKS                       R24 R25 K37 ["useSelector"]
      168 CALL                             R23 1 1
      169 GETTABLEKS                       R24 R3 K38 ["useCallback"]
      171 GETTABLEKS                       R25 R3 K39 ["useMemo"]
      173 GETTABLEKS                       R26 R3 K40 ["useState"]
      175 DUPTABLE                         R27 K44 [{"IncludeUnverifiedCreators", "MyAssets", "MyCreations"}]
      176 LOADK                            R28 K45 ["includeUnverifiedCreators"]
      177 SETTABLEKS                       R28 R27 K41 ["IncludeUnverifiedCreators"]
      179 LOADK                            R28 K46 ["myAssets"]
      180 SETTABLEKS                       R28 R27 K42 ["MyAssets"]
      182 LOADK                            R28 K47 ["myCreations"]
      183 SETTABLEKS                       R28 R27 K43 ["MyCreations"]
      185 DUPCLOSURE                       R28 K48 [PROTO_23]
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R26
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R27
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R13
      207 RETURN                           R28 1
