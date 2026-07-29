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
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R5
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 2 ; [-8]
       15 GETUPVAL                         R1 1
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       21 MOVE                             R7 R0
       22 MOVE                             R8 R5
       23 GETIMPORT                        R6 K2 [table.insert]
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 2 ; [-8]
       28 GETIMPORT                        R1 K4 [table.sort]
       30 MOVE                             R2 R0
       31 DUPCLOSURE                       R3 K5 [PROTO_1]
       32 CALL                             R1 2 0
       33 RETURN                           R0 1

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
        0 JUMPIFNOTEQKS                    R0 K0 ["__add_custom__"] ; [+57]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K1 ["Animation"]
        4 NAMECALL                         R1 R1 K2 ["PromptForExistingAssetId"]
        6 CALL                             R1 2 1
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+52]
       10 LOADK                            R3 K3 ["rbxassetid://"]
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 LOADB                            R3 0
       18 GETUPVAL                         R4 1
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETTABLEKS                       R9 R8 K6 ["animationId"]
       24 JUMPIFNOTEQ                      R9 R2 ; [+3]
       26 LOADB                            R3 1
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R4 2 ; [-7]
       30 JUMPIFNOT                        R3 ; [+4]
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R2
       33 CALL                             R4 1 0
       34 RETURN                           R0 0
       35 MOVE                             R4 R2
       36 GETIMPORT                        R5 K8 [pcall]
       38 GETUPVAL                         R6 3
       39 MOVE                             R7 R1
       40 CALL                             R5 2 2
       41 JUMPIFNOT                        R5 ; [+6]
       42 JUMPIFNOT                        R6 ; [+5]
       43 GETTABLEKS                       R7 R6 K9 ["Name"]
       45 JUMPIFNOT                        R7 ; [+2]
       46 GETTABLEKS                       R4 R6 K9 ["Name"]
       48 GETUPVAL                         R7 4
       49 NEWCLOSURE                       R8 P0
       50 CAPTURE                          REF R4
       51 CAPTURE                          VAL R2
       52 CALL                             R7 1 0
       53 GETUPVAL                         R7 2
       54 MOVE                             R8 R2
       55 CALL                             R7 1 0
       56 CLOSEUPVALS                      R4
       57 RETURN                           R0 0
       58 GETUPVAL                         R1 2
       59 MOVE                             R2 R0
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

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
       24 CAPTURE                          VAL R6
       25 NEWTABLE                         R10 0 2
       27 GETUPVAL                         R11 3
       28 MOVE                             R12 R6
       29 SETLIST                          R10 R11 2 [1]
       31 CALL                             R8 2 1
       32 NEWTABLE                         R9 0 0
       34 MOVE                             R10 R8
       35 LOADNIL                          R11
       36 LOADNIL                          R12
       37 FORGPREP                         R10
       38 DUPTABLE                         R17 K8 [{"Id", "Label"}]
       39 GETTABLEKS                       R18 R14 K9 ["animationId"]
       41 SETTABLEKS                       R18 R17 K6 ["Id"]
       43 GETTABLEKS                       R19 R14 K10 ["isCustom"]
       45 JUMPIFNOT                        R19 ; [+3]
       46 GETTABLEKS                       R18 R14 K11 ["name"]
       48 JUMP                             ; [+6]
       49 LOADK                            R20 K12 ["Animation"]
       50 GETTABLEKS                       R21 R14 K11 ["name"]
       52 NAMECALL                         R18 R1 K13 ["getText"]
       54 CALL                             R18 3 1
       55 SETTABLEKS                       R18 R17 K7 ["Label"]
       57 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       59 MOVE                             R16 R9
       60 GETIMPORT                        R15 K16 [table.insert]
       62 CALL                             R15 2 0
       63 FORGLOOP                         R10 2 ; [-26]
       65 DUPTABLE                         R12 K18 [{["Id"] = "__add_custom__", ["Label"]}]
       66 LOADK                            R15 K12 ["Animation"]
       67 LOADK                            R16 K19 ["AddCustom"]
       68 NAMECALL                         R13 R1 K13 ["getText"]
       70 CALL                             R13 3 1
       71 SETTABLEKS                       R13 R12 K7 ["Label"]
       73 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
       75 MOVE                             R11 R9
       76 GETIMPORT                        R10 K16 [table.insert]
       78 CALL                             R10 2 0
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R10 R10 K4 ["useState"]
       82 GETUPVAL                         R12 3
       83 GETTABLEN                        R11 R12 1
       84 GETTABLEKS                       R11 R11 K9 ["animationId"]
       86 CALL                             R10 1 2
       87 GETUPVAL                         R12 4
       88 GETTABLEKS                       R12 R12 K20 ["useToggleState"]
       90 CALL                             R12 0 1
       91 GETUPVAL                         R13 2
       92 GETTABLEKS                       R13 R13 K21 ["useRef"]
       94 GETTABLEKS                       R14 R12 K22 ["enabled"]
       96 CALL                             R13 1 1
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R14 R14 K23 ["useEffect"]
      100 NEWCLOSURE                       R15 P2
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R0
      104 NEWTABLE                         R16 0 1
      106 GETTABLEKS                       R17 R12 K22 ["enabled"]
      108 SETLIST                          R16 R17 1 [1]
      110 CALL                             R14 2 0
      111 NEWTABLE                         R14 0 2
      113 DUPTABLE                         R15 K29 [{["Type"] = "Dropdown", ["Items"], ["OnChange"], ["Value"]}]
      114 SETTABLEKS                       R9 R15 K26 ["Items"]
      116 NEWCLOSURE                       R16 P3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R7
      122 SETTABLEKS                       R16 R15 K27 ["OnChange"]
      124 SETTABLEKS                       R10 R15 K28 ["Value"]
      126 DUPTABLE                         R16 K34 [{["Type"] = "Button", ["Tooltip"], ["Icon"], ["OnClick"]}]
      127 LOADK                            R19 K12 ["Animation"]
      128 GETTABLEKS                       R21 R12 K22 ["enabled"]
      130 JUMPIFNOT                        R21 ; [+2]
      131 LOADK                            R20 K35 ["Pause"]
      132 JUMP                             ; [+1]
      133 LOADK                            R20 K36 ["Play"]
      134 NAMECALL                         R17 R1 K13 ["getText"]
      136 CALL                             R17 3 1
      137 SETTABLEKS                       R17 R16 K31 ["Tooltip"]
      139 GETUPVAL                         R17 2
      140 GETTABLEKS                       R17 R17 K37 ["createElement"]
      142 GETUPVAL                         R18 5
      143 GETTABLEKS                       R18 R18 K32 ["Icon"]
      145 DUPTABLE                         R19 K39 [{"name", "size"}]
      146 GETTABLEKS                       R21 R12 K22 ["enabled"]
      148 JUMPIFNOT                        R21 ; [+8]
      149 GETUPVAL                         R20 5
      150 GETTABLEKS                       R20 R20 K40 ["Enums"]
      152 GETTABLEKS                       R20 R20 K41 ["IconName"]
      154 GETTABLEKS                       R20 R20 K42 ["StopSmall"]
      156 JUMP                             ; [+7]
      157 GETUPVAL                         R20 5
      158 GETTABLEKS                       R20 R20 K40 ["Enums"]
      160 GETTABLEKS                       R20 R20 K41 ["IconName"]
      162 GETTABLEKS                       R20 R20 K43 ["PlaySmall"]
      164 SETTABLEKS                       R20 R19 K11 ["name"]
      166 GETUPVAL                         R20 5
      167 GETTABLEKS                       R20 R20 K40 ["Enums"]
      169 GETTABLEKS                       R20 R20 K44 ["IconSize"]
      171 GETTABLEKS                       R20 R20 K45 ["Large"]
      173 SETTABLEKS                       R20 R19 K38 ["size"]
      175 CALL                             R17 2 1
      176 SETTABLEKS                       R17 R16 K32 ["Icon"]
      178 NEWCLOSURE                       R17 P4
      179 CAPTURE                          VAL R12
      180 SETTABLEKS                       R17 R16 K33 ["OnClick"]
      182 SETLIST                          R14 R15 2 [1]
      184 NEWCLOSURE                       R15 P5
      185 CAPTURE                          VAL R12
      186 MOVE                             R16 R14
      187 MOVE                             R17 R10
      188 GETTABLEKS                       R18 R12 K22 ["enabled"]
      190 MOVE                             R19 R15
      191 RETURN                           R16 4

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
       50 NEWTABLE                         R7 0 12
       52 DUPTABLE                         R8 K21 [{["name"] = "Fingers", ["animationId"] = "rbxassetid://136513471557343"}]
       53 DUPTABLE                         R9 K24 [{["name"] = "Fingers2", ["animationId"] = "rbxassetid://136999742662447"}]
       54 DUPTABLE                         R10 K27 [{["name"] = "Run", ["animationId"] = "rbxassetid://15627704599"}]
       55 DUPTABLE                         R11 K30 [{["name"] = "Walk", ["animationId"] = "rbxassetid://11600249883"}]
       56 DUPTABLE                         R12 K33 [{["name"] = "Wave", ["animationId"] = "rbxassetid://507770239"}]
       57 DUPTABLE                         R13 K36 [{["name"] = "Idle2", ["animationId"] = "rbxassetid://17173014241"}]
       58 DUPTABLE                         R14 K39 [{["name"] = "Cheer", ["animationId"] = "rbxassetid://4841405708"}]
       59 DUPTABLE                         R15 K42 [{["name"] = "Dance", ["animationId"] = "rbxassetid://3695300085"}]
       60 DUPTABLE                         R16 K45 [{["name"] = "Idle1", ["animationId"] = "rbxassetid://17172918855"}]
       61 DUPTABLE                         R17 K48 [{["name"] = "Climb", ["animationId"] = "rbxassetid://11600205519"}]
       62 DUPTABLE                         R18 K51 [{["name"] = "Laugh", ["animationId"] = "rbxassetid://507770818"}]
       63 DUPTABLE                         R19 K54 [{["name"] = "Swim", ["animationId"] = "rbxassetid://11600212676"}]
       64 SETLIST                          R7 R8 12 [1]
       66 DUPCLOSURE                       R8 K55 [PROTO_8]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R3
       73 RETURN                           R8 1
