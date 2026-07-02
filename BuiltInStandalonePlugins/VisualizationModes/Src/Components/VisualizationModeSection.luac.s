PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["Category_%s_IsExpanded"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["enabled"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R4 R0 K1 ["SettingKey"]
        7 GETIMPORT                        R5 K4 [string.format]
        9 LOADK                            R6 K5 ["Category_%s_IsExpanded"]
       10 MOVE                             R7 R4
       11 CALL                             R5 2 1
       12 MOVE                             R3 R5
       13 GETTABLEKS                       R4 R0 K6 ["DefaultIsExpanded"]
       15 CALL                             R2 2 2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K7 ["useToggleState"]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K8 ["useEffect"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R7 0 1
       29 GETTABLEKS                       R8 R4 K9 ["enabled"]
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 0
       34 GETTABLEKS                       R5 R4 K9 ["enabled"]
       36 JUMPIF                           R5 ; [+2]
       37 GETTABLEKS                       R5 R0 K10 ["ForceExpansion"]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K11 ["createElement"]
       42 LOADK                            R7 K12 ["ImageButton"]
       43 NEWTABLE                         R8 4 0
       45 GETTABLEKS                       R9 R0 K13 ["Visible"]
       47 SETTABLEKS                       R9 R8 K13 ["Visible"]
       49 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       51 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R9 R9 K15 ["Tag"]
       56 LOADK                            R10 K16 ["VisualizationModes-Group"]
       57 SETTABLE                         R10 R8 R9
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R9 R9 K17 ["Event"]
       61 GETTABLEKS                       R9 R9 K18 ["Activated"]
       63 GETTABLEKS                       R10 R4 K19 ["toggle"]
       65 SETTABLE                         R10 R8 R9
       66 DUPTABLE                         R9 K21 [{"Contents"}]
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R10 R10 K11 ["createElement"]
       70 GETUPVAL                         R11 4
       71 NEWTABLE                         R12 2 0
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K15 ["Tag"]
       76 LOADK                            R14 K22 ["X-Column X-Top X-FitY X-Left"]
       77 SETTABLE                         R14 R12 R13
       78 GETIMPORT                        R13 K25 [UDim2.fromScale]
       80 LOADN                            R14 1
       81 LOADN                            R15 0
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K26 ["Size"]
       85 DUPTABLE                         R13 K28 [{"Main"}]
       86 GETUPVAL                         R14 3
       87 GETTABLEKS                       R14 R14 K11 ["createElement"]
       89 GETUPVAL                         R15 4
       90 NEWTABLE                         R16 2 0
       92 GETUPVAL                         R17 3
       93 GETTABLEKS                       R17 R17 K15 ["Tag"]
       95 LOADK                            R18 K29 ["X-Column X-Top X-Fit"]
       96 SETTABLE                         R18 R16 R17
       97 GETIMPORT                        R17 K25 [UDim2.fromScale]
       99 LOADN                            R18 1
      100 LOADN                            R19 0
      101 CALL                             R17 2 1
      102 SETTABLEKS                       R17 R16 K26 ["Size"]
      104 DUPTABLE                         R17 K32 [{"Title", "Content"}]
      105 GETUPVAL                         R18 3
      106 GETTABLEKS                       R18 R18 K11 ["createElement"]
      108 GETUPVAL                         R19 5
      109 DUPTABLE                         R20 K44 [{["LayoutOrder"], ["Enabled"], ["BadgeText"], ["MatchIndexes"], ["CanExpand"] = True, ["IsExpanded"], ["OnToggle"], ["CanToggle"], ["IsEditingEnabled"], ["OnExpansionToggled"], ["Text"]}]
      110 NAMECALL                         R21 R1 K45 ["getNextOrder"]
      112 CALL                             R21 1 1
      113 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      115 GETTABLEKS                       R21 R0 K33 ["Enabled"]
      117 SETTABLEKS                       R21 R20 K33 ["Enabled"]
      119 JUMPIF                           R5 ; [+12]
      120 GETTABLEKS                       R22 R0 K46 ["EnabledEntryCount"]
      122 LOADN                            R23 0
      123 JUMPIFNOTLT                      R23 R22 ; [+8]
      125 GETTABLEKS                       R22 R0 K46 ["EnabledEntryCount"]
      127 FASTCALL1                        TOSTRING R22 ; [+2]
      128 GETIMPORT                        R21 K48 [tostring]
      130 CALL                             R21 1 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R21
      133 SETTABLEKS                       R21 R20 K34 ["BadgeText"]
      135 GETTABLEKS                       R21 R0 K35 ["MatchIndexes"]
      137 SETTABLEKS                       R21 R20 K35 ["MatchIndexes"]
      139 SETTABLEKS                       R5 R20 K38 ["IsExpanded"]
      141 GETTABLEKS                       R21 R0 K39 ["OnToggle"]
      143 SETTABLEKS                       R21 R20 K39 ["OnToggle"]
      145 GETTABLEKS                       R21 R0 K40 ["CanToggle"]
      147 SETTABLEKS                       R21 R20 K40 ["CanToggle"]
      149 GETTABLEKS                       R21 R0 K41 ["IsEditingEnabled"]
      151 SETTABLEKS                       R21 R20 K41 ["IsEditingEnabled"]
      153 GETTABLEKS                       R21 R4 K19 ["toggle"]
      155 SETTABLEKS                       R21 R20 K42 ["OnExpansionToggled"]
      157 GETTABLEKS                       R21 R0 K43 ["Text"]
      159 SETTABLEKS                       R21 R20 K43 ["Text"]
      161 CALL                             R18 2 1
      162 SETTABLEKS                       R18 R17 K30 ["Title"]
      164 GETUPVAL                         R18 3
      165 GETTABLEKS                       R18 R18 K11 ["createElement"]
      167 GETUPVAL                         R19 4
      168 NEWTABLE                         R20 4 0
      170 GETUPVAL                         R21 3
      171 GETTABLEKS                       R21 R21 K15 ["Tag"]
      173 LOADK                            R22 K49 ["X-Column X-Top X-FitY"]
      174 SETTABLE                         R22 R20 R21
      175 GETIMPORT                        R21 K25 [UDim2.fromScale]
      177 LOADN                            R22 1
      178 LOADN                            R23 0
      179 CALL                             R21 2 1
      180 SETTABLEKS                       R21 R20 K26 ["Size"]
      182 NAMECALL                         R21 R1 K45 ["getNextOrder"]
      184 CALL                             R21 1 1
      185 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      187 SETTABLEKS                       R5 R20 K13 ["Visible"]
      189 GETTABLEKS                       R21 R0 K50 ["SectionEntries"]
      191 CALL                             R18 3 1
      192 SETTABLEKS                       R18 R17 K31 ["Content"]
      194 CALL                             R14 3 1
      195 SETTABLEKS                       R14 R13 K27 ["Main"]
      197 CALL                             R10 3 1
      198 SETTABLEKS                       R10 R9 K20 ["Contents"]
      200 CALL                             R6 3 -1
      201 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["VisualizationModeEntry"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       50 GETTABLEKS                       R7 R7 K15 ["usePluginSetting"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K16 ["Util"]
       55 GETTABLEKS                       R7 R7 K17 ["LayoutOrderIterator"]
       57 GETTABLEKS                       R8 R1 K18 ["UI"]
       59 GETTABLEKS                       R9 R8 K19 ["Pane"]
       61 DUPCLOSURE                       R10 K20 [PROTO_0]
       62 DUPCLOSURE                       R11 K21 [PROTO_2]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R5
       69 RETURN                           R11 1
