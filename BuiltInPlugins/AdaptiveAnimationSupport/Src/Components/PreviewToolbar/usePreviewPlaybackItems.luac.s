PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.InfoType.Asset]
        4 NAMECALL                         R1 R1 K4 ["GetProductInfoAsync"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
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
       36 DUPCLOSURE                       R3 K5 [PROTO_1]
       37 CALL                             R1 2 0
       38 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["current"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["enabled"]
       13 SETTABLEKS                       R1 R0 K1 ["current"]
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["enabled"]
       19 NOT                              R1 R2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K7 [{["name"], ["animationId"], ["isCustom"] = True}]
        5 GETUPVAL                         R5 0
        6 SETTABLEKS                       R5 R4 K3 ["name"]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K4 ["animationId"]
       11 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K9 [table.insert]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["toggle"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Plugin"]
        3 NAMECALL                         R4 R4 K1 ["use"]
        5 CALL                             R4 1 1
        6 NAMECALL                         R4 R4 K2 ["get"]
        8 CALL                             R4 1 1
        9 MOVE                             R5 R3
       10 JUMPIF                           R5 ; [+2]
       11 DUPCLOSURE                       R5 K3 [PROTO_0]
       12 CAPTURE                          UPVAL U1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K4 ["useState"]
       16 NEWTABLE                         R7 0 0
       18 CALL                             R6 1 2
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       22 NEWCLOSURE                       R9 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R6
       26 NEWTABLE                         R10 0 2
       28 GETUPVAL                         R11 4
       29 MOVE                             R12 R6
       30 SETLIST                          R10 R11 2 [1]
       32 CALL                             R8 2 1
       33 NEWTABLE                         R9 0 0
       35 MOVE                             R10 R8
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 FORGPREP                         R10
       39 DUPTABLE                         R17 K8 [{"Id", "Label"}]
       40 GETTABLEKS                       R18 R14 K9 ["animationId"]
       42 SETTABLEKS                       R18 R17 K6 ["Id"]
       44 GETTABLEKS                       R19 R14 K10 ["isCustom"]
       46 JUMPIFNOT                        R19 ; [+3]
       47 GETTABLEKS                       R18 R14 K11 ["name"]
       49 JUMP                             ; [+6]
       50 LOADK                            R20 K12 ["Animation"]
       51 GETTABLEKS                       R21 R14 K11 ["name"]
       53 NAMECALL                         R18 R1 K13 ["getText"]
       55 CALL                             R18 3 1
       56 SETTABLEKS                       R18 R17 K7 ["Label"]
       58 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       60 MOVE                             R16 R9
       61 GETIMPORT                        R15 K16 [table.insert]
       63 CALL                             R15 2 0
       64 FORGLOOP                         R10 2 ; [-26]
       66 GETUPVAL                         R10 3
       67 CALL                             R10 0 1
       68 JUMPIFNOT                        R10 ; [+14]
       69 DUPTABLE                         R12 K18 [{["Id"] = "__add_custom__", ["Label"]}]
       70 LOADK                            R15 K12 ["Animation"]
       71 LOADK                            R16 K19 ["AddCustom"]
       72 NAMECALL                         R13 R1 K13 ["getText"]
       74 CALL                             R13 3 1
       75 SETTABLEKS                       R13 R12 K7 ["Label"]
       77 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       79 MOVE                             R11 R9
       80 GETIMPORT                        R10 K16 [table.insert]
       82 CALL                             R10 2 0
       83 GETUPVAL                         R10 2
       84 GETTABLEKS                       R10 R10 K4 ["useState"]
       86 GETUPVAL                         R12 4
       87 GETTABLEN                        R11 R12 1
       88 GETTABLEKS                       R11 R11 K9 ["animationId"]
       90 CALL                             R10 1 2
       91 GETUPVAL                         R12 5
       92 GETTABLEKS                       R12 R12 K20 ["useToggleState"]
       94 CALL                             R12 0 1
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R13 R13 K21 ["useRef"]
       98 GETTABLEKS                       R14 R12 K22 ["enabled"]
      100 CALL                             R13 1 1
      101 GETUPVAL                         R14 2
      102 GETTABLEKS                       R14 R14 K23 ["useEffect"]
      104 NEWCLOSURE                       R15 P2
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R0
      108 NEWTABLE                         R16 0 1
      110 GETTABLEKS                       R17 R12 K22 ["enabled"]
      112 SETLIST                          R16 R17 1 [1]
      114 CALL                             R14 2 0
      115 NEWTABLE                         R14 0 2
      117 DUPTABLE                         R15 K29 [{["Type"] = "Dropdown", ["Items"], ["OnChange"], ["Value"]}]
      118 SETTABLEKS                       R9 R15 K26 ["Items"]
      120 NEWCLOSURE                       R16 P3
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R7
      127 SETTABLEKS                       R16 R15 K27 ["OnChange"]
      129 SETTABLEKS                       R10 R15 K28 ["Value"]
      131 DUPTABLE                         R16 K34 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
      132 LOADK                            R19 K12 ["Animation"]
      133 GETTABLEKS                       R21 R12 K22 ["enabled"]
      135 JUMPIFNOT                        R21 ; [+2]
      136 LOADK                            R20 K35 ["Pause"]
      137 JUMP                             ; [+1]
      138 LOADK                            R20 K36 ["Play"]
      139 NAMECALL                         R17 R1 K13 ["getText"]
      141 CALL                             R17 3 1
      142 SETTABLEKS                       R17 R16 K31 ["Tooltip"]
      144 GETUPVAL                         R17 2
      145 GETTABLEKS                       R17 R17 K37 ["createElement"]
      147 GETUPVAL                         R18 6
      148 GETTABLEKS                       R18 R18 K32 ["Icon"]
      150 DUPTABLE                         R19 K39 [{"name", "size"}]
      151 GETTABLEKS                       R21 R12 K22 ["enabled"]
      153 JUMPIFNOT                        R21 ; [+8]
      154 GETUPVAL                         R20 6
      155 GETTABLEKS                       R20 R20 K40 ["Enums"]
      157 GETTABLEKS                       R20 R20 K41 ["IconName"]
      159 GETTABLEKS                       R20 R20 K42 ["StopSmall"]
      161 JUMP                             ; [+7]
      162 GETUPVAL                         R20 6
      163 GETTABLEKS                       R20 R20 K40 ["Enums"]
      165 GETTABLEKS                       R20 R20 K41 ["IconName"]
      167 GETTABLEKS                       R20 R20 K43 ["PlaySmall"]
      169 SETTABLEKS                       R20 R19 K11 ["name"]
      171 GETUPVAL                         R20 6
      172 GETTABLEKS                       R20 R20 K40 ["Enums"]
      174 GETTABLEKS                       R20 R20 K44 ["IconSize"]
      176 GETTABLEKS                       R20 R20 K45 ["Large"]
      178 SETTABLEKS                       R20 R19 K38 ["size"]
      180 CALL                             R17 2 1
      181 SETTABLEKS                       R17 R16 K32 ["Icon"]
      183 NEWCLOSURE                       R17 P4
      184 CAPTURE                          VAL R12
      185 SETTABLEKS                       R17 R16 K33 ["OnClick"]
      187 SETLIST                          R14 R15 2 [1]
      189 NEWCLOSURE                       R15 P5
      190 CAPTURE                          VAL R12
      191 MOVE                             R16 R14
      192 MOVE                             R17 R10
      193 GETTABLEKS                       R18 R12 K22 ["enabled"]
      195 MOVE                             R19 R15
      196 RETURN                           R16 4

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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R2 R2 K12 ["ContextServices"]
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Packages"]
       26 GETTABLEKS                       R4 R4 K13 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K10 ["Packages"]
       33 GETTABLEKS                       R5 R5 K14 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R6 K15 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R7 K16 ["ViewportToolingFramework"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K17 ["Src"]
       54 GETTABLEKS                       R8 R8 K18 ["Flags"]
       56 GETTABLEKS                       R8 R8 K19 ["getFFlagAdaptiveAnimationCustomPreview"]
       58 CALL                             R7 1 1
       59 NEWTABLE                         R8 0 12
       61 DUPTABLE                         R9 K24 [{["name"] = "Fingers", ["animationId"] = "rbxassetid://136513471557343"}]
       62 DUPTABLE                         R10 K27 [{["name"] = "Fingers2", ["animationId"] = "rbxassetid://136999742662447"}]
       63 DUPTABLE                         R11 K30 [{["name"] = "Run", ["animationId"] = "rbxassetid://15627704599"}]
       64 DUPTABLE                         R12 K33 [{["name"] = "Walk", ["animationId"] = "rbxassetid://11600249883"}]
       65 DUPTABLE                         R13 K36 [{["name"] = "Wave", ["animationId"] = "rbxassetid://507770239"}]
       66 DUPTABLE                         R14 K39 [{["name"] = "Idle2", ["animationId"] = "rbxassetid://17173014241"}]
       67 DUPTABLE                         R15 K42 [{["name"] = "Cheer", ["animationId"] = "rbxassetid://4841405708"}]
       68 DUPTABLE                         R16 K45 [{["name"] = "Dance", ["animationId"] = "rbxassetid://3695300085"}]
       69 DUPTABLE                         R17 K48 [{["name"] = "Idle1", ["animationId"] = "rbxassetid://17172918855"}]
       70 DUPTABLE                         R18 K51 [{["name"] = "Climb", ["animationId"] = "rbxassetid://11600205519"}]
       71 DUPTABLE                         R19 K54 [{["name"] = "Laugh", ["animationId"] = "rbxassetid://507770818"}]
       72 DUPTABLE                         R20 K57 [{["name"] = "Swim", ["animationId"] = "rbxassetid://11600212676"}]
       73 SETLIST                          R8 R9 12 [1]
       75 DUPCLOSURE                       R9 K58 [PROTO_8]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R3
       83 RETURN                           R9 1
