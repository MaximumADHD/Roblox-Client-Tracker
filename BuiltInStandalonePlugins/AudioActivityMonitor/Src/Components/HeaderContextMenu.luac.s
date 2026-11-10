PROTO_0:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 LOADK                            R4 K2 ["^col_"]
        6 NAMECALL                         R2 R1 K3 ["find"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+15]
       10 LOADN                            R5 5
       11 NAMECALL                         R3 R1 K4 ["sub"]
       13 CALL                             R3 2 -1
       14 FASTCALL                         TONUMBER ; [+2]
       15 GETIMPORT                        R2 K6 [tonumber]
       17 CALL                             R2 -1 1
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["toggleColumnVisibility"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 LOADK                            R4 K8 ["^met_"]
       26 NAMECALL                         R2 R1 K3 ["find"]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+13]
       30 LOADN                            R4 5
       31 NAMECALL                         R2 R1 K4 ["sub"]
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K9 ["setMeteringMode"]
       37 MOVE                             R4 R2
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K10 ["closeContextMenu"]
       42 CALL                             R3 0 0
       43 JUMPIFNOTEQKS                    R1 K11 ["reset"] ; [+17]
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K12 ["restoreDefaults"]
       48 CALL                             R2 0 0
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K13 ["reloadColumnsFromSettings"]
       52 CALL                             R2 0 0
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K14 ["reloadMeteringModeFromSettings"]
       56 CALL                             R2 0 0
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K10 ["closeContextMenu"]
       60 CALL                             R2 0 0
       61 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["RowData"]
        9 GETTABLEKS                       R3 R0 K3 ["TableState"]
       11 GETTABLEKS                       R4 R3 K4 ["isContextMenuOpen"]
       13 JUMPIF                           R4 ; [+8]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K5 ["createElement"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["Fragment"]
       20 CALL                             R4 1 -1
       21 RETURN                           R4 -1
       22 NEWTABLE                         R4 0 0
       24 GETTABLEKS                       R5 R3 K7 ["contextMenuShowsMeteringOptions"]
       26 JUMPIFNOT                        R5 ; [+55]
       27 NEWTABLE                         R5 0 0
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K8 ["MeteringModes"]
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 DUPTABLE                         R13 K12 [{"id", "text", "isChecked"}]
       36 LOADK                            R15 K13 ["met_"]
       37 MOVE                             R16 R10
       38 CONCAT                           R14 R15 R16
       39 SETTABLEKS                       R14 R13 K9 ["id"]
       41 LOADK                            R16 K14 ["ContextMenu"]
       42 LOADK                            R18 K15 ["MeteringMode"]
       43 MOVE                             R19 R10
       44 CONCAT                           R17 R18 R19
       45 NAMECALL                         R14 R1 K16 ["getText"]
       47 CALL                             R14 3 1
       48 SETTABLEKS                       R14 R13 K10 ["text"]
       50 GETTABLEKS                       R15 R2 K17 ["meteringMode"]
       52 JUMPIFEQ                         R15 R10 ; [+2]
       54 LOADB                            R14 0 +1
       55 LOADB                            R14 1
       56 SETTABLEKS                       R14 R13 K11 ["isChecked"]
       58 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       60 MOVE                             R12 R5
       61 GETIMPORT                        R11 K20 [table.insert]
       63 CALL                             R11 2 0
       64 FORGLOOP                         R6 2 ; [-30]
       66 DUPTABLE                         R8 K23 [{"title", "items"}]
       67 LOADK                            R11 K14 ["ContextMenu"]
       68 LOADK                            R12 K24 ["MeteringModeHeader"]
       69 NAMECALL                         R9 R1 K16 ["getText"]
       71 CALL                             R9 3 1
       72 SETTABLEKS                       R9 R8 K21 ["title"]
       74 SETTABLEKS                       R5 R8 K22 ["items"]
       76 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
       78 MOVE                             R7 R4
       79 GETIMPORT                        R6 K20 [table.insert]
       81 CALL                             R6 2 0
       82 GETTABLEKS                       R5 R3 K25 ["contextMenuShowsColumnList"]
       84 JUMPIFNOT                        R5 ; [+49]
       85 NEWTABLE                         R5 0 0
       87 GETTABLEKS                       R6 R2 K26 ["columnDefinitions"]
       89 LOADNIL                          R7
       90 LOADNIL                          R8
       91 FORGPREP                         R6
       92 DUPTABLE                         R11 K12 [{"id", "text", "isChecked"}]
       93 LOADK                            R13 K27 ["col_"]
       94 FASTCALL1                        TOSTRING R9 ; [+3]
       95 MOVE                             R15 R9
       96 GETIMPORT                        R14 K29 [tostring]
       98 CALL                             R14 1 1
       99 CONCAT                           R12 R13 R14
      100 SETTABLEKS                       R12 R11 K9 ["id"]
      102 LOADK                            R14 K30 ["Column"]
      103 GETTABLEKS                       R15 R10 K31 ["name"]
      105 NAMECALL                         R12 R1 K16 ["getText"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K10 ["text"]
      110 GETTABLEKS                       R13 R3 K32 ["columnVisibilities"]
      112 GETTABLE                         R12 R13 R9
      113 SETTABLEKS                       R12 R11 K11 ["isChecked"]
      115 SETTABLE                         R11 R5 R9
      116 FORGLOOP                         R6 2 ; [-25]
      118 DUPTABLE                         R8 K23 [{"title", "items"}]
      119 LOADK                            R11 K14 ["ContextMenu"]
      120 LOADK                            R12 K33 ["ShowHideHeader"]
      121 NAMECALL                         R9 R1 K16 ["getText"]
      123 CALL                             R9 3 1
      124 SETTABLEKS                       R9 R8 K21 ["title"]
      126 SETTABLEKS                       R5 R8 K22 ["items"]
      128 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      130 MOVE                             R7 R4
      131 GETIMPORT                        R6 K20 [table.insert]
      133 CALL                             R6 2 0
      134 DUPTABLE                         R7 K23 [{"title", "items"}]
      135 LOADK                            R10 K14 ["ContextMenu"]
      136 LOADK                            R11 K34 ["SettingsHeader"]
      137 NAMECALL                         R8 R1 K16 ["getText"]
      139 CALL                             R8 3 1
      140 SETTABLEKS                       R8 R7 K21 ["title"]
      142 NEWTABLE                         R8 0 1
      144 DUPTABLE                         R9 K36 [{["id"] = "reset", ["text"]}]
      145 LOADK                            R12 K14 ["ContextMenu"]
      146 LOADK                            R13 K37 ["ResetSettings"]
      147 NAMECALL                         R10 R1 K16 ["getText"]
      149 CALL                             R10 3 1
      150 SETTABLEKS                       R10 R9 K10 ["text"]
      152 SETLIST                          R8 R9 1 [1]
      154 SETTABLEKS                       R8 R7 K22 ["items"]
      156 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      158 MOVE                             R6 R4
      159 GETIMPORT                        R5 K20 [table.insert]
      161 CALL                             R5 2 0
      162 NEWCLOSURE                       R5 P0
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R2
      165 CAPTURE                          UPVAL U3
      166 GETTABLEKS                       R6 R3 K38 ["contextMenuPosition"]
      168 GETUPVAL                         R7 0
      169 GETTABLEKS                       R7 R7 K5 ["createElement"]
      171 GETUPVAL                         R8 4
      172 DUPTABLE                         R9 K40 [{"Position"}]
      173 GETIMPORT                        R10 K43 [UDim2.fromOffset]
      175 GETTABLEKS                       R12 R6 K45 ["X"]
      177 ADDK                             R11 R12 K44 [1]
      178 GETTABLEKS                       R13 R6 K46 ["Y"]
      180 ADDK                             R12 R13 K44 [1]
      181 CALL                             R10 2 1
      182 SETTABLEKS                       R10 R9 K39 ["Position"]
      184 DUPTABLE                         R10 K48 [{"Menu"}]
      185 GETUPVAL                         R11 0
      186 GETTABLEKS                       R11 R11 K5 ["createElement"]
      188 GETUPVAL                         R12 5
      189 DUPTABLE                         R13 K55 [{["isOpen"] = True, ["items"], ["maxHeight"], ["size"], ["onActivated"], ["onPressedOutside"]}]
      190 SETTABLEKS                       R4 R13 K22 ["items"]
      192 LOADN                            R15 300
      193 GETTABLEKS                       R16 R3 K56 ["viewportHeight"]
      195 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      197 GETIMPORT                        R14 K59 [math.min]
      199 CALL                             R14 2 1
      200 SETTABLEKS                       R14 R13 K51 ["maxHeight"]
      202 GETUPVAL                         R14 6
      203 GETTABLEKS                       R14 R14 K60 ["Enums"]
      205 GETTABLEKS                       R14 R14 K61 ["InputSize"]
      207 GETTABLEKS                       R14 R14 K62 ["XSmall"]
      209 SETTABLEKS                       R14 R13 K52 ["size"]
      211 SETTABLEKS                       R5 R13 K53 ["onActivated"]
      213 GETTABLEKS                       R14 R3 K63 ["closeContextMenu"]
      215 SETTABLEKS                       R14 R13 K54 ["onPressedOutside"]
      217 CALL                             R11 2 1
      218 SETTABLEKS                       R11 R10 K47 ["Menu"]
      220 CALL                             R7 3 -1
      221 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Menu"]
       30 GETTABLEKS                       R5 R3 K12 ["View"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R7 R7 K13 ["StudioFoundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K14 ["Contexts"]
       41 GETTABLEKS                       R7 R7 K15 ["Localization"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K8 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Util"]
       49 GETTABLEKS                       R9 R9 K17 ["SettingsUtil"]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K18 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 RETURN                           R9 1
