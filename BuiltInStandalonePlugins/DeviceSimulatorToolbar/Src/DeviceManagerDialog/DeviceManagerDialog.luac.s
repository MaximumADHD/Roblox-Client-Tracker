PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R1 K0 ["%* %*"]
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["suffix"]
        5 NAMECALL                         R1 R1 K2 ["format"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R1 K0 ["%* %*"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["prefix"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["format"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K20 [{[1], ["label"] = "", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"], ["maximum"], ["precision"], ["step"], ["formatAsString"], ["controlsVariant"], ["hasControls"] = False, ["variant"], ["width"], ["size"], ["testId"]}]
        3 GETTABLEKS                       R4 R0 K0 ["LayoutOrder"]
        5 SETTABLEKS                       R4 R3 K0 ["LayoutOrder"]
        7 GETTABLEKS                       R4 R0 K3 ["value"]
        9 SETTABLEKS                       R4 R3 K3 ["value"]
       11 GETTABLEKS                       R4 R0 K4 ["onChanged"]
       13 SETTABLEKS                       R4 R3 K4 ["onChanged"]
       15 GETTABLEKS                       R4 R0 K5 ["isDisabled"]
       17 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       19 GETTABLEKS                       R4 R0 K6 ["hasError"]
       21 SETTABLEKS                       R4 R3 K6 ["hasError"]
       23 GETTABLEKS                       R4 R0 K7 ["hint"]
       25 SETTABLEKS                       R4 R3 K7 ["hint"]
       27 GETTABLEKS                       R4 R0 K8 ["minimum"]
       29 SETTABLEKS                       R4 R3 K8 ["minimum"]
       31 GETTABLEKS                       R4 R0 K9 ["maximum"]
       33 SETTABLEKS                       R4 R3 K9 ["maximum"]
       35 GETTABLEKS                       R5 R0 K10 ["precision"]
       37 ORK                              R4 R5 K21 [0]
       38 SETTABLEKS                       R4 R3 K10 ["precision"]
       40 GETTABLEKS                       R5 R0 K11 ["step"]
       42 ORK                              R4 R5 K22 [1]
       43 SETTABLEKS                       R4 R3 K11 ["step"]
       45 GETTABLEKS                       R5 R0 K23 ["suffix"]
       47 JUMPIFNOT                        R5 ; [+3]
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          VAL R0
       50 JUMP                             ; [+7]
       51 GETTABLEKS                       R5 R0 K24 ["prefix"]
       53 JUMPIFNOT                        R5 ; [+3]
       54 NEWCLOSURE                       R4 P1
       55 CAPTURE                          VAL R0
       56 JUMP                             ; [+1]
       57 LOADNIL                          R4
       58 SETTABLEKS                       R4 R3 K12 ["formatAsString"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K25 ["None"]
       63 SETTABLEKS                       R4 R3 K13 ["controlsVariant"]
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R4 R4 K26 ["Contrast"]
       68 SETTABLEKS                       R4 R3 K16 ["variant"]
       70 GETIMPORT                        R4 K29 [UDim.new]
       72 LOADN                            R5 1
       73 LOADN                            R6 0
       74 CALL                             R4 2 1
       75 SETTABLEKS                       R4 R3 K17 ["width"]
       77 GETUPVAL                         R4 4
       78 GETTABLEKS                       R4 R4 K30 ["Small"]
       80 SETTABLEKS                       R4 R3 K18 ["size"]
       82 GETTABLEKS                       R4 R0 K19 ["testId"]
       84 SETTABLEKS                       R4 R3 K19 ["testId"]
       86 CALL                             R1 2 -1
       87 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K8 [{["LayoutOrder"] = 1, ["Size"], ["sizeConstraint"], ["tag"] = "row align-y-center auto-y"}]
        9 GETIMPORT                        R5 K11 [UDim2.fromOffset]
       11 LOADN                            R6 100
       12 LOADN                            R7 0
       13 CALL                             R5 2 1
       14 SETTABLEKS                       R5 R4 K4 ["Size"]
       16 DUPTABLE                         R5 K13 [{"MinSize"}]
       17 GETIMPORT                        R6 K16 [Vector2.new]
       19 LOADN                            R7 0
       20 GETTABLEKS                       R8 R1 K4 ["Size"]
       22 GETTABLEKS                       R8 R8 K17 ["Size_800"]
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K12 ["MinSize"]
       27 SETTABLEKS                       R5 R4 K5 ["sizeConstraint"]
       29 DUPTABLE                         R5 K19 [{"Label"}]
       30 GETUPVAL                         R6 1
       31 GETUPVAL                         R7 3
       32 DUPTABLE                         R8 K23 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-default", ["testId"]}]
       33 GETTABLEKS                       R9 R0 K24 ["text"]
       35 SETTABLEKS                       R9 R8 K20 ["Text"]
       37 GETTABLEKS                       R9 R0 K22 ["testId"]
       39 SETTABLEKS                       R9 R8 K22 ["testId"]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K18 ["Label"]
       44 CALL                             R2 3 -1
       45 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagDeviceSimulatorDeviceManagerFormAlignment"]
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+33]
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 DUPTABLE                         R6 K4 [{["LayoutOrder"], ["tag"] = "row gap-medium size-full-0 auto-y"}]
        8 SETTABLEKS                       R2 R6 K1 ["LayoutOrder"]
       10 DUPTABLE                         R7 K7 [{"Label", "Control"}]
       11 GETUPVAL                         R8 1
       12 GETUPVAL                         R9 3
       13 DUPTABLE                         R10 K10 [{"text", "testId"}]
       14 SETTABLEKS                       R0 R10 K8 ["text"]
       16 JUMPIFNOT                        R3 ; [+6]
       17 LOADK                            R11 K11 ["%*-label"]
       18 MOVE                             R13 R3
       19 NAMECALL                         R11 R11 K12 ["format"]
       21 CALL                             R11 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R11
       24 SETTABLEKS                       R11 R10 K9 ["testId"]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K5 ["Label"]
       29 GETUPVAL                         R8 1
       30 GETUPVAL                         R9 2
       31 DUPTABLE                         R10 K15 [{["LayoutOrder"] = 2, ["tag"] = "fill auto-y"}]
       32 MOVE                             R11 R1
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K6 ["Control"]
       36 CALL                             R4 3 -1
       37 RETURN                           R4 -1
       38 GETUPVAL                         R4 1
       39 GETUPVAL                         R5 2
       40 DUPTABLE                         R6 K17 [{["LayoutOrder"], ["tag"] = "row gap-medium align-y-center size-full-0 auto-y"}]
       41 SETTABLEKS                       R2 R6 K1 ["LayoutOrder"]
       43 DUPTABLE                         R7 K7 [{"Label", "Control"}]
       44 GETUPVAL                         R8 1
       45 GETUPVAL                         R9 4
       46 DUPTABLE                         R10 K22 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["tag"] = "text-body-medium text-align-x-left auto-y content-default", ["testId"]}]
       47 SETTABLEKS                       R0 R10 K19 ["Text"]
       49 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       51 LOADN                            R12 100
       52 LOADN                            R13 0
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K20 ["Size"]
       56 JUMPIFNOT                        R3 ; [+6]
       57 LOADK                            R11 K11 ["%*-label"]
       58 MOVE                             R13 R3
       59 NAMECALL                         R11 R11 K12 ["format"]
       61 CALL                             R11 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R11
       64 SETTABLEKS                       R11 R10 K9 ["testId"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K5 ["Label"]
       69 GETUPVAL                         R8 1
       70 GETUPVAL                         R9 2
       71 DUPTABLE                         R10 K15 [{["LayoutOrder"] = 2, ["tag"] = "fill auto-y"}]
       72 MOVE                             R11 R1
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K6 ["Control"]
       76 CALL                             R4 3 -1
       77 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K4 [{"LayoutOrder", "Size", "AutomaticSize", "tag"}]
        3 SETTABLEKS                       R1 R5 K0 ["LayoutOrder"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETIMPORT                        R6 K7 [UDim2.new]
        8 MOVE                             R7 R2
        9 GETIMPORT                        R8 K9 [UDim.new]
       11 CALL                             R8 0 -1
       12 CALL                             R6 -1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K1 ["Size"]
       17 GETIMPORT                        R6 K12 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R6 R5 K2 ["AutomaticSize"]
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADNIL                          R6
       23 JUMP                             ; [+1]
       24 LOADK                            R6 K13 ["fill auto-y"]
       25 SETTABLEKS                       R6 R5 K3 ["tag"]
       27 MOVE                             R6 R0
       28 CALL                             R3 3 -1
       29 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{[1] = "row gap-small size-full-0 auto-y"}]
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+11]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["onTierSelected"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["onTierSelected"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 JUMPIFNOTEQKS                    R0 K4 ["custom-memory"] ; [+9]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["onCustomSelected"]
       22 JUMPIFNOT                        R1 ; [+4]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K5 ["onCustomSelected"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Root"]
        4 DUPTABLE                         R3 K16 [{["label"] = "", ["value"], ["items"], ["onItemChanged"], ["isDisabled"], ["hasError"], ["hint"], ["width"], ["size"], ["variant"], ["maxHeight"] = 250, ["testId"] = "device-memory"}]
        5 GETTABLEKS                       R4 R0 K3 ["value"]
        7 SETTABLEKS                       R4 R3 K3 ["value"]
        9 GETTABLEKS                       R4 R0 K4 ["items"]
       11 SETTABLEKS                       R4 R3 K4 ["items"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K5 ["onItemChanged"]
       17 GETTABLEKS                       R4 R0 K6 ["isDisabled"]
       19 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       21 GETTABLEKS                       R4 R0 K7 ["hasError"]
       23 SETTABLEKS                       R4 R3 K7 ["hasError"]
       25 GETTABLEKS                       R4 R0 K8 ["hint"]
       27 SETTABLEKS                       R4 R3 K8 ["hint"]
       29 GETIMPORT                        R4 K19 [UDim.new]
       31 LOADN                            R5 1
       32 LOADN                            R6 0
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K9 ["width"]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K20 ["Small"]
       39 SETTABLEKS                       R4 R3 K10 ["size"]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K21 ["Contrast"]
       44 SETTABLEKS                       R4 R3 K11 ["variant"]
       46 CALL                             R1 2 -1
       47 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nominalMemoryOf"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K6 [{["id"] = "current-memory", ["text"], ["isDisabled"] = True}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K7 ["formatMemory"]
        9 MOVE                             R4 R1
       10 JUMPIF                           R4 ; [+2]
       11 GETTABLEKS                       R4 R0 K8 ["memoryMB"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K3 ["text"]
       16 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["info"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["nominalMemoryOf"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K2 ["isCustom"]
        9 JUMPIF                           R3 ; [+30]
       10 JUMPIFNOTEQKNIL                  R2 ; [+3]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 1
       15 DUPTABLE                         R4 K8 [{["items"], ["value"] = "current-memory", ["isDisabled"] = True}]
       16 NEWTABLE                         R5 0 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K1 ["nominalMemoryOf"]
       21 MOVE                             R8 R1
       22 CALL                             R7 1 1
       23 DUPTABLE                         R6 K11 [{["id"] = "current-memory", ["text"], ["isDisabled"] = True}]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K12 ["formatMemory"]
       27 MOVE                             R9 R7
       28 JUMPIF                           R9 ; [+2]
       29 GETTABLEKS                       R9 R1 K13 ["memoryMB"]
       31 CALL                             R8 1 1
       32 SETTABLEKS                       R8 R6 K10 ["text"]
       34 SETLIST                          R5 R6 1 [1]
       36 SETTABLEKS                       R5 R4 K3 ["items"]
       38 CALL                             R3 1 -1
       39 RETURN                           R3 -1
       40 GETTABLEKS                       R3 R0 K14 ["memoryTiersByPlatform"]
       42 JUMPIFNOTEQKNIL                  R3 ; [+3]
       44 LOADNIL                          R3
       45 RETURN                           R3 1
       46 GETTABLEKS                       R3 R1 K15 ["platform"]
       48 GETIMPORT                        R4 K19 [Enum.Platform.None]
       50 JUMPIFNOTEQ                      R3 R4 ; [+27]
       52 GETUPVAL                         R3 1
       53 DUPTABLE                         R4 K8 [{["items"], ["value"] = "current-memory", ["isDisabled"] = True}]
       54 NEWTABLE                         R5 0 1
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K1 ["nominalMemoryOf"]
       59 MOVE                             R8 R1
       60 CALL                             R7 1 1
       61 DUPTABLE                         R6 K11 [{["id"] = "current-memory", ["text"], ["isDisabled"] = True}]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K12 ["formatMemory"]
       65 MOVE                             R9 R7
       66 JUMPIF                           R9 ; [+2]
       67 GETTABLEKS                       R9 R1 K13 ["memoryMB"]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R6 K10 ["text"]
       72 SETLIST                          R5 R6 1 [1]
       74 SETTABLEKS                       R5 R4 K3 ["items"]
       76 CALL                             R3 1 -1
       77 RETURN                           R3 -1
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R3 R3 K20 ["memoryTiersFor"]
       81 GETTABLEKS                       R4 R0 K14 ["memoryTiersByPlatform"]
       83 GETTABLEKS                       R5 R1 K15 ["platform"]
       85 CALL                             R3 2 1
       86 JUMPIFNOTEQKNIL                  R3 ; [+3]
       88 LOADNIL                          R4
       89 RETURN                           R4 1
       90 NEWTABLE                         R4 0 0
       92 MOVE                             R5 R3
       93 LOADNIL                          R6
       94 LOADNIL                          R7
       95 FORGPREP                         R5
       96 DUPTABLE                         R12 K21 [{"id", "text"}]
       97 SETTABLEKS                       R9 R12 K9 ["id"]
       99 GETUPVAL                         R13 0
      100 GETTABLEKS                       R13 R13 K12 ["formatMemory"]
      102 MOVE                             R14 R9
      103 CALL                             R13 1 1
      104 SETTABLEKS                       R13 R12 K10 ["text"]
      106 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      108 MOVE                             R11 R4
      109 GETIMPORT                        R10 K24 [table.insert]
      111 CALL                             R10 2 0
      112 FORGLOOP                         R5 2 ; [-17]
      114 DUPTABLE                         R7 K26 [{["id"] = "custom-memory", ["text"]}]
      115 GETTABLEKS                       R8 R0 K27 ["customLabel"]
      117 SETTABLEKS                       R8 R7 K10 ["text"]
      119 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      121 MOVE                             R6 R4
      122 GETIMPORT                        R5 K24 [table.insert]
      124 CALL                             R5 2 0
      125 LOADB                            R5 0
      126 JUMPIFEQKNIL                     R2 ; [+10]
      128 GETIMPORT                        R6 K29 [table.find]
      130 MOVE                             R7 R3
      131 MOVE                             R8 R2
      132 CALL                             R6 2 1
      133 JUMPIFNOTEQKNIL                  R6 ; [+2]
      135 LOADB                            R5 0 +1
      136 LOADB                            R5 1
      137 GETTABLEKS                       R6 R0 K30 ["isCustomSelected"]
      139 JUMPIF                           R6 ; [+4]
      140 LOADB                            R6 0
      141 JUMPIFEQKNIL                     R2 ; [+2]
      143 NOT                              R6 R5
      144 MOVE                             R7 R2
      145 JUMPIF                           R7 ; [+2]
      146 GETTABLEKS                       R7 R1 K13 ["memoryMB"]
      148 JUMPIFNOT                        R6 ; [+2]
      149 LOADK                            R7 K25 ["custom-memory"]
      150 JUMP                             ; [+26]
      151 JUMPIFNOTEQKNIL                  R2 ; [+25]
      153 LOADN                            R10 1
      154 GETUPVAL                         R12 0
      155 GETTABLEKS                       R12 R12 K1 ["nominalMemoryOf"]
      157 MOVE                             R13 R1
      158 CALL                             R12 1 1
      159 DUPTABLE                         R11 K11 [{["id"] = "current-memory", ["text"], ["isDisabled"] = True}]
      160 GETUPVAL                         R13 0
      161 GETTABLEKS                       R13 R13 K12 ["formatMemory"]
      163 MOVE                             R14 R12
      164 JUMPIF                           R14 ; [+2]
      165 GETTABLEKS                       R14 R1 K13 ["memoryMB"]
      167 CALL                             R13 1 1
      168 SETTABLEKS                       R13 R11 K10 ["text"]
      170 FASTCALL3                        TABLE_INSERT R4 R10 R11
      172 MOVE                             R9 R4
      173 GETIMPORT                        R8 K24 [table.insert]
      175 CALL                             R8 3 0
      176 LOADK                            R7 K5 ["current-memory"]
      177 GETUPVAL                         R8 2
      178 GETUPVAL                         R9 3
      179 DUPTABLE                         R10 K33 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      180 DUPTABLE                         R11 K36 [{"Dropdown", "Custom"}]
      181 GETUPVAL                         R12 2
      182 GETUPVAL                         R13 3
      183 DUPTABLE                         R14 K40 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      184 GETUPVAL                         R15 1
      185 DUPTABLE                         R16 K46 [{["items"], ["value"], ["isDisabled"] = False, ["hasError"], ["hint"], ["onTierSelected"], ["onCustomSelected"]}]
      186 SETTABLEKS                       R4 R16 K3 ["items"]
      188 SETTABLEKS                       R7 R16 K4 ["value"]
      190 NOT                              R17 R6
      191 JUMPIFNOT                        R17 ; [+6]
      192 GETTABLEKS                       R18 R0 K47 ["memoryError"]
      194 JUMPIFNOTEQKNIL                  R18 ; [+2]
      196 LOADB                            R17 0 +1
      197 LOADB                            R17 1
      198 SETTABLEKS                       R17 R16 K42 ["hasError"]
      200 JUMPIFNOT                        R6 ; [+2]
      201 LOADNIL                          R17
      202 JUMP                             ; [+2]
      203 GETTABLEKS                       R17 R0 K47 ["memoryError"]
      205 SETTABLEKS                       R17 R16 K43 ["hint"]
      207 GETTABLEKS                       R17 R0 K44 ["onTierSelected"]
      209 SETTABLEKS                       R17 R16 K44 ["onTierSelected"]
      211 GETTABLEKS                       R17 R0 K45 ["onCustomSelected"]
      213 SETTABLEKS                       R17 R16 K45 ["onCustomSelected"]
      215 CALL                             R15 1 -1
      216 CALL                             R12 -1 1
      217 SETTABLEKS                       R12 R11 K34 ["Dropdown"]
      219 JUMPIFNOT                        R6 ; [+40]
      220 GETUPVAL                         R12 4
      221 DUPTABLE                         R13 K57 [{["LayoutOrder"] = 2, ["suffix"] = "GB", ["value"], ["precision"] = 1, ["onChanged"], ["hasError"], ["hint"], ["minimum"], ["maximum"], ["testId"] = "device-memory-custom"}]
      222 GETUPVAL                         R14 0
      223 GETTABLEKS                       R14 R14 K58 ["customMemoryGigabytes"]
      225 MOVE                             R15 R2
      226 JUMPIF                           R15 ; [+2]
      227 GETTABLEKS                       R15 R1 K13 ["memoryMB"]
      229 CALL                             R14 1 1
      230 SETTABLEKS                       R14 R13 K4 ["value"]
      232 GETTABLEKS                       R14 R0 K59 ["onCustomMemoryChanged"]
      234 SETTABLEKS                       R14 R13 K52 ["onChanged"]
      236 GETTABLEKS                       R15 R0 K47 ["memoryError"]
      238 JUMPIFNOTEQKNIL                  R15 ; [+2]
      240 LOADB                            R14 0 +1
      241 LOADB                            R14 1
      242 SETTABLEKS                       R14 R13 K42 ["hasError"]
      244 GETTABLEKS                       R14 R0 K47 ["memoryError"]
      246 SETTABLEKS                       R14 R13 K43 ["hint"]
      248 GETUPVAL                         R14 0
      249 GETTABLEKS                       R14 R14 K60 ["MIN_CUSTOM_MEMORY_GB"]
      251 SETTABLEKS                       R14 R13 K53 ["minimum"]
      253 GETUPVAL                         R14 0
      254 GETTABLEKS                       R14 R14 K61 ["MAX_CUSTOM_MEMORY_GB"]
      256 SETTABLEKS                       R14 R13 K54 ["maximum"]
      258 CALL                             R12 1 1
      259 JUMP                             ; [+1]
      260 LOADNIL                          R12
      261 SETTABLEKS                       R12 R11 K35 ["Custom"]
      263 CALL                             R8 3 -1
      264 RETURN                           R8 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R10 R0 K2 ["activeTab"]
       16 JUMPIFEQ                         R10 R8 ; [+2]
       18 LOADB                            R9 0 +1
       19 LOADB                            R9 1
       20 GETUPVAL                         R10 3
       21 GETUPVAL                         R11 4
       22 DUPTABLE                         R12 K9 [{["LayoutOrder"], ["tag"] = "col flex-y-between align-x-center fill size-full", ["onActivated"], ["selection"], ["testId"]}]
       23 SETTABLEKS                       R7 R12 K3 ["LayoutOrder"]
       25 NEWCLOSURE                       R13 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R8
       28 SETTABLEKS                       R13 R12 K6 ["onActivated"]
       30 DUPTABLE                         R13 K12 [{["Selectable"] = True}]
       31 SETTABLEKS                       R13 R12 K7 ["selection"]
       33 LOADK                            R13 K13 ["device-tab-%*"]
       34 MOVE                             R15 R8
       35 NAMECALL                         R13 R13 K14 ["format"]
       37 CALL                             R13 2 1
       38 SETTABLEKS                       R13 R12 K8 ["testId"]
       40 DUPTABLE                         R13 K17 [{"Content", "Indicator"}]
       41 GETUPVAL                         R14 3
       42 GETUPVAL                         R15 4
       43 DUPTABLE                         R16 K20 [{["LayoutOrder"] = 1, ["tag"] = "row gap-small align-x-center align-y-center fill size-full"}]
       44 DUPTABLE                         R17 K23 [{"Icon", "Label"}]
       45 GETUPVAL                         R18 3
       46 GETUPVAL                         R19 5
       47 DUPTABLE                         R20 K27 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"]}]
       48 GETUPVAL                         R22 6
       49 GETTABLE                         R21 R22 R8
       50 SETTABLEKS                       R21 R20 K24 ["name"]
       52 GETUPVAL                         R21 7
       53 GETTABLEKS                       R21 R21 K28 ["Medium"]
       55 SETTABLEKS                       R21 R20 K25 ["size"]
       57 JUMPIFNOT                        R9 ; [+7]
       58 GETTABLEKS                       R21 R2 K29 ["Color"]
       60 GETTABLEKS                       R21 R21 K15 ["Content"]
       62 GETTABLEKS                       R21 R21 K30 ["Default"]
       64 JUMP                             ; [+6]
       65 GETTABLEKS                       R21 R2 K29 ["Color"]
       67 GETTABLEKS                       R21 R21 K15 ["Content"]
       69 GETTABLEKS                       R21 R21 K31 ["Emphasis"]
       71 SETTABLEKS                       R21 R20 K26 ["style"]
       73 CALL                             R18 2 1
       74 SETTABLEKS                       R18 R17 K21 ["Icon"]
       76 GETUPVAL                         R18 3
       77 GETUPVAL                         R19 8
       78 DUPTABLE                         R20 K34 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
       79 LOADK                            R23 K35 ["DeviceManager"]
       80 GETUPVAL                         R25 9
       81 GETTABLE                         R24 R25 R8
       82 NAMECALL                         R21 R1 K36 ["getText"]
       84 CALL                             R21 3 1
       85 SETTABLEKS                       R21 R20 K33 ["Text"]
       87 NEWTABLE                         R21 4 0
       89 LOADB                            R22 1
       90 SETTABLEKS                       R22 R21 K37 ["text-title-medium auto-xy"]
       92 SETTABLEKS                       R9 R21 K38 ["content-default"]
       94 NOT                              R22 R9
       95 SETTABLEKS                       R22 R21 K39 ["content-emphasis"]
       97 SETTABLEKS                       R21 R20 K4 ["tag"]
       99 CALL                             R18 2 1
      100 SETTABLEKS                       R18 R17 K22 ["Label"]
      102 CALL                             R14 3 1
      103 SETTABLEKS                       R14 R13 K15 ["Content"]
      105 JUMPIFNOT                        R9 ; [+25]
      106 GETUPVAL                         R14 3
      107 GETUPVAL                         R15 4
      108 DUPTABLE                         R16 K43 [{["LayoutOrder"] = 2, ["Size"], ["backgroundStyle"], ["testId"] = "active-tab-indicator"}]
      109 GETIMPORT                        R17 K46 [UDim2.new]
      111 LOADN                            R18 1
      112 LOADN                            R19 0
      113 LOADN                            R20 0
      114 GETTABLEKS                       R21 R2 K47 ["Stroke"]
      116 GETTABLEKS                       R21 R21 K48 ["Thick"]
      118 CALL                             R17 4 1
      119 SETTABLEKS                       R17 R16 K40 ["Size"]
      121 GETTABLEKS                       R17 R2 K29 ["Color"]
      123 GETTABLEKS                       R17 R17 K49 ["System"]
      125 GETTABLEKS                       R17 R17 K50 ["Contrast"]
      127 SETTABLEKS                       R17 R16 K41 ["backgroundStyle"]
      129 CALL                             R14 2 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R14
      132 SETTABLEKS                       R14 R13 K16 ["Indicator"]
      134 CALL                             R10 3 1
      135 SETTABLE                         R10 R3 R8
      136 FORGLOOP                         R4 2 ; [-123]
      138 GETUPVAL                         R4 3
      139 GETUPVAL                         R5 4
      140 DUPTABLE                         R6 K53 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"] = "device-tabs"}]
      141 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
      143 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
      145 DUPTABLE                         R7 K56 [{"Tabs", "Divider"}]
      146 GETUPVAL                         R8 3
      147 GETUPVAL                         R9 4
      148 DUPTABLE                         R10 K58 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-1400"}]
      149 MOVE                             R11 R3
      150 CALL                             R8 3 1
      151 SETTABLEKS                       R8 R7 K54 ["Tabs"]
      153 GETUPVAL                         R8 3
      154 GETUPVAL                         R9 1
      155 GETTABLEKS                       R9 R9 K55 ["Divider"]
      157 DUPTABLE                         R10 K59 [{["LayoutOrder"] = 2}]
      158 CALL                             R8 2 1
      159 SETTABLEKS                       R8 R7 K55 ["Divider"]
      161 CALL                             R4 3 -1
      162 RETURN                           R4 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectDevice"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["draftId"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectDevice"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["draftId"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["deleteSelected"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hideStandard"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["draftId"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["addDevice"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["memoryTiersByPlatform"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 MOVE                             R2 R0
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
        7 CALL                             R3 0 1
        8 MOVE                             R4 R3
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETTABLEKS                       R5 R2 K2 ["activeTab"]
       12 JUMPIFEQKS                       R5 K3 ["mobile"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["visibleDevicesForTab"]
       19 MOVE                             R6 R2
       20 CALL                             R5 1 1
       21 NEWTABLE                         R6 0 0
       23 NEWTABLE                         R7 0 0
       25 GETTABLEKS                       R9 R2 K5 ["selectedByTab"]
       27 GETTABLEKS                       R10 R2 K2 ["activeTab"]
       29 GETTABLE                         R8 R9 R10
       30 MOVE                             R9 R5
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 GETTABLEKS                       R14 R13 K6 ["info"]
       36 GETTABLEKS                       R16 R13 K7 ["draftId"]
       38 JUMPIFEQ                         R8 R16 ; [+2]
       40 LOADB                            R15 0 +1
       41 LOADB                            R15 1
       42 GETUPVAL                         R16 3
       43 GETUPVAL                         R17 4
       44 DUPTABLE                         R18 K13 [{"LayoutOrder", "onActivated", "selection", "tag", "testId"}]
       45 SETTABLEKS                       R12 R18 K8 ["LayoutOrder"]
       47 NEWCLOSURE                       R19 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R13
       51 SETTABLEKS                       R19 R18 K9 ["onActivated"]
       53 DUPTABLE                         R19 K16 [{["Selectable"] = True}]
       54 SETTABLEKS                       R19 R18 K10 ["selection"]
       56 NEWTABLE                         R19 2 0
       58 LOADB                            R20 1
       59 SETTABLEKS                       R20 R19 K17 ["row flex-between align-y-center size-full-900 padding-x-small radius-small"]
       61 SETTABLEKS                       R15 R19 K18 ["bg-shift-200"]
       63 SETTABLEKS                       R19 R18 K11 ["tag"]
       65 LOADK                            R19 K19 ["device-%*"]
       66 GETTABLEKS                       R21 R13 K7 ["draftId"]
       68 NAMECALL                         R19 R19 K20 ["format"]
       70 CALL                             R19 2 1
       71 SETTABLEKS                       R19 R18 K12 ["testId"]
       73 DUPTABLE                         R19 K24 [{"Title", "Delete", "Hide"}]
       74 GETUPVAL                         R20 3
       75 GETUPVAL                         R21 5
       76 DUPTABLE                         R22 K28 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-body-medium text-align-x-left text-align-y-center text-truncate-end fill size-0-full content-emphasis"}]
       77 GETTABLEKS                       R23 R14 K29 ["deviceName"]
       79 SETTABLEKS                       R23 R22 K26 ["Text"]
       81 CALL                             R20 2 1
       82 SETTABLEKS                       R20 R19 K21 ["Title"]
       84 GETTABLEKS                       R21 R14 K30 ["isCustom"]
       86 JUMPIFNOT                        R21 ; [+31]
       87 GETUPVAL                         R20 3
       88 GETUPVAL                         R21 6
       89 DUPTABLE                         R22 K34 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"]}]
       90 GETUPVAL                         R23 7
       91 GETTABLEKS                       R23 R23 K35 ["Icon"]
       93 GETTABLEKS                       R23 R23 K36 ["TrashCan"]
       95 SETTABLEKS                       R23 R22 K32 ["icon"]
       97 GETUPVAL                         R23 8
       98 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      100 SETTABLEKS                       R23 R22 K33 ["size"]
      102 NEWCLOSURE                       R23 P1
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          VAL R13
      106 SETTABLEKS                       R23 R22 K9 ["onActivated"]
      108 LOADK                            R23 K38 ["delete-%*"]
      109 GETTABLEKS                       R25 R13 K7 ["draftId"]
      111 NAMECALL                         R23 R23 K20 ["format"]
      113 CALL                             R23 2 1
      114 SETTABLEKS                       R23 R22 K12 ["testId"]
      116 CALL                             R20 2 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R20
      119 SETTABLEKS                       R20 R19 K22 ["Delete"]
      121 JUMPIFNOT                        R4 ; [+34]
      122 GETTABLEKS                       R21 R14 K30 ["isCustom"]
      124 JUMPIF                           R21 ; [+31]
      125 GETUPVAL                         R20 3
      126 GETUPVAL                         R21 6
      127 DUPTABLE                         R22 K34 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"]}]
      128 GETUPVAL                         R23 7
      129 GETTABLEKS                       R23 R23 K35 ["Icon"]
      131 GETTABLEKS                       R23 R23 K39 ["X"]
      133 SETTABLEKS                       R23 R22 K32 ["icon"]
      135 GETUPVAL                         R23 8
      136 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      138 SETTABLEKS                       R23 R22 K33 ["size"]
      140 NEWCLOSURE                       R23 P2
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          VAL R13
      144 SETTABLEKS                       R23 R22 K9 ["onActivated"]
      146 LOADK                            R23 K40 ["hide-%*"]
      147 GETTABLEKS                       R25 R13 K7 ["draftId"]
      149 NAMECALL                         R23 R23 K20 ["format"]
      151 CALL                             R23 2 1
      152 SETTABLEKS                       R23 R22 K12 ["testId"]
      154 CALL                             R20 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R20
      157 SETTABLEKS                       R20 R19 K23 ["Hide"]
      159 CALL                             R16 3 1
      160 GETTABLEKS                       R17 R14 K30 ["isCustom"]
      162 JUMPIFNOT                        R17 ; [+4]
      163 GETTABLEKS                       R17 R13 K7 ["draftId"]
      165 SETTABLE                         R16 R6 R17
      166 JUMP                             ; [+3]
      167 GETTABLEKS                       R17 R13 K7 ["draftId"]
      169 SETTABLE                         R16 R7 R17
      170 FORGLOOP                         R9 2 ; [-137]
      172 GETUPVAL                         R9 3
      173 GETUPVAL                         R10 4
      174 DUPTABLE                         R11 K42 [{["tag"] = "col size-full-0 auto-y gap-xsmall padding-x-large padding-y-medium"}]
      175 DUPTABLE                         R12 K47 [{"CustomHeader", "CustomList", "StandardHeader", "StandardList"}]
      176 GETUPVAL                         R13 3
      177 GETUPVAL                         R14 4
      178 DUPTABLE                         R15 K49 [{["LayoutOrder"] = 1, ["tag"] = "row flex-between align-y-center size-full-0 auto-y"}]
      179 DUPTABLE                         R16 K51 [{"Title", "Add"}]
      180 GETUPVAL                         R17 3
      181 GETUPVAL                         R18 5
      182 DUPTABLE                         R19 K53 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-title-medium auto-xy"}]
      183 LOADK                            R22 K54 ["DeviceMenu"]
      184 LOADK                            R23 K55 ["Custom"]
      185 NAMECALL                         R20 R1 K56 ["getText"]
      187 CALL                             R20 3 1
      188 SETTABLEKS                       R20 R19 K26 ["Text"]
      190 CALL                             R17 2 1
      191 SETTABLEKS                       R17 R16 K21 ["Title"]
      193 GETUPVAL                         R17 3
      194 GETUPVAL                         R18 6
      195 DUPTABLE                         R19 K58 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"] = "add-device"}]
      196 GETUPVAL                         R20 7
      197 GETTABLEKS                       R20 R20 K35 ["Icon"]
      199 GETTABLEKS                       R20 R20 K59 ["PlusSmall"]
      201 SETTABLEKS                       R20 R19 K32 ["icon"]
      203 GETUPVAL                         R20 8
      204 GETTABLEKS                       R20 R20 K60 ["Small"]
      206 SETTABLEKS                       R20 R19 K33 ["size"]
      208 NEWCLOSURE                       R20 P3
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U2
      211 CAPTURE                          VAL R1
      212 SETTABLEKS                       R20 R19 K9 ["onActivated"]
      214 CALL                             R17 2 1
      215 SETTABLEKS                       R17 R16 K50 ["Add"]
      217 CALL                             R13 3 1
      218 SETTABLEKS                       R13 R12 K43 ["CustomHeader"]
      220 GETUPVAL                         R13 3
      221 GETUPVAL                         R14 4
      222 DUPTABLE                         R15 K62 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      223 MOVE                             R16 R6
      224 CALL                             R13 3 1
      225 SETTABLEKS                       R13 R12 K44 ["CustomList"]
      227 GETUPVAL                         R13 3
      228 GETUPVAL                         R14 4
      229 DUPTABLE                         R15 K64 [{["LayoutOrder"] = 3, ["tag"] = "row flex-between align-y-center size-full-0 auto-y"}]
      230 DUPTABLE                         R16 K51 [{"Title", "Add"}]
      231 GETUPVAL                         R17 3
      232 GETUPVAL                         R18 5
      233 DUPTABLE                         R19 K53 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-title-medium auto-xy"}]
      234 LOADK                            R22 K65 ["DeviceManager"]
      235 LOADK                            R23 K66 ["Standard"]
      236 NAMECALL                         R20 R1 K56 ["getText"]
      238 CALL                             R20 3 1
      239 SETTABLEKS                       R20 R19 K26 ["Text"]
      241 CALL                             R17 2 1
      242 SETTABLEKS                       R17 R16 K21 ["Title"]
      244 JUMPIFNOT                        R4 ; [+21]
      245 GETUPVAL                         R17 3
      246 GETUPVAL                         R18 6
      247 DUPTABLE                         R19 K68 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"] = "add-standard-devices"}]
      248 GETUPVAL                         R20 7
      249 GETTABLEKS                       R20 R20 K35 ["Icon"]
      251 GETTABLEKS                       R20 R20 K59 ["PlusSmall"]
      253 SETTABLEKS                       R20 R19 K32 ["icon"]
      255 GETUPVAL                         R20 8
      256 GETTABLEKS                       R20 R20 K60 ["Small"]
      258 SETTABLEKS                       R20 R19 K33 ["size"]
      260 GETTABLEKS                       R20 R0 K69 ["onAddDevices"]
      262 SETTABLEKS                       R20 R19 K9 ["onActivated"]
      264 CALL                             R17 2 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R17
      267 SETTABLEKS                       R17 R16 K50 ["Add"]
      269 CALL                             R13 3 1
      270 SETTABLEKS                       R13 R12 K45 ["StandardHeader"]
      272 GETUPVAL                         R13 3
      273 GETUPVAL                         R14 4
      274 DUPTABLE                         R15 K72 [{["LayoutOrder"] = 4, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-top-small"}]
      275 MOVE                             R16 R7
      276 CALL                             R13 3 1
      277 SETTABLEKS                       R13 R12 K46 ["StandardList"]
      279 CALL                             R9 3 -1
      280 RETURN                           R9 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSelected"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 MOVE                             R3 R1
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectMemoryTier"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setState"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 MOVE                             R3 R1
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["draftId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setCustomMemoryGigabytes"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FocusLost"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["setState"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 MOVE                             R4 R2
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R3
       15 CALL                             R4 1 0
       16 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setFreeformMemoryGigabytes"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 MOVE                             R3 R1
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setFreeformMemory"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_36:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["setState"]
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 MOVE                             R4 R2
       10 NEWCLOSURE                       R5 P2
       11 CAPTURE                          VAL R3
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_37:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setExpanded"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R0
        2 JUMPIFEQKB                       R5 TRUE ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R6 2
        8 DUPTABLE                         R7 K4 [{[1], ["tag"] = "col size-full-0 auto-y gap-xsmall", ["testId"]}]
        9 SETTABLEKS                       R2 R7 K0 ["LayoutOrder"]
       11 LOADK                            R8 K5 ["device-settings-section-%*"]
       12 MOVE                             R10 R0
       13 NAMECALL                         R8 R8 K6 ["format"]
       15 CALL                             R8 2 1
       16 SETTABLEKS                       R8 R7 K3 ["testId"]
       18 DUPTABLE                         R8 K9 [{"Header", "Content"}]
       19 GETUPVAL                         R9 1
       20 GETUPVAL                         R10 2
       21 DUPTABLE                         R11 K14 [{[1] = 1, ["tag"] = "row gap-xsmall align-y-center size-full-600", ["onActivated"], ["selection"], ["testId"]}]
       22 NEWCLOSURE                       R12 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R12 R11 K12 ["onActivated"]
       27 DUPTABLE                         R12 K17 [{["Selectable"] = True}]
       28 SETTABLEKS                       R12 R11 K13 ["selection"]
       30 LOADK                            R12 K18 ["device-settings-section-%*-header"]
       31 MOVE                             R14 R0
       32 NAMECALL                         R12 R12 K6 ["format"]
       34 CALL                             R12 2 1
       35 SETTABLEKS                       R12 R11 K3 ["testId"]
       37 DUPTABLE                         R12 K21 [{"Chevron", "Label"}]
       38 GETUPVAL                         R13 1
       39 GETUPVAL                         R14 4
       40 DUPTABLE                         R15 K24 [{[1] = 1, ["name"], ["size"], ["testId"]}]
       41 JUMPIFNOT                        R4 ; [+6]
       42 GETUPVAL                         R16 5
       43 GETTABLEKS                       R16 R16 K25 ["Icon"]
       45 GETTABLEKS                       R16 R16 K26 ["ChevronSmallDown"]
       47 JUMP                             ; [+5]
       48 GETUPVAL                         R16 5
       49 GETTABLEKS                       R16 R16 K25 ["Icon"]
       51 GETTABLEKS                       R16 R16 K27 ["ChevronSmallRight"]
       53 SETTABLEKS                       R16 R15 K22 ["name"]
       55 GETUPVAL                         R16 6
       56 GETTABLEKS                       R16 R16 K28 ["XSmall"]
       58 SETTABLEKS                       R16 R15 K23 ["size"]
       60 LOADK                            R16 K29 ["device-settings-section-%*-chevron"]
       61 MOVE                             R18 R0
       62 NAMECALL                         R16 R16 K6 ["format"]
       64 CALL                             R16 2 1
       65 SETTABLEKS                       R16 R15 K3 ["testId"]
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K19 ["Chevron"]
       70 GETUPVAL                         R13 1
       71 GETUPVAL                         R14 7
       72 DUPTABLE                         R15 K33 [{[1] = 2, ["Text"], ["tag"] = "text-title-small auto-xy content-emphasis"}]
       73 SETTABLEKS                       R1 R15 K31 ["Text"]
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K20 ["Label"]
       78 CALL                             R9 3 1
       79 SETTABLEKS                       R9 R8 K7 ["Header"]
       81 JUMPIFNOT                        R4 ; [+6]
       82 GETUPVAL                         R9 1
       83 GETUPVAL                         R10 2
       84 DUPTABLE                         R11 K35 [{[1] = 2, ["tag"] = "size-full-0 auto-y padding-left-small"}]
       85 MOVE                             R12 R3
       86 CALL                             R9 3 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R9
       89 SETTABLEKS                       R9 R8 K8 ["Content"]
       91 CALL                             R5 3 -1
       92 RETURN                           R5 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["deviceName"]
        3 RETURN                           R0 0

PROTO_41:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectPlatform"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["memoryTiersByPlatform"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_43:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+8]
        7 GETIMPORT                        R1 K5 [Enum.Platform]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K6 ["FromValue"]
       12 CALL                             R1 2 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R1
       15 JUMPIFNOT                        R1 ; [+11]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K7 ["setState"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U0
       23 MOVE                             R4 R2
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R3
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["width"]
        3 RETURN                           R0 0

PROTO_45:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["height"]
        3 RETURN                           R0 0

PROTO_47:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["dpi"]
        3 RETURN                           R0 0

PROTO_49:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["portraitKeyboardHeight"]
        3 RETURN                           R0 0

PROTO_51:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["landscapeKeyboardHeight"]
        3 RETURN                           R0 0

PROTO_53:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETTABLEKS                       R4 R0 K1 ["state"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["getSelected"]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 1
       14 JUMPIF                           R5 ; [+19]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 DUPTABLE                         R8 K5 [{["tag"] = "size-full align-x-center align-y-center"}]
       18 DUPTABLE                         R9 K7 [{"Empty"}]
       19 GETUPVAL                         R10 3
       20 GETUPVAL                         R11 5
       21 DUPTABLE                         R12 K10 [{["Text"], ["tag"] = "text-body-medium content-muted auto-xy"}]
       22 LOADK                            R15 K11 ["DeviceManager"]
       23 LOADK                            R16 K12 ["EmptyState"]
       24 NAMECALL                         R13 R1 K13 ["getText"]
       26 CALL                             R13 3 1
       27 SETTABLEKS                       R13 R12 K8 ["Text"]
       29 CALL                             R10 2 1
       30 SETTABLEKS                       R10 R9 K6 ["Empty"]
       32 CALL                             R6 3 -1
       33 RETURN                           R6 -1
       34 GETTABLEKS                       R6 R5 K14 ["info"]
       36 GETTABLEKS                       R7 R6 K15 ["isCustom"]
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K16 ["validate"]
       41 MOVE                             R9 R4
       42 MOVE                             R10 R1
       43 CALL                             R8 2 2
       44 GETTABLEKS                       R11 R5 K17 ["draftId"]
       46 GETTABLE                         R10 R9 R11
       47 NEWCLOSURE                       R11 P0
       48 CAPTURE                          VAL R10
       49 JUMPIFNOT                        R10 ; [+3]
       50 GETTABLEKS                       R12 R10 K18 ["deviceName"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R12
       54 JUMPIFNOT                        R10 ; [+3]
       55 GETTABLEKS                       R13 R10 K19 ["width"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R13
       59 JUMPIFNOT                        R10 ; [+3]
       60 GETTABLEKS                       R14 R10 K20 ["height"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R14
       64 JUMPIFNOT                        R10 ; [+3]
       65 GETTABLEKS                       R15 R10 K21 ["dpi"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R15
       69 JUMPIFNOT                        R10 ; [+3]
       70 GETTABLEKS                       R16 R10 K22 ["memoryMB"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R16
       74 JUMPIFNOT                        R10 ; [+3]
       75 GETTABLEKS                       R17 R10 K23 ["portraitKeyboardHeight"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R17
       79 JUMPIFNOT                        R10 ; [+3]
       80 GETTABLEKS                       R18 R10 K24 ["landscapeKeyboardHeight"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R18
       84 GETTABLEKS                       R19 R0 K25 ["expanded"]
       86 NEWCLOSURE                       R20 P1
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U2
       89 GETUPVAL                         R21 6
       90 GETTABLEKS                       R21 R21 K26 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       92 CALL                             R21 0 1
       93 LOADNIL                          R22
       94 GETUPVAL                         R23 6
       95 GETTABLEKS                       R23 R23 K26 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       97 CALL                             R23 0 1
       98 JUMPIFNOT                        R23 ; [+44]
       99 GETUPVAL                         R23 7
      100 DUPTABLE                         R24 K34 [{"info", "memoryTiersByPlatform", "memoryError", "onTierSelected", "customLabel", "isCustomSelected", "onCustomSelected", "onCustomMemoryChanged"}]
      101 SETTABLEKS                       R6 R24 K14 ["info"]
      103 GETTABLEKS                       R25 R0 K27 ["memoryTiersByPlatform"]
      105 SETTABLEKS                       R25 R24 K27 ["memoryTiersByPlatform"]
      107 SETTABLEKS                       R16 R24 K28 ["memoryError"]
      109 NEWCLOSURE                       R25 P2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U2
      113 SETTABLEKS                       R25 R24 K29 ["onTierSelected"]
      115 LOADK                            R27 K35 ["SimulatorPreset"]
      116 LOADK                            R28 K36 ["Custom"]
      117 NAMECALL                         R25 R1 K13 ["getText"]
      119 CALL                             R25 3 1
      120 SETTABLEKS                       R25 R24 K30 ["customLabel"]
      122 GETTABLEKS                       R26 R5 K17 ["draftId"]
      124 JUMPIFEQ                         R2 R26 ; [+2]
      126 LOADB                            R25 0 +1
      127 LOADB                            R25 1
      128 SETTABLEKS                       R25 R24 K31 ["isCustomSelected"]
      130 NEWCLOSURE                       R25 P3
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R5
      133 SETTABLEKS                       R25 R24 K32 ["onCustomSelected"]
      135 NEWCLOSURE                       R25 P4
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U2
      139 SETTABLEKS                       R25 R24 K33 ["onCustomMemoryChanged"]
      141 CALL                             R23 1 1
      142 MOVE                             R22 R23
      143 JUMPIFNOTEQKNIL                  R22 ; [+44]
      145 GETUPVAL                         R23 6
      146 GETTABLEKS                       R23 R23 K26 ["getEngineFeatureDeviceSimulatorNominalMemory"]
      148 CALL                             R23 0 1
      149 JUMPIFNOT                        R23 ; [+38]
      150 GETUPVAL                         R23 9
      151 DUPTABLE                         R24 K52 [{["suffix"] = "GB", ["value"], ["precision"] = 1, ["step"] = 0.1, ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"], ["maximum"], ["testId"] = "device-memory"}]
      152 GETUPVAL                         R25 2
      153 GETTABLEKS                       R25 R25 K53 ["customMemoryGigabytes"]
      155 GETTABLEKS                       R26 R6 K22 ["memoryMB"]
      157 CALL                             R25 1 1
      158 SETTABLEKS                       R25 R24 K39 ["value"]
      160 NEWCLOSURE                       R25 P5
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U2
      163 SETTABLEKS                       R25 R24 K44 ["onChanged"]
      165 NOT                              R25 R7
      166 SETTABLEKS                       R25 R24 K45 ["isDisabled"]
      168 JUMPIFNOTEQKNIL                  R16 ; [+2]
      170 LOADB                            R25 0 +1
      171 LOADB                            R25 1
      172 SETTABLEKS                       R25 R24 K46 ["hasError"]
      174 SETTABLEKS                       R16 R24 K47 ["hint"]
      176 GETUPVAL                         R25 2
      177 GETTABLEKS                       R25 R25 K54 ["MIN_CUSTOM_MEMORY_GB"]
      179 SETTABLEKS                       R25 R24 K48 ["minimum"]
      181 GETUPVAL                         R25 2
      182 GETTABLEKS                       R25 R25 K55 ["MAX_CUSTOM_MEMORY_GB"]
      184 SETTABLEKS                       R25 R24 K49 ["maximum"]
      186 CALL                             R23 1 1
      187 MOVE                             R22 R23
      188 JUMPIFNOTEQKNIL                  R22 ; [+25]
      190 GETUPVAL                         R23 9
      191 DUPTABLE                         R24 K60 [{["prefix"] = "MB", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 0, ["maximum"] = 1048576, ["testId"] = "device-memory"}]
      192 GETTABLEKS                       R25 R6 K22 ["memoryMB"]
      194 SETTABLEKS                       R25 R24 K39 ["value"]
      196 NEWCLOSURE                       R25 P6
      197 CAPTURE                          UPVAL U2
      198 CAPTURE                          VAL R0
      199 SETTABLEKS                       R25 R24 K44 ["onChanged"]
      201 NOT                              R25 R7
      202 SETTABLEKS                       R25 R24 K45 ["isDisabled"]
      204 JUMPIFNOTEQKNIL                  R16 ; [+2]
      206 LOADB                            R25 0 +1
      207 LOADB                            R25 1
      208 SETTABLEKS                       R25 R24 K46 ["hasError"]
      210 SETTABLEKS                       R16 R24 K47 ["hint"]
      212 CALL                             R23 1 1
      213 MOVE                             R22 R23
      214 NEWCLOSURE                       R23 P7
      215 CAPTURE                          VAL R19
      216 CAPTURE                          UPVAL U3
      217 CAPTURE                          UPVAL U4
      218 CAPTURE                          VAL R0
      219 CAPTURE                          UPVAL U10
      220 CAPTURE                          UPVAL U11
      221 CAPTURE                          UPVAL U12
      222 CAPTURE                          UPVAL U5
      223 GETUPVAL                         R24 3
      224 GETUPVAL                         R25 4
      225 DUPTABLE                         R26 K63 [{["tag"] = "col size-full-0 auto-y gap-small padding-large", ["testId"] = "device-details-form"}]
      226 DUPTABLE                         R27 K67 [{"Name", "Platform", "Settings"}]
      227 GETUPVAL                         R28 13
      228 LOADK                            R31 K11 ["DeviceManager"]
      229 LOADK                            R32 K68 ["NameLabel"]
      230 NAMECALL                         R29 R1 K13 ["getText"]
      232 CALL                             R29 3 1
      233 GETUPVAL                         R30 3
      234 GETUPVAL                         R31 14
      235 DUPTABLE                         R32 K76 [{["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["width"], ["size"], ["variant"], ["testId"] = "device-name"}]
      236 GETTABLEKS                       R33 R6 K18 ["deviceName"]
      238 SETTABLEKS                       R33 R32 K71 ["text"]
      240 LOADK                            R35 K11 ["DeviceManager"]
      241 LOADK                            R36 K77 ["NamePlaceholder"]
      242 NAMECALL                         R33 R1 K13 ["getText"]
      244 CALL                             R33 3 1
      245 SETTABLEKS                       R33 R32 K72 ["placeholder"]
      247 NEWCLOSURE                       R33 P8
      248 CAPTURE                          VAL R0
      249 CAPTURE                          UPVAL U2
      250 SETTABLEKS                       R33 R32 K44 ["onChanged"]
      252 NOT                              R33 R7
      253 SETTABLEKS                       R33 R32 K45 ["isDisabled"]
      255 JUMPIFNOTEQKNIL                  R12 ; [+2]
      257 LOADB                            R33 0 +1
      258 LOADB                            R33 1
      259 SETTABLEKS                       R33 R32 K46 ["hasError"]
      261 SETTABLEKS                       R12 R32 K47 ["hint"]
      263 GETIMPORT                        R33 K80 [UDim.new]
      265 LOADN                            R34 1
      266 LOADN                            R35 0
      267 CALL                             R33 2 1
      268 SETTABLEKS                       R33 R32 K19 ["width"]
      270 GETUPVAL                         R33 15
      271 GETTABLEKS                       R33 R33 K81 ["Small"]
      273 SETTABLEKS                       R33 R32 K73 ["size"]
      275 GETUPVAL                         R33 16
      276 GETTABLEKS                       R33 R33 K82 ["Contrast"]
      278 SETTABLEKS                       R33 R32 K74 ["variant"]
      280 CALL                             R30 2 1
      281 LOADN                            R31 1
      282 LOADK                            R32 K75 ["device-name"]
      283 CALL                             R28 4 1
      284 SETTABLEKS                       R28 R27 K64 ["Name"]
      286 GETUPVAL                         R28 13
      287 LOADK                            R31 K11 ["DeviceManager"]
      288 LOADK                            R32 K65 ["Platform"]
      289 NAMECALL                         R29 R1 K13 ["getText"]
      291 CALL                             R29 3 1
      292 GETUPVAL                         R30 3
      293 GETUPVAL                         R31 17
      294 GETTABLEKS                       R31 R31 K83 ["Root"]
      296 DUPTABLE                         R32 K89 [{["label"] = "", ["value"], ["items"], ["onItemChanged"], ["isDisabled"], ["width"], ["size"], ["variant"], ["maxHeight"] = 250, ["testId"] = "device-platform"}]
      297 GETTABLEKS                       R33 R6 K90 ["platform"]
      299 GETTABLEKS                       R33 R33 K91 ["Value"]
      301 SETTABLEKS                       R33 R32 K39 ["value"]
      303 GETUPVAL                         R33 18
      304 SETTABLEKS                       R33 R32 K84 ["items"]
      306 NEWCLOSURE                       R33 P9
      307 CAPTURE                          VAL R0
      308 CAPTURE                          UPVAL U2
      309 SETTABLEKS                       R33 R32 K85 ["onItemChanged"]
      311 NOT                              R33 R7
      312 SETTABLEKS                       R33 R32 K45 ["isDisabled"]
      314 GETIMPORT                        R33 K80 [UDim.new]
      316 LOADN                            R34 1
      317 LOADN                            R35 0
      318 CALL                             R33 2 1
      319 SETTABLEKS                       R33 R32 K19 ["width"]
      321 GETUPVAL                         R33 15
      322 GETTABLEKS                       R33 R33 K81 ["Small"]
      324 SETTABLEKS                       R33 R32 K73 ["size"]
      326 GETUPVAL                         R33 16
      327 GETTABLEKS                       R33 R33 K82 ["Contrast"]
      329 SETTABLEKS                       R33 R32 K74 ["variant"]
      331 CALL                             R30 2 1
      332 LOADN                            R31 2
      333 LOADK                            R32 K88 ["device-platform"]
      334 CALL                             R28 4 1
      335 SETTABLEKS                       R28 R27 K65 ["Platform"]
      337 GETUPVAL                         R28 3
      338 GETUPVAL                         R29 4
      339 DUPTABLE                         R30 K96 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "device-settings"}]
      340 DUPTABLE                         R31 K100 [{"Display", "Performance", "Keyboard"}]
      341 MOVE                             R32 R23
      342 LOADK                            R33 K101 ["display"]
      343 LOADK                            R36 K11 ["DeviceManager"]
      344 LOADK                            R37 K97 ["Display"]
      345 NAMECALL                         R34 R1 K13 ["getText"]
      347 CALL                             R34 3 1
      348 LOADN                            R35 1
      349 GETUPVAL                         R36 3
      350 GETUPVAL                         R37 4
      351 DUPTABLE                         R38 K103 [{["tag"] = "col gap-small size-full-0 auto-y padding-x-medium padding-y-small"}]
      352 DUPTABLE                         R39 K106 [{"Dimensions", "PixelDensity"}]
      353 GETUPVAL                         R40 13
      354 LOADK                            R43 K11 ["DeviceManager"]
      355 LOADK                            R44 K104 ["Dimensions"]
      356 NAMECALL                         R41 R1 K13 ["getText"]
      358 CALL                             R41 3 1
      359 DUPTABLE                         R43 K109 [{"Width", "Height"}]
      360 GETUPVAL                         R45 9
      361 DUPTABLE                         R46 K113 [{["prefix"] = "W", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 1, ["maximum"] = 7680, ["testId"] = "device-width"}]
      362 GETTABLEKS                       R47 R6 K19 ["width"]
      364 SETTABLEKS                       R47 R46 K39 ["value"]
      366 NEWCLOSURE                       R47 P10
      367 CAPTURE                          VAL R0
      368 CAPTURE                          UPVAL U2
      369 SETTABLEKS                       R47 R46 K44 ["onChanged"]
      371 NOT                              R47 R7
      372 SETTABLEKS                       R47 R46 K45 ["isDisabled"]
      374 JUMPIFNOTEQKNIL                  R13 ; [+2]
      376 LOADB                            R47 0 +1
      377 LOADB                            R47 1
      378 SETTABLEKS                       R47 R46 K46 ["hasError"]
      380 SETTABLEKS                       R13 R46 K47 ["hint"]
      382 CALL                             R45 1 1
      383 GETUPVAL                         R46 3
      384 GETUPVAL                         R47 4
      385 DUPTABLE                         R48 K118 [{["LayoutOrder"] = 1, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      386 GETIMPORT                        R49 K121 [Enum.AutomaticSize.Y]
      388 SETTABLEKS                       R49 R48 K116 ["AutomaticSize"]
      390 MOVE                             R49 R45
      391 CALL                             R46 3 1
      392 MOVE                             R44 R46
      393 SETTABLEKS                       R44 R43 K107 ["Width"]
      395 GETUPVAL                         R45 9
      396 DUPTABLE                         R46 K125 [{["prefix"] = "H", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 1, ["maximum"] = 4320, ["testId"] = "device-height"}]
      397 GETTABLEKS                       R47 R6 K20 ["height"]
      399 SETTABLEKS                       R47 R46 K39 ["value"]
      401 NEWCLOSURE                       R47 P11
      402 CAPTURE                          VAL R0
      403 CAPTURE                          UPVAL U2
      404 SETTABLEKS                       R47 R46 K44 ["onChanged"]
      406 NOT                              R47 R7
      407 SETTABLEKS                       R47 R46 K45 ["isDisabled"]
      409 JUMPIFNOTEQKNIL                  R14 ; [+2]
      411 LOADB                            R47 0 +1
      412 LOADB                            R47 1
      413 SETTABLEKS                       R47 R46 K46 ["hasError"]
      415 SETTABLEKS                       R14 R46 K47 ["hint"]
      417 CALL                             R45 1 1
      418 GETUPVAL                         R46 3
      419 GETUPVAL                         R47 4
      420 DUPTABLE                         R48 K127 [{["LayoutOrder"] = 2, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      421 GETIMPORT                        R49 K121 [Enum.AutomaticSize.Y]
      423 SETTABLEKS                       R49 R48 K116 ["AutomaticSize"]
      425 MOVE                             R49 R45
      426 CALL                             R46 3 1
      427 MOVE                             R44 R46
      428 SETTABLEKS                       R44 R43 K108 ["Height"]
      430 GETUPVAL                         R44 3
      431 GETUPVAL                         R45 4
      432 DUPTABLE                         R46 K129 [{["tag"] = "row gap-small size-full-0 auto-y"}]
      433 MOVE                             R47 R43
      434 CALL                             R44 3 1
      435 MOVE                             R42 R44
      436 LOADN                            R43 1
      437 LOADK                            R44 K130 ["device-dimensions"]
      438 CALL                             R40 4 1
      439 SETTABLEKS                       R40 R39 K104 ["Dimensions"]
      441 GETUPVAL                         R40 13
      442 LOADK                            R43 K11 ["DeviceManager"]
      443 LOADK                            R44 K105 ["PixelDensity"]
      444 NAMECALL                         R41 R1 K13 ["getText"]
      446 CALL                             R41 3 1
      447 GETUPVAL                         R42 9
      448 DUPTABLE                         R43 K134 [{["prefix"], ["suffix"], ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 72, ["maximum"] = 10000, ["testId"] = "pixel-density"}]
      449 JUMPIFNOT                        R21 ; [+2]
      450 LOADNIL                          R44
      451 JUMP                             ; [+1]
      452 LOADK                            R44 K135 ["PPI"]
      453 SETTABLEKS                       R44 R43 K56 ["prefix"]
      455 JUMPIFNOT                        R21 ; [+2]
      456 LOADK                            R44 K135 ["PPI"]
      457 JUMP                             ; [+1]
      458 LOADNIL                          R44
      459 SETTABLEKS                       R44 R43 K37 ["suffix"]
      461 GETTABLEKS                       R44 R6 K21 ["dpi"]
      463 SETTABLEKS                       R44 R43 K39 ["value"]
      465 NEWCLOSURE                       R44 P12
      466 CAPTURE                          VAL R0
      467 CAPTURE                          UPVAL U2
      468 SETTABLEKS                       R44 R43 K44 ["onChanged"]
      470 NOT                              R44 R7
      471 SETTABLEKS                       R44 R43 K45 ["isDisabled"]
      473 JUMPIFNOTEQKNIL                  R15 ; [+2]
      475 LOADB                            R44 0 +1
      476 LOADB                            R44 1
      477 SETTABLEKS                       R44 R43 K46 ["hasError"]
      479 SETTABLEKS                       R15 R43 K47 ["hint"]
      481 CALL                             R42 1 1
      482 LOADN                            R43 2
      483 LOADK                            R44 K133 ["pixel-density"]
      484 CALL                             R40 4 1
      485 SETTABLEKS                       R40 R39 K105 ["PixelDensity"]
      487 CALL                             R36 3 -1
      488 CALL                             R32 -1 1
      489 SETTABLEKS                       R32 R31 K97 ["Display"]
      491 GETTABLEKS                       R33 R0 K136 ["showsMemory"]
      493 JUMPIFNOT                        R33 ; [+27]
      494 MOVE                             R32 R23
      495 LOADK                            R33 K137 ["performance"]
      496 LOADK                            R36 K11 ["DeviceManager"]
      497 LOADK                            R37 K98 ["Performance"]
      498 NAMECALL                         R34 R1 K13 ["getText"]
      500 CALL                             R34 3 1
      501 LOADN                            R35 2
      502 GETUPVAL                         R36 3
      503 GETUPVAL                         R37 4
      504 DUPTABLE                         R38 K103 [{["tag"] = "col gap-small size-full-0 auto-y padding-x-medium padding-y-small"}]
      505 DUPTABLE                         R39 K139 [{"Memory"}]
      506 GETUPVAL                         R40 13
      507 LOADK                            R43 K11 ["DeviceManager"]
      508 LOADK                            R44 K138 ["Memory"]
      509 NAMECALL                         R41 R1 K13 ["getText"]
      511 CALL                             R41 3 1
      512 MOVE                             R42 R22
      513 LOADN                            R43 1
      514 LOADK                            R44 K51 ["device-memory"]
      515 CALL                             R40 4 1
      516 SETTABLEKS                       R40 R39 K138 ["Memory"]
      518 CALL                             R36 3 -1
      519 CALL                             R32 -1 1
      520 JUMP                             ; [+1]
      521 LOADNIL                          R32
      522 SETTABLEKS                       R32 R31 K98 ["Performance"]
      524 MOVE                             R32 R23
      525 LOADK                            R33 K140 ["keyboard"]
      526 LOADK                            R36 K11 ["DeviceManager"]
      527 LOADK                            R37 K141 ["KeyboardSettings"]
      528 NAMECALL                         R34 R1 K13 ["getText"]
      530 CALL                             R34 3 1
      531 LOADN                            R35 3
      532 GETUPVAL                         R36 3
      533 GETUPVAL                         R37 4
      534 DUPTABLE                         R38 K103 [{["tag"] = "col gap-small size-full-0 auto-y padding-x-medium padding-y-small"}]
      535 DUPTABLE                         R39 K143 [{"Heights"}]
      536 GETUPVAL                         R40 13
      537 LOADK                            R43 K11 ["DeviceManager"]
      538 LOADK                            R44 K144 ["KeyboardHeight"]
      539 NAMECALL                         R41 R1 K13 ["getText"]
      541 CALL                             R41 3 1
      542 DUPTABLE                         R43 K147 [{"Portrait", "Landscape"}]
      543 GETUPVAL                         R45 9
      544 DUPTABLE                         R46 K149 [{["prefix"], ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 0, ["maximum"] = 4320, ["testId"] = "portrait-keyboard-height"}]
      545 LOADK                            R49 K11 ["DeviceManager"]
      546 LOADK                            R50 K145 ["Portrait"]
      547 NAMECALL                         R47 R1 K13 ["getText"]
      549 CALL                             R47 3 1
      550 SETTABLEKS                       R47 R46 K56 ["prefix"]
      552 GETTABLEKS                       R47 R6 K23 ["portraitKeyboardHeight"]
      554 SETTABLEKS                       R47 R46 K39 ["value"]
      556 NEWCLOSURE                       R47 P13
      557 CAPTURE                          VAL R0
      558 CAPTURE                          UPVAL U2
      559 SETTABLEKS                       R47 R46 K44 ["onChanged"]
      561 NOT                              R47 R7
      562 SETTABLEKS                       R47 R46 K45 ["isDisabled"]
      564 JUMPIFNOTEQKNIL                  R17 ; [+2]
      566 LOADB                            R47 0 +1
      567 LOADB                            R47 1
      568 SETTABLEKS                       R47 R46 K46 ["hasError"]
      570 SETTABLEKS                       R17 R46 K47 ["hint"]
      572 CALL                             R45 1 1
      573 GETUPVAL                         R46 3
      574 GETUPVAL                         R47 4
      575 DUPTABLE                         R48 K118 [{["LayoutOrder"] = 1, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      576 GETIMPORT                        R49 K121 [Enum.AutomaticSize.Y]
      578 SETTABLEKS                       R49 R48 K116 ["AutomaticSize"]
      580 MOVE                             R49 R45
      581 CALL                             R46 3 1
      582 MOVE                             R44 R46
      583 SETTABLEKS                       R44 R43 K145 ["Portrait"]
      585 GETUPVAL                         R45 9
      586 DUPTABLE                         R46 K151 [{["prefix"], ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 0, ["maximum"] = 4320, ["testId"] = "landscape-keyboard-height"}]
      587 LOADK                            R49 K11 ["DeviceManager"]
      588 LOADK                            R50 K146 ["Landscape"]
      589 NAMECALL                         R47 R1 K13 ["getText"]
      591 CALL                             R47 3 1
      592 SETTABLEKS                       R47 R46 K56 ["prefix"]
      594 GETTABLEKS                       R47 R6 K24 ["landscapeKeyboardHeight"]
      596 SETTABLEKS                       R47 R46 K39 ["value"]
      598 NEWCLOSURE                       R47 P14
      599 CAPTURE                          VAL R0
      600 CAPTURE                          UPVAL U2
      601 SETTABLEKS                       R47 R46 K44 ["onChanged"]
      603 NOT                              R47 R7
      604 SETTABLEKS                       R47 R46 K45 ["isDisabled"]
      606 JUMPIFNOTEQKNIL                  R18 ; [+2]
      608 LOADB                            R47 0 +1
      609 LOADB                            R47 1
      610 SETTABLEKS                       R47 R46 K46 ["hasError"]
      612 SETTABLEKS                       R18 R46 K47 ["hint"]
      614 CALL                             R45 1 1
      615 GETUPVAL                         R46 3
      616 GETUPVAL                         R47 4
      617 DUPTABLE                         R48 K127 [{["LayoutOrder"] = 2, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      618 GETIMPORT                        R49 K121 [Enum.AutomaticSize.Y]
      620 SETTABLEKS                       R49 R48 K116 ["AutomaticSize"]
      622 MOVE                             R49 R45
      623 CALL                             R46 3 1
      624 MOVE                             R44 R46
      625 SETTABLEKS                       R44 R43 K146 ["Landscape"]
      627 GETUPVAL                         R44 3
      628 GETUPVAL                         R45 4
      629 DUPTABLE                         R46 K129 [{["tag"] = "row gap-small size-full-0 auto-y"}]
      630 MOVE                             R47 R43
      631 CALL                             R44 3 1
      632 MOVE                             R42 R44
      633 LOADN                            R43 1
      634 LOADK                            R44 K152 ["keyboard-height"]
      635 CALL                             R40 4 1
      636 SETTABLEKS                       R40 R39 K142 ["Heights"]
      638 CALL                             R36 3 -1
      639 CALL                             R32 -1 1
      640 SETTABLEKS                       R32 R31 K99 ["Keyboard"]
      642 CALL                             R28 3 1
      643 SETTABLEKS                       R28 R27 K66 ["Settings"]
      645 CALL                             R24 3 -1
      646 RETURN                           R24 -1

PROTO_55:
        0 GETIMPORT                        R1 K3 [Enum.Platform.IOS]
        2 JUMPIFEQ                         R0 R1 ; [+5]
        4 GETIMPORT                        R1 K5 [Enum.Platform.OSX]
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K6 ["Icon"]
       11 GETTABLEKS                       R1 R1 K7 ["Apple"]
       13 RETURN                           R1 1
       14 GETIMPORT                        R1 K9 [Enum.Platform.Android]
       16 JUMPIFNOTEQ                      R0 R1 ; [+7]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["Icon"]
       21 GETTABLEKS                       R1 R1 K8 ["Android"]
       23 RETURN                           R1 1
       24 LOADNIL                          R1
       25 RETURN                           R1 1

PROTO_56:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIF                           R7 ; [+2]
        6 LOADB                            R7 0
        7 RETURN                           R7 1
        8 FORGLOOP                         R2 1 ; [-5]
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLE                         R7 R0 R5
       15 JUMPIF                           R7 ; [+2]
       16 LOADB                            R7 0
       17 RETURN                           R7 1
       18 FORGLOOP                         R2 1 ; [-5]
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_57:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["isHidden"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R8 R5 K1 ["info"]
       12 GETTABLEKS                       R8 R8 K2 ["deviceId"]
       14 CALL                             R6 2 1
       15 JUMPIF                           R6 ; [+6]
       16 GETTABLEKS                       R6 R5 K1 ["info"]
       18 GETTABLEKS                       R6 R6 K2 ["deviceId"]
       20 LOADB                            R7 1
       21 SETTABLE                         R7 R0 R6
       22 FORGLOOP                         R1 2 ; [-17]
       24 RETURN                           R0 1

PROTO_58:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R1 R3
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1
       11 GETUPVAL                         R2 0
       12 LOADB                            R3 1
       13 SETTABLE                         R3 R1 R2
       14 RETURN                           R1 1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_62:
        0 GETTABLEKS                       R2 R0 K0 ["info"]
        2 GETTABLEKS                       R2 R2 K1 ["deviceId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 JUMPIFEQKB                       R4 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETTABLEKS                       R5 R0 K0 ["info"]
       12 GETTABLEKS                       R5 R5 K2 ["platform"]
       14 GETIMPORT                        R6 K6 [Enum.Platform.IOS]
       16 JUMPIFEQ                         R5 R6 ; [+5]
       18 GETIMPORT                        R6 K8 [Enum.Platform.OSX]
       20 JUMPIFNOTEQ                      R5 R6 ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K9 ["Icon"]
       25 GETTABLEKS                       R4 R4 K10 ["Apple"]
       27 JUMP                             ; [+11]
       28 GETIMPORT                        R6 K12 [Enum.Platform.Android]
       30 JUMPIFNOTEQ                      R5 R6 ; [+7]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K9 ["Icon"]
       35 GETTABLEKS                       R4 R4 K11 ["Android"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 GETUPVAL                         R5 2
       40 GETUPVAL                         R6 3
       41 DUPTABLE                         R7 K19 [{["LayoutOrder"], ["tag"] = "row gap-small align-y-center size-full-900 padding-x-small radius-small", ["onActivated"], ["selection"], ["testId"]}]
       42 SETTABLEKS                       R1 R7 K13 ["LayoutOrder"]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U4
       47 SETTABLEKS                       R8 R7 K16 ["onActivated"]
       49 DUPTABLE                         R8 K22 [{["Selectable"] = True}]
       50 SETTABLEKS                       R8 R7 K17 ["selection"]
       52 LOADK                            R8 K23 ["add-device-%*"]
       53 MOVE                             R10 R2
       54 NAMECALL                         R8 R8 K24 ["format"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K18 ["testId"]
       59 DUPTABLE                         R8 K28 [{"Check", "OsIcon", "Label"}]
       60 GETUPVAL                         R9 2
       61 GETUPVAL                         R10 5
       62 DUPTABLE                         R11 K34 [{["LayoutOrder"] = 1, ["label"] = "", ["isChecked"], ["onActivated"], ["size"]}]
       63 SETTABLEKS                       R3 R11 K32 ["isChecked"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U4
       68 SETTABLEKS                       R12 R11 K16 ["onActivated"]
       70 GETUPVAL                         R12 6
       71 GETTABLEKS                       R12 R12 K35 ["Small"]
       73 SETTABLEKS                       R12 R11 K33 ["size"]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K25 ["Check"]
       78 JUMPIFNOT                        R4 ; [+12]
       79 GETUPVAL                         R9 2
       80 GETUPVAL                         R10 7
       81 DUPTABLE                         R11 K38 [{["LayoutOrder"] = 2, ["name"], ["size"]}]
       82 SETTABLEKS                       R4 R11 K37 ["name"]
       84 GETUPVAL                         R12 8
       85 GETTABLEKS                       R12 R12 K35 ["Small"]
       87 SETTABLEKS                       R12 R11 K33 ["size"]
       89 CALL                             R9 2 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R9
       92 SETTABLEKS                       R9 R8 K26 ["OsIcon"]
       94 GETUPVAL                         R9 2
       95 GETUPVAL                         R10 9
       96 DUPTABLE                         R11 K41 [{["LayoutOrder"] = 3, ["Text"], ["tag"]}]
       97 GETTABLEKS                       R12 R0 K0 ["info"]
       99 GETTABLEKS                       R12 R12 K42 ["deviceName"]
      101 SETTABLEKS                       R12 R11 K40 ["Text"]
      103 NEWTABLE                         R12 4 0
      105 LOADB                            R13 1
      106 SETTABLEKS                       R13 R12 K43 ["text-body-small text-align-x-left text-truncate-end fill size-0-full"]
      108 SETTABLEKS                       R3 R12 K44 ["content-emphasis"]
      110 NOT                              R13 R3
      111 SETTABLEKS                       R13 R12 K45 ["content-default"]
      113 SETTABLEKS                       R12 R11 K14 ["tag"]
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K27 ["Label"]
      118 CALL                             R5 3 -1
      119 RETURN                           R5 -1

PROTO_63:
        0 LENGTH                           R3 R2
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 ADDK                             R3 R3 K1 [1]
        6 SETUPVAL                         R3 0
        7 DUPTABLE                         R3 K3 [{"Header"}]
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K8 [{["LayoutOrder"] = 0, ["Text"], ["tag"] = "text-title-small text-align-x-left content-emphasis auto-y size-full-0 padding-x-small"}]
       11 SETTABLEKS                       R1 R6 K5 ["Text"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K2 ["Header"]
       16 MOVE                             R4 R2
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 LOADK                            R9 K9 ["row-%*"]
       21 GETTABLEKS                       R11 R8 K10 ["info"]
       23 GETTABLEKS                       R11 R11 K11 ["deviceId"]
       25 NAMECALL                         R9 R9 K12 ["format"]
       27 CALL                             R9 2 1
       28 GETUPVAL                         R10 3
       29 MOVE                             R11 R8
       30 MOVE                             R12 R7
       31 CALL                             R10 2 1
       32 SETTABLE                         R10 R3 R9
       33 FORGLOOP                         R4 2 ; [-14]
       35 GETUPVAL                         R4 4
       36 LOADK                            R5 K13 ["section-%*"]
       37 MOVE                             R7 R0
       38 NAMECALL                         R5 R5 K12 ["format"]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 1
       42 GETUPVAL                         R7 5
       43 DUPTABLE                         R8 K15 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y"}]
       44 GETUPVAL                         R9 0
       45 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       47 MOVE                             R9 R3
       48 CALL                             R6 3 1
       49 SETTABLE                         R6 R4 R5
       50 RETURN                           R0 0

PROTO_64:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["info"]
        8 GETTABLEKS                       R6 R6 K1 ["deviceId"]
       10 LOADB                            R7 1
       11 SETTABLE                         R7 R0 R6
       12 FORGLOOP                         R1 2 ; [-7]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["onUpdate"]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["standardDevicesForTab"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["useState"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R2
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K2 ["useState"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K3 ["getFFlagDeviceSimulatorAddDevicesRequireChange"]
       25 CALL                             R7 0 1
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R6
       28 NEWCLOSURE                       R9 P2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U10
       38 CAPTURE                          UPVAL U11
       39 NEWTABLE                         R10 0 0
       41 NEWTABLE                         R11 0 0
       43 MOVE                             R12 R3
       44 LOADNIL                          R13
       45 LOADNIL                          R14
       46 FORGPREP                         R12
       47 GETTABLEKS                       R17 R16 K4 ["info"]
       49 GETTABLEKS                       R17 R17 K5 ["tier"]
       51 LOADB                            R18 0
       52 GETUPVAL                         R19 12
       53 LOADNIL                          R20
       54 LOADNIL                          R21
       55 FORGPREP                         R19
       56 GETTABLEKS                       R24 R23 K5 ["tier"]
       58 JUMPIFNOTEQ                      R24 R17 ; [+3]
       60 LOADB                            R18 1
       61 JUMP                             ; [+2]
       62 FORGLOOP                         R19 2 ; [-7]
       64 JUMPIFNOT                        R18 ; [+13]
       65 GETTABLE                         R19 R10 R17
       66 JUMPIF                           R19 ; [+3]
       67 NEWTABLE                         R19 0 0
       69 SETTABLE                         R19 R10 R17
       70 GETTABLE                         R20 R10 R17
       71 FASTCALL2                        TABLE_INSERT R20 R16 ; [+4]
       73 MOVE                             R21 R16
       74 GETIMPORT                        R19 K8 [table.insert]
       76 CALL                             R19 2 0
       77 JUMP                             ; [+7]
       78 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       80 MOVE                             R20 R11
       81 MOVE                             R21 R16
       82 GETIMPORT                        R19 K8 [table.insert]
       84 CALL                             R19 2 0
       85 FORGLOOP                         R12 2 ; [-39]
       87 NEWTABLE                         R12 0 0
       89 LOADN                            R13 0
       90 NEWCLOSURE                       R14 P3
       91 CAPTURE                          REF R13
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R12
       96 CAPTURE                          UPVAL U6
       97 GETUPVAL                         R15 12
       98 LOADNIL                          R16
       99 LOADNIL                          R17
      100 FORGPREP                         R15
      101 MOVE                             R20 R14
      102 GETTABLEKS                       R21 R19 K5 ["tier"]
      104 LOADK                            R24 K9 ["DeviceMenu"]
      105 GETTABLEKS                       R25 R19 K10 ["key"]
      107 NAMECALL                         R22 R1 K11 ["getText"]
      109 CALL                             R22 3 1
      110 GETTABLEKS                       R24 R19 K5 ["tier"]
      112 GETTABLE                         R23 R10 R24
      113 JUMPIF                           R23 ; [+2]
      114 NEWTABLE                         R23 0 0
      116 CALL                             R20 3 0
      117 FORGLOOP                         R15 2 ; [-17]
      119 MOVE                             R15 R14
      120 LOADK                            R16 K12 ["other"]
      121 LOADK                            R19 K9 ["DeviceMenu"]
      122 LOADK                            R20 K13 ["Other"]
      123 NAMECALL                         R17 R1 K11 ["getText"]
      125 CALL                             R17 3 1
      126 MOVE                             R18 R11
      127 CALL                             R15 3 0
      128 NEWCLOSURE                       R15 P4
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R5
      132 GETUPVAL                         R16 5
      133 GETUPVAL                         R17 13
      134 DUPTABLE                         R18 K24 [{["uri"], ["type"] = "Default", ["width"] = 480, ["isContentFullBleed"] = True, ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
      135 GETUPVAL                         R19 14
      136 SETTABLEKS                       R19 R18 K14 ["uri"]
      138 DUPTABLE                         R19 K28 [{"uri", "text", "disabled", "onActivated"}]
      139 GETUPVAL                         R20 15
      140 GETTABLEKS                       R20 R20 K29 ["child"]
      142 GETUPVAL                         R21 14
      143 LOADK                            R22 K30 ["Update"]
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K14 ["uri"]
      147 LOADK                            R22 K31 ["DeviceManager"]
      148 LOADK                            R23 K30 ["Update"]
      149 NAMECALL                         R20 R1 K11 ["getText"]
      151 CALL                             R20 3 1
      152 SETTABLEKS                       R20 R19 K25 ["text"]
      154 JUMPIFNOT                        R7 ; [+22]
      155 MOVE                             R21 R5
      156 LOADNIL                          R22
      157 LOADNIL                          R23
      158 FORGPREP                         R21
      159 GETTABLE                         R26 R4 R24
      160 JUMPIF                           R26 ; [+2]
      161 LOADB                            R20 0
      162 JUMP                             ; [+15]
      163 FORGLOOP                         R21 1 ; [-5]
      165 MOVE                             R21 R4
      166 LOADNIL                          R22
      167 LOADNIL                          R23
      168 FORGPREP                         R21
      169 GETTABLE                         R26 R5 R24
      170 JUMPIF                           R26 ; [+2]
      171 LOADB                            R20 0
      172 JUMP                             ; [+5]
      173 FORGLOOP                         R21 1 ; [-5]
      175 LOADB                            R20 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R20
      178 SETTABLEKS                       R20 R19 K26 ["disabled"]
      180 SETTABLEKS                       R15 R19 K27 ["onActivated"]
      182 SETTABLEKS                       R19 R18 K21 ["primaryAction"]
      184 DUPTABLE                         R19 K32 [{"uri", "text", "onActivated"}]
      185 GETUPVAL                         R20 15
      186 GETTABLEKS                       R20 R20 K29 ["child"]
      188 GETUPVAL                         R21 14
      189 LOADK                            R22 K33 ["Cancel"]
      190 CALL                             R20 2 1
      191 SETTABLEKS                       R20 R19 K14 ["uri"]
      193 LOADK                            R22 K34 ["Common"]
      194 LOADK                            R23 K33 ["Cancel"]
      195 NAMECALL                         R20 R1 K11 ["getText"]
      197 CALL                             R20 3 1
      198 SETTABLEKS                       R20 R19 K25 ["text"]
      200 GETTABLEKS                       R20 R0 K35 ["onCancel"]
      202 SETTABLEKS                       R20 R19 K27 ["onActivated"]
      204 SETTABLEKS                       R19 R18 K22 ["secondaryAction"]
      206 DUPTABLE                         R19 K37 [{"uri", "onClose"}]
      207 GETUPVAL                         R20 15
      208 GETTABLEKS                       R20 R20 K29 ["child"]
      210 GETUPVAL                         R21 14
      211 LOADK                            R22 K38 ["Close"]
      212 CALL                             R20 2 1
      213 SETTABLEKS                       R20 R19 K14 ["uri"]
      215 GETTABLEKS                       R20 R0 K35 ["onCancel"]
      217 SETTABLEKS                       R20 R19 K36 ["onClose"]
      219 SETTABLEKS                       R19 R18 K23 ["escapeAction"]
      221 DUPTABLE                         R19 K40 [{"Content"}]
      222 GETUPVAL                         R20 5
      223 GETUPVAL                         R21 6
      224 DUPTABLE                         R22 K43 [{["tag"] = "col gap-medium padding-large size-full-0 auto-y"}]
      225 DUPTABLE                         R23 K46 [{"Heading", "List"}]
      226 GETUPVAL                         R24 5
      227 GETUPVAL                         R25 6
      228 DUPTABLE                         R26 K50 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      229 DUPTABLE                         R27 K53 [{"Title", "Subtitle"}]
      230 GETUPVAL                         R28 5
      231 GETUPVAL                         R29 11
      232 DUPTABLE                         R30 K56 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-title-large text-align-x-left content-emphasis auto-y size-full-0"}]
      233 LOADK                            R33 K31 ["DeviceManager"]
      234 LOADK                            R34 K57 ["AddDevices"]
      235 NAMECALL                         R31 R1 K11 ["getText"]
      237 CALL                             R31 3 1
      238 SETTABLEKS                       R31 R30 K54 ["Text"]
      240 CALL                             R28 2 1
      241 SETTABLEKS                       R28 R27 K51 ["Title"]
      243 GETUPVAL                         R28 5
      244 GETUPVAL                         R29 11
      245 DUPTABLE                         R30 K60 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "text-body-small text-align-x-left content-muted auto-y size-full-0"}]
      246 LOADK                            R33 K31 ["DeviceManager"]
      247 LOADK                            R34 K61 ["SelectDevices"]
      248 NAMECALL                         R31 R1 K11 ["getText"]
      250 CALL                             R31 3 1
      251 SETTABLEKS                       R31 R30 K54 ["Text"]
      253 CALL                             R28 2 1
      254 SETTABLEKS                       R28 R27 K52 ["Subtitle"]
      256 CALL                             R24 3 1
      257 SETTABLEKS                       R24 R23 K44 ["Heading"]
      259 GETUPVAL                         R24 5
      260 GETUPVAL                         R25 16
      261 DUPTABLE                         R26 K67 [{["LayoutOrder"] = 2, ["Size"], ["layout"], ["scroll"], ["testId"] = "add-devices-scroll"}]
      262 GETIMPORT                        R27 K70 [UDim2.new]
      264 LOADN                            R28 1
      265 LOADN                            R29 0
      266 LOADN                            R30 0
      267 LOADN                            R31 320
      268 CALL                             R27 4 1
      269 SETTABLEKS                       R27 R26 K62 ["Size"]
      271 DUPTABLE                         R27 K72 [{"FillDirection"}]
      272 GETIMPORT                        R28 K75 [Enum.FillDirection.Vertical]
      274 SETTABLEKS                       R28 R27 K71 ["FillDirection"]
      276 SETTABLEKS                       R27 R26 K63 ["layout"]
      278 DUPTABLE                         R27 K79 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      279 GETIMPORT                        R28 K82 [Enum.AutomaticSize.Y]
      281 SETTABLEKS                       R28 R27 K76 ["AutomaticCanvasSize"]
      283 GETIMPORT                        R28 K84 [UDim2.fromOffset]
      285 LOADN                            R29 0
      286 LOADN                            R30 0
      287 CALL                             R28 2 1
      288 SETTABLEKS                       R28 R27 K77 ["CanvasSize"]
      290 GETIMPORT                        R28 K85 [Enum.ScrollingDirection.Y]
      292 SETTABLEKS                       R28 R27 K78 ["ScrollingDirection"]
      294 SETTABLEKS                       R27 R26 K64 ["scroll"]
      296 DUPTABLE                         R27 K87 [{"Inner"}]
      297 GETUPVAL                         R28 5
      298 GETUPVAL                         R29 6
      299 DUPTABLE                         R30 K89 [{["tag"] = "col gap-medium size-full-0 auto-y"}]
      300 MOVE                             R31 R12
      301 CALL                             R28 3 1
      302 SETTABLEKS                       R28 R27 K86 ["Inner"]
      304 CALL                             R24 3 1
      305 SETTABLEKS                       R24 R23 K45 ["List"]
      307 CALL                             R20 3 1
      308 SETTABLEKS                       R20 R19 K39 ["Content"]
      310 CALL                             R16 3 -1
      311 CLOSEUPVALS                      R13
      312 RETURN                           R16 -1

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["input"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getOutput"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cloneSelected"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_70:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 MOVE                             R2 R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectTab"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 MOVE                             R3 R1
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setStandardVisibility"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_76:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 MOVE                             R4 R2
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          VAL R3
        8 CALL                             R4 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["hasInternalPermission"]
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K0 ["hasInternalPermission"]
        8 JUMP                             ; [+4]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K1 ["HasInternalPermission"]
       12 CALL                             R2 1 1
       13 MOVE                             R3 R2
       14 JUMPIF                           R3 ; [+4]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K2 ["getEngineFeatureDeviceSimulatorNominalMemory"]
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R4 R0 K3 ["memoryTiersByPlatform"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K4 ["useState"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R0
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K4 ["useState"]
       38 DUPTABLE                         R8 K10 [{["display"] = True, ["performance"] = True, ["keyboard"] = False}]
       39 CALL                             R7 1 2
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K4 ["useState"]
       43 LOADB                            R10 0
       44 CALL                             R9 1 2
       45 GETUPVAL                         R11 4
       46 GETTABLEKS                       R11 R11 K11 ["validate"]
       48 MOVE                             R12 R5
       49 MOVE                             R13 R1
       50 CALL                             R11 2 1
       51 MOVE                             R12 R11
       52 JUMPIFNOT                        R12 ; [+5]
       53 GETUPVAL                         R12 4
       54 GETTABLEKS                       R12 R12 K12 ["isDirty"]
       56 MOVE                             R13 R5
       57 CALL                             R12 1 1
       58 GETUPVAL                         R13 4
       59 GETTABLEKS                       R13 R13 K13 ["getSelected"]
       61 MOVE                             R14 R5
       62 CALL                             R13 1 1
       63 NEWCLOSURE                       R14 P1
       64 CAPTURE                          VAL R0
       65 NEWCLOSURE                       R15 P2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R5
       69 NEWCLOSURE                       R16 P3
       70 CAPTURE                          VAL R6
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          VAL R1
       73 GETUPVAL                         R17 5
       74 GETUPVAL                         R18 6
       75 DUPTABLE                         R19 K25 [{["uri"], ["type"] = "Default", ["width"] = 650, ["isContentFullBleed"] = True, ["tertiaryActionVariant"], ["primaryAction"], ["secondaryAction"], ["tertiaryAction"], ["escapeAction"]}]
       76 GETUPVAL                         R20 7
       77 SETTABLEKS                       R20 R19 K14 ["uri"]
       79 GETUPVAL                         R20 8
       80 GETTABLEKS                       R20 R20 K26 ["Enums"]
       82 GETTABLEKS                       R20 R20 K27 ["ButtonVariant"]
       84 GETTABLEKS                       R20 R20 K28 ["Utility"]
       86 SETTABLEKS                       R20 R19 K20 ["tertiaryActionVariant"]
       88 DUPTABLE                         R20 K32 [{"uri", "text", "disabled", "onActivated"}]
       89 GETUPVAL                         R21 9
       90 GETTABLEKS                       R21 R21 K33 ["child"]
       92 GETUPVAL                         R22 7
       93 LOADK                            R23 K34 ["Apply"]
       94 CALL                             R21 2 1
       95 SETTABLEKS                       R21 R20 K14 ["uri"]
       97 LOADK                            R23 K35 ["DeviceManager"]
       98 LOADK                            R24 K34 ["Apply"]
       99 NAMECALL                         R21 R1 K36 ["getText"]
      101 CALL                             R21 3 1
      102 SETTABLEKS                       R21 R20 K29 ["text"]
      104 NOT                              R21 R12
      105 SETTABLEKS                       R21 R20 K30 ["disabled"]
      107 SETTABLEKS                       R15 R20 K31 ["onActivated"]
      109 SETTABLEKS                       R20 R19 K21 ["primaryAction"]
      111 DUPTABLE                         R20 K37 [{"uri", "text", "onActivated"}]
      112 GETUPVAL                         R21 9
      113 GETTABLEKS                       R21 R21 K33 ["child"]
      115 GETUPVAL                         R22 7
      116 LOADK                            R23 K38 ["Cancel"]
      117 CALL                             R21 2 1
      118 SETTABLEKS                       R21 R20 K14 ["uri"]
      120 LOADK                            R23 K39 ["Common"]
      121 LOADK                            R24 K38 ["Cancel"]
      122 NAMECALL                         R21 R1 K36 ["getText"]
      124 CALL                             R21 3 1
      125 SETTABLEKS                       R21 R20 K29 ["text"]
      127 SETTABLEKS                       R14 R20 K31 ["onActivated"]
      129 SETTABLEKS                       R20 R19 K22 ["secondaryAction"]
      131 JUMPIFNOT                        R13 ; [+24]
      132 GETTABLEKS                       R21 R13 K40 ["info"]
      134 GETTABLEKS                       R21 R21 K41 ["isCustom"]
      136 JUMPIF                           R21 ; [+19]
      137 DUPTABLE                         R20 K37 [{"uri", "text", "onActivated"}]
      138 GETUPVAL                         R21 9
      139 GETTABLEKS                       R21 R21 K33 ["child"]
      141 GETUPVAL                         R22 7
      142 LOADK                            R23 K42 ["SaveAsCustom"]
      143 CALL                             R21 2 1
      144 SETTABLEKS                       R21 R20 K14 ["uri"]
      146 LOADK                            R23 K35 ["DeviceManager"]
      147 LOADK                            R24 K43 ["Duplicate"]
      148 NAMECALL                         R21 R1 K36 ["getText"]
      150 CALL                             R21 3 1
      151 SETTABLEKS                       R21 R20 K29 ["text"]
      153 SETTABLEKS                       R16 R20 K31 ["onActivated"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R20
      157 SETTABLEKS                       R20 R19 K23 ["tertiaryAction"]
      159 DUPTABLE                         R20 K45 [{"uri", "onClose"}]
      160 GETUPVAL                         R21 9
      161 GETTABLEKS                       R21 R21 K33 ["child"]
      163 GETUPVAL                         R22 7
      164 LOADK                            R23 K46 ["Close"]
      165 CALL                             R21 2 1
      166 SETTABLEKS                       R21 R20 K14 ["uri"]
      168 SETTABLEKS                       R14 R20 K44 ["onClose"]
      170 SETTABLEKS                       R20 R19 K24 ["escapeAction"]
      172 DUPTABLE                         R20 K49 [{"Content", "AddDevices"}]
      173 GETUPVAL                         R21 5
      174 GETUPVAL                         R22 10
      175 DUPTABLE                         R23 K52 [{["tag"] = "col size-full-0 auto-y"}]
      176 DUPTABLE                         R24 K55 [{"Tabs", "Body"}]
      177 GETUPVAL                         R25 5
      178 GETUPVAL                         R26 11
      179 DUPTABLE                         R27 K59 [{["LayoutOrder"] = 1, ["activeTab"], ["onActivated"]}]
      180 GETTABLEKS                       R28 R5 K58 ["activeTab"]
      182 SETTABLEKS                       R28 R27 K58 ["activeTab"]
      184 NEWCLOSURE                       R28 P4
      185 CAPTURE                          VAL R6
      186 CAPTURE                          UPVAL U4
      187 SETTABLEKS                       R28 R27 K31 ["onActivated"]
      189 CALL                             R25 2 1
      190 SETTABLEKS                       R25 R24 K53 ["Tabs"]
      192 GETUPVAL                         R25 5
      193 GETUPVAL                         R26 10
      194 DUPTABLE                         R27 K65 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0", ["Size"], ["testId"] = "device-manager-body"}]
      195 GETIMPORT                        R28 K68 [UDim2.new]
      197 LOADN                            R29 1
      198 LOADN                            R30 0
      199 LOADN                            R31 0
      200 LOADN                            R32 420
      201 CALL                             R28 4 1
      202 SETTABLEKS                       R28 R27 K62 ["Size"]
      204 DUPTABLE                         R28 K72 [{"Rail", "Divider", "Details"}]
      205 GETUPVAL                         R29 5
      206 GETUPVAL                         R30 12
      207 DUPTABLE                         R31 K76 [{["LayoutOrder"] = 1, ["Size"], ["layout"], ["scroll"], ["testId"] = "device-list-scroll"}]
      208 GETIMPORT                        R32 K68 [UDim2.new]
      210 LOADN                            R33 0
      211 LOADN                            R34 240
      212 LOADN                            R35 1
      213 LOADN                            R36 0
      214 CALL                             R32 4 1
      215 SETTABLEKS                       R32 R31 K62 ["Size"]
      217 DUPTABLE                         R32 K78 [{"FillDirection"}]
      218 GETIMPORT                        R33 K81 [Enum.FillDirection.Vertical]
      220 SETTABLEKS                       R33 R32 K77 ["FillDirection"]
      222 SETTABLEKS                       R32 R31 K73 ["layout"]
      224 DUPTABLE                         R32 K85 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      225 GETIMPORT                        R33 K88 [Enum.AutomaticSize.Y]
      227 SETTABLEKS                       R33 R32 K82 ["AutomaticCanvasSize"]
      229 GETIMPORT                        R33 K90 [UDim2.fromOffset]
      231 LOADN                            R34 0
      232 LOADN                            R35 0
      233 CALL                             R33 2 1
      234 SETTABLEKS                       R33 R32 K83 ["CanvasSize"]
      236 GETIMPORT                        R33 K91 [Enum.ScrollingDirection.Y]
      238 SETTABLEKS                       R33 R32 K84 ["ScrollingDirection"]
      240 SETTABLEKS                       R32 R31 K74 ["scroll"]
      242 DUPTABLE                         R32 K93 [{"DeviceList"}]
      243 GETUPVAL                         R33 5
      244 GETUPVAL                         R34 13
      245 DUPTABLE                         R35 K97 [{"state", "setState", "memoryTiersByPlatform", "onAddDevices"}]
      246 SETTABLEKS                       R5 R35 K94 ["state"]
      248 SETTABLEKS                       R6 R35 K95 ["setState"]
      250 SETTABLEKS                       R4 R35 K3 ["memoryTiersByPlatform"]
      252 GETUPVAL                         R37 2
      253 GETTABLEKS                       R37 R37 K98 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      255 CALL                             R37 0 1
      256 JUMPIFNOT                        R37 ; [+3]
      257 NEWCLOSURE                       R36 P5
      258 CAPTURE                          VAL R10
      259 JUMP                             ; [+1]
      260 LOADNIL                          R36
      261 SETTABLEKS                       R36 R35 K96 ["onAddDevices"]
      263 CALL                             R33 2 1
      264 SETTABLEKS                       R33 R32 K92 ["DeviceList"]
      266 CALL                             R29 3 1
      267 SETTABLEKS                       R29 R28 K69 ["Rail"]
      269 GETUPVAL                         R29 5
      270 GETUPVAL                         R30 8
      271 GETTABLEKS                       R30 R30 K70 ["Divider"]
      273 DUPTABLE                         R31 K100 [{["LayoutOrder"] = 2, ["orientation"]}]
      274 GETUPVAL                         R32 8
      275 GETTABLEKS                       R32 R32 K26 ["Enums"]
      277 GETTABLEKS                       R32 R32 K101 ["Orientation"]
      279 GETTABLEKS                       R32 R32 K80 ["Vertical"]
      281 SETTABLEKS                       R32 R31 K99 ["orientation"]
      283 CALL                             R29 2 1
      284 SETTABLEKS                       R29 R28 K70 ["Divider"]
      286 GETUPVAL                         R29 5
      287 GETUPVAL                         R30 12
      288 DUPTABLE                         R31 K105 [{["LayoutOrder"] = 3, ["Size"], ["flexItem"], ["layout"], ["scroll"], ["testId"] = "device-details-scroll"}]
      289 GETIMPORT                        R32 K107 [UDim2.fromScale]
      291 LOADN                            R33 0
      292 LOADN                            R34 1
      293 CALL                             R32 2 1
      294 SETTABLEKS                       R32 R31 K62 ["Size"]
      296 DUPTABLE                         R32 K111 [{["FlexMode"], ["GrowRatio"] = 1, ["ShrinkRatio"] = 1}]
      297 GETIMPORT                        R33 K114 [Enum.UIFlexMode.Fill]
      299 SETTABLEKS                       R33 R32 K108 ["FlexMode"]
      301 SETTABLEKS                       R32 R31 K103 ["flexItem"]
      303 DUPTABLE                         R32 K78 [{"FillDirection"}]
      304 GETIMPORT                        R33 K81 [Enum.FillDirection.Vertical]
      306 SETTABLEKS                       R33 R32 K77 ["FillDirection"]
      308 SETTABLEKS                       R32 R31 K73 ["layout"]
      310 DUPTABLE                         R32 K85 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      311 GETIMPORT                        R33 K88 [Enum.AutomaticSize.Y]
      313 SETTABLEKS                       R33 R32 K82 ["AutomaticCanvasSize"]
      315 GETIMPORT                        R33 K90 [UDim2.fromOffset]
      317 LOADN                            R34 0
      318 LOADN                            R35 0
      319 CALL                             R33 2 1
      320 SETTABLEKS                       R33 R32 K83 ["CanvasSize"]
      322 GETIMPORT                        R33 K91 [Enum.ScrollingDirection.Y]
      324 SETTABLEKS                       R33 R32 K84 ["ScrollingDirection"]
      326 SETTABLEKS                       R32 R31 K74 ["scroll"]
      328 DUPTABLE                         R32 K116 [{"DeviceDetails"}]
      329 GETUPVAL                         R33 5
      330 GETUPVAL                         R34 14
      331 DUPTABLE                         R35 K120 [{"state", "setState", "expanded", "setExpanded", "showsMemory", "memoryTiersByPlatform"}]
      332 SETTABLEKS                       R5 R35 K94 ["state"]
      334 SETTABLEKS                       R6 R35 K95 ["setState"]
      336 SETTABLEKS                       R7 R35 K117 ["expanded"]
      338 SETTABLEKS                       R8 R35 K118 ["setExpanded"]
      340 SETTABLEKS                       R3 R35 K119 ["showsMemory"]
      342 SETTABLEKS                       R4 R35 K3 ["memoryTiersByPlatform"]
      344 CALL                             R33 2 1
      345 SETTABLEKS                       R33 R32 K115 ["DeviceDetails"]
      347 CALL                             R29 3 1
      348 SETTABLEKS                       R29 R28 K71 ["Details"]
      350 CALL                             R25 3 1
      351 SETTABLEKS                       R25 R24 K54 ["Body"]
      353 CALL                             R21 3 1
      354 SETTABLEKS                       R21 R20 K47 ["Content"]
      356 JUMPIFNOT                        R9 ; [+17]
      357 GETUPVAL                         R21 5
      358 GETUPVAL                         R22 15
      359 DUPTABLE                         R23 K123 [{"state", "onCancel", "onUpdate"}]
      360 SETTABLEKS                       R5 R23 K94 ["state"]
      362 NEWCLOSURE                       R24 P6
      363 CAPTURE                          VAL R10
      364 SETTABLEKS                       R24 R23 K121 ["onCancel"]
      366 NEWCLOSURE                       R24 P7
      367 CAPTURE                          VAL R6
      368 CAPTURE                          UPVAL U4
      369 CAPTURE                          VAL R10
      370 SETTABLEKS                       R24 R23 K122 ["onUpdate"]
      372 CALL                             R21 2 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R21
      375 SETTABLEKS                       R21 R20 K48 ["AddDevices"]
      377 CALL                             R17 3 -1
      378 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Bin"]
       17 GETTABLEKS                       R3 R3 K11 ["Common"]
       19 GETTABLEKS                       R3 R3 K12 ["defineLuaFlags"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Packages"]
       26 GETTABLEKS                       R4 R4 K14 ["BuilderIcons"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Src"]
       33 GETTABLEKS                       R5 R5 K16 ["DeviceConstants"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETIMPORT                        R6 K1 [script]
       40 GETTABLEKS                       R6 R6 K17 ["Parent"]
       42 GETTABLEKS                       R6 R6 K18 ["DeviceManagerModel"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K13 ["Packages"]
       49 GETTABLEKS                       R7 R7 K19 ["Foundation"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Packages"]
       56 GETTABLEKS                       R8 R8 K20 ["React"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Packages"]
       63 GETTABLEKS                       R9 R9 K21 ["StudioFoundation"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R8 K22 ["Components"]
       68 GETTABLEKS                       R9 R9 K23 ["Dialog"]
       70 GETTABLEKS                       R10 R6 K24 ["Checkbox"]
       72 GETTABLEKS                       R11 R6 K25 ["Dropdown"]
       74 GETTABLEKS                       R12 R6 K26 ["Icon"]
       76 GETTABLEKS                       R13 R6 K27 ["IconButton"]
       78 GETTABLEKS                       R14 R6 K28 ["Enums"]
       80 GETTABLEKS                       R14 R14 K29 ["IconSize"]
       82 GETTABLEKS                       R15 R6 K28 ["Enums"]
       84 GETTABLEKS                       R15 R15 K30 ["InputSize"]
       86 GETTABLEKS                       R16 R6 K28 ["Enums"]
       88 GETTABLEKS                       R16 R16 K31 ["InputVariant"]
       90 GETTABLEKS                       R17 R6 K28 ["Enums"]
       92 GETTABLEKS                       R17 R17 K32 ["NumberInputControlsVariant"]
       94 GETTABLEKS                       R18 R6 K28 ["Enums"]
       96 GETTABLEKS                       R18 R18 K33 ["OnChangeCallbackReason"]
       98 GETTABLEKS                       R19 R6 K34 ["NumberInput"]
      100 GETTABLEKS                       R20 R6 K35 ["ScrollView"]
      102 GETTABLEKS                       R21 R8 K36 ["Util"]
      104 GETTABLEKS                       R21 R21 K37 ["StudioUri"]
      106 GETTABLEKS                       R22 R6 K38 ["Text"]
      108 GETTABLEKS                       R23 R6 K39 ["TextInput"]
      110 GETTABLEKS                       R24 R6 K40 ["View"]
      112 GETTABLEKS                       R25 R7 K41 ["createElement"]
      114 GETIMPORT                        R26 K9 [require]
      116 GETTABLEKS                       R27 R0 K15 ["Src"]
      118 GETTABLEKS                       R27 R27 K42 ["Hooks"]
      120 GETTABLEKS                       R27 R27 K43 ["useLocalization"]
      122 CALL                             R26 1 1
      123 GETTABLEKS                       R27 R21 K44 ["fromWidget"]
      125 LOADK                            R28 K2 ["DeviceSimulatorToolbar"]
      126 LOADK                            R29 K45 ["DeviceManagerDialog"]
      127 CALL                             R27 2 1
      128 GETTABLEKS                       R28 R21 K44 ["fromWidget"]
      130 LOADK                            R29 K2 ["DeviceSimulatorToolbar"]
      131 LOADK                            R30 K46 ["AddDevicesDialog"]
      132 CALL                             R28 2 1
      133 NEWTABLE                         R29 0 4
      135 LOADK                            R30 K47 ["mobile"]
      136 LOADK                            R31 K48 ["desktop"]
      137 LOADK                            R32 K49 ["console"]
      138 LOADK                            R33 K50 ["headset"]
      139 SETLIST                          R29 R30 4 [1]
      141 DUPTABLE                         R30 K55 [{["mobile"] = "Mobile", ["desktop"] = "Desktop", ["console"] = "Console", ["headset"] = "Headset"}]
      142 DUPTABLE                         R31 K56 [{"mobile", "desktop", "console", "headset"}]
      143 GETTABLEKS                       R32 R3 K26 ["Icon"]
      145 GETTABLEKS                       R32 R32 K57 ["SmartphonePortrait"]
      147 SETTABLEKS                       R32 R31 K47 ["mobile"]
      149 GETTABLEKS                       R32 R3 K26 ["Icon"]
      151 GETTABLEKS                       R32 R32 K58 ["PictureInPicture"]
      153 SETTABLEKS                       R32 R31 K48 ["desktop"]
      155 GETTABLEKS                       R32 R3 K26 ["Icon"]
      157 GETTABLEKS                       R32 R32 K59 ["Controller"]
      159 SETTABLEKS                       R32 R31 K49 ["console"]
      161 GETTABLEKS                       R32 R3 K26 ["Icon"]
      163 GETTABLEKS                       R32 R32 K60 ["XrHeadset"]
      165 SETTABLEKS                       R32 R31 K50 ["headset"]
      167 DUPTABLE                         R32 K77 [{["IOS"] = "iOS", ["OSX"] = "macOS", ["XBox360"] = "Xbox 360", ["XBoxOne"] = "Xbox One", ["PS3"] = "PlayStation 3", ["PS4"] = "PlayStation 4", ["PS5"] = "PlayStation 5", ["MetaOS"] = "Meta OS"}]
      168 NEWTABLE                         R33 0 0
      170 GETIMPORT                        R34 K80 [Enum.Platform]
      172 NAMECALL                         R34 R34 K81 ["GetEnumItems"]
      174 CALL                             R34 1 3
      175 FORGPREP                         R34
      176 DUPTABLE                         R41 K84 [{"id", "text"}]
      177 GETTABLEKS                       R42 R38 K85 ["Value"]
      179 SETTABLEKS                       R42 R41 K82 ["id"]
      181 GETTABLEKS                       R43 R38 K86 ["Name"]
      183 GETTABLE                         R42 R32 R43
      184 JUMPIF                           R42 ; [+2]
      185 GETTABLEKS                       R42 R38 K86 ["Name"]
      187 SETTABLEKS                       R42 R41 K83 ["text"]
      189 FASTCALL2                        TABLE_INSERT R33 R41 ; [+4]
      191 MOVE                             R40 R33
      192 GETIMPORT                        R39 K89 [table.insert]
      194 CALL                             R39 2 0
      195 FORGLOOP                         R34 2 ; [-20]
      197 GETIMPORT                        R34 K91 [table.sort]
      199 MOVE                             R35 R33
      200 DUPCLOSURE                       R36 K92 [PROTO_0]
      201 CALL                             R34 2 0
      202 DUPCLOSURE                       R34 K93 [PROTO_2]
      203 DUPCLOSURE                       R35 K94 [PROTO_5]
      204 CAPTURE                          VAL R25
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R15
      209 DUPCLOSURE                       R36 K95 [PROTO_6]
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R22
      214 DUPCLOSURE                       R37 K96 [PROTO_7]
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R36
      219 CAPTURE                          VAL R22
      220 DUPCLOSURE                       R38 K97 [PROTO_8]
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R24
      223 DUPCLOSURE                       R39 K98 [PROTO_9]
      224 CAPTURE                          VAL R25
      225 CAPTURE                          VAL R24
      226 DUPCLOSURE                       R40 K99 [PROTO_11]
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R16
      231 DUPCLOSURE                       R41 K100 [PROTO_12]
      232 CAPTURE                          VAL R5
      233 DUPCLOSURE                       R42 K101 [PROTO_13]
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R40
      236 CAPTURE                          VAL R25
      237 CAPTURE                          VAL R24
      238 CAPTURE                          VAL R35
      239 DUPCLOSURE                       R43 K102 [PROTO_15]
      240 CAPTURE                          VAL R26
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R31
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R22
      249 CAPTURE                          VAL R30
      250 DUPCLOSURE                       R44 K103 [PROTO_24]
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R5
      254 CAPTURE                          VAL R25
      255 CAPTURE                          VAL R24
      256 CAPTURE                          VAL R22
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R3
      259 CAPTURE                          VAL R15
      260 DUPCLOSURE                       R45 K104 [PROTO_54]
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R5
      264 CAPTURE                          VAL R25
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R22
      267 CAPTURE                          VAL R2
      268 CAPTURE                          VAL R42
      269 CAPTURE                          VAL R18
      270 CAPTURE                          VAL R35
      271 CAPTURE                          VAL R12
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R14
      274 CAPTURE                          VAL R37
      275 CAPTURE                          VAL R23
      276 CAPTURE                          VAL R15
      277 CAPTURE                          VAL R16
      278 CAPTURE                          VAL R11
      279 CAPTURE                          VAL R33
      280 NEWTABLE                         R46 0 3
      282 DUPTABLE                         R47 K108 [{["tier"], ["key"] = "Flagship"}]
      283 GETTABLEKS                       R48 R4 K109 ["Tier"]
      285 GETTABLEKS                       R48 R48 K110 ["HIGH"]
      287 SETTABLEKS                       R48 R47 K105 ["tier"]
      289 DUPTABLE                         R48 K112 [{["tier"], ["key"] = "MidRange"}]
      290 GETTABLEKS                       R49 R4 K109 ["Tier"]
      292 GETTABLEKS                       R49 R49 K113 ["MID"]
      294 SETTABLEKS                       R49 R48 K105 ["tier"]
      296 DUPTABLE                         R49 K115 [{["tier"], ["key"] = "EntryLevel"}]
      297 GETTABLEKS                       R50 R4 K109 ["Tier"]
      299 GETTABLEKS                       R50 R50 K116 ["LOW"]
      301 SETTABLEKS                       R50 R49 K105 ["tier"]
      303 SETLIST                          R46 R47 3 [1]
      305 DUPCLOSURE                       R47 K117 [PROTO_55]
      306 CAPTURE                          VAL R3
      307 DUPCLOSURE                       R48 K118 [PROTO_56]
      308 DUPCLOSURE                       R49 K119 [PROTO_65]
      309 CAPTURE                          VAL R26
      310 CAPTURE                          VAL R5
      311 CAPTURE                          VAL R7
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R3
      314 CAPTURE                          VAL R25
      315 CAPTURE                          VAL R24
      316 CAPTURE                          VAL R10
      317 CAPTURE                          VAL R15
      318 CAPTURE                          VAL R12
      319 CAPTURE                          VAL R14
      320 CAPTURE                          VAL R22
      321 CAPTURE                          VAL R46
      322 CAPTURE                          VAL R9
      323 CAPTURE                          VAL R28
      324 CAPTURE                          VAL R21
      325 CAPTURE                          VAL R20
      326 DUPCLOSURE                       R50 K120 [PROTO_77]
      327 CAPTURE                          VAL R26
      328 CAPTURE                          VAL R1
      329 CAPTURE                          VAL R2
      330 CAPTURE                          VAL R7
      331 CAPTURE                          VAL R5
      332 CAPTURE                          VAL R25
      333 CAPTURE                          VAL R9
      334 CAPTURE                          VAL R27
      335 CAPTURE                          VAL R6
      336 CAPTURE                          VAL R21
      337 CAPTURE                          VAL R24
      338 CAPTURE                          VAL R43
      339 CAPTURE                          VAL R20
      340 CAPTURE                          VAL R44
      341 CAPTURE                          VAL R45
      342 CAPTURE                          VAL R49
      343 GETTABLEKS                       R51 R7 K121 ["memo"]
      345 MOVE                             R52 R50
      346 CALL                             R51 1 -1
      347 RETURN                           R51 -1
