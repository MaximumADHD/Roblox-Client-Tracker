PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelect"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GameId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["universe"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        7 GETTABLEKS                       R3 R3 K2 ["useTokens"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R5 R1 K3 ["PrivacyType"]
       12 JUMPIFEQKS                       R5 K4 ["Public"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 JUMPIFNOT                        R4 ; [+7]
       17 GETTABLEKS                       R5 R3 K5 ["Color"]
       19 GETTABLEKS                       R5 R5 K6 ["System"]
       21 GETTABLEKS                       R5 R5 K7 ["Success"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K8 ["createElement"]
       28 GETUPVAL                         R7 3
       29 DUPTABLE                         R8 K14 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["Size"], ["onActivated"], ["stateLayer"]}]
       30 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       32 LOADN                            R10 640
       33 LOADN                            R11 0
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K11 ["Size"]
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       42 DUPTABLE                         R9 K19 [{"affordance"}]
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R10 R10 K20 ["None"]
       46 SETTABLEKS                       R10 R9 K18 ["affordance"]
       48 SETTABLEKS                       R9 R8 K13 ["stateLayer"]
       50 DUPTABLE                         R9 K24 [{"RadioButton", "UniverseIcon", "TextColumn"}]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K8 ["createElement"]
       54 GETUPVAL                         R11 5
       55 GETTABLEKS                       R11 R11 K25 ["Item"]
       57 DUPTABLE                         R12 K31 [{["LayoutOrder"], ["value"], ["size"], ["label"] = ""}]
       58 MOVE                             R13 R2
       59 CALL                             R13 0 1
       60 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
       62 GETTABLEKS                       R14 R1 K32 ["GameId"]
       64 FASTCALL1                        TOSTRING R14 ; [+2]
       65 GETIMPORT                        R13 K34 [tostring]
       67 CALL                             R13 1 1
       68 SETTABLEKS                       R13 R12 K27 ["value"]
       70 GETUPVAL                         R13 6
       71 GETTABLEKS                       R13 R13 K35 ["Small"]
       73 SETTABLEKS                       R13 R12 K28 ["size"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K21 ["RadioButton"]
       78 GETUPVAL                         R10 2
       79 GETTABLEKS                       R10 R10 K8 ["createElement"]
       81 GETUPVAL                         R11 7
       82 DUPTABLE                         R12 K38 [{["LayoutOrder"], ["tag"] = "radius-small", ["Image"], ["Size"]}]
       83 MOVE                             R13 R2
       84 CALL                             R13 0 1
       85 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
       87 GETTABLEKS                       R13 R1 K39 ["Icon"]
       89 SETTABLEKS                       R13 R12 K37 ["Image"]
       91 GETIMPORT                        R13 K17 [UDim2.fromOffset]
       93 LOADN                            R14 32
       94 LOADN                            R15 32
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K11 ["Size"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K22 ["UniverseIcon"]
      101 GETUPVAL                         R10 2
      102 GETTABLEKS                       R10 R10 K8 ["createElement"]
      104 GETUPVAL                         R11 3
      105 DUPTABLE                         R12 K41 [{["LayoutOrder"], ["tag"] = "col align-x-left fill gap-xxsmall size-0-0 auto-y"}]
      106 MOVE                             R13 R2
      107 CALL                             R13 0 1
      108 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      110 DUPTABLE                         R13 K43 [{"UniverseName", "PrivacyType"}]
      111 GETUPVAL                         R14 2
      112 GETTABLEKS                       R14 R14 K8 ["createElement"]
      114 GETUPVAL                         R15 8
      115 DUPTABLE                         R16 K46 [{["LayoutOrder"], ["tag"] = "auto-xy text-body-medium text-align-x-left content-emphasis", ["Text"]}]
      116 MOVE                             R17 R2
      117 CALL                             R17 0 1
      118 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      120 GETTABLEKS                       R17 R1 K47 ["Name"]
      122 SETTABLEKS                       R17 R16 K45 ["Text"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K42 ["UniverseName"]
      127 GETUPVAL                         R14 2
      128 GETTABLEKS                       R14 R14 K8 ["createElement"]
      130 GETUPVAL                         R15 8
      131 DUPTABLE                         R16 K50 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["Text"], ["textStyle"]}]
      132 MOVE                             R17 R2
      133 CALL                             R17 0 1
      134 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      136 GETTABLEKS                       R17 R1 K3 ["PrivacyType"]
      138 SETTABLEKS                       R17 R16 K45 ["Text"]
      140 SETTABLEKS                       R5 R16 K49 ["textStyle"]
      142 CALL                             R14 2 1
      143 SETTABLEKS                       R14 R13 K3 ["PrivacyType"]
      145 CALL                             R10 3 1
      146 SETTABLEKS                       R10 R9 K23 ["TextColumn"]
      148 CALL                             R6 3 -1
      149 RETURN                           R6 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["translationStrings"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K2 [{"Body"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K3 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K6 [{["tag"] = "row align-y-top gap-medium size-full-0 auto-y"}]
       10 DUPTABLE                         R7 K9 [{"ProgressSpinner", "Title"}]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K3 ["createElement"]
       14 GETUPVAL                         R9 3
       15 DUPTABLE                         R10 K14 [{["LayoutOrder"], ["tag"] = "auto-xy", ["shape"], ["size"]}]
       16 MOVE                             R11 R2
       17 CALL                             R11 0 1
       18 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       20 GETUPVAL                         R11 4
       21 GETTABLEKS                       R11 R11 K15 ["Circle"]
       23 SETTABLEKS                       R11 R10 K12 ["shape"]
       25 GETUPVAL                         R11 5
       26 GETTABLEKS                       R11 R11 K16 ["Medium"]
       28 SETTABLEKS                       R11 R10 K13 ["size"]
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K7 ["ProgressSpinner"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K3 ["createElement"]
       36 GETUPVAL                         R9 6
       37 DUPTABLE                         R10 K19 [{["tag"] = "auto-xy text-title-medium", ["LayoutOrder"], ["Text"]}]
       38 MOVE                             R11 R2
       39 CALL                             R11 0 1
       40 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       42 GETTABLEKS                       R11 R1 K20 ["PublishInProgress"]
       44 SETTABLEKS                       R11 R10 K18 ["Text"]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K8 ["Title"]
       49 CALL                             R4 3 1
       50 SETTABLEKS                       R4 R3 K1 ["Body"]
       52 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 SETTABLE                         R1 R2 R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["Failed"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 LOADNIL                          R4
       11 CALL                             R2 2 0
       12 GETIMPORT                        R2 K3 [string.split]
       14 MOVE                             R3 R0
       15 LOADK                            R4 K4 [":"]
       16 CALL                             R2 2 1
       17 GETTABLEN                        R3 R2 1
       18 GETTABLEN                        R6 R2 2
       19 FASTCALL1                        TONUMBER R6 ; [+2]
       20 GETIMPORT                        R5 K7 [tonumber]
       22 CALL                             R5 1 1
       23 ORK                              R4 R5 K5 [0]
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R3
       26 MOVE                             R7 R4
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R0
       30 DUPTABLE                         R8 K9 [{"Universes", "Failed"}]
       31 SETTABLEKS                       R5 R8 K8 ["Universes"]
       33 JUMPIFEQKNIL                     R5 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 SETTABLEKS                       R9 R8 K0 ["Failed"]
       39 CALL                             R6 2 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K2 [string.lower]
        2 GETTABLEKS                       R4 R0 K3 ["name"]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K2 [string.lower]
        7 GETTABLEKS                       R5 R1 K3 ["name"]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R3 K2 [{"id", "text"}]
        3 LOADK                            R5 K3 ["User:%*"]
        4 GETUPVAL                         R7 0
        5 NAMECALL                         R7 R7 K4 ["GetUserId"]
        7 CALL                             R7 1 1
        8 NAMECALL                         R5 R5 K5 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 SETTABLEKS                       R4 R3 K0 ["id"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K6 ["MyExperiences"]
       17 SETTABLEKS                       R4 R3 K1 ["text"]
       19 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K9 [table.insert]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R1 2
       26 JUMPIFNOT                        R1 ; [+50]
       27 GETUPVAL                         R1 2
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 FORGPREP                         R1
       31 GETTABLEKS                       R6 R5 K10 ["name"]
       33 JUMPIF                           R6 ; [+6]
       34 GETTABLEKS                       R7 R5 K0 ["id"]
       36 FASTCALL1                        TOSTRING R7 ; [+2]
       37 GETIMPORT                        R6 K12 [tostring]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K10 ["name"]
       42 FORGLOOP                         R1 2 ; [-12]
       44 GETUPVAL                         R1 2
       45 GETIMPORT                        R2 K14 [table.sort]
       47 MOVE                             R3 R1
       48 DUPCLOSURE                       R4 K15 [PROTO_6]
       49 CALL                             R2 2 0
       50 GETIMPORT                        R2 K17 [ipairs]
       52 MOVE                             R3 R1
       53 CALL                             R2 1 3
       54 FORGPREP_INEXT                   R2
       55 DUPTABLE                         R9 K2 [{"id", "text"}]
       56 LOADK                            R11 K18 ["Group:%*"]
       57 GETTABLEKS                       R13 R6 K0 ["id"]
       59 NAMECALL                         R11 R11 K5 ["format"]
       61 CALL                             R11 2 1
       62 MOVE                             R10 R11
       63 SETTABLEKS                       R10 R9 K0 ["id"]
       65 GETTABLEKS                       R10 R6 K10 ["name"]
       67 SETTABLEKS                       R10 R9 K1 ["text"]
       69 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       71 MOVE                             R8 R0
       72 GETIMPORT                        R7 K9 [table.insert]
       74 CALL                             R7 2 0
       75 FORGLOOP                         R2 2 [inext] ; [-21]
       77 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEN                        R0 R1 1
        5 GETTABLEKS                       R0 R0 K0 ["id"]
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R1 K2 [{"message", "universe"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K0 ["message"]
        9 GETUPVAL                         R2 0
       10 SETTABLEKS                       R2 R1 K1 ["universe"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 MOVE                             R2 R1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETTABLEKS                       R2 R1 K0 ["Universes"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 MOVE                             R3 R2
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLEKS                       R8 R7 K1 ["GameId"]
       15 JUMPIFNOTEQ                      R8 R0 ; [+8]
       17 GETUPVAL                         R8 2
       18 MOVE                             R9 R0
       19 CALL                             R8 1 0
       20 GETUPVAL                         R8 3
       21 MOVE                             R9 R7
       22 CALL                             R8 1 0
       23 RETURN                           R0 0
       24 FORGLOOP                         R3 2 ; [-12]
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 MOVE                             R1 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLEKS                       R1 R0 K0 ["Universes"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R2 R0 K1 ["Failed"]
       11 JUMPIFNOT                        R2 ; [+3]
       12 NEWTABLE                         R2 0 0
       14 RETURN                           R2 1
       15 NEWTABLE                         R2 0 0
       17 GETIMPORT                        R3 K4 [string.lower]
       19 GETUPVAL                         R4 2
       20 CALL                             R3 1 1
       21 MOVE                             R4 R1
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 JUMPIFEQKS                       R3 K5 [""] ; [+13]
       27 GETIMPORT                        R9 K4 [string.lower]
       29 GETTABLEKS                       R11 R8 K6 ["Name"]
       31 ORK                              R10 R11 K5 [""]
       32 CALL                             R9 1 1
       33 GETIMPORT                        R10 K8 [string.find]
       35 MOVE                             R11 R9
       36 MOVE                             R12 R3
       37 CALL                             R10 2 1
       38 JUMPIFNOT                        R10 ; [+18]
       39 GETTABLEKS                       R10 R8 K9 ["GameId"]
       41 FASTCALL1                        TOSTRING R10 ; [+2]
       42 GETIMPORT                        R9 K11 [tostring]
       44 CALL                             R9 1 1
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R10 R10 K12 ["createElement"]
       48 GETUPVAL                         R11 4
       49 DUPTABLE                         R12 K15 [{"universe", "onSelect"}]
       50 SETTABLEKS                       R8 R12 K13 ["universe"]
       52 GETUPVAL                         R13 5
       53 SETTABLEKS                       R13 R12 K14 ["onSelect"]
       55 CALL                             R10 2 1
       56 SETTABLE                         R10 R2 R9
       57 FORGLOOP                         R4 2 ; [-33]
       59 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 4
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_15:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["translationStrings"]
        2 GETTABLEKS                       R2 R0 K1 ["tokens"]
        4 GETTABLEKS                       R3 R0 K2 ["getUniverses"]
        6 GETTABLEKS                       R4 R0 K3 ["getGroups"]
        8 GETTABLEKS                       R5 R0 K4 ["requestPublish"]
       10 GETTABLEKS                       R6 R0 K5 ["universe"]
       12 GETTABLEKS                       R7 R0 K6 ["setUniverse"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["useState"]
       17 LOADK                            R9 K8 [""]
       18 CALL                             R8 1 2
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K7 ["useState"]
       22 LOADNIL                          R11
       23 CALL                             R10 1 2
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K7 ["useState"]
       27 LOADK                            R13 K8 [""]
       28 CALL                             R12 1 2
       29 GETUPVAL                         R14 0
       30 GETTABLEKS                       R14 R14 K7 ["useState"]
       32 LOADK                            R15 K8 [""]
       33 CALL                             R14 1 2
       34 GETUPVAL                         R16 0
       35 GETTABLEKS                       R16 R16 K7 ["useState"]
       37 LOADB                            R17 0
       38 CALL                             R16 1 2
       39 GETUPVAL                         R18 0
       40 GETTABLEKS                       R18 R18 K7 ["useState"]
       42 LOADNIL                          R19
       43 CALL                             R18 1 2
       44 GETUPVAL                         R20 0
       45 GETTABLEKS                       R20 R20 K7 ["useState"]
       47 NEWTABLE                         R21 0 0
       49 CALL                             R20 1 2
       50 GETUPVAL                         R22 0
       51 GETTABLEKS                       R22 R22 K9 ["useCallback"]
       53 NEWCLOSURE                       R23 P0
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R19
       56 CAPTURE                          VAL R17
       57 NEWTABLE                         R24 0 2
       59 MOVE                             R25 R4
       60 MOVE                             R26 R19
       61 SETLIST                          R24 R25 2 [1]
       63 CALL                             R22 2 1
       64 GETUPVAL                         R23 0
       65 GETTABLEKS                       R23 R23 K9 ["useCallback"]
       67 NEWCLOSURE                       R24 P1
       68 CAPTURE                          VAL R20
       69 CAPTURE                          VAL R21
       70 NEWTABLE                         R25 0 2
       72 MOVE                             R26 R20
       73 MOVE                             R27 R21
       74 SETLIST                          R25 R26 2 [1]
       76 CALL                             R23 2 1
       77 GETUPVAL                         R24 0
       78 GETTABLEKS                       R24 R24 K9 ["useCallback"]
       80 NEWCLOSURE                       R25 P2
       81 CAPTURE                          VAL R20
       82 CAPTURE                          VAL R23
       83 CAPTURE                          VAL R3
       84 NEWTABLE                         R26 0 4
       86 MOVE                             R27 R12
       87 MOVE                             R28 R3
       88 MOVE                             R29 R20
       89 MOVE                             R30 R21
       90 SETLIST                          R26 R27 4 [1]
       92 CALL                             R24 2 1
       93 GETUPVAL                         R25 0
       94 GETTABLEKS                       R25 R25 K10 ["useMemo"]
       96 NEWCLOSURE                       R26 P3
       97 CAPTURE                          UPVAL U1
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R18
      100 NEWTABLE                         R27 0 2
      102 MOVE                             R28 R18
      103 MOVE                             R29 R1
      104 SETLIST                          R27 R28 2 [1]
      106 CALL                             R25 2 1
      107 GETUPVAL                         R26 0
      108 GETTABLEKS                       R26 R26 K11 ["useEffect"]
      110 NEWCLOSURE                       R27 P4
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R25
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R24
      115 NEWTABLE                         R28 0 2
      117 MOVE                             R29 R16
      118 MOVE                             R30 R25
      119 SETLIST                          R28 R29 2 [1]
      121 CALL                             R26 2 0
      122 GETUPVAL                         R26 0
      123 GETTABLEKS                       R26 R26 K11 ["useEffect"]
      125 NEWCLOSURE                       R27 P5
      126 CAPTURE                          VAL R22
      127 NEWTABLE                         R28 0 1
      129 MOVE                             R29 R22
      130 SETLIST                          R28 R29 1 [1]
      132 CALL                             R26 2 0
      133 GETUPVAL                         R26 0
      134 GETTABLEKS                       R26 R26 K9 ["useCallback"]
      136 NEWCLOSURE                       R27 P6
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R8
      140 NEWTABLE                         R28 0 3
      142 MOVE                             R29 R8
      143 MOVE                             R30 R10
      144 MOVE                             R31 R5
      145 SETLIST                          R28 R29 3 [1]
      147 CALL                             R26 2 1
      148 GETUPVAL                         R27 0
      149 GETTABLEKS                       R27 R27 K9 ["useCallback"]
      151 NEWCLOSURE                       R28 P7
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R7
      156 NEWTABLE                         R29 0 3
      158 MOVE                             R30 R20
      159 MOVE                             R31 R12
      160 MOVE                             R32 R7
      161 SETLIST                          R29 R30 3 [1]
      163 CALL                             R27 2 1
      164 GETUPVAL                         R28 0
      165 GETTABLEKS                       R28 R28 K10 ["useMemo"]
      167 NEWCLOSURE                       R29 P8
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R14
      171 CAPTURE                          UPVAL U0
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          VAL R27
      174 NEWTABLE                         R30 0 4
      176 MOVE                             R31 R20
      177 MOVE                             R32 R12
      178 MOVE                             R33 R14
      179 MOVE                             R34 R27
      180 SETLIST                          R30 R31 4 [1]
      182 CALL                             R28 2 1
      183 GETTABLE                         R29 R20 R12
      184 NOT                              R30 R16
      185 JUMPIF                           R30 ; [+4]
      186 JUMPIFEQKNIL                     R29 ; [+2]
      188 LOADB                            R30 0 +1
      189 LOADB                            R30 1
      190 MOVE                             R31 R16
      191 JUMPIFNOT                        R31 ; [+4]
      192 JUMPIFEQKNIL                     R18 ; [+2]
      194 LOADB                            R31 0 +1
      195 LOADB                            R31 1
      196 JUMPIFNOT                        R29 ; [+3]
      197 GETTABLEKS                       R32 R29 K12 ["Failed"]
      199 JUMPIF                           R32 ; [+1]
      200 LOADB                            R32 0
      201 GETUPVAL                         R33 3
      202 CALL                             R33 0 1
      203 GETTABLEKS                       R34 R2 K13 ["Size"]
      205 GETTABLEKS                       R34 R34 K14 ["Size_800"]
      207 DUPTABLE                         R35 K18 [{"FilterOptions", "UniverseView", "MessageField"}]
      208 GETUPVAL                         R36 0
      209 GETTABLEKS                       R36 R36 K19 ["createElement"]
      211 GETUPVAL                         R37 4
      212 DUPTABLE                         R38 K23 [{["LayoutOrder"], ["tag"] = "row flex-between size-full-0 auto-y"}]
      213 MOVE                             R39 R33
      214 CALL                             R39 0 1
      215 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      217 DUPTABLE                         R39 K26 [{"CreatorDropdown", "SearchField"}]
      218 GETUPVAL                         R40 0
      219 GETTABLEKS                       R40 R40 K19 ["createElement"]
      221 GETUPVAL                         R41 5
      222 GETTABLEKS                       R41 R41 K27 ["Root"]
      224 DUPTABLE                         R42 K36 [{["LayoutOrder"], ["label"] = "", ["value"], ["items"], ["width"], ["size"], ["maxHeight"], ["isDisabled"], ["onItemChanged"]}]
      225 MOVE                             R43 R33
      226 CALL                             R43 0 1
      227 SETTABLEKS                       R43 R42 K20 ["LayoutOrder"]
      229 SETTABLEKS                       R12 R42 K29 ["value"]
      231 SETTABLEKS                       R25 R42 K30 ["items"]
      233 GETIMPORT                        R43 K39 [UDim.new]
      235 LOADN                            R44 0
      236 LOADN                            R45 220
      237 CALL                             R43 2 1
      238 SETTABLEKS                       R43 R42 K31 ["width"]
      240 GETUPVAL                         R43 6
      241 GETTABLEKS                       R43 R43 K40 ["Small"]
      243 SETTABLEKS                       R43 R42 K32 ["size"]
      245 GETUPVAL                         R44 7
      246 JUMPIFNOT                        R44 ; [+2]
      247 MULK                             R43 R34 K41 [6]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R43
      250 SETTABLEKS                       R43 R42 K33 ["maxHeight"]
      252 OR                               R43 R30 R31
      253 SETTABLEKS                       R43 R42 K34 ["isDisabled"]
      255 NEWCLOSURE                       R43 P9
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R24
      258 SETTABLEKS                       R43 R42 K35 ["onItemChanged"]
      260 CALL                             R40 2 1
      261 SETTABLEKS                       R40 R39 K24 ["CreatorDropdown"]
      263 GETUPVAL                         R40 0
      264 GETTABLEKS                       R40 R40 K19 ["createElement"]
      266 GETUPVAL                         R41 8
      267 DUPTABLE                         R42 K46 [{["LayoutOrder"], ["label"] = "", ["text"], ["placeholder"], ["size"], ["width"], ["isDisabled"], ["shape"], ["onChanged"]}]
      268 MOVE                             R43 R33
      269 CALL                             R43 0 1
      270 SETTABLEKS                       R43 R42 K20 ["LayoutOrder"]
      272 SETTABLEKS                       R14 R42 K42 ["text"]
      274 GETTABLEKS                       R43 R1 K47 ["SearchPlaceholder"]
      276 SETTABLEKS                       R43 R42 K43 ["placeholder"]
      278 GETUPVAL                         R43 6
      279 GETTABLEKS                       R43 R43 K40 ["Small"]
      281 SETTABLEKS                       R43 R42 K32 ["size"]
      283 GETIMPORT                        R43 K39 [UDim.new]
      285 LOADN                            R44 0
      286 LOADN                            R45 200
      287 CALL                             R43 2 1
      288 SETTABLEKS                       R43 R42 K31 ["width"]
      290 SETTABLEKS                       R30 R42 K34 ["isDisabled"]
      292 GETUPVAL                         R43 9
      293 GETTABLEKS                       R43 R43 K48 ["Rounded"]
      295 SETTABLEKS                       R43 R42 K44 ["shape"]
      297 SETTABLEKS                       R15 R42 K45 ["onChanged"]
      299 CALL                             R40 2 1
      300 SETTABLEKS                       R40 R39 K25 ["SearchField"]
      302 CALL                             R36 3 1
      303 SETTABLEKS                       R36 R35 K15 ["FilterOptions"]
      305 JUMPIFNOT                        R30 ; [+34]
      306 GETUPVAL                         R36 0
      307 GETTABLEKS                       R36 R36 K19 ["createElement"]
      309 GETUPVAL                         R37 4
      310 DUPTABLE                         R38 K50 [{["LayoutOrder"], ["tag"] = "col align-x-center align-y-center size-full-2200"}]
      311 MOVE                             R39 R33
      312 CALL                             R39 0 1
      313 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      315 DUPTABLE                         R39 K52 [{"ProgressSpinner"}]
      316 GETUPVAL                         R40 0
      317 GETTABLEKS                       R40 R40 K19 ["createElement"]
      319 GETUPVAL                         R41 10
      320 DUPTABLE                         R42 K53 [{"LayoutOrder", "shape", "size"}]
      321 MOVE                             R43 R33
      322 CALL                             R43 0 1
      323 SETTABLEKS                       R43 R42 K20 ["LayoutOrder"]
      325 GETUPVAL                         R43 11
      326 GETTABLEKS                       R43 R43 K54 ["Circle"]
      328 SETTABLEKS                       R43 R42 K44 ["shape"]
      330 GETUPVAL                         R43 12
      331 GETTABLEKS                       R43 R43 K55 ["Large"]
      333 SETTABLEKS                       R43 R42 K32 ["size"]
      335 CALL                             R40 2 1
      336 SETTABLEKS                       R40 R39 K51 ["ProgressSpinner"]
      338 CALL                             R36 3 1
      339 JUMP                             ; [+168]
      340 GETUPVAL                         R36 0
      341 GETTABLEKS                       R36 R36 K19 ["createElement"]
      343 GETUPVAL                         R37 13
      344 DUPTABLE                         R38 K59 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-2200", ["layout"], ["scroll"]}]
      345 MOVE                             R39 R33
      346 CALL                             R39 0 1
      347 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      349 DUPTABLE                         R39 K61 [{"FillDirection"}]
      350 GETIMPORT                        R40 K64 [Enum.FillDirection.Vertical]
      352 SETTABLEKS                       R40 R39 K60 ["FillDirection"]
      354 SETTABLEKS                       R39 R38 K57 ["layout"]
      356 DUPTABLE                         R39 K69 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      357 GETIMPORT                        R40 K72 [UDim2.fromOffset]
      359 LOADN                            R41 0
      360 LOADN                            R42 0
      361 CALL                             R40 2 1
      362 SETTABLEKS                       R40 R39 K65 ["CanvasSize"]
      364 GETIMPORT                        R40 K75 [Enum.AutomaticSize.Y]
      366 SETTABLEKS                       R40 R39 K66 ["AutomaticCanvasSize"]
      368 GETIMPORT                        R40 K76 [Enum.ScrollingDirection.Y]
      370 SETTABLEKS                       R40 R39 K67 ["ScrollingDirection"]
      372 GETUPVAL                         R40 14
      373 GETTABLEKS                       R40 R40 K77 ["Always"]
      375 SETTABLEKS                       R40 R39 K68 ["scrollBarVisibility"]
      377 SETTABLEKS                       R39 R38 K58 ["scroll"]
      379 DUPTABLE                         R39 K79 [{"UniverseList"}]
      380 JUMPIF                           R31 ; [+1]
      381 JUMPIFNOT                        R32 ; [+70]
      382 GETUPVAL                         R40 0
      383 GETTABLEKS                       R40 R40 K19 ["createElement"]
      385 GETUPVAL                         R41 4
      386 DUPTABLE                         R42 K81 [{["tag"] = "col align-x-center align-y-center gap-medium size-full-full"}]
      387 DUPTABLE                         R43 K84 [{"Message", "RetryButton"}]
      388 GETUPVAL                         R44 0
      389 GETTABLEKS                       R44 R44 K19 ["createElement"]
      391 GETUPVAL                         R45 15
      392 DUPTABLE                         R46 K88 [{["LayoutOrder"], ["tag"] = "auto-xy text-body-medium", ["textStyle"], ["Text"]}]
      393 MOVE                             R47 R33
      394 CALL                             R47 0 1
      395 SETTABLEKS                       R47 R46 K20 ["LayoutOrder"]
      397 GETTABLEKS                       R47 R2 K89 ["Color"]
      399 GETTABLEKS                       R47 R47 K90 ["System"]
      401 GETTABLEKS                       R47 R47 K91 ["Alert"]
      403 SETTABLEKS                       R47 R46 K86 ["textStyle"]
      405 JUMPIFNOT                        R31 ; [+3]
      406 GETTABLEKS                       R47 R1 K92 ["FailedToLoadGroups"]
      408 JUMP                             ; [+2]
      409 GETTABLEKS                       R47 R1 K93 ["FailedToLoadUniverses"]
      411 SETTABLEKS                       R47 R46 K87 ["Text"]
      413 CALL                             R44 2 1
      414 SETTABLEKS                       R44 R43 K82 ["Message"]
      416 GETUPVAL                         R44 0
      417 GETTABLEKS                       R44 R44 K19 ["createElement"]
      419 GETUPVAL                         R45 16
      420 DUPTABLE                         R46 K96 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      421 MOVE                             R47 R33
      422 CALL                             R47 0 1
      423 SETTABLEKS                       R47 R46 K20 ["LayoutOrder"]
      425 GETTABLEKS                       R47 R1 K83 ["RetryButton"]
      427 SETTABLEKS                       R47 R46 K42 ["text"]
      429 GETUPVAL                         R47 17
      430 GETTABLEKS                       R47 R47 K97 ["Emphasis"]
      432 SETTABLEKS                       R47 R46 K94 ["variant"]
      434 GETUPVAL                         R47 6
      435 GETTABLEKS                       R47 R47 K98 ["XSmall"]
      437 SETTABLEKS                       R47 R46 K32 ["size"]
      439 NEWCLOSURE                       R47 P10
      440 CAPTURE                          VAL R31
      441 CAPTURE                          VAL R17
      442 CAPTURE                          VAL R22
      443 CAPTURE                          VAL R24
      444 CAPTURE                          VAL R12
      445 SETTABLEKS                       R47 R46 K95 ["onActivated"]
      447 CALL                             R44 2 1
      448 SETTABLEKS                       R44 R43 K83 ["RetryButton"]
      450 CALL                             R40 3 1
      451 JUMP                             ; [+53]
      452 GETIMPORT                        R41 K100 [next]
      454 MOVE                             R42 R28
      455 CALL                             R41 1 1
      456 JUMPIFNOTEQKNIL                  R41 ; [+25]
      458 GETUPVAL                         R40 0
      459 GETTABLEKS                       R40 R40 K19 ["createElement"]
      461 GETUPVAL                         R41 4
      462 DUPTABLE                         R42 K81 [{["tag"] = "col align-x-center align-y-center gap-medium size-full-full"}]
      463 DUPTABLE                         R43 K101 [{"Message"}]
      464 GETUPVAL                         R44 0
      465 GETTABLEKS                       R44 R44 K19 ["createElement"]
      467 GETUPVAL                         R45 15
      468 DUPTABLE                         R46 K103 [{["LayoutOrder"], ["tag"] = "auto-xy text-body-small", ["Text"]}]
      469 MOVE                             R47 R33
      470 CALL                             R47 0 1
      471 SETTABLEKS                       R47 R46 K20 ["LayoutOrder"]
      473 GETTABLEKS                       R47 R1 K104 ["NoExperiencesMatchFilter"]
      475 SETTABLEKS                       R47 R46 K87 ["Text"]
      477 CALL                             R44 2 1
      478 SETTABLEKS                       R44 R43 K82 ["Message"]
      480 CALL                             R40 3 1
      481 JUMP                             ; [+23]
      482 GETUPVAL                         R40 0
      483 GETTABLEKS                       R40 R40 K19 ["createElement"]
      485 GETUPVAL                         R41 18
      486 GETTABLEKS                       R41 R41 K27 ["Root"]
      488 DUPTABLE                         R42 K106 [{"value", "onValueChanged"}]
      489 JUMPIFNOT                        R10 ; [+6]
      490 FASTCALL1                        TOSTRING R10 ; [+3]
      491 MOVE                             R44 R10
      492 GETIMPORT                        R43 K108 [tostring]
      494 CALL                             R43 1 1
      495 JUMP                             ; [+1]
      496 LOADNIL                          R43
      497 SETTABLEKS                       R43 R42 K29 ["value"]
      499 NEWCLOSURE                       R43 P11
      500 CAPTURE                          VAL R27
      501 SETTABLEKS                       R43 R42 K105 ["onValueChanged"]
      503 MOVE                             R43 R28
      504 CALL                             R40 3 1
      505 SETTABLEKS                       R40 R39 K78 ["UniverseList"]
      507 CALL                             R36 3 1
      508 SETTABLEKS                       R36 R35 K16 ["UniverseView"]
      510 GETUPVAL                         R36 0
      511 GETTABLEKS                       R36 R36 K19 ["createElement"]
      513 GETUPVAL                         R37 19
      514 DUPTABLE                         R38 K110 [{"LayoutOrder", "text", "label", "hint", "placeholder", "size", "width", "onChanged"}]
      515 MOVE                             R39 R33
      516 CALL                             R39 0 1
      517 SETTABLEKS                       R39 R38 K20 ["LayoutOrder"]
      519 SETTABLEKS                       R8 R38 K42 ["text"]
      521 GETTABLEKS                       R39 R1 K111 ["MessageFieldLabel"]
      523 SETTABLEKS                       R39 R38 K28 ["label"]
      525 GETTABLEKS                       R39 R1 K112 ["MessageFieldHint"]
      527 SETTABLEKS                       R39 R38 K109 ["hint"]
      529 GETTABLEKS                       R39 R1 K113 ["MessageFieldPlaceholder"]
      531 SETTABLEKS                       R39 R38 K43 ["placeholder"]
      533 GETUPVAL                         R39 6
      534 GETTABLEKS                       R39 R39 K40 ["Small"]
      536 SETTABLEKS                       R39 R38 K32 ["size"]
      538 GETIMPORT                        R39 K39 [UDim.new]
      540 LOADN                            R40 1
      541 LOADN                            R41 0
      542 CALL                             R39 2 1
      543 SETTABLEKS                       R39 R38 K31 ["width"]
      545 SETTABLEKS                       R9 R38 K45 ["onChanged"]
      547 CALL                             R36 2 1
      548 SETTABLEKS                       R36 R35 K17 ["MessageField"]
      550 DUPTABLE                         R36 K117 [{"body", "publish", "isPublishDisabled"}]
      551 SETTABLEKS                       R35 R36 K114 ["body"]
      553 SETTABLEKS                       R26 R36 K115 ["publish"]
      555 MOVE                             R37 R30
      556 JUMPIF                           R37 ; [+4]
      557 JUMPIFEQKNIL                     R10 ; [+2]
      559 LOADB                            R37 0 +1
      560 LOADB                            R37 1
      561 SETTABLEKS                       R37 R36 K116 ["isPublishDisabled"]
      563 RETURN                           R36 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K0 ["PublishInProgress"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["requestPublish"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 3
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 LOADK                            R3 K2 ["PublishCompleted"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["success"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 GETTABLEKS                       R2 R1 K1 ["translationStrings"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["Hooks"]
        7 GETTABLEKS                       R3 R3 K3 ["useTokens"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["useState"]
       13 LOADK                            R5 K5 ["PublishAs"]
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K4 ["useState"]
       18 LOADNIL                          R7
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K4 ["useState"]
       23 LOADNIL                          R9
       24 CALL                             R8 1 2
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K4 ["useState"]
       28 DUPTABLE                         R11 K10 [{["success"] = False, ["error"] = }]
       29 CALL                             R10 1 2
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       33 NEWCLOSURE                       R13 P0
       34 CAPTURE                          VAL R9
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R11
       38 NEWTABLE                         R14 0 4
       40 MOVE                             R15 R1
       41 MOVE                             R16 R4
       42 MOVE                             R17 R5
       43 MOVE                             R18 R11
       44 SETLIST                          R14 R15 4 [1]
       46 CALL                             R12 2 1
       47 GETUPVAL                         R13 1
       48 GETTABLEKS                       R13 R13 K11 ["useCallback"]
       50 NEWCLOSURE                       R14 P1
       51 CAPTURE                          VAL R12
       52 CAPTURE                          VAL R8
       53 NEWTABLE                         R15 0 2
       55 MOVE                             R16 R12
       56 MOVE                             R17 R8
       57 SETLIST                          R15 R16 2 [1]
       59 CALL                             R13 2 1
       60 GETUPVAL                         R14 1
       61 GETTABLEKS                       R14 R14 K11 ["useCallback"]
       63 NEWCLOSURE                       R15 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R10
       66 NEWTABLE                         R16 0 2
       68 GETTABLEKS                       R17 R0 K12 ["onResolved"]
       70 MOVE                             R18 R10
       71 SETLIST                          R16 R17 2 [1]
       73 CALL                             R14 2 1
       74 GETUPVAL                         R15 2
       75 DUPTABLE                         R16 K19 [{"translationStrings", "tokens", "getUniverses", "getGroups", "requestPublish", "universe", "setUniverse"}]
       76 SETTABLEKS                       R2 R16 K1 ["translationStrings"]
       78 SETTABLEKS                       R3 R16 K13 ["tokens"]
       80 GETTABLEKS                       R17 R1 K14 ["getUniverses"]
       82 SETTABLEKS                       R17 R16 K14 ["getUniverses"]
       84 GETTABLEKS                       R17 R1 K15 ["getGroups"]
       86 SETTABLEKS                       R17 R16 K15 ["getGroups"]
       88 SETTABLEKS                       R12 R16 K16 ["requestPublish"]
       90 SETTABLEKS                       R6 R16 K17 ["universe"]
       92 SETTABLEKS                       R7 R16 K18 ["setUniverse"]
       94 CALL                             R15 1 1
       95 LOADNIL                          R16
       96 LOADNIL                          R17
       97 JUMPIFNOTEQKS                    R4 K5 ["PublishAs"] ; [+60]
       99 DUPTABLE                         R18 K30 [{["uri"], ["type"] = "Default", ["width"] = 640, ["title"], ["description"], ["showIndeterminateProgressIndicator"] = False, ["primaryAction"], ["secondaryAction"]}]
      100 GETTABLEKS                       R19 R0 K20 ["uri"]
      102 SETTABLEKS                       R19 R18 K20 ["uri"]
      104 GETTABLEKS                       R19 R2 K31 ["Title"]
      106 SETTABLEKS                       R19 R18 K25 ["title"]
      108 GETTABLEKS                       R19 R2 K32 ["Description"]
      110 SETTABLEKS                       R19 R18 K26 ["description"]
      112 DUPTABLE                         R19 K36 [{"uri", "text", "onActivated", "disabled"}]
      113 GETUPVAL                         R20 3
      114 GETTABLEKS                       R20 R20 K37 ["child"]
      116 GETTABLEKS                       R21 R0 K20 ["uri"]
      118 LOADK                            R22 K38 ["Publish"]
      119 CALL                             R20 2 1
      120 SETTABLEKS                       R20 R19 K20 ["uri"]
      122 GETTABLEKS                       R20 R2 K39 ["PublishButton"]
      124 SETTABLEKS                       R20 R19 K33 ["text"]
      126 GETTABLEKS                       R20 R15 K40 ["publish"]
      128 SETTABLEKS                       R20 R19 K34 ["onActivated"]
      130 GETTABLEKS                       R20 R15 K41 ["isPublishDisabled"]
      132 SETTABLEKS                       R20 R19 K35 ["disabled"]
      134 SETTABLEKS                       R19 R18 K28 ["primaryAction"]
      136 DUPTABLE                         R19 K42 [{"uri", "text", "onActivated"}]
      137 GETUPVAL                         R20 3
      138 GETTABLEKS                       R20 R20 K37 ["child"]
      140 GETTABLEKS                       R21 R0 K20 ["uri"]
      142 LOADK                            R22 K43 ["Cancel"]
      143 CALL                             R20 2 1
      144 SETTABLEKS                       R20 R19 K20 ["uri"]
      146 GETTABLEKS                       R20 R2 K44 ["CancelButton"]
      148 SETTABLEKS                       R20 R19 K33 ["text"]
      150 SETTABLEKS                       R14 R19 K34 ["onActivated"]
      152 SETTABLEKS                       R19 R18 K29 ["secondaryAction"]
      154 MOVE                             R16 R18
      155 GETTABLEKS                       R17 R15 K45 ["body"]
      157 JUMP                             ; [+136]
      158 JUMPIFNOTEQKS                    R4 K46 ["PublishInProgress"] ; [+32]
      160 DUPTABLE                         R18 K48 [{["uri"], ["type"] = "Default", ["width"] = 400, ["secondaryAction"]}]
      161 GETTABLEKS                       R19 R0 K20 ["uri"]
      163 SETTABLEKS                       R19 R18 K20 ["uri"]
      165 DUPTABLE                         R19 K42 [{"uri", "text", "onActivated"}]
      166 GETUPVAL                         R20 3
      167 GETTABLEKS                       R20 R20 K37 ["child"]
      169 GETTABLEKS                       R21 R0 K20 ["uri"]
      171 LOADK                            R22 K43 ["Cancel"]
      172 CALL                             R20 2 1
      173 SETTABLEKS                       R20 R19 K20 ["uri"]
      175 GETTABLEKS                       R20 R2 K44 ["CancelButton"]
      177 SETTABLEKS                       R20 R19 K33 ["text"]
      179 SETTABLEKS                       R14 R19 K34 ["onActivated"]
      181 SETTABLEKS                       R19 R18 K29 ["secondaryAction"]
      183 MOVE                             R16 R18
      184 GETUPVAL                         R18 4
      185 DUPTABLE                         R19 K49 [{"translationStrings"}]
      186 SETTABLEKS                       R2 R19 K1 ["translationStrings"]
      188 CALL                             R18 1 1
      189 MOVE                             R17 R18
      190 JUMP                             ; [+103]
      191 GETTABLEKS                       R19 R10 K6 ["success"]
      193 ORK                              R18 R19 K7 [False]
      194 LOADNIL                          R19
      195 LOADNIL                          R20
      196 JUMPIFNOT                        R18 ; [+15]
      197 GETTABLEKS                       R21 R10 K50 ["message"]
      199 JUMPIFNOT                        R21 ; [+4]
      200 GETTABLEKS                       R19 R10 K50 ["message"]
      202 LOADNIL                          R20
      203 JUMP                             ; [+16]
      204 GETTABLEKS                       R19 R2 K51 ["PublishSuccess"]
      206 GETTABLEKS                       R21 R2 K52 ["PublishToExperienceSuccess"]
      208 MOVE                             R22 R6
      209 CALL                             R21 1 1
      210 MOVE                             R20 R21
      211 JUMP                             ; [+8]
      212 GETTABLEKS                       R19 R2 K53 ["PublishFailure"]
      214 GETTABLEKS                       R21 R10 K50 ["message"]
      216 JUMPIF                           R21 ; [+2]
      217 GETTABLEKS                       R21 R2 K53 ["PublishFailure"]
      219 MOVE                             R20 R21
      220 DUPTABLE                         R21 K54 [{["uri"], ["type"], ["width"] = 400, ["title"], ["description"], ["showIndeterminateProgressIndicator"] = False, ["primaryAction"], ["secondaryAction"]}]
      221 GETTABLEKS                       R22 R0 K20 ["uri"]
      223 SETTABLEKS                       R22 R21 K20 ["uri"]
      225 JUMPIFNOT                        R18 ; [+2]
      226 LOADK                            R22 K55 ["Success"]
      227 JUMP                             ; [+1]
      228 LOADK                            R22 K56 ["Critical"]
      229 SETTABLEKS                       R22 R21 K21 ["type"]
      231 SETTABLEKS                       R19 R21 K25 ["title"]
      233 SETTABLEKS                       R20 R21 K26 ["description"]
      235 JUMPIFNOT                        R18 ; [+17]
      236 DUPTABLE                         R22 K42 [{"uri", "text", "onActivated"}]
      237 GETUPVAL                         R23 3
      238 GETTABLEKS                       R23 R23 K37 ["child"]
      240 GETTABLEKS                       R24 R0 K20 ["uri"]
      242 LOADK                            R25 K57 ["Done"]
      243 CALL                             R23 2 1
      244 SETTABLEKS                       R23 R22 K20 ["uri"]
      246 GETTABLEKS                       R23 R2 K58 ["DoneButton"]
      248 SETTABLEKS                       R23 R22 K33 ["text"]
      250 SETTABLEKS                       R14 R22 K34 ["onActivated"]
      252 JUMP                             ; [+16]
      253 DUPTABLE                         R22 K42 [{"uri", "text", "onActivated"}]
      254 GETUPVAL                         R23 3
      255 GETTABLEKS                       R23 R23 K37 ["child"]
      257 GETTABLEKS                       R24 R0 K20 ["uri"]
      259 LOADK                            R25 K59 ["Retry"]
      260 CALL                             R23 2 1
      261 SETTABLEKS                       R23 R22 K20 ["uri"]
      263 GETTABLEKS                       R23 R2 K60 ["RetryButton"]
      265 SETTABLEKS                       R23 R22 K33 ["text"]
      267 SETTABLEKS                       R13 R22 K34 ["onActivated"]
      269 SETTABLEKS                       R22 R21 K28 ["primaryAction"]
      271 JUMPIFNOT                        R18 ; [+2]
      272 LOADNIL                          R22
      273 JUMP                             ; [+16]
      274 DUPTABLE                         R22 K42 [{"uri", "text", "onActivated"}]
      275 GETUPVAL                         R23 3
      276 GETTABLEKS                       R23 R23 K37 ["child"]
      278 GETTABLEKS                       R24 R0 K20 ["uri"]
      280 LOADK                            R25 K61 ["Close"]
      281 CALL                             R23 2 1
      282 SETTABLEKS                       R23 R22 K20 ["uri"]
      284 GETTABLEKS                       R23 R2 K44 ["CancelButton"]
      286 SETTABLEKS                       R23 R22 K33 ["text"]
      288 SETTABLEKS                       R14 R22 K34 ["onActivated"]
      290 SETTABLEKS                       R22 R21 K29 ["secondaryAction"]
      292 MOVE                             R16 R21
      293 LOADNIL                          R17
      294 GETUPVAL                         R18 1
      295 GETTABLEKS                       R18 R18 K62 ["createElement"]
      297 GETUPVAL                         R19 5
      298 MOVE                             R20 R16
      299 DUPTABLE                         R21 K64 [{"Content"}]
      300 GETUPVAL                         R22 1
      301 GETTABLEKS                       R22 R22 K62 ["createElement"]
      303 GETUPVAL                         R23 6
      304 DUPTABLE                         R24 K67 [{["tag"] = "col align-x-center align-y-center gap-medium size-full-0 auto-y"}]
      305 MOVE                             R25 R17
      306 CALL                             R22 3 1
      307 SETTABLEKS                       R22 R21 K63 ["Content"]
      309 CALL                             R18 3 -1
      310 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Dialog"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["StudioFoundation"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K14 ["Src"]
       45 GETTABLEKS                       R7 R7 K16 ["Flags"]
       47 GETTABLEKS                       R7 R7 K17 ["getFFlagCreatorConfigPublishAsDropdownBugfix"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K14 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Flags"]
       56 GETTABLEKS                       R8 R8 K18 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K10 ["Packages"]
       63 GETTABLEKS                       R9 R9 K19 ["Framework"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R8 K20 ["Util"]
       68 GETTABLEKS                       R9 R9 K21 ["counter"]
       70 GETTABLEKS                       R11 R4 K22 ["SharedFlags"]
       72 GETTABLEKS                       R11 R11 K23 ["getFFlagStudioFoundationDialogComponent"]
       74 CALL                             R11 0 1
       75 JUMPIFNOT                        R11 ; [+5]
       76 GETTABLEKS                       R10 R4 K24 ["Components"]
       78 GETTABLEKS                       R10 R10 K6 ["Dialog"]
       80 JUMP                             ; [+9]
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R1 K14 ["Src"]
       85 GETTABLEKS                       R11 R11 K24 ["Components"]
       87 GETTABLEKS                       R11 R11 K25 ["DEPRECATED_Dialog"]
       89 CALL                             R10 1 1
       90 GETTABLEKS                       R11 R4 K20 ["Util"]
       92 GETTABLEKS                       R11 R11 K26 ["StudioUri"]
       94 GETTABLEKS                       R12 R2 K27 ["SearchInput"]
       96 GETTABLEKS                       R13 R2 K28 ["TextInput"]
       98 GETTABLEKS                       R14 R2 K29 ["ScrollView"]
      100 GETTABLEKS                       R15 R2 K30 ["RadioGroup"]
      102 GETTABLEKS                       R16 R2 K31 ["Dropdown"]
      104 GETTABLEKS                       R17 R2 K32 ["Progress"]
      106 GETTABLEKS                       R18 R2 K33 ["Button"]
      108 GETTABLEKS                       R19 R2 K34 ["Image"]
      110 GETTABLEKS                       R20 R2 K35 ["View"]
      112 GETTABLEKS                       R21 R2 K36 ["Text"]
      114 GETTABLEKS                       R22 R2 K37 ["Enums"]
      116 GETTABLEKS                       R22 R22 K38 ["SearchInputShape"]
      118 GETTABLEKS                       R23 R2 K37 ["Enums"]
      120 GETTABLEKS                       R23 R23 K39 ["InputSize"]
      122 GETTABLEKS                       R24 R2 K37 ["Enums"]
      124 GETTABLEKS                       R24 R24 K40 ["Visibility"]
      126 GETTABLEKS                       R25 R2 K37 ["Enums"]
      128 GETTABLEKS                       R25 R25 K41 ["ButtonVariant"]
      130 GETTABLEKS                       R26 R2 K37 ["Enums"]
      132 GETTABLEKS                       R26 R26 K42 ["StateLayerAffordance"]
      134 GETTABLEKS                       R27 R2 K37 ["Enums"]
      136 GETTABLEKS                       R27 R27 K43 ["ProgressShape"]
      138 GETTABLEKS                       R28 R2 K37 ["Enums"]
      140 GETTABLEKS                       R28 R28 K44 ["ProgressSize"]
      142 MOVE                             R29 R6
      143 CALL                             R29 0 1
      144 DUPCLOSURE                       R30 K45 [PROTO_1]
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R26
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R21
      154 DUPCLOSURE                       R31 K46 [PROTO_2]
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R28
      161 CAPTURE                          VAL R21
      162 DUPCLOSURE                       R32 K47 [PROTO_16]
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R30
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R29
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R27
      175 CAPTURE                          VAL R28
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R13
      183 DUPCLOSURE                       R33 K48 [PROTO_20]
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R32
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R31
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R20
      191 MOVE                             R35 R7
      192 CALL                             R35 0 1
      193 JUMPIFNOT                        R35 ; [+18]
      194 GETIMPORT                        R34 K51 [table.freeze]
      196 DUPTABLE                         R35 K54 [{"uri", "component"}]
      197 GETTABLEKS                       R36 R11 K55 ["fromWidget"]
      199 LOADK                            R37 K56 ["CreatorConfig"]
      200 LOADK                            R38 K57 ["PublishAsDialog"]
      201 CALL                             R36 2 1
      202 SETTABLEKS                       R36 R35 K52 ["uri"]
      204 GETTABLEKS                       R36 R3 K58 ["memo"]
      206 MOVE                             R37 R33
      207 CALL                             R36 1 1
      208 SETTABLEKS                       R36 R35 K53 ["component"]
      210 CALL                             R34 1 1
      211 RETURN                           R34 1
      212 LOADNIL                          R34
      213 RETURN                           R34 1
