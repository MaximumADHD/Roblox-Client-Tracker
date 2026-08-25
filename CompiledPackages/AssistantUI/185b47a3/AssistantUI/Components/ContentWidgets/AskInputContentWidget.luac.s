PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["optionLabels"]
        2 GETTABLEKS                       R3 R1 K1 ["optionBadges"]
        4 GETIMPORT                        R4 K4 [table.create]
        6 LENGTH                           R5 R0
        7 CALL                             R4 1 1
        8 MOVE                             R5 R0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 JUMPIFNOT                        R2 ; [+2]
       13 GETTABLE                         R10 R2 R9
       14 JUMP                             ; [+1]
       15 LOADNIL                          R10
       16 DUPTABLE                         R13 K8 [{"id", "text", "badgeWhen"}]
       17 SETTABLEKS                       R9 R13 K5 ["id"]
       19 GETUPVAL                         R14 0
       20 GETTABLEKS                       R14 R14 K9 ["resolveText"]
       22 MOVE                             R15 R10
       23 CALL                             R14 1 1
       24 SETTABLEKS                       R14 R13 K6 ["text"]
       26 JUMPIFNOT                        R3 ; [+2]
       27 GETTABLE                         R14 R3 R9
       28 JUMP                             ; [+1]
       29 LOADNIL                          R14
       30 SETTABLEKS                       R14 R13 K7 ["badgeWhen"]
       32 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       34 MOVE                             R12 R4
       35 GETIMPORT                        R11 K11 [table.insert]
       37 CALL                             R11 2 0
       38 FORGLOOP                         R5 2 ; [-27]
       40 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 DUPTABLE                         R1 K2 [{"body", "learnMore"}]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R4 R0 K3 ["namespace"]
        8 GETTABLEKS                       R5 R0 K4 ["key"]
       10 NAMECALL                         R2 R2 K5 ["getText"]
       12 CALL                             R2 3 1
       13 SETTABLEKS                       R2 R1 K0 ["body"]
       15 GETUPVAL                         R2 0
       16 LOADK                            R4 K6 ["MeshGenSegmentation"]
       17 LOADK                            R5 K7 ["ExperimentalFeatureLearnMore"]
       18 NAMECALL                         R2 R2 K5 ["getText"]
       20 CALL                             R2 3 1
       21 SETTABLEKS                       R2 R1 K1 ["learnMore"]
       23 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R6 R3 K0 ["type"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["String"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected String row type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R2 K5 ["multiLine"]
       17 SETTABLEKS                       R4 R3 K5 ["multiLine"]
       19 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R6 R3 K0 ["type"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["Number"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected Number row type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K5 ["getFieldRange"]
       18 MOVE                             R5 R1
       19 GETTABLEKS                       R6 R0 K6 ["name"]
       21 CALL                             R4 2 1
       22 JUMPIFEQKNIL                     R4 ; [+9]
       24 GETTABLEKS                       R5 R4 K7 ["min"]
       26 SETTABLEKS                       R5 R3 K7 ["min"]
       28 GETTABLEKS                       R5 R4 K8 ["max"]
       30 SETTABLEKS                       R5 R3 K8 ["max"]
       32 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R6 R0 K0 ["inputType"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["Option"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected Option input type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R6 R3 K5 ["type"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K6 ["Select"]
       20 JUMPIFEQ                         R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       26 LOADK                            R6 K7 ["Expected Select row type"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R5 R0 K8 ["options"]
       33 JUMPIF                           R5 ; [+2]
       34 NEWTABLE                         R5 0 0
       36 MOVE                             R6 R2
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K9 ["selectOptions"]
       40 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R6 R3 K0 ["type"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["Instance"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected Instance row type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R2 K5 ["instanceClasses"]
       17 SETTABLEKS                       R4 R3 K5 ["instanceClasses"]
       19 GETTABLEKS                       R4 R2 K6 ["shouldSelectModel"]
       21 SETTABLEKS                       R4 R3 K6 ["shouldSelectModel"]
       23 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R6 R3 K0 ["type"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["PartNames"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected PartNames row type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R2 K5 ["suggestion"]
       17 SETTABLEKS                       R4 R3 K5 ["suggestion"]
       19 GETTABLEKS                       R5 R2 K6 ["infoPopover"]
       21 JUMPIFNOTEQKNIL                  R5 ; [+3]
       23 LOADNIL                          R4
       24 JUMP                             ; [+19]
       25 DUPTABLE                         R4 K9 [{"body", "learnMore"}]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R8 R5 K10 ["namespace"]
       29 GETTABLEKS                       R9 R5 K11 ["key"]
       31 NAMECALL                         R6 R6 K12 ["getText"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R4 K7 ["body"]
       36 GETUPVAL                         R6 1
       37 LOADK                            R8 K13 ["MeshGenSegmentation"]
       38 LOADK                            R9 K14 ["ExperimentalFeatureLearnMore"]
       39 NAMECALL                         R6 R6 K12 ["getText"]
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R4 K8 ["learnMore"]
       44 SETTABLEKS                       R4 R3 K6 ["infoPopover"]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R4 R4 K15 ["getFieldRange"]
       49 MOVE                             R5 R1
       50 GETTABLEKS                       R6 R0 K16 ["name"]
       52 CALL                             R4 2 1
       53 JUMPIFEQKNIL                     R4 ; [+9]
       55 GETTABLEKS                       R5 R4 K17 ["min"]
       57 SETTABLEKS                       R5 R3 K18 ["minParts"]
       59 GETTABLEKS                       R5 R4 K19 ["max"]
       61 SETTABLEKS                       R5 R3 K20 ["maxParts"]
       63 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getRowPresentation"]
        3 MOVE                             R4 R1
        4 GETTABLEKS                       R5 R0 K1 ["name"]
        6 CALL                             R3 2 1
        7 GETTABLEKS                       R4 R3 K2 ["renderer"]
        9 JUMPIF                           R4 ; [+8]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R6 R0 K3 ["inputType"]
       13 GETTABLE                         R4 R5 R6
       14 JUMPIF                           R4 ; [+3]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["Warning"]
       18 DUPTABLE                         R5 K14 [{["type"], ["name"], ["label"], ["initialValue"], ["initialVisible"] = , ["initialInteractable"] = , ["initialEnabled"] = , ["initialActive"] = , ["internal"]}]
       19 SETTABLEKS                       R4 R5 K5 ["type"]
       21 GETTABLEKS                       R6 R0 K1 ["name"]
       23 SETTABLEKS                       R6 R5 K1 ["name"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K15 ["resolveText"]
       28 GETTABLEKS                       R7 R3 K6 ["label"]
       30 CALL                             R6 1 1
       31 JUMPIF                           R6 ; [+2]
       32 GETTABLEKS                       R6 R0 K1 ["name"]
       34 SETTABLEKS                       R6 R5 K6 ["label"]
       36 GETTABLEKS                       R6 R0 K7 ["initialValue"]
       38 SETTABLEKS                       R6 R5 K7 ["initialValue"]
       40 GETTABLEKS                       R6 R3 K13 ["internal"]
       42 SETTABLEKS                       R6 R5 K13 ["internal"]
       44 GETUPVAL                         R7 4
       45 GETTABLE                         R6 R7 R4
       46 JUMPIFNOT                        R6 ; [+7]
       47 MOVE                             R7 R6
       48 MOVE                             R8 R0
       49 MOVE                             R9 R2
       50 MOVE                             R10 R3
       51 MOVE                             R11 R5
       52 CALL                             R7 4 1
       53 MOVE                             R5 R7
       54 RETURN                           R5 1

PROTO_8:
        0 GETIMPORT                        R3 K2 [table.create]
        2 LENGTH                           R4 R0
        3 CALL                             R3 1 1
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R10 R8 K3 ["name"]
       10 GETTABLE                         R9 R1 R10
       11 GETUPVAL                         R10 0
       12 MOVE                             R11 R8
       13 MOVE                             R12 R2
       14 CALL                             R10 2 1
       15 SETTABLEKS                       R9 R10 K4 ["initialValue"]
       17 LOADB                            R11 0
       18 SETTABLEKS                       R11 R10 K5 ["initialInteractable"]
       20 LOADB                            R11 0
       21 SETTABLEKS                       R11 R10 K6 ["initialActive"]
       23 JUMPIFEQKNIL                     R9 ; [+4]
       25 LOADB                            R11 1
       26 SETTABLEKS                       R11 R10 K7 ["initialVisible"]
       28 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       30 MOVE                             R12 R3
       31 MOVE                             R13 R10
       32 GETIMPORT                        R11 K9 [table.insert]
       34 CALL                             R11 2 0
       35 FORGLOOP                         R4 2 ; [-28]
       37 RETURN                           R3 1

PROTO_9:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["resolveText"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["heading"]
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 DUPTABLE                         R1 K5 [{"Heading", "Submitted", "Cancelled"}]
       12 SETTABLEKS                       R0 R1 K2 ["Heading"]
       14 GETUPVAL                         R2 2
       15 LOADK                            R4 K6 ["InputRequiredWidget"]
       16 LOADK                            R5 K7 ["ResponseRecorded"]
       17 NAMECALL                         R2 R2 K8 ["getText"]
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R1 K3 ["Submitted"]
       22 GETUPVAL                         R2 2
       23 LOADK                            R4 K6 ["InputRequiredWidget"]
       24 LOADK                            R5 K9 ["CommandCancelled"]
       25 NAMECALL                         R2 R2 K8 ["getText"]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R1 K4 ["Cancelled"]
       30 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 3
        7 CALL                             R0 3 1
        8 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R3 R2 K2 ["fields"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R0 K3 ["toolResult"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R4 K4 ["structuredContent"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R6 R5 K5 ["values"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K6 ["deriveToolStatus"]
       27 MOVE                             R8 R1
       28 MOVE                             R9 R4
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R5 ; [+3]
       31 GETTABLEKS                       R8 R5 K7 ["dismissed"]
       33 JUMPIF                           R8 ; [+13]
       34 LOADB                            R8 1
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K8 ["Rejected"]
       38 JUMPIFEQ                         R7 R9 ; [+8]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K9 ["Failed"]
       43 JUMPIFEQ                         R7 R9 ; [+2]
       45 LOADB                            R8 0 +1
       46 LOADB                            R8 1
       47 JUMPIFNOT                        R2 ; [+3]
       48 GETTABLEKS                       R9 R2 K10 ["formId"]
       50 JUMPIF                           R9 ; [+1]
       51 LOADNIL                          R9
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R10 R10 K11 ["getForm"]
       55 MOVE                             R11 R9
       56 CALL                             R10 1 1
       57 GETUPVAL                         R11 4
       58 GETTABLEKS                       R11 R11 K12 ["useMemo"]
       60 NEWCLOSURE                       R12 P0
       61 CAPTURE                          VAL R10
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U6
       64 NEWTABLE                         R13 0 2
       66 GETUPVAL                         R14 6
       67 GETTABLEKS                       R14 R14 K13 ["locale"]
       69 MOVE                             R15 R10
       70 SETLIST                          R13 R14 2 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 4
       74 GETTABLEKS                       R12 R12 K12 ["useMemo"]
       76 NEWCLOSURE                       R13 P1
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R9
       81 NEWTABLE                         R14 0 3
       83 MOVE                             R15 R3
       84 MOVE                             R16 R6
       85 MOVE                             R17 R9
       86 SETLIST                          R14 R15 3 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R13 8
       90 CALL                             R13 0 1
       91 JUMPIFNOT                        R8 ; [+43]
       92 GETUPVAL                         R14 9
       93 GETUPVAL                         R15 10
       94 DUPTABLE                         R16 K19 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["GroupTransparency"] = 0.5, ["LayoutOrder"]}]
       95 GETTABLEKS                       R17 R0 K18 ["LayoutOrder"]
       97 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
       99 DUPTABLE                         R17 K22 [{"Title", "Description"}]
      100 LOADB                            R18 0
      101 GETTABLEKS                       R19 R11 K23 ["Heading"]
      103 JUMPIFEQKNIL                     R19 ; [+13]
      105 GETUPVAL                         R18 9
      106 GETUPVAL                         R19 11
      107 DUPTABLE                         R20 K26 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      108 GETTABLEKS                       R21 R11 K23 ["Heading"]
      110 SETTABLEKS                       R21 R20 K25 ["Text"]
      112 MOVE                             R21 R13
      113 CALL                             R21 0 1
      114 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      116 CALL                             R18 2 1
      117 SETTABLEKS                       R18 R17 K20 ["Title"]
      119 GETUPVAL                         R18 9
      120 GETUPVAL                         R19 11
      121 DUPTABLE                         R20 K28 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      122 GETTABLEKS                       R21 R11 K29 ["Cancelled"]
      124 SETTABLEKS                       R21 R20 K25 ["Text"]
      126 MOVE                             R21 R13
      127 CALL                             R21 0 1
      128 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K21 ["Description"]
      133 CALL                             R14 3 -1
      134 RETURN                           R14 -1
      135 GETUPVAL                         R14 9
      136 GETUPVAL                         R15 12
      137 GETTABLEKS                       R15 R15 K30 ["Root"]
      139 DUPTABLE                         R16 K34 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      140 GETTABLEKS                       R17 R0 K18 ["LayoutOrder"]
      142 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      144 GETTABLEKS                       R17 R0 K31 ["expanded"]
      146 SETTABLEKS                       R17 R16 K31 ["expanded"]
      148 GETTABLEKS                       R17 R0 K32 ["contentId"]
      150 SETTABLEKS                       R17 R16 K32 ["contentId"]
      152 GETTABLEKS                       R17 R0 K33 ["editThisContent"]
      154 SETTABLEKS                       R17 R16 K33 ["editThisContent"]
      156 DUPTABLE                         R17 K37 [{"Header", "Content"}]
      157 GETUPVAL                         R18 9
      158 GETUPVAL                         R19 12
      159 GETTABLEKS                       R19 R19 K35 ["Header"]
      161 DUPTABLE                         R20 K39 [{"LayoutOrder", "testId"}]
      162 MOVE                             R21 R13
      163 CALL                             R21 0 1
      164 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      166 GETUPVAL                         R21 13
      167 GETTABLEKS                       R21 R21 K40 ["InputRequested"]
      169 GETTABLEKS                       R21 R21 K41 ["Expand"]
      171 SETTABLEKS                       R21 R20 K38 ["testId"]
      173 DUPTABLE                         R21 K42 [{"Text"}]
      174 GETUPVAL                         R22 9
      175 GETUPVAL                         R23 11
      176 DUPTABLE                         R24 K44 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      177 GETTABLEKS                       R25 R11 K45 ["Submitted"]
      179 SETTABLEKS                       R25 R24 K25 ["Text"]
      181 MOVE                             R25 R13
      182 CALL                             R25 0 1
      183 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      185 CALL                             R22 2 1
      186 SETTABLEKS                       R22 R21 K25 ["Text"]
      188 CALL                             R18 3 1
      189 SETTABLEKS                       R18 R17 K35 ["Header"]
      191 GETUPVAL                         R18 9
      192 GETUPVAL                         R19 12
      193 GETTABLEKS                       R19 R19 K36 ["Content"]
      195 DUPTABLE                         R20 K47 [{["tag"] = "col fill size-0-0 auto-y padding-x-medium", ["LayoutOrder"]}]
      196 MOVE                             R21 R13
      197 CALL                             R21 0 1
      198 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      200 DUPTABLE                         R21 K49 [{"PropertyRows"}]
      201 GETUPVAL                         R22 9
      202 GETUPVAL                         R23 14
      203 GETTABLEKS                       R23 R23 K50 ["PropertyRowsRoot"]
      205 DUPTABLE                         R24 K55 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      206 SETTABLEKS                       R12 R24 K51 ["rowDefinitions"]
      208 GETUPVAL                         R25 15
      209 GETTABLEKS                       R25 R25 K56 ["createUnimplemented"]
      211 LOADK                            R26 K52 ["onChange"]
      212 CALL                             R25 1 1
      213 SETTABLEKS                       R25 R24 K52 ["onChange"]
      215 MOVE                             R25 R13
      216 CALL                             R25 0 1
      217 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      219 CALL                             R22 2 1
      220 SETTABLEKS                       R22 R21 K48 ["PropertyRows"]
      222 CALL                             R18 3 1
      223 SETTABLEKS                       R18 R17 K36 ["Content"]
      225 CALL                             R14 3 -1
      226 RETURN                           R14 -1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["name"]
        8 GETTABLEKS                       R7 R5 K1 ["initialValue"]
       10 SETTABLE                         R7 R0 R6
       11 FORGLOOP                         R1 2 ; [-6]
       13 RETURN                           R0 1

PROTO_13:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 LENGTH                           R1 R2
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R8 1
       10 MOVE                             R9 R5
       11 GETUPVAL                         R10 2
       12 GETUPVAL                         R11 3
       13 CALL                             R8 3 1
       14 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       16 MOVE                             R7 R0
       17 GETIMPORT                        R6 K4 [table.insert]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-12]
       22 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 LENGTH                           R1 R2
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K3 ["inputType"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K4 ["Image"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+9]
       16 GETTABLEKS                       R8 R5 K5 ["name"]
       18 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K7 [table.insert]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-16]
       26 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 LOADB                            R0 1
        4 LOADNIL                          R1
        5 RETURN                           R0 2
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["collectFailures"]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 1
       12 LENGTH                           R1 R0
       13 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
       15 LOADB                            R1 1
       16 LOADNIL                          R2
       17 RETURN                           R1 2
       18 NEWTABLE                         R1 0 0
       20 NEWTABLE                         R2 0 0
       22 MOVE                             R3 R0
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K2 ["describeFailure"]
       29 MOVE                             R9 R7
       30 GETUPVAL                         R10 4
       31 CALL                             R8 2 1
       32 JUMPIFEQKNIL                     R8 ; [+12]
       34 GETTABLE                         R9 R2 R8
       35 JUMPIF                           R9 ; [+9]
       36 LOADB                            R9 1
       37 SETTABLE                         R9 R2 R8
       38 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       40 MOVE                             R10 R1
       41 MOVE                             R11 R8
       42 GETIMPORT                        R9 K5 [table.insert]
       44 CALL                             R9 2 0
       45 FORGLOOP                         R3 2 ; [-20]
       47 LOADB                            R3 0
       48 LENGTH                           R5 R1
       49 LOADN                            R6 0
       50 JUMPIFNOTLT                      R6 R5 ; [+7]
       52 GETIMPORT                        R4 K7 [table.concat]
       54 MOVE                             R5 R1
       55 LOADK                            R6 K8 ["\n"]
       56 CALL                             R4 2 1
       57 RETURN                           R3 2
       58 LOADNIL                          R4
       59 RETURN                           R3 2

PROTO_16:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K1 ["resolveAxisEffects"]
       16 MOVE                             R7 R5
       17 GETUPVAL                         R8 3
       18 CALL                             R6 2 1
       19 JUMPIFEQKNIL                     R6 ; [+47]
       21 MOVE                             R7 R6
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 FORGPREP                         R7
       25 GETTABLEKS                       R12 R11 K2 ["visible"]
       27 JUMPIFEQKNIL                     R12 ; [+7]
       29 GETTABLEKS                       R12 R0 K3 ["setRowVisible"]
       31 MOVE                             R13 R10
       32 GETTABLEKS                       R14 R11 K2 ["visible"]
       34 CALL                             R12 2 0
       35 GETTABLEKS                       R12 R11 K4 ["interactable"]
       37 JUMPIFEQKNIL                     R12 ; [+7]
       39 GETTABLEKS                       R12 R0 K5 ["setRowInteractable"]
       41 MOVE                             R13 R10
       42 GETTABLEKS                       R14 R11 K4 ["interactable"]
       44 CALL                             R12 2 0
       45 GETTABLEKS                       R12 R11 K6 ["enabled"]
       47 JUMPIFEQKNIL                     R12 ; [+7]
       49 GETTABLEKS                       R12 R0 K7 ["setRowEnabled"]
       51 MOVE                             R13 R10
       52 GETTABLEKS                       R14 R11 K6 ["enabled"]
       54 CALL                             R12 2 0
       55 GETTABLEKS                       R12 R11 K8 ["active"]
       57 JUMPIFEQKNIL                     R12 ; [+7]
       59 GETTABLEKS                       R12 R0 K9 ["setRowActive"]
       61 MOVE                             R13 R10
       62 GETTABLEKS                       R14 R11 K8 ["active"]
       64 CALL                             R12 2 0
       65 FORGLOOP                         R7 2 ; [-41]
       67 FORGLOOP                         R1 2 ; [-55]
       69 LOADNIL                          R1
       70 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendAsync"]
        3 DUPTABLE                         R1 K5 [{"scope", "channelId", "field", "value"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K6 ["Scope"]
        7 SETTABLEKS                       R2 R1 K1 ["scope"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K2 ["channelId"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K3 ["field"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R2 R1 K4 ["value"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K1 [pcall]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 MOVE                             R4 R2
       16 JUMPIFNOT                        R4 ; [+4]
       17 JUMPIFEQKB                       R3 TRUE ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_22:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETIMPORT                        R3 K3 [table.clone]
        7 GETTABLEKS                       R4 R2 K4 ["getEnabledValues"]
        9 CALL                             R4 0 -1
       10 CALL                             R3 -1 1
       11 MOVE                             R1 R3
       12 JUMP                             ; [+17]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["current"]
       16 JUMPIFNOT                        R3 ; [+8]
       17 GETIMPORT                        R3 K3 [table.clone]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K0 ["current"]
       22 CALL                             R3 1 1
       23 MOVE                             R1 R3
       24 JUMP                             ; [+5]
       25 GETIMPORT                        R3 K3 [table.clone]
       27 GETUPVAL                         R4 2
       28 CALL                             R3 1 1
       29 MOVE                             R1 R3
       30 JUMPIFNOT                        R0 ; [+7]
       31 MOVE                             R3 R0
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 SETTABLE                         R7 R1 R6
       36 FORGLOOP                         R3 2 ; [-2]
       38 GETUPVAL                         R3 3
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 GETTABLE                         R8 R1 R7
       43 FASTCALL1                        TYPEOF R8 ; [+3]
       44 MOVE                             R10 R8
       45 GETIMPORT                        R9 K6 [typeof]
       47 CALL                             R9 1 1
       48 JUMPIFNOTEQKS                    R9 K1 ["table"] ; [+15]
       50 GETTABLEKS                       R9 R8 K7 ["data"]
       52 JUMPIFEQKNIL                     R9 ; [+11]
       54 GETTABLEKS                       R9 R8 K8 ["mimeType"]
       56 JUMPIFEQKNIL                     R9 ; [+7]
       58 GETUPVAL                         R9 4
       59 GETTABLEKS                       R9 R9 K9 ["storeImage"]
       61 MOVE                             R10 R8
       62 CALL                             R9 1 1
       63 SETTABLE                         R9 R1 R7
       64 FORGLOOP                         R3 2 ; [-23]
       66 GETIMPORT                        R3 K11 [pcall]
       68 NEWCLOSURE                       R4 P0
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          REF R1
       71 CALL                             R3 1 2
       72 JUMPIF                           R3 ; [+6]
       73 GETIMPORT                        R5 K13 [warn]
       75 LOADK                            R6 K14 ["Failed to encode values to JSON"]
       76 CALL                             R5 1 0
       77 CLOSEUPVALS                      R1
       78 RETURN                           R0 0
       79 GETUPVAL                         R5 6
       80 LOADB                            R6 1
       81 CALL                             R5 1 0
       82 GETUPVAL                         R5 7
       83 GETUPVAL                         R6 8
       84 GETTABLEKS                       R6 R6 K15 ["Field"]
       86 GETTABLEKS                       R6 R6 K16 ["Values"]
       88 MOVE                             R7 R4
       89 CALL                             R5 2 1
       90 LOADNIL                          R6
       91 JUMPIFNOT                        R5 ; [+9]
       92 GETUPVAL                         R7 7
       93 GETUPVAL                         R8 8
       94 GETTABLEKS                       R8 R8 K15 ["Field"]
       96 GETTABLEKS                       R8 R8 K17 ["Submitted"]
       98 LOADB                            R9 1
       99 CALL                             R7 2 1
      100 MOVE                             R6 R7
      101 JUMPIF                           R6 ; [+3]
      102 GETUPVAL                         R7 6
      103 LOADB                            R8 0
      104 CALL                             R7 1 0
      105 CLOSEUPVALS                      R1
      106 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFEQKNIL                     R0 ; [+49]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["promptKey"]
       12 GETTABLE                         R0 R1 R2
       13 LOADB                            R1 0
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K2 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+7]
       21 LENGTH                           R2 R0
       22 LOADN                            R3 0
       23 JUMPIFLT                         R3 R2 ; [+2]
       25 LOADB                            R1 0 +1
       26 LOADB                            R1 1
       27 LOADB                            R2 0
       28 GETUPVAL                         R3 4
       29 JUMPIFEQKNIL                     R3 ; [+8]
       31 GETUPVAL                         R4 3
       32 GETUPVAL                         R5 4
       33 GETTABLE                         R3 R4 R5
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 JUMPIF                           R2 ; [+17]
       39 JUMPIFNOT                        R1 ; [+16]
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R3 R3 K4 ["current"]
       43 GETUPVAL                         R4 6
       44 JUMPIFNOT                        R3 ; [+4]
       45 GETTABLEKS                       R5 R3 K5 ["getEnabledValues"]
       47 CALL                             R5 0 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 SETTABLEKS                       R5 R4 K4 ["current"]
       52 GETUPVAL                         R4 7
       53 LOADK                            R5 K6 ["Picker"]
       54 CALL                             R4 1 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R0 8
       57 CALL                             R0 0 0
       58 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["Field"]
        7 GETTABLEKS                       R1 R1 K1 ["Submitted"]
        9 LOADB                            R2 0
       10 CALL                             R0 2 1
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+6]
        3 NEWTABLE                         R1 1 0
        5 GETUPVAL                         R2 0
        6 SETTABLE                         R0 R1 R2
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Form"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_29:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+32]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["resolveText"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["heading"]
       12 CALL                             R4 1 1
       13 MOVE                             R0 R4
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K0 ["resolveText"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K2 ["description"]
       20 CALL                             R4 1 1
       21 MOVE                             R1 R4
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K0 ["resolveText"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K3 ["confirmButton"]
       28 CALL                             R4 1 1
       29 MOVE                             R2 R4
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K0 ["resolveText"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K4 ["cancelButton"]
       36 CALL                             R4 1 1
       37 MOVE                             R3 R4
       38 DUPTABLE                         R4 K9 [{"Heading", "Description", "SubmitButton", "CancelButton"}]
       39 SETTABLEKS                       R0 R4 K5 ["Heading"]
       41 SETTABLEKS                       R1 R4 K6 ["Description"]
       43 MOVE                             R5 R2
       44 JUMPIF                           R5 ; [+6]
       45 GETUPVAL                         R5 2
       46 LOADK                            R7 K10 ["AskInput"]
       47 LOADK                            R8 K7 ["SubmitButton"]
       48 NAMECALL                         R5 R5 K11 ["getText"]
       50 CALL                             R5 3 1
       51 SETTABLEKS                       R5 R4 K7 ["SubmitButton"]
       53 MOVE                             R5 R3
       54 JUMPIF                           R5 ; [+6]
       55 GETUPVAL                         R5 2
       56 LOADK                            R7 K10 ["AskInput"]
       57 LOADK                            R8 K8 ["CancelButton"]
       58 NAMECALL                         R5 R5 K11 ["getText"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R4 K8 ["CancelButton"]
       63 RETURN                           R4 1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K2 ["id"]
       10 JUMPIF                           R3 ; [+1]
       11 LOADNIL                          R3
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R4 R2 K3 ["formId"]
       15 JUMPIF                           R4 ; [+1]
       16 LOADNIL                          R4
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R5 R2 K4 ["validation"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R5
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R6 R2 K5 ["fields"]
       25 JUMPIF                           R6 ; [+1]
       26 GETUPVAL                         R6 0
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K6 ["getForm"]
       30 MOVE                             R8 R4
       31 CALL                             R7 1 1
       32 JUMPIFNOT                        R7 ; [+3]
       33 GETTABLEKS                       R8 R7 K7 ["imageSelection"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 JUMPIFNOT                        R7 ; [+3]
       38 GETTABLEKS                       R9 R7 K8 ["axisRules"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R9
       42 GETTABLEKS                       R10 R0 K9 ["hasSubmitted"]
       44 GETTABLEKS                       R11 R0 K10 ["setHasSubmitted"]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K11 ["useMarkUserInputRequired"]
       49 NOT                              R13 R10
       50 CALL                             R12 1 0
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R12 R12 K12 ["useContext"]
       54 GETUPVAL                         R13 4
       55 GETTABLEKS                       R13 R13 K13 ["Context"]
       57 CALL                             R12 1 1
       58 GETUPVAL                         R13 3
       59 GETTABLEKS                       R13 R13 K14 ["useState"]
       61 NEWCLOSURE                       R14 P0
       62 CAPTURE                          VAL R6
       63 CALL                             R13 1 2
       64 GETUPVAL                         R15 3
       65 GETTABLEKS                       R15 R15 K14 ["useState"]
       67 LOADB                            R16 0
       68 CALL                             R15 1 2
       69 GETUPVAL                         R17 3
       70 GETTABLEKS                       R17 R17 K15 ["useRef"]
       72 LOADNIL                          R18
       73 CALL                             R17 1 1
       74 GETUPVAL                         R18 3
       75 GETTABLEKS                       R18 R18 K15 ["useRef"]
       77 LOADNIL                          R19
       78 CALL                             R18 1 1
       79 GETUPVAL                         R19 3
       80 GETTABLEKS                       R19 R19 K16 ["useMemo"]
       82 NEWCLOSURE                       R20 P1
       83 CAPTURE                          VAL R6
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 NEWTABLE                         R21 0 3
       89 MOVE                             R22 R6
       90 MOVE                             R23 R4
       91 MOVE                             R24 R5
       92 SETLIST                          R21 R22 3 [1]
       94 CALL                             R19 2 1
       95 GETUPVAL                         R20 3
       96 GETTABLEKS                       R20 R20 K16 ["useMemo"]
       98 NEWCLOSURE                       R21 P2
       99 CAPTURE                          VAL R6
      100 CAPTURE                          UPVAL U6
      101 NEWTABLE                         R22 0 1
      103 MOVE                             R23 R6
      104 SETLIST                          R22 R23 1 [1]
      106 CALL                             R20 2 1
      107 GETUPVAL                         R21 3
      108 GETTABLEKS                       R21 R21 K14 ["useState"]
      110 LOADK                            R22 K17 ["Form"]
      111 CALL                             R21 1 2
      112 GETUPVAL                         R23 3
      113 GETTABLEKS                       R23 R23 K16 ["useMemo"]
      115 NEWCLOSURE                       R24 P3
      116 CAPTURE                          VAL R5
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R13
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          VAL R4
      121 NEWTABLE                         R25 0 3
      123 MOVE                             R26 R5
      124 MOVE                             R27 R13
      125 MOVE                             R28 R4
      126 SETLIST                          R25 R26 3 [1]
      128 CALL                             R23 2 2
      129 MOVE                             R25 R23
      130 JUMPIFNOT                        R25 ; [+1]
      131 NOT                              R25 R15
      132 GETUPVAL                         R26 3
      133 GETTABLEKS                       R26 R26 K18 ["useCallback"]
      135 NEWCLOSURE                       R27 P4
      136 CAPTURE                          VAL R14
      137 NEWTABLE                         R28 0 0
      139 CALL                             R26 2 1
      140 GETUPVAL                         R27 3
      141 GETTABLEKS                       R27 R27 K19 ["useEffect"]
      143 NEWCLOSURE                       R28 P5
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R9
      146 CAPTURE                          UPVAL U9
      147 CAPTURE                          VAL R13
      148 NEWTABLE                         R29 0 2
      150 MOVE                             R30 R9
      151 MOVE                             R31 R13
      152 SETLIST                          R29 R30 2 [1]
      154 CALL                             R27 2 0
      155 GETUPVAL                         R27 3
      156 GETTABLEKS                       R27 R27 K18 ["useCallback"]
      158 NEWCLOSURE                       R28 P6
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R3
      161 CAPTURE                          UPVAL U10
      162 NEWTABLE                         R29 0 2
      164 MOVE                             R30 R12
      165 MOVE                             R31 R3
      166 SETLIST                          R29 R30 2 [1]
      168 CALL                             R27 2 1
      169 GETUPVAL                         R28 3
      170 GETTABLEKS                       R28 R28 K18 ["useCallback"]
      172 NEWCLOSURE                       R29 P7
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R20
      177 CAPTURE                          UPVAL U11
      178 CAPTURE                          UPVAL U12
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R27
      181 CAPTURE                          UPVAL U10
      182 NEWTABLE                         R30 0 3
      184 MOVE                             R31 R27
      185 MOVE                             R32 R20
      186 MOVE                             R33 R13
      187 SETLIST                          R30 R31 3 [1]
      189 CALL                             R28 2 1
      190 GETTABLEN                        R29 R20 1
      191 GETUPVAL                         R30 3
      192 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      194 NEWCLOSURE                       R31 P8
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R25
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R29
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R28
      204 NEWTABLE                         R32 0 6
      206 MOVE                             R33 R10
      207 MOVE                             R34 R25
      208 MOVE                             R35 R8
      209 MOVE                             R36 R29
      210 MOVE                             R37 R13
      211 MOVE                             R38 R28
      212 SETLIST                          R32 R33 6 [1]
      214 CALL                             R30 2 1
      215 GETUPVAL                         R31 3
      216 GETTABLEKS                       R31 R31 K18 ["useCallback"]
      218 NEWCLOSURE                       R32 P9
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R27
      221 CAPTURE                          UPVAL U10
      222 NEWTABLE                         R33 0 1
      224 MOVE                             R34 R27
      225 SETLIST                          R33 R34 1 [1]
      227 CALL                             R31 2 1
      228 GETUPVAL                         R32 3
      229 GETTABLEKS                       R32 R32 K18 ["useCallback"]
      231 NEWCLOSURE                       R33 P10
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R28
      234 NEWTABLE                         R34 0 2
      236 MOVE                             R35 R29
      237 MOVE                             R36 R28
      238 SETLIST                          R34 R35 2 [1]
      240 CALL                             R32 2 1
      241 GETUPVAL                         R33 3
      242 GETTABLEKS                       R33 R33 K18 ["useCallback"]
      244 NEWCLOSURE                       R34 P11
      245 CAPTURE                          VAL R22
      246 NEWTABLE                         R35 0 0
      248 CALL                             R33 2 1
      249 GETUPVAL                         R34 3
      250 GETTABLEKS                       R34 R34 K18 ["useCallback"]
      252 NEWCLOSURE                       R35 P12
      253 CAPTURE                          VAL R31
      254 NEWTABLE                         R36 0 1
      256 MOVE                             R37 R31
      257 SETLIST                          R36 R37 1 [1]
      259 CALL                             R34 2 1
      260 GETUPVAL                         R35 3
      261 GETTABLEKS                       R35 R35 K18 ["useCallback"]
      263 NEWCLOSURE                       R36 P13
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R31
      266 NEWTABLE                         R37 0 2
      268 MOVE                             R38 R10
      269 MOVE                             R39 R31
      270 SETLIST                          R37 R38 2 [1]
      272 CALL                             R35 2 1
      273 GETUPVAL                         R36 3
      274 GETTABLEKS                       R36 R36 K16 ["useMemo"]
      276 NEWCLOSURE                       R37 P14
      277 CAPTURE                          VAL R7
      278 CAPTURE                          UPVAL U8
      279 CAPTURE                          UPVAL U13
      280 NEWTABLE                         R38 0 2
      282 GETUPVAL                         R39 13
      283 GETTABLEKS                       R39 R39 K20 ["locale"]
      285 MOVE                             R40 R7
      286 SETLIST                          R38 R39 2 [1]
      288 CALL                             R36 2 1
      289 GETUPVAL                         R37 14
      290 GETTABLEKS                       R37 R37 K21 ["Hooks"]
      292 GETTABLEKS                       R37 R37 K22 ["useTokens"]
      294 CALL                             R37 0 1
      295 JUMPIFNOTEQKS                    R21 K23 ["Picker"] ; [+33]
      297 JUMPIFEQKNIL                     R8 ; [+31]
      299 GETUPVAL                         R38 15
      300 GETUPVAL                         R39 16
      301 DUPTABLE                         R40 K32 [{"config", "values", "rows", "title", "onComplete", "onBack", "onError", "LayoutOrder"}]
      302 SETTABLEKS                       R8 R40 K24 ["config"]
      304 SETTABLEKS                       R13 R40 K25 ["values"]
      306 GETUPVAL                         R41 17
      307 MOVE                             R42 R6
      308 MOVE                             R43 R13
      309 MOVE                             R44 R4
      310 CALL                             R41 3 1
      311 SETTABLEKS                       R41 R40 K26 ["rows"]
      313 GETTABLEKS                       R41 R36 K33 ["Heading"]
      315 SETTABLEKS                       R41 R40 K27 ["title"]
      317 SETTABLEKS                       R32 R40 K28 ["onComplete"]
      319 SETTABLEKS                       R33 R40 K29 ["onBack"]
      321 SETTABLEKS                       R34 R40 K30 ["onError"]
      323 GETTABLEKS                       R41 R0 K31 ["LayoutOrder"]
      325 SETTABLEKS                       R41 R40 K31 ["LayoutOrder"]
      327 CALL                             R38 2 -1
      328 RETURN                           R38 -1
      329 GETUPVAL                         R38 18
      330 CALL                             R38 0 1
      331 GETUPVAL                         R39 15
      332 GETUPVAL                         R40 19
      333 DUPTABLE                         R41 K36 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      334 GETTABLEKS                       R42 R0 K31 ["LayoutOrder"]
      336 SETTABLEKS                       R42 R41 K31 ["LayoutOrder"]
      338 DUPTABLE                         R42 K42 [{"Title", "Description", "PropertyRows", "DisabledReason", "ButtonGroup"}]
      339 LOADB                            R43 0
      340 GETTABLEKS                       R44 R36 K33 ["Heading"]
      342 JUMPIFEQKNIL                     R44 ; [+13]
      344 GETUPVAL                         R43 15
      345 GETUPVAL                         R44 20
      346 DUPTABLE                         R45 K45 [{["tag"] = "size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"]}]
      347 GETTABLEKS                       R46 R36 K33 ["Heading"]
      349 SETTABLEKS                       R46 R45 K44 ["Text"]
      351 MOVE                             R46 R38
      352 CALL                             R46 0 1
      353 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      355 CALL                             R43 2 1
      356 SETTABLEKS                       R43 R42 K37 ["Title"]
      358 LOADB                            R43 0
      359 GETTABLEKS                       R44 R36 K38 ["Description"]
      361 JUMPIFEQKNIL                     R44 ; [+13]
      363 GETUPVAL                         R43 15
      364 GETUPVAL                         R44 20
      365 DUPTABLE                         R45 K47 [{["tag"] = "size-full-0 auto-xy text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      366 GETTABLEKS                       R46 R36 K38 ["Description"]
      368 SETTABLEKS                       R46 R45 K44 ["Text"]
      370 MOVE                             R46 R38
      371 CALL                             R46 0 1
      372 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      374 CALL                             R43 2 1
      375 SETTABLEKS                       R43 R42 K38 ["Description"]
      377 GETUPVAL                         R43 15
      378 GETUPVAL                         R44 21
      379 GETTABLEKS                       R44 R44 K48 ["PropertyRowsRoot"]
      381 DUPTABLE                         R45 K55 [{"rowDefinitions", "onChange", "isDisabled", "initialValues", "controlsRef", "onBusyChanged", "LayoutOrder"}]
      382 SETTABLEKS                       R19 R45 K49 ["rowDefinitions"]
      384 SETTABLEKS                       R26 R45 K50 ["onChange"]
      386 SETTABLEKS                       R10 R45 K51 ["isDisabled"]
      388 SETTABLEKS                       R13 R45 K52 ["initialValues"]
      390 SETTABLEKS                       R17 R45 K53 ["controlsRef"]
      392 SETTABLEKS                       R16 R45 K54 ["onBusyChanged"]
      394 MOVE                             R46 R38
      395 CALL                             R46 0 1
      396 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      398 CALL                             R43 2 1
      399 SETTABLEKS                       R43 R42 K39 ["PropertyRows"]
      401 GETUPVAL                         R43 22
      402 GETTABLEKS                       R43 R43 K56 ["FFlagAssistantDisabledReason"]
      404 JUMPIFNOT                        R43 ; [+60]
      405 LOADB                            R43 0
      406 JUMPIFEQKNIL                     R24 ; [+58]
      408 GETUPVAL                         R43 15
      409 GETUPVAL                         R44 19
      410 DUPTABLE                         R45 K58 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
      411 MOVE                             R46 R38
      412 CALL                             R46 0 1
      413 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      415 DUPTABLE                         R46 K61 [{"ErrorIcon", "ErrorText"}]
      416 GETUPVAL                         R47 15
      417 GETUPVAL                         R48 23
      418 DUPTABLE                         R49 K65 [{"name", "style", "size", "LayoutOrder"}]
      419 GETUPVAL                         R50 14
      420 GETTABLEKS                       R50 R50 K66 ["Enums"]
      422 GETTABLEKS                       R50 R50 K67 ["IconName"]
      424 GETTABLEKS                       R50 R50 K68 ["TriangleExclamation"]
      426 SETTABLEKS                       R50 R49 K62 ["name"]
      428 GETTABLEKS                       R50 R37 K69 ["Color"]
      430 GETTABLEKS                       R50 R50 K70 ["System"]
      432 GETTABLEKS                       R50 R50 K71 ["Warning"]
      434 SETTABLEKS                       R50 R49 K63 ["style"]
      436 GETUPVAL                         R50 14
      437 GETTABLEKS                       R50 R50 K66 ["Enums"]
      439 GETTABLEKS                       R50 R50 K72 ["IconSize"]
      441 GETTABLEKS                       R50 R50 K73 ["XSmall"]
      443 SETTABLEKS                       R50 R49 K64 ["size"]
      445 MOVE                             R50 R38
      446 CALL                             R50 0 1
      447 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      449 CALL                             R47 2 1
      450 SETTABLEKS                       R47 R46 K59 ["ErrorIcon"]
      452 GETUPVAL                         R47 15
      453 GETUPVAL                         R48 20
      454 DUPTABLE                         R49 K75 [{["tag"] = "auto-xy text-body-small text-align-x-left content-system-warning", ["Text"], ["LayoutOrder"]}]
      455 SETTABLEKS                       R24 R49 K44 ["Text"]
      457 MOVE                             R50 R38
      458 CALL                             R50 0 1
      459 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      461 CALL                             R47 2 1
      462 SETTABLEKS                       R47 R46 K60 ["ErrorText"]
      464 CALL                             R43 3 1
      465 SETTABLEKS                       R43 R42 K40 ["DisabledReason"]
      467 GETUPVAL                         R43 15
      468 GETUPVAL                         R44 19
      469 DUPTABLE                         R45 K77 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      470 MOVE                             R46 R38
      471 CALL                             R46 0 1
      472 SETTABLEKS                       R46 R45 K31 ["LayoutOrder"]
      474 DUPTABLE                         R46 K80 [{"SubmitButton", "CancelButton"}]
      475 GETUPVAL                         R47 15
      476 GETUPVAL                         R48 24
      477 DUPTABLE                         R49 K85 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      478 GETTABLEKS                       R50 R36 K78 ["SubmitButton"]
      480 SETTABLEKS                       R50 R49 K81 ["text"]
      482 GETUPVAL                         R50 14
      483 GETTABLEKS                       R50 R50 K66 ["Enums"]
      485 GETTABLEKS                       R50 R50 K86 ["InputSize"]
      487 GETTABLEKS                       R50 R50 K73 ["XSmall"]
      489 SETTABLEKS                       R50 R49 K64 ["size"]
      491 GETUPVAL                         R50 14
      492 GETTABLEKS                       R50 R50 K66 ["Enums"]
      494 GETTABLEKS                       R50 R50 K87 ["ButtonVariant"]
      496 GETTABLEKS                       R50 R50 K88 ["Emphasis"]
      498 SETTABLEKS                       R50 R49 K82 ["variant"]
      500 MOVE                             R50 R10
      501 JUMPIF                           R50 ; [+1]
      502 NOT                              R50 R25
      503 SETTABLEKS                       R50 R49 K51 ["isDisabled"]
      505 SETTABLEKS                       R30 R49 K83 ["onActivated"]
      507 MOVE                             R50 R38
      508 CALL                             R50 0 1
      509 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      511 GETUPVAL                         R50 25
      512 GETTABLEKS                       R50 R50 K89 ["AskInput"]
      514 GETTABLEKS                       R50 R50 K78 ["SubmitButton"]
      516 SETTABLEKS                       R50 R49 K84 ["testId"]
      518 CALL                             R47 2 1
      519 SETTABLEKS                       R47 R46 K78 ["SubmitButton"]
      521 GETUPVAL                         R47 15
      522 GETUPVAL                         R48 24
      523 DUPTABLE                         R49 K85 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      524 GETTABLEKS                       R50 R36 K79 ["CancelButton"]
      526 SETTABLEKS                       R50 R49 K81 ["text"]
      528 GETUPVAL                         R50 14
      529 GETTABLEKS                       R50 R50 K66 ["Enums"]
      531 GETTABLEKS                       R50 R50 K86 ["InputSize"]
      533 GETTABLEKS                       R50 R50 K73 ["XSmall"]
      535 SETTABLEKS                       R50 R49 K64 ["size"]
      537 GETUPVAL                         R50 14
      538 GETTABLEKS                       R50 R50 K66 ["Enums"]
      540 GETTABLEKS                       R50 R50 K87 ["ButtonVariant"]
      542 GETTABLEKS                       R50 R50 K90 ["Standard"]
      544 SETTABLEKS                       R50 R49 K82 ["variant"]
      546 SETTABLEKS                       R10 R49 K51 ["isDisabled"]
      548 SETTABLEKS                       R35 R49 K83 ["onActivated"]
      550 MOVE                             R50 R38
      551 CALL                             R50 0 1
      552 SETTABLEKS                       R50 R49 K31 ["LayoutOrder"]
      554 GETUPVAL                         R50 25
      555 GETTABLEKS                       R50 R50 K89 ["AskInput"]
      557 GETTABLEKS                       R50 R50 K79 ["CancelButton"]
      559 SETTABLEKS                       R50 R49 K84 ["testId"]
      561 CALL                             R47 2 1
      562 SETTABLEKS                       R47 R46 K79 ["CancelButton"]
      564 CALL                             R43 3 1
      565 SETTABLEKS                       R43 R42 K41 ["ButtonGroup"]
      567 CALL                             R39 3 -1
      568 RETURN                           R39 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K1 ["join"]
        8 MOVE                             R4 R0
        9 DUPTABLE                         R5 K6 [{["hasSubmitted"] = False, ["setHasSubmitted"], ["LayoutOrder"]}]
       10 GETUPVAL                         R6 4
       11 SETTABLEKS                       R6 R5 K4 ["setHasSubmitted"]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K7 ["None"]
       16 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       18 CALL                             R3 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["OverridePriorities"]
        8 GETTABLEKS                       R1 R1 K1 ["AskInput"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["registerOverride"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["useState"]
       12 LOADB                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 NOT                              R6 R3
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R9 0 2
       32 MOVE                             R10 R6
       33 MOVE                             R11 R2
       34 SETLIST                          R9 R10 2 [1]
       36 CALL                             R7 2 0
       37 LOADNIL                          R7
       38 RETURN                           R7 1

PROTO_34:
        0 DUPTABLE                         R0 K1 [{"Preparing"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["AskInput"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_34]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 DUPTABLE                         R5 K6 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       18 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       22 DUPTABLE                         R6 K8 [{"Loading"}]
       23 GETUPVAL                         R7 3
       24 GETUPVAL                         R8 5
       25 DUPTABLE                         R9 K11 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
       26 GETTABLEKS                       R10 R1 K12 ["Preparing"]
       28 SETTABLEKS                       R10 R9 K10 ["Text"]
       30 MOVE                             R10 R2
       31 CALL                             R10 0 1
       32 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       34 DUPTABLE                         R10 K14 [{"Shimmer"}]
       35 GETUPVAL                         R11 3
       36 GETUPVAL                         R12 6
       37 CALL                             R11 1 1
       38 SETTABLEKS                       R11 R10 K13 ["Shimmer"]
       40 CALL                             R7 3 1
       41 SETTABLEKS                       R7 R6 K7 ["Loading"]
       43 CALL                             R3 3 -1
       44 RETURN                           R3 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deriveToolStatus"]
        3 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        5 GETTABLEKS                       R3 R0 K2 ["toolResult"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Running"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+6]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K4 ["Preparing"]
       21 JUMPIFEQ                         R1 R2 ; [+6]
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R3 4
       25 MOVE                             R4 R0
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 5
       30 MOVE                             R4 R0
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Foundation"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["ReactUtils"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R0 K15 ["Components"]
       39 GETTABLEKS                       R8 R8 K16 ["Accordion"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K10 [require]
       44 GETTABLEKS                       R9 R0 K17 ["Util"]
       46 GETTABLEKS                       R9 R9 K18 ["AskInput"]
       48 GETTABLEKS                       R9 R9 K19 ["AskInputChannel"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R10 R0 K15 ["Components"]
       55 GETTABLEKS                       R10 R10 K18 ["AskInput"]
       57 GETTABLEKS                       R10 R10 K20 ["AskInputImageWizard"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R0 K17 ["Util"]
       64 GETTABLEKS                       R11 R11 K18 ["AskInput"]
       66 GETTABLEKS                       R11 R11 K21 ["AskInputTypes"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R0 K15 ["Components"]
       73 GETTABLEKS                       R12 R12 K22 ["Contexts"]
       75 GETTABLEKS                       R12 R12 K23 ["Actions"]
       77 GETTABLEKS                       R12 R12 K24 ["ChannelActionsContext"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K10 [require]
       82 GETTABLEKS                       R13 R0 K25 ["Flags"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K10 [require]
       87 GETTABLEKS                       R14 R0 K17 ["Util"]
       89 GETTABLEKS                       R14 R14 K26 ["ImageContentStore"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K10 [require]
       94 GETTABLEKS                       R15 R0 K15 ["Components"]
       96 GETTABLEKS                       R15 R15 K22 ["Contexts"]
       98 GETTABLEKS                       R15 R15 K27 ["InputAreaOverrideContext"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K10 [require]
      103 GETTABLEKS                       R16 R0 K15 ["Components"]
      105 GETTABLEKS                       R16 R16 K22 ["Contexts"]
      107 GETTABLEKS                       R16 R16 K28 ["PacketReceivedContext"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K10 [require]
      112 GETTABLEKS                       R17 R0 K15 ["Components"]
      114 GETTABLEKS                       R17 R17 K29 ["PropertyRows"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K10 [require]
      119 GETTABLEKS                       R18 R0 K15 ["Components"]
      121 GETTABLEKS                       R18 R18 K30 ["ShimmerGradient"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K10 [require]
      126 GETTABLEKS                       R19 R0 K17 ["Util"]
      128 GETTABLEKS                       R19 R19 K31 ["SlashCommandConfiguration"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K10 [require]
      133 GETTABLEKS                       R20 R0 K17 ["Util"]
      135 GETTABLEKS                       R20 R20 K32 ["TestIds"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K10 [require]
      140 GETTABLEKS                       R21 R0 K33 ["Resources"]
      142 GETTABLEKS                       R21 R21 K34 ["Localization"]
      144 GETTABLEKS                       R21 R21 K35 ["Translator"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K10 [require]
      149 GETTABLEKS                       R22 R0 K36 ["Types"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K10 [require]
      154 GETTABLEKS                       R23 R0 K17 ["Util"]
      156 GETTABLEKS                       R23 R23 K18 ["AskInput"]
      158 GETTABLEKS                       R23 R23 K37 ["Validation"]
      160 CALL                             R22 1 1
      161 GETIMPORT                        R23 K10 [require]
      163 GETTABLEKS                       R24 R0 K17 ["Util"]
      165 GETTABLEKS                       R24 R24 K18 ["AskInput"]
      167 GETTABLEKS                       R24 R24 K38 ["ValidationReason"]
      169 CALL                             R23 1 1
      170 GETIMPORT                        R24 K10 [require]
      172 GETTABLEKS                       R25 R0 K17 ["Util"]
      174 GETTABLEKS                       R25 R25 K39 ["WidgetUtils"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K10 [require]
      179 GETTABLEKS                       R26 R0 K40 ["Hooks"]
      181 GETTABLEKS                       R26 R26 K41 ["useLatest"]
      183 CALL                             R25 1 1
      184 GETTABLEKS                       R26 R24 K42 ["ToolStatus"]
      186 GETTABLEKS                       R27 R4 K43 ["Button"]
      188 GETTABLEKS                       R28 R4 K44 ["Icon"]
      190 GETTABLEKS                       R29 R4 K45 ["Text"]
      192 GETTABLEKS                       R30 R4 K46 ["View"]
      194 GETTABLEKS                       R31 R5 K47 ["createElement"]
      196 GETTABLEKS                       R32 R6 K48 ["createNextOrder"]
      198 GETTABLEKS                       R33 R10 K49 ["INPUT_TYPE"]
      200 GETTABLEKS                       R34 R16 K50 ["ROW_TYPES"]
      202 DUPTABLE                         R35 K53 [{["Form"] = "Form", ["Picker"] = "Picker"}]
      203 NEWTABLE                         R36 0 0
      205 DUPCLOSURE                       R37 K54 [PROTO_0]
      206 CAPTURE                          VAL R23
      207 DUPCLOSURE                       R38 K55 [PROTO_1]
      208 CAPTURE                          VAL R20
      209 NEWTABLE                         R39 8 0
      211 GETTABLEKS                       R40 R33 K56 ["Array"]
      213 GETTABLEKS                       R41 R34 K57 ["PartNames"]
      215 SETTABLE                         R41 R39 R40
      216 GETTABLEKS                       R40 R33 K58 ["Boolean"]
      218 GETTABLEKS                       R41 R34 K58 ["Boolean"]
      220 SETTABLE                         R41 R39 R40
      221 GETTABLEKS                       R40 R33 K59 ["Image"]
      223 GETTABLEKS                       R41 R34 K60 ["HintImage"]
      225 SETTABLE                         R41 R39 R40
      226 GETTABLEKS                       R40 R33 K61 ["Instance"]
      228 GETTABLEKS                       R41 R34 K61 ["Instance"]
      230 SETTABLE                         R41 R39 R40
      231 GETTABLEKS                       R40 R33 K62 ["Number"]
      233 GETTABLEKS                       R41 R34 K62 ["Number"]
      235 SETTABLE                         R41 R39 R40
      236 GETTABLEKS                       R40 R33 K63 ["Option"]
      238 GETTABLEKS                       R41 R34 K64 ["Select"]
      240 SETTABLE                         R41 R39 R40
      241 GETTABLEKS                       R40 R33 K65 ["String"]
      243 GETTABLEKS                       R41 R34 K65 ["String"]
      245 SETTABLE                         R41 R39 R40
      246 NEWTABLE                         R40 8 0
      248 GETTABLEKS                       R41 R34 K65 ["String"]
      250 DUPCLOSURE                       R42 K66 [PROTO_2]
      251 CAPTURE                          VAL R34
      252 SETTABLE                         R42 R40 R41
      253 GETTABLEKS                       R41 R34 K62 ["Number"]
      255 DUPCLOSURE                       R42 K67 [PROTO_3]
      256 CAPTURE                          VAL R34
      257 CAPTURE                          VAL R22
      258 SETTABLE                         R42 R40 R41
      259 GETTABLEKS                       R41 R34 K64 ["Select"]
      261 DUPCLOSURE                       R42 K68 [PROTO_4]
      262 CAPTURE                          VAL R33
      263 CAPTURE                          VAL R34
      264 CAPTURE                          VAL R37
      265 SETTABLE                         R42 R40 R41
      266 GETTABLEKS                       R41 R34 K61 ["Instance"]
      268 DUPCLOSURE                       R42 K69 [PROTO_5]
      269 CAPTURE                          VAL R34
      270 SETTABLE                         R42 R40 R41
      271 GETTABLEKS                       R41 R34 K57 ["PartNames"]
      273 DUPCLOSURE                       R42 K70 [PROTO_6]
      274 CAPTURE                          VAL R34
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R22
      277 SETTABLE                         R42 R40 R41
      278 DUPCLOSURE                       R41 K71 [PROTO_7]
      279 CAPTURE                          VAL R18
      280 CAPTURE                          VAL R39
      281 CAPTURE                          VAL R34
      282 CAPTURE                          VAL R23
      283 CAPTURE                          VAL R40
      284 DUPCLOSURE                       R42 K72 [PROTO_8]
      285 CAPTURE                          VAL R41
      286 DUPCLOSURE                       R43 K73 [PROTO_11]
      287 CAPTURE                          VAL R36
      288 CAPTURE                          VAL R24
      289 CAPTURE                          VAL R26
      290 CAPTURE                          VAL R18
      291 CAPTURE                          VAL R5
      292 CAPTURE                          VAL R23
      293 CAPTURE                          VAL R20
      294 CAPTURE                          VAL R42
      295 CAPTURE                          VAL R32
      296 CAPTURE                          VAL R31
      297 CAPTURE                          VAL R30
      298 CAPTURE                          VAL R29
      299 CAPTURE                          VAL R7
      300 CAPTURE                          VAL R19
      301 CAPTURE                          VAL R16
      302 CAPTURE                          VAL R6
      303 DUPCLOSURE                       R44 K74 [PROTO_30]
      304 CAPTURE                          VAL R36
      305 CAPTURE                          VAL R18
      306 CAPTURE                          VAL R15
      307 CAPTURE                          VAL R5
      308 CAPTURE                          VAL R11
      309 CAPTURE                          VAL R41
      310 CAPTURE                          VAL R33
      311 CAPTURE                          VAL R22
      312 CAPTURE                          VAL R23
      313 CAPTURE                          VAL R10
      314 CAPTURE                          VAL R8
      315 CAPTURE                          VAL R13
      316 CAPTURE                          VAL R1
      317 CAPTURE                          VAL R20
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R31
      320 CAPTURE                          VAL R9
      321 CAPTURE                          VAL R42
      322 CAPTURE                          VAL R32
      323 CAPTURE                          VAL R30
      324 CAPTURE                          VAL R29
      325 CAPTURE                          VAL R16
      326 CAPTURE                          VAL R12
      327 CAPTURE                          VAL R28
      328 CAPTURE                          VAL R27
      329 CAPTURE                          VAL R19
      330 DUPCLOSURE                       R45 K75 [PROTO_33]
      331 CAPTURE                          VAL R5
      332 CAPTURE                          VAL R14
      333 CAPTURE                          VAL R25
      334 CAPTURE                          VAL R31
      335 CAPTURE                          VAL R44
      336 CAPTURE                          VAL R3
      337 DUPCLOSURE                       R46 K76 [PROTO_35]
      338 CAPTURE                          VAL R5
      339 CAPTURE                          VAL R20
      340 CAPTURE                          VAL R32
      341 CAPTURE                          VAL R31
      342 CAPTURE                          VAL R30
      343 CAPTURE                          VAL R29
      344 CAPTURE                          VAL R17
      345 DUPCLOSURE                       R47 K77 [PROTO_36]
      346 CAPTURE                          VAL R24
      347 CAPTURE                          VAL R26
      348 CAPTURE                          VAL R31
      349 CAPTURE                          VAL R45
      350 CAPTURE                          VAL R43
      351 CAPTURE                          VAL R46
      352 DUPTABLE                         R48 K83 [{["Type"] = "AskInput", ["ContentWidget"], ["Serialization"] = , ["toRowDefinition"]}]
      353 GETTABLEKS                       R49 R5 K84 ["memo"]
      355 MOVE                             R50 R47
      356 CALL                             R49 1 1
      357 SETTABLEKS                       R49 R48 K79 ["ContentWidget"]
      359 SETTABLEKS                       R41 R48 K82 ["toRowDefinition"]
      361 RETURN                           R48 1
