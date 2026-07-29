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
        2 JUMPIFNOT                        R1 ; [+43]
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+2]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+29]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 NAMECALL                         R2 R2 K1 ["GetUserId"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K2 ["Id"]
       14 GETTABLEKS                       R4 R0 K0 ["RootPlaceId"]
       16 GETTABLEKS                       R5 R0 K0 ["RootPlaceId"]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K3 ["showVerifyAge"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K4 ["showAgeRestricted"]
       24 GETTABLEKS                       R9 R0 K5 ["IsTeamCreateEnabled"]
       26 JUMPIFEQKB                       R9 TRUE ; [+2]
       28 LOADB                            R8 0 +1
       29 LOADB                            R8 1
       30 GETUPVAL                         R9 5
       31 GETUPVAL                         R10 6
       32 GETUPVAL                         R11 7
       33 LOADB                            R12 0
       34 CALL                             R1 11 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 8
       37 GETTABLEKS                       R3 R0 K0 ["RootPlaceId"]
       39 GETTABLEKS                       R4 R0 K2 ["Id"]
       41 LOADB                            R5 0
       42 NAMECALL                         R1 R1 K6 ["openPlace"]
       44 CALL                             R1 4 0
       45 RETURN                           R0 0
       46 GETTABLEKS                       R1 R0 K7 ["FilePath"]
       48 JUMPIFNOT                        R1 ; [+7]
       49 GETUPVAL                         R1 8
       50 GETTABLEKS                       R3 R0 K7 ["FilePath"]
       52 LOADB                            R4 0
       53 NAMECALL                         R1 R1 K8 ["openLocalFile"]
       55 CALL                             R1 3 0
       56 RETURN                           R0 0

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
        2 JUMPIFNOT                        R3 ; [+8]
        3 LOADK                            R3 K1 ["Place_%*"]
        4 GETTABLEKS                       R5 R0 K0 ["RootPlaceId"]
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R0 K3 ["FilePath"]
       13 JUMPIFNOT                        R3 ; [+8]
       14 LOADK                            R3 K4 ["File_%*"]
       15 GETTABLEKS                       R5 R0 K3 ["FilePath"]
       17 NAMECALL                         R3 R3 K2 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 RETURN                           R2 1
       22 LOADK                            R3 K5 ["Row_%*"]
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R3 K2 ["format"]
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 RETURN                           R2 1

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
        4 GETUPVAL                         R2 1
        5 LOADN                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 LOADN                            R5 20
        9 CALL                             R4 1 2
       10 GETUPVAL                         R6 1
       11 DUPCLOSURE                       R7 K1 [PROTO_3]
       12 CALL                             R6 1 2
       13 JUMPIFNOTEQKNIL                  R6 ; [+2]
       15 LOADB                            R8 0 +1
       16 LOADB                            R8 1
       17 GETUPVAL                         R9 2
       18 GETIMPORT                        R10 K4 [Vector2.zero]
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 3
       22 NEWCLOSURE                       R11 P1
       23 CAPTURE                          VAL R7
       24 NEWTABLE                         R12 0 1
       26 MOVE                             R13 R7
       27 SETLIST                          R12 R13 1 [1]
       29 CALL                             R10 2 1
       30 GETUPVAL                         R11 1
       31 LOADN                            R12 0
       32 CALL                             R11 1 2
       33 GETUPVAL                         R13 4
       34 NEWCLOSURE                       R14 P2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R12
       37 NEWTABLE                         R15 0 1
       39 GETTABLEKS                       R16 R0 K5 ["TotalCount"]
       41 SETLIST                          R15 R16 1 [1]
       43 CALL                             R13 2 0
       44 GETTABLEKS                       R14 R0 K6 ["CanDisplayComponentAdjustQuery"]
       46 JUMPIFNOT                        R14 ; [+2]
       47 LOADB                            R13 1
       48 JUMP                             ; [+1]
       49 LOADB                            R13 0
       50 GETTABLEKS                       R15 R0 K7 ["Query"]
       52 JUMPIFNOT                        R15 ; [+5]
       53 GETTABLEKS                       R14 R0 K7 ["Query"]
       55 GETTABLEKS                       R14 R14 K8 ["search"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R14
       59 GETTABLEKS                       R16 R0 K7 ["Query"]
       61 JUMPIFNOT                        R16 ; [+5]
       62 GETTABLEKS                       R15 R0 K7 ["Query"]
       64 GETTABLEKS                       R15 R15 K9 ["sortParam"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R15
       68 GETTABLEKS                       R17 R0 K7 ["Query"]
       70 JUMPIFNOT                        R17 ; [+5]
       71 GETTABLEKS                       R16 R0 K7 ["Query"]
       73 GETTABLEKS                       R16 R16 K10 ["sortOrder"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R16
       77 GETUPVAL                         R17 4
       78 NEWCLOSURE                       R18 P3
       79 CAPTURE                          VAL R3
       80 NEWTABLE                         R19 0 3
       82 MOVE                             R20 R14
       83 MOVE                             R21 R15
       84 MOVE                             R22 R16
       85 SETLIST                          R19 R20 3 [1]
       87 CALL                             R17 2 0
       88 GETUPVAL                         R17 4
       89 NEWCLOSURE                       R18 P4
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R4
       94 NEWTABLE                         R19 0 3
       96 MOVE                             R20 R2
       97 MOVE                             R21 R4
       98 MOVE                             R22 R13
       99 SETLIST                          R19 R20 3 [1]
      101 CALL                             R17 2 0
      102 LOADNIL                          R17
      103 LOADNIL                          R18
      104 LOADNIL                          R19
      105 GETUPVAL                         R20 5
      106 JUMPIF                           R20 ; [+2]
      107 GETUPVAL                         R20 6
      108 JUMPIFNOT                        R20 ; [+14]
      109 GETUPVAL                         R20 7
      110 GETUPVAL                         R21 8
      111 CALL                             R20 1 1
      112 MOVE                             R17 R20
      113 GETUPVAL                         R20 9
      114 GETTABLEKS                       R20 R20 K11 ["getDialogManager"]
      116 CALL                             R20 0 1
      117 MOVE                             R18 R20
      118 GETUPVAL                         R20 9
      119 GETTABLEKS                       R20 R20 K12 ["getActionsBridge"]
      121 CALL                             R20 0 1
      122 MOVE                             R19 R20
      123 GETUPVAL                         R20 10
      124 NEWCLOSURE                       R21 P5
      125 CAPTURE                          VAL R0
      126 NEWTABLE                         R22 0 1
      128 GETTABLEKS                       R23 R0 K13 ["Cells"]
      130 SETLIST                          R22 R23 1 [1]
      132 CALL                             R20 2 1
      133 LOADNIL                          R21
      134 LOADNIL                          R22
      135 JUMPIFNOT                        R13 ; [+10]
      136 MOVE                             R21 R20
      137 GETTABLEKS                       R23 R0 K5 ["TotalCount"]
      139 JUMPIFEQKNIL                     R23 ; [+4]
      141 GETTABLEKS                       R22 R0 K5 ["TotalCount"]
      143 JUMP                             ; [+27]
      144 MOVE                             R22 R11
      145 JUMP                             ; [+25]
      146 LENGTH                           R22 R20
      147 NEWTABLE                         R21 0 0
      149 MUL                              R24 R2 R4
      150 ADDK                             R23 R24 K14 [1]
      151 ADDK                             R26 R2 K14 [1]
      152 MUL                              R25 R26 R4
      153 LENGTH                           R26 R20
      154 FASTCALL2                        MATH_MIN R25 R26 ; [+3]
      156 GETIMPORT                        R24 K17 [math.min]
      158 CALL                             R24 2 1
      159 MOVE                             R27 R23
      160 MOVE                             R25 R24
      161 LOADN                            R26 1
      162 FORNPREP                         R25
      163 GETTABLE                         R30 R20 R27
      164 FASTCALL2                        TABLE_INSERT R21 R30 ; [+4]
      166 MOVE                             R29 R21
      167 GETIMPORT                        R28 K20 [table.insert]
      169 CALL                             R28 2 0
      170 FORNLOOP                         R25
      171 GETUPVAL                         R23 3
      172 NEWCLOSURE                       R24 P6
      173 CAPTURE                          UPVAL U5
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          UPVAL U11
      176 CAPTURE                          UPVAL U12
      177 CAPTURE                          REF R17
      178 CAPTURE                          REF R19
      179 CAPTURE                          REF R18
      180 CAPTURE                          VAL R1
      181 CAPTURE                          UPVAL U13
      182 NEWTABLE                         R25 0 4
      184 MOVE                             R26 R17
      185 MOVE                             R27 R18
      186 MOVE                             R28 R19
      187 MOVE                             R29 R1
      188 SETLIST                          R25 R26 4 [1]
      190 CALL                             R23 2 1
      191 LOADB                            R24 0
      192 LENGTH                           R25 R21
      193 JUMPIFNOTEQKN                    R25 K21 [0] ; [+11]
      195 LOADB                            R24 1
      196 GETTABLEKS                       R25 R0 K5 ["TotalCount"]
      198 JUMPIFEQKNIL                     R25 ; [+6]
      200 LOADN                            R25 0
      201 JUMPIFLT                         R25 R22 ; [+2]
      203 LOADB                            R24 0 +1
      204 LOADB                            R24 1
      205 GETUPVAL                         R25 10
      206 NEWCLOSURE                       R26 P7
      207 CAPTURE                          VAL R1
      208 NEWTABLE                         R27 0 1
      210 GETTABLEKS                       R28 R1 K22 ["locale"]
      212 SETLIST                          R27 R28 1 [1]
      214 CALL                             R25 2 1
      215 GETUPVAL                         R26 14
      216 GETTABLEKS                       R26 R26 K23 ["createElement"]
      218 GETUPVAL                         R27 15
      219 DUPTABLE                         R28 K39 [{["testId"] = "--start-page-ExperiencesListView", ["Columns"], ["Rows"], ["IsLoading"], ["ShimmerRowCount"], ["HasKebab"] = True, ["RenderCellText"], ["GetRowKey"], ["GetRowIcon"], ["OnRowActivated"], ["OnRowOpenMenu"], ["Pagination"], ["Overlay"]}]
      220 SETTABLEKS                       R25 R28 K26 ["Columns"]
      222 SETTABLEKS                       R21 R28 K27 ["Rows"]
      224 SETTABLEKS                       R24 R28 K28 ["IsLoading"]
      226 LOADN                            R30 10
      227 FASTCALL2                        MATH_MIN R30 R4 ; [+4]
      229 MOVE                             R31 R4
      230 GETIMPORT                        R29 K17 [math.min]
      232 CALL                             R29 2 1
      233 SETTABLEKS                       R29 R28 K29 ["ShimmerRowCount"]
      235 NEWCLOSURE                       R29 P8
      236 CAPTURE                          UPVAL U16
      237 CAPTURE                          VAL R1
      238 SETTABLEKS                       R29 R28 K32 ["RenderCellText"]
      240 DUPCLOSURE                       R29 K40 [PROTO_12]
      241 SETTABLEKS                       R29 R28 K33 ["GetRowKey"]
      243 DUPCLOSURE                       R29 K41 [PROTO_13]
      244 SETTABLEKS                       R29 R28 K34 ["GetRowIcon"]
      246 NEWCLOSURE                       R29 P11
      247 CAPTURE                          VAL R23
      248 SETTABLEKS                       R29 R28 K35 ["OnRowActivated"]
      250 NEWCLOSURE                       R29 P12
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R7
      253 SETTABLEKS                       R29 R28 K36 ["OnRowOpenMenu"]
      255 JUMPIFNOT                        R24 ; [+2]
      256 LOADNIL                          R29
      257 JUMP                             ; [+16]
      258 DUPTABLE                         R29 K47 [{"pageIndex", "pageSize", "totalCount", "onPageChange", "onPageSizeChange"}]
      259 SETTABLEKS                       R2 R29 K42 ["pageIndex"]
      261 SETTABLEKS                       R4 R29 K43 ["pageSize"]
      263 SETTABLEKS                       R22 R29 K44 ["totalCount"]
      265 NEWCLOSURE                       R30 P13
      266 CAPTURE                          VAL R3
      267 SETTABLEKS                       R30 R29 K45 ["onPageChange"]
      269 NEWCLOSURE                       R30 P14
      270 CAPTURE                          VAL R5
      271 CAPTURE                          VAL R3
      272 SETTABLEKS                       R30 R29 K46 ["onPageSizeChange"]
      274 SETTABLEKS                       R29 R28 K37 ["Pagination"]
      276 JUMPIFNOT                        R8 ; [+17]
      277 GETUPVAL                         R29 14
      278 GETTABLEKS                       R29 R29 K23 ["createElement"]
      280 GETUPVAL                         R30 17
      281 DUPTABLE                         R31 K53 [{"cell", "isOpen", "onClose", "onItemActivated", "anchorRef"}]
      282 SETTABLEKS                       R6 R31 K48 ["cell"]
      284 SETTABLEKS                       R8 R31 K49 ["isOpen"]
      286 SETTABLEKS                       R10 R31 K50 ["onClose"]
      288 SETTABLEKS                       R10 R31 K51 ["onItemActivated"]
      290 SETTABLEKS                       R9 R31 K52 ["anchorRef"]
      292 CALL                             R29 2 1
      293 JUMP                             ; [+1]
      294 LOADNIL                          R29
      295 SETTABLEKS                       R29 R28 K38 ["Overlay"]
      297 CALL                             R26 2 -1
      298 CLOSEUPVALS                      R17
      299 RETURN                           R26 -1

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
      141 GETTABLEKS                       R23 R23 K36 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      143 CALL                             R22 1 1
      144 CALL                             R22 0 1
      145 GETIMPORT                        R23 K5 [require]
      147 GETTABLEKS                       R24 R0 K16 ["Src"]
      149 GETTABLEKS                       R24 R24 K35 ["SharedFlags"]
      151 GETTABLEKS                       R24 R24 K37 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      153 CALL                             R23 1 1
      154 CALL                             R23 0 1
      155 GETIMPORT                        R24 K5 [require]
      157 GETTABLEKS                       R25 R0 K16 ["Src"]
      159 GETTABLEKS                       R25 R25 K38 ["Types"]
      161 CALL                             R24 1 1
      162 DUPCLOSURE                       R25 K39 [PROTO_0]
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R21
      165 DUPCLOSURE                       R26 K40 [PROTO_2]
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R16
      171 DUPCLOSURE                       R27 K41 [PROTO_18]
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R26
      190 RETURN                           R27 1
