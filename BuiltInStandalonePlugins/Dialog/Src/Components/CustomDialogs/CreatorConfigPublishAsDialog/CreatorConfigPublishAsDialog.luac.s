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
       29 DUPTABLE                         R8 K13 [{"tag", "Size", "onActivated", "stateLayer"}]
       30 LOADK                            R9 K14 ["row size-full-0 auto-y gap-small align-y-center"]
       31 SETTABLEKS                       R9 R8 K9 ["tag"]
       33 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       35 LOADN                            R10 128
       36 LOADN                            R11 0
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K10 ["Size"]
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R9 R8 K11 ["onActivated"]
       45 DUPTABLE                         R9 K19 [{"affordance"}]
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K20 ["None"]
       49 SETTABLEKS                       R10 R9 K18 ["affordance"]
       51 SETTABLEKS                       R9 R8 K12 ["stateLayer"]
       53 DUPTABLE                         R9 K24 [{"RadioButton", "UniverseIcon", "TextColumn"}]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K8 ["createElement"]
       57 GETUPVAL                         R11 5
       58 GETTABLEKS                       R11 R11 K25 ["Item"]
       60 DUPTABLE                         R12 K30 [{"LayoutOrder", "value", "size", "label"}]
       61 MOVE                             R13 R2
       62 CALL                             R13 0 1
       63 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
       65 GETTABLEKS                       R14 R1 K31 ["GameId"]
       67 FASTCALL1                        TOSTRING R14 ; [+2]
       68 GETIMPORT                        R13 K33 [tostring]
       70 CALL                             R13 1 1
       71 SETTABLEKS                       R13 R12 K27 ["value"]
       73 GETUPVAL                         R13 6
       74 GETTABLEKS                       R13 R13 K34 ["Small"]
       76 SETTABLEKS                       R13 R12 K28 ["size"]
       78 LOADK                            R13 K35 [""]
       79 SETTABLEKS                       R13 R12 K29 ["label"]
       81 CALL                             R10 2 1
       82 SETTABLEKS                       R10 R9 K21 ["RadioButton"]
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R10 R10 K8 ["createElement"]
       87 GETUPVAL                         R11 7
       88 DUPTABLE                         R12 K37 [{"LayoutOrder", "tag", "Image", "Size"}]
       89 MOVE                             R13 R2
       90 CALL                             R13 0 1
       91 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
       93 LOADK                            R13 K38 ["radius-small"]
       94 SETTABLEKS                       R13 R12 K9 ["tag"]
       96 GETTABLEKS                       R13 R1 K39 ["Icon"]
       98 SETTABLEKS                       R13 R12 K36 ["Image"]
      100 GETIMPORT                        R13 K17 [UDim2.fromOffset]
      102 LOADN                            R14 32
      103 LOADN                            R15 32
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K10 ["Size"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K22 ["UniverseIcon"]
      110 GETUPVAL                         R10 2
      111 GETTABLEKS                       R10 R10 K8 ["createElement"]
      113 GETUPVAL                         R11 3
      114 DUPTABLE                         R12 K40 [{"LayoutOrder", "tag"}]
      115 MOVE                             R13 R2
      116 CALL                             R13 0 1
      117 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      119 LOADK                            R13 K41 ["col size-0-0 auto-y fill align-x-left gap-xxsmall"]
      120 SETTABLEKS                       R13 R12 K9 ["tag"]
      122 DUPTABLE                         R13 K43 [{"UniverseName", "PrivacyType"}]
      123 GETUPVAL                         R14 2
      124 GETTABLEKS                       R14 R14 K8 ["createElement"]
      126 GETUPVAL                         R15 8
      127 DUPTABLE                         R16 K45 [{"LayoutOrder", "tag", "Text"}]
      128 MOVE                             R17 R2
      129 CALL                             R17 0 1
      130 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      132 LOADK                            R17 K46 ["auto-xy text-body-medium text-align-x-left content-emphasis"]
      133 SETTABLEKS                       R17 R16 K9 ["tag"]
      135 GETTABLEKS                       R17 R1 K47 ["Name"]
      137 SETTABLEKS                       R17 R16 K44 ["Text"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K42 ["UniverseName"]
      142 GETUPVAL                         R14 2
      143 GETTABLEKS                       R14 R14 K8 ["createElement"]
      145 GETUPVAL                         R15 8
      146 DUPTABLE                         R16 K49 [{"LayoutOrder", "tag", "Text", "textStyle"}]
      147 MOVE                             R17 R2
      148 CALL                             R17 0 1
      149 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      151 LOADK                            R17 K50 ["auto-xy text-label-small text-align-x-left"]
      152 SETTABLEKS                       R17 R16 K9 ["tag"]
      154 GETTABLEKS                       R17 R1 K3 ["PrivacyType"]
      156 SETTABLEKS                       R17 R16 K44 ["Text"]
      158 SETTABLEKS                       R5 R16 K48 ["textStyle"]
      160 CALL                             R14 2 1
      161 SETTABLEKS                       R14 R13 K3 ["PrivacyType"]
      163 CALL                             R10 3 1
      164 SETTABLEKS                       R10 R9 K23 ["TextColumn"]
      166 CALL                             R6 3 -1
      167 RETURN                           R6 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["translationStrings"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K2 [{"Body"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K3 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K5 [{"tag"}]
       10 LOADK                            R7 K6 ["row size-full-0 auto-y gap-medium align-y-top"]
       11 SETTABLEKS                       R7 R6 K4 ["tag"]
       13 DUPTABLE                         R7 K9 [{"ProgressSpinner", "Title"}]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K3 ["createElement"]
       17 GETUPVAL                         R9 3
       18 DUPTABLE                         R10 K13 [{"LayoutOrder", "tag", "shape", "size"}]
       19 MOVE                             R11 R2
       20 CALL                             R11 0 1
       21 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       23 LOADK                            R11 K14 ["auto-xy"]
       24 SETTABLEKS                       R11 R10 K4 ["tag"]
       26 GETUPVAL                         R11 4
       27 GETTABLEKS                       R11 R11 K15 ["Circle"]
       29 SETTABLEKS                       R11 R10 K11 ["shape"]
       31 GETUPVAL                         R11 5
       32 GETTABLEKS                       R11 R11 K16 ["Medium"]
       34 SETTABLEKS                       R11 R10 K12 ["size"]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K7 ["ProgressSpinner"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K3 ["createElement"]
       42 GETUPVAL                         R9 6
       43 DUPTABLE                         R10 K18 [{"tag", "LayoutOrder", "Text"}]
       44 LOADK                            R11 K19 ["text-title-medium auto-xy"]
       45 SETTABLEKS                       R11 R10 K4 ["tag"]
       47 MOVE                             R11 R2
       48 CALL                             R11 0 1
       49 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       51 GETTABLEKS                       R11 R1 K20 ["PublishInProgress"]
       53 SETTABLEKS                       R11 R10 K17 ["Text"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K8 ["Title"]
       58 CALL                             R4 3 1
       59 SETTABLEKS                       R4 R3 K1 ["Body"]
       61 RETURN                           R3 1

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
      203 DUPTABLE                         R34 K16 [{"FilterOptions", "UniverseView", "MessageField"}]
      204 GETUPVAL                         R35 0
      205 GETTABLEKS                       R35 R35 K17 ["createElement"]
      207 GETUPVAL                         R36 4
      208 DUPTABLE                         R37 K20 [{"LayoutOrder", "tag"}]
      209 MOVE                             R38 R33
      210 CALL                             R38 0 1
      211 SETTABLEKS                       R38 R37 K18 ["LayoutOrder"]
      213 LOADK                            R38 K21 ["row size-full-0 auto-y flex-between"]
      214 SETTABLEKS                       R38 R37 K19 ["tag"]
      216 DUPTABLE                         R38 K24 [{"CreatorDropdown", "SearchField"}]
      217 GETUPVAL                         R39 0
      218 GETTABLEKS                       R39 R39 K17 ["createElement"]
      220 GETUPVAL                         R40 5
      221 GETTABLEKS                       R40 R40 K25 ["Root"]
      223 DUPTABLE                         R41 K33 [{"LayoutOrder", "label", "value", "items", "width", "size", "isDisabled", "onItemChanged"}]
      224 MOVE                             R42 R33
      225 CALL                             R42 0 1
      226 SETTABLEKS                       R42 R41 K18 ["LayoutOrder"]
      228 LOADK                            R42 K8 [""]
      229 SETTABLEKS                       R42 R41 K26 ["label"]
      231 SETTABLEKS                       R12 R41 K27 ["value"]
      233 SETTABLEKS                       R25 R41 K28 ["items"]
      235 GETIMPORT                        R42 K36 [UDim.new]
      237 LOADN                            R43 0
      238 LOADN                            R44 220
      239 CALL                             R42 2 1
      240 SETTABLEKS                       R42 R41 K29 ["width"]
      242 GETUPVAL                         R42 6
      243 GETTABLEKS                       R42 R42 K37 ["Small"]
      245 SETTABLEKS                       R42 R41 K30 ["size"]
      247 OR                               R42 R30 R31
      248 SETTABLEKS                       R42 R41 K31 ["isDisabled"]
      250 NEWCLOSURE                       R42 P9
      251 CAPTURE                          VAL R13
      252 CAPTURE                          VAL R24
      253 SETTABLEKS                       R42 R41 K32 ["onItemChanged"]
      255 CALL                             R39 2 1
      256 SETTABLEKS                       R39 R38 K22 ["CreatorDropdown"]
      258 GETUPVAL                         R39 0
      259 GETTABLEKS                       R39 R39 K17 ["createElement"]
      261 GETUPVAL                         R40 7
      262 DUPTABLE                         R41 K42 [{"LayoutOrder", "label", "text", "placeholder", "size", "width", "isDisabled", "shape", "onChanged"}]
      263 MOVE                             R42 R33
      264 CALL                             R42 0 1
      265 SETTABLEKS                       R42 R41 K18 ["LayoutOrder"]
      267 LOADK                            R42 K8 [""]
      268 SETTABLEKS                       R42 R41 K26 ["label"]
      270 SETTABLEKS                       R14 R41 K38 ["text"]
      272 GETTABLEKS                       R42 R1 K43 ["SearchPlaceholder"]
      274 SETTABLEKS                       R42 R41 K39 ["placeholder"]
      276 GETUPVAL                         R42 6
      277 GETTABLEKS                       R42 R42 K37 ["Small"]
      279 SETTABLEKS                       R42 R41 K30 ["size"]
      281 GETIMPORT                        R42 K36 [UDim.new]
      283 LOADN                            R43 0
      284 LOADN                            R44 200
      285 CALL                             R42 2 1
      286 SETTABLEKS                       R42 R41 K29 ["width"]
      288 SETTABLEKS                       R30 R41 K31 ["isDisabled"]
      290 GETUPVAL                         R42 8
      291 GETTABLEKS                       R42 R42 K44 ["Rounded"]
      293 SETTABLEKS                       R42 R41 K40 ["shape"]
      295 SETTABLEKS                       R15 R41 K41 ["onChanged"]
      297 CALL                             R39 2 1
      298 SETTABLEKS                       R39 R38 K23 ["SearchField"]
      300 CALL                             R35 3 1
      301 SETTABLEKS                       R35 R34 K13 ["FilterOptions"]
      303 JUMPIFNOT                        R30 ; [+37]
      304 GETUPVAL                         R35 0
      305 GETTABLEKS                       R35 R35 K17 ["createElement"]
      307 GETUPVAL                         R36 4
      308 DUPTABLE                         R37 K20 [{"LayoutOrder", "tag"}]
      309 MOVE                             R38 R33
      310 CALL                             R38 0 1
      311 SETTABLEKS                       R38 R37 K18 ["LayoutOrder"]
      313 LOADK                            R38 K45 ["size-full-2200 col align-x-center align-y-center"]
      314 SETTABLEKS                       R38 R37 K19 ["tag"]
      316 DUPTABLE                         R38 K47 [{"ProgressSpinner"}]
      317 GETUPVAL                         R39 0
      318 GETTABLEKS                       R39 R39 K17 ["createElement"]
      320 GETUPVAL                         R40 9
      321 DUPTABLE                         R41 K48 [{"LayoutOrder", "shape", "size"}]
      322 MOVE                             R42 R33
      323 CALL                             R42 0 1
      324 SETTABLEKS                       R42 R41 K18 ["LayoutOrder"]
      326 GETUPVAL                         R42 10
      327 GETTABLEKS                       R42 R42 K49 ["Circle"]
      329 SETTABLEKS                       R42 R41 K40 ["shape"]
      331 GETUPVAL                         R42 11
      332 GETTABLEKS                       R42 R42 K50 ["Large"]
      334 SETTABLEKS                       R42 R41 K30 ["size"]
      336 CALL                             R39 2 1
      337 SETTABLEKS                       R39 R38 K46 ["ProgressSpinner"]
      339 CALL                             R35 3 1
      340 JUMP                             ; [+183]
      341 GETUPVAL                         R35 0
      342 GETTABLEKS                       R35 R35 K17 ["createElement"]
      344 GETUPVAL                         R36 12
      345 DUPTABLE                         R37 K53 [{"LayoutOrder", "tag", "layout", "scroll"}]
      346 MOVE                             R38 R33
      347 CALL                             R38 0 1
      348 SETTABLEKS                       R38 R37 K18 ["LayoutOrder"]
      350 LOADK                            R38 K54 ["size-full-2200 col gap-medium"]
      351 SETTABLEKS                       R38 R37 K19 ["tag"]
      353 DUPTABLE                         R38 K56 [{"FillDirection"}]
      354 GETIMPORT                        R39 K59 [Enum.FillDirection.Vertical]
      356 SETTABLEKS                       R39 R38 K55 ["FillDirection"]
      358 SETTABLEKS                       R38 R37 K51 ["layout"]
      360 DUPTABLE                         R38 K64 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      361 GETIMPORT                        R39 K67 [UDim2.fromOffset]
      363 LOADN                            R40 0
      364 LOADN                            R41 0
      365 CALL                             R39 2 1
      366 SETTABLEKS                       R39 R38 K60 ["CanvasSize"]
      368 GETIMPORT                        R39 K70 [Enum.AutomaticSize.Y]
      370 SETTABLEKS                       R39 R38 K61 ["AutomaticCanvasSize"]
      372 GETIMPORT                        R39 K71 [Enum.ScrollingDirection.Y]
      374 SETTABLEKS                       R39 R38 K62 ["ScrollingDirection"]
      376 GETUPVAL                         R39 13
      377 GETTABLEKS                       R39 R39 K72 ["Always"]
      379 SETTABLEKS                       R39 R38 K63 ["scrollBarVisibility"]
      381 SETTABLEKS                       R38 R37 K52 ["scroll"]
      383 DUPTABLE                         R38 K74 [{"UniverseList"}]
      384 JUMPIF                           R31 ; [+1]
      385 JUMPIFNOT                        R32 ; [+76]
      386 GETUPVAL                         R39 0
      387 GETTABLEKS                       R39 R39 K17 ["createElement"]
      389 GETUPVAL                         R40 4
      390 DUPTABLE                         R41 K75 [{"tag"}]
      391 LOADK                            R42 K76 ["size-full-full col align-x-center align-y-center gap-medium"]
      392 SETTABLEKS                       R42 R41 K19 ["tag"]
      394 DUPTABLE                         R42 K79 [{"Message", "RetryButton"}]
      395 GETUPVAL                         R43 0
      396 GETTABLEKS                       R43 R43 K17 ["createElement"]
      398 GETUPVAL                         R44 14
      399 DUPTABLE                         R45 K82 [{"LayoutOrder", "tag", "textStyle", "Text"}]
      400 MOVE                             R46 R33
      401 CALL                             R46 0 1
      402 SETTABLEKS                       R46 R45 K18 ["LayoutOrder"]
      404 LOADK                            R46 K83 ["auto-xy text-body-medium"]
      405 SETTABLEKS                       R46 R45 K19 ["tag"]
      407 GETTABLEKS                       R46 R2 K84 ["Color"]
      409 GETTABLEKS                       R46 R46 K85 ["System"]
      411 GETTABLEKS                       R46 R46 K86 ["Alert"]
      413 SETTABLEKS                       R46 R45 K80 ["textStyle"]
      415 JUMPIFNOT                        R31 ; [+3]
      416 GETTABLEKS                       R46 R1 K87 ["FailedToLoadGroups"]
      418 JUMP                             ; [+2]
      419 GETTABLEKS                       R46 R1 K88 ["FailedToLoadUniverses"]
      421 SETTABLEKS                       R46 R45 K81 ["Text"]
      423 CALL                             R43 2 1
      424 SETTABLEKS                       R43 R42 K77 ["Message"]
      426 GETUPVAL                         R43 0
      427 GETTABLEKS                       R43 R43 K17 ["createElement"]
      429 GETUPVAL                         R44 15
      430 DUPTABLE                         R45 K91 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      431 MOVE                             R46 R33
      432 CALL                             R46 0 1
      433 SETTABLEKS                       R46 R45 K18 ["LayoutOrder"]
      435 GETTABLEKS                       R46 R1 K78 ["RetryButton"]
      437 SETTABLEKS                       R46 R45 K38 ["text"]
      439 GETUPVAL                         R46 16
      440 GETTABLEKS                       R46 R46 K92 ["Emphasis"]
      442 SETTABLEKS                       R46 R45 K89 ["variant"]
      444 GETUPVAL                         R46 6
      445 GETTABLEKS                       R46 R46 K93 ["XSmall"]
      447 SETTABLEKS                       R46 R45 K30 ["size"]
      449 NEWCLOSURE                       R46 P10
      450 CAPTURE                          VAL R31
      451 CAPTURE                          VAL R17
      452 CAPTURE                          VAL R22
      453 CAPTURE                          VAL R24
      454 CAPTURE                          VAL R12
      455 SETTABLEKS                       R46 R45 K90 ["onActivated"]
      457 CALL                             R43 2 1
      458 SETTABLEKS                       R43 R42 K78 ["RetryButton"]
      460 CALL                             R39 3 1
      461 JUMP                             ; [+59]
      462 GETIMPORT                        R40 K95 [next]
      464 MOVE                             R41 R28
      465 CALL                             R40 1 1
      466 JUMPIFNOTEQKNIL                  R40 ; [+31]
      468 GETUPVAL                         R39 0
      469 GETTABLEKS                       R39 R39 K17 ["createElement"]
      471 GETUPVAL                         R40 4
      472 DUPTABLE                         R41 K75 [{"tag"}]
      473 LOADK                            R42 K76 ["size-full-full col align-x-center align-y-center gap-medium"]
      474 SETTABLEKS                       R42 R41 K19 ["tag"]
      476 DUPTABLE                         R42 K96 [{"Message"}]
      477 GETUPVAL                         R43 0
      478 GETTABLEKS                       R43 R43 K17 ["createElement"]
      480 GETUPVAL                         R44 14
      481 DUPTABLE                         R45 K97 [{"LayoutOrder", "tag", "Text"}]
      482 MOVE                             R46 R33
      483 CALL                             R46 0 1
      484 SETTABLEKS                       R46 R45 K18 ["LayoutOrder"]
      486 LOADK                            R46 K98 ["auto-xy text-body-small"]
      487 SETTABLEKS                       R46 R45 K19 ["tag"]
      489 GETTABLEKS                       R46 R1 K99 ["NoExperiencesMatchFilter"]
      491 SETTABLEKS                       R46 R45 K81 ["Text"]
      493 CALL                             R43 2 1
      494 SETTABLEKS                       R43 R42 K77 ["Message"]
      496 CALL                             R39 3 1
      497 JUMP                             ; [+23]
      498 GETUPVAL                         R39 0
      499 GETTABLEKS                       R39 R39 K17 ["createElement"]
      501 GETUPVAL                         R40 17
      502 GETTABLEKS                       R40 R40 K25 ["Root"]
      504 DUPTABLE                         R41 K101 [{"value", "onValueChanged"}]
      505 JUMPIFNOT                        R10 ; [+6]
      506 FASTCALL1                        TOSTRING R10 ; [+3]
      507 MOVE                             R43 R10
      508 GETIMPORT                        R42 K103 [tostring]
      510 CALL                             R42 1 1
      511 JUMP                             ; [+1]
      512 LOADNIL                          R42
      513 SETTABLEKS                       R42 R41 K27 ["value"]
      515 NEWCLOSURE                       R42 P11
      516 CAPTURE                          VAL R27
      517 SETTABLEKS                       R42 R41 K100 ["onValueChanged"]
      519 MOVE                             R42 R28
      520 CALL                             R39 3 1
      521 SETTABLEKS                       R39 R38 K73 ["UniverseList"]
      523 CALL                             R35 3 1
      524 SETTABLEKS                       R35 R34 K14 ["UniverseView"]
      526 GETUPVAL                         R35 0
      527 GETTABLEKS                       R35 R35 K17 ["createElement"]
      529 GETUPVAL                         R36 18
      530 DUPTABLE                         R37 K105 [{"LayoutOrder", "text", "label", "hint", "placeholder", "size", "width", "onChanged"}]
      531 MOVE                             R38 R33
      532 CALL                             R38 0 1
      533 SETTABLEKS                       R38 R37 K18 ["LayoutOrder"]
      535 SETTABLEKS                       R8 R37 K38 ["text"]
      537 GETTABLEKS                       R38 R1 K106 ["MessageFieldLabel"]
      539 SETTABLEKS                       R38 R37 K26 ["label"]
      541 GETTABLEKS                       R38 R1 K107 ["MessageFieldHint"]
      543 SETTABLEKS                       R38 R37 K104 ["hint"]
      545 GETTABLEKS                       R38 R1 K108 ["MessageFieldPlaceholder"]
      547 SETTABLEKS                       R38 R37 K39 ["placeholder"]
      549 GETUPVAL                         R38 6
      550 GETTABLEKS                       R38 R38 K37 ["Small"]
      552 SETTABLEKS                       R38 R37 K30 ["size"]
      554 GETIMPORT                        R38 K36 [UDim.new]
      556 LOADN                            R39 1
      557 LOADN                            R40 0
      558 CALL                             R38 2 1
      559 SETTABLEKS                       R38 R37 K29 ["width"]
      561 SETTABLEKS                       R9 R37 K41 ["onChanged"]
      563 CALL                             R35 2 1
      564 SETTABLEKS                       R35 R34 K15 ["MessageField"]
      566 DUPTABLE                         R35 K112 [{"body", "publish", "isPublishDisabled"}]
      567 SETTABLEKS                       R34 R35 K109 ["body"]
      569 SETTABLEKS                       R26 R35 K110 ["publish"]
      571 MOVE                             R36 R30
      572 JUMPIF                           R36 ; [+4]
      573 JUMPIFEQKNIL                     R10 ; [+2]
      575 LOADB                            R36 0 +1
      576 LOADB                            R36 1
      577 SETTABLEKS                       R36 R35 K111 ["isPublishDisabled"]
      579 RETURN                           R35 1

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
       28 DUPTABLE                         R11 K8 [{"success", "error"}]
       29 LOADB                            R12 0
       30 SETTABLEKS                       R12 R11 K6 ["success"]
       32 LOADNIL                          R12
       33 SETTABLEKS                       R12 R11 K7 ["error"]
       35 CALL                             R10 1 2
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       39 NEWCLOSURE                       R13 P0
       40 CAPTURE                          VAL R9
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R11
       44 NEWTABLE                         R14 0 4
       46 MOVE                             R15 R1
       47 MOVE                             R16 R4
       48 MOVE                             R17 R5
       49 MOVE                             R18 R11
       50 SETLIST                          R14 R15 4 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       56 NEWCLOSURE                       R14 P1
       57 CAPTURE                          VAL R12
       58 CAPTURE                          VAL R8
       59 NEWTABLE                         R15 0 2
       61 MOVE                             R16 R12
       62 MOVE                             R17 R8
       63 SETLIST                          R15 R16 2 [1]
       65 CALL                             R13 2 1
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K9 ["useCallback"]
       69 NEWCLOSURE                       R15 P2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R10
       72 NEWTABLE                         R16 0 2
       74 GETTABLEKS                       R17 R0 K10 ["onResolved"]
       76 MOVE                             R18 R10
       77 SETLIST                          R16 R17 2 [1]
       79 CALL                             R14 2 1
       80 GETUPVAL                         R15 2
       81 DUPTABLE                         R16 K17 [{"translationStrings", "tokens", "getUniverses", "getGroups", "requestPublish", "universe", "setUniverse"}]
       82 SETTABLEKS                       R2 R16 K1 ["translationStrings"]
       84 SETTABLEKS                       R3 R16 K11 ["tokens"]
       86 GETTABLEKS                       R17 R1 K12 ["getUniverses"]
       88 SETTABLEKS                       R17 R16 K12 ["getUniverses"]
       90 GETTABLEKS                       R17 R1 K13 ["getGroups"]
       92 SETTABLEKS                       R17 R16 K13 ["getGroups"]
       94 SETTABLEKS                       R12 R16 K14 ["requestPublish"]
       96 SETTABLEKS                       R6 R16 K15 ["universe"]
       98 SETTABLEKS                       R7 R16 K16 ["setUniverse"]
      100 CALL                             R15 1 1
      101 LOADNIL                          R16
      102 LOADNIL                          R17
      103 JUMPIFNOTEQKS                    R4 K5 ["PublishAs"] ; [+69]
      105 DUPTABLE                         R18 K26 [{"uri", "type", "width", "title", "description", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction"}]
      106 GETTABLEKS                       R19 R0 K18 ["uri"]
      108 SETTABLEKS                       R19 R18 K18 ["uri"]
      110 LOADK                            R19 K27 ["Default"]
      111 SETTABLEKS                       R19 R18 K19 ["type"]
      113 LOADN                            R19 128
      114 SETTABLEKS                       R19 R18 K20 ["width"]
      116 GETTABLEKS                       R19 R2 K28 ["Title"]
      118 SETTABLEKS                       R19 R18 K21 ["title"]
      120 GETTABLEKS                       R19 R2 K29 ["Description"]
      122 SETTABLEKS                       R19 R18 K22 ["description"]
      124 LOADB                            R19 0
      125 SETTABLEKS                       R19 R18 K23 ["showIndeterminateProgressIndicator"]
      127 DUPTABLE                         R19 K33 [{"uri", "text", "onActivated", "disabled"}]
      128 GETUPVAL                         R20 3
      129 GETTABLEKS                       R20 R20 K34 ["child"]
      131 GETTABLEKS                       R21 R0 K18 ["uri"]
      133 LOADK                            R22 K35 ["Publish"]
      134 CALL                             R20 2 1
      135 SETTABLEKS                       R20 R19 K18 ["uri"]
      137 GETTABLEKS                       R20 R2 K36 ["PublishButton"]
      139 SETTABLEKS                       R20 R19 K30 ["text"]
      141 GETTABLEKS                       R20 R15 K37 ["publish"]
      143 SETTABLEKS                       R20 R19 K31 ["onActivated"]
      145 GETTABLEKS                       R20 R15 K38 ["isPublishDisabled"]
      147 SETTABLEKS                       R20 R19 K32 ["disabled"]
      149 SETTABLEKS                       R19 R18 K24 ["primaryAction"]
      151 DUPTABLE                         R19 K39 [{"uri", "text", "onActivated"}]
      152 GETUPVAL                         R20 3
      153 GETTABLEKS                       R20 R20 K34 ["child"]
      155 GETTABLEKS                       R21 R0 K18 ["uri"]
      157 LOADK                            R22 K40 ["Cancel"]
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K18 ["uri"]
      161 GETTABLEKS                       R20 R2 K41 ["CancelButton"]
      163 SETTABLEKS                       R20 R19 K30 ["text"]
      165 SETTABLEKS                       R14 R19 K31 ["onActivated"]
      167 SETTABLEKS                       R19 R18 K25 ["secondaryAction"]
      169 MOVE                             R16 R18
      170 GETTABLEKS                       R17 R15 K42 ["body"]
      172 JUMP                             ; [+148]
      173 JUMPIFNOTEQKS                    R4 K43 ["PublishInProgress"] ; [+38]
      175 DUPTABLE                         R18 K44 [{"uri", "type", "width", "secondaryAction"}]
      176 GETTABLEKS                       R19 R0 K18 ["uri"]
      178 SETTABLEKS                       R19 R18 K18 ["uri"]
      180 LOADK                            R19 K27 ["Default"]
      181 SETTABLEKS                       R19 R18 K19 ["type"]
      183 LOADN                            R19 144
      184 SETTABLEKS                       R19 R18 K20 ["width"]
      186 DUPTABLE                         R19 K39 [{"uri", "text", "onActivated"}]
      187 GETUPVAL                         R20 3
      188 GETTABLEKS                       R20 R20 K34 ["child"]
      190 GETTABLEKS                       R21 R0 K18 ["uri"]
      192 LOADK                            R22 K40 ["Cancel"]
      193 CALL                             R20 2 1
      194 SETTABLEKS                       R20 R19 K18 ["uri"]
      196 GETTABLEKS                       R20 R2 K41 ["CancelButton"]
      198 SETTABLEKS                       R20 R19 K30 ["text"]
      200 SETTABLEKS                       R14 R19 K31 ["onActivated"]
      202 SETTABLEKS                       R19 R18 K25 ["secondaryAction"]
      204 MOVE                             R16 R18
      205 GETUPVAL                         R18 4
      206 DUPTABLE                         R19 K45 [{"translationStrings"}]
      207 SETTABLEKS                       R2 R19 K1 ["translationStrings"]
      209 CALL                             R18 1 1
      210 MOVE                             R17 R18
      211 JUMP                             ; [+109]
      212 GETTABLEKS                       R19 R10 K6 ["success"]
      214 ORK                              R18 R19 K46 [False]
      215 LOADNIL                          R19
      216 LOADNIL                          R20
      217 JUMPIFNOT                        R18 ; [+15]
      218 GETTABLEKS                       R21 R10 K47 ["message"]
      220 JUMPIFNOT                        R21 ; [+4]
      221 GETTABLEKS                       R19 R10 K47 ["message"]
      223 LOADNIL                          R20
      224 JUMP                             ; [+16]
      225 GETTABLEKS                       R19 R2 K48 ["PublishSuccess"]
      227 GETTABLEKS                       R21 R2 K49 ["PublishToExperienceSuccess"]
      229 MOVE                             R22 R6
      230 CALL                             R21 1 1
      231 MOVE                             R20 R21
      232 JUMP                             ; [+8]
      233 GETTABLEKS                       R19 R2 K50 ["PublishFailure"]
      235 GETTABLEKS                       R21 R10 K47 ["message"]
      237 JUMPIF                           R21 ; [+2]
      238 GETTABLEKS                       R21 R2 K50 ["PublishFailure"]
      240 MOVE                             R20 R21
      241 DUPTABLE                         R21 K26 [{"uri", "type", "width", "title", "description", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction"}]
      242 GETTABLEKS                       R22 R0 K18 ["uri"]
      244 SETTABLEKS                       R22 R21 K18 ["uri"]
      246 JUMPIFNOT                        R18 ; [+2]
      247 LOADK                            R22 K51 ["Success"]
      248 JUMP                             ; [+1]
      249 LOADK                            R22 K52 ["Critical"]
      250 SETTABLEKS                       R22 R21 K19 ["type"]
      252 LOADN                            R22 144
      253 SETTABLEKS                       R22 R21 K20 ["width"]
      255 SETTABLEKS                       R19 R21 K21 ["title"]
      257 SETTABLEKS                       R20 R21 K22 ["description"]
      259 LOADB                            R22 0
      260 SETTABLEKS                       R22 R21 K23 ["showIndeterminateProgressIndicator"]
      262 JUMPIFNOT                        R18 ; [+17]
      263 DUPTABLE                         R22 K39 [{"uri", "text", "onActivated"}]
      264 GETUPVAL                         R23 3
      265 GETTABLEKS                       R23 R23 K34 ["child"]
      267 GETTABLEKS                       R24 R0 K18 ["uri"]
      269 LOADK                            R25 K53 ["Done"]
      270 CALL                             R23 2 1
      271 SETTABLEKS                       R23 R22 K18 ["uri"]
      273 GETTABLEKS                       R23 R2 K54 ["DoneButton"]
      275 SETTABLEKS                       R23 R22 K30 ["text"]
      277 SETTABLEKS                       R14 R22 K31 ["onActivated"]
      279 JUMP                             ; [+16]
      280 DUPTABLE                         R22 K39 [{"uri", "text", "onActivated"}]
      281 GETUPVAL                         R23 3
      282 GETTABLEKS                       R23 R23 K34 ["child"]
      284 GETTABLEKS                       R24 R0 K18 ["uri"]
      286 LOADK                            R25 K55 ["Retry"]
      287 CALL                             R23 2 1
      288 SETTABLEKS                       R23 R22 K18 ["uri"]
      290 GETTABLEKS                       R23 R2 K56 ["RetryButton"]
      292 SETTABLEKS                       R23 R22 K30 ["text"]
      294 SETTABLEKS                       R13 R22 K31 ["onActivated"]
      296 SETTABLEKS                       R22 R21 K24 ["primaryAction"]
      298 JUMPIFNOT                        R18 ; [+2]
      299 LOADNIL                          R22
      300 JUMP                             ; [+16]
      301 DUPTABLE                         R22 K39 [{"uri", "text", "onActivated"}]
      302 GETUPVAL                         R23 3
      303 GETTABLEKS                       R23 R23 K34 ["child"]
      305 GETTABLEKS                       R24 R0 K18 ["uri"]
      307 LOADK                            R25 K57 ["Close"]
      308 CALL                             R23 2 1
      309 SETTABLEKS                       R23 R22 K18 ["uri"]
      311 GETTABLEKS                       R23 R2 K41 ["CancelButton"]
      313 SETTABLEKS                       R23 R22 K30 ["text"]
      315 SETTABLEKS                       R14 R22 K31 ["onActivated"]
      317 SETTABLEKS                       R22 R21 K25 ["secondaryAction"]
      319 MOVE                             R16 R21
      320 LOADNIL                          R17
      321 GETUPVAL                         R18 1
      322 GETTABLEKS                       R18 R18 K58 ["createElement"]
      324 GETUPVAL                         R19 5
      325 MOVE                             R20 R16
      326 DUPTABLE                         R21 K60 [{"Content"}]
      327 GETUPVAL                         R22 1
      328 GETTABLEKS                       R22 R22 K58 ["createElement"]
      330 GETUPVAL                         R23 6
      331 DUPTABLE                         R24 K62 [{"tag"}]
      332 LOADK                            R25 K63 ["col size-full-0 auto-y gap-medium align-x-center align-y-center"]
      333 SETTABLEKS                       R25 R24 K61 ["tag"]
      335 MOVE                             R25 R17
      336 CALL                             R22 3 1
      337 SETTABLEKS                       R22 R21 K59 ["Content"]
      339 CALL                             R18 3 -1
      340 RETURN                           R18 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K6 ["Dialog"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K12 ["Packages"]
       26 GETTABLEKS                       R4 R4 K13 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Packages"]
       33 GETTABLEKS                       R5 R5 K14 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Packages"]
       40 GETTABLEKS                       R6 R6 K15 ["StudioFoundation"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K10 ["Src"]
       47 GETTABLEKS                       R7 R7 K16 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K17 ["Flags"]
       56 GETTABLEKS                       R8 R8 K18 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K12 ["Packages"]
       63 GETTABLEKS                       R9 R9 K19 ["Framework"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R8 K20 ["Util"]
       68 GETTABLEKS                       R9 R9 K21 ["counter"]
       70 GETTABLEKS                       R10 R5 K20 ["Util"]
       72 GETTABLEKS                       R10 R10 K22 ["StudioUri"]
       74 GETTABLEKS                       R11 R3 K23 ["SearchInput"]
       76 GETTABLEKS                       R12 R3 K24 ["TextInput"]
       78 GETTABLEKS                       R13 R3 K25 ["ScrollView"]
       80 GETTABLEKS                       R14 R3 K26 ["RadioGroup"]
       82 GETTABLEKS                       R15 R3 K27 ["Dropdown"]
       84 GETTABLEKS                       R16 R3 K28 ["Progress"]
       86 GETTABLEKS                       R17 R3 K29 ["Button"]
       88 GETTABLEKS                       R18 R3 K30 ["Image"]
       90 GETTABLEKS                       R19 R3 K31 ["View"]
       92 GETTABLEKS                       R20 R3 K32 ["Text"]
       94 GETTABLEKS                       R21 R3 K33 ["Enums"]
       96 GETTABLEKS                       R21 R21 K34 ["SearchInputShape"]
       98 GETTABLEKS                       R22 R3 K33 ["Enums"]
      100 GETTABLEKS                       R22 R22 K35 ["InputSize"]
      102 GETTABLEKS                       R23 R3 K33 ["Enums"]
      104 GETTABLEKS                       R23 R23 K36 ["Visibility"]
      106 GETTABLEKS                       R24 R3 K33 ["Enums"]
      108 GETTABLEKS                       R24 R24 K37 ["ButtonVariant"]
      110 GETTABLEKS                       R25 R3 K33 ["Enums"]
      112 GETTABLEKS                       R25 R25 K38 ["StateLayerAffordance"]
      114 GETTABLEKS                       R26 R3 K33 ["Enums"]
      116 GETTABLEKS                       R26 R26 K39 ["ProgressShape"]
      118 GETTABLEKS                       R27 R3 K33 ["Enums"]
      120 GETTABLEKS                       R27 R27 K40 ["ProgressSize"]
      122 DUPCLOSURE                       R28 K41 [PROTO_1]
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R25
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R22
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R20
      132 DUPCLOSURE                       R29 K42 [PROTO_2]
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R19
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R26
      138 CAPTURE                          VAL R27
      139 CAPTURE                          VAL R20
      140 DUPCLOSURE                       R30 K43 [PROTO_16]
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R28
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R26
      152 CAPTURE                          VAL R27
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R24
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R12
      160 DUPCLOSURE                       R31 K44 [PROTO_20]
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R30
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R29
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R19
      168 MOVE                             R33 R7
      169 CALL                             R33 0 1
      170 JUMPIFNOT                        R33 ; [+18]
      171 GETIMPORT                        R32 K47 [table.freeze]
      173 DUPTABLE                         R33 K50 [{"uri", "component"}]
      174 GETTABLEKS                       R34 R10 K51 ["fromWidget"]
      176 LOADK                            R35 K52 ["CreatorConfig"]
      177 LOADK                            R36 K53 ["PublishAsDialog"]
      178 CALL                             R34 2 1
      179 SETTABLEKS                       R34 R33 K48 ["uri"]
      181 GETTABLEKS                       R34 R4 K54 ["memo"]
      183 MOVE                             R35 R31
      184 CALL                             R34 1 1
      185 SETTABLEKS                       R34 R33 K49 ["component"]
      187 CALL                             R32 1 1
      188 RETURN                           R32 1
      189 LOADNIL                          R32
      190 RETURN                           R32 1
