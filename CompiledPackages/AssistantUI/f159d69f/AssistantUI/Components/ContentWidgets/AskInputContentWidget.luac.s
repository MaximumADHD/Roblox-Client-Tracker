PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R0 K0 ["headingResolver"]
        6 JUMPIFNOT                        R3 ; [+9]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["resolveText"]
       10 GETTABLEKS                       R3 R0 K0 ["headingResolver"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 MOVE                             R3 R2
       18 JUMPIF                           R3 ; [+6]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K1 ["resolveText"]
       22 GETTABLEKS                       R4 R0 K2 ["heading"]
       24 CALL                             R3 1 1
       25 RETURN                           R3 1

PROTO_1:
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

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 DUPTABLE                         R1 K2 [{"body", "learnMore"}]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R4 R0 K0 ["body"]
        8 GETTABLEKS                       R4 R4 K3 ["namespace"]
       10 GETTABLEKS                       R5 R0 K0 ["body"]
       12 GETTABLEKS                       R5 R5 K4 ["key"]
       14 NAMECALL                         R2 R2 K5 ["getText"]
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K0 ["body"]
       19 GETTABLEKS                       R3 R0 K1 ["learnMore"]
       21 JUMPIFNOT                        R3 ; [+13]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R4 R0 K1 ["learnMore"]
       25 GETTABLEKS                       R4 R4 K3 ["namespace"]
       27 GETTABLEKS                       R5 R0 K1 ["learnMore"]
       29 GETTABLEKS                       R5 R5 K4 ["key"]
       31 NAMECALL                         R2 R2 K5 ["getText"]
       33 CALL                             R2 3 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K1 ["learnMore"]
       38 RETURN                           R1 1

PROTO_3:
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
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["FFlagAssistantAddPlaceholderProp"]
       22 JUMPIFNOT                        R4 ; [+8]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["resolveText"]
       26 GETTABLEKS                       R5 R2 K8 ["placeholder"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K8 ["placeholder"]
       31 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R6 R0 K0 ["inputType"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["Number"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected Number input type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R6 R3 K5 ["type"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K1 ["Number"]
       20 JUMPIFEQ                         R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       26 LOADK                            R6 K6 ["Expected Number row type"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETTABLEKS                       R4 R0 K7 ["min"]
       32 GETTABLEKS                       R5 R0 K8 ["max"]
       34 JUMPIFNOTEQKNIL                  R4 ; [+3]
       36 JUMPIFEQKNIL                     R5 ; [+6]
       38 SETTABLEKS                       R4 R3 K7 ["min"]
       40 SETTABLEKS                       R5 R3 K8 ["max"]
       42 RETURN                           R3 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K9 ["getFieldRange"]
       46 MOVE                             R7 R1
       47 GETTABLEKS                       R8 R0 K10 ["name"]
       49 CALL                             R6 2 1
       50 JUMPIFEQKNIL                     R6 ; [+9]
       52 GETTABLEKS                       R7 R6 K7 ["min"]
       54 SETTABLEKS                       R7 R3 K7 ["min"]
       56 GETTABLEKS                       R7 R6 K8 ["max"]
       58 SETTABLEKS                       R7 R3 K8 ["max"]
       60 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R6 R3 K0 ["type"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["ClipPreview"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected ClipPreview row type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R2 K5 ["clipRowName"]
       17 SETTABLEKS                       R4 R3 K5 ["clipRowName"]
       19 GETTABLEKS                       R4 R2 K6 ["rigRowName"]
       21 SETTABLEKS                       R4 R3 K6 ["rigRowName"]
       23 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R6 R3 K0 ["type"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["EditScrubbar"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected EditScrubbar row type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R2 K5 ["durationRowName"]
       17 SETTABLEKS                       R4 R3 K5 ["durationRowName"]
       19 RETURN                           R3 1

PROTO_7:
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
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R5 R2 K10 ["infoPopover"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K10 ["infoPopover"]
       46 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["uniqueId"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R7 R3 K0 ["type"]
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R8 R8 K1 ["Instance"]
        5 JUMPIFEQ                         R7 R8 ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       11 LOADK                            R7 K2 ["Expected Instance row type"]
       12 GETIMPORT                        R5 K4 [assert]
       14 CALL                             R5 2 0
       15 GETTABLEKS                       R5 R2 K5 ["instanceClasses"]
       17 SETTABLEKS                       R5 R3 K5 ["instanceClasses"]
       19 GETTABLEKS                       R5 R2 K6 ["shouldSelectModel"]
       21 SETTABLEKS                       R5 R3 K6 ["shouldSelectModel"]
       23 GETTABLEKS                       R5 R2 K7 ["validityBridge"]
       25 JUMPIFNOT                        R5 ; [+3]
       26 GETTABLEKS                       R6 R2 K7 ["validityBridge"]
       28 GETTABLE                         R5 R4 R6
       29 JUMPIFNOT                        R5 ; [+3]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R5
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R3 K8 ["resolveValidityAsync"]
       36 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R6 R0 K0 ["inputType"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["Array"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       11 LOADK                            R6 K2 ["Expected Array input type"]
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R6 R3 K5 ["type"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K6 ["PartNames"]
       20 JUMPIFEQ                         R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       26 LOADK                            R6 K7 ["Expected PartNames row type"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETTABLEKS                       R4 R2 K8 ["suggestion"]
       32 SETTABLEKS                       R4 R3 K8 ["suggestion"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R5 R2 K9 ["infoPopover"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K9 ["infoPopover"]
       40 GETTABLEKS                       R4 R0 K10 ["min"]
       42 GETTABLEKS                       R5 R0 K11 ["max"]
       44 JUMPIFNOTEQKNIL                  R4 ; [+3]
       46 JUMPIFEQKNIL                     R5 ; [+6]
       48 SETTABLEKS                       R4 R3 K12 ["minParts"]
       50 SETTABLEKS                       R5 R3 K13 ["maxParts"]
       52 RETURN                           R3 1
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K14 ["getFieldRange"]
       56 MOVE                             R7 R1
       57 GETTABLEKS                       R8 R0 K15 ["name"]
       59 CALL                             R6 2 1
       60 JUMPIFEQKNIL                     R6 ; [+9]
       62 GETTABLEKS                       R7 R6 K10 ["min"]
       64 SETTABLEKS                       R7 R3 K12 ["minParts"]
       66 GETTABLEKS                       R7 R6 K11 ["max"]
       68 SETTABLEKS                       R7 R3 K13 ["maxParts"]
       70 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R8 R0 K0 ["inputType"]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R9 R9 K1 ["Number"]
        5 JUMPIFEQ                         R8 R9 ; [+2]
        7 LOADB                            R7 0 +1
        8 LOADB                            R7 1
        9 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       11 LOADK                            R8 K2 ["Expected Number input type"]
       12 GETIMPORT                        R6 K4 [assert]
       14 CALL                             R6 2 0
       15 GETTABLEKS                       R8 R3 K5 ["type"]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K6 ["NumberInput"]
       20 JUMPIFEQ                         R8 R9 ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       26 LOADK                            R8 K7 ["Expected NumberInput row type"]
       27 GETIMPORT                        R6 K4 [assert]
       29 CALL                             R6 2 0
       30 GETTABLEKS                       R6 R0 K8 ["min"]
       32 GETTABLEKS                       R7 R0 K9 ["max"]
       34 JUMPIFNOTEQKNIL                  R6 ; [+3]
       36 JUMPIFEQKNIL                     R7 ; [+6]
       38 SETTABLEKS                       R6 R3 K8 ["min"]
       40 SETTABLEKS                       R7 R3 K9 ["max"]
       42 JUMP                             ; [+17]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K10 ["getFieldRange"]
       46 MOVE                             R9 R1
       47 GETTABLEKS                       R10 R0 K11 ["name"]
       49 CALL                             R8 2 1
       50 JUMPIFEQKNIL                     R8 ; [+9]
       52 GETTABLEKS                       R9 R8 K8 ["min"]
       54 SETTABLEKS                       R9 R3 K8 ["min"]
       56 GETTABLEKS                       R9 R8 K9 ["max"]
       58 SETTABLEKS                       R9 R3 K9 ["max"]
       60 GETTABLEKS                       R8 R2 K12 ["scrubbable"]
       62 SETTABLEKS                       R8 R3 K12 ["scrubbable"]
       64 GETTABLEKS                       R8 R2 K13 ["step"]
       66 SETTABLEKS                       R8 R3 K13 ["step"]
       68 GETTABLEKS                       R8 R2 K14 ["precision"]
       70 SETTABLEKS                       R8 R3 K14 ["precision"]
       72 GETTABLEKS                       R8 R2 K15 ["prefix"]
       74 SETTABLEKS                       R8 R3 K15 ["prefix"]
       76 GETTABLEKS                       R8 R2 K16 ["suffix"]
       78 SETTABLEKS                       R8 R3 K16 ["suffix"]
       80 GETTABLEKS                       R8 R2 K17 ["hasControls"]
       82 SETTABLEKS                       R8 R3 K17 ["hasControls"]
       84 GETTABLEKS                       R8 R2 K18 ["formatAsString"]
       86 SETTABLEKS                       R8 R3 K18 ["formatAsString"]
       88 GETTABLEKS                       R8 R2 K19 ["snapValue"]
       90 SETTABLEKS                       R8 R3 K19 ["snapValue"]
       92 GETTABLEKS                       R8 R2 K20 ["valueChangedAction"]
       94 JUMPIFNOT                        R8 ; [+3]
       95 GETTABLEKS                       R9 R2 K20 ["valueChangedAction"]
       97 GETTABLE                         R8 R5 R9
       98 SETTABLEKS                       R8 R3 K21 ["onValueChanged"]
      100 GETTABLEKS                       R8 R2 K22 ["variant"]
      102 SETTABLEKS                       R8 R3 K22 ["variant"]
      104 RETURN                           R3 1

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 0
        3 NEWTABLE                         R4 0 0
        5 MOVE                             R5 R0
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETTABLEKS                       R10 R9 K0 ["name"]
       11 SETTABLE                         R9 R4 R10
       12 FORGLOOP                         R5 2 ; [-4]
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 MOVE                             R7 R3
       17 CALL                             R5 2 3
       18 FORGPREP                         R5
       19 GETTABLE                         R10 R4 R8
       20 JUMPIFEQKNIL                     R10 ; [+33]
       22 GETTABLEKS                       R11 R9 K1 ["visible"]
       24 JUMPIFEQKNIL                     R11 ; [+5]
       26 GETTABLEKS                       R11 R9 K1 ["visible"]
       28 SETTABLEKS                       R11 R10 K2 ["initialVisible"]
       30 GETTABLEKS                       R11 R9 K3 ["interactable"]
       32 JUMPIFEQKNIL                     R11 ; [+5]
       34 GETTABLEKS                       R11 R9 K3 ["interactable"]
       36 SETTABLEKS                       R11 R10 K4 ["initialInteractable"]
       38 GETTABLEKS                       R11 R9 K5 ["enabled"]
       40 JUMPIFEQKNIL                     R11 ; [+5]
       42 GETTABLEKS                       R11 R9 K5 ["enabled"]
       44 SETTABLEKS                       R11 R10 K6 ["initialEnabled"]
       46 GETTABLEKS                       R11 R9 K7 ["active"]
       48 JUMPIFEQKNIL                     R11 ; [+5]
       50 GETTABLEKS                       R11 R9 K7 ["active"]
       52 SETTABLEKS                       R11 R10 K8 ["initialActive"]
       54 FORGLOOP                         R5 2 ; [-36]
       56 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getRowPresentation"]
        3 MOVE                             R6 R1
        4 GETTABLEKS                       R7 R0 K1 ["name"]
        6 CALL                             R5 2 1
        7 GETTABLEKS                       R6 R5 K2 ["renderer"]
        9 JUMPIF                           R6 ; [+8]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R8 R0 K3 ["inputType"]
       13 GETTABLE                         R6 R7 R8
       14 JUMPIF                           R6 ; [+3]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K4 ["Warning"]
       18 DUPTABLE                         R7 K14 [{["type"], ["name"], ["label"], ["initialValue"], ["initialVisible"] = , ["initialInteractable"] = , ["initialEnabled"] = , ["initialActive"] = , ["internal"]}]
       19 SETTABLEKS                       R6 R7 K5 ["type"]
       21 GETTABLEKS                       R8 R0 K1 ["name"]
       23 SETTABLEKS                       R8 R7 K1 ["name"]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K15 ["resolveText"]
       28 GETTABLEKS                       R9 R5 K6 ["label"]
       30 CALL                             R8 1 1
       31 JUMPIF                           R8 ; [+2]
       32 GETTABLEKS                       R8 R0 K1 ["name"]
       34 SETTABLEKS                       R8 R7 K6 ["label"]
       36 GETTABLEKS                       R8 R0 K7 ["initialValue"]
       38 SETTABLEKS                       R8 R7 K7 ["initialValue"]
       40 GETTABLEKS                       R8 R5 K13 ["internal"]
       42 SETTABLEKS                       R8 R7 K13 ["internal"]
       44 GETUPVAL                         R9 4
       45 GETTABLE                         R8 R9 R6
       46 JUMPIFNOT                        R8 ; [+15]
       47 MOVE                             R9 R8
       48 MOVE                             R10 R0
       49 MOVE                             R11 R2
       50 MOVE                             R12 R5
       51 MOVE                             R13 R7
       52 MOVE                             R14 R3
       53 JUMPIF                           R14 ; [+2]
       54 NEWTABLE                         R14 0 0
       56 MOVE                             R15 R4
       57 JUMPIF                           R15 ; [+2]
       58 NEWTABLE                         R15 0 0
       60 CALL                             R9 6 1
       61 MOVE                             R7 R9
       62 RETURN                           R7 1

PROTO_14:
        0 GETIMPORT                        R4 K2 [table.create]
        2 LENGTH                           R5 R0
        3 CALL                             R4 1 1
        4 MOVE                             R5 R0
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R11 R9 K3 ["name"]
       10 GETTABLE                         R10 R1 R11
       11 GETUPVAL                         R11 0
       12 MOVE                             R12 R9
       13 MOVE                             R13 R2
       14 CALL                             R11 2 1
       15 SETTABLEKS                       R10 R11 K4 ["initialValue"]
       17 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
       19 MOVE                             R13 R4
       20 MOVE                             R14 R11
       21 GETIMPORT                        R12 K6 [table.insert]
       23 CALL                             R12 2 0
       24 FORGLOOP                         R5 2 ; [-17]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K7 ["getForm"]
       29 MOVE                             R6 R2
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 2
       32 MOVE                             R7 R4
       33 JUMPIFNOT                        R5 ; [+3]
       34 GETTABLEKS                       R8 R5 K8 ["axisResolver"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R8
       38 MOVE                             R9 R1
       39 MOVE                             R10 R3
       40 CALL                             R6 4 0
       41 MOVE                             R6 R4
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 LOADB                            R11 0
       46 SETTABLEKS                       R11 R10 K9 ["initialInteractable"]
       48 LOADB                            R11 0
       49 SETTABLEKS                       R11 R10 K10 ["initialActive"]
       51 FORGLOOP                         R6 2 ; [-7]
       53 RETURN                           R4 1

PROTO_15:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantResolveHeading"]
        4 JUMPIFNOT                        R1 ; [+46]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+2]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+12]
       12 GETUPVAL                         R2 2
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETTABLEKS                       R7 R6 K1 ["name"]
       18 GETTABLEKS                       R8 R6 K2 ["initialValue"]
       20 SETTABLE                         R8 R1 R7
       21 FORGLOOP                         R2 2 ; [-6]
       23 GETUPVAL                         R2 3
       24 JUMPIFNOTEQKNIL                  R2 ; [+3]
       26 LOADNIL                          R0
       27 JUMP                             ; [+33]
       28 GETTABLEKS                       R4 R2 K3 ["headingResolver"]
       30 JUMPIFNOT                        R4 ; [+9]
       31 GETUPVAL                         R3 4
       32 GETTABLEKS                       R3 R3 K4 ["resolveText"]
       34 GETTABLEKS                       R4 R2 K3 ["headingResolver"]
       36 MOVE                             R5 R1
       37 CALL                             R4 1 -1
       38 CALL                             R3 -1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R3
       41 MOVE                             R0 R3
       42 JUMPIF                           R0 ; [+18]
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K4 ["resolveText"]
       46 GETTABLEKS                       R5 R2 K5 ["heading"]
       48 CALL                             R4 1 1
       49 MOVE                             R0 R4
       50 JUMP                             ; [+10]
       51 GETUPVAL                         R1 3
       52 JUMPIFNOT                        R1 ; [+8]
       53 GETUPVAL                         R1 4
       54 GETTABLEKS                       R1 R1 K4 ["resolveText"]
       56 GETUPVAL                         R2 3
       57 GETTABLEKS                       R2 R2 K5 ["heading"]
       59 CALL                             R1 1 1
       60 MOVE                             R0 R1
       61 DUPTABLE                         R1 K9 [{"Heading", "Submitted", "Cancelled"}]
       62 SETTABLEKS                       R0 R1 K6 ["Heading"]
       64 GETUPVAL                         R2 5
       65 LOADK                            R4 K10 ["InputRequiredWidget"]
       66 LOADK                            R5 K11 ["ResponseRecorded"]
       67 NAMECALL                         R2 R2 K12 ["getText"]
       69 CALL                             R2 3 1
       70 SETTABLEKS                       R2 R1 K7 ["Submitted"]
       72 GETUPVAL                         R2 5
       73 LOADK                            R4 K10 ["InputRequiredWidget"]
       74 LOADK                            R5 K13 ["CommandCancelled"]
       75 NAMECALL                         R2 R2 K12 ["getText"]
       77 CALL                             R2 3 1
       78 SETTABLEKS                       R2 R1 K8 ["Cancelled"]
       80 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 3
        7 DUPTABLE                         R4 K2 [{[1] = True}]
        8 CALL                             R0 4 1
        9 RETURN                           R0 1

PROTO_17:
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
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R10
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U7
       67 NEWTABLE                         R13 0 4
       69 GETUPVAL                         R14 7
       70 GETTABLEKS                       R14 R14 K13 ["locale"]
       72 MOVE                             R15 R10
       73 MOVE                             R16 R3
       74 MOVE                             R17 R6
       75 SETLIST                          R13 R14 4 [1]
       77 CALL                             R11 2 1
       78 GETUPVAL                         R12 4
       79 GETTABLEKS                       R12 R12 K12 ["useMemo"]
       81 NEWCLOSURE                       R13 P1
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R9
       86 NEWTABLE                         R14 0 3
       88 MOVE                             R15 R3
       89 MOVE                             R16 R6
       90 MOVE                             R17 R9
       91 SETLIST                          R14 R15 3 [1]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R13 9
       95 CALL                             R13 0 1
       96 JUMPIFNOT                        R8 ; [+43]
       97 GETUPVAL                         R14 10
       98 GETUPVAL                         R15 11
       99 DUPTABLE                         R16 K19 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["GroupTransparency"] = 0.5, ["LayoutOrder"]}]
      100 GETTABLEKS                       R17 R0 K18 ["LayoutOrder"]
      102 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      104 DUPTABLE                         R17 K22 [{"Title", "Description"}]
      105 LOADB                            R18 0
      106 GETTABLEKS                       R19 R11 K23 ["Heading"]
      108 JUMPIFEQKNIL                     R19 ; [+13]
      110 GETUPVAL                         R18 10
      111 GETUPVAL                         R19 12
      112 DUPTABLE                         R20 K26 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      113 GETTABLEKS                       R21 R11 K23 ["Heading"]
      115 SETTABLEKS                       R21 R20 K25 ["Text"]
      117 MOVE                             R21 R13
      118 CALL                             R21 0 1
      119 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K20 ["Title"]
      124 GETUPVAL                         R18 10
      125 GETUPVAL                         R19 12
      126 DUPTABLE                         R20 K28 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      127 GETTABLEKS                       R21 R11 K29 ["Cancelled"]
      129 SETTABLEKS                       R21 R20 K25 ["Text"]
      131 MOVE                             R21 R13
      132 CALL                             R21 0 1
      133 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K21 ["Description"]
      138 CALL                             R14 3 -1
      139 RETURN                           R14 -1
      140 GETUPVAL                         R14 10
      141 GETUPVAL                         R15 13
      142 GETTABLEKS                       R15 R15 K30 ["Root"]
      144 DUPTABLE                         R16 K34 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      145 GETTABLEKS                       R17 R0 K18 ["LayoutOrder"]
      147 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      149 GETTABLEKS                       R17 R0 K31 ["expanded"]
      151 SETTABLEKS                       R17 R16 K31 ["expanded"]
      153 GETTABLEKS                       R17 R0 K32 ["contentId"]
      155 SETTABLEKS                       R17 R16 K32 ["contentId"]
      157 GETTABLEKS                       R17 R0 K33 ["editThisContent"]
      159 SETTABLEKS                       R17 R16 K33 ["editThisContent"]
      161 DUPTABLE                         R17 K37 [{"Header", "Content"}]
      162 GETUPVAL                         R18 10
      163 GETUPVAL                         R19 13
      164 GETTABLEKS                       R19 R19 K35 ["Header"]
      166 DUPTABLE                         R20 K39 [{"LayoutOrder", "testId"}]
      167 MOVE                             R21 R13
      168 CALL                             R21 0 1
      169 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      171 GETUPVAL                         R21 14
      172 GETTABLEKS                       R21 R21 K40 ["InputRequested"]
      174 GETTABLEKS                       R21 R21 K41 ["Expand"]
      176 SETTABLEKS                       R21 R20 K38 ["testId"]
      178 DUPTABLE                         R21 K42 [{"Text"}]
      179 GETUPVAL                         R22 10
      180 GETUPVAL                         R23 12
      181 DUPTABLE                         R24 K44 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      182 GETTABLEKS                       R25 R11 K45 ["Submitted"]
      184 SETTABLEKS                       R25 R24 K25 ["Text"]
      186 MOVE                             R25 R13
      187 CALL                             R25 0 1
      188 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      190 CALL                             R22 2 1
      191 SETTABLEKS                       R22 R21 K25 ["Text"]
      193 CALL                             R18 3 1
      194 SETTABLEKS                       R18 R17 K35 ["Header"]
      196 GETUPVAL                         R18 10
      197 GETUPVAL                         R19 13
      198 GETTABLEKS                       R19 R19 K36 ["Content"]
      200 DUPTABLE                         R20 K47 [{["tag"] = "col fill size-0-0 auto-y padding-x-medium", ["LayoutOrder"]}]
      201 MOVE                             R21 R13
      202 CALL                             R21 0 1
      203 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      205 DUPTABLE                         R21 K49 [{"PropertyRows"}]
      206 GETUPVAL                         R22 10
      207 GETUPVAL                         R23 15
      208 GETTABLEKS                       R23 R23 K50 ["PropertyRowsRoot"]
      210 DUPTABLE                         R24 K55 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      211 SETTABLEKS                       R12 R24 K51 ["rowDefinitions"]
      213 GETUPVAL                         R25 16
      214 GETTABLEKS                       R25 R25 K56 ["createUnimplemented"]
      216 LOADK                            R26 K52 ["onChange"]
      217 CALL                             R25 1 1
      218 SETTABLEKS                       R25 R24 K52 ["onChange"]
      220 MOVE                             R25 R13
      221 CALL                             R25 0 1
      222 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      224 CALL                             R22 2 1
      225 SETTABLEKS                       R22 R21 K48 ["PropertyRows"]
      227 CALL                             R18 3 1
      228 SETTABLEKS                       R18 R17 K36 ["Content"]
      230 CALL                             R14 3 -1
      231 RETURN                           R14 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["desugarFields"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K1 [pcall]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["isTextureableInstance"]
        9 DUPTABLE                         R3 K4 [{"uniqueId"}]
       10 SETTABLEKS                       R0 R3 K3 ["uniqueId"]
       12 CALL                             R1 2 2
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+4]
       15 JUMPIFEQKB                       R2 TRUE ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K1 [pcall]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["isSegmentableInstance"]
        9 DUPTABLE                         R3 K4 [{"uniqueId"}]
       10 SETTABLEKS                       R0 R3 K3 ["uniqueId"]
       12 CALL                             R1 2 2
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+4]
       15 JUMPIFEQKB                       R2 TRUE ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R3 1

PROTO_21:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["ValidityBridge"]
        5 GETTABLEKS                       R1 R1 K1 ["TextureGen"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["ValidityBridge"]
       13 GETTABLEKS                       R1 R1 K2 ["SegmentMesh"]
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          UPVAL U2
       17 SETTABLE                         R2 R0 R1
       18 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 JUMP                             ; [+3]
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+7]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["fromPercent"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 RETURN                           R2 1
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K4 ["NEUTRAL"]
       24 RETURN                           R2 1

PROTO_23:
        0 MOVE                             R3 R2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["EditSourceId"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 JUMPIFNOT                        R4 ; [+9]
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K2 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+3]
       14 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       16 RETURN                           R0 0
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U2
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K5 ["setEditPreviewReach"]
       25 DUPTABLE                         R6 K9 [{"toolUseId", "armsReach", "legsReach"}]
       26 GETUPVAL                         R7 3
       27 MOVE                             R8 R3
       28 CALL                             R7 1 1
       29 SETTABLEKS                       R7 R6 K6 ["toolUseId"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K10 ["ArmsReach"]
       34 JUMPIFNOTEQ                      R8 R0 ; [+3]
       36 MOVE                             R9 R1
       37 JUMP                             ; [+3]
       38 MOVE                             R9 R2
       39 MOVE                             R10 R8
       40 CALL                             R9 1 1
       41 FASTCALL1                        TYPEOF R9 ; [+3]
       42 MOVE                             R11 R9
       43 GETIMPORT                        R10 K2 [typeof]
       45 CALL                             R10 1 1
       46 JUMPIFNOTEQKS                    R10 K11 ["number"] ; [+8]
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K12 ["fromPercent"]
       51 MOVE                             R11 R9
       52 CALL                             R10 1 1
       53 MOVE                             R7 R10
       54 JUMP                             ; [+3]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K13 ["NEUTRAL"]
       58 SETTABLEKS                       R7 R6 K7 ["armsReach"]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K14 ["LegsReach"]
       63 JUMPIFNOTEQ                      R8 R0 ; [+3]
       65 MOVE                             R9 R1
       66 JUMP                             ; [+3]
       67 MOVE                             R9 R2
       68 MOVE                             R10 R8
       69 CALL                             R9 1 1
       70 FASTCALL1                        TYPEOF R9 ; [+3]
       71 MOVE                             R11 R9
       72 GETIMPORT                        R10 K2 [typeof]
       74 CALL                             R10 1 1
       75 JUMPIFNOTEQKS                    R10 K11 ["number"] ; [+8]
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R10 R10 K12 ["fromPercent"]
       80 MOVE                             R11 R9
       81 CALL                             R10 1 1
       82 MOVE                             R7 R10
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K13 ["NEUTRAL"]
       87 SETTABLEKS                       R7 R6 K8 ["legsReach"]
       89 CALL                             R5 1 0
       90 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 JUMP                             ; [+3]
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+7]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["fromPercent"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 RETURN                           R2 1
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_25:
        0 MOVE                             R3 R2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["EditSourceId"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 JUMPIFNOT                        R4 ; [+9]
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K2 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+3]
       14 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       16 RETURN                           R0 0
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U2
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K5 ["setEditPreviewBlend"]
       25 DUPTABLE                         R6 K8 [{"toolUseId", "blend"}]
       26 GETUPVAL                         R7 3
       27 MOVE                             R8 R3
       28 CALL                             R7 1 1
       29 SETTABLEKS                       R7 R6 K6 ["toolUseId"]
       31 DUPTABLE                         R7 K12 [{"blendWithR6", "upperBlendWithR6", "lowerBlendWithR6"}]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K13 ["R6Blend"]
       35 JUMPIFNOTEQ                      R9 R0 ; [+3]
       37 MOVE                             R10 R1
       38 JUMP                             ; [+3]
       39 MOVE                             R10 R2
       40 MOVE                             R11 R9
       41 CALL                             R10 1 1
       42 FASTCALL1                        TYPEOF R10 ; [+3]
       43 MOVE                             R12 R10
       44 GETIMPORT                        R11 K2 [typeof]
       46 CALL                             R11 1 1
       47 JUMPIFNOTEQKS                    R11 K14 ["number"] ; [+8]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K15 ["fromPercent"]
       52 MOVE                             R12 R10
       53 CALL                             R11 1 1
       54 MOVE                             R8 R11
       55 JUMP                             ; [+1]
       56 LOADNIL                          R8
       57 SETTABLEKS                       R8 R7 K9 ["blendWithR6"]
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K16 ["UpperBodyBlend"]
       62 JUMPIFNOTEQ                      R9 R0 ; [+3]
       64 MOVE                             R10 R1
       65 JUMP                             ; [+3]
       66 MOVE                             R10 R2
       67 MOVE                             R11 R9
       68 CALL                             R10 1 1
       69 FASTCALL1                        TYPEOF R10 ; [+3]
       70 MOVE                             R12 R10
       71 GETIMPORT                        R11 K2 [typeof]
       73 CALL                             R11 1 1
       74 JUMPIFNOTEQKS                    R11 K14 ["number"] ; [+8]
       76 GETUPVAL                         R11 2
       77 GETTABLEKS                       R11 R11 K15 ["fromPercent"]
       79 MOVE                             R12 R10
       80 CALL                             R11 1 1
       81 MOVE                             R8 R11
       82 JUMP                             ; [+1]
       83 LOADNIL                          R8
       84 SETTABLEKS                       R8 R7 K10 ["upperBlendWithR6"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K17 ["LowerBodyBlend"]
       89 JUMPIFNOTEQ                      R9 R0 ; [+3]
       91 MOVE                             R10 R1
       92 JUMP                             ; [+3]
       93 MOVE                             R10 R2
       94 MOVE                             R11 R9
       95 CALL                             R10 1 1
       96 FASTCALL1                        TYPEOF R10 ; [+3]
       97 MOVE                             R12 R10
       98 GETIMPORT                        R11 K2 [typeof]
      100 CALL                             R11 1 1
      101 JUMPIFNOTEQKS                    R11 K14 ["number"] ; [+8]
      103 GETUPVAL                         R11 2
      104 GETTABLEKS                       R11 R11 K15 ["fromPercent"]
      106 MOVE                             R12 R10
      107 CALL                             R11 1 1
      108 MOVE                             R8 R11
      109 JUMP                             ; [+1]
      110 LOADNIL                          R8
      111 SETTABLEKS                       R8 R7 K11 ["lowerBlendWithR6"]
      113 SETTABLEKS                       R7 R6 K7 ["blend"]
      115 CALL                             R5 1 0
      116 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Configs"]
        3 GETTABLEKS                       R0 R0 K1 ["AnimationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["row"]
        7 NEWTABLE                         R1 2 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["ValueChangedAction"]
       12 GETTABLEKS                       R2 R2 K4 ["AnimationGenEditPreviewReach"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 SETTABLE                         R3 R1 R2
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K3 ["ValueChangedAction"]
       23 GETTABLEKS                       R2 R2 K5 ["AnimationGenEditPreviewBlend"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U3
       30 SETTABLE                         R3 R1 R2
       31 RETURN                           R1 1

PROTO_27:
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

PROTO_28:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 LENGTH                           R1 R2
        4 CALL                             R0 1 1
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R9 1
       12 MOVE                             R10 R6
       13 GETUPVAL                         R11 2
       14 GETUPVAL                         R12 3
       15 GETUPVAL                         R13 4
       16 GETUPVAL                         R14 5
       17 CALL                             R9 5 1
       18 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       20 MOVE                             R8 R0
       21 GETIMPORT                        R7 K4 [table.insert]
       23 CALL                             R7 2 0
       24 GETTABLEKS                       R7 R6 K5 ["name"]
       26 GETTABLEKS                       R8 R6 K6 ["initialValue"]
       28 SETTABLE                         R8 R1 R7
       29 FORGLOOP                         R2 2 ; [-19]
       31 GETUPVAL                         R2 6
       32 MOVE                             R3 R0
       33 GETUPVAL                         R4 7
       34 MOVE                             R5 R1
       35 DUPTABLE                         R6 K9 [{["isSubmitted"] = False}]
       36 CALL                             R2 4 0
       37 RETURN                           R0 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K3 [{["isSubmitted"] = False}]
       12 CALL                             R1 2 3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K4 ["visible"]
       16 JUMPIFEQKNIL                     R6 ; [+7]
       18 GETTABLEKS                       R6 R0 K5 ["setRowVisible"]
       20 MOVE                             R7 R4
       21 GETTABLEKS                       R8 R5 K4 ["visible"]
       23 CALL                             R6 2 0
       24 GETTABLEKS                       R6 R5 K6 ["interactable"]
       26 JUMPIFEQKNIL                     R6 ; [+7]
       28 GETTABLEKS                       R6 R0 K7 ["setRowInteractable"]
       30 MOVE                             R7 R4
       31 GETTABLEKS                       R8 R5 K6 ["interactable"]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R6 R5 K8 ["enabled"]
       36 JUMPIFEQKNIL                     R6 ; [+7]
       38 GETTABLEKS                       R6 R0 K9 ["setRowEnabled"]
       40 MOVE                             R7 R4
       41 GETTABLEKS                       R8 R5 K8 ["enabled"]
       43 CALL                             R6 2 0
       44 GETTABLEKS                       R6 R5 K10 ["active"]
       46 JUMPIFEQKNIL                     R6 ; [+7]
       48 GETTABLEKS                       R6 R0 K11 ["setRowActive"]
       50 MOVE                             R7 R4
       51 GETTABLEKS                       R8 R5 K10 ["active"]
       53 CALL                             R6 2 0
       54 FORGLOOP                         R1 2 ; [-41]
       56 LOADNIL                          R1
       57 RETURN                           R1 1

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFEQKNIL                     R0 ; [+80]
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
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K4 ["useTexturePreview"]
       41 JUMPIFNOT                        R4 ; [+2]
       42 OR                               R3 R1 R2
       43 JUMP                             ; [+3]
       44 MOVE                             R3 R1
       45 JUMPIFNOT                        R3 ; [+1]
       46 NOT                              R3 R2
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K5 ["skipField"]
       50 LOADB                            R5 0
       51 JUMPIFEQKNIL                     R4 ; [+17]
       53 GETUPVAL                         R7 3
       54 GETTABLE                         R6 R7 R4
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K6 ["skipValues"]
       58 JUMPIFNOT                        R7 ; [+10]
       59 MOVE                             R8 R7
       60 LOADNIL                          R9
       61 LOADNIL                          R10
       62 FORGPREP                         R8
       63 JUMPIFNOTEQ                      R12 R6 ; [+3]
       65 LOADB                            R5 1
       66 JUMP                             ; [+2]
       67 FORGLOOP                         R8 2 ; [-5]
       69 JUMPIFNOT                        R3 ; [+17]
       70 JUMPIF                           R5 ; [+16]
       71 GETUPVAL                         R6 5
       72 GETTABLEKS                       R6 R6 K7 ["current"]
       74 GETUPVAL                         R7 6
       75 JUMPIFNOT                        R6 ; [+4]
       76 GETTABLEKS                       R8 R6 K8 ["getEnabledValues"]
       78 CALL                             R8 0 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R8
       81 SETTABLEKS                       R8 R7 K7 ["current"]
       83 GETUPVAL                         R7 7
       84 LOADK                            R8 K9 ["Picker"]
       85 CALL                             R7 1 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R0 8
       88 CALL                             R0 0 0
       89 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Form"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_44:
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
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K5 ["FFlagAssistantResolveHeading"]
       41 JUMPIFNOT                        R4 ; [+28]
       42 GETUPVAL                         R4 0
       43 GETUPVAL                         R5 3
       44 JUMPIFNOTEQKNIL                  R4 ; [+3]
       46 LOADNIL                          R0
       47 JUMP                             ; [+22]
       48 GETTABLEKS                       R7 R4 K6 ["headingResolver"]
       50 JUMPIFNOT                        R7 ; [+9]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K0 ["resolveText"]
       54 GETTABLEKS                       R7 R4 K6 ["headingResolver"]
       56 MOVE                             R8 R5
       57 CALL                             R7 1 -1
       58 CALL                             R6 -1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R6
       61 MOVE                             R0 R6
       62 JUMPIF                           R0 ; [+7]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K0 ["resolveText"]
       66 GETTABLEKS                       R8 R4 K1 ["heading"]
       68 CALL                             R7 1 1
       69 MOVE                             R0 R7
       70 DUPTABLE                         R4 K11 [{"Heading", "Description", "SubmitButton", "CancelButton"}]
       71 SETTABLEKS                       R0 R4 K7 ["Heading"]
       73 SETTABLEKS                       R1 R4 K8 ["Description"]
       75 MOVE                             R5 R2
       76 JUMPIF                           R5 ; [+6]
       77 GETUPVAL                         R5 4
       78 LOADK                            R7 K12 ["AskInput"]
       79 LOADK                            R8 K9 ["SubmitButton"]
       80 NAMECALL                         R5 R5 K13 ["getText"]
       82 CALL                             R5 3 1
       83 SETTABLEKS                       R5 R4 K9 ["SubmitButton"]
       85 MOVE                             R5 R3
       86 JUMPIF                           R5 ; [+6]
       87 GETUPVAL                         R5 4
       88 LOADK                            R7 K12 ["AskInput"]
       89 LOADK                            R8 K10 ["CancelButton"]
       90 NAMECALL                         R5 R5 K13 ["getText"]
       92 CALL                             R5 3 1
       93 SETTABLEKS                       R5 R4 K10 ["CancelButton"]
       95 RETURN                           R4 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 DUPTABLE                         R4 K2 [{[1] = False}]
        9 CALL                             R0 4 1
       10 RETURN                           R0 1

PROTO_47:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 GETUPVAL                         R6 0
        6 JUMPIFNOT                        R6 ; [+8]
        7 GETUPVAL                         R7 0
        8 FASTCALL2                        MATH_MIN R0 R7 ; [+4]
       10 MOVE                             R6 R0
       11 GETIMPORT                        R5 K5 [math.min]
       13 CALL                             R5 2 1
       14 JUMP                             ; [+1]
       15 MOVE                             R5 R0
       16 CALL                             R1 4 -1
       17 RETURN                           R1 -1

PROTO_48:
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
       18 GETTABLEKS                       R5 R2 K4 ["fields"]
       20 JUMPIF                           R5 ; [+1]
       21 GETUPVAL                         R5 0
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R6 R2 K5 ["validation"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R6
       34 NEWTABLE                         R9 0 2
       36 MOVE                             R10 R5
       37 MOVE                             R11 R6
       38 SETLIST                          R9 R10 2 [1]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K7 ["getForm"]
       44 MOVE                             R9 R4
       45 CALL                             R8 1 1
       46 JUMPIFNOT                        R8 ; [+3]
       47 GETTABLEKS                       R9 R8 K8 ["imageSelection"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 JUMPIFNOT                        R8 ; [+3]
       52 GETTABLEKS                       R10 R8 K9 ["axisResolver"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R10
       56 GETTABLEKS                       R11 R0 K10 ["hasSubmitted"]
       58 GETTABLEKS                       R12 R0 K11 ["setHasSubmitted"]
       60 GETUPVAL                         R13 4
       61 GETTABLEKS                       R13 R13 K12 ["useMarkUserInputRequired"]
       63 NOT                              R14 R11
       64 CALL                             R13 1 0
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K13 ["useContext"]
       68 GETUPVAL                         R14 5
       69 GETTABLEKS                       R14 R14 K14 ["Context"]
       71 CALL                             R13 1 1
       72 GETUPVAL                         R14 1
       73 GETTABLEKS                       R14 R14 K13 ["useContext"]
       75 GETUPVAL                         R15 6
       76 GETTABLEKS                       R15 R15 K14 ["Context"]
       78 CALL                             R14 1 1
       79 GETUPVAL                         R15 1
       80 GETTABLEKS                       R15 R15 K13 ["useContext"]
       82 GETUPVAL                         R16 7
       83 GETTABLEKS                       R16 R16 K14 ["Context"]
       85 CALL                             R15 1 1
       86 GETUPVAL                         R16 1
       87 GETTABLEKS                       R16 R16 K13 ["useContext"]
       89 GETUPVAL                         R17 8
       90 GETTABLEKS                       R17 R17 K14 ["Context"]
       92 CALL                             R16 1 1
       93 GETUPVAL                         R17 1
       94 GETTABLEKS                       R17 R17 K6 ["useMemo"]
       96 NEWCLOSURE                       R18 P1
       97 CAPTURE                          UPVAL U3
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R15
      100 NEWTABLE                         R19 0 2
      102 MOVE                             R20 R14
      103 MOVE                             R21 R15
      104 SETLIST                          R19 R20 2 [1]
      106 CALL                             R17 2 1
      107 GETUPVAL                         R18 1
      108 GETTABLEKS                       R18 R18 K6 ["useMemo"]
      110 NEWCLOSURE                       R19 P2
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          VAL R16
      113 CAPTURE                          UPVAL U9
      114 CAPTURE                          UPVAL U10
      115 CAPTURE                          UPVAL U11
      116 NEWTABLE                         R20 0 1
      118 MOVE                             R21 R16
      119 SETLIST                          R20 R21 1 [1]
      121 CALL                             R18 2 1
      122 GETUPVAL                         R19 1
      123 GETTABLEKS                       R19 R19 K15 ["useState"]
      125 NEWCLOSURE                       R20 P3
      126 CAPTURE                          VAL R5
      127 CALL                             R19 1 2
      128 GETUPVAL                         R21 1
      129 GETTABLEKS                       R21 R21 K15 ["useState"]
      131 LOADB                            R22 0
      132 CALL                             R21 1 2
      133 GETUPVAL                         R23 1
      134 GETTABLEKS                       R23 R23 K16 ["useRef"]
      136 LOADNIL                          R24
      137 CALL                             R23 1 1
      138 GETUPVAL                         R24 1
      139 GETTABLEKS                       R24 R24 K16 ["useRef"]
      141 LOADNIL                          R25
      142 CALL                             R24 1 1
      143 GETUPVAL                         R25 1
      144 GETTABLEKS                       R25 R25 K6 ["useMemo"]
      146 NEWCLOSURE                       R26 P4
      147 CAPTURE                          VAL R5
      148 CAPTURE                          UPVAL U12
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R18
      153 CAPTURE                          UPVAL U13
      154 CAPTURE                          VAL R10
      155 NEWTABLE                         R27 0 6
      157 MOVE                             R28 R5
      158 MOVE                             R29 R4
      159 MOVE                             R30 R7
      160 MOVE                             R31 R17
      161 MOVE                             R32 R18
      162 MOVE                             R33 R10
      163 SETLIST                          R27 R28 6 [1]
      165 CALL                             R25 2 1
      166 GETUPVAL                         R26 1
      167 GETTABLEKS                       R26 R26 K6 ["useMemo"]
      169 NEWCLOSURE                       R27 P5
      170 CAPTURE                          VAL R5
      171 CAPTURE                          UPVAL U14
      172 NEWTABLE                         R28 0 1
      174 MOVE                             R29 R5
      175 SETLIST                          R28 R29 1 [1]
      177 CALL                             R26 2 1
      178 GETUPVAL                         R27 1
      179 GETTABLEKS                       R27 R27 K15 ["useState"]
      181 LOADK                            R28 K17 ["Form"]
      182 CALL                             R27 1 2
      183 GETUPVAL                         R29 1
      184 GETTABLEKS                       R29 R29 K6 ["useMemo"]
      186 NEWCLOSURE                       R30 P6
      187 CAPTURE                          VAL R7
      188 CAPTURE                          UPVAL U2
      189 CAPTURE                          VAL R19
      190 CAPTURE                          UPVAL U15
      191 CAPTURE                          VAL R4
      192 NEWTABLE                         R31 0 3
      194 MOVE                             R32 R7
      195 MOVE                             R33 R19
      196 MOVE                             R34 R4
      197 SETLIST                          R31 R32 3 [1]
      199 CALL                             R29 2 2
      200 MOVE                             R31 R29
      201 JUMPIFNOT                        R31 ; [+1]
      202 NOT                              R31 R21
      203 GETUPVAL                         R32 1
      204 GETTABLEKS                       R32 R32 K18 ["useCallback"]
      206 NEWCLOSURE                       R33 P7
      207 CAPTURE                          VAL R20
      208 NEWTABLE                         R34 0 0
      210 CALL                             R32 2 1
      211 GETUPVAL                         R33 1
      212 GETTABLEKS                       R33 R33 K19 ["useEffect"]
      214 NEWCLOSURE                       R34 P8
      215 CAPTURE                          VAL R23
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R19
      218 NEWTABLE                         R35 0 2
      220 MOVE                             R36 R10
      221 MOVE                             R37 R19
      222 SETLIST                          R35 R36 2 [1]
      224 CALL                             R33 2 0
      225 GETUPVAL                         R33 1
      226 GETTABLEKS                       R33 R33 K18 ["useCallback"]
      228 NEWCLOSURE                       R34 P9
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R3
      231 CAPTURE                          UPVAL U16
      232 NEWTABLE                         R35 0 2
      234 MOVE                             R36 R13
      235 MOVE                             R37 R3
      236 SETLIST                          R35 R36 2 [1]
      238 CALL                             R33 2 1
      239 GETUPVAL                         R34 1
      240 GETTABLEKS                       R34 R34 K18 ["useCallback"]
      242 NEWCLOSURE                       R35 P10
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R19
      246 CAPTURE                          VAL R26
      247 CAPTURE                          UPVAL U17
      248 CAPTURE                          UPVAL U18
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R33
      251 CAPTURE                          UPVAL U16
      252 NEWTABLE                         R36 0 3
      254 MOVE                             R37 R33
      255 MOVE                             R38 R26
      256 MOVE                             R39 R19
      257 SETLIST                          R36 R37 3 [1]
      259 CALL                             R34 2 1
      260 GETTABLEN                        R35 R26 1
      261 GETUPVAL                         R36 1
      262 GETTABLEKS                       R36 R36 K18 ["useCallback"]
      264 NEWCLOSURE                       R37 P11
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R31
      267 CAPTURE                          VAL R9
      268 CAPTURE                          VAL R19
      269 CAPTURE                          VAL R35
      270 CAPTURE                          VAL R23
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R28
      273 CAPTURE                          VAL R34
      274 NEWTABLE                         R38 0 6
      276 MOVE                             R39 R11
      277 MOVE                             R40 R31
      278 MOVE                             R41 R9
      279 MOVE                             R42 R35
      280 MOVE                             R43 R19
      281 MOVE                             R44 R34
      282 SETLIST                          R38 R39 6 [1]
      284 CALL                             R36 2 1
      285 GETUPVAL                         R37 1
      286 GETTABLEKS                       R37 R37 K18 ["useCallback"]
      288 NEWCLOSURE                       R38 P12
      289 CAPTURE                          VAL R12
      290 CAPTURE                          VAL R33
      291 CAPTURE                          UPVAL U16
      292 NEWTABLE                         R39 0 1
      294 MOVE                             R40 R33
      295 SETLIST                          R39 R40 1 [1]
      297 CALL                             R37 2 1
      298 GETUPVAL                         R38 1
      299 GETTABLEKS                       R38 R38 K18 ["useCallback"]
      301 NEWCLOSURE                       R39 P13
      302 CAPTURE                          VAL R35
      303 CAPTURE                          VAL R34
      304 NEWTABLE                         R40 0 2
      306 MOVE                             R41 R35
      307 MOVE                             R42 R34
      308 SETLIST                          R40 R41 2 [1]
      310 CALL                             R38 2 1
      311 GETUPVAL                         R39 1
      312 GETTABLEKS                       R39 R39 K18 ["useCallback"]
      314 NEWCLOSURE                       R40 P14
      315 CAPTURE                          VAL R28
      316 NEWTABLE                         R41 0 0
      318 CALL                             R39 2 1
      319 GETUPVAL                         R40 1
      320 GETTABLEKS                       R40 R40 K18 ["useCallback"]
      322 NEWCLOSURE                       R41 P15
      323 CAPTURE                          VAL R37
      324 NEWTABLE                         R42 0 1
      326 MOVE                             R43 R37
      327 SETLIST                          R42 R43 1 [1]
      329 CALL                             R40 2 1
      330 GETUPVAL                         R41 1
      331 GETTABLEKS                       R41 R41 K18 ["useCallback"]
      333 NEWCLOSURE                       R42 P16
      334 CAPTURE                          VAL R11
      335 CAPTURE                          VAL R37
      336 NEWTABLE                         R43 0 2
      338 MOVE                             R44 R11
      339 MOVE                             R45 R37
      340 SETLIST                          R43 R44 2 [1]
      342 CALL                             R41 2 1
      343 GETUPVAL                         R42 1
      344 GETTABLEKS                       R42 R42 K6 ["useMemo"]
      346 NEWCLOSURE                       R43 P17
      347 CAPTURE                          VAL R8
      348 CAPTURE                          UPVAL U15
      349 CAPTURE                          UPVAL U19
      350 CAPTURE                          VAL R19
      351 CAPTURE                          UPVAL U20
      352 NEWTABLE                         R44 0 3
      354 GETUPVAL                         R45 20
      355 GETTABLEKS                       R45 R45 K20 ["locale"]
      357 MOVE                             R46 R8
      358 MOVE                             R47 R19
      359 SETLIST                          R44 R45 3 [1]
      361 CALL                             R42 2 1
      362 GETUPVAL                         R43 21
      363 GETTABLEKS                       R43 R43 K21 ["Hooks"]
      365 GETTABLEKS                       R43 R43 K22 ["useTokens"]
      367 CALL                             R43 0 1
      368 GETUPVAL                         R44 1
      369 GETTABLEKS                       R44 R44 K16 ["useRef"]
      371 LOADNIL                          R45
      372 CALL                             R44 1 1
      373 GETUPVAL                         R45 22
      374 MOVE                             R46 R44
      375 CALL                             R45 1 1
      376 GETUPVAL                         R46 1
      377 GETTABLEKS                       R46 R46 K23 ["useBinding"]
      379 LOADN                            R47 0
      380 CALL                             R46 1 2
      381 GETUPVAL                         R48 1
      382 GETTABLEKS                       R48 R48 K18 ["useCallback"]
      384 NEWCLOSURE                       R49 P18
      385 CAPTURE                          VAL R47
      386 NEWTABLE                         R50 0 0
      388 CALL                             R48 2 1
      389 LOADB                            R49 0
      390 JUMPIFEQKNIL                     R9 ; [+5]
      392 JUMPIFEQKS                       R27 K24 ["Picker"] ; [+2]
      394 LOADB                            R49 0 +1
      395 LOADB                            R49 1
      396 GETUPVAL                         R50 1
      397 GETTABLEKS                       R50 R50 K6 ["useMemo"]
      399 NEWCLOSURE                       R51 P19
      400 CAPTURE                          VAL R49
      401 CAPTURE                          UPVAL U23
      402 CAPTURE                          VAL R5
      403 CAPTURE                          VAL R19
      404 CAPTURE                          VAL R4
      405 NEWTABLE                         R52 0 4
      407 MOVE                             R53 R49
      408 MOVE                             R54 R5
      409 MOVE                             R55 R19
      410 MOVE                             R56 R4
      411 SETLIST                          R52 R53 4 [1]
      413 CALL                             R50 2 1
      414 JUMPIFEQKNIL                     R9 ; [+43]
      416 JUMPIFNOTEQKS                    R27 K24 ["Picker"] ; [+41]
      418 GETTABLEKS                       R52 R9 K25 ["useTexturePreview"]
      420 JUMPIFNOT                        R52 ; [+4]
      421 JUMPIFEQKNIL                     R35 ; [+3]
      423 GETTABLE                         R51 R19 R35
      424 JUMP                             ; [+1]
      425 LOADNIL                          R51
      426 GETUPVAL                         R52 24
      427 GETUPVAL                         R53 25
      428 DUPTABLE                         R54 K35 [{"config", "values", "rows", "title", "referenceImage", "onComplete", "onBack", "onError", "LayoutOrder"}]
      429 SETTABLEKS                       R9 R54 K26 ["config"]
      431 SETTABLEKS                       R19 R54 K27 ["values"]
      433 SETTABLEKS                       R50 R54 K28 ["rows"]
      435 GETTABLEKS                       R55 R42 K36 ["Heading"]
      437 SETTABLEKS                       R55 R54 K29 ["title"]
      439 GETUPVAL                         R55 17
      440 GETTABLEKS                       R55 R55 K37 ["resolveImage"]
      442 MOVE                             R56 R51
      443 CALL                             R55 1 1
      444 SETTABLEKS                       R55 R54 K30 ["referenceImage"]
      446 SETTABLEKS                       R38 R54 K31 ["onComplete"]
      448 SETTABLEKS                       R39 R54 K32 ["onBack"]
      450 SETTABLEKS                       R40 R54 K33 ["onError"]
      452 GETTABLEKS                       R55 R0 K34 ["LayoutOrder"]
      454 SETTABLEKS                       R55 R54 K34 ["LayoutOrder"]
      456 CALL                             R52 2 -1
      457 RETURN                           R52 -1
      458 GETUPVAL                         R51 26
      459 CALL                             R51 0 1
      460 GETUPVAL                         R53 19
      461 GETTABLEKS                       R53 R53 K38 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      463 JUMPIFNOT                        R53 ; [+109]
      464 GETUPVAL                         R52 24
      465 GETUPVAL                         R53 27
      466 DUPTABLE                         R54 K40 [{"tag", "LayoutOrder"}]
      467 NEWTABLE                         R55 4 0
      469 LOADB                            R56 1
      470 SETTABLEKS                       R56 R55 K41 ["row gap-small size-full-0 auto-y padding-bottom-medium"]
      472 GETTABLEKS                       R57 R42 K36 ["Heading"]
      474 JUMPIFNOTEQKNIL                  R57 ; [+2]
      476 LOADB                            R56 0 +1
      477 LOADB                            R56 1
      478 SETTABLEKS                       R56 R55 K42 ["flex-x-between align-y-center"]
      480 GETTABLEKS                       R57 R42 K36 ["Heading"]
      482 JUMPIFEQKNIL                     R57 ; [+2]
      484 LOADB                            R56 0 +1
      485 LOADB                            R56 1
      486 SETTABLEKS                       R56 R55 K43 ["align-x-right"]
      488 SETTABLEKS                       R55 R54 K39 ["tag"]
      490 MOVE                             R55 R51
      491 CALL                             R55 0 1
      492 SETTABLEKS                       R55 R54 K34 ["LayoutOrder"]
      494 DUPTABLE                         R55 K45 [{"Heading", "CloseButton"}]
      495 LOADB                            R56 0
      496 GETTABLEKS                       R57 R42 K36 ["Heading"]
      498 JUMPIFEQKNIL                     R57 ; [+24]
      500 GETUPVAL                         R56 24
      501 GETUPVAL                         R57 27
      502 DUPTABLE                         R58 K47 [{["tag"] = "fill auto-y clip", ["LayoutOrder"]}]
      503 MOVE                             R59 R51
      504 CALL                             R59 0 1
      505 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      507 DUPTABLE                         R59 K49 [{"Text"}]
      508 GETUPVAL                         R60 24
      509 GETUPVAL                         R61 28
      510 DUPTABLE                         R62 K51 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      511 GETTABLEKS                       R63 R42 K36 ["Heading"]
      513 SETTABLEKS                       R63 R62 K48 ["Text"]
      515 MOVE                             R63 R51
      516 CALL                             R63 0 1
      517 SETTABLEKS                       R63 R62 K34 ["LayoutOrder"]
      519 CALL                             R60 2 1
      520 SETTABLEKS                       R60 R59 K48 ["Text"]
      522 CALL                             R56 3 1
      523 SETTABLEKS                       R56 R55 K36 ["Heading"]
      525 GETUPVAL                         R56 24
      526 GETUPVAL                         R57 29
      527 DUPTABLE                         R58 K57 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      528 GETUPVAL                         R59 21
      529 GETTABLEKS                       R59 R59 K58 ["Enums"]
      531 GETTABLEKS                       R59 R59 K59 ["IconName"]
      533 GETTABLEKS                       R59 R59 K60 ["X"]
      535 SETTABLEKS                       R59 R58 K52 ["icon"]
      537 GETUPVAL                         R59 21
      538 GETTABLEKS                       R59 R59 K58 ["Enums"]
      540 GETTABLEKS                       R59 R59 K61 ["InputSize"]
      542 GETTABLEKS                       R59 R59 K62 ["XSmall"]
      544 SETTABLEKS                       R59 R58 K53 ["size"]
      546 GETUPVAL                         R59 21
      547 GETTABLEKS                       R59 R59 K58 ["Enums"]
      549 GETTABLEKS                       R59 R59 K63 ["ButtonVariant"]
      551 GETTABLEKS                       R59 R59 K64 ["Utility"]
      553 SETTABLEKS                       R59 R58 K54 ["variant"]
      555 SETTABLEKS                       R41 R58 K55 ["onActivated"]
      557 GETUPVAL                         R59 30
      558 GETTABLEKS                       R59 R59 K65 ["AskInput"]
      560 GETTABLEKS                       R59 R59 K44 ["CloseButton"]
      562 SETTABLEKS                       R59 R58 K56 ["testId"]
      564 MOVE                             R59 R51
      565 CALL                             R59 0 1
      566 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      568 CALL                             R56 2 1
      569 SETTABLEKS                       R56 R55 K44 ["CloseButton"]
      571 CALL                             R52 3 1
      572 JUMP                             ; [+17]
      573 LOADB                            R52 0
      574 GETTABLEKS                       R53 R42 K36 ["Heading"]
      576 JUMPIFEQKNIL                     R53 ; [+13]
      578 GETUPVAL                         R52 24
      579 GETUPVAL                         R53 28
      580 DUPTABLE                         R54 K67 [{["tag"] = "size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"]}]
      581 GETTABLEKS                       R55 R42 K36 ["Heading"]
      583 SETTABLEKS                       R55 R54 K48 ["Text"]
      585 MOVE                             R55 R51
      586 CALL                             R55 0 1
      587 SETTABLEKS                       R55 R54 K34 ["LayoutOrder"]
      589 CALL                             R52 2 1
      590 MOVE                             R53 R51
      591 CALL                             R53 0 1
      592 DUPTABLE                         R54 K71 [{"Description", "PropertyRows", "DisabledReason"}]
      593 LOADB                            R55 0
      594 GETTABLEKS                       R56 R42 K68 ["Description"]
      596 JUMPIFEQKNIL                     R56 ; [+13]
      598 GETUPVAL                         R55 24
      599 GETUPVAL                         R56 28
      600 DUPTABLE                         R57 K73 [{["tag"] = "size-full-0 auto-xy text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      601 GETTABLEKS                       R58 R42 K68 ["Description"]
      603 SETTABLEKS                       R58 R57 K48 ["Text"]
      605 MOVE                             R58 R51
      606 CALL                             R58 0 1
      607 SETTABLEKS                       R58 R57 K34 ["LayoutOrder"]
      609 CALL                             R55 2 1
      610 SETTABLEKS                       R55 R54 K68 ["Description"]
      612 GETUPVAL                         R55 24
      613 GETUPVAL                         R56 31
      614 GETTABLEKS                       R56 R56 K74 ["PropertyRowsRoot"]
      616 DUPTABLE                         R57 K81 [{"rowDefinitions", "onChange", "isDisabled", "initialValues", "controlsRef", "onBusyChanged", "LayoutOrder"}]
      617 SETTABLEKS                       R25 R57 K75 ["rowDefinitions"]
      619 SETTABLEKS                       R32 R57 K76 ["onChange"]
      621 SETTABLEKS                       R11 R57 K77 ["isDisabled"]
      623 SETTABLEKS                       R19 R57 K78 ["initialValues"]
      625 SETTABLEKS                       R23 R57 K79 ["controlsRef"]
      627 SETTABLEKS                       R22 R57 K80 ["onBusyChanged"]
      629 MOVE                             R58 R51
      630 CALL                             R58 0 1
      631 SETTABLEKS                       R58 R57 K34 ["LayoutOrder"]
      633 CALL                             R55 2 1
      634 SETTABLEKS                       R55 R54 K69 ["PropertyRows"]
      636 LOADB                            R55 0
      637 JUMPIFEQKNIL                     R30 ; [+58]
      639 GETUPVAL                         R55 24
      640 GETUPVAL                         R56 27
      641 DUPTABLE                         R57 K83 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
      642 MOVE                             R58 R51
      643 CALL                             R58 0 1
      644 SETTABLEKS                       R58 R57 K34 ["LayoutOrder"]
      646 DUPTABLE                         R58 K86 [{"ErrorIcon", "ErrorText"}]
      647 GETUPVAL                         R59 24
      648 GETUPVAL                         R60 32
      649 DUPTABLE                         R61 K89 [{"name", "style", "size", "LayoutOrder"}]
      650 GETUPVAL                         R62 21
      651 GETTABLEKS                       R62 R62 K58 ["Enums"]
      653 GETTABLEKS                       R62 R62 K59 ["IconName"]
      655 GETTABLEKS                       R62 R62 K90 ["TriangleExclamation"]
      657 SETTABLEKS                       R62 R61 K87 ["name"]
      659 GETTABLEKS                       R62 R43 K91 ["Color"]
      661 GETTABLEKS                       R62 R62 K92 ["System"]
      663 GETTABLEKS                       R62 R62 K93 ["Warning"]
      665 SETTABLEKS                       R62 R61 K88 ["style"]
      667 GETUPVAL                         R62 21
      668 GETTABLEKS                       R62 R62 K58 ["Enums"]
      670 GETTABLEKS                       R62 R62 K94 ["IconSize"]
      672 GETTABLEKS                       R62 R62 K62 ["XSmall"]
      674 SETTABLEKS                       R62 R61 K53 ["size"]
      676 MOVE                             R62 R51
      677 CALL                             R62 0 1
      678 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      680 CALL                             R59 2 1
      681 SETTABLEKS                       R59 R58 K84 ["ErrorIcon"]
      683 GETUPVAL                         R59 24
      684 GETUPVAL                         R60 28
      685 DUPTABLE                         R61 K96 [{["tag"] = "auto-xy text-body-small text-align-x-left content-system-warning", ["Text"], ["LayoutOrder"]}]
      686 SETTABLEKS                       R30 R61 K48 ["Text"]
      688 MOVE                             R62 R51
      689 CALL                             R62 0 1
      690 SETTABLEKS                       R62 R61 K34 ["LayoutOrder"]
      692 CALL                             R59 2 1
      693 SETTABLEKS                       R59 R58 K85 ["ErrorText"]
      695 CALL                             R55 3 1
      696 SETTABLEKS                       R55 R54 K70 ["DisabledReason"]
      698 DUPTABLE                         R55 K99 [{"Title", "ButtonGroup"}]
      699 SETTABLEKS                       R52 R55 K97 ["Title"]
      701 GETUPVAL                         R56 24
      702 GETUPVAL                         R57 27
      703 DUPTABLE                         R58 K40 [{"tag", "LayoutOrder"}]
      704 NEWTABLE                         R59 4 0
      706 LOADB                            R60 1
      707 SETTABLEKS                       R60 R59 K100 ["row gap-small size-full-0 padding-top-medium"]
      709 GETUPVAL                         R60 19
      710 GETTABLEKS                       R60 R60 K38 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      712 SETTABLEKS                       R60 R59 K101 ["align-x-right auto-y"]
      714 GETUPVAL                         R61 19
      715 GETTABLEKS                       R61 R61 K38 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      717 NOT                              R60 R61
      718 SETTABLEKS                       R60 R59 K102 ["auto-xy"]
      720 SETTABLEKS                       R59 R58 K39 ["tag"]
      722 MOVE                             R59 R51
      723 CALL                             R59 0 1
      724 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      726 DUPTABLE                         R59 K105 [{"SubmitButton", "CancelButton"}]
      727 GETUPVAL                         R60 24
      728 GETUPVAL                         R61 33
      729 DUPTABLE                         R62 K107 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      730 GETTABLEKS                       R63 R42 K103 ["SubmitButton"]
      732 SETTABLEKS                       R63 R62 K106 ["text"]
      734 GETUPVAL                         R63 21
      735 GETTABLEKS                       R63 R63 K58 ["Enums"]
      737 GETTABLEKS                       R63 R63 K61 ["InputSize"]
      739 GETTABLEKS                       R63 R63 K62 ["XSmall"]
      741 SETTABLEKS                       R63 R62 K53 ["size"]
      743 GETUPVAL                         R63 21
      744 GETTABLEKS                       R63 R63 K58 ["Enums"]
      746 GETTABLEKS                       R63 R63 K63 ["ButtonVariant"]
      748 GETTABLEKS                       R63 R63 K108 ["Emphasis"]
      750 SETTABLEKS                       R63 R62 K54 ["variant"]
      752 MOVE                             R63 R11
      753 JUMPIF                           R63 ; [+1]
      754 NOT                              R63 R31
      755 SETTABLEKS                       R63 R62 K77 ["isDisabled"]
      757 SETTABLEKS                       R36 R62 K55 ["onActivated"]
      759 MOVE                             R63 R51
      760 CALL                             R63 0 1
      761 SETTABLEKS                       R63 R62 K34 ["LayoutOrder"]
      763 GETUPVAL                         R63 30
      764 GETTABLEKS                       R63 R63 K65 ["AskInput"]
      766 GETTABLEKS                       R63 R63 K103 ["SubmitButton"]
      768 SETTABLEKS                       R63 R62 K56 ["testId"]
      770 CALL                             R60 2 1
      771 SETTABLEKS                       R60 R59 K103 ["SubmitButton"]
      773 GETUPVAL                         R61 19
      774 GETTABLEKS                       R61 R61 K38 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      776 NOT                              R60 R61
      777 JUMPIFNOT                        R60 ; [+41]
      778 GETUPVAL                         R60 24
      779 GETUPVAL                         R61 33
      780 DUPTABLE                         R62 K107 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      781 GETTABLEKS                       R63 R42 K104 ["CancelButton"]
      783 SETTABLEKS                       R63 R62 K106 ["text"]
      785 GETUPVAL                         R63 21
      786 GETTABLEKS                       R63 R63 K58 ["Enums"]
      788 GETTABLEKS                       R63 R63 K61 ["InputSize"]
      790 GETTABLEKS                       R63 R63 K62 ["XSmall"]
      792 SETTABLEKS                       R63 R62 K53 ["size"]
      794 GETUPVAL                         R63 21
      795 GETTABLEKS                       R63 R63 K58 ["Enums"]
      797 GETTABLEKS                       R63 R63 K63 ["ButtonVariant"]
      799 GETTABLEKS                       R63 R63 K109 ["Standard"]
      801 SETTABLEKS                       R63 R62 K54 ["variant"]
      803 SETTABLEKS                       R11 R62 K77 ["isDisabled"]
      805 SETTABLEKS                       R41 R62 K55 ["onActivated"]
      807 MOVE                             R63 R51
      808 CALL                             R63 0 1
      809 SETTABLEKS                       R63 R62 K34 ["LayoutOrder"]
      811 GETUPVAL                         R63 30
      812 GETTABLEKS                       R63 R63 K65 ["AskInput"]
      814 GETTABLEKS                       R63 R63 K104 ["CancelButton"]
      816 SETTABLEKS                       R63 R62 K56 ["testId"]
      818 CALL                             R60 2 1
      819 SETTABLEKS                       R60 R59 K104 ["CancelButton"]
      821 CALL                             R56 3 1
      822 SETTABLEKS                       R56 R55 K98 ["ButtonGroup"]
      824 GETUPVAL                         R56 19
      825 GETTABLEKS                       R56 R56 K110 ["FFlagAssistantScrollableAskInputForm"]
      827 JUMPIFNOT                        R56 ; [+78]
      828 GETUPVAL                         R56 24
      829 LOADK                            R57 K111 ["ScrollingFrame"]
      830 NEWTABLE                         R58 16 0
      832 NEWCLOSURE                       R61 P20
      833 CAPTURE                          VAL R45
      834 NAMECALL                         R59 R46 K112 ["map"]
      836 CALL                             R59 2 1
      837 SETTABLEKS                       R59 R58 K113 ["Size"]
      839 GETIMPORT                        R59 K117 [Enum.AutomaticSize.Y]
      841 SETTABLEKS                       R59 R58 K118 ["AutomaticCanvasSize"]
      843 GETIMPORT                        R59 K121 [UDim2.new]
      845 LOADN                            R60 0
      846 LOADN                            R61 0
      847 LOADN                            R62 0
      848 LOADN                            R63 0
      849 CALL                             R59 4 1
      850 SETTABLEKS                       R59 R58 K122 ["CanvasSize"]
      852 LOADB                            R59 1
      853 SETTABLEKS                       R59 R58 K123 ["ClipsDescendants"]
      855 GETTABLEKS                       R59 R43 K113 ["Size"]
      857 GETTABLEKS                       R59 R59 K124 ["Size_150"]
      859 SETTABLEKS                       R59 R58 K125 ["ScrollBarThickness"]
      861 GETIMPORT                        R59 K127 [Enum.ScrollingDirection.Y]
      863 SETTABLEKS                       R59 R58 K126 ["ScrollingDirection"]
      865 GETIMPORT                        R59 K130 [Enum.ScrollBarInset.ScrollBar]
      867 SETTABLEKS                       R59 R58 K131 ["VerticalScrollBarInset"]
      869 LOADN                            R59 1
      870 SETTABLEKS                       R59 R58 K132 ["BackgroundTransparency"]
      872 LOADN                            R59 0
      873 SETTABLEKS                       R59 R58 K133 ["BorderSizePixel"]
      875 SETTABLEKS                       R53 R58 K34 ["LayoutOrder"]
      877 SETTABLEKS                       R44 R58 K134 ["ref"]
      879 GETUPVAL                         R59 1
      880 GETTABLEKS                       R59 R59 K135 ["Tag"]
      882 LOADK                            R60 K136 ["data-testid=%*"]
      883 GETUPVAL                         R62 30
      884 GETTABLEKS                       R62 R62 K65 ["AskInput"]
      886 GETTABLEKS                       R62 R62 K137 ["ScrollBody"]
      888 NAMECALL                         R60 R60 K138 ["format"]
      890 CALL                             R60 2 1
      891 SETTABLE                         R60 R58 R59
      892 DUPTABLE                         R59 K140 [{"Content"}]
      893 GETUPVAL                         R60 24
      894 GETUPVAL                         R61 27
      895 DUPTABLE                         R62 K143 [{["tag"] = "col gap-large size-full-0 auto-y", ["onAbsoluteSizeChanged"]}]
      896 SETTABLEKS                       R48 R62 K142 ["onAbsoluteSizeChanged"]
      898 MOVE                             R63 R54
      899 CALL                             R60 3 1
      900 SETTABLEKS                       R60 R59 K139 ["Content"]
      902 CALL                             R56 3 1
      903 SETTABLEKS                       R56 R55 K144 ["Body"]
      905 JUMP                             ; [+7]
      906 MOVE                             R56 R54
      907 LOADNIL                          R57
      908 LOADNIL                          R58
      909 FORGPREP                         R56
      910 SETTABLE                         R60 R55 R59
      911 FORGLOOP                         R56 2 ; [-2]
      913 GETUPVAL                         R56 24
      914 GETUPVAL                         R57 27
      915 DUPTABLE                         R58 K146 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      916 GETTABLEKS                       R59 R0 K34 ["LayoutOrder"]
      918 SETTABLEKS                       R59 R58 K34 ["LayoutOrder"]
      920 MOVE                             R59 R55
      921 CALL                             R56 3 -1
      922 RETURN                           R56 -1

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
        0 DUPTABLE                         R0 K1 [{"Preparing"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["AskInput"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 RETURN                           R0 1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_52]
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

PROTO_54:
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
       44 GETTABLEKS                       R9 R0 K15 ["Components"]
       46 GETTABLEKS                       R9 R9 K17 ["Contexts"]
       48 GETTABLEKS                       R9 R9 K18 ["Actions"]
       50 GETTABLEKS                       R9 R9 K19 ["AnimationGenActionsContext"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R0 K20 ["Util"]
       57 GETTABLEKS                       R10 R10 K21 ["AskInput"]
       59 GETTABLEKS                       R10 R10 K22 ["AskInputChannel"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R0 K15 ["Components"]
       66 GETTABLEKS                       R11 R11 K21 ["AskInput"]
       68 GETTABLEKS                       R11 R11 K23 ["AskInputImageWizard"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K10 [require]
       73 GETTABLEKS                       R12 R0 K20 ["Util"]
       75 GETTABLEKS                       R12 R12 K21 ["AskInput"]
       77 GETTABLEKS                       R12 R12 K24 ["AskInputTypes"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K10 [require]
       82 GETTABLEKS                       R13 R0 K20 ["Util"]
       84 GETTABLEKS                       R13 R13 K25 ["AnimationGen"]
       86 GETTABLEKS                       R13 R13 K26 ["BlendSettings"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K10 [require]
       91 GETTABLEKS                       R14 R0 K15 ["Components"]
       93 GETTABLEKS                       R14 R14 K17 ["Contexts"]
       95 GETTABLEKS                       R14 R14 K18 ["Actions"]
       97 GETTABLEKS                       R14 R14 K27 ["ChannelActionsContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K28 ["Flags"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K10 [require]
      107 GETTABLEKS                       R16 R0 K20 ["Util"]
      109 GETTABLEKS                       R16 R16 K29 ["ImageContentStore"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K10 [require]
      114 GETTABLEKS                       R17 R0 K15 ["Components"]
      116 GETTABLEKS                       R17 R17 K17 ["Contexts"]
      118 GETTABLEKS                       R17 R17 K30 ["InputAreaOverrideContext"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K10 [require]
      123 GETTABLEKS                       R18 R0 K15 ["Components"]
      125 GETTABLEKS                       R18 R18 K17 ["Contexts"]
      127 GETTABLEKS                       R18 R18 K31 ["PacketReceivedContext"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K10 [require]
      132 GETTABLEKS                       R19 R0 K15 ["Components"]
      134 GETTABLEKS                       R19 R19 K32 ["PropertyRows"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K10 [require]
      139 GETTABLEKS                       R20 R0 K20 ["Util"]
      141 GETTABLEKS                       R20 R20 K25 ["AnimationGen"]
      143 GETTABLEKS                       R20 R20 K33 ["ReachSteps"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K10 [require]
      148 GETTABLEKS                       R21 R0 K15 ["Components"]
      150 GETTABLEKS                       R21 R21 K17 ["Contexts"]
      152 GETTABLEKS                       R21 R21 K18 ["Actions"]
      154 GETTABLEKS                       R21 R21 K34 ["SegmentMeshActionsContext"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K10 [require]
      159 GETTABLEKS                       R22 R0 K15 ["Components"]
      161 GETTABLEKS                       R22 R22 K35 ["ShimmerGradient"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K10 [require]
      166 GETTABLEKS                       R23 R0 K20 ["Util"]
      168 GETTABLEKS                       R23 R23 K36 ["SlashCommandConfiguration"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K10 [require]
      173 GETTABLEKS                       R24 R0 K20 ["Util"]
      175 GETTABLEKS                       R24 R24 K37 ["TestIds"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K10 [require]
      180 GETTABLEKS                       R25 R0 K15 ["Components"]
      182 GETTABLEKS                       R25 R25 K17 ["Contexts"]
      184 GETTABLEKS                       R25 R25 K18 ["Actions"]
      186 GETTABLEKS                       R25 R25 K38 ["TextureGenActionsContext"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K10 [require]
      191 GETTABLEKS                       R26 R0 K39 ["Resources"]
      193 GETTABLEKS                       R26 R26 K40 ["Localization"]
      195 GETTABLEKS                       R26 R26 K41 ["Translator"]
      197 CALL                             R25 1 1
      198 GETIMPORT                        R26 K10 [require]
      200 GETTABLEKS                       R27 R0 K42 ["Types"]
      202 CALL                             R26 1 1
      203 GETIMPORT                        R27 K10 [require]
      205 GETTABLEKS                       R28 R0 K20 ["Util"]
      207 GETTABLEKS                       R28 R28 K21 ["AskInput"]
      209 GETTABLEKS                       R28 R28 K43 ["Validation"]
      211 CALL                             R27 1 1
      212 GETIMPORT                        R28 K10 [require]
      214 GETTABLEKS                       R29 R0 K20 ["Util"]
      216 GETTABLEKS                       R29 R29 K21 ["AskInput"]
      218 GETTABLEKS                       R29 R29 K44 ["ValidationReason"]
      220 CALL                             R28 1 1
      221 GETIMPORT                        R29 K10 [require]
      223 GETTABLEKS                       R30 R0 K20 ["Util"]
      225 GETTABLEKS                       R30 R30 K45 ["WidgetUtils"]
      227 CALL                             R29 1 1
      228 GETIMPORT                        R30 K10 [require]
      230 GETTABLEKS                       R31 R0 K20 ["Util"]
      232 GETTABLEKS                       R31 R31 K25 ["AnimationGen"]
      234 GETTABLEKS                       R31 R31 K46 ["editPlaybackId"]
      236 CALL                             R30 1 1
      237 GETIMPORT                        R31 K10 [require]
      239 GETTABLEKS                       R32 R0 K47 ["Hooks"]
      241 GETTABLEKS                       R32 R32 K48 ["useLatest"]
      243 CALL                             R31 1 1
      244 GETIMPORT                        R32 K10 [require]
      246 GETTABLEKS                       R33 R0 K47 ["Hooks"]
      248 GETTABLEKS                       R33 R33 K49 ["useOverrideMaxHeight"]
      250 CALL                             R32 1 1
      251 GETTABLEKS                       R33 R29 K50 ["ToolStatus"]
      253 GETTABLEKS                       R34 R4 K51 ["Button"]
      255 GETTABLEKS                       R35 R4 K52 ["Icon"]
      257 GETTABLEKS                       R36 R4 K53 ["IconButton"]
      259 GETTABLEKS                       R37 R4 K54 ["Text"]
      261 GETTABLEKS                       R38 R4 K55 ["View"]
      263 GETTABLEKS                       R39 R5 K56 ["createElement"]
      265 GETTABLEKS                       R40 R6 K57 ["createNextOrder"]
      267 GETTABLEKS                       R41 R11 K58 ["INPUT_TYPE"]
      269 GETTABLEKS                       R42 R18 K59 ["ROW_TYPES"]
      271 DUPTABLE                         R43 K62 [{["Form"] = "Form", ["Picker"] = "Picker"}]
      272 NEWTABLE                         R44 0 0
      274 DUPCLOSURE                       R45 K63 [PROTO_0]
      275 CAPTURE                          VAL R28
      276 DUPCLOSURE                       R46 K64 [PROTO_1]
      277 CAPTURE                          VAL R28
      278 DUPCLOSURE                       R47 K65 [PROTO_2]
      279 CAPTURE                          VAL R25
      280 NEWTABLE                         R48 8 0
      282 GETTABLEKS                       R49 R41 K66 ["Array"]
      284 GETTABLEKS                       R50 R42 K67 ["PartNames"]
      286 SETTABLE                         R50 R48 R49
      287 GETTABLEKS                       R49 R41 K68 ["Boolean"]
      289 GETTABLEKS                       R50 R42 K68 ["Boolean"]
      291 SETTABLE                         R50 R48 R49
      292 GETTABLEKS                       R49 R41 K69 ["Image"]
      294 GETTABLEKS                       R50 R42 K70 ["HintImage"]
      296 SETTABLE                         R50 R48 R49
      297 GETTABLEKS                       R49 R41 K71 ["Instance"]
      299 GETTABLEKS                       R50 R42 K71 ["Instance"]
      301 SETTABLE                         R50 R48 R49
      302 GETTABLEKS                       R49 R41 K72 ["Number"]
      304 GETTABLEKS                       R50 R42 K72 ["Number"]
      306 SETTABLE                         R50 R48 R49
      307 GETTABLEKS                       R49 R41 K73 ["Option"]
      309 GETTABLEKS                       R50 R42 K74 ["Select"]
      311 SETTABLE                         R50 R48 R49
      312 GETTABLEKS                       R49 R41 K75 ["String"]
      314 GETTABLEKS                       R50 R42 K75 ["String"]
      316 SETTABLE                         R50 R48 R49
      317 NEWTABLE                         R49 8 0
      319 GETTABLEKS                       R50 R42 K75 ["String"]
      321 DUPCLOSURE                       R51 K76 [PROTO_3]
      322 CAPTURE                          VAL R42
      323 CAPTURE                          VAL R14
      324 CAPTURE                          VAL R28
      325 SETTABLE                         R51 R49 R50
      326 GETTABLEKS                       R50 R42 K72 ["Number"]
      328 DUPCLOSURE                       R51 K77 [PROTO_4]
      329 CAPTURE                          VAL R41
      330 CAPTURE                          VAL R42
      331 CAPTURE                          VAL R27
      332 SETTABLE                         R51 R49 R50
      333 GETTABLEKS                       R50 R42 K78 ["ClipPreview"]
      335 DUPCLOSURE                       R51 K79 [PROTO_5]
      336 CAPTURE                          VAL R42
      337 SETTABLE                         R51 R49 R50
      338 GETTABLEKS                       R50 R42 K80 ["EditScrubbar"]
      340 DUPCLOSURE                       R51 K81 [PROTO_6]
      341 CAPTURE                          VAL R42
      342 SETTABLE                         R51 R49 R50
      343 GETTABLEKS                       R50 R42 K74 ["Select"]
      345 DUPCLOSURE                       R51 K82 [PROTO_7]
      346 CAPTURE                          VAL R41
      347 CAPTURE                          VAL R42
      348 CAPTURE                          VAL R46
      349 CAPTURE                          VAL R47
      350 SETTABLE                         R51 R49 R50
      351 GETTABLEKS                       R50 R42 K71 ["Instance"]
      353 DUPCLOSURE                       R51 K83 [PROTO_9]
      354 CAPTURE                          VAL R42
      355 SETTABLE                         R51 R49 R50
      356 GETTABLEKS                       R50 R42 K67 ["PartNames"]
      358 DUPCLOSURE                       R51 K84 [PROTO_10]
      359 CAPTURE                          VAL R41
      360 CAPTURE                          VAL R42
      361 CAPTURE                          VAL R47
      362 CAPTURE                          VAL R27
      363 SETTABLE                         R51 R49 R50
      364 GETTABLEKS                       R50 R14 K85 ["FFlagAssistantAddNumberInput"]
      366 JUMPIFNOT                        R50 ; [+7]
      367 GETTABLEKS                       R50 R42 K86 ["NumberInput"]
      369 DUPCLOSURE                       R51 K87 [PROTO_11]
      370 CAPTURE                          VAL R41
      371 CAPTURE                          VAL R42
      372 CAPTURE                          VAL R27
      373 SETTABLE                         R51 R49 R50
      374 DUPCLOSURE                       R50 K88 [PROTO_12]
      375 DUPCLOSURE                       R51 K89 [PROTO_13]
      376 CAPTURE                          VAL R22
      377 CAPTURE                          VAL R48
      378 CAPTURE                          VAL R42
      379 CAPTURE                          VAL R28
      380 CAPTURE                          VAL R49
      381 DUPCLOSURE                       R52 K90 [PROTO_14]
      382 CAPTURE                          VAL R51
      383 CAPTURE                          VAL R22
      384 CAPTURE                          VAL R50
      385 DUPCLOSURE                       R53 K91 [PROTO_17]
      386 CAPTURE                          VAL R44
      387 CAPTURE                          VAL R29
      388 CAPTURE                          VAL R33
      389 CAPTURE                          VAL R22
      390 CAPTURE                          VAL R5
      391 CAPTURE                          VAL R14
      392 CAPTURE                          VAL R28
      393 CAPTURE                          VAL R25
      394 CAPTURE                          VAL R52
      395 CAPTURE                          VAL R40
      396 CAPTURE                          VAL R39
      397 CAPTURE                          VAL R38
      398 CAPTURE                          VAL R37
      399 CAPTURE                          VAL R7
      400 CAPTURE                          VAL R23
      401 CAPTURE                          VAL R18
      402 CAPTURE                          VAL R6
      403 DUPCLOSURE                       R54 K92 [PROTO_48]
      404 CAPTURE                          VAL R44
      405 CAPTURE                          VAL R5
      406 CAPTURE                          VAL R27
      407 CAPTURE                          VAL R22
      408 CAPTURE                          VAL R17
      409 CAPTURE                          VAL R13
      410 CAPTURE                          VAL R24
      411 CAPTURE                          VAL R20
      412 CAPTURE                          VAL R8
      413 CAPTURE                          VAL R19
      414 CAPTURE                          VAL R30
      415 CAPTURE                          VAL R12
      416 CAPTURE                          VAL R51
      417 CAPTURE                          VAL R50
      418 CAPTURE                          VAL R41
      419 CAPTURE                          VAL R28
      420 CAPTURE                          VAL R9
      421 CAPTURE                          VAL R15
      422 CAPTURE                          VAL R1
      423 CAPTURE                          VAL R14
      424 CAPTURE                          VAL R25
      425 CAPTURE                          VAL R4
      426 CAPTURE                          VAL R32
      427 CAPTURE                          VAL R52
      428 CAPTURE                          VAL R39
      429 CAPTURE                          VAL R10
      430 CAPTURE                          VAL R40
      431 CAPTURE                          VAL R38
      432 CAPTURE                          VAL R37
      433 CAPTURE                          VAL R36
      434 CAPTURE                          VAL R23
      435 CAPTURE                          VAL R18
      436 CAPTURE                          VAL R35
      437 CAPTURE                          VAL R34
      438 DUPCLOSURE                       R55 K93 [PROTO_51]
      439 CAPTURE                          VAL R5
      440 CAPTURE                          VAL R16
      441 CAPTURE                          VAL R31
      442 CAPTURE                          VAL R39
      443 CAPTURE                          VAL R54
      444 CAPTURE                          VAL R3
      445 DUPCLOSURE                       R56 K94 [PROTO_53]
      446 CAPTURE                          VAL R5
      447 CAPTURE                          VAL R25
      448 CAPTURE                          VAL R40
      449 CAPTURE                          VAL R39
      450 CAPTURE                          VAL R38
      451 CAPTURE                          VAL R37
      452 CAPTURE                          VAL R21
      453 DUPCLOSURE                       R57 K95 [PROTO_54]
      454 CAPTURE                          VAL R29
      455 CAPTURE                          VAL R33
      456 CAPTURE                          VAL R39
      457 CAPTURE                          VAL R55
      458 CAPTURE                          VAL R53
      459 CAPTURE                          VAL R56
      460 DUPTABLE                         R58 K98 [{["Type"] = "AskInput", ["ContentWidget"]}]
      461 GETTABLEKS                       R59 R5 K99 ["memo"]
      463 MOVE                             R60 R57
      464 CALL                             R59 1 1
      465 SETTABLEKS                       R59 R58 K97 ["ContentWidget"]
      467 RETURN                           R58 1
