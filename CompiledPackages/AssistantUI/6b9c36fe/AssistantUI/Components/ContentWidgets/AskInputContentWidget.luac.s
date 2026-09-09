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
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["FFlagAssistantAddPlaceholderProp"]
       22 JUMPIFNOT                        R4 ; [+8]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["resolveText"]
       26 GETTABLEKS                       R5 R2 K8 ["placeholder"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K8 ["placeholder"]
       31 RETURN                           R3 1

PROTO_3:
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
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R5 R2 K10 ["infoPopover"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K10 ["infoPopover"]
       46 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["uniqueId"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getRowPresentation"]
        3 MOVE                             R5 R1
        4 GETTABLEKS                       R6 R0 K1 ["name"]
        6 CALL                             R4 2 1
        7 GETTABLEKS                       R5 R4 K2 ["renderer"]
        9 JUMPIF                           R5 ; [+8]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R7 R0 K3 ["inputType"]
       13 GETTABLE                         R5 R6 R7
       14 JUMPIF                           R5 ; [+3]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["Warning"]
       18 DUPTABLE                         R6 K14 [{["type"], ["name"], ["label"], ["initialValue"], ["initialVisible"] = , ["initialInteractable"] = , ["initialEnabled"] = , ["initialActive"] = , ["internal"]}]
       19 SETTABLEKS                       R5 R6 K5 ["type"]
       21 GETTABLEKS                       R7 R0 K1 ["name"]
       23 SETTABLEKS                       R7 R6 K1 ["name"]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K15 ["resolveText"]
       28 GETTABLEKS                       R8 R4 K6 ["label"]
       30 CALL                             R7 1 1
       31 JUMPIF                           R7 ; [+2]
       32 GETTABLEKS                       R7 R0 K1 ["name"]
       34 SETTABLEKS                       R7 R6 K6 ["label"]
       36 GETTABLEKS                       R7 R0 K7 ["initialValue"]
       38 SETTABLEKS                       R7 R6 K7 ["initialValue"]
       40 GETTABLEKS                       R7 R4 K13 ["internal"]
       42 SETTABLEKS                       R7 R6 K13 ["internal"]
       44 GETUPVAL                         R8 4
       45 GETTABLE                         R7 R8 R5
       46 JUMPIFNOT                        R7 ; [+11]
       47 MOVE                             R8 R7
       48 MOVE                             R9 R0
       49 MOVE                             R10 R2
       50 MOVE                             R11 R4
       51 MOVE                             R12 R6
       52 MOVE                             R13 R3
       53 JUMPIF                           R13 ; [+2]
       54 NEWTABLE                         R13 0 0
       56 CALL                             R8 5 1
       57 MOVE                             R6 R8
       58 RETURN                           R6 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 3
        7 DUPTABLE                         R4 K2 [{[1] = True}]
        8 CALL                             R0 4 1
        9 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["desugarFields"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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
       16 CALL                             R9 4 1
       17 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       19 MOVE                             R8 R0
       20 GETIMPORT                        R7 K4 [table.insert]
       22 CALL                             R7 2 0
       23 GETTABLEKS                       R7 R6 K5 ["name"]
       25 GETTABLEKS                       R8 R6 K6 ["initialValue"]
       27 SETTABLE                         R8 R1 R7
       28 FORGLOOP                         R2 2 ; [-18]
       30 GETUPVAL                         R2 5
       31 MOVE                             R3 R0
       32 GETUPVAL                         R4 6
       33 MOVE                             R5 R1
       34 DUPTABLE                         R6 K9 [{["isSubmitted"] = False}]
       35 CALL                             R2 4 0
       36 RETURN                           R0 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFEQKNIL                     R0 ; [+72]
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
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K4 ["skipField"]
       41 LOADB                            R4 0
       42 JUMPIFEQKNIL                     R3 ; [+17]
       44 GETUPVAL                         R6 3
       45 GETTABLE                         R5 R6 R3
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K5 ["skipValues"]
       49 JUMPIFNOT                        R6 ; [+10]
       50 MOVE                             R7 R6
       51 LOADNIL                          R8
       52 LOADNIL                          R9
       53 FORGPREP                         R7
       54 JUMPIFNOTEQ                      R11 R5 ; [+3]
       56 LOADB                            R4 1
       57 JUMP                             ; [+2]
       58 FORGLOOP                         R7 2 ; [-5]
       60 JUMPIF                           R2 ; [+18]
       61 JUMPIFNOT                        R1 ; [+17]
       62 JUMPIF                           R4 ; [+16]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K6 ["current"]
       66 GETUPVAL                         R6 6
       67 JUMPIFNOT                        R5 ; [+4]
       68 GETTABLEKS                       R7 R5 K7 ["getEnabledValues"]
       70 CALL                             R7 0 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R7
       73 SETTABLEKS                       R7 R6 K6 ["current"]
       75 GETUPVAL                         R6 7
       76 LOADK                            R7 K8 ["Picker"]
       77 CALL                             R6 1 0
       78 RETURN                           R0 0
       79 GETUPVAL                         R0 8
       80 CALL                             R0 0 0
       81 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Form"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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
       87 GETTABLEKS                       R16 R16 K6 ["useMemo"]
       89 NEWCLOSURE                       R17 P1
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R15
       93 NEWTABLE                         R18 0 2
       95 MOVE                             R19 R14
       96 MOVE                             R20 R15
       97 SETLIST                          R18 R19 2 [1]
       99 CALL                             R16 2 1
      100 GETUPVAL                         R17 1
      101 GETTABLEKS                       R17 R17 K15 ["useState"]
      103 NEWCLOSURE                       R18 P2
      104 CAPTURE                          VAL R5
      105 CALL                             R17 1 2
      106 GETUPVAL                         R19 1
      107 GETTABLEKS                       R19 R19 K15 ["useState"]
      109 LOADB                            R20 0
      110 CALL                             R19 1 2
      111 GETUPVAL                         R21 1
      112 GETTABLEKS                       R21 R21 K16 ["useRef"]
      114 LOADNIL                          R22
      115 CALL                             R21 1 1
      116 GETUPVAL                         R22 1
      117 GETTABLEKS                       R22 R22 K16 ["useRef"]
      119 LOADNIL                          R23
      120 CALL                             R22 1 1
      121 GETUPVAL                         R23 1
      122 GETTABLEKS                       R23 R23 K6 ["useMemo"]
      124 NEWCLOSURE                       R24 P3
      125 CAPTURE                          VAL R5
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R16
      130 CAPTURE                          UPVAL U9
      131 CAPTURE                          VAL R10
      132 NEWTABLE                         R25 0 5
      134 MOVE                             R26 R5
      135 MOVE                             R27 R4
      136 MOVE                             R28 R7
      137 MOVE                             R29 R16
      138 MOVE                             R30 R10
      139 SETLIST                          R25 R26 5 [1]
      141 CALL                             R23 2 1
      142 GETUPVAL                         R24 1
      143 GETTABLEKS                       R24 R24 K6 ["useMemo"]
      145 NEWCLOSURE                       R25 P4
      146 CAPTURE                          VAL R5
      147 CAPTURE                          UPVAL U10
      148 NEWTABLE                         R26 0 1
      150 MOVE                             R27 R5
      151 SETLIST                          R26 R27 1 [1]
      153 CALL                             R24 2 1
      154 GETUPVAL                         R25 1
      155 GETTABLEKS                       R25 R25 K15 ["useState"]
      157 LOADK                            R26 K17 ["Form"]
      158 CALL                             R25 1 2
      159 GETUPVAL                         R27 1
      160 GETTABLEKS                       R27 R27 K6 ["useMemo"]
      162 NEWCLOSURE                       R28 P5
      163 CAPTURE                          VAL R7
      164 CAPTURE                          UPVAL U2
      165 CAPTURE                          VAL R17
      166 CAPTURE                          UPVAL U11
      167 CAPTURE                          VAL R4
      168 NEWTABLE                         R29 0 3
      170 MOVE                             R30 R7
      171 MOVE                             R31 R17
      172 MOVE                             R32 R4
      173 SETLIST                          R29 R30 3 [1]
      175 CALL                             R27 2 2
      176 MOVE                             R29 R27
      177 JUMPIFNOT                        R29 ; [+1]
      178 NOT                              R29 R19
      179 GETUPVAL                         R30 1
      180 GETTABLEKS                       R30 R30 K18 ["useCallback"]
      182 NEWCLOSURE                       R31 P6
      183 CAPTURE                          VAL R18
      184 NEWTABLE                         R32 0 0
      186 CALL                             R30 2 1
      187 GETUPVAL                         R31 1
      188 GETTABLEKS                       R31 R31 K19 ["useEffect"]
      190 NEWCLOSURE                       R32 P7
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R17
      194 NEWTABLE                         R33 0 2
      196 MOVE                             R34 R10
      197 MOVE                             R35 R17
      198 SETLIST                          R33 R34 2 [1]
      200 CALL                             R31 2 0
      201 GETUPVAL                         R31 1
      202 GETTABLEKS                       R31 R31 K18 ["useCallback"]
      204 NEWCLOSURE                       R32 P8
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R3
      207 CAPTURE                          UPVAL U12
      208 NEWTABLE                         R33 0 2
      210 MOVE                             R34 R13
      211 MOVE                             R35 R3
      212 SETLIST                          R33 R34 2 [1]
      214 CALL                             R31 2 1
      215 GETUPVAL                         R32 1
      216 GETTABLEKS                       R32 R32 K18 ["useCallback"]
      218 NEWCLOSURE                       R33 P9
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R24
      223 CAPTURE                          UPVAL U13
      224 CAPTURE                          UPVAL U14
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R31
      227 CAPTURE                          UPVAL U12
      228 NEWTABLE                         R34 0 3
      230 MOVE                             R35 R31
      231 MOVE                             R36 R24
      232 MOVE                             R37 R17
      233 SETLIST                          R34 R35 3 [1]
      235 CALL                             R32 2 1
      236 GETTABLEN                        R33 R24 1
      237 GETUPVAL                         R34 1
      238 GETTABLEKS                       R34 R34 K18 ["useCallback"]
      240 NEWCLOSURE                       R35 P10
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R33
      246 CAPTURE                          VAL R21
      247 CAPTURE                          VAL R22
      248 CAPTURE                          VAL R26
      249 CAPTURE                          VAL R32
      250 NEWTABLE                         R36 0 6
      252 MOVE                             R37 R11
      253 MOVE                             R38 R29
      254 MOVE                             R39 R9
      255 MOVE                             R40 R33
      256 MOVE                             R41 R17
      257 MOVE                             R42 R32
      258 SETLIST                          R36 R37 6 [1]
      260 CALL                             R34 2 1
      261 GETUPVAL                         R35 1
      262 GETTABLEKS                       R35 R35 K18 ["useCallback"]
      264 NEWCLOSURE                       R36 P11
      265 CAPTURE                          VAL R12
      266 CAPTURE                          VAL R31
      267 CAPTURE                          UPVAL U12
      268 NEWTABLE                         R37 0 1
      270 MOVE                             R38 R31
      271 SETLIST                          R37 R38 1 [1]
      273 CALL                             R35 2 1
      274 GETUPVAL                         R36 1
      275 GETTABLEKS                       R36 R36 K18 ["useCallback"]
      277 NEWCLOSURE                       R37 P12
      278 CAPTURE                          VAL R33
      279 CAPTURE                          VAL R32
      280 NEWTABLE                         R38 0 2
      282 MOVE                             R39 R33
      283 MOVE                             R40 R32
      284 SETLIST                          R38 R39 2 [1]
      286 CALL                             R36 2 1
      287 GETUPVAL                         R37 1
      288 GETTABLEKS                       R37 R37 K18 ["useCallback"]
      290 NEWCLOSURE                       R38 P13
      291 CAPTURE                          VAL R26
      292 NEWTABLE                         R39 0 0
      294 CALL                             R37 2 1
      295 GETUPVAL                         R38 1
      296 GETTABLEKS                       R38 R38 K18 ["useCallback"]
      298 NEWCLOSURE                       R39 P14
      299 CAPTURE                          VAL R35
      300 NEWTABLE                         R40 0 1
      302 MOVE                             R41 R35
      303 SETLIST                          R40 R41 1 [1]
      305 CALL                             R38 2 1
      306 GETUPVAL                         R39 1
      307 GETTABLEKS                       R39 R39 K18 ["useCallback"]
      309 NEWCLOSURE                       R40 P15
      310 CAPTURE                          VAL R11
      311 CAPTURE                          VAL R35
      312 NEWTABLE                         R41 0 2
      314 MOVE                             R42 R11
      315 MOVE                             R43 R35
      316 SETLIST                          R41 R42 2 [1]
      318 CALL                             R39 2 1
      319 GETUPVAL                         R40 1
      320 GETTABLEKS                       R40 R40 K6 ["useMemo"]
      322 NEWCLOSURE                       R41 P16
      323 CAPTURE                          VAL R8
      324 CAPTURE                          UPVAL U11
      325 CAPTURE                          UPVAL U15
      326 NEWTABLE                         R42 0 2
      328 GETUPVAL                         R43 15
      329 GETTABLEKS                       R43 R43 K20 ["locale"]
      331 MOVE                             R44 R8
      332 SETLIST                          R42 R43 2 [1]
      334 CALL                             R40 2 1
      335 GETUPVAL                         R41 16
      336 GETTABLEKS                       R41 R41 K21 ["Hooks"]
      338 GETTABLEKS                       R41 R41 K22 ["useTokens"]
      340 CALL                             R41 0 1
      341 LOADB                            R42 0
      342 JUMPIFEQKNIL                     R9 ; [+5]
      344 JUMPIFEQKS                       R25 K23 ["Picker"] ; [+2]
      346 LOADB                            R42 0 +1
      347 LOADB                            R42 1
      348 GETUPVAL                         R43 1
      349 GETTABLEKS                       R43 R43 K6 ["useMemo"]
      351 NEWCLOSURE                       R44 P17
      352 CAPTURE                          VAL R42
      353 CAPTURE                          UPVAL U17
      354 CAPTURE                          VAL R5
      355 CAPTURE                          VAL R17
      356 CAPTURE                          VAL R4
      357 NEWTABLE                         R45 0 4
      359 MOVE                             R46 R42
      360 MOVE                             R47 R5
      361 MOVE                             R48 R17
      362 MOVE                             R49 R4
      363 SETLIST                          R45 R46 4 [1]
      365 CALL                             R43 2 1
      366 JUMPIFEQKNIL                     R9 ; [+28]
      368 JUMPIFNOTEQKS                    R25 K23 ["Picker"] ; [+26]
      370 GETUPVAL                         R44 18
      371 GETUPVAL                         R45 19
      372 DUPTABLE                         R46 K32 [{"config", "values", "rows", "title", "onComplete", "onBack", "onError", "LayoutOrder"}]
      373 SETTABLEKS                       R9 R46 K24 ["config"]
      375 SETTABLEKS                       R17 R46 K25 ["values"]
      377 SETTABLEKS                       R43 R46 K26 ["rows"]
      379 GETTABLEKS                       R47 R40 K33 ["Heading"]
      381 SETTABLEKS                       R47 R46 K27 ["title"]
      383 SETTABLEKS                       R36 R46 K28 ["onComplete"]
      385 SETTABLEKS                       R37 R46 K29 ["onBack"]
      387 SETTABLEKS                       R38 R46 K30 ["onError"]
      389 GETTABLEKS                       R47 R0 K31 ["LayoutOrder"]
      391 SETTABLEKS                       R47 R46 K31 ["LayoutOrder"]
      393 CALL                             R44 2 -1
      394 RETURN                           R44 -1
      395 GETUPVAL                         R44 20
      396 CALL                             R44 0 1
      397 GETUPVAL                         R45 18
      398 GETUPVAL                         R46 21
      399 DUPTABLE                         R47 K36 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      400 GETTABLEKS                       R48 R0 K31 ["LayoutOrder"]
      402 SETTABLEKS                       R48 R47 K31 ["LayoutOrder"]
      404 DUPTABLE                         R48 K42 [{"Title", "Description", "PropertyRows", "DisabledReason", "ButtonGroup"}]
      405 LOADB                            R49 0
      406 GETTABLEKS                       R50 R40 K33 ["Heading"]
      408 JUMPIFEQKNIL                     R50 ; [+13]
      410 GETUPVAL                         R49 18
      411 GETUPVAL                         R50 22
      412 DUPTABLE                         R51 K45 [{["tag"] = "size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"]}]
      413 GETTABLEKS                       R52 R40 K33 ["Heading"]
      415 SETTABLEKS                       R52 R51 K44 ["Text"]
      417 MOVE                             R52 R44
      418 CALL                             R52 0 1
      419 SETTABLEKS                       R52 R51 K31 ["LayoutOrder"]
      421 CALL                             R49 2 1
      422 SETTABLEKS                       R49 R48 K37 ["Title"]
      424 LOADB                            R49 0
      425 GETTABLEKS                       R50 R40 K38 ["Description"]
      427 JUMPIFEQKNIL                     R50 ; [+13]
      429 GETUPVAL                         R49 18
      430 GETUPVAL                         R50 22
      431 DUPTABLE                         R51 K47 [{["tag"] = "size-full-0 auto-xy text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      432 GETTABLEKS                       R52 R40 K38 ["Description"]
      434 SETTABLEKS                       R52 R51 K44 ["Text"]
      436 MOVE                             R52 R44
      437 CALL                             R52 0 1
      438 SETTABLEKS                       R52 R51 K31 ["LayoutOrder"]
      440 CALL                             R49 2 1
      441 SETTABLEKS                       R49 R48 K38 ["Description"]
      443 GETUPVAL                         R49 18
      444 GETUPVAL                         R50 23
      445 GETTABLEKS                       R50 R50 K48 ["PropertyRowsRoot"]
      447 DUPTABLE                         R51 K55 [{"rowDefinitions", "onChange", "isDisabled", "initialValues", "controlsRef", "onBusyChanged", "LayoutOrder"}]
      448 SETTABLEKS                       R23 R51 K49 ["rowDefinitions"]
      450 SETTABLEKS                       R30 R51 K50 ["onChange"]
      452 SETTABLEKS                       R11 R51 K51 ["isDisabled"]
      454 SETTABLEKS                       R17 R51 K52 ["initialValues"]
      456 SETTABLEKS                       R21 R51 K53 ["controlsRef"]
      458 SETTABLEKS                       R20 R51 K54 ["onBusyChanged"]
      460 MOVE                             R52 R44
      461 CALL                             R52 0 1
      462 SETTABLEKS                       R52 R51 K31 ["LayoutOrder"]
      464 CALL                             R49 2 1
      465 SETTABLEKS                       R49 R48 K39 ["PropertyRows"]
      467 LOADB                            R49 0
      468 JUMPIFEQKNIL                     R28 ; [+58]
      470 GETUPVAL                         R49 18
      471 GETUPVAL                         R50 21
      472 DUPTABLE                         R51 K57 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-xy", ["LayoutOrder"]}]
      473 MOVE                             R52 R44
      474 CALL                             R52 0 1
      475 SETTABLEKS                       R52 R51 K31 ["LayoutOrder"]
      477 DUPTABLE                         R52 K60 [{"ErrorIcon", "ErrorText"}]
      478 GETUPVAL                         R53 18
      479 GETUPVAL                         R54 24
      480 DUPTABLE                         R55 K64 [{"name", "style", "size", "LayoutOrder"}]
      481 GETUPVAL                         R56 16
      482 GETTABLEKS                       R56 R56 K65 ["Enums"]
      484 GETTABLEKS                       R56 R56 K66 ["IconName"]
      486 GETTABLEKS                       R56 R56 K67 ["TriangleExclamation"]
      488 SETTABLEKS                       R56 R55 K61 ["name"]
      490 GETTABLEKS                       R56 R41 K68 ["Color"]
      492 GETTABLEKS                       R56 R56 K69 ["System"]
      494 GETTABLEKS                       R56 R56 K70 ["Warning"]
      496 SETTABLEKS                       R56 R55 K62 ["style"]
      498 GETUPVAL                         R56 16
      499 GETTABLEKS                       R56 R56 K65 ["Enums"]
      501 GETTABLEKS                       R56 R56 K71 ["IconSize"]
      503 GETTABLEKS                       R56 R56 K72 ["XSmall"]
      505 SETTABLEKS                       R56 R55 K63 ["size"]
      507 MOVE                             R56 R44
      508 CALL                             R56 0 1
      509 SETTABLEKS                       R56 R55 K31 ["LayoutOrder"]
      511 CALL                             R53 2 1
      512 SETTABLEKS                       R53 R52 K58 ["ErrorIcon"]
      514 GETUPVAL                         R53 18
      515 GETUPVAL                         R54 22
      516 DUPTABLE                         R55 K74 [{["tag"] = "auto-xy text-body-small text-align-x-left content-system-warning", ["Text"], ["LayoutOrder"]}]
      517 SETTABLEKS                       R28 R55 K44 ["Text"]
      519 MOVE                             R56 R44
      520 CALL                             R56 0 1
      521 SETTABLEKS                       R56 R55 K31 ["LayoutOrder"]
      523 CALL                             R53 2 1
      524 SETTABLEKS                       R53 R52 K59 ["ErrorText"]
      526 CALL                             R49 3 1
      527 SETTABLEKS                       R49 R48 K40 ["DisabledReason"]
      529 GETUPVAL                         R49 18
      530 GETUPVAL                         R50 21
      531 DUPTABLE                         R51 K76 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      532 MOVE                             R52 R44
      533 CALL                             R52 0 1
      534 SETTABLEKS                       R52 R51 K31 ["LayoutOrder"]
      536 DUPTABLE                         R52 K79 [{"SubmitButton", "CancelButton"}]
      537 GETUPVAL                         R53 18
      538 GETUPVAL                         R54 25
      539 DUPTABLE                         R55 K84 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      540 GETTABLEKS                       R56 R40 K77 ["SubmitButton"]
      542 SETTABLEKS                       R56 R55 K80 ["text"]
      544 GETUPVAL                         R56 16
      545 GETTABLEKS                       R56 R56 K65 ["Enums"]
      547 GETTABLEKS                       R56 R56 K85 ["InputSize"]
      549 GETTABLEKS                       R56 R56 K72 ["XSmall"]
      551 SETTABLEKS                       R56 R55 K63 ["size"]
      553 GETUPVAL                         R56 16
      554 GETTABLEKS                       R56 R56 K65 ["Enums"]
      556 GETTABLEKS                       R56 R56 K86 ["ButtonVariant"]
      558 GETTABLEKS                       R56 R56 K87 ["Emphasis"]
      560 SETTABLEKS                       R56 R55 K81 ["variant"]
      562 MOVE                             R56 R11
      563 JUMPIF                           R56 ; [+1]
      564 NOT                              R56 R29
      565 SETTABLEKS                       R56 R55 K51 ["isDisabled"]
      567 SETTABLEKS                       R34 R55 K82 ["onActivated"]
      569 MOVE                             R56 R44
      570 CALL                             R56 0 1
      571 SETTABLEKS                       R56 R55 K31 ["LayoutOrder"]
      573 GETUPVAL                         R56 26
      574 GETTABLEKS                       R56 R56 K88 ["AskInput"]
      576 GETTABLEKS                       R56 R56 K77 ["SubmitButton"]
      578 SETTABLEKS                       R56 R55 K83 ["testId"]
      580 CALL                             R53 2 1
      581 SETTABLEKS                       R53 R52 K77 ["SubmitButton"]
      583 GETUPVAL                         R53 18
      584 GETUPVAL                         R54 25
      585 DUPTABLE                         R55 K84 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      586 GETTABLEKS                       R56 R40 K78 ["CancelButton"]
      588 SETTABLEKS                       R56 R55 K80 ["text"]
      590 GETUPVAL                         R56 16
      591 GETTABLEKS                       R56 R56 K65 ["Enums"]
      593 GETTABLEKS                       R56 R56 K85 ["InputSize"]
      595 GETTABLEKS                       R56 R56 K72 ["XSmall"]
      597 SETTABLEKS                       R56 R55 K63 ["size"]
      599 GETUPVAL                         R56 16
      600 GETTABLEKS                       R56 R56 K65 ["Enums"]
      602 GETTABLEKS                       R56 R56 K86 ["ButtonVariant"]
      604 GETTABLEKS                       R56 R56 K89 ["Standard"]
      606 SETTABLEKS                       R56 R55 K81 ["variant"]
      608 SETTABLEKS                       R11 R55 K51 ["isDisabled"]
      610 SETTABLEKS                       R39 R55 K82 ["onActivated"]
      612 MOVE                             R56 R44
      613 CALL                             R56 0 1
      614 SETTABLEKS                       R56 R55 K31 ["LayoutOrder"]
      616 GETUPVAL                         R56 26
      617 GETTABLEKS                       R56 R56 K88 ["AskInput"]
      619 GETTABLEKS                       R56 R56 K78 ["CancelButton"]
      621 SETTABLEKS                       R56 R55 K83 ["testId"]
      623 CALL                             R53 2 1
      624 SETTABLEKS                       R53 R52 K78 ["CancelButton"]
      626 CALL                             R49 3 1
      627 SETTABLEKS                       R49 R48 K41 ["ButtonGroup"]
      629 CALL                             R45 3 -1
      630 RETURN                           R45 -1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 DUPTABLE                         R0 K1 [{"Preparing"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["AskInput"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_41]
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

PROTO_43:
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
      121 GETTABLEKS                       R18 R18 K22 ["Contexts"]
      123 GETTABLEKS                       R18 R18 K23 ["Actions"]
      125 GETTABLEKS                       R18 R18 K30 ["SegmentMeshActionsContext"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K10 [require]
      130 GETTABLEKS                       R19 R0 K15 ["Components"]
      132 GETTABLEKS                       R19 R19 K31 ["ShimmerGradient"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K10 [require]
      137 GETTABLEKS                       R20 R0 K17 ["Util"]
      139 GETTABLEKS                       R20 R20 K32 ["SlashCommandConfiguration"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K10 [require]
      144 GETTABLEKS                       R21 R0 K17 ["Util"]
      146 GETTABLEKS                       R21 R21 K33 ["TestIds"]
      148 CALL                             R20 1 1
      149 GETIMPORT                        R21 K10 [require]
      151 GETTABLEKS                       R22 R0 K15 ["Components"]
      153 GETTABLEKS                       R22 R22 K22 ["Contexts"]
      155 GETTABLEKS                       R22 R22 K23 ["Actions"]
      157 GETTABLEKS                       R22 R22 K34 ["TextureGenActionsContext"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K10 [require]
      162 GETTABLEKS                       R23 R0 K35 ["Resources"]
      164 GETTABLEKS                       R23 R23 K36 ["Localization"]
      166 GETTABLEKS                       R23 R23 K37 ["Translator"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K10 [require]
      171 GETTABLEKS                       R24 R0 K38 ["Types"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K10 [require]
      176 GETTABLEKS                       R25 R0 K17 ["Util"]
      178 GETTABLEKS                       R25 R25 K18 ["AskInput"]
      180 GETTABLEKS                       R25 R25 K39 ["Validation"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K10 [require]
      185 GETTABLEKS                       R26 R0 K17 ["Util"]
      187 GETTABLEKS                       R26 R26 K18 ["AskInput"]
      189 GETTABLEKS                       R26 R26 K40 ["ValidationReason"]
      191 CALL                             R25 1 1
      192 GETIMPORT                        R26 K10 [require]
      194 GETTABLEKS                       R27 R0 K17 ["Util"]
      196 GETTABLEKS                       R27 R27 K41 ["WidgetUtils"]
      198 CALL                             R26 1 1
      199 GETIMPORT                        R27 K10 [require]
      201 GETTABLEKS                       R28 R0 K42 ["Hooks"]
      203 GETTABLEKS                       R28 R28 K43 ["useLatest"]
      205 CALL                             R27 1 1
      206 GETTABLEKS                       R28 R26 K44 ["ToolStatus"]
      208 GETTABLEKS                       R29 R4 K45 ["Button"]
      210 GETTABLEKS                       R30 R4 K46 ["Icon"]
      212 GETTABLEKS                       R31 R4 K47 ["Text"]
      214 GETTABLEKS                       R32 R4 K48 ["View"]
      216 GETTABLEKS                       R33 R5 K49 ["createElement"]
      218 GETTABLEKS                       R34 R6 K50 ["createNextOrder"]
      220 GETTABLEKS                       R35 R10 K51 ["INPUT_TYPE"]
      222 GETTABLEKS                       R36 R16 K52 ["ROW_TYPES"]
      224 DUPTABLE                         R37 K55 [{["Form"] = "Form", ["Picker"] = "Picker"}]
      225 NEWTABLE                         R38 0 0
      227 DUPCLOSURE                       R39 K56 [PROTO_0]
      228 CAPTURE                          VAL R25
      229 DUPCLOSURE                       R40 K57 [PROTO_1]
      230 CAPTURE                          VAL R22
      231 NEWTABLE                         R41 8 0
      233 GETTABLEKS                       R42 R35 K58 ["Array"]
      235 GETTABLEKS                       R43 R36 K59 ["PartNames"]
      237 SETTABLE                         R43 R41 R42
      238 GETTABLEKS                       R42 R35 K60 ["Boolean"]
      240 GETTABLEKS                       R43 R36 K60 ["Boolean"]
      242 SETTABLE                         R43 R41 R42
      243 GETTABLEKS                       R42 R35 K61 ["Image"]
      245 GETTABLEKS                       R43 R36 K62 ["HintImage"]
      247 SETTABLE                         R43 R41 R42
      248 GETTABLEKS                       R42 R35 K63 ["Instance"]
      250 GETTABLEKS                       R43 R36 K63 ["Instance"]
      252 SETTABLE                         R43 R41 R42
      253 GETTABLEKS                       R42 R35 K64 ["Number"]
      255 GETTABLEKS                       R43 R36 K64 ["Number"]
      257 SETTABLE                         R43 R41 R42
      258 GETTABLEKS                       R42 R35 K65 ["Option"]
      260 GETTABLEKS                       R43 R36 K66 ["Select"]
      262 SETTABLE                         R43 R41 R42
      263 GETTABLEKS                       R42 R35 K67 ["String"]
      265 GETTABLEKS                       R43 R36 K67 ["String"]
      267 SETTABLE                         R43 R41 R42
      268 NEWTABLE                         R42 8 0
      270 GETTABLEKS                       R43 R36 K67 ["String"]
      272 DUPCLOSURE                       R44 K68 [PROTO_2]
      273 CAPTURE                          VAL R36
      274 CAPTURE                          VAL R12
      275 CAPTURE                          VAL R25
      276 SETTABLE                         R44 R42 R43
      277 GETTABLEKS                       R43 R36 K64 ["Number"]
      279 DUPCLOSURE                       R44 K69 [PROTO_3]
      280 CAPTURE                          VAL R35
      281 CAPTURE                          VAL R36
      282 CAPTURE                          VAL R24
      283 SETTABLE                         R44 R42 R43
      284 GETTABLEKS                       R43 R36 K66 ["Select"]
      286 DUPCLOSURE                       R44 K70 [PROTO_4]
      287 CAPTURE                          VAL R35
      288 CAPTURE                          VAL R36
      289 CAPTURE                          VAL R39
      290 CAPTURE                          VAL R40
      291 SETTABLE                         R44 R42 R43
      292 GETTABLEKS                       R43 R36 K63 ["Instance"]
      294 DUPCLOSURE                       R44 K71 [PROTO_6]
      295 CAPTURE                          VAL R36
      296 SETTABLE                         R44 R42 R43
      297 GETTABLEKS                       R43 R36 K59 ["PartNames"]
      299 DUPCLOSURE                       R44 K72 [PROTO_7]
      300 CAPTURE                          VAL R35
      301 CAPTURE                          VAL R36
      302 CAPTURE                          VAL R40
      303 CAPTURE                          VAL R24
      304 SETTABLE                         R44 R42 R43
      305 DUPCLOSURE                       R43 K73 [PROTO_8]
      306 DUPCLOSURE                       R44 K74 [PROTO_9]
      307 CAPTURE                          VAL R19
      308 CAPTURE                          VAL R41
      309 CAPTURE                          VAL R36
      310 CAPTURE                          VAL R25
      311 CAPTURE                          VAL R42
      312 DUPCLOSURE                       R45 K75 [PROTO_10]
      313 CAPTURE                          VAL R44
      314 CAPTURE                          VAL R19
      315 CAPTURE                          VAL R43
      316 DUPCLOSURE                       R46 K76 [PROTO_13]
      317 CAPTURE                          VAL R38
      318 CAPTURE                          VAL R26
      319 CAPTURE                          VAL R28
      320 CAPTURE                          VAL R19
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R25
      323 CAPTURE                          VAL R22
      324 CAPTURE                          VAL R45
      325 CAPTURE                          VAL R34
      326 CAPTURE                          VAL R33
      327 CAPTURE                          VAL R32
      328 CAPTURE                          VAL R31
      329 CAPTURE                          VAL R7
      330 CAPTURE                          VAL R20
      331 CAPTURE                          VAL R16
      332 CAPTURE                          VAL R6
      333 DUPCLOSURE                       R47 K77 [PROTO_37]
      334 CAPTURE                          VAL R38
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R24
      337 CAPTURE                          VAL R19
      338 CAPTURE                          VAL R15
      339 CAPTURE                          VAL R11
      340 CAPTURE                          VAL R21
      341 CAPTURE                          VAL R17
      342 CAPTURE                          VAL R44
      343 CAPTURE                          VAL R43
      344 CAPTURE                          VAL R35
      345 CAPTURE                          VAL R25
      346 CAPTURE                          VAL R8
      347 CAPTURE                          VAL R13
      348 CAPTURE                          VAL R1
      349 CAPTURE                          VAL R22
      350 CAPTURE                          VAL R4
      351 CAPTURE                          VAL R45
      352 CAPTURE                          VAL R33
      353 CAPTURE                          VAL R9
      354 CAPTURE                          VAL R34
      355 CAPTURE                          VAL R32
      356 CAPTURE                          VAL R31
      357 CAPTURE                          VAL R16
      358 CAPTURE                          VAL R30
      359 CAPTURE                          VAL R29
      360 CAPTURE                          VAL R20
      361 DUPCLOSURE                       R48 K78 [PROTO_40]
      362 CAPTURE                          VAL R5
      363 CAPTURE                          VAL R14
      364 CAPTURE                          VAL R27
      365 CAPTURE                          VAL R33
      366 CAPTURE                          VAL R47
      367 CAPTURE                          VAL R3
      368 DUPCLOSURE                       R49 K79 [PROTO_42]
      369 CAPTURE                          VAL R5
      370 CAPTURE                          VAL R22
      371 CAPTURE                          VAL R34
      372 CAPTURE                          VAL R33
      373 CAPTURE                          VAL R32
      374 CAPTURE                          VAL R31
      375 CAPTURE                          VAL R18
      376 DUPCLOSURE                       R50 K80 [PROTO_43]
      377 CAPTURE                          VAL R26
      378 CAPTURE                          VAL R28
      379 CAPTURE                          VAL R33
      380 CAPTURE                          VAL R48
      381 CAPTURE                          VAL R46
      382 CAPTURE                          VAL R49
      383 DUPTABLE                         R51 K83 [{["Type"] = "AskInput", ["ContentWidget"]}]
      384 GETTABLEKS                       R52 R5 K84 ["memo"]
      386 MOVE                             R53 R50
      387 CALL                             R52 1 1
      388 SETTABLEKS                       R52 R51 K82 ["ContentWidget"]
      390 RETURN                           R51 1
