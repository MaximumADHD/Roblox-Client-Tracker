PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["current"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["enabled"]
       12 JUMPIFNOT                        R0 ; [+16]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K1 ["current"]
       16 JUMPIF                           R0 ; [+12]
       17 GETUPVAL                         R0 2
       18 JUMPIFNOT                        R0 ; [+10]
       19 GETIMPORT                        R0 K4 [Instance.new]
       21 LOADK                            R1 K5 ["Decal"]
       22 CALL                             R0 1 1
       23 GETUPVAL                         R1 2
       24 SETTABLEKS                       R1 R0 K6 ["Parent"]
       26 NAMECALL                         R1 R0 K7 ["Destroy"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R0 1
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R1 R2 K0 ["enabled"]
       33 SETTABLEKS                       R1 R0 K1 ["current"]
       35 GETUPVAL                         R0 3
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K0 ["enabled"]
       39 NOT                              R1 R2
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["toggle"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 DUPTABLE                         R11 K2 [{"Id", "Label"}]
        7 GETTABLEKS                       R12 R8 K3 ["animationId"]
        9 SETTABLEKS                       R12 R11 K0 ["Id"]
       11 LOADK                            R14 K4 ["Animation"]
       12 GETTABLEKS                       R15 R8 K5 ["name"]
       14 NAMECALL                         R12 R1 K6 ["getText"]
       16 CALL                             R12 3 1
       17 SETTABLEKS                       R12 R11 K1 ["Label"]
       19 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       21 MOVE                             R10 R3
       22 GETIMPORT                        R9 K9 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R4 2 ; [-20]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K10 ["useState"]
       30 GETUPVAL                         R7 0
       31 GETTABLEN                        R6 R7 1
       32 GETTABLEKS                       R5 R6 K3 ["animationId"]
       34 CALL                             R4 1 2
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K11 ["useToggleState"]
       38 CALL                             R6 0 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K12 ["useRef"]
       42 GETTABLEKS                       R8 R6 K13 ["enabled"]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R8 R9 K14 ["useEffect"]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R10 0 1
       55 GETTABLEKS                       R11 R6 K13 ["enabled"]
       57 SETLIST                          R10 R11 1 [1]
       59 CALL                             R8 2 0
       60 NEWTABLE                         R8 0 2
       62 DUPTABLE                         R9 K19 [{"Type", "Items", "OnChange", "Value"}]
       63 LOADK                            R10 K20 ["Dropdown"]
       64 SETTABLEKS                       R10 R9 K15 ["Type"]
       66 SETTABLEKS                       R3 R9 K16 ["Items"]
       68 SETTABLEKS                       R5 R9 K17 ["OnChange"]
       70 SETTABLEKS                       R4 R9 K18 ["Value"]
       72 DUPTABLE                         R10 K24 [{"Type", "Tooltip", "Icon", "OnClick"}]
       73 LOADK                            R11 K25 ["Button"]
       74 SETTABLEKS                       R11 R10 K15 ["Type"]
       76 LOADK                            R13 K4 ["Animation"]
       77 GETTABLEKS                       R15 R6 K13 ["enabled"]
       79 JUMPIFNOT                        R15 ; [+2]
       80 LOADK                            R14 K26 ["Pause"]
       81 JUMP                             ; [+1]
       82 LOADK                            R14 K27 ["Play"]
       83 NAMECALL                         R11 R1 K6 ["getText"]
       85 CALL                             R11 3 1
       86 SETTABLEKS                       R11 R10 K21 ["Tooltip"]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R11 R12 K28 ["createElement"]
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R12 R13 K22 ["Icon"]
       94 DUPTABLE                         R13 K30 [{"name", "size"}]
       95 GETTABLEKS                       R15 R6 K13 ["enabled"]
       97 JUMPIFNOT                        R15 ; [+8]
       98 GETUPVAL                         R17 3
       99 GETTABLEKS                       R16 R17 K31 ["Enums"]
      101 GETTABLEKS                       R15 R16 K32 ["IconName"]
      103 GETTABLEKS                       R14 R15 K33 ["StopSmall"]
      105 JUMP                             ; [+7]
      106 GETUPVAL                         R17 3
      107 GETTABLEKS                       R16 R17 K31 ["Enums"]
      109 GETTABLEKS                       R15 R16 K32 ["IconName"]
      111 GETTABLEKS                       R14 R15 K34 ["PlaySmall"]
      113 SETTABLEKS                       R14 R13 K5 ["name"]
      115 GETUPVAL                         R17 3
      116 GETTABLEKS                       R16 R17 K31 ["Enums"]
      118 GETTABLEKS                       R15 R16 K35 ["IconSize"]
      120 GETTABLEKS                       R14 R15 K36 ["Large"]
      122 SETTABLEKS                       R14 R13 K29 ["size"]
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K22 ["Icon"]
      127 NEWCLOSURE                       R11 P1
      128 CAPTURE                          VAL R6
      129 SETTABLEKS                       R11 R10 K23 ["OnClick"]
      131 SETLIST                          R8 R9 2 [1]
      133 NEWCLOSURE                       R9 P2
      134 CAPTURE                          VAL R6
      135 MOVE                             R10 R8
      136 MOVE                             R11 R4
      137 GETTABLEKS                       R12 R6 K13 ["enabled"]
      139 MOVE                             R13 R9
      140 RETURN                           R10 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ViewportToolingFramework"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 0 10
       37 DUPTABLE                         R6 K13 [{"name", "animationId"}]
       38 LOADK                            R7 K14 ["Run"]
       39 SETTABLEKS                       R7 R6 K11 ["name"]
       41 LOADK                            R7 K15 ["rbxassetid://15627704599"]
       42 SETTABLEKS                       R7 R6 K12 ["animationId"]
       44 DUPTABLE                         R7 K13 [{"name", "animationId"}]
       45 LOADK                            R8 K16 ["Walk"]
       46 SETTABLEKS                       R8 R7 K11 ["name"]
       48 LOADK                            R8 K17 ["rbxassetid://11600249883"]
       49 SETTABLEKS                       R8 R7 K12 ["animationId"]
       51 DUPTABLE                         R8 K13 [{"name", "animationId"}]
       52 LOADK                            R9 K18 ["Wave"]
       53 SETTABLEKS                       R9 R8 K11 ["name"]
       55 LOADK                            R9 K19 ["rbxassetid://507770239"]
       56 SETTABLEKS                       R9 R8 K12 ["animationId"]
       58 DUPTABLE                         R9 K13 [{"name", "animationId"}]
       59 LOADK                            R10 K20 ["Idle2"]
       60 SETTABLEKS                       R10 R9 K11 ["name"]
       62 LOADK                            R10 K21 ["rbxassetid://17173014241"]
       63 SETTABLEKS                       R10 R9 K12 ["animationId"]
       65 DUPTABLE                         R10 K13 [{"name", "animationId"}]
       66 LOADK                            R11 K22 ["Cheer"]
       67 SETTABLEKS                       R11 R10 K11 ["name"]
       69 LOADK                            R11 K23 ["rbxassetid://4841405708"]
       70 SETTABLEKS                       R11 R10 K12 ["animationId"]
       72 DUPTABLE                         R11 K13 [{"name", "animationId"}]
       73 LOADK                            R12 K24 ["Dance"]
       74 SETTABLEKS                       R12 R11 K11 ["name"]
       76 LOADK                            R12 K25 ["rbxassetid://3695300085"]
       77 SETTABLEKS                       R12 R11 K12 ["animationId"]
       79 DUPTABLE                         R12 K13 [{"name", "animationId"}]
       80 LOADK                            R13 K26 ["Idle1"]
       81 SETTABLEKS                       R13 R12 K11 ["name"]
       83 LOADK                            R13 K27 ["rbxassetid://17172918855"]
       84 SETTABLEKS                       R13 R12 K12 ["animationId"]
       86 DUPTABLE                         R13 K13 [{"name", "animationId"}]
       87 LOADK                            R14 K28 ["Climb"]
       88 SETTABLEKS                       R14 R13 K11 ["name"]
       90 LOADK                            R14 K29 ["rbxassetid://11600205519"]
       91 SETTABLEKS                       R14 R13 K12 ["animationId"]
       93 DUPTABLE                         R14 K13 [{"name", "animationId"}]
       94 LOADK                            R15 K30 ["Laugh"]
       95 SETTABLEKS                       R15 R14 K11 ["name"]
       97 LOADK                            R15 K31 ["rbxassetid://507770818"]
       98 SETTABLEKS                       R15 R14 K12 ["animationId"]
      100 DUPTABLE                         R15 K13 [{"name", "animationId"}]
      101 LOADK                            R16 K32 ["Swim"]
      102 SETTABLEKS                       R16 R15 K11 ["name"]
      104 LOADK                            R16 K33 ["rbxassetid://11600212676"]
      105 SETTABLEKS                       R16 R15 K12 ["animationId"]
      107 SETLIST                          R5 R6 10 [1]
      109 DUPCLOSURE                       R6 K34 [PROTO_3]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R1
      114 RETURN                           R6 1
