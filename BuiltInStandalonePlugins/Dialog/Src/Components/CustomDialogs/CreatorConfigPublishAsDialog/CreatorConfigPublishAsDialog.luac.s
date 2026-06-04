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
        2 GETTABLEKS                       R2 R0 K1 ["tokens"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 DUPTABLE                         R4 K3 [{"Body"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K4 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K6 [{"tag"}]
       12 LOADK                            R8 K7 ["size-full-full col align-x-center align-y-center gap-large"]
       13 SETTABLEKS                       R8 R7 K5 ["tag"]
       15 DUPTABLE                         R8 K10 [{"Title", "Spinner"}]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K4 ["createElement"]
       19 GETUPVAL                         R10 3
       20 DUPTABLE                         R11 K14 [{"LayoutOrder", "Text", "textStyle"}]
       21 MOVE                             R12 R3
       22 CALL                             R12 0 1
       23 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       25 GETTABLEKS                       R12 R1 K15 ["PublishInProgress"]
       27 SETTABLEKS                       R12 R11 K12 ["Text"]
       29 GETTABLEKS                       R12 R2 K16 ["Color"]
       31 GETTABLEKS                       R12 R12 K17 ["System"]
       33 GETTABLEKS                       R12 R12 K18 ["Success"]
       35 SETTABLEKS                       R12 R11 K13 ["textStyle"]
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K8 ["Title"]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K4 ["createElement"]
       43 GETUPVAL                         R10 4
       44 DUPTABLE                         R11 K19 [{"LayoutOrder"}]
       45 MOVE                             R12 R3
       46 CALL                             R12 0 1
       47 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K9 ["Spinner"]
       52 CALL                             R5 3 1
       53 SETTABLEKS                       R5 R4 K2 ["Body"]
       55 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["universe"]
        2 GETTABLEKS                       R2 R0 K1 ["publishResponse"]
        4 GETTABLEKS                       R3 R0 K2 ["translationStrings"]
        6 GETTABLEKS                       R4 R0 K3 ["tokens"]
        8 GETTABLEKS                       R6 R2 K5 ["success"]
       10 ORK                              R5 R6 K4 [False]
       11 GETUPVAL                         R6 0
       12 CALL                             R6 0 1
       13 DUPTABLE                         R7 K7 [{"Body"}]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K8 ["createElement"]
       17 GETUPVAL                         R9 2
       18 DUPTABLE                         R10 K10 [{"tag"}]
       19 LOADK                            R11 K11 ["size-full-full col align-x-center align-y-center gap-xxlarge"]
       20 SETTABLEKS                       R11 R10 K9 ["tag"]
       22 DUPTABLE                         R11 K16 [{"Title", "ErrorReason", "UniverseIcon", "UniverseName"}]
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R12 R12 K8 ["createElement"]
       26 GETUPVAL                         R13 3
       27 DUPTABLE                         R14 K20 [{"LayoutOrder", "Text", "textStyle"}]
       28 MOVE                             R15 R6
       29 CALL                             R15 0 1
       30 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       32 JUMPIFNOT                        R5 ; [+3]
       33 GETTABLEKS                       R15 R3 K21 ["PublishSuccess"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R15 R3 K22 ["PublishFailure"]
       38 SETTABLEKS                       R15 R14 K18 ["Text"]
       40 GETTABLEKS                       R16 R2 K5 ["success"]
       42 JUMPIFNOT                        R16 ; [+7]
       43 GETTABLEKS                       R15 R4 K23 ["Color"]
       45 GETTABLEKS                       R15 R15 K24 ["System"]
       47 GETTABLEKS                       R15 R15 K25 ["Success"]
       49 JUMPIF                           R15 ; [+6]
       50 GETTABLEKS                       R15 R4 K23 ["Color"]
       52 GETTABLEKS                       R15 R15 K24 ["System"]
       54 GETTABLEKS                       R15 R15 K26 ["Alert"]
       56 SETTABLEKS                       R15 R14 K19 ["textStyle"]
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K12 ["Title"]
       61 GETTABLEKS                       R13 R2 K27 ["error"]
       63 JUMPIFNOT                        R13 ; [+23]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K8 ["createElement"]
       67 GETUPVAL                         R13 3
       68 DUPTABLE                         R14 K20 [{"LayoutOrder", "Text", "textStyle"}]
       69 MOVE                             R15 R6
       70 CALL                             R15 0 1
       71 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       73 GETTABLEKS                       R15 R2 K27 ["error"]
       75 SETTABLEKS                       R15 R14 K18 ["Text"]
       77 GETTABLEKS                       R15 R4 K23 ["Color"]
       79 GETTABLEKS                       R15 R15 K24 ["System"]
       81 GETTABLEKS                       R15 R15 K26 ["Alert"]
       83 SETTABLEKS                       R15 R14 K19 ["textStyle"]
       85 CALL                             R12 2 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R12
       88 SETTABLEKS                       R12 R11 K13 ["ErrorReason"]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K8 ["createElement"]
       93 GETUPVAL                         R13 4
       94 DUPTABLE                         R14 K30 [{"LayoutOrder", "Image", "Size"}]
       95 MOVE                             R15 R6
       96 CALL                             R15 0 1
       97 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       99 GETTABLEKS                       R15 R1 K31 ["Icon"]
      101 SETTABLEKS                       R15 R14 K28 ["Image"]
      103 GETIMPORT                        R15 K34 [UDim2.fromOffset]
      105 LOADN                            R16 120
      106 LOADN                            R17 120
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K29 ["Size"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K14 ["UniverseIcon"]
      113 GETUPVAL                         R12 1
      114 GETTABLEKS                       R12 R12 K8 ["createElement"]
      116 GETUPVAL                         R13 3
      117 DUPTABLE                         R14 K35 [{"LayoutOrder", "Text"}]
      118 MOVE                             R15 R6
      119 CALL                             R15 0 1
      120 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
      122 GETTABLEKS                       R15 R1 K36 ["Name"]
      124 SETTABLEKS                       R15 R14 K18 ["Text"]
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K15 ["UniverseName"]
      129 CALL                             R8 3 1
      130 SETTABLEKS                       R8 R7 K6 ["Body"]
      132 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 SETTABLE                         R1 R2 R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       48 DUPCLOSURE                       R4 K15 [PROTO_7]
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

PROTO_9:
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

PROTO_10:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R1 K2 [{"message", "universeId"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K0 ["message"]
        9 GETUPVAL                         R2 0
       10 SETTABLEKS                       R2 R1 K1 ["universeId"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["translationStrings"]
        2 GETTABLEKS                       R2 R0 K1 ["tokens"]
        4 GETTABLEKS                       R3 R0 K2 ["getUniverses"]
        6 GETTABLEKS                       R4 R0 K3 ["getGroups"]
        8 GETTABLEKS                       R5 R0 K4 ["requestPublish"]
       10 GETTABLEKS                       R6 R0 K5 ["setUniverse"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["useState"]
       15 LOADK                            R8 K7 [""]
       16 CALL                             R7 1 2
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K6 ["useState"]
       20 LOADNIL                          R10
       21 CALL                             R9 1 2
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K6 ["useState"]
       25 LOADK                            R12 K7 [""]
       26 CALL                             R11 1 2
       27 GETUPVAL                         R13 0
       28 GETTABLEKS                       R13 R13 K6 ["useState"]
       30 LOADK                            R14 K7 [""]
       31 CALL                             R13 1 2
       32 GETUPVAL                         R15 0
       33 GETTABLEKS                       R15 R15 K6 ["useState"]
       35 LOADB                            R16 0
       36 CALL                             R15 1 2
       37 GETUPVAL                         R17 0
       38 GETTABLEKS                       R17 R17 K6 ["useState"]
       40 LOADNIL                          R18
       41 CALL                             R17 1 2
       42 GETUPVAL                         R19 0
       43 GETTABLEKS                       R19 R19 K6 ["useState"]
       45 NEWTABLE                         R20 0 0
       47 CALL                             R19 1 2
       48 GETUPVAL                         R21 0
       49 GETTABLEKS                       R21 R21 K8 ["useCallback"]
       51 NEWCLOSURE                       R22 P0
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R18
       54 CAPTURE                          VAL R16
       55 NEWTABLE                         R23 0 2
       57 MOVE                             R24 R4
       58 MOVE                             R25 R18
       59 SETLIST                          R23 R24 2 [1]
       61 CALL                             R21 2 1
       62 GETUPVAL                         R22 0
       63 GETTABLEKS                       R22 R22 K8 ["useCallback"]
       65 NEWCLOSURE                       R23 P1
       66 CAPTURE                          VAL R19
       67 CAPTURE                          VAL R20
       68 NEWTABLE                         R24 0 2
       70 MOVE                             R25 R19
       71 MOVE                             R26 R20
       72 SETLIST                          R24 R25 2 [1]
       74 CALL                             R22 2 1
       75 GETUPVAL                         R23 0
       76 GETTABLEKS                       R23 R23 K8 ["useCallback"]
       78 NEWCLOSURE                       R24 P2
       79 CAPTURE                          VAL R19
       80 CAPTURE                          VAL R22
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R25 0 4
       84 MOVE                             R26 R11
       85 MOVE                             R27 R3
       86 MOVE                             R28 R19
       87 MOVE                             R29 R20
       88 SETLIST                          R25 R26 4 [1]
       90 CALL                             R23 2 1
       91 GETUPVAL                         R24 0
       92 GETTABLEKS                       R24 R24 K9 ["useMemo"]
       94 NEWCLOSURE                       R25 P3
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R17
       98 NEWTABLE                         R26 0 2
      100 MOVE                             R27 R17
      101 MOVE                             R28 R1
      102 SETLIST                          R26 R27 2 [1]
      104 CALL                             R24 2 1
      105 GETUPVAL                         R25 0
      106 GETTABLEKS                       R25 R25 K10 ["useEffect"]
      108 NEWCLOSURE                       R26 P4
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R24
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R23
      113 NEWTABLE                         R27 0 2
      115 MOVE                             R28 R15
      116 MOVE                             R29 R24
      117 SETLIST                          R27 R28 2 [1]
      119 CALL                             R25 2 0
      120 GETUPVAL                         R25 0
      121 GETTABLEKS                       R25 R25 K10 ["useEffect"]
      123 NEWCLOSURE                       R26 P5
      124 CAPTURE                          VAL R21
      125 NEWTABLE                         R27 0 1
      127 MOVE                             R28 R21
      128 SETLIST                          R27 R28 1 [1]
      130 CALL                             R25 2 0
      131 GETUPVAL                         R25 0
      132 GETTABLEKS                       R25 R25 K8 ["useCallback"]
      134 NEWCLOSURE                       R26 P6
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R7
      138 NEWTABLE                         R27 0 3
      140 MOVE                             R28 R7
      141 MOVE                             R29 R9
      142 MOVE                             R30 R5
      143 SETLIST                          R27 R28 3 [1]
      145 CALL                             R25 2 1
      146 GETUPVAL                         R26 0
      147 GETTABLEKS                       R26 R26 K8 ["useCallback"]
      149 NEWCLOSURE                       R27 P7
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R6
      154 NEWTABLE                         R28 0 3
      156 MOVE                             R29 R19
      157 MOVE                             R30 R11
      158 MOVE                             R31 R6
      159 SETLIST                          R28 R29 3 [1]
      161 CALL                             R26 2 1
      162 GETUPVAL                         R27 0
      163 GETTABLEKS                       R27 R27 K9 ["useMemo"]
      165 NEWCLOSURE                       R28 P8
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R13
      169 CAPTURE                          UPVAL U0
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          VAL R26
      172 NEWTABLE                         R29 0 4
      174 MOVE                             R30 R19
      175 MOVE                             R31 R11
      176 MOVE                             R32 R13
      177 MOVE                             R33 R26
      178 SETLIST                          R29 R30 4 [1]
      180 CALL                             R27 2 1
      181 GETTABLE                         R28 R19 R11
      182 NOT                              R29 R15
      183 JUMPIF                           R29 ; [+4]
      184 JUMPIFEQKNIL                     R28 ; [+2]
      186 LOADB                            R29 0 +1
      187 LOADB                            R29 1
      188 MOVE                             R30 R15
      189 JUMPIFNOT                        R30 ; [+4]
      190 JUMPIFEQKNIL                     R17 ; [+2]
      192 LOADB                            R30 0 +1
      193 LOADB                            R30 1
      194 JUMPIFNOT                        R28 ; [+3]
      195 GETTABLEKS                       R31 R28 K11 ["Failed"]
      197 JUMPIF                           R31 ; [+1]
      198 LOADB                            R31 0
      199 GETUPVAL                         R32 3
      200 CALL                             R32 0 1
      201 DUPTABLE                         R33 K15 [{"FilterOptions", "UniverseView", "MessageField"}]
      202 GETUPVAL                         R34 0
      203 GETTABLEKS                       R34 R34 K16 ["createElement"]
      205 GETUPVAL                         R35 4
      206 DUPTABLE                         R36 K19 [{"LayoutOrder", "tag"}]
      207 MOVE                             R37 R32
      208 CALL                             R37 0 1
      209 SETTABLEKS                       R37 R36 K17 ["LayoutOrder"]
      211 LOADK                            R37 K20 ["row size-full-0 auto-y flex-between"]
      212 SETTABLEKS                       R37 R36 K18 ["tag"]
      214 DUPTABLE                         R37 K23 [{"CreatorDropdown", "SearchField"}]
      215 GETUPVAL                         R38 0
      216 GETTABLEKS                       R38 R38 K16 ["createElement"]
      218 GETUPVAL                         R39 5
      219 GETTABLEKS                       R39 R39 K24 ["Root"]
      221 DUPTABLE                         R40 K32 [{"LayoutOrder", "label", "value", "items", "width", "size", "isDisabled", "onItemChanged"}]
      222 MOVE                             R41 R32
      223 CALL                             R41 0 1
      224 SETTABLEKS                       R41 R40 K17 ["LayoutOrder"]
      226 LOADK                            R41 K7 [""]
      227 SETTABLEKS                       R41 R40 K25 ["label"]
      229 SETTABLEKS                       R11 R40 K26 ["value"]
      231 SETTABLEKS                       R24 R40 K27 ["items"]
      233 GETIMPORT                        R41 K35 [UDim.new]
      235 LOADN                            R42 0
      236 LOADN                            R43 220
      237 CALL                             R41 2 1
      238 SETTABLEKS                       R41 R40 K28 ["width"]
      240 GETUPVAL                         R41 6
      241 GETTABLEKS                       R41 R41 K36 ["Small"]
      243 SETTABLEKS                       R41 R40 K29 ["size"]
      245 OR                               R41 R29 R30
      246 SETTABLEKS                       R41 R40 K30 ["isDisabled"]
      248 NEWCLOSURE                       R41 P9
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R23
      251 SETTABLEKS                       R41 R40 K31 ["onItemChanged"]
      253 CALL                             R38 2 1
      254 SETTABLEKS                       R38 R37 K21 ["CreatorDropdown"]
      256 GETUPVAL                         R38 0
      257 GETTABLEKS                       R38 R38 K16 ["createElement"]
      259 GETUPVAL                         R39 7
      260 DUPTABLE                         R40 K41 [{"LayoutOrder", "label", "text", "placeholder", "size", "width", "isDisabled", "shape", "onChanged"}]
      261 MOVE                             R41 R32
      262 CALL                             R41 0 1
      263 SETTABLEKS                       R41 R40 K17 ["LayoutOrder"]
      265 LOADK                            R41 K7 [""]
      266 SETTABLEKS                       R41 R40 K25 ["label"]
      268 SETTABLEKS                       R13 R40 K37 ["text"]
      270 GETTABLEKS                       R41 R1 K42 ["SearchPlaceholder"]
      272 SETTABLEKS                       R41 R40 K38 ["placeholder"]
      274 GETUPVAL                         R41 6
      275 GETTABLEKS                       R41 R41 K36 ["Small"]
      277 SETTABLEKS                       R41 R40 K29 ["size"]
      279 GETIMPORT                        R41 K35 [UDim.new]
      281 LOADN                            R42 0
      282 LOADN                            R43 200
      283 CALL                             R41 2 1
      284 SETTABLEKS                       R41 R40 K28 ["width"]
      286 SETTABLEKS                       R29 R40 K30 ["isDisabled"]
      288 GETUPVAL                         R41 8
      289 GETTABLEKS                       R41 R41 K43 ["Rounded"]
      291 SETTABLEKS                       R41 R40 K39 ["shape"]
      293 SETTABLEKS                       R14 R40 K40 ["onChanged"]
      295 CALL                             R38 2 1
      296 SETTABLEKS                       R38 R37 K22 ["SearchField"]
      298 CALL                             R34 3 1
      299 SETTABLEKS                       R34 R33 K12 ["FilterOptions"]
      301 JUMPIFNOT                        R29 ; [+24]
      302 GETUPVAL                         R34 0
      303 GETTABLEKS                       R34 R34 K16 ["createElement"]
      305 GETUPVAL                         R35 4
      306 DUPTABLE                         R36 K19 [{"LayoutOrder", "tag"}]
      307 MOVE                             R37 R32
      308 CALL                             R37 0 1
      309 SETTABLEKS                       R37 R36 K17 ["LayoutOrder"]
      311 LOADK                            R37 K44 ["size-full-2200 col align-x-center align-y-center"]
      312 SETTABLEKS                       R37 R36 K18 ["tag"]
      314 DUPTABLE                         R37 K46 [{"Spinner"}]
      315 GETUPVAL                         R38 0
      316 GETTABLEKS                       R38 R38 K16 ["createElement"]
      318 GETUPVAL                         R39 9
      319 NEWTABLE                         R40 0 0
      321 CALL                             R38 2 1
      322 SETTABLEKS                       R38 R37 K45 ["Spinner"]
      324 CALL                             R34 3 1
      325 JUMP                             ; [+183]
      326 GETUPVAL                         R34 0
      327 GETTABLEKS                       R34 R34 K16 ["createElement"]
      329 GETUPVAL                         R35 10
      330 DUPTABLE                         R36 K49 [{"LayoutOrder", "tag", "layout", "scroll"}]
      331 MOVE                             R37 R32
      332 CALL                             R37 0 1
      333 SETTABLEKS                       R37 R36 K17 ["LayoutOrder"]
      335 LOADK                            R37 K50 ["size-full-2200 col gap-medium"]
      336 SETTABLEKS                       R37 R36 K18 ["tag"]
      338 DUPTABLE                         R37 K52 [{"FillDirection"}]
      339 GETIMPORT                        R38 K55 [Enum.FillDirection.Vertical]
      341 SETTABLEKS                       R38 R37 K51 ["FillDirection"]
      343 SETTABLEKS                       R37 R36 K47 ["layout"]
      345 DUPTABLE                         R37 K60 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      346 GETIMPORT                        R38 K63 [UDim2.fromOffset]
      348 LOADN                            R39 0
      349 LOADN                            R40 0
      350 CALL                             R38 2 1
      351 SETTABLEKS                       R38 R37 K56 ["CanvasSize"]
      353 GETIMPORT                        R38 K66 [Enum.AutomaticSize.Y]
      355 SETTABLEKS                       R38 R37 K57 ["AutomaticCanvasSize"]
      357 GETIMPORT                        R38 K67 [Enum.ScrollingDirection.Y]
      359 SETTABLEKS                       R38 R37 K58 ["ScrollingDirection"]
      361 GETUPVAL                         R38 11
      362 GETTABLEKS                       R38 R38 K68 ["Always"]
      364 SETTABLEKS                       R38 R37 K59 ["scrollBarVisibility"]
      366 SETTABLEKS                       R37 R36 K48 ["scroll"]
      368 DUPTABLE                         R37 K70 [{"UniverseList"}]
      369 JUMPIF                           R30 ; [+1]
      370 JUMPIFNOT                        R31 ; [+76]
      371 GETUPVAL                         R38 0
      372 GETTABLEKS                       R38 R38 K16 ["createElement"]
      374 GETUPVAL                         R39 4
      375 DUPTABLE                         R40 K71 [{"tag"}]
      376 LOADK                            R41 K72 ["size-full-full col align-x-center align-y-center gap-medium"]
      377 SETTABLEKS                       R41 R40 K18 ["tag"]
      379 DUPTABLE                         R41 K75 [{"Message", "RetryButton"}]
      380 GETUPVAL                         R42 0
      381 GETTABLEKS                       R42 R42 K16 ["createElement"]
      383 GETUPVAL                         R43 12
      384 DUPTABLE                         R44 K78 [{"LayoutOrder", "tag", "textStyle", "Text"}]
      385 MOVE                             R45 R32
      386 CALL                             R45 0 1
      387 SETTABLEKS                       R45 R44 K17 ["LayoutOrder"]
      389 LOADK                            R45 K79 ["auto-xy text-body-medium"]
      390 SETTABLEKS                       R45 R44 K18 ["tag"]
      392 GETTABLEKS                       R45 R2 K80 ["Color"]
      394 GETTABLEKS                       R45 R45 K81 ["System"]
      396 GETTABLEKS                       R45 R45 K82 ["Alert"]
      398 SETTABLEKS                       R45 R44 K76 ["textStyle"]
      400 JUMPIFNOT                        R30 ; [+3]
      401 GETTABLEKS                       R45 R1 K83 ["FailedToLoadGroups"]
      403 JUMP                             ; [+2]
      404 GETTABLEKS                       R45 R1 K84 ["FailedToLoadUniverses"]
      406 SETTABLEKS                       R45 R44 K77 ["Text"]
      408 CALL                             R42 2 1
      409 SETTABLEKS                       R42 R41 K73 ["Message"]
      411 GETUPVAL                         R42 0
      412 GETTABLEKS                       R42 R42 K16 ["createElement"]
      414 GETUPVAL                         R43 13
      415 DUPTABLE                         R44 K87 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      416 MOVE                             R45 R32
      417 CALL                             R45 0 1
      418 SETTABLEKS                       R45 R44 K17 ["LayoutOrder"]
      420 GETTABLEKS                       R45 R1 K74 ["RetryButton"]
      422 SETTABLEKS                       R45 R44 K37 ["text"]
      424 GETUPVAL                         R45 14
      425 GETTABLEKS                       R45 R45 K88 ["Emphasis"]
      427 SETTABLEKS                       R45 R44 K85 ["variant"]
      429 GETUPVAL                         R45 6
      430 GETTABLEKS                       R45 R45 K89 ["XSmall"]
      432 SETTABLEKS                       R45 R44 K29 ["size"]
      434 NEWCLOSURE                       R45 P10
      435 CAPTURE                          VAL R30
      436 CAPTURE                          VAL R16
      437 CAPTURE                          VAL R21
      438 CAPTURE                          VAL R23
      439 CAPTURE                          VAL R11
      440 SETTABLEKS                       R45 R44 K86 ["onActivated"]
      442 CALL                             R42 2 1
      443 SETTABLEKS                       R42 R41 K74 ["RetryButton"]
      445 CALL                             R38 3 1
      446 JUMP                             ; [+59]
      447 GETIMPORT                        R39 K91 [next]
      449 MOVE                             R40 R27
      450 CALL                             R39 1 1
      451 JUMPIFNOTEQKNIL                  R39 ; [+31]
      453 GETUPVAL                         R38 0
      454 GETTABLEKS                       R38 R38 K16 ["createElement"]
      456 GETUPVAL                         R39 4
      457 DUPTABLE                         R40 K71 [{"tag"}]
      458 LOADK                            R41 K72 ["size-full-full col align-x-center align-y-center gap-medium"]
      459 SETTABLEKS                       R41 R40 K18 ["tag"]
      461 DUPTABLE                         R41 K92 [{"Message"}]
      462 GETUPVAL                         R42 0
      463 GETTABLEKS                       R42 R42 K16 ["createElement"]
      465 GETUPVAL                         R43 12
      466 DUPTABLE                         R44 K93 [{"LayoutOrder", "tag", "Text"}]
      467 MOVE                             R45 R32
      468 CALL                             R45 0 1
      469 SETTABLEKS                       R45 R44 K17 ["LayoutOrder"]
      471 LOADK                            R45 K94 ["auto-xy text-body-small"]
      472 SETTABLEKS                       R45 R44 K18 ["tag"]
      474 GETTABLEKS                       R45 R1 K95 ["NoExperiencesMatchFilter"]
      476 SETTABLEKS                       R45 R44 K77 ["Text"]
      478 CALL                             R42 2 1
      479 SETTABLEKS                       R42 R41 K73 ["Message"]
      481 CALL                             R38 3 1
      482 JUMP                             ; [+23]
      483 GETUPVAL                         R38 0
      484 GETTABLEKS                       R38 R38 K16 ["createElement"]
      486 GETUPVAL                         R39 15
      487 GETTABLEKS                       R39 R39 K24 ["Root"]
      489 DUPTABLE                         R40 K97 [{"value", "onValueChanged"}]
      490 JUMPIFNOT                        R9 ; [+6]
      491 FASTCALL1                        TOSTRING R9 ; [+3]
      492 MOVE                             R42 R9
      493 GETIMPORT                        R41 K99 [tostring]
      495 CALL                             R41 1 1
      496 JUMP                             ; [+1]
      497 LOADNIL                          R41
      498 SETTABLEKS                       R41 R40 K26 ["value"]
      500 NEWCLOSURE                       R41 P11
      501 CAPTURE                          VAL R26
      502 SETTABLEKS                       R41 R40 K96 ["onValueChanged"]
      504 MOVE                             R41 R27
      505 CALL                             R38 3 1
      506 SETTABLEKS                       R38 R37 K69 ["UniverseList"]
      508 CALL                             R34 3 1
      509 SETTABLEKS                       R34 R33 K13 ["UniverseView"]
      511 GETUPVAL                         R34 0
      512 GETTABLEKS                       R34 R34 K16 ["createElement"]
      514 GETUPVAL                         R35 16
      515 DUPTABLE                         R36 K101 [{"LayoutOrder", "text", "label", "hint", "placeholder", "size", "width", "onChanged"}]
      516 MOVE                             R37 R32
      517 CALL                             R37 0 1
      518 SETTABLEKS                       R37 R36 K17 ["LayoutOrder"]
      520 SETTABLEKS                       R7 R36 K37 ["text"]
      522 GETTABLEKS                       R37 R1 K102 ["MessageFieldLabel"]
      524 SETTABLEKS                       R37 R36 K25 ["label"]
      526 GETTABLEKS                       R37 R1 K103 ["MessageFieldHint"]
      528 SETTABLEKS                       R37 R36 K100 ["hint"]
      530 GETTABLEKS                       R37 R1 K104 ["MessageFieldPlaceholder"]
      532 SETTABLEKS                       R37 R36 K38 ["placeholder"]
      534 GETUPVAL                         R37 6
      535 GETTABLEKS                       R37 R37 K36 ["Small"]
      537 SETTABLEKS                       R37 R36 K29 ["size"]
      539 GETIMPORT                        R37 K35 [UDim.new]
      541 LOADN                            R38 1
      542 LOADN                            R39 0
      543 CALL                             R37 2 1
      544 SETTABLEKS                       R37 R36 K28 ["width"]
      546 SETTABLEKS                       R8 R36 K40 ["onChanged"]
      548 CALL                             R34 2 1
      549 SETTABLEKS                       R34 R33 K14 ["MessageField"]
      551 DUPTABLE                         R34 K108 [{"body", "publish", "isPublishDisabled"}]
      552 SETTABLEKS                       R33 R34 K105 ["body"]
      554 SETTABLEKS                       R25 R34 K106 ["publish"]
      556 MOVE                             R35 R29
      557 JUMPIF                           R35 ; [+4]
      558 JUMPIFEQKNIL                     R9 ; [+2]
      560 LOADB                            R35 0 +1
      561 LOADB                            R35 1
      562 SETTABLEKS                       R35 R34 K107 ["isPublishDisabled"]
      564 RETURN                           R34 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.new]
        3 LOADN                            R3 1
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
        8 GETTABLEKS                       R6 R6 K4 ["Y"]
       10 CALL                             R2 4 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["success"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_22:
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
       37 GETTABLEKS                       R12 R12 K9 ["useBinding"]
       39 LOADNIL                          R13
       40 CALL                             R12 1 2
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       44 NEWCLOSURE                       R15 P0
       45 CAPTURE                          VAL R13
       46 NEWTABLE                         R16 0 1
       48 MOVE                             R17 R13
       49 SETLIST                          R16 R17 1 [1]
       51 CALL                             R14 2 1
       52 GETUPVAL                         R15 1
       53 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       55 NEWCLOSURE                       R16 P1
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R11
       60 NEWTABLE                         R17 0 4
       62 MOVE                             R18 R1
       63 MOVE                             R19 R4
       64 MOVE                             R20 R5
       65 MOVE                             R21 R11
       66 SETLIST                          R17 R18 4 [1]
       68 CALL                             R15 2 1
       69 GETUPVAL                         R16 1
       70 GETTABLEKS                       R16 R16 K10 ["useCallback"]
       72 NEWCLOSURE                       R17 P2
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R8
       75 NEWTABLE                         R18 0 2
       77 MOVE                             R19 R15
       78 MOVE                             R20 R8
       79 SETLIST                          R18 R19 2 [1]
       81 CALL                             R16 2 1
       82 GETUPVAL                         R17 1
       83 GETTABLEKS                       R17 R17 K10 ["useCallback"]
       85 NEWCLOSURE                       R18 P3
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R10
       88 NEWTABLE                         R19 0 2
       90 GETTABLEKS                       R20 R0 K11 ["onResolved"]
       92 MOVE                             R21 R10
       93 SETLIST                          R19 R20 2 [1]
       95 CALL                             R17 2 1
       96 GETUPVAL                         R18 2
       97 DUPTABLE                         R19 K17 [{"translationStrings", "tokens", "getUniverses", "getGroups", "requestPublish", "setUniverse"}]
       98 SETTABLEKS                       R2 R19 K1 ["translationStrings"]
      100 SETTABLEKS                       R3 R19 K12 ["tokens"]
      102 GETTABLEKS                       R20 R1 K13 ["getUniverses"]
      104 SETTABLEKS                       R20 R19 K13 ["getUniverses"]
      106 GETTABLEKS                       R20 R1 K14 ["getGroups"]
      108 SETTABLEKS                       R20 R19 K14 ["getGroups"]
      110 SETTABLEKS                       R15 R19 K15 ["requestPublish"]
      112 SETTABLEKS                       R7 R19 K16 ["setUniverse"]
      114 CALL                             R18 1 1
      115 LOADNIL                          R19
      116 LOADNIL                          R20
      117 JUMPIFNOTEQKS                    R4 K5 ["PublishAs"] ; [+69]
      119 DUPTABLE                         R21 K26 [{"uri", "type", "width", "title", "description", "showIndeterminateProgressIndicator", "primaryAction", "secondaryAction"}]
      120 GETTABLEKS                       R22 R0 K18 ["uri"]
      122 SETTABLEKS                       R22 R21 K18 ["uri"]
      124 LOADK                            R22 K27 ["Default"]
      125 SETTABLEKS                       R22 R21 K19 ["type"]
      127 LOADN                            R22 128
      128 SETTABLEKS                       R22 R21 K20 ["width"]
      130 GETTABLEKS                       R22 R2 K28 ["Title"]
      132 SETTABLEKS                       R22 R21 K21 ["title"]
      134 GETTABLEKS                       R22 R2 K29 ["Description"]
      136 SETTABLEKS                       R22 R21 K22 ["description"]
      138 LOADB                            R22 0
      139 SETTABLEKS                       R22 R21 K23 ["showIndeterminateProgressIndicator"]
      141 DUPTABLE                         R22 K33 [{"uri", "text", "onActivated", "disabled"}]
      142 GETUPVAL                         R23 3
      143 GETTABLEKS                       R23 R23 K34 ["child"]
      145 GETTABLEKS                       R24 R0 K18 ["uri"]
      147 LOADK                            R25 K35 ["Publish"]
      148 CALL                             R23 2 1
      149 SETTABLEKS                       R23 R22 K18 ["uri"]
      151 GETTABLEKS                       R23 R2 K36 ["PublishButton"]
      153 SETTABLEKS                       R23 R22 K30 ["text"]
      155 GETTABLEKS                       R23 R18 K37 ["publish"]
      157 SETTABLEKS                       R23 R22 K31 ["onActivated"]
      159 GETTABLEKS                       R23 R18 K38 ["isPublishDisabled"]
      161 SETTABLEKS                       R23 R22 K32 ["disabled"]
      163 SETTABLEKS                       R22 R21 K24 ["primaryAction"]
      165 DUPTABLE                         R22 K39 [{"uri", "text", "onActivated"}]
      166 GETUPVAL                         R23 3
      167 GETTABLEKS                       R23 R23 K34 ["child"]
      169 GETTABLEKS                       R24 R0 K18 ["uri"]
      171 LOADK                            R25 K40 ["Cancel"]
      172 CALL                             R23 2 1
      173 SETTABLEKS                       R23 R22 K18 ["uri"]
      175 GETTABLEKS                       R23 R2 K41 ["CancelButton"]
      177 SETTABLEKS                       R23 R22 K30 ["text"]
      179 SETTABLEKS                       R17 R22 K31 ["onActivated"]
      181 SETTABLEKS                       R22 R21 K25 ["secondaryAction"]
      183 MOVE                             R19 R21
      184 GETTABLEKS                       R20 R18 K42 ["body"]
      186 JUMP                             ; [+107]
      187 JUMPIFNOTEQKS                    R4 K43 ["PublishInProgress"] ; [+22]
      189 DUPTABLE                         R21 K44 [{"uri", "type", "width"}]
      190 GETTABLEKS                       R22 R0 K18 ["uri"]
      192 SETTABLEKS                       R22 R21 K18 ["uri"]
      194 LOADK                            R22 K27 ["Default"]
      195 SETTABLEKS                       R22 R21 K19 ["type"]
      197 LOADN                            R22 128
      198 SETTABLEKS                       R22 R21 K20 ["width"]
      200 MOVE                             R19 R21
      201 GETUPVAL                         R21 4
      202 DUPTABLE                         R22 K45 [{"translationStrings", "tokens"}]
      203 SETTABLEKS                       R2 R22 K1 ["translationStrings"]
      205 SETTABLEKS                       R3 R22 K12 ["tokens"]
      207 CALL                             R21 1 1
      208 MOVE                             R20 R21
      209 JUMP                             ; [+84]
      210 GETTABLEKS                       R22 R10 K6 ["success"]
      212 ORK                              R21 R22 K46 [False]
      213 DUPTABLE                         R22 K47 [{"uri", "type", "width", "primaryAction", "secondaryAction"}]
      214 GETTABLEKS                       R23 R0 K18 ["uri"]
      216 SETTABLEKS                       R23 R22 K18 ["uri"]
      218 LOADK                            R23 K27 ["Default"]
      219 SETTABLEKS                       R23 R22 K19 ["type"]
      221 LOADN                            R23 128
      222 SETTABLEKS                       R23 R22 K20 ["width"]
      224 JUMPIFNOT                        R21 ; [+17]
      225 DUPTABLE                         R23 K39 [{"uri", "text", "onActivated"}]
      226 GETUPVAL                         R24 3
      227 GETTABLEKS                       R24 R24 K34 ["child"]
      229 GETTABLEKS                       R25 R0 K18 ["uri"]
      231 LOADK                            R26 K48 ["Done"]
      232 CALL                             R24 2 1
      233 SETTABLEKS                       R24 R23 K18 ["uri"]
      235 GETTABLEKS                       R24 R2 K49 ["DoneButton"]
      237 SETTABLEKS                       R24 R23 K30 ["text"]
      239 SETTABLEKS                       R17 R23 K31 ["onActivated"]
      241 JUMP                             ; [+16]
      242 DUPTABLE                         R23 K39 [{"uri", "text", "onActivated"}]
      243 GETUPVAL                         R24 3
      244 GETTABLEKS                       R24 R24 K34 ["child"]
      246 GETTABLEKS                       R25 R0 K18 ["uri"]
      248 LOADK                            R26 K50 ["Retry"]
      249 CALL                             R24 2 1
      250 SETTABLEKS                       R24 R23 K18 ["uri"]
      252 GETTABLEKS                       R24 R2 K51 ["RetryButton"]
      254 SETTABLEKS                       R24 R23 K30 ["text"]
      256 SETTABLEKS                       R16 R23 K31 ["onActivated"]
      258 SETTABLEKS                       R23 R22 K24 ["primaryAction"]
      260 JUMPIFNOT                        R21 ; [+2]
      261 LOADNIL                          R23
      262 JUMP                             ; [+16]
      263 DUPTABLE                         R23 K39 [{"uri", "text", "onActivated"}]
      264 GETUPVAL                         R24 3
      265 GETTABLEKS                       R24 R24 K34 ["child"]
      267 GETTABLEKS                       R25 R0 K18 ["uri"]
      269 LOADK                            R26 K52 ["Close"]
      270 CALL                             R24 2 1
      271 SETTABLEKS                       R24 R23 K18 ["uri"]
      273 GETTABLEKS                       R24 R2 K41 ["CancelButton"]
      275 SETTABLEKS                       R24 R23 K30 ["text"]
      277 SETTABLEKS                       R17 R23 K31 ["onActivated"]
      279 SETTABLEKS                       R23 R22 K25 ["secondaryAction"]
      281 MOVE                             R19 R22
      282 GETUPVAL                         R22 5
      283 DUPTABLE                         R23 K55 [{"translationStrings", "tokens", "universe", "publishResponse"}]
      284 SETTABLEKS                       R2 R23 K1 ["translationStrings"]
      286 SETTABLEKS                       R3 R23 K12 ["tokens"]
      288 SETTABLEKS                       R6 R23 K53 ["universe"]
      290 SETTABLEKS                       R10 R23 K54 ["publishResponse"]
      292 CALL                             R22 1 1
      293 MOVE                             R20 R22
      294 JUMPIFEQKS                       R4 K5 ["PublishAs"] ; [+2]
      296 LOADB                            R21 0 +1
      297 LOADB                            R21 1
      298 NOT                              R22 R21
      299 GETUPVAL                         R23 1
      300 GETTABLEKS                       R23 R23 K56 ["createElement"]
      302 GETUPVAL                         R24 6
      303 MOVE                             R25 R19
      304 DUPTABLE                         R26 K58 [{"Content"}]
      305 GETUPVAL                         R27 1
      306 GETTABLEKS                       R27 R27 K56 ["createElement"]
      308 GETUPVAL                         R28 7
      309 DUPTABLE                         R29 K62 [{"tag", "Size", "onAbsoluteSizeChanged"}]
      310 JUMPIFNOT                        R22 ; [+2]
      311 LOADK                            R30 K63 ["col gap-medium align-x-center align-y-center"]
      312 JUMP                             ; [+1]
      313 LOADK                            R30 K64 ["col size-full-0 auto-y gap-medium align-x-center align-y-center"]
      314 SETTABLEKS                       R30 R29 K59 ["tag"]
      316 JUMPIFNOT                        R22 ; [+2]
      317 MOVE                             R30 R12
      318 JUMP                             ; [+1]
      319 LOADNIL                          R30
      320 SETTABLEKS                       R30 R29 K60 ["Size"]
      322 JUMPIFNOT                        R21 ; [+2]
      323 MOVE                             R30 R14
      324 JUMP                             ; [+1]
      325 LOADNIL                          R30
      326 SETTABLEKS                       R30 R29 K61 ["onAbsoluteSizeChanged"]
      328 MOVE                             R30 R20
      329 CALL                             R27 3 1
      330 SETTABLEKS                       R27 R26 K57 ["Content"]
      332 CALL                             R23 3 -1
      333 RETURN                           R23 -1

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
       84 GETTABLEKS                       R16 R3 K28 ["Loading"]
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
      114 DUPCLOSURE                       R26 K39 [PROTO_1]
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R25
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R22
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R20
      124 DUPCLOSURE                       R27 K40 [PROTO_2]
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R16
      130 DUPCLOSURE                       R28 K41 [PROTO_3]
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R18
      136 DUPCLOSURE                       R29 K42 [PROTO_17]
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R26
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R22
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R20
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R12
      154 DUPCLOSURE                       R30 K43 [PROTO_22]
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R29
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R28
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R19
      163 MOVE                             R32 R7
      164 CALL                             R32 0 1
      165 JUMPIFNOT                        R32 ; [+18]
      166 GETIMPORT                        R31 K46 [table.freeze]
      168 DUPTABLE                         R32 K49 [{"uri", "component"}]
      169 GETTABLEKS                       R33 R10 K50 ["fromWidget"]
      171 LOADK                            R34 K51 ["CreatorConfig"]
      172 LOADK                            R35 K52 ["PublishAsDialog"]
      173 CALL                             R33 2 1
      174 SETTABLEKS                       R33 R32 K47 ["uri"]
      176 GETTABLEKS                       R33 R4 K53 ["memo"]
      178 MOVE                             R34 R30
      179 CALL                             R33 1 1
      180 SETTABLEKS                       R33 R32 K48 ["component"]
      182 CALL                             R31 1 1
      183 RETURN                           R31 1
      184 LOADNIL                          R31
      185 RETURN                           R31 1
