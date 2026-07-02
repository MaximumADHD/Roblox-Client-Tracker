PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["manageCollaboratorsPressed"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["cancelShowTooltip"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["fromAction"]
       13 LOADK                            R3 K4 ["ManageCollaborators"]
       14 LOADK                            R4 K5 ["Open"]
       15 CALL                             R2 2 -1
       16 NAMECALL                         R0 R0 K6 ["ActivateAsync"]
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["use"]
       14 CALL                             R3 0 1
       15 LOADK                            R6 K2 ["Actions"]
       16 NAMECALL                         R4 R1 K3 ["GetPluginComponent"]
       18 CALL                             R4 2 1
       19 NEWTABLE                         R8 0 1
       21 GETUPVAL                         R9 3
       22 SETLIST                          R8 R9 1 [1]
       24 NAMECALL                         R6 R4 K4 ["GetAsync"]
       26 CALL                             R6 2 1
       27 GETTABLEN                        R5 R6 1
       28 JUMPIFNOT                        R5 ; [+3]
       29 GETTABLEKS                       R6 R5 K5 ["Icon"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R6
       33 JUMPIFNOT                        R5 ; [+3]
       34 GETTABLEKS                       R7 R5 K6 ["Shortcuts"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R7
       38 JUMPIFNOT                        R5 ; [+3]
       39 GETTABLEKS                       R8 R5 K7 ["Text"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R8
       43 JUMPIFNOT                        R5 ; [+3]
       44 GETTABLEKS                       R9 R5 K8 ["Tooltip"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R9
       48 GETUPVAL                         R10 4
       49 GETUPVAL                         R11 3
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 5
       52 DUPTABLE                         R12 K12 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
       53 GETUPVAL                         R13 3
       54 SETTABLEKS                       R13 R12 K9 ["Uri"]
       56 SETTABLEKS                       R8 R12 K10 ["Title"]
       58 SETTABLEKS                       R9 R12 K7 ["Text"]
       60 SETTABLEKS                       R7 R12 K6 ["Shortcuts"]
       62 SETTABLEKS                       R10 R12 K11 ["WidgetRef"]
       64 CALL                             R11 1 2
       65 GETTABLEKS                       R14 R0 K13 ["IsTeamCreateOn"]
       67 JUMPIFNOT                        R14 ; [+2]
       68 LOADK                            R13 K14 ["Component-RibbonButton TeamCreate"]
       69 JUMP                             ; [+1]
       70 LOADK                            R13 K15 ["Component-Button CollaborateAlternateColor"]
       71 GETUPVAL                         R14 6
       72 GETTABLEKS                       R14 R14 K16 ["createElement"]
       74 LOADK                            R15 K17 ["TextButton"]
       75 NEWTABLE                         R16 8 0
       77 SETTABLEKS                       R10 R16 K18 ["ref"]
       79 GETUPVAL                         R17 6
       80 GETTABLEKS                       R17 R17 K19 ["Event"]
       82 GETTABLEKS                       R17 R17 K20 ["Activated"]
       84 NEWCLOSURE                       R18 P0
       85 CAPTURE                          VAL R2
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U8
       89 SETTABLE                         R18 R16 R17
       90 GETUPVAL                         R17 6
       91 GETTABLEKS                       R17 R17 K19 ["Event"]
       93 GETTABLEKS                       R17 R17 K21 ["MouseEnter"]
       95 SETTABLE                         R11 R16 R17
       96 GETUPVAL                         R17 6
       97 GETTABLEKS                       R17 R17 K19 ["Event"]
       99 GETTABLEKS                       R17 R17 K22 ["MouseLeave"]
      101 SETTABLE                         R12 R16 R17
      102 GETUPVAL                         R17 6
      103 GETTABLEKS                       R17 R17 K23 ["Tag"]
      105 GETUPVAL                         R18 9
      106 LOADK                            R19 K24 ["Component-AddCollaboratorButton Role-Surface X-Fit State-Default"]
      107 MOVE                             R20 R13
      108 CALL                             R18 2 1
      109 SETTABLE                         R18 R16 R17
      110 DUPTABLE                         R17 K26 [{"StateLayer"}]
      111 GETUPVAL                         R18 6
      112 GETTABLEKS                       R18 R18 K16 ["createElement"]
      114 LOADK                            R19 K27 ["Frame"]
      115 NEWTABLE                         R20 1 0
      117 GETUPVAL                         R21 6
      118 GETTABLEKS                       R21 R21 K23 ["Tag"]
      120 GETUPVAL                         R22 9
      121 LOADK                            R23 K28 ["Role-Surface X-Fit"]
      122 GETTABLEKS                       R25 R0 K13 ["IsTeamCreateOn"]
      124 JUMPIF                           R25 ; [+2]
      125 LOADK                            R24 K29 ["X-Row X-Middle X-Center Small"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R24
      128 CALL                             R22 2 1
      129 SETTABLE                         R22 R20 R21
      130 DUPTABLE                         R21 K32 [{"ButtonIcon", "ButtonText"}]
      131 GETUPVAL                         R22 6
      132 GETTABLEKS                       R22 R22 K16 ["createElement"]
      134 LOADK                            R23 K33 ["ImageLabel"]
      135 NEWTABLE                         R24 2 0
      137 SETTABLEKS                       R6 R24 K34 ["Image"]
      139 GETUPVAL                         R25 6
      140 GETTABLEKS                       R25 R25 K23 ["Tag"]
      142 LOADK                            R26 K35 ["Role-Surface Icon-Small"]
      143 SETTABLE                         R26 R24 R25
      144 CALL                             R22 2 1
      145 SETTABLEKS                       R22 R21 K30 ["ButtonIcon"]
      147 GETTABLEKS                       R23 R0 K13 ["IsTeamCreateOn"]
      149 JUMPIF                           R23 ; [+20]
      150 GETUPVAL                         R22 6
      151 GETTABLEKS                       R22 R22 K16 ["createElement"]
      153 LOADK                            R23 K36 ["TextLabel"]
      154 NEWTABLE                         R24 2 0
      156 LOADK                            R27 K37 ["Plugin"]
      157 LOADK                            R28 K38 ["SocialPresence_Collaborate"]
      158 NAMECALL                         R25 R3 K39 ["getText"]
      160 CALL                             R25 3 1
      161 SETTABLEKS                       R25 R24 K7 ["Text"]
      163 GETUPVAL                         R25 6
      164 GETTABLEKS                       R25 R25 K23 ["Tag"]
      166 LOADK                            R26 K40 ["Role-Surface X-Fit Small Primary"]
      167 SETTABLE                         R26 R24 R25
      168 CALL                             R22 2 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R22
      171 SETTABLEKS                       R22 R21 K31 ["ButtonText"]
      173 CALL                             R18 3 1
      174 SETTABLEKS                       R18 R17 K25 ["StateLayer"]
      176 CALL                             R14 3 -1
      177 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Styling"]
       23 GETTABLEKS                       R3 R3 K10 ["joinTags"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Localization"]
       29 GETTABLEKS                       R6 R4 K13 ["Analytics"]
       31 GETTABLEKS                       R7 R4 K14 ["Plugin"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R0 K15 ["Src"]
       37 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       39 GETTABLEKS                       R9 R9 K17 ["TooltipSettings"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Src"]
       46 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       48 GETTABLEKS                       R10 R10 K18 ["useTooltip"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K6 ["Packages"]
       55 GETTABLEKS                       R11 R11 K19 ["StudioFoundation"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R10 K20 ["Util"]
       60 GETTABLEKS                       R11 R11 K21 ["StudioUri"]
       62 GETTABLEKS                       R12 R10 K16 ["Hooks"]
       64 GETTABLEKS                       R12 R12 K22 ["useWidgetRef"]
       66 DUPTABLE                         R13 K31 [{["DataModel"] = "Standalone", ["PluginId"] = "ManageCollaborators", ["Category"] = "Actions", ["ItemId"] = "Open"}]
       67 DUPCLOSURE                       R14 K32 [PROTO_1]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R3
       78 RETURN                           R14 1
