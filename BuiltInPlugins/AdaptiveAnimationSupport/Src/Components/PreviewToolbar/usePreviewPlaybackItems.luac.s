PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.InfoType.Asset]
        4 NAMECALL                         R1 R1 K4 ["GetProductInfoAsync"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
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

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R5
       15 GETIMPORT                        R6 K2 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 2 ; [-8]
       20 GETUPVAL                         R1 2
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 FORGPREP                         R1
       24 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       26 MOVE                             R7 R0
       27 MOVE                             R8 R5
       28 GETIMPORT                        R6 K2 [table.insert]
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-8]
       33 GETIMPORT                        R1 K4 [table.sort]
       35 MOVE                             R2 R0
       36 DUPCLOSURE                       R3 K5 [PROTO_2]
       37 CALL                             R1 2 0
       38 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K6 [{"name", "animationId", "isCustom"}]
        5 GETUPVAL                         R5 0
        6 SETTABLEKS                       R5 R4 K3 ["name"]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K4 ["animationId"]
       11 LOADB                            R5 1
       12 SETTABLEKS                       R5 R4 K5 ["isCustom"]
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K8 [table.insert]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+58]
        3 JUMPIFNOTEQKS                    R0 K0 ["__add_custom__"] ; [+57]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K1 ["Animation"]
        7 NAMECALL                         R1 R1 K2 ["PromptForExistingAssetId"]
        9 CALL                             R1 2 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+52]
       13 LOADK                            R3 K3 ["rbxassetid://"]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R5 R1
       16 GETIMPORT                        R4 K5 [tostring]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 LOADB                            R3 0
       21 GETUPVAL                         R4 2
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETTABLEKS                       R9 R8 K6 ["animationId"]
       27 JUMPIFNOTEQ                      R9 R2 ; [+3]
       29 LOADB                            R3 1
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R4 2 ; [-7]
       33 JUMPIFNOT                        R3 ; [+4]
       34 GETUPVAL                         R4 3
       35 MOVE                             R5 R2
       36 CALL                             R4 1 0
       37 RETURN                           R0 0
       38 MOVE                             R4 R2
       39 GETIMPORT                        R5 K8 [pcall]
       41 GETUPVAL                         R6 4
       42 MOVE                             R7 R1
       43 CALL                             R5 2 2
       44 JUMPIFNOT                        R5 ; [+6]
       45 JUMPIFNOT                        R6 ; [+5]
       46 GETTABLEKS                       R7 R6 K9 ["Name"]
       48 JUMPIFNOT                        R7 ; [+2]
       49 GETTABLEKS                       R4 R6 K9 ["Name"]
       51 GETUPVAL                         R7 5
       52 NEWCLOSURE                       R8 P0
       53 CAPTURE                          REF R4
       54 CAPTURE                          VAL R2
       55 CALL                             R7 1 0
       56 GETUPVAL                         R7 3
       57 MOVE                             R8 R2
       58 CALL                             R7 1 0
       59 CLOSEUPVALS                      R4
       60 RETURN                           R0 0
       61 GETUPVAL                         R1 3
       62 MOVE                             R2 R0
       63 CALL                             R1 1 0
       64 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["toggle"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Plugin"]
        3 NAMECALL                         R4 R4 K1 ["use"]
        5 CALL                             R4 1 1
        6 NAMECALL                         R4 R4 K2 ["get"]
        8 CALL                             R4 1 1
        9 MOVE                             R5 R3
       10 JUMPIF                           R5 ; [+2]
       11 DUPCLOSURE                       R5 K3 [PROTO_0]
       12 CAPTURE                          UPVAL U1
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K4 ["useMemo"]
       16 DUPCLOSURE                       R7 K5 [PROTO_1]
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 NEWTABLE                         R8 0 0
       22 CALL                             R6 2 1
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K6 ["useState"]
       26 NEWTABLE                         R8 0 0
       28 CALL                             R7 1 2
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R9 R10 K4 ["useMemo"]
       32 NEWCLOSURE                       R10 P2
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R7
       36 NEWTABLE                         R11 0 2
       38 MOVE                             R12 R6
       39 MOVE                             R13 R7
       40 SETLIST                          R11 R12 2 [1]
       42 CALL                             R9 2 1
       43 NEWTABLE                         R10 0 0
       45 MOVE                             R11 R9
       46 LOADNIL                          R12
       47 LOADNIL                          R13
       48 FORGPREP                         R11
       49 DUPTABLE                         R18 K9 [{"Id", "Label"}]
       50 GETTABLEKS                       R19 R15 K10 ["animationId"]
       52 SETTABLEKS                       R19 R18 K7 ["Id"]
       54 GETTABLEKS                       R20 R15 K11 ["isCustom"]
       56 JUMPIFNOT                        R20 ; [+3]
       57 GETTABLEKS                       R19 R15 K12 ["name"]
       59 JUMP                             ; [+6]
       60 LOADK                            R21 K13 ["Animation"]
       61 GETTABLEKS                       R22 R15 K12 ["name"]
       63 NAMECALL                         R19 R1 K14 ["getText"]
       65 CALL                             R19 3 1
       66 SETTABLEKS                       R19 R18 K8 ["Label"]
       68 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
       70 MOVE                             R17 R10
       71 GETIMPORT                        R16 K17 [table.insert]
       73 CALL                             R16 2 0
       74 FORGLOOP                         R11 2 ; [-26]
       76 GETUPVAL                         R11 6
       77 CALL                             R11 0 1
       78 JUMPIFNOT                        R11 ; [+17]
       79 DUPTABLE                         R13 K9 [{"Id", "Label"}]
       80 LOADK                            R14 K18 ["__add_custom__"]
       81 SETTABLEKS                       R14 R13 K7 ["Id"]
       83 LOADK                            R16 K13 ["Animation"]
       84 LOADK                            R17 K19 ["AddCustom"]
       85 NAMECALL                         R14 R1 K14 ["getText"]
       87 CALL                             R14 3 1
       88 SETTABLEKS                       R14 R13 K8 ["Label"]
       90 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
       92 MOVE                             R12 R10
       93 GETIMPORT                        R11 K17 [table.insert]
       95 CALL                             R11 2 0
       96 GETUPVAL                         R12 2
       97 GETTABLEKS                       R11 R12 K6 ["useState"]
       99 GETTABLEN                        R13 R6 1
      100 GETTABLEKS                       R12 R13 K10 ["animationId"]
      102 CALL                             R11 1 2
      103 GETUPVAL                         R14 7
      104 GETTABLEKS                       R13 R14 K20 ["useToggleState"]
      106 CALL                             R13 0 1
      107 GETUPVAL                         R15 2
      108 GETTABLEKS                       R14 R15 K21 ["useRef"]
      110 GETTABLEKS                       R15 R13 K22 ["enabled"]
      112 CALL                             R14 1 1
      113 GETUPVAL                         R16 2
      114 GETTABLEKS                       R15 R16 K23 ["useEffect"]
      116 NEWCLOSURE                       R16 P3
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R0
      120 NEWTABLE                         R17 0 1
      122 GETTABLEKS                       R18 R13 K22 ["enabled"]
      124 SETLIST                          R17 R18 1 [1]
      126 CALL                             R15 2 0
      127 NEWTABLE                         R15 0 2
      129 DUPTABLE                         R16 K28 [{"Type", "Items", "OnChange", "Value"}]
      130 LOADK                            R17 K29 ["Dropdown"]
      131 SETTABLEKS                       R17 R16 K24 ["Type"]
      133 SETTABLEKS                       R10 R16 K25 ["Items"]
      135 NEWCLOSURE                       R17 P4
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R8
      142 SETTABLEKS                       R17 R16 K26 ["OnChange"]
      144 SETTABLEKS                       R11 R16 K27 ["Value"]
      146 DUPTABLE                         R17 K33 [{"Type", "Tooltip", "Icon", "OnClick"}]
      147 LOADK                            R18 K34 ["Button"]
      148 SETTABLEKS                       R18 R17 K24 ["Type"]
      150 LOADK                            R20 K13 ["Animation"]
      151 GETTABLEKS                       R22 R13 K22 ["enabled"]
      153 JUMPIFNOT                        R22 ; [+2]
      154 LOADK                            R21 K35 ["Pause"]
      155 JUMP                             ; [+1]
      156 LOADK                            R21 K36 ["Play"]
      157 NAMECALL                         R18 R1 K14 ["getText"]
      159 CALL                             R18 3 1
      160 SETTABLEKS                       R18 R17 K30 ["Tooltip"]
      162 GETUPVAL                         R19 2
      163 GETTABLEKS                       R18 R19 K37 ["createElement"]
      165 GETUPVAL                         R20 8
      166 GETTABLEKS                       R19 R20 K31 ["Icon"]
      168 DUPTABLE                         R20 K39 [{"name", "size"}]
      169 GETTABLEKS                       R22 R13 K22 ["enabled"]
      171 JUMPIFNOT                        R22 ; [+8]
      172 GETUPVAL                         R24 8
      173 GETTABLEKS                       R23 R24 K40 ["Enums"]
      175 GETTABLEKS                       R22 R23 K41 ["IconName"]
      177 GETTABLEKS                       R21 R22 K42 ["StopSmall"]
      179 JUMP                             ; [+7]
      180 GETUPVAL                         R24 8
      181 GETTABLEKS                       R23 R24 K40 ["Enums"]
      183 GETTABLEKS                       R22 R23 K41 ["IconName"]
      185 GETTABLEKS                       R21 R22 K43 ["PlaySmall"]
      187 SETTABLEKS                       R21 R20 K12 ["name"]
      189 GETUPVAL                         R24 8
      190 GETTABLEKS                       R23 R24 K40 ["Enums"]
      192 GETTABLEKS                       R22 R23 K44 ["IconSize"]
      194 GETTABLEKS                       R21 R22 K45 ["Large"]
      196 SETTABLEKS                       R21 R20 K38 ["size"]
      198 CALL                             R18 2 1
      199 SETTABLEKS                       R18 R17 K31 ["Icon"]
      201 NEWCLOSURE                       R18 P5
      202 CAPTURE                          VAL R13
      203 SETTABLEKS                       R18 R17 K32 ["OnClick"]
      205 SETLIST                          R15 R16 2 [1]
      207 NEWCLOSURE                       R16 P6
      208 CAPTURE                          VAL R13
      209 MOVE                             R17 R15
      210 MOVE                             R18 R11
      211 GETTABLEKS                       R19 R13 K22 ["enabled"]
      213 MOVE                             R20 R16
      214 RETURN                           R17 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["MarketplaceService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R3 K9 [require]
       15 GETTABLEKS                       R5 R0 K10 ["Packages"]
       17 GETTABLEKS                       R4 R5 K11 ["Framework"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R2 R3 K12 ["ContextServices"]
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K10 ["Packages"]
       26 GETTABLEKS                       R4 R5 K13 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Packages"]
       33 GETTABLEKS                       R5 R6 K14 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R7 K15 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R8 K16 ["ViewportToolingFramework"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R10 R0 K17 ["Src"]
       54 GETTABLEKS                       R9 R10 K18 ["Flags"]
       56 GETTABLEKS                       R8 R9 K19 ["getFFlagAdaptiveAnimationQoL"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R11 R0 K17 ["Src"]
       63 GETTABLEKS                       R10 R11 K18 ["Flags"]
       65 GETTABLEKS                       R9 R10 K20 ["getFFlagAdaptiveAnimationCustomPreview"]
       67 CALL                             R8 1 1
       68 NEWTABLE                         R9 0 10
       70 DUPTABLE                         R10 K23 [{"name", "animationId"}]
       71 LOADK                            R11 K24 ["Run"]
       72 SETTABLEKS                       R11 R10 K21 ["name"]
       74 LOADK                            R11 K25 ["rbxassetid://15627704599"]
       75 SETTABLEKS                       R11 R10 K22 ["animationId"]
       77 DUPTABLE                         R11 K23 [{"name", "animationId"}]
       78 LOADK                            R12 K26 ["Walk"]
       79 SETTABLEKS                       R12 R11 K21 ["name"]
       81 LOADK                            R12 K27 ["rbxassetid://11600249883"]
       82 SETTABLEKS                       R12 R11 K22 ["animationId"]
       84 DUPTABLE                         R12 K23 [{"name", "animationId"}]
       85 LOADK                            R13 K28 ["Wave"]
       86 SETTABLEKS                       R13 R12 K21 ["name"]
       88 LOADK                            R13 K29 ["rbxassetid://507770239"]
       89 SETTABLEKS                       R13 R12 K22 ["animationId"]
       91 DUPTABLE                         R13 K23 [{"name", "animationId"}]
       92 LOADK                            R14 K30 ["Idle2"]
       93 SETTABLEKS                       R14 R13 K21 ["name"]
       95 LOADK                            R14 K31 ["rbxassetid://17173014241"]
       96 SETTABLEKS                       R14 R13 K22 ["animationId"]
       98 DUPTABLE                         R14 K23 [{"name", "animationId"}]
       99 LOADK                            R15 K32 ["Cheer"]
      100 SETTABLEKS                       R15 R14 K21 ["name"]
      102 LOADK                            R15 K33 ["rbxassetid://4841405708"]
      103 SETTABLEKS                       R15 R14 K22 ["animationId"]
      105 DUPTABLE                         R15 K23 [{"name", "animationId"}]
      106 LOADK                            R16 K34 ["Dance"]
      107 SETTABLEKS                       R16 R15 K21 ["name"]
      109 LOADK                            R16 K35 ["rbxassetid://3695300085"]
      110 SETTABLEKS                       R16 R15 K22 ["animationId"]
      112 DUPTABLE                         R16 K23 [{"name", "animationId"}]
      113 LOADK                            R17 K36 ["Idle1"]
      114 SETTABLEKS                       R17 R16 K21 ["name"]
      116 LOADK                            R17 K37 ["rbxassetid://17172918855"]
      117 SETTABLEKS                       R17 R16 K22 ["animationId"]
      119 DUPTABLE                         R17 K23 [{"name", "animationId"}]
      120 LOADK                            R18 K38 ["Climb"]
      121 SETTABLEKS                       R18 R17 K21 ["name"]
      123 LOADK                            R18 K39 ["rbxassetid://11600205519"]
      124 SETTABLEKS                       R18 R17 K22 ["animationId"]
      126 DUPTABLE                         R18 K23 [{"name", "animationId"}]
      127 LOADK                            R19 K40 ["Laugh"]
      128 SETTABLEKS                       R19 R18 K21 ["name"]
      130 LOADK                            R19 K41 ["rbxassetid://507770818"]
      131 SETTABLEKS                       R19 R18 K22 ["animationId"]
      133 DUPTABLE                         R19 K23 [{"name", "animationId"}]
      134 LOADK                            R20 K42 ["Swim"]
      135 SETTABLEKS                       R20 R19 K21 ["name"]
      137 LOADK                            R20 K43 ["rbxassetid://95900645130033"]
      138 SETTABLEKS                       R20 R19 K22 ["animationId"]
      140 SETLIST                          R9 R10 10 [1]
      142 NEWTABLE                         R10 0 2
      144 DUPTABLE                         R11 K23 [{"name", "animationId"}]
      145 LOADK                            R12 K44 ["Fingers"]
      146 SETTABLEKS                       R12 R11 K21 ["name"]
      148 LOADK                            R12 K45 ["rbxassetid://136513471557343"]
      149 SETTABLEKS                       R12 R11 K22 ["animationId"]
      151 DUPTABLE                         R12 K23 [{"name", "animationId"}]
      152 LOADK                            R13 K46 ["Fingers2"]
      153 SETTABLEKS                       R13 R12 K21 ["name"]
      155 LOADK                            R13 K47 ["rbxassetid://136999742662447"]
      156 SETTABLEKS                       R13 R12 K22 ["animationId"]
      158 SETLIST                          R10 R11 2 [1]
      160 DUPCLOSURE                       R11 K48 [PROTO_9]
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R3
      170 RETURN                           R11 1
