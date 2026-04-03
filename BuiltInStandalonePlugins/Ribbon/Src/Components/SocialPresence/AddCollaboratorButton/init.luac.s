PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["manageCollaboratorsPressed"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K2 ["cancelShowTooltip"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K3 ["fromAction"]
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
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K0 ["use"]
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
       69 JUMP                             ; [+6]
       70 GETUPVAL                         R14 6
       71 CALL                             R14 0 1
       72 JUMPIFNOT                        R14 ; [+2]
       73 LOADK                            R13 K15 ["Component-Button CollaborateAlternateColor"]
       74 JUMP                             ; [+1]
       75 LOADK                            R13 K16 ["Component-Button Primary"]
       76 GETUPVAL                         R15 7
       77 GETTABLEKS                       R14 R15 K17 ["createElement"]
       79 LOADK                            R15 K18 ["TextButton"]
       80 NEWTABLE                         R16 8 0
       82 SETTABLEKS                       R10 R16 K19 ["ref"]
       84 GETUPVAL                         R19 7
       85 GETTABLEKS                       R18 R19 K20 ["Event"]
       87 GETTABLEKS                       R17 R18 K21 ["Activated"]
       89 NEWCLOSURE                       R18 P0
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          VAL R4
       93 CAPTURE                          UPVAL U9
       94 SETTABLE                         R18 R16 R17
       95 GETUPVAL                         R19 7
       96 GETTABLEKS                       R18 R19 K20 ["Event"]
       98 GETTABLEKS                       R17 R18 K22 ["MouseEnter"]
      100 SETTABLE                         R11 R16 R17
      101 GETUPVAL                         R19 7
      102 GETTABLEKS                       R18 R19 K20 ["Event"]
      104 GETTABLEKS                       R17 R18 K23 ["MouseLeave"]
      106 SETTABLE                         R12 R16 R17
      107 GETUPVAL                         R18 7
      108 GETTABLEKS                       R17 R18 K24 ["Tag"]
      110 GETUPVAL                         R18 10
      111 LOADK                            R19 K25 ["Component-AddCollaboratorButton Role-Surface X-Fit State-Default"]
      112 MOVE                             R20 R13
      113 CALL                             R18 2 1
      114 SETTABLE                         R18 R16 R17
      115 DUPTABLE                         R17 K27 [{"StateLayer"}]
      116 GETUPVAL                         R19 7
      117 GETTABLEKS                       R18 R19 K17 ["createElement"]
      119 LOADK                            R19 K28 ["Frame"]
      120 NEWTABLE                         R20 1 0
      122 GETUPVAL                         R22 7
      123 GETTABLEKS                       R21 R22 K24 ["Tag"]
      125 GETUPVAL                         R22 10
      126 LOADK                            R23 K29 ["Role-Surface X-Fit"]
      127 GETTABLEKS                       R25 R0 K13 ["IsTeamCreateOn"]
      129 JUMPIF                           R25 ; [+2]
      130 LOADK                            R24 K30 ["X-Row X-Middle X-Center Small"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R24
      133 CALL                             R22 2 1
      134 SETTABLE                         R22 R20 R21
      135 DUPTABLE                         R21 K33 [{"ButtonIcon", "ButtonText"}]
      136 GETUPVAL                         R23 7
      137 GETTABLEKS                       R22 R23 K17 ["createElement"]
      139 LOADK                            R23 K34 ["ImageLabel"]
      140 NEWTABLE                         R24 2 0
      142 SETTABLEKS                       R6 R24 K35 ["Image"]
      144 GETUPVAL                         R26 7
      145 GETTABLEKS                       R25 R26 K24 ["Tag"]
      147 LOADK                            R26 K36 ["Role-Surface Icon-Small"]
      148 SETTABLE                         R26 R24 R25
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K31 ["ButtonIcon"]
      152 GETTABLEKS                       R23 R0 K13 ["IsTeamCreateOn"]
      154 JUMPIF                           R23 ; [+20]
      155 GETUPVAL                         R23 7
      156 GETTABLEKS                       R22 R23 K17 ["createElement"]
      158 LOADK                            R23 K37 ["TextLabel"]
      159 NEWTABLE                         R24 2 0
      161 LOADK                            R27 K38 ["Plugin"]
      162 LOADK                            R28 K39 ["SocialPresence_Collaborate"]
      163 NAMECALL                         R25 R3 K40 ["getText"]
      165 CALL                             R25 3 1
      166 SETTABLEKS                       R25 R24 K7 ["Text"]
      168 GETUPVAL                         R26 7
      169 GETTABLEKS                       R25 R26 K24 ["Tag"]
      171 LOADK                            R26 K41 ["Role-Surface X-Fit Small Primary"]
      172 SETTABLE                         R26 R24 R25
      173 CALL                             R22 2 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R22
      176 SETTABLEKS                       R22 R21 K32 ["ButtonText"]
      178 CALL                             R18 3 1
      179 SETTABLEKS                       R18 R17 K26 ["StateLayer"]
      181 CALL                             R14 3 -1
      182 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Styling"]
       23 GETTABLEKS                       R3 R4 K10 ["joinTags"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["SharedFlags"]
       31 GETTABLEKS                       R5 R6 K13 ["getFFlagCollaborateButtonAlternateColor"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["Localization"]
       38 GETTABLEKS                       R7 R5 K16 ["Analytics"]
       40 GETTABLEKS                       R8 R5 K17 ["Plugin"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K11 ["Src"]
       46 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       48 GETTABLEKS                       R10 R11 K19 ["TooltipSettings"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R13 R0 K11 ["Src"]
       55 GETTABLEKS                       R12 R13 K18 ["Hooks"]
       57 GETTABLEKS                       R11 R12 K20 ["useTooltip"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R13 R0 K6 ["Packages"]
       64 GETTABLEKS                       R12 R13 K21 ["StudioFoundation"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R13 R11 K22 ["Util"]
       69 GETTABLEKS                       R12 R13 K23 ["StudioUri"]
       71 GETTABLEKS                       R14 R11 K18 ["Hooks"]
       73 GETTABLEKS                       R13 R14 K24 ["useWidgetRef"]
       75 DUPTABLE                         R14 K29 [{"DataModel", "PluginId", "Category", "ItemId"}]
       76 LOADK                            R15 K30 ["Standalone"]
       77 SETTABLEKS                       R15 R14 K25 ["DataModel"]
       79 LOADK                            R15 K31 ["ManageCollaborators"]
       80 SETTABLEKS                       R15 R14 K26 ["PluginId"]
       82 LOADK                            R15 K32 ["Actions"]
       83 SETTABLEKS                       R15 R14 K27 ["Category"]
       85 LOADK                            R15 K33 ["Open"]
       86 SETTABLEKS                       R15 R14 K28 ["ItemId"]
       88 DUPCLOSURE                       R15 K34 [PROTO_1]
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R3
      100 RETURN                           R15 1
