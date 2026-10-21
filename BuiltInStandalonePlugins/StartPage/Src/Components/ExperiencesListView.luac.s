PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Name"] ; [+5]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 ORK                              R3 R4 K1 [""]
        5 RETURN                           R3 1
        6 JUMPIFNOTEQKS                    R0 K2 ["Description"] ; [+5]
        8 GETTABLEKS                       R4 R1 K2 ["Description"]
       10 ORK                              R3 R4 K1 [""]
       11 RETURN                           R3 1
       12 JUMPIFNOTEQKS                    R0 K3 ["Places"] ; [+21]
       14 GETTABLEKS                       R4 R1 K4 ["Children"]
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETTABLEKS                       R4 R1 K4 ["Children"]
       19 LENGTH                           R3 R4
       20 JUMP                             ; [+1]
       21 LOADN                            R3 0
       22 FASTCALL2K                       MATH_MAX R3 K5 ; [+5]
       24 MOVE                             R6 R3
       25 LOADK                            R7 K5 [1]
       26 GETIMPORT                        R5 K8 [math.max]
       28 CALL                             R5 2 1
       29 FASTCALL1                        TOSTRING R5 ; [+2]
       30 GETIMPORT                        R4 K10 [tostring]
       32 CALL                             R4 1 1
       33 RETURN                           R4 1
       34 JUMPIFNOTEQKS                    R0 K11 ["Edited"] ; [+10]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R4 R1 K12 ["Updated"]
       39 JUMPIF                           R4 ; [+2]
       40 GETTABLEKS                       R4 R1 K13 ["LastViewed"]
       42 MOVE                             R5 R2
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1
       45 JUMPIFNOTEQKS                    R0 K14 ["Created"] ; [+7]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R4 R1 K14 ["Created"]
       50 MOVE                             R5 R2
       51 CALL                             R3 2 -1
       52 RETURN                           R3 -1
       53 JUMPIFNOTEQKS                    R0 K15 ["Playability"] ; [+6]
       55 GETUPVAL                         R3 1
       56 MOVE                             R4 R1
       57 MOVE                             R5 R2
       58 CALL                             R3 2 -1
       59 RETURN                           R3 -1
       60 JUMPIFNOTEQKS                    R0 K16 ["TeamCreate"] ; [+12]
       62 LOADK                            R5 K17 ["Plugin"]
       63 GETTABLEKS                       R7 R1 K18 ["IsTeamCreateEnabled"]
       65 JUMPIFNOT                        R7 ; [+2]
       66 LOADK                            R6 K19 ["Yes"]
       67 JUMP                             ; [+1]
       68 LOADK                            R6 K20 ["No"]
       69 NAMECALL                         R3 R2 K21 ["getText"]
       71 CALL                             R3 3 -1
       72 RETURN                           R3 -1
       73 LOADK                            R3 K1 [""]
       74 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+5]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContextMenuActions"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["cell"]
        7 MOVE                             R4 R1
        8 JUMPIF                           R4 ; [+2]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R5 0 2
       18 LENGTH                           R6 R2
       19 GETTABLEKS                       R7 R0 K2 ["onClose"]
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 0
       24 LENGTH                           R3 R2
       25 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K4 ["createElement"]
       32 GETUPVAL                         R4 4
       33 DUPTABLE                         R5 K9 [{"anchorRef", "isOpen", "actions", "onItemActivated", "onClose"}]
       34 GETTABLEKS                       R6 R0 K5 ["anchorRef"]
       36 SETTABLEKS                       R6 R5 K5 ["anchorRef"]
       38 GETTABLEKS                       R6 R0 K6 ["isOpen"]
       40 SETTABLEKS                       R6 R5 K6 ["isOpen"]
       42 SETTABLEKS                       R2 R5 K7 ["actions"]
       44 GETTABLEKS                       R6 R0 K8 ["onItemActivated"]
       46 SETTABLEKS                       R6 R5 K8 ["onItemActivated"]
       48 GETTABLEKS                       R6 R0 K2 ["onClose"]
       50 SETTABLEKS                       R6 R5 K2 ["onClose"]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TotalCount"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["TotalCount"]
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 LOADNIL                          R0
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["DisplayComponentHasAdjustedQuery"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["DisplayComponentHasAdjustedQuery"]
        9 DUPTABLE                         R1 K3 [{"pageIndex", "pageSize"}]
       10 GETUPVAL                         R2 2
       11 SETTABLEKS                       R2 R1 K1 ["pageIndex"]
       13 GETUPVAL                         R2 3
       14 SETTABLEKS                       R2 R1 K2 ["pageSize"]
       16 CALL                             R0 1 0
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Cells"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["IsPlaceholder"]
       10 JUMPIF                           R6 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R5
       15 GETIMPORT                        R6 K4 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["RootPlaceId"]
        2 JUMPIFNOT                        R1 ; [+29]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K2 ["Id"]
       10 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       12 GETTABLEKS                       R5 R0 K0 ["RootPlaceId"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K3 ["showVerifyAge"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K4 ["showAgeRestricted"]
       20 GETTABLEKS                       R9 R0 K5 ["IsTeamCreateEnabled"]
       22 JUMPIFEQKB                       R9 TRUE ; [+2]
       24 LOADB                            R8 0 +1
       25 LOADB                            R8 1
       26 GETUPVAL                         R9 3
       27 GETUPVAL                         R10 4
       28 GETUPVAL                         R11 5
       29 LOADB                            R12 0
       30 CALL                             R1 11 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K6 ["FilePath"]
       34 JUMPIFNOT                        R1 ; [+7]
       35 GETUPVAL                         R1 6
       36 GETTABLEKS                       R3 R0 K6 ["FilePath"]
       38 LOADB                            R4 0
       39 NAMECALL                         R1 R1 K7 ["openLocalFile"]
       41 CALL                             R1 3 0
       42 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 7
        2 DUPTABLE                         R1 K7 [{[1] = "Name", ["Title"], ["WidthScale"] = 0.22, ["HasIcon"] = True}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K8 ["Plugin"]
        5 LOADK                            R5 K9 ["ListView.Name"]
        6 NAMECALL                         R2 R2 K10 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K2 ["Title"]
       11 DUPTABLE                         R2 K13 [{[1] = "Description", ["Title"], ["WidthScale"] = 0.25}]
       12 GETUPVAL                         R3 0
       13 LOADK                            R5 K8 ["Plugin"]
       14 LOADK                            R6 K14 ["ListView.Description"]
       15 NAMECALL                         R3 R3 K10 ["getText"]
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R2 K2 ["Title"]
       20 DUPTABLE                         R3 K17 [{[1] = "Places", ["Title"], ["WidthScale"] = 0.08}]
       21 GETUPVAL                         R4 0
       22 LOADK                            R6 K8 ["Plugin"]
       23 LOADK                            R7 K18 ["ListView.Places"]
       24 NAMECALL                         R4 R4 K10 ["getText"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K2 ["Title"]
       29 DUPTABLE                         R4 K21 [{[1] = "Edited", ["Title"], ["WidthScale"] = 0.13}]
       30 GETUPVAL                         R5 0
       31 LOADK                            R7 K8 ["Plugin"]
       32 LOADK                            R8 K22 ["ListView.LastEdited"]
       33 NAMECALL                         R5 R5 K10 ["getText"]
       35 CALL                             R5 3 1
       36 SETTABLEKS                       R5 R4 K2 ["Title"]
       38 DUPTABLE                         R5 K24 [{[1] = "Created", ["Title"], ["WidthScale"] = 0.13}]
       39 GETUPVAL                         R6 0
       40 LOADK                            R8 K8 ["Plugin"]
       41 LOADK                            R9 K25 ["ListView.DateCreated"]
       42 NAMECALL                         R6 R6 K10 ["getText"]
       44 CALL                             R6 3 1
       45 SETTABLEKS                       R6 R5 K2 ["Title"]
       47 DUPTABLE                         R6 K28 [{[1] = "Playability", ["Title"], ["WidthScale"] = 0.11}]
       48 GETUPVAL                         R7 0
       49 LOADK                            R9 K8 ["Plugin"]
       50 LOADK                            R10 K29 ["ListView.Playability"]
       51 NAMECALL                         R7 R7 K10 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K2 ["Title"]
       56 DUPTABLE                         R7 K31 [{[1] = "TeamCreate", ["Title"], ["WidthScale"] = 0.08}]
       57 GETUPVAL                         R8 0
       58 LOADK                            R10 K8 ["Plugin"]
       59 LOADK                            R11 K32 ["ListView.TeamCreate"]
       60 NAMECALL                         R8 R8 K10 ["getText"]
       62 CALL                             R8 3 1
       63 SETTABLEKS                       R8 R7 K2 ["Title"]
       65 SETLIST                          R0 R1 7 [1]
       67 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["RootPlaceId"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 LOADK                            R2 K1 ["Place_%*"]
        4 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
        6 NAMECALL                         R2 R2 K2 ["format"]
        8 CALL                             R2 2 1
        9 RETURN                           R2 1
       10 GETTABLEKS                       R3 R0 K3 ["FilePath"]
       12 JUMPIFNOT                        R3 ; [+7]
       13 LOADK                            R2 K4 ["File_%*"]
       14 GETTABLEKS                       R4 R0 K3 ["FilePath"]
       16 NAMECALL                         R2 R2 K2 ["format"]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1
       20 LOADK                            R2 K5 ["Row_%*"]
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K2 ["format"]
       24 CALL                             R2 2 1
       25 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["ImageUrl"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["ImageUrl"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K1 ["NoLoadableImage"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADB                            R1 0
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useContextMenuActions"]
       11 CALL                             R3 0 1
       12 MOVE                             R2 R3
       13 GETUPVAL                         R3 3
       14 LOADN                            R4 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 3
       17 LOADN                            R6 20
       18 CALL                             R5 1 2
       19 GETUPVAL                         R7 3
       20 DUPCLOSURE                       R8 K2 [PROTO_3]
       21 CALL                             R7 1 2
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R9 0 +1
       25 LOADB                            R9 1
       26 GETUPVAL                         R10 4
       27 GETIMPORT                        R11 K5 [Vector2.zero]
       29 CALL                             R10 1 1
       30 GETUPVAL                         R11 5
       31 NEWCLOSURE                       R12 P1
       32 CAPTURE                          VAL R8
       33 NEWTABLE                         R13 0 1
       35 MOVE                             R14 R8
       36 SETLIST                          R13 R14 1 [1]
       38 CALL                             R11 2 1
       39 GETUPVAL                         R12 3
       40 LOADN                            R13 0
       41 CALL                             R12 1 2
       42 GETUPVAL                         R14 6
       43 NEWCLOSURE                       R15 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R13
       46 NEWTABLE                         R16 0 1
       48 GETTABLEKS                       R17 R0 K6 ["TotalCount"]
       50 SETLIST                          R16 R17 1 [1]
       52 CALL                             R14 2 0
       53 GETTABLEKS                       R15 R0 K7 ["CanDisplayComponentAdjustQuery"]
       55 JUMPIFNOT                        R15 ; [+2]
       56 LOADB                            R14 1
       57 JUMP                             ; [+1]
       58 LOADB                            R14 0
       59 GETTABLEKS                       R16 R0 K8 ["Query"]
       61 JUMPIFNOT                        R16 ; [+5]
       62 GETTABLEKS                       R15 R0 K8 ["Query"]
       64 GETTABLEKS                       R15 R15 K9 ["search"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R15
       68 GETTABLEKS                       R17 R0 K8 ["Query"]
       70 JUMPIFNOT                        R17 ; [+5]
       71 GETTABLEKS                       R16 R0 K8 ["Query"]
       73 GETTABLEKS                       R16 R16 K10 ["sortParam"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R16
       77 GETTABLEKS                       R18 R0 K8 ["Query"]
       79 JUMPIFNOT                        R18 ; [+5]
       80 GETTABLEKS                       R17 R0 K8 ["Query"]
       82 GETTABLEKS                       R17 R17 K11 ["sortOrder"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R17
       86 GETUPVAL                         R18 6
       87 NEWCLOSURE                       R19 P3
       88 CAPTURE                          VAL R4
       89 NEWTABLE                         R20 0 3
       91 MOVE                             R21 R15
       92 MOVE                             R22 R16
       93 MOVE                             R23 R17
       94 SETLIST                          R20 R21 3 [1]
       96 CALL                             R18 2 0
       97 GETUPVAL                         R18 6
       98 NEWCLOSURE                       R19 P4
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R5
      103 NEWTABLE                         R20 0 3
      105 MOVE                             R21 R3
      106 MOVE                             R22 R5
      107 MOVE                             R23 R14
      108 SETLIST                          R20 R21 3 [1]
      110 CALL                             R18 2 0
      111 GETUPVAL                         R18 7
      112 GETUPVAL                         R19 8
      113 CALL                             R18 1 1
      114 GETUPVAL                         R19 9
      115 GETTABLEKS                       R19 R19 K12 ["getDialogManager"]
      117 CALL                             R19 0 1
      118 GETUPVAL                         R20 9
      119 GETTABLEKS                       R20 R20 K13 ["getActionsBridge"]
      121 CALL                             R20 0 1
      122 GETUPVAL                         R21 10
      123 NEWCLOSURE                       R22 P5
      124 CAPTURE                          VAL R0
      125 NEWTABLE                         R23 0 1
      127 GETTABLEKS                       R24 R0 K14 ["Cells"]
      129 SETLIST                          R23 R24 1 [1]
      131 CALL                             R21 2 1
      132 LOADNIL                          R22
      133 LOADNIL                          R23
      134 JUMPIFNOT                        R14 ; [+10]
      135 MOVE                             R22 R21
      136 GETTABLEKS                       R24 R0 K6 ["TotalCount"]
      138 JUMPIFEQKNIL                     R24 ; [+4]
      140 GETTABLEKS                       R23 R0 K6 ["TotalCount"]
      142 JUMP                             ; [+27]
      143 MOVE                             R23 R12
      144 JUMP                             ; [+25]
      145 LENGTH                           R23 R21
      146 NEWTABLE                         R22 0 0
      148 MUL                              R25 R3 R5
      149 ADDK                             R24 R25 K15 [1]
      150 ADDK                             R27 R3 K15 [1]
      151 MUL                              R26 R27 R5
      152 LENGTH                           R27 R21
      153 FASTCALL2                        MATH_MIN R26 R27 ; [+3]
      155 GETIMPORT                        R25 K18 [math.min]
      157 CALL                             R25 2 1
      158 MOVE                             R28 R24
      159 MOVE                             R26 R25
      160 LOADN                            R27 1
      161 FORNPREP                         R26
      162 GETTABLE                         R31 R21 R28
      163 FASTCALL2                        TABLE_INSERT R22 R31 ; [+4]
      165 MOVE                             R30 R22
      166 GETIMPORT                        R29 K21 [table.insert]
      168 CALL                             R29 2 0
      169 FORNLOOP                         R26
      170 GETUPVAL                         R24 5
      171 NEWCLOSURE                       R25 P6
      172 CAPTURE                          UPVAL U11
      173 CAPTURE                          UPVAL U12
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R1
      178 CAPTURE                          UPVAL U13
      179 NEWTABLE                         R26 0 4
      181 MOVE                             R27 R18
      182 MOVE                             R28 R19
      183 MOVE                             R29 R20
      184 MOVE                             R30 R1
      185 SETLIST                          R26 R27 4 [1]
      187 CALL                             R24 2 1
      188 LOADB                            R25 0
      189 LENGTH                           R26 R22
      190 JUMPIFNOTEQKN                    R26 K22 [0] ; [+11]
      192 LOADB                            R25 1
      193 GETTABLEKS                       R26 R0 K6 ["TotalCount"]
      195 JUMPIFEQKNIL                     R26 ; [+6]
      197 LOADN                            R26 0
      198 JUMPIFLT                         R26 R23 ; [+2]
      200 LOADB                            R25 0 +1
      201 LOADB                            R25 1
      202 GETUPVAL                         R26 10
      203 NEWCLOSURE                       R27 P7
      204 CAPTURE                          VAL R1
      205 NEWTABLE                         R28 0 1
      207 GETTABLEKS                       R29 R1 K23 ["locale"]
      209 SETLIST                          R28 R29 1 [1]
      211 CALL                             R26 2 1
      212 GETUPVAL                         R27 14
      213 GETTABLEKS                       R27 R27 K24 ["createElement"]
      215 GETUPVAL                         R28 15
      216 DUPTABLE                         R29 K39 [{["testId"] = "--start-page-ExperiencesListView", ["Columns"], ["Rows"], ["IsLoading"], ["ShimmerRowCount"], ["HasKebab"], ["RenderCellText"], ["GetRowKey"], ["GetRowIcon"], ["OnRowActivated"], ["OnRowOpenMenu"], ["Pagination"], ["Overlay"]}]
      217 SETTABLEKS                       R26 R29 K27 ["Columns"]
      219 SETTABLEKS                       R22 R29 K28 ["Rows"]
      221 SETTABLEKS                       R25 R29 K29 ["IsLoading"]
      223 LOADN                            R31 10
      224 FASTCALL2                        MATH_MIN R31 R5 ; [+4]
      226 MOVE                             R32 R5
      227 GETIMPORT                        R30 K18 [math.min]
      229 CALL                             R30 2 1
      230 SETTABLEKS                       R30 R29 K30 ["ShimmerRowCount"]
      232 GETUPVAL                         R31 1
      233 JUMPIFNOT                        R31 ; [+7]
      234 LENGTH                           R31 R2
      235 LOADN                            R32 0
      236 JUMPIFLT                         R32 R31 ; [+2]
      238 LOADB                            R30 0 +1
      239 LOADB                            R30 1
      240 JUMP                             ; [+1]
      241 LOADB                            R30 1
      242 SETTABLEKS                       R30 R29 K31 ["HasKebab"]
      244 NEWCLOSURE                       R30 P8
      245 CAPTURE                          UPVAL U16
      246 CAPTURE                          VAL R1
      247 SETTABLEKS                       R30 R29 K32 ["RenderCellText"]
      249 DUPCLOSURE                       R30 K40 [PROTO_12]
      250 SETTABLEKS                       R30 R29 K33 ["GetRowKey"]
      252 DUPCLOSURE                       R30 K41 [PROTO_13]
      253 SETTABLEKS                       R30 R29 K34 ["GetRowIcon"]
      255 NEWCLOSURE                       R30 P11
      256 CAPTURE                          VAL R24
      257 SETTABLEKS                       R30 R29 K35 ["OnRowActivated"]
      259 NEWCLOSURE                       R30 P12
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R8
      262 SETTABLEKS                       R30 R29 K36 ["OnRowOpenMenu"]
      264 JUMPIFNOT                        R25 ; [+2]
      265 LOADNIL                          R30
      266 JUMP                             ; [+16]
      267 DUPTABLE                         R30 K47 [{"pageIndex", "pageSize", "totalCount", "onPageChange", "onPageSizeChange"}]
      268 SETTABLEKS                       R3 R30 K42 ["pageIndex"]
      270 SETTABLEKS                       R5 R30 K43 ["pageSize"]
      272 SETTABLEKS                       R23 R30 K44 ["totalCount"]
      274 NEWCLOSURE                       R31 P13
      275 CAPTURE                          VAL R4
      276 SETTABLEKS                       R31 R30 K45 ["onPageChange"]
      278 NEWCLOSURE                       R31 P14
      279 CAPTURE                          VAL R6
      280 CAPTURE                          VAL R4
      281 SETTABLEKS                       R31 R30 K46 ["onPageSizeChange"]
      283 SETTABLEKS                       R30 R29 K37 ["Pagination"]
      285 JUMPIFNOT                        R9 ; [+17]
      286 GETUPVAL                         R30 14
      287 GETTABLEKS                       R30 R30 K24 ["createElement"]
      289 GETUPVAL                         R31 17
      290 DUPTABLE                         R32 K53 [{"cell", "isOpen", "onClose", "onItemActivated", "anchorRef"}]
      291 SETTABLEKS                       R7 R32 K48 ["cell"]
      293 SETTABLEKS                       R9 R32 K49 ["isOpen"]
      295 SETTABLEKS                       R11 R32 K50 ["onClose"]
      297 SETTABLEKS                       R11 R32 K51 ["onItemActivated"]
      299 SETTABLEKS                       R10 R32 K52 ["anchorRef"]
      301 CALL                             R30 2 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R30
      304 SETTABLEKS                       R30 R29 K38 ["Overlay"]
      306 CALL                             R27 2 -1
      307 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useMemo"]
       20 GETTABLEKS                       R5 R1 K11 ["useCallback"]
       22 GETTABLEKS                       R6 R1 K12 ["useContext"]
       24 GETIMPORT                        R7 K5 [require]
       26 GETTABLEKS                       R8 R0 K6 ["Packages"]
       28 GETTABLEKS                       R8 R8 K13 ["Framework"]
       30 CALL                             R7 1 1
       31 GETTABLEKS                       R8 R7 K14 ["ContextServices"]
       33 GETTABLEKS                       R8 R8 K15 ["Localization"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R0 K16 ["Src"]
       39 GETTABLEKS                       R10 R10 K17 ["Util"]
       41 GETTABLEKS                       R10 R10 K18 ["Foundation"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R9 K19 ["Hooks"]
       46 GETTABLEKS                       R10 R10 K20 ["useMeasurableRef"]
       48 GETIMPORT                        R11 K5 [require]
       50 GETTABLEKS                       R12 R0 K16 ["Src"]
       52 GETTABLEKS                       R12 R12 K17 ["Util"]
       54 GETTABLEKS                       R12 R12 K21 ["Services"]
       56 CALL                             R11 1 1
       57 GETTABLEKS                       R12 R11 K22 ["StartPageManager"]
       59 GETTABLEKS                       R13 R11 K23 ["StudioService"]
       61 GETIMPORT                        R14 K5 [require]
       63 GETTABLEKS                       R15 R0 K16 ["Src"]
       65 GETTABLEKS                       R15 R15 K17 ["Util"]
       67 GETTABLEKS                       R15 R15 K24 ["Dialogs"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K5 [require]
       72 GETTABLEKS                       R16 R0 K16 ["Src"]
       74 GETTABLEKS                       R16 R16 K25 ["Network"]
       76 GETTABLEKS                       R16 R16 K26 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K5 [require]
       81 GETTABLEKS                       R17 R0 K16 ["Src"]
       83 GETTABLEKS                       R17 R17 K18 ["Foundation"]
       85 GETTABLEKS                       R17 R17 K27 ["Components"]
       87 GETTABLEKS                       R17 R17 K28 ["ContextMenu"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R0 K16 ["Src"]
       94 GETTABLEKS                       R18 R18 K29 ["Contexts"]
       96 GETTABLEKS                       R18 R18 K30 ["ContextMenuActions"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R19 R0 K16 ["Src"]
      103 GETTABLEKS                       R19 R19 K19 ["Hooks"]
      105 GETTABLEKS                       R19 R19 K31 ["useCellContextActions"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R20 R0 K16 ["Src"]
      112 GETTABLEKS                       R20 R20 K27 ["Components"]
      114 GETTABLEKS                       R20 R20 K32 ["DataTable"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K5 [require]
      119 GETTABLEKS                       R21 R0 K16 ["Src"]
      121 GETTABLEKS                       R21 R21 K17 ["Util"]
      123 GETTABLEKS                       R21 R21 K33 ["formatISOTimestamp"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R22 R0 K16 ["Src"]
      130 GETTABLEKS                       R22 R22 K17 ["Util"]
      132 GETTABLEKS                       R22 R22 K34 ["getEnrichedPlayabilityValue"]
      134 CALL                             R21 1 1
      135 GETIMPORT                        R22 K5 [require]
      137 GETTABLEKS                       R23 R0 K16 ["Src"]
      139 GETTABLEKS                       R23 R23 K35 ["SharedFlags"]
      141 GETTABLEKS                       R23 R23 K36 ["getFFlagLuaStartPageAddKebabMenuToListView"]
      143 CALL                             R22 1 1
      144 CALL                             R22 0 1
      145 GETIMPORT                        R23 K5 [require]
      147 GETTABLEKS                       R24 R0 K16 ["Src"]
      149 GETTABLEKS                       R24 R24 K37 ["Types"]
      151 CALL                             R23 1 1
      152 DUPCLOSURE                       R24 K38 [PROTO_0]
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R21
      155 DUPCLOSURE                       R25 K39 [PROTO_2]
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R16
      161 DUPCLOSURE                       R26 K40 [PROTO_18]
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R25
      180 RETURN                           R26 1
