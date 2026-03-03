PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+29]
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       11 MOVE                             R7 R0
       12 MOVE                             R8 R5
       13 GETIMPORT                        R6 K2 [table.insert]
       15 CALL                             R6 2 0
       16 FORGLOOP                         R1 2 ; [-8]
       18 GETUPVAL                         R1 2
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       24 MOVE                             R7 R0
       25 MOVE                             R8 R5
       26 GETIMPORT                        R6 K2 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-8]
       31 RETURN                           R0 1
       32 GETUPVAL                         R0 2
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["current"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["enabled"]
       13 SETTABLEKS                       R1 R0 K1 ["current"]
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["enabled"]
       19 NOT                              R1 R2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["toggle"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        3 DUPCLOSURE                       R4 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NEWTABLE                         R5 0 0
        9 CALL                             R3 2 1
       10 NEWTABLE                         R4 0 0
       12 MOVE                             R5 R3
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 DUPTABLE                         R12 K4 [{"Id", "Label"}]
       17 GETTABLEKS                       R13 R9 K5 ["animationId"]
       19 SETTABLEKS                       R13 R12 K2 ["Id"]
       21 LOADK                            R15 K6 ["Animation"]
       22 GETTABLEKS                       R16 R9 K7 ["name"]
       24 NAMECALL                         R13 R1 K8 ["getText"]
       26 CALL                             R13 3 1
       27 SETTABLEKS                       R13 R12 K3 ["Label"]
       29 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       31 MOVE                             R11 R4
       32 GETIMPORT                        R10 K11 [table.insert]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R5 2 ; [-20]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K12 ["useState"]
       40 GETTABLEN                        R7 R3 1
       41 GETTABLEKS                       R6 R7 K5 ["animationId"]
       43 CALL                             R5 1 2
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R7 R8 K13 ["useToggleState"]
       47 CALL                             R7 0 1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K14 ["useRef"]
       51 GETTABLEKS                       R9 R7 K15 ["enabled"]
       53 CALL                             R8 1 1
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R9 R10 K16 ["useEffect"]
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R11 0 1
       63 GETTABLEKS                       R12 R7 K15 ["enabled"]
       65 SETLIST                          R11 R12 1 [1]
       67 CALL                             R9 2 0
       68 NEWTABLE                         R9 0 2
       70 DUPTABLE                         R10 K21 [{"Type", "Items", "OnChange", "Value"}]
       71 LOADK                            R11 K22 ["Dropdown"]
       72 SETTABLEKS                       R11 R10 K17 ["Type"]
       74 SETTABLEKS                       R4 R10 K18 ["Items"]
       76 SETTABLEKS                       R6 R10 K19 ["OnChange"]
       78 SETTABLEKS                       R5 R10 K20 ["Value"]
       80 DUPTABLE                         R11 K26 [{"Type", "Tooltip", "Icon", "OnClick"}]
       81 LOADK                            R12 K27 ["Button"]
       82 SETTABLEKS                       R12 R11 K17 ["Type"]
       84 LOADK                            R14 K6 ["Animation"]
       85 GETTABLEKS                       R16 R7 K15 ["enabled"]
       87 JUMPIFNOT                        R16 ; [+2]
       88 LOADK                            R15 K28 ["Pause"]
       89 JUMP                             ; [+1]
       90 LOADK                            R15 K29 ["Play"]
       91 NAMECALL                         R12 R1 K8 ["getText"]
       93 CALL                             R12 3 1
       94 SETTABLEKS                       R12 R11 K23 ["Tooltip"]
       96 GETUPVAL                         R13 0
       97 GETTABLEKS                       R12 R13 K30 ["createElement"]
       99 GETUPVAL                         R14 5
      100 GETTABLEKS                       R13 R14 K24 ["Icon"]
      102 DUPTABLE                         R14 K32 [{"name", "size"}]
      103 GETTABLEKS                       R16 R7 K15 ["enabled"]
      105 JUMPIFNOT                        R16 ; [+8]
      106 GETUPVAL                         R18 5
      107 GETTABLEKS                       R17 R18 K33 ["Enums"]
      109 GETTABLEKS                       R16 R17 K34 ["IconName"]
      111 GETTABLEKS                       R15 R16 K35 ["StopSmall"]
      113 JUMP                             ; [+7]
      114 GETUPVAL                         R18 5
      115 GETTABLEKS                       R17 R18 K33 ["Enums"]
      117 GETTABLEKS                       R16 R17 K34 ["IconName"]
      119 GETTABLEKS                       R15 R16 K36 ["PlaySmall"]
      121 SETTABLEKS                       R15 R14 K7 ["name"]
      123 GETUPVAL                         R18 5
      124 GETTABLEKS                       R17 R18 K33 ["Enums"]
      126 GETTABLEKS                       R16 R17 K37 ["IconSize"]
      128 GETTABLEKS                       R15 R16 K38 ["Large"]
      130 SETTABLEKS                       R15 R14 K31 ["size"]
      132 CALL                             R12 2 1
      133 SETTABLEKS                       R12 R11 K24 ["Icon"]
      135 NEWCLOSURE                       R12 P2
      136 CAPTURE                          VAL R7
      137 SETTABLEKS                       R12 R11 K25 ["OnClick"]
      139 SETLIST                          R9 R10 2 [1]
      141 NEWCLOSURE                       R10 P3
      142 CAPTURE                          VAL R7
      143 MOVE                             R11 R9
      144 MOVE                             R12 R5
      145 GETTABLEKS                       R13 R7 K15 ["enabled"]
      147 MOVE                             R14 R10
      148 RETURN                           R11 4

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
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Flags"]
       41 GETTABLEKS                       R6 R7 K13 ["getFFlagAdaptiveAnimationQoL"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 0 10
       46 DUPTABLE                         R7 K16 [{"name", "animationId"}]
       47 LOADK                            R8 K17 ["Run"]
       48 SETTABLEKS                       R8 R7 K14 ["name"]
       50 LOADK                            R8 K18 ["rbxassetid://15627704599"]
       51 SETTABLEKS                       R8 R7 K15 ["animationId"]
       53 DUPTABLE                         R8 K16 [{"name", "animationId"}]
       54 LOADK                            R9 K19 ["Walk"]
       55 SETTABLEKS                       R9 R8 K14 ["name"]
       57 LOADK                            R9 K20 ["rbxassetid://11600249883"]
       58 SETTABLEKS                       R9 R8 K15 ["animationId"]
       60 DUPTABLE                         R9 K16 [{"name", "animationId"}]
       61 LOADK                            R10 K21 ["Wave"]
       62 SETTABLEKS                       R10 R9 K14 ["name"]
       64 LOADK                            R10 K22 ["rbxassetid://507770239"]
       65 SETTABLEKS                       R10 R9 K15 ["animationId"]
       67 DUPTABLE                         R10 K16 [{"name", "animationId"}]
       68 LOADK                            R11 K23 ["Idle2"]
       69 SETTABLEKS                       R11 R10 K14 ["name"]
       71 LOADK                            R11 K24 ["rbxassetid://17173014241"]
       72 SETTABLEKS                       R11 R10 K15 ["animationId"]
       74 DUPTABLE                         R11 K16 [{"name", "animationId"}]
       75 LOADK                            R12 K25 ["Cheer"]
       76 SETTABLEKS                       R12 R11 K14 ["name"]
       78 LOADK                            R12 K26 ["rbxassetid://4841405708"]
       79 SETTABLEKS                       R12 R11 K15 ["animationId"]
       81 DUPTABLE                         R12 K16 [{"name", "animationId"}]
       82 LOADK                            R13 K27 ["Dance"]
       83 SETTABLEKS                       R13 R12 K14 ["name"]
       85 LOADK                            R13 K28 ["rbxassetid://3695300085"]
       86 SETTABLEKS                       R13 R12 K15 ["animationId"]
       88 DUPTABLE                         R13 K16 [{"name", "animationId"}]
       89 LOADK                            R14 K29 ["Idle1"]
       90 SETTABLEKS                       R14 R13 K14 ["name"]
       92 LOADK                            R14 K30 ["rbxassetid://17172918855"]
       93 SETTABLEKS                       R14 R13 K15 ["animationId"]
       95 DUPTABLE                         R14 K16 [{"name", "animationId"}]
       96 LOADK                            R15 K31 ["Climb"]
       97 SETTABLEKS                       R15 R14 K14 ["name"]
       99 LOADK                            R15 K32 ["rbxassetid://11600205519"]
      100 SETTABLEKS                       R15 R14 K15 ["animationId"]
      102 DUPTABLE                         R15 K16 [{"name", "animationId"}]
      103 LOADK                            R16 K33 ["Laugh"]
      104 SETTABLEKS                       R16 R15 K14 ["name"]
      106 LOADK                            R16 K34 ["rbxassetid://507770818"]
      107 SETTABLEKS                       R16 R15 K15 ["animationId"]
      109 DUPTABLE                         R16 K16 [{"name", "animationId"}]
      110 LOADK                            R17 K35 ["Swim"]
      111 SETTABLEKS                       R17 R16 K14 ["name"]
      113 LOADK                            R17 K36 ["rbxassetid://95900645130033"]
      114 SETTABLEKS                       R17 R16 K15 ["animationId"]
      116 SETLIST                          R6 R7 10 [1]
      118 NEWTABLE                         R7 0 2
      120 DUPTABLE                         R8 K16 [{"name", "animationId"}]
      121 LOADK                            R9 K37 ["Fingers"]
      122 SETTABLEKS                       R9 R8 K14 ["name"]
      124 LOADK                            R9 K38 ["rbxassetid://136513471557343"]
      125 SETTABLEKS                       R9 R8 K15 ["animationId"]
      127 DUPTABLE                         R9 K16 [{"name", "animationId"}]
      128 LOADK                            R10 K39 ["Fingers2"]
      129 SETTABLEKS                       R10 R9 K14 ["name"]
      131 LOADK                            R10 K40 ["rbxassetid://136999742662447"]
      132 SETTABLEKS                       R10 R9 K15 ["animationId"]
      134 SETLIST                          R7 R8 2 [1]
      136 DUPCLOSURE                       R8 K41 [PROTO_4]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R1
      143 RETURN                           R8 1
