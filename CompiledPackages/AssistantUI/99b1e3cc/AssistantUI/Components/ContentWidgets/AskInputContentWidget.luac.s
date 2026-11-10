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
        4 DUPTABLE                         R1 K1 [{"body"}]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R4 R0 K0 ["body"]
        8 GETTABLEKS                       R4 R4 K2 ["namespace"]
       10 GETTABLEKS                       R5 R0 K0 ["body"]
       12 GETTABLEKS                       R5 R5 K3 ["key"]
       14 NAMECALL                         R2 R2 K4 ["getText"]
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K0 ["body"]
       19 RETURN                           R1 1

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
       23 GETTABLEKS                       R4 R2 K7 ["generateButtonId"]
       25 SETTABLEKS                       R4 R3 K7 ["generateButtonId"]
       27 RETURN                           R3 1

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
       40 GETTABLEKS                       R5 R2 K10 ["infoPopover"]
       42 JUMPIFNOTEQKNIL                  R5 ; [+3]
       44 LOADNIL                          R4
       45 JUMP                             ; [+15]
       46 DUPTABLE                         R4 K12 [{"body"}]
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R8 R5 K11 ["body"]
       50 GETTABLEKS                       R8 R8 K13 ["namespace"]
       52 GETTABLEKS                       R9 R5 K11 ["body"]
       54 GETTABLEKS                       R9 R9 K14 ["key"]
       56 NAMECALL                         R6 R6 K15 ["getText"]
       58 CALL                             R6 3 1
       59 SETTABLEKS                       R6 R4 K11 ["body"]
       61 SETTABLEKS                       R4 R3 K10 ["infoPopover"]
       63 RETURN                           R3 1

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
       34 GETTABLEKS                       R4 R0 K9 ["min"]
       36 GETTABLEKS                       R5 R0 K10 ["max"]
       38 JUMPIFNOTEQKNIL                  R4 ; [+3]
       40 JUMPIFEQKNIL                     R5 ; [+6]
       42 SETTABLEKS                       R4 R3 K11 ["minParts"]
       44 SETTABLEKS                       R5 R3 K12 ["maxParts"]
       46 RETURN                           R3 1
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R6 R6 K13 ["getFieldRange"]
       50 MOVE                             R7 R1
       51 GETTABLEKS                       R8 R0 K14 ["name"]
       53 CALL                             R6 2 1
       54 JUMPIFEQKNIL                     R6 ; [+9]
       56 GETTABLEKS                       R7 R6 K9 ["min"]
       58 SETTABLEKS                       R7 R3 K11 ["minParts"]
       60 GETTABLEKS                       R7 R6 K10 ["max"]
       62 SETTABLEKS                       R7 R3 K12 ["maxParts"]
       64 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R9 R0 K0 ["inputType"]
        2 GETUPVAL                         R10 0
        3 GETTABLEKS                       R10 R10 K1 ["Vector3"]
        5 JUMPIFEQ                         R9 R10 ; [+2]
        7 LOADB                            R8 0 +1
        8 LOADB                            R8 1
        9 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       11 LOADK                            R9 K2 ["Expected Vector3 input type"]
       12 GETIMPORT                        R7 K4 [assert]
       14 CALL                             R7 2 0
       15 GETTABLEKS                       R9 R3 K5 ["type"]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K1 ["Vector3"]
       20 JUMPIFEQ                         R9 R10 ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       26 LOADK                            R9 K6 ["Expected Vector3 row type"]
       27 GETIMPORT                        R7 K4 [assert]
       29 CALL                             R7 2 0
       30 GETTABLEKS                       R7 R2 K7 ["liveChannelBridge"]
       32 JUMPIFNOT                        R7 ; [+2]
       33 GETTABLE                         R8 R6 R7
       34 JUMP                             ; [+1]
       35 LOADNIL                          R8
       36 JUMPIFNOT                        R8 ; [+5]
       37 MOVE                             R9 R8
       38 GETTABLEKS                       R10 R0 K8 ["name"]
       40 CALL                             R9 1 1
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R9 R2 K9 ["liveChannel"]
       44 SETTABLEKS                       R9 R3 K9 ["liveChannel"]
       46 GETTABLEKS                       R9 R2 K10 ["roundToWholeStud"]
       48 SETTABLEKS                       R9 R3 K10 ["roundToWholeStud"]
       50 RETURN                           R3 1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["getRowPresentation"]
        3 MOVE                             R7 R1
        4 GETTABLEKS                       R8 R0 K1 ["name"]
        6 CALL                             R6 2 1
        7 GETTABLEKS                       R7 R6 K2 ["renderer"]
        9 JUMPIF                           R7 ; [+8]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R0 K3 ["inputType"]
       13 GETTABLE                         R7 R8 R9
       14 JUMPIF                           R7 ; [+3]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K4 ["Warning"]
       18 DUPTABLE                         R8 K16 [{["type"], ["name"], ["label"], ["parentRow"], ["initialValue"], ["initialVisible"] = , ["initialInteractable"] = , ["initialEnabled"] = , ["initialActive"] = , ["internal"], ["required"]}]
       19 SETTABLEKS                       R7 R8 K5 ["type"]
       21 GETTABLEKS                       R9 R0 K1 ["name"]
       23 SETTABLEKS                       R9 R8 K1 ["name"]
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K17 ["resolveText"]
       28 GETTABLEKS                       R10 R6 K6 ["label"]
       30 CALL                             R9 1 1
       31 JUMPIF                           R9 ; [+2]
       32 GETTABLEKS                       R9 R0 K1 ["name"]
       34 SETTABLEKS                       R9 R8 K6 ["label"]
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K18 ["FFlagAssistantAskInputExpandableRows"]
       39 JUMPIFNOT                        R10 ; [+3]
       40 GETTABLEKS                       R9 R6 K7 ["parentRow"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R9
       44 SETTABLEKS                       R9 R8 K7 ["parentRow"]
       46 GETTABLEKS                       R9 R0 K8 ["initialValue"]
       48 SETTABLEKS                       R9 R8 K8 ["initialValue"]
       50 GETTABLEKS                       R9 R6 K14 ["internal"]
       52 SETTABLEKS                       R9 R8 K14 ["internal"]
       54 GETTABLEKS                       R9 R0 K15 ["required"]
       56 SETTABLEKS                       R9 R8 K15 ["required"]
       58 GETUPVAL                         R10 5
       59 GETTABLE                         R9 R10 R7
       60 JUMPIFNOT                        R9 ; [+19]
       61 MOVE                             R10 R9
       62 MOVE                             R11 R0
       63 MOVE                             R12 R2
       64 MOVE                             R13 R6
       65 MOVE                             R14 R8
       66 MOVE                             R15 R3
       67 JUMPIF                           R15 ; [+2]
       68 NEWTABLE                         R15 0 0
       70 MOVE                             R16 R4
       71 JUMPIF                           R16 ; [+2]
       72 NEWTABLE                         R16 0 0
       74 MOVE                             R17 R5
       75 JUMPIF                           R17 ; [+2]
       76 NEWTABLE                         R17 0 0
       78 CALL                             R10 7 1
       79 MOVE                             R8 R10
       80 RETURN                           R8 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 3
        7 DUPTABLE                         R4 K2 [{[1] = True}]
        8 CALL                             R0 4 1
        9 RETURN                           R0 1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["desugarFields"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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
       13 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+3]
       15 MOVE                             R2 R1
       16 RETURN                           R2 1
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["updateUpscalePreview"]
       10 DUPTABLE                         R5 K2 [{"formValues"}]
       11 DUPTABLE                         R6 K8 [{"armsReach", "legsReach", "r6Blend", "upperBodyBlend", "lowerBodyBlend"}]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K9 ["ArmsReach"]
       15 JUMPIFNOTEQ                      R8 R0 ; [+3]
       17 MOVE                             R9 R1
       18 JUMP                             ; [+3]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R8
       21 CALL                             R9 1 1
       22 FASTCALL1                        TYPEOF R9 ; [+3]
       23 MOVE                             R11 R9
       24 GETIMPORT                        R10 K11 [typeof]
       26 CALL                             R10 1 1
       27 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+3]
       29 MOVE                             R7 R9
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 SETTABLEKS                       R7 R6 K3 ["armsReach"]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K13 ["LegsReach"]
       37 JUMPIFNOTEQ                      R8 R0 ; [+3]
       39 MOVE                             R9 R1
       40 JUMP                             ; [+3]
       41 MOVE                             R9 R2
       42 MOVE                             R10 R8
       43 CALL                             R9 1 1
       44 FASTCALL1                        TYPEOF R9 ; [+3]
       45 MOVE                             R11 R9
       46 GETIMPORT                        R10 K11 [typeof]
       48 CALL                             R10 1 1
       49 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+3]
       51 MOVE                             R7 R9
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 SETTABLEKS                       R7 R6 K4 ["legsReach"]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K14 ["R6Blend"]
       59 JUMPIFNOTEQ                      R8 R0 ; [+3]
       61 MOVE                             R9 R1
       62 JUMP                             ; [+3]
       63 MOVE                             R9 R2
       64 MOVE                             R10 R8
       65 CALL                             R9 1 1
       66 FASTCALL1                        TYPEOF R9 ; [+3]
       67 MOVE                             R11 R9
       68 GETIMPORT                        R10 K11 [typeof]
       70 CALL                             R10 1 1
       71 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+3]
       73 MOVE                             R7 R9
       74 JUMP                             ; [+1]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K5 ["r6Blend"]
       78 GETUPVAL                         R8 1
       79 GETTABLEKS                       R8 R8 K15 ["UpperBodyBlend"]
       81 JUMPIFNOTEQ                      R8 R0 ; [+3]
       83 MOVE                             R9 R1
       84 JUMP                             ; [+3]
       85 MOVE                             R9 R2
       86 MOVE                             R10 R8
       87 CALL                             R9 1 1
       88 FASTCALL1                        TYPEOF R9 ; [+3]
       89 MOVE                             R11 R9
       90 GETIMPORT                        R10 K11 [typeof]
       92 CALL                             R10 1 1
       93 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+3]
       95 MOVE                             R7 R9
       96 JUMP                             ; [+1]
       97 LOADNIL                          R7
       98 SETTABLEKS                       R7 R6 K6 ["upperBodyBlend"]
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K16 ["LowerBodyBlend"]
      103 JUMPIFNOTEQ                      R8 R0 ; [+3]
      105 MOVE                             R9 R1
      106 JUMP                             ; [+3]
      107 MOVE                             R9 R2
      108 MOVE                             R10 R8
      109 CALL                             R9 1 1
      110 FASTCALL1                        TYPEOF R9 ; [+3]
      111 MOVE                             R11 R9
      112 GETIMPORT                        R10 K11 [typeof]
      114 CALL                             R10 1 1
      115 JUMPIFNOTEQKS                    R10 K12 ["number"] ; [+3]
      117 MOVE                             R7 R9
      118 JUMP                             ; [+1]
      119 LOADNIL                          R7
      120 SETTABLEKS                       R7 R6 K7 ["lowerBodyBlend"]
      122 SETTABLEKS                       R6 R5 K1 ["formValues"]
      124 CALL                             R4 1 0
      125 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Configs"]
        3 GETTABLEKS                       R0 R0 K1 ["AnimationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["row"]
        7 NEWTABLE                         R1 1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["ValueChangedAction"]
       12 GETTABLEKS                       R2 R2 K4 ["AnimationGenUpscaleForm"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 SETTABLE                         R3 R1 R2
       18 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["updateSceneBoxFieldAsync"]
        7 DUPTABLE                         R3 K6 [{"requestId", "field", "value"}]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K3 ["requestId"]
       11 GETUPVAL                         R4 2
       12 SETTABLEKS                       R4 R3 K4 ["field"]
       14 SETTABLEKS                       R0 R3 K5 ["value"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R1 K4 [{"scope", "channelId", "field", "onCommit"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["Scope"]
        4 SETTABLEKS                       R2 R1 K0 ["scope"]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K1 ["channelId"]
        9 SETTABLEKS                       R0 R1 K2 ["field"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K3 ["onCommit"]
       17 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U3
       12 DUPTABLE                         R4 K3 [{"x", "y", "z"}]
       13 GETTABLEKS                       R6 R1 K0 ["x"]
       15 DUPTABLE                         R5 K8 [{"scope", "channelId", "field", "onCommit"}]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K9 ["Scope"]
       19 SETTABLEKS                       R7 R5 K4 ["scope"]
       21 SETTABLEKS                       R2 R5 K5 ["channelId"]
       23 SETTABLEKS                       R6 R5 K6 ["field"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R6
       29 SETTABLEKS                       R7 R5 K7 ["onCommit"]
       31 SETTABLEKS                       R5 R4 K0 ["x"]
       33 GETTABLEKS                       R6 R1 K1 ["y"]
       35 DUPTABLE                         R5 K8 [{"scope", "channelId", "field", "onCommit"}]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K9 ["Scope"]
       39 SETTABLEKS                       R7 R5 K4 ["scope"]
       41 SETTABLEKS                       R2 R5 K5 ["channelId"]
       43 SETTABLEKS                       R6 R5 K6 ["field"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R7 R5 K7 ["onCommit"]
       51 SETTABLEKS                       R5 R4 K1 ["y"]
       53 GETTABLEKS                       R6 R1 K2 ["z"]
       55 DUPTABLE                         R5 K8 [{"scope", "channelId", "field", "onCommit"}]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K9 ["Scope"]
       59 SETTABLEKS                       R7 R5 K4 ["scope"]
       61 SETTABLEKS                       R2 R5 K5 ["channelId"]
       63 SETTABLEKS                       R6 R5 K6 ["field"]
       65 NEWCLOSURE                       R7 P1
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R7 R5 K7 ["onCommit"]
       71 SETTABLEKS                       R5 R4 K2 ["z"]
       73 RETURN                           R4 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Configs"]
        3 GETTABLEKS                       R0 R0 K1 ["GenerateSceneBounds"]
        5 GETTABLEKS                       R0 R0 K2 ["row"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["Field"]
       10 NEWTABLE                         R2 2 0
       12 GETTABLEKS                       R3 R0 K4 ["Size"]
       14 DUPTABLE                         R4 K8 [{"x", "y", "z"}]
       15 GETTABLEKS                       R5 R1 K9 ["SizeX"]
       17 SETTABLEKS                       R5 R4 K5 ["x"]
       19 GETTABLEKS                       R5 R1 K10 ["SizeY"]
       21 SETTABLEKS                       R5 R4 K6 ["y"]
       23 GETTABLEKS                       R5 R1 K11 ["SizeZ"]
       25 SETTABLEKS                       R5 R4 K7 ["z"]
       27 SETTABLE                         R4 R2 R3
       28 GETTABLEKS                       R3 R0 K12 ["Position"]
       30 DUPTABLE                         R4 K8 [{"x", "y", "z"}]
       31 GETTABLEKS                       R5 R1 K13 ["PositionX"]
       33 SETTABLEKS                       R5 R4 K5 ["x"]
       35 GETTABLEKS                       R5 R1 K14 ["PositionY"]
       37 SETTABLEKS                       R5 R4 K6 ["y"]
       39 GETTABLEKS                       R5 R1 K15 ["PositionZ"]
       41 SETTABLEKS                       R5 R4 K7 ["z"]
       43 SETTABLE                         R4 R2 R3
       44 NEWTABLE                         R3 1 0
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K16 ["LiveChannelBridge"]
       49 GETTABLEKS                       R4 R4 K17 ["LayoutGenSceneBox"]
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U3
       56 SETTABLE                         R5 R3 R4
       57 RETURN                           R3 1

PROTO_30:
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

PROTO_31:
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
       17 GETUPVAL                         R15 6
       18 CALL                             R9 6 1
       19 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       21 MOVE                             R8 R0
       22 GETIMPORT                        R7 K4 [table.insert]
       24 CALL                             R7 2 0
       25 GETTABLEKS                       R7 R6 K5 ["name"]
       27 GETTABLEKS                       R8 R6 K6 ["initialValue"]
       29 SETTABLE                         R8 R1 R7
       30 FORGLOOP                         R2 2 ; [-20]
       32 GETUPVAL                         R2 7
       33 MOVE                             R3 R0
       34 GETUPVAL                         R4 8
       35 MOVE                             R5 R1
       36 DUPTABLE                         R6 K9 [{["isSubmitted"] = False}]
       37 CALL                             R2 4 0
       38 RETURN                           R0 1

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAskInputFooterResolver"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 DUPTABLE                         R0 K4 [{["isSubmitted"] = False, ["rowStatus"]}]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K3 ["rowStatus"]
        8 RETURN                           R0 1
        9 DUPTABLE                         R0 K5 [{["isSubmitted"] = False}]
       10 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAskInputRequiredMarkers"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["getSubmittedFields"]
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R2 4
       11 GETUPVAL                         R3 5
       12 GETUPVAL                         R4 6
       13 CALL                             R0 4 1
       14 GETUPVAL                         R1 7
       15 GETTABLEKS                       R1 R1 K2 ["desugarFields"]
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 8
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_37:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 CALL                             R1 2 3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K1 ["visible"]
       16 JUMPIFEQKNIL                     R6 ; [+7]
       18 GETTABLEKS                       R6 R0 K2 ["setRowVisible"]
       20 MOVE                             R7 R4
       21 GETTABLEKS                       R8 R5 K1 ["visible"]
       23 CALL                             R6 2 0
       24 GETTABLEKS                       R6 R5 K3 ["interactable"]
       26 JUMPIFEQKNIL                     R6 ; [+7]
       28 GETTABLEKS                       R6 R0 K4 ["setRowInteractable"]
       30 MOVE                             R7 R4
       31 GETTABLEKS                       R8 R5 K3 ["interactable"]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R6 R5 K5 ["enabled"]
       36 JUMPIFEQKNIL                     R6 ; [+7]
       38 GETTABLEKS                       R6 R0 K6 ["setRowEnabled"]
       40 MOVE                             R7 R4
       41 GETTABLEKS                       R8 R5 K5 ["enabled"]
       43 CALL                             R6 2 0
       44 GETTABLEKS                       R6 R5 K7 ["active"]
       46 JUMPIFEQKNIL                     R6 ; [+7]
       48 GETTABLEKS                       R6 R0 K8 ["setRowActive"]
       50 MOVE                             R7 R4
       51 GETTABLEKS                       R8 R5 K7 ["active"]
       53 CALL                             R6 2 0
       54 FORGLOOP                         R1 2 ; [-41]
       56 LOADNIL                          R1
       57 RETURN                           R1 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Form"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_50:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+49]
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
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantAskInputFooterResolver"]
       25 JUMPIFNOT                        R4 ; [+13]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K0 ["resolveText"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K4 ["submitText"]
       32 JUMPIF                           R5 ; [+3]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K5 ["confirmButton"]
       36 CALL                             R4 1 1
       37 MOVE                             R2 R4
       38 JUMP                             ; [+8]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K0 ["resolveText"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K5 ["confirmButton"]
       45 CALL                             R4 1 1
       46 MOVE                             R2 R4
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K0 ["resolveText"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K6 ["cancelButton"]
       53 CALL                             R4 1 1
       54 MOVE                             R3 R4
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K7 ["FFlagAssistantResolveHeading"]
       58 JUMPIFNOT                        R4 ; [+28]
       59 GETUPVAL                         R4 0
       60 GETUPVAL                         R5 4
       61 JUMPIFNOTEQKNIL                  R4 ; [+3]
       63 LOADNIL                          R0
       64 JUMP                             ; [+22]
       65 GETTABLEKS                       R7 R4 K8 ["headingResolver"]
       67 JUMPIFNOT                        R7 ; [+9]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K0 ["resolveText"]
       71 GETTABLEKS                       R7 R4 K8 ["headingResolver"]
       73 MOVE                             R8 R5
       74 CALL                             R7 1 -1
       75 CALL                             R6 -1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R6
       78 MOVE                             R0 R6
       79 JUMPIF                           R0 ; [+7]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K0 ["resolveText"]
       83 GETTABLEKS                       R8 R4 K1 ["heading"]
       85 CALL                             R7 1 1
       86 MOVE                             R0 R7
       87 DUPTABLE                         R4 K13 [{"Heading", "Description", "SubmitButton", "CancelButton"}]
       88 SETTABLEKS                       R0 R4 K9 ["Heading"]
       90 SETTABLEKS                       R1 R4 K10 ["Description"]
       92 MOVE                             R5 R2
       93 JUMPIF                           R5 ; [+6]
       94 GETUPVAL                         R5 5
       95 LOADK                            R7 K14 ["AskInput"]
       96 LOADK                            R8 K11 ["SubmitButton"]
       97 NAMECALL                         R5 R5 K15 ["getText"]
       99 CALL                             R5 3 1
      100 SETTABLEKS                       R5 R4 K11 ["SubmitButton"]
      102 MOVE                             R5 R3
      103 JUMPIF                           R5 ; [+6]
      104 GETUPVAL                         R5 5
      105 LOADK                            R7 K14 ["AskInput"]
      106 LOADK                            R8 K12 ["CancelButton"]
      107 NAMECALL                         R5 R5 K15 ["getText"]
      109 CALL                             R5 3 1
      110 SETTABLEKS                       R5 R4 K12 ["CancelButton"]
      112 RETURN                           R4 1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 GETTABLEKS                       R0 R0 K1 ["activateFooterButton"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["id"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
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
       94 GETTABLEKS                       R17 R17 K13 ["useContext"]
       96 GETUPVAL                         R18 9
       97 GETTABLEKS                       R18 R18 K14 ["Context"]
       99 CALL                             R17 1 1
      100 GETUPVAL                         R18 1
      101 GETTABLEKS                       R18 R18 K6 ["useMemo"]
      103 NEWCLOSURE                       R19 P1
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R15
      107 NEWTABLE                         R20 0 2
      109 MOVE                             R21 R14
      110 MOVE                             R22 R15
      111 SETLIST                          R20 R21 2 [1]
      113 CALL                             R18 2 1
      114 GETUPVAL                         R19 1
      115 GETTABLEKS                       R19 R19 K6 ["useMemo"]
      117 NEWCLOSURE                       R20 P2
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          VAL R16
      120 NEWTABLE                         R21 0 1
      122 MOVE                             R22 R16
      123 SETLIST                          R21 R22 1 [1]
      125 CALL                             R19 2 1
      126 JUMPIFNOT                        R2 ; [+3]
      127 GETTABLEKS                       R20 R2 K15 ["liveChannelId"]
      129 JUMPIF                           R20 ; [+1]
      130 LOADNIL                          R20
      131 GETUPVAL                         R21 1
      132 GETTABLEKS                       R21 R21 K6 ["useMemo"]
      134 NEWCLOSURE                       R22 P3
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          UPVAL U10
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R17
      139 NEWTABLE                         R23 0 2
      141 MOVE                             R24 R17
      142 MOVE                             R25 R20
      143 SETLIST                          R23 R24 2 [1]
      145 CALL                             R21 2 1
      146 GETUPVAL                         R22 1
      147 GETTABLEKS                       R22 R22 K16 ["useState"]
      149 NEWCLOSURE                       R23 P4
      150 CAPTURE                          VAL R5
      151 CALL                             R22 1 2
      152 GETUPVAL                         R24 1
      153 GETTABLEKS                       R24 R24 K16 ["useState"]
      155 LOADB                            R25 0
      156 CALL                             R24 1 2
      157 GETUPVAL                         R26 1
      158 GETTABLEKS                       R26 R26 K16 ["useState"]
      160 NEWTABLE                         R27 0 0
      162 CALL                             R26 1 2
      163 GETUPVAL                         R28 1
      164 GETTABLEKS                       R28 R28 K17 ["useRef"]
      166 LOADNIL                          R29
      167 CALL                             R28 1 1
      168 GETUPVAL                         R29 1
      169 GETTABLEKS                       R29 R29 K17 ["useRef"]
      171 LOADNIL                          R30
      172 CALL                             R29 1 1
      173 GETUPVAL                         R30 1
      174 GETTABLEKS                       R30 R30 K6 ["useMemo"]
      176 NEWCLOSURE                       R31 P5
      177 CAPTURE                          VAL R5
      178 CAPTURE                          UPVAL U11
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R21
      184 CAPTURE                          UPVAL U12
      185 CAPTURE                          VAL R10
      186 NEWTABLE                         R32 0 7
      188 MOVE                             R33 R5
      189 MOVE                             R34 R4
      190 MOVE                             R35 R7
      191 MOVE                             R36 R18
      192 MOVE                             R37 R19
      193 MOVE                             R38 R21
      194 MOVE                             R39 R10
      195 SETLIST                          R32 R33 7 [1]
      197 CALL                             R30 2 1
      198 GETUPVAL                         R31 1
      199 GETTABLEKS                       R31 R31 K6 ["useMemo"]
      201 NEWCLOSURE                       R32 P6
      202 CAPTURE                          VAL R5
      203 CAPTURE                          UPVAL U13
      204 NEWTABLE                         R33 0 1
      206 MOVE                             R34 R5
      207 SETLIST                          R33 R34 1 [1]
      209 CALL                             R31 2 1
      210 GETUPVAL                         R32 1
      211 GETTABLEKS                       R32 R32 K16 ["useState"]
      213 LOADK                            R33 K18 ["Form"]
      214 CALL                             R32 1 2
      215 GETUPVAL                         R34 1
      216 GETTABLEKS                       R34 R34 K6 ["useMemo"]
      218 NEWCLOSURE                       R35 P7
      219 CAPTURE                          UPVAL U14
      220 CAPTURE                          VAL R26
      221 NEWTABLE                         R36 0 1
      223 MOVE                             R37 R26
      224 SETLIST                          R36 R37 1 [1]
      226 CALL                             R34 2 1
      227 GETUPVAL                         R35 1
      228 GETTABLEKS                       R35 R35 K6 ["useMemo"]
      230 NEWCLOSURE                       R36 P8
      231 CAPTURE                          UPVAL U14
      232 CAPTURE                          VAL R7
      233 CAPTURE                          UPVAL U3
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R5
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R34
      238 CAPTURE                          UPVAL U2
      239 CAPTURE                          VAL R6
      240 NEWTABLE                         R37 0 6
      242 MOVE                             R38 R4
      243 MOVE                             R39 R5
      244 MOVE                             R40 R22
      245 MOVE                             R41 R34
      246 MOVE                             R42 R6
      247 MOVE                             R43 R7
      248 SETLIST                          R37 R38 6 [1]
      250 CALL                             R35 2 1
      251 GETUPVAL                         R36 1
      252 GETTABLEKS                       R36 R36 K6 ["useMemo"]
      254 NEWCLOSURE                       R37 P9
      255 CAPTURE                          VAL R35
      256 CAPTURE                          UPVAL U2
      257 CAPTURE                          VAL R22
      258 CAPTURE                          UPVAL U15
      259 CAPTURE                          VAL R4
      260 NEWTABLE                         R38 0 3
      262 MOVE                             R39 R35
      263 MOVE                             R40 R22
      264 MOVE                             R41 R4
      265 SETLIST                          R38 R39 3 [1]
      267 CALL                             R36 2 2
      268 GETUPVAL                         R39 14
      269 GETTABLEKS                       R39 R39 K19 ["FFlagAssistantAskInputFooterResolver"]
      271 JUMPIFNOT                        R39 ; [+4]
      272 JUMPIFNOT                        R8 ; [+3]
      273 GETTABLEKS                       R38 R8 K20 ["footerResolver"]
      275 JUMP                             ; [+1]
      276 LOADNIL                          R38
      277 GETUPVAL                         R39 1
      278 GETTABLEKS                       R39 R39 K6 ["useMemo"]
      280 NEWCLOSURE                       R40 P10
      281 CAPTURE                          VAL R38
      282 CAPTURE                          VAL R22
      283 CAPTURE                          VAL R34
      284 NEWTABLE                         R41 0 3
      286 MOVE                             R42 R38
      287 MOVE                             R43 R22
      288 MOVE                             R44 R34
      289 SETLIST                          R41 R42 3 [1]
      291 CALL                             R39 2 1
      292 GETUPVAL                         R41 14
      293 GETTABLEKS                       R41 R41 K19 ["FFlagAssistantAskInputFooterResolver"]
      295 JUMPIFNOT                        R41 ; [+8]
      296 MOVE                             R40 R36
      297 JUMPIFNOT                        R40 ; [+9]
      298 NOT                              R40 R24
      299 JUMPIFNOT                        R40 ; [+7]
      300 GETTABLEKS                       R41 R39 K21 ["isSubmitDisabled"]
      302 NOT                              R40 R41
      303 JUMP                             ; [+3]
      304 MOVE                             R40 R36
      305 JUMPIFNOT                        R40 ; [+1]
      306 NOT                              R40 R24
      307 GETUPVAL                         R42 15
      308 GETTABLEKS                       R42 R42 K22 ["resolveText"]
      310 GETTABLEKS                       R43 R39 K23 ["warning"]
      312 CALL                             R42 1 1
      313 OR                               R41 R42 R37
      314 GETUPVAL                         R42 1
      315 GETTABLEKS                       R42 R42 K24 ["useCallback"]
      317 NEWCLOSURE                       R43 P11
      318 CAPTURE                          VAL R23
      319 NEWTABLE                         R44 0 0
      321 CALL                             R42 2 1
      322 GETUPVAL                         R43 1
      323 GETTABLEKS                       R43 R43 K25 ["useEffect"]
      325 NEWCLOSURE                       R44 P12
      326 CAPTURE                          VAL R28
      327 CAPTURE                          VAL R10
      328 CAPTURE                          VAL R22
      329 CAPTURE                          VAL R34
      330 NEWTABLE                         R45 0 3
      332 MOVE                             R46 R10
      333 MOVE                             R47 R22
      334 MOVE                             R48 R34
      335 SETLIST                          R45 R46 3 [1]
      337 CALL                             R43 2 0
      338 GETUPVAL                         R43 1
      339 GETTABLEKS                       R43 R43 K24 ["useCallback"]
      341 NEWCLOSURE                       R44 P13
      342 CAPTURE                          VAL R13
      343 CAPTURE                          VAL R3
      344 CAPTURE                          UPVAL U16
      345 NEWTABLE                         R45 0 2
      347 MOVE                             R46 R13
      348 MOVE                             R47 R3
      349 SETLIST                          R45 R46 2 [1]
      351 CALL                             R43 2 1
      352 GETUPVAL                         R44 1
      353 GETTABLEKS                       R44 R44 K24 ["useCallback"]
      355 NEWCLOSURE                       R45 P14
      356 CAPTURE                          VAL R28
      357 CAPTURE                          VAL R29
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R31
      360 CAPTURE                          UPVAL U17
      361 CAPTURE                          UPVAL U18
      362 CAPTURE                          VAL R12
      363 CAPTURE                          VAL R43
      364 CAPTURE                          UPVAL U16
      365 NEWTABLE                         R46 0 3
      367 MOVE                             R47 R43
      368 MOVE                             R48 R31
      369 MOVE                             R49 R22
      370 SETLIST                          R46 R47 3 [1]
      372 CALL                             R44 2 1
      373 GETTABLEN                        R45 R31 1
      374 GETUPVAL                         R46 1
      375 GETTABLEKS                       R46 R46 K24 ["useCallback"]
      377 NEWCLOSURE                       R47 P15
      378 CAPTURE                          VAL R11
      379 CAPTURE                          VAL R40
      380 CAPTURE                          VAL R9
      381 CAPTURE                          VAL R22
      382 CAPTURE                          VAL R45
      383 CAPTURE                          VAL R28
      384 CAPTURE                          VAL R29
      385 CAPTURE                          VAL R33
      386 CAPTURE                          VAL R44
      387 NEWTABLE                         R48 0 6
      389 MOVE                             R49 R11
      390 MOVE                             R50 R40
      391 MOVE                             R51 R9
      392 MOVE                             R52 R45
      393 MOVE                             R53 R22
      394 MOVE                             R54 R44
      395 SETLIST                          R48 R49 6 [1]
      397 CALL                             R46 2 1
      398 GETUPVAL                         R47 1
      399 GETTABLEKS                       R47 R47 K24 ["useCallback"]
      401 NEWCLOSURE                       R48 P16
      402 CAPTURE                          VAL R12
      403 CAPTURE                          VAL R43
      404 CAPTURE                          UPVAL U16
      405 NEWTABLE                         R49 0 1
      407 MOVE                             R50 R43
      408 SETLIST                          R49 R50 1 [1]
      410 CALL                             R47 2 1
      411 GETUPVAL                         R48 1
      412 GETTABLEKS                       R48 R48 K24 ["useCallback"]
      414 NEWCLOSURE                       R49 P17
      415 CAPTURE                          VAL R45
      416 CAPTURE                          VAL R44
      417 NEWTABLE                         R50 0 2
      419 MOVE                             R51 R45
      420 MOVE                             R52 R44
      421 SETLIST                          R50 R51 2 [1]
      423 CALL                             R48 2 1
      424 GETUPVAL                         R49 1
      425 GETTABLEKS                       R49 R49 K24 ["useCallback"]
      427 NEWCLOSURE                       R50 P18
      428 CAPTURE                          VAL R33
      429 NEWTABLE                         R51 0 0
      431 CALL                             R49 2 1
      432 GETUPVAL                         R50 1
      433 GETTABLEKS                       R50 R50 K24 ["useCallback"]
      435 NEWCLOSURE                       R51 P19
      436 CAPTURE                          VAL R47
      437 NEWTABLE                         R52 0 1
      439 MOVE                             R53 R47
      440 SETLIST                          R52 R53 1 [1]
      442 CALL                             R50 2 1
      443 GETUPVAL                         R51 1
      444 GETTABLEKS                       R51 R51 K24 ["useCallback"]
      446 NEWCLOSURE                       R52 P20
      447 CAPTURE                          VAL R11
      448 CAPTURE                          VAL R47
      449 NEWTABLE                         R53 0 2
      451 MOVE                             R54 R11
      452 MOVE                             R55 R47
      453 SETLIST                          R53 R54 2 [1]
      455 CALL                             R51 2 1
      456 GETUPVAL                         R52 1
      457 GETTABLEKS                       R52 R52 K6 ["useMemo"]
      459 NEWCLOSURE                       R53 P21
      460 CAPTURE                          VAL R8
      461 CAPTURE                          UPVAL U15
      462 CAPTURE                          UPVAL U14
      463 CAPTURE                          VAL R39
      464 CAPTURE                          VAL R22
      465 CAPTURE                          UPVAL U19
      466 NEWTABLE                         R54 0 4
      468 GETUPVAL                         R55 19
      469 GETTABLEKS                       R55 R55 K26 ["locale"]
      471 MOVE                             R56 R8
      472 MOVE                             R57 R22
      473 MOVE                             R58 R39
      474 SETLIST                          R54 R55 4 [1]
      476 CALL                             R52 2 1
      477 GETUPVAL                         R53 20
      478 GETTABLEKS                       R53 R53 K27 ["Hooks"]
      480 GETTABLEKS                       R53 R53 K28 ["useTokens"]
      482 CALL                             R53 0 1
      483 GETUPVAL                         R54 1
      484 GETTABLEKS                       R54 R54 K17 ["useRef"]
      486 LOADNIL                          R55
      487 CALL                             R54 1 1
      488 GETUPVAL                         R55 21
      489 MOVE                             R56 R54
      490 CALL                             R55 1 1
      491 GETUPVAL                         R56 1
      492 GETTABLEKS                       R56 R56 K29 ["useBinding"]
      494 LOADN                            R57 0
      495 CALL                             R56 1 2
      496 GETUPVAL                         R58 1
      497 GETTABLEKS                       R58 R58 K24 ["useCallback"]
      499 NEWCLOSURE                       R59 P22
      500 CAPTURE                          VAL R57
      501 NEWTABLE                         R60 0 0
      503 CALL                             R58 2 1
      504 LOADB                            R59 0
      505 JUMPIFEQKNIL                     R9 ; [+5]
      507 JUMPIFEQKS                       R32 K30 ["Picker"] ; [+2]
      509 LOADB                            R59 0 +1
      510 LOADB                            R59 1
      511 GETUPVAL                         R60 1
      512 GETTABLEKS                       R60 R60 K6 ["useMemo"]
      514 NEWCLOSURE                       R61 P23
      515 CAPTURE                          VAL R59
      516 CAPTURE                          UPVAL U22
      517 CAPTURE                          VAL R5
      518 CAPTURE                          VAL R22
      519 CAPTURE                          VAL R4
      520 NEWTABLE                         R62 0 4
      522 MOVE                             R63 R59
      523 MOVE                             R64 R5
      524 MOVE                             R65 R22
      525 MOVE                             R66 R4
      526 SETLIST                          R62 R63 4 [1]
      528 CALL                             R60 2 1
      529 JUMPIFEQKNIL                     R9 ; [+43]
      531 JUMPIFNOTEQKS                    R32 K30 ["Picker"] ; [+41]
      533 GETTABLEKS                       R62 R9 K31 ["useTexturePreview"]
      535 JUMPIFNOT                        R62 ; [+4]
      536 JUMPIFEQKNIL                     R45 ; [+3]
      538 GETTABLE                         R61 R22 R45
      539 JUMP                             ; [+1]
      540 LOADNIL                          R61
      541 GETUPVAL                         R62 23
      542 GETUPVAL                         R63 24
      543 DUPTABLE                         R64 K41 [{"config", "values", "rows", "title", "referenceImage", "onComplete", "onBack", "onError", "LayoutOrder"}]
      544 SETTABLEKS                       R9 R64 K32 ["config"]
      546 SETTABLEKS                       R22 R64 K33 ["values"]
      548 SETTABLEKS                       R60 R64 K34 ["rows"]
      550 GETTABLEKS                       R65 R52 K42 ["Heading"]
      552 SETTABLEKS                       R65 R64 K35 ["title"]
      554 GETUPVAL                         R65 17
      555 GETTABLEKS                       R65 R65 K43 ["resolveImage"]
      557 MOVE                             R66 R61
      558 CALL                             R65 1 1
      559 SETTABLEKS                       R65 R64 K36 ["referenceImage"]
      561 SETTABLEKS                       R48 R64 K37 ["onComplete"]
      563 SETTABLEKS                       R49 R64 K38 ["onBack"]
      565 SETTABLEKS                       R50 R64 K39 ["onError"]
      567 GETTABLEKS                       R65 R0 K40 ["LayoutOrder"]
      569 SETTABLEKS                       R65 R64 K40 ["LayoutOrder"]
      571 CALL                             R62 2 -1
      572 RETURN                           R62 -1
      573 GETUPVAL                         R61 25
      574 CALL                             R61 0 1
      575 GETUPVAL                         R62 14
      576 GETTABLEKS                       R62 R62 K44 ["FFlagAssistantSharedVector3Input"]
      578 JUMPIFNOT                        R62 ; [+9]
      579 LOADB                            R62 0
      580 JUMPIFEQKNIL                     R8 ; [+7]
      582 GETTABLEKS                       R63 R8 K45 ["cancelInFooter"]
      584 JUMPIFEQKB                       R63 TRUE ; [+2]
      586 LOADB                            R62 0 +1
      587 LOADB                            R62 1
      588 GETUPVAL                         R64 14
      589 GETTABLEKS                       R64 R64 K46 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      591 JUMPIFNOT                        R64 ; [+111]
      592 GETUPVAL                         R63 23
      593 GETUPVAL                         R64 26
      594 DUPTABLE                         R65 K48 [{"tag", "LayoutOrder"}]
      595 NEWTABLE                         R66 4 0
      597 LOADB                            R67 1
      598 SETTABLEKS                       R67 R66 K49 ["row gap-small size-full-0 auto-y padding-bottom-medium"]
      600 GETTABLEKS                       R68 R52 K42 ["Heading"]
      602 JUMPIFNOTEQKNIL                  R68 ; [+2]
      604 LOADB                            R67 0 +1
      605 LOADB                            R67 1
      606 SETTABLEKS                       R67 R66 K50 ["flex-x-between align-y-center"]
      608 GETTABLEKS                       R68 R52 K42 ["Heading"]
      610 JUMPIFEQKNIL                     R68 ; [+2]
      612 LOADB                            R67 0 +1
      613 LOADB                            R67 1
      614 SETTABLEKS                       R67 R66 K51 ["align-x-right"]
      616 SETTABLEKS                       R66 R65 K47 ["tag"]
      618 MOVE                             R66 R61
      619 CALL                             R66 0 1
      620 SETTABLEKS                       R66 R65 K40 ["LayoutOrder"]
      622 DUPTABLE                         R66 K53 [{"Heading", "CloseButton"}]
      623 LOADB                            R67 0
      624 GETTABLEKS                       R68 R52 K42 ["Heading"]
      626 JUMPIFEQKNIL                     R68 ; [+24]
      628 GETUPVAL                         R67 23
      629 GETUPVAL                         R68 26
      630 DUPTABLE                         R69 K55 [{["tag"] = "fill auto-y clip", ["LayoutOrder"]}]
      631 MOVE                             R70 R61
      632 CALL                             R70 0 1
      633 SETTABLEKS                       R70 R69 K40 ["LayoutOrder"]
      635 DUPTABLE                         R70 K57 [{"Text"}]
      636 GETUPVAL                         R71 23
      637 GETUPVAL                         R72 27
      638 DUPTABLE                         R73 K59 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      639 GETTABLEKS                       R74 R52 K42 ["Heading"]
      641 SETTABLEKS                       R74 R73 K56 ["Text"]
      643 MOVE                             R74 R61
      644 CALL                             R74 0 1
      645 SETTABLEKS                       R74 R73 K40 ["LayoutOrder"]
      647 CALL                             R71 2 1
      648 SETTABLEKS                       R71 R70 K56 ["Text"]
      650 CALL                             R67 3 1
      651 SETTABLEKS                       R67 R66 K42 ["Heading"]
      653 NOT                              R67 R62
      654 JUMPIFNOT                        R67 ; [+44]
      655 GETUPVAL                         R67 23
      656 GETUPVAL                         R68 28
      657 DUPTABLE                         R69 K65 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      658 GETUPVAL                         R70 20
      659 GETTABLEKS                       R70 R70 K66 ["Enums"]
      661 GETTABLEKS                       R70 R70 K67 ["IconName"]
      663 GETTABLEKS                       R70 R70 K68 ["X"]
      665 SETTABLEKS                       R70 R69 K60 ["icon"]
      667 GETUPVAL                         R70 20
      668 GETTABLEKS                       R70 R70 K66 ["Enums"]
      670 GETTABLEKS                       R70 R70 K69 ["InputSize"]
      672 GETTABLEKS                       R70 R70 K70 ["XSmall"]
      674 SETTABLEKS                       R70 R69 K61 ["size"]
      676 GETUPVAL                         R70 20
      677 GETTABLEKS                       R70 R70 K66 ["Enums"]
      679 GETTABLEKS                       R70 R70 K71 ["ButtonVariant"]
      681 GETTABLEKS                       R70 R70 K72 ["Utility"]
      683 SETTABLEKS                       R70 R69 K62 ["variant"]
      685 SETTABLEKS                       R51 R69 K63 ["onActivated"]
      687 GETUPVAL                         R70 29
      688 GETTABLEKS                       R70 R70 K73 ["AskInput"]
      690 GETTABLEKS                       R70 R70 K52 ["CloseButton"]
      692 SETTABLEKS                       R70 R69 K64 ["testId"]
      694 MOVE                             R70 R61
      695 CALL                             R70 0 1
      696 SETTABLEKS                       R70 R69 K40 ["LayoutOrder"]
      698 CALL                             R67 2 1
      699 SETTABLEKS                       R67 R66 K52 ["CloseButton"]
      701 CALL                             R63 3 1
      702 JUMP                             ; [+17]
      703 LOADB                            R63 0
      704 GETTABLEKS                       R64 R52 K42 ["Heading"]
      706 JUMPIFEQKNIL                     R64 ; [+13]
      708 GETUPVAL                         R63 23
      709 GETUPVAL                         R64 27
      710 DUPTABLE                         R65 K75 [{["tag"] = "size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"]}]
      711 GETTABLEKS                       R66 R52 K42 ["Heading"]
      713 SETTABLEKS                       R66 R65 K56 ["Text"]
      715 MOVE                             R66 R61
      716 CALL                             R66 0 1
      717 SETTABLEKS                       R66 R65 K40 ["LayoutOrder"]
      719 CALL                             R63 2 1
      720 MOVE                             R64 R61
      721 CALL                             R64 0 1
      722 DUPTABLE                         R65 K79 [{"Description", "PropertyRows", "FormWarnings"}]
      723 LOADB                            R66 0
      724 GETTABLEKS                       R67 R52 K76 ["Description"]
      726 JUMPIFEQKNIL                     R67 ; [+13]
      728 GETUPVAL                         R66 23
      729 GETUPVAL                         R67 27
      730 DUPTABLE                         R68 K81 [{["tag"] = "size-full-0 auto-xy text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      731 GETTABLEKS                       R69 R52 K76 ["Description"]
      733 SETTABLEKS                       R69 R68 K56 ["Text"]
      735 MOVE                             R69 R61
      736 CALL                             R69 0 1
      737 SETTABLEKS                       R69 R68 K40 ["LayoutOrder"]
      739 CALL                             R66 2 1
      740 SETTABLEKS                       R66 R65 K76 ["Description"]
      742 GETUPVAL                         R66 23
      743 GETUPVAL                         R67 30
      744 GETTABLEKS                       R67 R67 K82 ["PropertyRowsRoot"]
      746 DUPTABLE                         R68 K90 [{"rowDefinitions", "onChange", "isDisabled", "initialValues", "controlsRef", "onBusyChanged", "onRowStatusChanged", "LayoutOrder"}]
      747 SETTABLEKS                       R30 R68 K83 ["rowDefinitions"]
      749 SETTABLEKS                       R42 R68 K84 ["onChange"]
      751 SETTABLEKS                       R11 R68 K85 ["isDisabled"]
      753 SETTABLEKS                       R22 R68 K86 ["initialValues"]
      755 SETTABLEKS                       R28 R68 K87 ["controlsRef"]
      757 SETTABLEKS                       R25 R68 K88 ["onBusyChanged"]
      759 GETUPVAL                         R70 14
      760 GETTABLEKS                       R70 R70 K19 ["FFlagAssistantAskInputFooterResolver"]
      762 JUMPIFNOT                        R70 ; [+2]
      763 MOVE                             R69 R27
      764 JUMP                             ; [+1]
      765 LOADNIL                          R69
      766 SETTABLEKS                       R69 R68 K89 ["onRowStatusChanged"]
      768 MOVE                             R69 R61
      769 CALL                             R69 0 1
      770 SETTABLEKS                       R69 R68 K40 ["LayoutOrder"]
      772 CALL                             R66 2 1
      773 SETTABLEKS                       R66 R65 K77 ["PropertyRows"]
      775 LOADB                            R66 0
      776 GETUPVAL                         R68 14
      777 GETTABLEKS                       R68 R68 K19 ["FFlagAssistantAskInputFooterResolver"]
      779 JUMPIFNOT                        R68 ; [+2]
      780 MOVE                             R67 R41
      781 JUMP                             ; [+1]
      782 MOVE                             R67 R37
      783 JUMPIFEQKNIL                     R67 ; [+65]
      785 GETUPVAL                         R66 23
      786 GETUPVAL                         R67 26
      787 DUPTABLE                         R68 K92 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
      788 MOVE                             R69 R61
      789 CALL                             R69 0 1
      790 SETTABLEKS                       R69 R68 K40 ["LayoutOrder"]
      792 DUPTABLE                         R69 K95 [{"WarningIcon", "WarningText"}]
      793 GETUPVAL                         R70 23
      794 GETUPVAL                         R71 31
      795 DUPTABLE                         R72 K98 [{"name", "style", "size", "LayoutOrder"}]
      796 GETUPVAL                         R73 20
      797 GETTABLEKS                       R73 R73 K66 ["Enums"]
      799 GETTABLEKS                       R73 R73 K67 ["IconName"]
      801 GETTABLEKS                       R73 R73 K99 ["TriangleExclamation"]
      803 SETTABLEKS                       R73 R72 K96 ["name"]
      805 GETTABLEKS                       R73 R53 K100 ["Color"]
      807 GETTABLEKS                       R73 R73 K101 ["System"]
      809 GETTABLEKS                       R73 R73 K102 ["Warning"]
      811 SETTABLEKS                       R73 R72 K97 ["style"]
      813 GETUPVAL                         R73 20
      814 GETTABLEKS                       R73 R73 K66 ["Enums"]
      816 GETTABLEKS                       R73 R73 K103 ["IconSize"]
      818 GETTABLEKS                       R73 R73 K70 ["XSmall"]
      820 SETTABLEKS                       R73 R72 K61 ["size"]
      822 MOVE                             R73 R61
      823 CALL                             R73 0 1
      824 SETTABLEKS                       R73 R72 K40 ["LayoutOrder"]
      826 CALL                             R70 2 1
      827 SETTABLEKS                       R70 R69 K93 ["WarningIcon"]
      829 GETUPVAL                         R70 23
      830 GETUPVAL                         R71 27
      831 DUPTABLE                         R72 K105 [{["tag"] = "auto-xy text-body-small text-align-x-left content-system-warning", ["Text"], ["LayoutOrder"]}]
      832 GETUPVAL                         R74 14
      833 GETTABLEKS                       R74 R74 K19 ["FFlagAssistantAskInputFooterResolver"]
      835 JUMPIFNOT                        R74 ; [+2]
      836 MOVE                             R73 R41
      837 JUMP                             ; [+1]
      838 MOVE                             R73 R37
      839 SETTABLEKS                       R73 R72 K56 ["Text"]
      841 MOVE                             R73 R61
      842 CALL                             R73 0 1
      843 SETTABLEKS                       R73 R72 K40 ["LayoutOrder"]
      845 CALL                             R70 2 1
      846 SETTABLEKS                       R70 R69 K94 ["WarningText"]
      848 CALL                             R66 3 1
      849 SETTABLEKS                       R66 R65 K78 ["FormWarnings"]
      851 NEWTABLE                         R66 0 0
      853 GETUPVAL                         R68 14
      854 GETTABLEKS                       R68 R68 K19 ["FFlagAssistantAskInputFooterResolver"]
      856 JUMPIFNOT                        R68 ; [+3]
      857 GETTABLEKS                       R67 R39 K106 ["buttons"]
      859 JUMP                             ; [+1]
      860 LOADNIL                          R67
      861 MOVE                             R68 R67
      862 JUMPIF                           R68 ; [+2]
      863 NEWTABLE                         R68 0 0
      865 LOADNIL                          R69
      866 LOADNIL                          R70
      867 FORGPREP                         R68
      868 GETUPVAL                         R73 23
      869 GETUPVAL                         R74 32
      870 DUPTABLE                         R75 K109 [{"text", "size", "variant", "isDisabled", "isLoading", "onActivated", "LayoutOrder", "testId"}]
      871 GETUPVAL                         R76 15
      872 GETTABLEKS                       R76 R76 K22 ["resolveText"]
      874 GETTABLEKS                       R77 R72 K107 ["text"]
      876 CALL                             R76 1 1
      877 SETTABLEKS                       R76 R75 K107 ["text"]
      879 GETUPVAL                         R76 20
      880 GETTABLEKS                       R76 R76 K66 ["Enums"]
      882 GETTABLEKS                       R76 R76 K69 ["InputSize"]
      884 GETTABLEKS                       R76 R76 K70 ["XSmall"]
      886 SETTABLEKS                       R76 R75 K61 ["size"]
      888 GETUPVAL                         R76 20
      889 GETTABLEKS                       R76 R76 K66 ["Enums"]
      891 GETTABLEKS                       R76 R76 K71 ["ButtonVariant"]
      893 GETTABLEKS                       R76 R76 K110 ["Standard"]
      895 SETTABLEKS                       R76 R75 K62 ["variant"]
      897 MOVE                             R76 R11
      898 JUMPIF                           R76 ; [+6]
      899 GETTABLEKS                       R77 R72 K85 ["isDisabled"]
      901 JUMPIFEQKB                       R77 TRUE ; [+2]
      903 LOADB                            R76 0 +1
      904 LOADB                            R76 1
      905 SETTABLEKS                       R76 R75 K85 ["isDisabled"]
      907 GETTABLEKS                       R76 R72 K108 ["isLoading"]
      909 SETTABLEKS                       R76 R75 K108 ["isLoading"]
      911 NEWCLOSURE                       R76 P24
      912 CAPTURE                          VAL R28
      913 CAPTURE                          VAL R72
      914 SETTABLEKS                       R76 R75 K63 ["onActivated"]
      916 SETTABLEKS                       R71 R75 K40 ["LayoutOrder"]
      918 GETUPVAL                         R76 29
      919 GETTABLEKS                       R76 R76 K73 ["AskInput"]
      921 GETTABLEKS                       R76 R76 K111 ["FooterButton"]
      923 GETTABLEKS                       R77 R72 K2 ["id"]
      925 CALL                             R76 1 1
      926 SETTABLEKS                       R76 R75 K64 ["testId"]
      928 CALL                             R73 2 1
      929 SETTABLE                         R73 R66 R71
      930 FORGLOOP                         R68 2 ; [-63]
      932 DUPTABLE                         R68 K114 [{"Title", "ButtonGroup"}]
      933 SETTABLEKS                       R63 R68 K112 ["Title"]
      935 GETUPVAL                         R69 23
      936 GETUPVAL                         R70 26
      937 DUPTABLE                         R71 K48 [{"tag", "LayoutOrder"}]
      938 NEWTABLE                         R72 4 0
      940 LOADB                            R73 1
      941 SETTABLEKS                       R73 R72 K115 ["row gap-small size-full-0 padding-top-medium"]
      943 GETUPVAL                         R73 14
      944 GETTABLEKS                       R73 R73 K46 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      946 SETTABLEKS                       R73 R72 K116 ["align-x-right auto-y"]
      948 GETUPVAL                         R74 14
      949 GETTABLEKS                       R74 R74 K46 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
      951 NOT                              R73 R74
      952 SETTABLEKS                       R73 R72 K117 ["auto-xy"]
      954 SETTABLEKS                       R72 R71 K47 ["tag"]
      956 MOVE                             R72 R61
      957 CALL                             R72 0 1
      958 SETTABLEKS                       R72 R71 K40 ["LayoutOrder"]
      960 DUPTABLE                         R72 K122 [{"FooterButtons", "CancelBeforeSubmit", "SubmitButton", "CancelButton"}]
      961 LENGTH                           R74 R66
      962 LOADN                            R75 0
      963 JUMPIFNOTLT                      R75 R74 ; [+11]
      965 GETUPVAL                         R73 23
      966 GETUPVAL                         R74 26
      967 DUPTABLE                         R75 K124 [{["tag"] = "row gap-small auto-xy", ["LayoutOrder"]}]
      968 MOVE                             R76 R61
      969 CALL                             R76 0 1
      970 SETTABLEKS                       R76 R75 K40 ["LayoutOrder"]
      972 MOVE                             R76 R66
      973 CALL                             R73 3 1
      974 JUMP                             ; [+1]
      975 LOADNIL                          R73
      976 SETTABLEKS                       R73 R72 K118 ["FooterButtons"]
      978 MOVE                             R73 R62
      979 JUMPIFNOT                        R73 ; [+41]
      980 GETUPVAL                         R73 23
      981 GETUPVAL                         R74 32
      982 DUPTABLE                         R75 K125 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      983 GETTABLEKS                       R76 R52 K121 ["CancelButton"]
      985 SETTABLEKS                       R76 R75 K107 ["text"]
      987 GETUPVAL                         R76 20
      988 GETTABLEKS                       R76 R76 K66 ["Enums"]
      990 GETTABLEKS                       R76 R76 K69 ["InputSize"]
      992 GETTABLEKS                       R76 R76 K70 ["XSmall"]
      994 SETTABLEKS                       R76 R75 K61 ["size"]
      996 GETUPVAL                         R76 20
      997 GETTABLEKS                       R76 R76 K66 ["Enums"]
      999 GETTABLEKS                       R76 R76 K71 ["ButtonVariant"]
     1001 GETTABLEKS                       R76 R76 K110 ["Standard"]
     1003 SETTABLEKS                       R76 R75 K62 ["variant"]
     1005 SETTABLEKS                       R11 R75 K85 ["isDisabled"]
     1007 SETTABLEKS                       R51 R75 K63 ["onActivated"]
     1009 MOVE                             R76 R61
     1010 CALL                             R76 0 1
     1011 SETTABLEKS                       R76 R75 K40 ["LayoutOrder"]
     1013 GETUPVAL                         R76 29
     1014 GETTABLEKS                       R76 R76 K73 ["AskInput"]
     1016 GETTABLEKS                       R76 R76 K121 ["CancelButton"]
     1018 SETTABLEKS                       R76 R75 K64 ["testId"]
     1020 CALL                             R73 2 1
     1021 SETTABLEKS                       R73 R72 K119 ["CancelBeforeSubmit"]
     1023 GETUPVAL                         R73 23
     1024 GETUPVAL                         R74 32
     1025 DUPTABLE                         R75 K125 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
     1026 GETTABLEKS                       R76 R52 K120 ["SubmitButton"]
     1028 SETTABLEKS                       R76 R75 K107 ["text"]
     1030 GETUPVAL                         R76 20
     1031 GETTABLEKS                       R76 R76 K66 ["Enums"]
     1033 GETTABLEKS                       R76 R76 K69 ["InputSize"]
     1035 GETTABLEKS                       R76 R76 K70 ["XSmall"]
     1037 SETTABLEKS                       R76 R75 K61 ["size"]
     1039 GETUPVAL                         R76 20
     1040 GETTABLEKS                       R76 R76 K66 ["Enums"]
     1042 GETTABLEKS                       R76 R76 K71 ["ButtonVariant"]
     1044 GETTABLEKS                       R76 R76 K126 ["Emphasis"]
     1046 SETTABLEKS                       R76 R75 K62 ["variant"]
     1048 MOVE                             R76 R11
     1049 JUMPIF                           R76 ; [+1]
     1050 NOT                              R76 R40
     1051 SETTABLEKS                       R76 R75 K85 ["isDisabled"]
     1053 SETTABLEKS                       R46 R75 K63 ["onActivated"]
     1055 MOVE                             R76 R61
     1056 CALL                             R76 0 1
     1057 SETTABLEKS                       R76 R75 K40 ["LayoutOrder"]
     1059 GETUPVAL                         R76 29
     1060 GETTABLEKS                       R76 R76 K73 ["AskInput"]
     1062 GETTABLEKS                       R76 R76 K120 ["SubmitButton"]
     1064 SETTABLEKS                       R76 R75 K64 ["testId"]
     1066 CALL                             R73 2 1
     1067 SETTABLEKS                       R73 R72 K120 ["SubmitButton"]
     1069 NOT                              R73 R62
     1070 JUMPIFNOT                        R73 ; [+46]
     1071 GETUPVAL                         R74 14
     1072 GETTABLEKS                       R74 R74 K46 ["FFlagAssistantMoveToolButtonsToTheRightAgain"]
     1074 NOT                              R73 R74
     1075 JUMPIFNOT                        R73 ; [+41]
     1076 GETUPVAL                         R73 23
     1077 GETUPVAL                         R74 32
     1078 DUPTABLE                         R75 K125 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
     1079 GETTABLEKS                       R76 R52 K121 ["CancelButton"]
     1081 SETTABLEKS                       R76 R75 K107 ["text"]
     1083 GETUPVAL                         R76 20
     1084 GETTABLEKS                       R76 R76 K66 ["Enums"]
     1086 GETTABLEKS                       R76 R76 K69 ["InputSize"]
     1088 GETTABLEKS                       R76 R76 K70 ["XSmall"]
     1090 SETTABLEKS                       R76 R75 K61 ["size"]
     1092 GETUPVAL                         R76 20
     1093 GETTABLEKS                       R76 R76 K66 ["Enums"]
     1095 GETTABLEKS                       R76 R76 K71 ["ButtonVariant"]
     1097 GETTABLEKS                       R76 R76 K110 ["Standard"]
     1099 SETTABLEKS                       R76 R75 K62 ["variant"]
     1101 SETTABLEKS                       R11 R75 K85 ["isDisabled"]
     1103 SETTABLEKS                       R51 R75 K63 ["onActivated"]
     1105 MOVE                             R76 R61
     1106 CALL                             R76 0 1
     1107 SETTABLEKS                       R76 R75 K40 ["LayoutOrder"]
     1109 GETUPVAL                         R76 29
     1110 GETTABLEKS                       R76 R76 K73 ["AskInput"]
     1112 GETTABLEKS                       R76 R76 K121 ["CancelButton"]
     1114 SETTABLEKS                       R76 R75 K64 ["testId"]
     1116 CALL                             R73 2 1
     1117 SETTABLEKS                       R73 R72 K121 ["CancelButton"]
     1119 CALL                             R69 3 1
     1120 SETTABLEKS                       R69 R68 K113 ["ButtonGroup"]
     1122 GETUPVAL                         R69 14
     1123 GETTABLEKS                       R69 R69 K127 ["FFlagAssistantScrollableAskInputForm"]
     1125 JUMPIFNOT                        R69 ; [+78]
     1126 GETUPVAL                         R69 23
     1127 LOADK                            R70 K128 ["ScrollingFrame"]
     1128 NEWTABLE                         R71 16 0
     1130 NEWCLOSURE                       R74 P25
     1131 CAPTURE                          VAL R55
     1132 NAMECALL                         R72 R56 K129 ["map"]
     1134 CALL                             R72 2 1
     1135 SETTABLEKS                       R72 R71 K130 ["Size"]
     1137 GETIMPORT                        R72 K134 [Enum.AutomaticSize.Y]
     1139 SETTABLEKS                       R72 R71 K135 ["AutomaticCanvasSize"]
     1141 GETIMPORT                        R72 K138 [UDim2.new]
     1143 LOADN                            R73 0
     1144 LOADN                            R74 0
     1145 LOADN                            R75 0
     1146 LOADN                            R76 0
     1147 CALL                             R72 4 1
     1148 SETTABLEKS                       R72 R71 K139 ["CanvasSize"]
     1150 LOADB                            R72 1
     1151 SETTABLEKS                       R72 R71 K140 ["ClipsDescendants"]
     1153 GETTABLEKS                       R72 R53 K130 ["Size"]
     1155 GETTABLEKS                       R72 R72 K141 ["Size_150"]
     1157 SETTABLEKS                       R72 R71 K142 ["ScrollBarThickness"]
     1159 GETIMPORT                        R72 K144 [Enum.ScrollingDirection.Y]
     1161 SETTABLEKS                       R72 R71 K143 ["ScrollingDirection"]
     1163 GETIMPORT                        R72 K147 [Enum.ScrollBarInset.ScrollBar]
     1165 SETTABLEKS                       R72 R71 K148 ["VerticalScrollBarInset"]
     1167 LOADN                            R72 1
     1168 SETTABLEKS                       R72 R71 K149 ["BackgroundTransparency"]
     1170 LOADN                            R72 0
     1171 SETTABLEKS                       R72 R71 K150 ["BorderSizePixel"]
     1173 SETTABLEKS                       R64 R71 K40 ["LayoutOrder"]
     1175 SETTABLEKS                       R54 R71 K151 ["ref"]
     1177 GETUPVAL                         R72 1
     1178 GETTABLEKS                       R72 R72 K152 ["Tag"]
     1180 LOADK                            R73 K153 ["data-testid=%*"]
     1181 GETUPVAL                         R75 29
     1182 GETTABLEKS                       R75 R75 K73 ["AskInput"]
     1184 GETTABLEKS                       R75 R75 K154 ["ScrollBody"]
     1186 NAMECALL                         R73 R73 K155 ["format"]
     1188 CALL                             R73 2 1
     1189 SETTABLE                         R73 R71 R72
     1190 DUPTABLE                         R72 K157 [{"Content"}]
     1191 GETUPVAL                         R73 23
     1192 GETUPVAL                         R74 26
     1193 DUPTABLE                         R75 K160 [{["tag"] = "col gap-large size-full-0 auto-y", ["onAbsoluteSizeChanged"]}]
     1194 SETTABLEKS                       R58 R75 K159 ["onAbsoluteSizeChanged"]
     1196 MOVE                             R76 R65
     1197 CALL                             R73 3 1
     1198 SETTABLEKS                       R73 R72 K156 ["Content"]
     1200 CALL                             R69 3 1
     1201 SETTABLEKS                       R69 R68 K161 ["Body"]
     1203 JUMP                             ; [+7]
     1204 MOVE                             R69 R65
     1205 LOADNIL                          R70
     1206 LOADNIL                          R71
     1207 FORGPREP                         R69
     1208 SETTABLE                         R73 R68 R72
     1209 FORGLOOP                         R69 2 ; [-2]
     1211 GETUPVAL                         R69 23
     1212 GETUPVAL                         R70 26
     1213 DUPTABLE                         R71 K163 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
     1214 GETTABLEKS                       R72 R0 K40 ["LayoutOrder"]
     1216 SETTABLEKS                       R72 R71 K40 ["LayoutOrder"]
     1218 MOVE                             R72 R68
     1219 CALL                             R69 3 -1
     1220 RETURN                           R69 -1

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 DUPTABLE                         R0 K1 [{"Preparing"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["AskInput"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 RETURN                           R0 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_59]
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

PROTO_61:
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
       82 GETTABLEKS                       R13 R0 K15 ["Components"]
       84 GETTABLEKS                       R13 R13 K17 ["Contexts"]
       86 GETTABLEKS                       R13 R13 K18 ["Actions"]
       88 GETTABLEKS                       R13 R13 K25 ["ChannelActionsContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K10 [require]
       93 GETTABLEKS                       R14 R0 K26 ["Flags"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K10 [require]
       98 GETTABLEKS                       R15 R0 K20 ["Util"]
      100 GETTABLEKS                       R15 R15 K27 ["ImageContentStore"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K10 [require]
      105 GETTABLEKS                       R16 R0 K15 ["Components"]
      107 GETTABLEKS                       R16 R16 K17 ["Contexts"]
      109 GETTABLEKS                       R16 R16 K28 ["InputAreaOverrideContext"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K10 [require]
      114 GETTABLEKS                       R17 R0 K15 ["Components"]
      116 GETTABLEKS                       R17 R17 K17 ["Contexts"]
      118 GETTABLEKS                       R17 R17 K18 ["Actions"]
      120 GETTABLEKS                       R17 R17 K29 ["LayoutGenActionsContext"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K10 [require]
      125 GETTABLEKS                       R18 R0 K20 ["Util"]
      127 GETTABLEKS                       R18 R18 K30 ["LayoutGen"]
      129 GETTABLEKS                       R18 R18 K31 ["LayoutGenSceneBoxChannel"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R19 R0 K15 ["Components"]
      136 GETTABLEKS                       R19 R19 K17 ["Contexts"]
      138 GETTABLEKS                       R19 R19 K32 ["PacketReceivedContext"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K10 [require]
      143 GETTABLEKS                       R20 R0 K15 ["Components"]
      145 GETTABLEKS                       R20 R20 K33 ["PropertyRows"]
      147 GETTABLEKS                       R20 R20 K34 ["PropertyRowTypes"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K10 [require]
      152 GETTABLEKS                       R21 R0 K15 ["Components"]
      154 GETTABLEKS                       R21 R21 K33 ["PropertyRows"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K10 [require]
      159 GETTABLEKS                       R22 R0 K15 ["Components"]
      161 GETTABLEKS                       R22 R22 K17 ["Contexts"]
      163 GETTABLEKS                       R22 R22 K18 ["Actions"]
      165 GETTABLEKS                       R22 R22 K35 ["SegmentMeshActionsContext"]
      167 CALL                             R21 1 1
      168 GETIMPORT                        R22 K10 [require]
      170 GETTABLEKS                       R23 R0 K15 ["Components"]
      172 GETTABLEKS                       R23 R23 K36 ["ShimmerGradient"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K10 [require]
      177 GETTABLEKS                       R24 R0 K20 ["Util"]
      179 GETTABLEKS                       R24 R24 K37 ["SlashCommandConfiguration"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K10 [require]
      184 GETTABLEKS                       R25 R0 K20 ["Util"]
      186 GETTABLEKS                       R25 R25 K38 ["TestIds"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K10 [require]
      191 GETTABLEKS                       R26 R0 K15 ["Components"]
      193 GETTABLEKS                       R26 R26 K17 ["Contexts"]
      195 GETTABLEKS                       R26 R26 K18 ["Actions"]
      197 GETTABLEKS                       R26 R26 K39 ["TextureGenActionsContext"]
      199 CALL                             R25 1 1
      200 GETIMPORT                        R26 K10 [require]
      202 GETTABLEKS                       R27 R0 K40 ["Resources"]
      204 GETTABLEKS                       R27 R27 K41 ["Localization"]
      206 GETTABLEKS                       R27 R27 K42 ["Translator"]
      208 CALL                             R26 1 1
      209 GETIMPORT                        R27 K10 [require]
      211 GETTABLEKS                       R28 R0 K43 ["Types"]
      213 CALL                             R27 1 1
      214 GETIMPORT                        R28 K10 [require]
      216 GETTABLEKS                       R29 R0 K20 ["Util"]
      218 GETTABLEKS                       R29 R29 K21 ["AskInput"]
      220 GETTABLEKS                       R29 R29 K44 ["Validation"]
      222 CALL                             R28 1 1
      223 GETIMPORT                        R29 K10 [require]
      225 GETTABLEKS                       R30 R0 K20 ["Util"]
      227 GETTABLEKS                       R30 R30 K21 ["AskInput"]
      229 GETTABLEKS                       R30 R30 K45 ["ValidationReason"]
      231 CALL                             R29 1 1
      232 GETIMPORT                        R30 K10 [require]
      234 GETTABLEKS                       R31 R0 K20 ["Util"]
      236 GETTABLEKS                       R31 R31 K46 ["WidgetUtils"]
      238 CALL                             R30 1 1
      239 GETIMPORT                        R31 K10 [require]
      241 GETTABLEKS                       R32 R0 K47 ["Hooks"]
      243 GETTABLEKS                       R32 R32 K48 ["useLatest"]
      245 CALL                             R31 1 1
      246 GETIMPORT                        R32 K10 [require]
      248 GETTABLEKS                       R33 R0 K47 ["Hooks"]
      250 GETTABLEKS                       R33 R33 K49 ["useOverrideMaxHeight"]
      252 CALL                             R32 1 1
      253 GETTABLEKS                       R33 R30 K50 ["ToolStatus"]
      255 GETTABLEKS                       R34 R4 K51 ["Button"]
      257 GETTABLEKS                       R35 R4 K52 ["Icon"]
      259 GETTABLEKS                       R36 R4 K53 ["IconButton"]
      261 GETTABLEKS                       R37 R4 K54 ["Text"]
      263 GETTABLEKS                       R38 R4 K55 ["View"]
      265 GETTABLEKS                       R39 R5 K56 ["createElement"]
      267 GETTABLEKS                       R40 R6 K57 ["createNextOrder"]
      269 GETTABLEKS                       R41 R11 K58 ["INPUT_TYPE"]
      271 GETTABLEKS                       R42 R20 K59 ["ROW_TYPES"]
      273 DUPTABLE                         R43 K62 [{["Form"] = "Form", ["Picker"] = "Picker"}]
      274 NEWTABLE                         R44 0 0
      276 DUPCLOSURE                       R45 K63 [PROTO_0]
      277 CAPTURE                          VAL R29
      278 DUPCLOSURE                       R46 K64 [PROTO_1]
      279 CAPTURE                          VAL R29
      280 DUPCLOSURE                       R47 K65 [PROTO_2]
      281 CAPTURE                          VAL R26
      282 NEWTABLE                         R48 8 0
      284 GETTABLEKS                       R49 R41 K66 ["Array"]
      286 GETTABLEKS                       R50 R42 K67 ["PartNames"]
      288 SETTABLE                         R50 R48 R49
      289 GETTABLEKS                       R49 R41 K68 ["Boolean"]
      291 GETTABLEKS                       R50 R42 K68 ["Boolean"]
      293 SETTABLE                         R50 R48 R49
      294 GETTABLEKS                       R49 R41 K69 ["Image"]
      296 GETTABLEKS                       R50 R42 K70 ["HintImage"]
      298 SETTABLE                         R50 R48 R49
      299 GETTABLEKS                       R49 R41 K71 ["Instance"]
      301 GETTABLEKS                       R50 R42 K71 ["Instance"]
      303 SETTABLE                         R50 R48 R49
      304 GETTABLEKS                       R49 R41 K72 ["Number"]
      306 GETTABLEKS                       R50 R42 K72 ["Number"]
      308 SETTABLE                         R50 R48 R49
      309 GETTABLEKS                       R49 R41 K73 ["Option"]
      311 GETTABLEKS                       R50 R42 K74 ["Select"]
      313 SETTABLE                         R50 R48 R49
      314 GETTABLEKS                       R49 R41 K75 ["String"]
      316 GETTABLEKS                       R50 R42 K75 ["String"]
      318 SETTABLE                         R50 R48 R49
      319 GETTABLEKS                       R49 R41 K76 ["Vector3"]
      321 GETTABLEKS                       R50 R42 K76 ["Vector3"]
      323 SETTABLE                         R50 R48 R49
      324 NEWTABLE                         R49 8 0
      326 GETTABLEKS                       R50 R42 K75 ["String"]
      328 DUPCLOSURE                       R51 K77 [PROTO_3]
      329 CAPTURE                          VAL R42
      330 CAPTURE                          VAL R13
      331 CAPTURE                          VAL R29
      332 SETTABLE                         R51 R49 R50
      333 GETTABLEKS                       R50 R42 K72 ["Number"]
      335 DUPCLOSURE                       R51 K78 [PROTO_4]
      336 CAPTURE                          VAL R41
      337 CAPTURE                          VAL R42
      338 CAPTURE                          VAL R28
      339 SETTABLE                         R51 R49 R50
      340 GETTABLEKS                       R50 R42 K79 ["ClipPreview"]
      342 DUPCLOSURE                       R51 K80 [PROTO_5]
      343 CAPTURE                          VAL R42
      344 SETTABLE                         R51 R49 R50
      345 GETTABLEKS                       R50 R42 K81 ["EditScrubbar"]
      347 DUPCLOSURE                       R51 K82 [PROTO_6]
      348 CAPTURE                          VAL R42
      349 SETTABLE                         R51 R49 R50
      350 GETTABLEKS                       R50 R42 K74 ["Select"]
      352 DUPCLOSURE                       R51 K83 [PROTO_7]
      353 CAPTURE                          VAL R41
      354 CAPTURE                          VAL R42
      355 CAPTURE                          VAL R46
      356 CAPTURE                          VAL R26
      357 SETTABLE                         R51 R49 R50
      358 GETTABLEKS                       R50 R42 K71 ["Instance"]
      360 DUPCLOSURE                       R51 K84 [PROTO_9]
      361 CAPTURE                          VAL R42
      362 SETTABLE                         R51 R49 R50
      363 GETTABLEKS                       R50 R42 K67 ["PartNames"]
      365 DUPCLOSURE                       R51 K85 [PROTO_10]
      366 CAPTURE                          VAL R41
      367 CAPTURE                          VAL R42
      368 CAPTURE                          VAL R28
      369 SETTABLE                         R51 R49 R50
      370 GETTABLEKS                       R50 R42 K76 ["Vector3"]
      372 DUPCLOSURE                       R51 K86 [PROTO_11]
      373 CAPTURE                          VAL R41
      374 CAPTURE                          VAL R42
      375 SETTABLE                         R51 R49 R50
      376 GETTABLEKS                       R50 R13 K87 ["FFlagAssistantAddNumberInput"]
      378 JUMPIFNOT                        R50 ; [+7]
      379 GETTABLEKS                       R50 R42 K88 ["NumberInput"]
      381 DUPCLOSURE                       R51 K89 [PROTO_12]
      382 CAPTURE                          VAL R41
      383 CAPTURE                          VAL R42
      384 CAPTURE                          VAL R28
      385 SETTABLE                         R51 R49 R50
      386 DUPCLOSURE                       R50 K90 [PROTO_13]
      387 DUPCLOSURE                       R51 K91 [PROTO_14]
      388 CAPTURE                          VAL R23
      389 CAPTURE                          VAL R48
      390 CAPTURE                          VAL R42
      391 CAPTURE                          VAL R29
      392 CAPTURE                          VAL R13
      393 CAPTURE                          VAL R49
      394 DUPCLOSURE                       R52 K92 [PROTO_15]
      395 CAPTURE                          VAL R51
      396 CAPTURE                          VAL R23
      397 CAPTURE                          VAL R50
      398 DUPCLOSURE                       R53 K93 [PROTO_18]
      399 CAPTURE                          VAL R44
      400 CAPTURE                          VAL R30
      401 CAPTURE                          VAL R33
      402 CAPTURE                          VAL R23
      403 CAPTURE                          VAL R5
      404 CAPTURE                          VAL R13
      405 CAPTURE                          VAL R29
      406 CAPTURE                          VAL R26
      407 CAPTURE                          VAL R52
      408 CAPTURE                          VAL R40
      409 CAPTURE                          VAL R39
      410 CAPTURE                          VAL R38
      411 CAPTURE                          VAL R37
      412 CAPTURE                          VAL R7
      413 CAPTURE                          VAL R24
      414 CAPTURE                          VAL R20
      415 CAPTURE                          VAL R6
      416 DUPCLOSURE                       R54 K94 [PROTO_55]
      417 CAPTURE                          VAL R44
      418 CAPTURE                          VAL R5
      419 CAPTURE                          VAL R28
      420 CAPTURE                          VAL R23
      421 CAPTURE                          VAL R18
      422 CAPTURE                          VAL R12
      423 CAPTURE                          VAL R25
      424 CAPTURE                          VAL R21
      425 CAPTURE                          VAL R8
      426 CAPTURE                          VAL R16
      427 CAPTURE                          VAL R17
      428 CAPTURE                          VAL R51
      429 CAPTURE                          VAL R50
      430 CAPTURE                          VAL R41
      431 CAPTURE                          VAL R13
      432 CAPTURE                          VAL R29
      433 CAPTURE                          VAL R9
      434 CAPTURE                          VAL R14
      435 CAPTURE                          VAL R1
      436 CAPTURE                          VAL R26
      437 CAPTURE                          VAL R4
      438 CAPTURE                          VAL R32
      439 CAPTURE                          VAL R52
      440 CAPTURE                          VAL R39
      441 CAPTURE                          VAL R10
      442 CAPTURE                          VAL R40
      443 CAPTURE                          VAL R38
      444 CAPTURE                          VAL R37
      445 CAPTURE                          VAL R36
      446 CAPTURE                          VAL R24
      447 CAPTURE                          VAL R20
      448 CAPTURE                          VAL R35
      449 CAPTURE                          VAL R34
      450 DUPCLOSURE                       R55 K95 [PROTO_58]
      451 CAPTURE                          VAL R5
      452 CAPTURE                          VAL R15
      453 CAPTURE                          VAL R31
      454 CAPTURE                          VAL R39
      455 CAPTURE                          VAL R54
      456 CAPTURE                          VAL R3
      457 DUPCLOSURE                       R56 K96 [PROTO_60]
      458 CAPTURE                          VAL R5
      459 CAPTURE                          VAL R26
      460 CAPTURE                          VAL R40
      461 CAPTURE                          VAL R39
      462 CAPTURE                          VAL R38
      463 CAPTURE                          VAL R37
      464 CAPTURE                          VAL R22
      465 DUPCLOSURE                       R57 K97 [PROTO_61]
      466 CAPTURE                          VAL R30
      467 CAPTURE                          VAL R33
      468 CAPTURE                          VAL R39
      469 CAPTURE                          VAL R55
      470 CAPTURE                          VAL R53
      471 CAPTURE                          VAL R56
      472 DUPTABLE                         R58 K100 [{["Type"] = "AskInput", ["ContentWidget"]}]
      473 GETTABLEKS                       R59 R5 K101 ["memo"]
      475 MOVE                             R60 R57
      476 CALL                             R59 1 1
      477 SETTABLEKS                       R59 R58 K99 ["ContentWidget"]
      479 RETURN                           R58 1
