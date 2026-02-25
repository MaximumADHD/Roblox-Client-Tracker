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
       65 GETUPVAL                         R14 6
       66 GETTABLEKS                       R13 R14 K13 ["createElement"]
       68 LOADK                            R14 K14 ["TextButton"]
       69 NEWTABLE                         R15 8 0
       71 SETTABLEKS                       R10 R15 K15 ["ref"]
       73 GETUPVAL                         R18 6
       74 GETTABLEKS                       R17 R18 K16 ["Event"]
       76 GETTABLEKS                       R16 R17 K17 ["Activated"]
       78 NEWCLOSURE                       R17 P0
       79 CAPTURE                          VAL R2
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          VAL R4
       82 CAPTURE                          UPVAL U8
       83 SETTABLE                         R17 R15 R16
       84 GETUPVAL                         R18 6
       85 GETTABLEKS                       R17 R18 K16 ["Event"]
       87 GETTABLEKS                       R16 R17 K18 ["MouseEnter"]
       89 SETTABLE                         R11 R15 R16
       90 GETUPVAL                         R18 6
       91 GETTABLEKS                       R17 R18 K16 ["Event"]
       93 GETTABLEKS                       R16 R17 K19 ["MouseLeave"]
       95 SETTABLE                         R12 R15 R16
       96 GETUPVAL                         R17 6
       97 GETTABLEKS                       R16 R17 K20 ["Tag"]
       99 GETUPVAL                         R17 9
      100 LOADK                            R18 K21 ["Component-AddCollaboratorButton Role-Surface X-Fit State-Default"]
      101 GETTABLEKS                       R20 R0 K22 ["IsTeamCreateOn"]
      103 JUMPIFNOT                        R20 ; [+2]
      104 LOADK                            R19 K23 ["Component-RibbonButton TeamCreate"]
      105 JUMP                             ; [+1]
      106 LOADK                            R19 K24 ["Component-Button Primary"]
      107 CALL                             R17 2 1
      108 SETTABLE                         R17 R15 R16
      109 DUPTABLE                         R16 K26 [{"StateLayer"}]
      110 GETUPVAL                         R18 6
      111 GETTABLEKS                       R17 R18 K13 ["createElement"]
      113 LOADK                            R18 K27 ["Frame"]
      114 NEWTABLE                         R19 1 0
      116 GETUPVAL                         R21 6
      117 GETTABLEKS                       R20 R21 K20 ["Tag"]
      119 GETUPVAL                         R21 9
      120 LOADK                            R22 K28 ["Role-Surface X-Fit"]
      121 GETTABLEKS                       R24 R0 K22 ["IsTeamCreateOn"]
      123 JUMPIF                           R24 ; [+2]
      124 LOADK                            R23 K29 ["X-Row X-Middle X-Center Small"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R23
      127 CALL                             R21 2 1
      128 SETTABLE                         R21 R19 R20
      129 DUPTABLE                         R20 K32 [{"ButtonIcon", "ButtonText"}]
      130 GETUPVAL                         R22 6
      131 GETTABLEKS                       R21 R22 K13 ["createElement"]
      133 LOADK                            R22 K33 ["ImageLabel"]
      134 NEWTABLE                         R23 2 0
      136 SETTABLEKS                       R6 R23 K34 ["Image"]
      138 GETUPVAL                         R25 6
      139 GETTABLEKS                       R24 R25 K20 ["Tag"]
      141 LOADK                            R25 K35 ["Role-Surface Icon-Small"]
      142 SETTABLE                         R25 R23 R24
      143 CALL                             R21 2 1
      144 SETTABLEKS                       R21 R20 K30 ["ButtonIcon"]
      146 GETTABLEKS                       R22 R0 K22 ["IsTeamCreateOn"]
      148 JUMPIF                           R22 ; [+20]
      149 GETUPVAL                         R22 6
      150 GETTABLEKS                       R21 R22 K13 ["createElement"]
      152 LOADK                            R22 K36 ["TextLabel"]
      153 NEWTABLE                         R23 2 0
      155 LOADK                            R26 K37 ["Plugin"]
      156 LOADK                            R27 K38 ["SocialPresence_Collaborate"]
      157 NAMECALL                         R24 R3 K39 ["getText"]
      159 CALL                             R24 3 1
      160 SETTABLEKS                       R24 R23 K7 ["Text"]
      162 GETUPVAL                         R25 6
      163 GETTABLEKS                       R24 R25 K20 ["Tag"]
      165 LOADK                            R25 K40 ["Role-Surface X-Fit Small Primary"]
      166 SETTABLE                         R25 R23 R24
      167 CALL                             R21 2 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R21
      170 SETTABLEKS                       R21 R20 K31 ["ButtonText"]
      172 CALL                             R17 3 1
      173 SETTABLEKS                       R17 R16 K25 ["StateLayer"]
      175 CALL                             R13 3 -1
      176 RETURN                           R13 -1

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
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["Localization"]
       29 GETTABLEKS                       R6 R4 K13 ["Analytics"]
       31 GETTABLEKS                       R7 R4 K14 ["Plugin"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R11 R0 K15 ["Src"]
       37 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       39 GETTABLEKS                       R9 R10 K17 ["TooltipSettings"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K15 ["Src"]
       46 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       48 GETTABLEKS                       R10 R11 K18 ["useTooltip"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R12 R0 K6 ["Packages"]
       55 GETTABLEKS                       R11 R12 K19 ["StudioFoundation"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R12 R10 K20 ["Util"]
       60 GETTABLEKS                       R11 R12 K21 ["StudioUri"]
       62 GETTABLEKS                       R13 R10 K16 ["Hooks"]
       64 GETTABLEKS                       R12 R13 K22 ["useWidgetRef"]
       66 DUPTABLE                         R13 K27 [{"DataModel", "PluginId", "Category", "ItemId"}]
       67 LOADK                            R14 K28 ["Standalone"]
       68 SETTABLEKS                       R14 R13 K23 ["DataModel"]
       70 LOADK                            R14 K29 ["ManageCollaborators"]
       71 SETTABLEKS                       R14 R13 K24 ["PluginId"]
       73 LOADK                            R14 K30 ["Actions"]
       74 SETTABLEKS                       R14 R13 K25 ["Category"]
       76 LOADK                            R14 K31 ["Open"]
       77 SETTABLEKS                       R14 R13 K26 ["ItemId"]
       79 DUPCLOSURE                       R14 K32 [PROTO_1]
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R3
       90 RETURN                           R14 1
