PROTO_0:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 LOADK                            R2 K3 ["%* parts"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K4 ["format"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K1 ["text"]
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"items", "onActivated", "back"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["items"]
        8 GETTABLEKS                       R4 R0 K5 ["select"]
       10 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       12 DUPTABLE                         R4 K8 [{["text"] = "Back", ["onActivated"]}]
       13 GETTABLEKS                       R5 R0 K3 ["back"]
       15 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       17 SETTABLEKS                       R4 R3 K3 ["back"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"items", "onActivated", "back"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["items"]
        9 GETTABLEKS                       R4 R0 K5 ["select"]
       11 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       13 DUPTABLE                         R4 K8 [{["text"] = "Back", ["onActivated"]}]
       14 GETTABLEKS                       R5 R0 K3 ["back"]
       16 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       18 SETTABLEKS                       R4 R3 K3 ["back"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+7]
        7 LOADK                            R1 K3 ["%* parts"]
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K4 ["format"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1
       13 LOADK                            R1 K5 ["Auto parts"]
       14 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onOptionsChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["options"]
        9 DUPTABLE                         R4 K4 [{"output"}]
       10 SETTABLEKS                       R0 R4 K3 ["output"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onOptionsChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["options"]
        9 DUPTABLE                         R4 K4 [{"parts"}]
       10 SETTABLEKS                       R0 R4 K3 ["parts"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["useEventCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["useEventCallback"]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K1 ["useEventCallback"]
       21 DUPCLOSURE                       R5 K2 [PROTO_6]
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K1 ["useEventCallback"]
       26 DUPCLOSURE                       R6 K3 [PROTO_7]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K4 ["createElement"]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K5 ["View"]
       34 DUPTABLE                         R8 K9 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"]}]
       35 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       37 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       39 DUPTABLE                         R9 K14 [{"Add", "Output", "Parts", "More"}]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K4 ["createElement"]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R11 R11 K15 ["IconButton"]
       46 DUPTABLE                         R12 K22 [{["icon"], ["onActivated"], ["size"], ["variant"], ["testId"] = "MeshGenAdd", ["LayoutOrder"]}]
       47 DUPTABLE                         R13 K24 [{"name"}]
       48 GETUPVAL                         R14 3
       49 GETTABLEKS                       R14 R14 K25 ["Enums"]
       51 GETTABLEKS                       R14 R14 K26 ["IconName"]
       53 GETTABLEKS                       R14 R14 K27 ["PlusLarge"]
       55 SETTABLEKS                       R14 R13 K23 ["name"]
       57 SETTABLEKS                       R13 R12 K16 ["icon"]
       59 SETTABLEKS                       R4 R12 K17 ["onActivated"]
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R13 R13 K25 ["Enums"]
       64 GETTABLEKS                       R13 R13 K28 ["InputSize"]
       66 GETTABLEKS                       R13 R13 K29 ["XSmall"]
       68 SETTABLEKS                       R13 R12 K18 ["size"]
       70 GETUPVAL                         R13 3
       71 GETTABLEKS                       R13 R13 K25 ["Enums"]
       73 GETTABLEKS                       R13 R13 K30 ["ButtonVariant"]
       75 GETTABLEKS                       R13 R13 K31 ["Utility"]
       77 SETTABLEKS                       R13 R12 K19 ["variant"]
       79 MOVE                             R13 R1
       80 CALL                             R13 0 1
       81 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K10 ["Add"]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R10 R10 K4 ["createElement"]
       89 GETUPVAL                         R11 4
       90 DUPTABLE                         R12 K36 [{["value"], ["onValueChange"], ["items"], ["testId"] = "MeshGenOutput", ["LayoutOrder"]}]
       91 GETTABLEKS                       R13 R0 K37 ["options"]
       93 GETTABLEKS                       R13 R13 K38 ["output"]
       95 SETTABLEKS                       R13 R12 K32 ["value"]
       97 SETTABLEKS                       R2 R12 K33 ["onValueChange"]
       99 GETUPVAL                         R13 5
      100 SETTABLEKS                       R13 R12 K34 ["items"]
      102 MOVE                             R13 R1
      103 CALL                             R13 0 1
      104 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K11 ["Output"]
      109 GETUPVAL                         R10 2
      110 GETTABLEKS                       R10 R10 K4 ["createElement"]
      112 GETUPVAL                         R11 4
      113 DUPTABLE                         R12 K41 [{["value"], ["onValueChange"], ["items"], ["text"], ["testId"] = "MeshGenParts", ["LayoutOrder"]}]
      114 GETTABLEKS                       R13 R0 K37 ["options"]
      116 GETTABLEKS                       R13 R13 K42 ["parts"]
      118 SETTABLEKS                       R13 R12 K32 ["value"]
      120 SETTABLEKS                       R3 R12 K33 ["onValueChange"]
      122 GETUPVAL                         R13 6
      123 SETTABLEKS                       R13 R12 K34 ["items"]
      125 GETTABLEKS                       R14 R0 K37 ["options"]
      127 GETTABLEKS                       R14 R14 K42 ["parts"]
      129 FASTCALL1                        TYPEOF R14 ; [+3]
      130 MOVE                             R16 R14
      131 GETIMPORT                        R15 K44 [typeof]
      133 CALL                             R15 1 1
      134 JUMPIFNOTEQKS                    R15 K45 ["number"] ; [+8]
      136 LOADK                            R15 K46 ["%* parts"]
      137 MOVE                             R17 R14
      138 NAMECALL                         R15 R15 K47 ["format"]
      140 CALL                             R15 2 1
      141 MOVE                             R13 R15
      142 JUMP                             ; [+1]
      143 LOADK                            R13 K48 ["Auto parts"]
      144 SETTABLEKS                       R13 R12 K39 ["text"]
      146 MOVE                             R13 R1
      147 CALL                             R13 0 1
      148 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      150 CALL                             R10 2 1
      151 SETTABLEKS                       R10 R9 K12 ["Parts"]
      153 GETUPVAL                         R10 2
      154 GETTABLEKS                       R10 R10 K4 ["createElement"]
      156 GETUPVAL                         R11 3
      157 GETTABLEKS                       R11 R11 K15 ["IconButton"]
      159 DUPTABLE                         R12 K50 [{["icon"], ["onActivated"], ["size"], ["variant"], ["testId"] = "MeshGenMore", ["LayoutOrder"]}]
      160 DUPTABLE                         R13 K24 [{"name"}]
      161 GETUPVAL                         R14 3
      162 GETTABLEKS                       R14 R14 K25 ["Enums"]
      164 GETTABLEKS                       R14 R14 K26 ["IconName"]
      166 GETTABLEKS                       R14 R14 K51 ["ThreeDotsHorizontal"]
      168 SETTABLEKS                       R14 R13 K23 ["name"]
      170 SETTABLEKS                       R13 R12 K16 ["icon"]
      172 SETTABLEKS                       R5 R12 K17 ["onActivated"]
      174 GETUPVAL                         R13 3
      175 GETTABLEKS                       R13 R13 K25 ["Enums"]
      177 GETTABLEKS                       R13 R13 K28 ["InputSize"]
      179 GETTABLEKS                       R13 R13 K29 ["XSmall"]
      181 SETTABLEKS                       R13 R12 K18 ["size"]
      183 GETUPVAL                         R13 3
      184 GETTABLEKS                       R13 R13 K25 ["Enums"]
      186 GETTABLEKS                       R13 R13 K30 ["ButtonVariant"]
      188 GETTABLEKS                       R13 R13 K31 ["Utility"]
      190 SETTABLEKS                       R13 R12 K19 ["variant"]
      192 MOVE                             R13 R1
      193 CALL                             R13 0 1
      194 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      196 CALL                             R10 2 1
      197 SETTABLEKS                       R10 R9 K13 ["More"]
      199 CALL                             R6 3 -1
      200 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Gen3dCore"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R3 K12 ["Components"]
       44 GETTABLEKS                       R6 R6 K13 ["ChipDropdown"]
       46 GETTABLEKS                       R7 R3 K12 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["ChipDropdownMenu"]
       50 NEWTABLE                         R8 0 2
       52 DUPTABLE                         R9 K19 [{["id"] = "meshAndTexture", ["text"] = "Mesh + texture"}]
       53 DUPTABLE                         R10 K22 [{["id"] = "meshOnly", ["text"] = "Mesh only"}]
       54 SETLIST                          R8 R9 2 [1]
       56 GETTABLEKS                       R9 R1 K23 ["map"]
       58 NEWTABLE                         R10 0 7
       60 LOADN                            R11 2
       61 LOADN                            R12 3
       62 LOADN                            R13 4
       63 LOADN                            R14 5
       64 LOADN                            R15 6
       65 LOADN                            R16 7
       66 LOADN                            R17 8
       67 SETLIST                          R10 R11 7 [1]
       69 DUPCLOSURE                       R11 K24 [PROTO_0]
       70 CALL                             R9 2 1
       71 NEWTABLE                         R10 0 4
       73 DUPTABLE                         R11 K27 [{["id"] = "auto", ["text"] = "Automatic (Default)"}]
       74 DUPTABLE                         R12 K30 [{["id"] = "one", ["text"] = "One part"}]
       75 DUPTABLE                         R13 K34 [{["id"] = "chooseCount", ["text"] = "Choose count", ["renderSubmenu"]}]
       76 DUPCLOSURE                       R14 K35 [PROTO_1]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 SETTABLEKS                       R14 R13 K33 ["renderSubmenu"]
       82 DUPTABLE                         R14 K38 [{["id"] = "nameParts", ["text"] = "Name parts...", ["renderSubmenu"]}]
       83 DUPCLOSURE                       R15 K39 [PROTO_2]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R15 R14 K33 ["renderSubmenu"]
       88 SETLIST                          R10 R11 4 [1]
       90 DUPCLOSURE                       R11 K40 [PROTO_3]
       91 DUPCLOSURE                       R12 K41 [PROTO_8]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R10
       99 GETTABLEKS                       R13 R4 K42 ["memo"]
      101 MOVE                             R14 R12
      102 CALL                             R13 1 -1
      103 RETURN                           R13 -1
