PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\x<LS>\x"]
        4 LOADN                            R4 1
        5 LOADB                            R5 1
        6 CALL                             R1 4 2
        7 GETIMPORT                        R3 K2 [string.find]
        9 MOVE                             R4 R0
       10 LOADK                            R5 K4 ["\x<LE>\x"]
       11 LOADN                            R6 1
       12 LOADB                            R7 1
       13 CALL                             R3 4 2
       14 JUMPIFNOT                        R1 ; [+1]
       15 JUMPIF                           R3 ; [+4]
       16 DUPTABLE                         R5 K9 [{["before"], ["link"] = "", ["after"] = ""}]
       17 SETTABLEKS                       R0 R5 K5 ["before"]
       19 RETURN                           R5 1
       20 AND                              R6 R2 R4
       21 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       23 LOADK                            R7 K10 ["Expected openEnd and closeEnd"]
       24 GETIMPORT                        R5 K12 [assert]
       26 CALL                             R5 2 0
       27 DUPTABLE                         R5 K13 [{"before", "link", "after"}]
       28 LOADN                            R8 1
       29 SUBK                             R9 R1 K14 [1]
       30 FASTCALL3                        STRING_SUB R0 R8 R9
       32 MOVE                             R7 R0
       33 GETIMPORT                        R6 K16 [string.sub]
       35 CALL                             R6 3 1
       36 SETTABLEKS                       R6 R5 K5 ["before"]
       38 ADDK                             R8 R2 K14 [1]
       39 SUBK                             R9 R3 K14 [1]
       40 FASTCALL3                        STRING_SUB R0 R8 R9
       42 MOVE                             R7 R0
       43 GETIMPORT                        R6 K16 [string.sub]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K6 ["link"]
       48 ADDK                             R8 R4 K14 [1]
       49 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       51 MOVE                             R7 R0
       52 GETIMPORT                        R6 K16 [string.sub]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K8 ["after"]
       57 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onToggle"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["scope"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K3 [{[1] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
        7 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
        9 DUPTABLE                         R5 K6 [{"ScopeCheckbox", "ScopeName"}]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 3
       12 DUPTABLE                         R8 K13 [{["isChecked"], ["onActivated"], ["label"] = "", ["size"], ["testId"], ["LayoutOrder"]}]
       13 GETTABLEKS                       R9 R0 K7 ["isChecked"]
       15 SETTABLEKS                       R9 R8 K7 ["isChecked"]
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R9 R8 K8 ["onActivated"]
       21 GETUPVAL                         R9 4
       22 GETTABLEKS                       R9 R9 K14 ["XSmall"]
       24 SETTABLEKS                       R9 R8 K11 ["size"]
       26 GETUPVAL                         R9 5
       27 GETTABLEKS                       R9 R9 K15 ["ScopePermissions"]
       29 GETTABLEKS                       R9 R9 K4 ["ScopeCheckbox"]
       31 GETTABLEKS                       R10 R0 K16 ["scope"]
       33 CALL                             R9 1 1
       34 SETTABLEKS                       R9 R8 K12 ["testId"]
       36 MOVE                             R9 R1
       37 CALL                             R9 0 1
       38 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K4 ["ScopeCheckbox"]
       43 GETUPVAL                         R6 1
       44 GETUPVAL                         R7 6
       45 DUPTABLE                         R8 K19 [{[1] = "auto-xy text-label-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
       46 GETTABLEKS                       R9 R0 K16 ["scope"]
       48 SETTABLEKS                       R9 R8 K18 ["Text"]
       50 MOVE                             R9 R1
       51 CALL                             R9 0 1
       52 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K5 ["ScopeName"]
       57 CALL                             R2 3 -1
       58 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelect"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["preset"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 DUPTABLE                         R5 K5 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-xsmall", ["LayoutOrder"], ["testId"]}]
        7 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
        9 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K6 ["ScopePermissions"]
       14 GETTABLEKS                       R6 R6 K7 ["PresetItem"]
       16 GETTABLEKS                       R7 R1 K8 ["id"]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K4 ["testId"]
       21 DUPTABLE                         R6 K13 [{"PresetCheckbox", "ColorDot", "Label", "Description"}]
       22 GETUPVAL                         R7 1
       23 GETUPVAL                         R8 4
       24 DUPTABLE                         R9 K19 [{["isChecked"], ["onActivated"], ["label"] = "", ["size"], ["LayoutOrder"]}]
       25 GETTABLEKS                       R10 R0 K20 ["isActive"]
       27 SETTABLEKS                       R10 R9 K14 ["isChecked"]
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       34 GETUPVAL                         R10 5
       35 GETTABLEKS                       R10 R10 K21 ["XSmall"]
       37 SETTABLEKS                       R10 R9 K18 ["size"]
       39 MOVE                             R10 R2
       40 CALL                             R10 0 1
       41 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K9 ["PresetCheckbox"]
       46 GETUPVAL                         R7 1
       47 GETUPVAL                         R8 2
       48 DUPTABLE                         R9 K22 [{"tag", "LayoutOrder"}]
       49 NEWTABLE                         R10 2 0
       51 LOADB                            R11 1
       52 SETTABLEKS                       R11 R10 K23 ["size-200-200 radius-circle"]
       54 GETTABLEKS                       R11 R1 K24 ["colorTag"]
       56 LOADB                            R12 1
       57 SETTABLE                         R12 R10 R11
       58 SETTABLEKS                       R10 R9 K1 ["tag"]
       60 MOVE                             R10 R2
       61 CALL                             R10 0 1
       62 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K10 ["ColorDot"]
       67 GETUPVAL                         R7 1
       68 GETUPVAL                         R8 6
       69 DUPTABLE                         R9 K27 [{["tag"] = "auto-xy text-label-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
       70 GETUPVAL                         R10 7
       71 LOADK                            R12 K6 ["ScopePermissions"]
       72 GETTABLEKS                       R13 R1 K28 ["labelKey"]
       74 NAMECALL                         R10 R10 K29 ["getText"]
       76 CALL                             R10 3 1
       77 SETTABLEKS                       R10 R9 K26 ["Text"]
       79 MOVE                             R10 R2
       80 CALL                             R10 0 1
       81 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K11 ["Label"]
       86 GETUPVAL                         R7 1
       87 GETUPVAL                         R8 6
       88 DUPTABLE                         R9 K31 [{["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-end content-muted", ["Text"], ["LayoutOrder"]}]
       89 GETUPVAL                         R10 7
       90 LOADK                            R12 K6 ["ScopePermissions"]
       91 GETTABLEKS                       R13 R1 K32 ["descriptionKey"]
       93 NAMECALL                         R10 R10 K29 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K26 ["Text"]
       98 MOVE                             R10 R2
       99 CALL                             R10 0 1
      100 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K12 ["Description"]
      105 CALL                             R3 3 -1
      106 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getScopesForPreset"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R5 R2
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLE                         R11 R3 R9
       14 JUMPIFNOT                        R11 ; [+2]
       15 LOADK                            R10 K1 ["Accept"]
       16 JUMP                             ; [+1]
       17 LOADK                            R10 K2 ["Deny"]
       18 SETTABLE                         R10 R4 R9
       19 FORGLOOP                         R5 2 ; [-7]
       21 RETURN                           R4 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getAvailableScopesAsync"]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+14]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K4 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+8]
       14 GETIMPORT                        R2 K7 [table.sort]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getScopeRiskLevelsAsync"]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+10]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K4 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+4]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getSelectedPresetAsync"]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+10]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K4 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+4]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 GETIMPORT                        R2 K1 [pcall]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K6 ["getScopePermissionsAsync"]
       22 CALL                             R2 1 2
       23 JUMPIFNOT                        R2 ; [+10]
       24 FASTCALL1                        TYPEOF R3 ; [+3]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K4 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+4]
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 3
       35 LOADB                            R5 1
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K2 [task.spawn]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K2 [task.spawn]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["setScopePermissionsAsync"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 0
        7 GETIMPORT                        R0 K1 [pcall]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["setSelectedPresetAsync"]
       12 GETUPVAL                         R2 2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R1 1
        3 LENGTH                           R0 R1
        4 JUMPIFEQKN                       R0 K0 [0] ; [+7]
        6 GETIMPORT                        R0 K2 [next]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 3
       14 JUMPIFNOTEQKS                    R0 K3 ["custom"] ; [+3]
       16 CLOSEUPVALS                      R0
       17 RETURN                           R0 0
       18 JUMPIFNOTEQKNIL                  R0 ; [+2]
       20 LOADK                            R0 K4 ["none"]
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 GETUPVAL                         R3 2
       24 GETUPVAL                         R4 1
       25 CALL                             R1 3 1
       26 GETUPVAL                         R2 5
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 GETIMPORT                        R2 K7 [task.spawn]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          REF R0
       35 CALL                             R2 1 0
       36 CLOSEUPVALS                      R0
       37 RETURN                           R0 0

PROTO_12:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R7 1
        6 GETTABLE                         R6 R7 R5
        7 JUMPIFNOTEQKS                    R6 K0 ["Accept"] ; [+2]
        9 ADDK                             R0 R0 K1 [1]
       10 FORGLOOP                         R1 2 ; [-6]
       12 RETURN                           R0 1

PROTO_13:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["setSelectedPresetAsync"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 0
        7 GETIMPORT                        R0 K1 [pcall]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["setScopePermissionsAsync"]
       12 GETUPVAL                         R2 2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETIMPORT                        R2 K2 [task.spawn]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOTEQKS                    R3 K3 ["Accept"] ; [+3]
        8 LOADK                            R2 K4 ["Deny"]
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K3 ["Accept"]
       11 SETTABLE                         R2 R1 R0
       12 GETUPVAL                         R2 1
       13 LOADK                            R3 K5 ["custom"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOTEQKS                    R0 K0 ["custom"] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 3
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K3 [{"Title", "Subtitle", "LearnMoreRiskLevels"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["ScopePermissions"]
        3 LOADK                            R4 K0 ["Title"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["ScopePermissions"]
       11 LOADK                            R4 K1 ["Subtitle"]
       12 DUPTABLE                         R5 K8 [{"enabled", "total"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K6 ["enabled"]
       16 GETUPVAL                         R6 2
       17 SETTABLEKS                       R6 R5 K7 ["total"]
       19 NAMECALL                         R1 R1 K5 ["getText"]
       21 CALL                             R1 4 1
       22 SETTABLEKS                       R1 R0 K1 ["Subtitle"]
       24 GETUPVAL                         R1 3
       25 GETUPVAL                         R2 0
       26 LOADK                            R4 K4 ["ScopePermissions"]
       27 LOADK                            R5 K2 ["LearnMoreRiskLevels"]
       28 DUPTABLE                         R6 K13 [{["linkStart"] = "\x<LS>\x", ["linkEnd"] = "\x<LE>\x"}]
       29 NAMECALL                         R2 R2 K5 ["getText"]
       31 CALL                             R2 4 -1
       32 CALL                             R1 -1 1
       33 SETTABLEKS                       R1 R0 K2 ["LearnMoreRiskLevels"]
       35 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["openUrl"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["FStringStudioScopeRiskLevelsDocsUrl"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useState"]
        7 NEWTABLE                         R2 0 0
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["useState"]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K1 ["useState"]
       19 NEWTABLE                         R6 0 0
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K1 ["useState"]
       25 LOADNIL                          R8
       26 CALL                             R7 1 2
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R9 R9 K1 ["useState"]
       30 LOADB                            R10 0
       31 CALL                             R9 1 2
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K2 ["useEffect"]
       35 NEWCLOSURE                       R12 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R10
       42 NEWTABLE                         R13 0 0
       44 CALL                             R11 2 0
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K2 ["useEffect"]
       48 NEWCLOSURE                       R12 P1
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R13 0 3
       58 MOVE                             R14 R9
       59 MOVE                             R15 R3
       60 MOVE                             R16 R5
       61 SETLIST                          R13 R14 3 [1]
       63 CALL                             R11 2 0
       64 LENGTH                           R11 R3
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K3 ["useMemo"]
       68 NEWCLOSURE                       R13 P2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 NEWTABLE                         R14 0 2
       73 MOVE                             R15 R1
       74 MOVE                             R16 R3
       75 SETLIST                          R14 R15 2 [1]
       77 CALL                             R12 2 1
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R13 R13 K4 ["useCallback"]
       81 NEWCLOSURE                       R14 P3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R0
       85 NEWTABLE                         R15 0 0
       87 CALL                             R13 2 1
       88 GETUPVAL                         R14 1
       89 GETTABLEKS                       R14 R14 K4 ["useCallback"]
       91 NEWCLOSURE                       R15 P4
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R13
       94 NEWTABLE                         R16 0 2
       96 MOVE                             R17 R1
       97 MOVE                             R18 R13
       98 SETLIST                          R16 R17 2 [1]
      100 CALL                             R14 2 1
      101 ORK                              R15 R7 K5 ["none"]
      102 GETUPVAL                         R16 1
      103 GETTABLEKS                       R16 R16 K4 ["useCallback"]
      105 NEWCLOSURE                       R17 P5
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R13
      110 NEWTABLE                         R18 0 3
      112 MOVE                             R19 R5
      113 MOVE                             R20 R3
      114 MOVE                             R21 R13
      115 SETLIST                          R18 R19 3 [1]
      117 CALL                             R16 2 1
      118 GETUPVAL                         R17 1
      119 GETTABLEKS                       R17 R17 K3 ["useMemo"]
      121 NEWCLOSURE                       R18 P6
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R11
      125 CAPTURE                          UPVAL U4
      126 NEWTABLE                         R19 0 3
      128 GETUPVAL                         R20 3
      129 GETTABLEKS                       R20 R20 K6 ["locale"]
      131 MOVE                             R21 R12
      132 MOVE                             R22 R11
      133 SETLIST                          R19 R20 3 [1]
      135 CALL                             R17 2 1
      136 GETUPVAL                         R18 1
      137 GETTABLEKS                       R18 R18 K4 ["useCallback"]
      139 NEWCLOSURE                       R19 P7
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U5
      142 NEWTABLE                         R20 0 1
      144 GETTABLEKS                       R21 R0 K7 ["http"]
      146 SETLIST                          R20 R21 1 [1]
      148 CALL                             R18 2 1
      149 GETUPVAL                         R19 6
      150 CALL                             R19 0 1
      151 NEWTABLE                         R20 0 0
      153 GETUPVAL                         R21 6
      154 CALL                             R21 0 1
      155 GETUPVAL                         R22 7
      156 GETTABLEKS                       R22 R22 K8 ["PRESETS"]
      158 LOADNIL                          R23
      159 LOADNIL                          R24
      160 FORGPREP                         R22
      161 GETTABLEKS                       R27 R26 K9 ["id"]
      163 GETUPVAL                         R28 8
      164 GETUPVAL                         R29 9
      165 DUPTABLE                         R30 K14 [{"preset", "isActive", "onSelect", "LayoutOrder"}]
      166 SETTABLEKS                       R26 R30 K10 ["preset"]
      168 GETTABLEKS                       R32 R26 K9 ["id"]
      170 JUMPIFEQ                         R15 R32 ; [+2]
      172 LOADB                            R31 0 +1
      173 LOADB                            R31 1
      174 SETTABLEKS                       R31 R30 K11 ["isActive"]
      176 SETTABLEKS                       R16 R30 K12 ["onSelect"]
      178 MOVE                             R31 R21
      179 CALL                             R31 0 1
      180 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      182 CALL                             R28 2 1
      183 SETTABLE                         R28 R20 R27
      184 FORGLOOP                         R22 2 ; [-24]
      186 NEWTABLE                         R22 0 0
      188 GETUPVAL                         R23 6
      189 CALL                             R23 0 1
      190 MOVE                             R24 R3
      191 LOADNIL                          R25
      192 LOADNIL                          R26
      193 FORGPREP                         R24
      194 GETUPVAL                         R29 8
      195 GETUPVAL                         R30 10
      196 DUPTABLE                         R31 K18 [{"scope", "isChecked", "onToggle", "LayoutOrder"}]
      197 SETTABLEKS                       R28 R31 K15 ["scope"]
      199 GETTABLE                         R33 R1 R28
      200 JUMPIFEQKS                       R33 K19 ["Accept"] ; [+2]
      202 LOADB                            R32 0 +1
      203 LOADB                            R32 1
      204 SETTABLEKS                       R32 R31 K16 ["isChecked"]
      206 SETTABLEKS                       R14 R31 K17 ["onToggle"]
      208 MOVE                             R32 R23
      209 CALL                             R32 0 1
      210 SETTABLEKS                       R32 R31 K13 ["LayoutOrder"]
      212 CALL                             R29 2 1
      213 SETTABLE                         R29 R22 R28
      214 FORGLOOP                         R24 2 ; [-21]
      216 GETUPVAL                         R24 8
      217 GETUPVAL                         R25 11
      218 DUPTABLE                         R26 K23 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"]}]
      219 GETUPVAL                         R27 12
      220 GETTABLEKS                       R27 R27 K24 ["ScopePermissions"]
      222 GETTABLEKS                       R27 R27 K25 ["Container"]
      224 SETTABLEKS                       R27 R26 K22 ["testId"]
      226 DUPTABLE                         R27 K32 [{"Header", "Subtitle", "PresetSection", "LearnMoreRiskLevels", "SectionDivider", "ScopeList"}]
      227 GETUPVAL                         R28 8
      228 GETUPVAL                         R29 13
      229 DUPTABLE                         R30 K35 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      230 GETTABLEKS                       R31 R17 K36 ["Title"]
      232 SETTABLEKS                       R31 R30 K34 ["Text"]
      234 MOVE                             R31 R19
      235 CALL                             R31 0 1
      236 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      238 CALL                             R28 2 1
      239 SETTABLEKS                       R28 R27 K26 ["Header"]
      241 GETUPVAL                         R28 8
      242 GETUPVAL                         R29 13
      243 DUPTABLE                         R30 K38 [{["tag"] = "auto-xy text-body-small text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      244 GETTABLEKS                       R31 R17 K27 ["Subtitle"]
      246 SETTABLEKS                       R31 R30 K34 ["Text"]
      248 MOVE                             R31 R19
      249 CALL                             R31 0 1
      250 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      252 CALL                             R28 2 1
      253 SETTABLEKS                       R28 R27 K27 ["Subtitle"]
      255 GETUPVAL                         R28 8
      256 GETUPVAL                         R29 11
      257 DUPTABLE                         R30 K40 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-top-small", ["LayoutOrder"], ["testId"]}]
      258 MOVE                             R31 R19
      259 CALL                             R31 0 1
      260 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      262 GETUPVAL                         R31 12
      263 GETTABLEKS                       R31 R31 K24 ["ScopePermissions"]
      265 GETTABLEKS                       R31 R31 K41 ["PresetGroup"]
      267 SETTABLEKS                       R31 R30 K22 ["testId"]
      269 MOVE                             R31 R20
      270 CALL                             R28 3 1
      271 SETTABLEKS                       R28 R27 K28 ["PresetSection"]
      273 GETUPVAL                         R28 8
      274 GETUPVAL                         R29 11
      275 DUPTABLE                         R30 K43 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      276 MOVE                             R31 R19
      277 CALL                             R31 0 1
      278 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      280 DUPTABLE                         R31 K47 [{"Before", "Link", "After"}]
      281 GETTABLEKS                       R34 R17 K29 ["LearnMoreRiskLevels"]
      283 GETTABLEKS                       R34 R34 K48 ["before"]
      285 LENGTH                           R33 R34
      286 LOADN                            R34 0
      287 JUMPIFNOTLT                      R34 R33 ; [+16]
      289 GETUPVAL                         R32 8
      290 GETUPVAL                         R33 13
      291 DUPTABLE                         R34 K50 [{["tag"] = "auto-xy text-body-small text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      292 GETTABLEKS                       R35 R17 K29 ["LearnMoreRiskLevels"]
      294 GETTABLEKS                       R35 R35 K48 ["before"]
      296 SETTABLEKS                       R35 R34 K34 ["Text"]
      298 MOVE                             R35 R19
      299 CALL                             R35 0 1
      300 SETTABLEKS                       R35 R34 K13 ["LayoutOrder"]
      302 CALL                             R32 2 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R32
      305 SETTABLEKS                       R32 R31 K44 ["Before"]
      307 GETTABLEKS                       R34 R17 K29 ["LearnMoreRiskLevels"]
      309 GETTABLEKS                       R34 R34 K51 ["link"]
      311 LENGTH                           R33 R34
      312 LOADN                            R34 0
      313 JUMPIFNOTLT                      R34 R33 ; [+18]
      315 GETUPVAL                         R32 8
      316 GETUPVAL                         R33 13
      317 DUPTABLE                         R34 K54 [{["tag"] = "auto-xy text-body-small text-align-x-left content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      318 GETTABLEKS                       R35 R17 K29 ["LearnMoreRiskLevels"]
      320 GETTABLEKS                       R35 R35 K51 ["link"]
      322 SETTABLEKS                       R35 R34 K34 ["Text"]
      324 SETTABLEKS                       R18 R34 K53 ["onActivated"]
      326 MOVE                             R35 R19
      327 CALL                             R35 0 1
      328 SETTABLEKS                       R35 R34 K13 ["LayoutOrder"]
      330 CALL                             R32 2 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R32
      333 SETTABLEKS                       R32 R31 K45 ["Link"]
      335 GETTABLEKS                       R34 R17 K29 ["LearnMoreRiskLevels"]
      337 GETTABLEKS                       R34 R34 K55 ["after"]
      339 LENGTH                           R33 R34
      340 LOADN                            R34 0
      341 JUMPIFNOTLT                      R34 R33 ; [+16]
      343 GETUPVAL                         R32 8
      344 GETUPVAL                         R33 13
      345 DUPTABLE                         R34 K50 [{["tag"] = "auto-xy text-body-small text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      346 GETTABLEKS                       R35 R17 K29 ["LearnMoreRiskLevels"]
      348 GETTABLEKS                       R35 R35 K55 ["after"]
      350 SETTABLEKS                       R35 R34 K34 ["Text"]
      352 MOVE                             R35 R19
      353 CALL                             R35 0 1
      354 SETTABLEKS                       R35 R34 K13 ["LayoutOrder"]
      356 CALL                             R32 2 1
      357 JUMP                             ; [+1]
      358 LOADNIL                          R32
      359 SETTABLEKS                       R32 R31 K46 ["After"]
      361 CALL                             R28 3 1
      362 SETTABLEKS                       R28 R27 K29 ["LearnMoreRiskLevels"]
      364 GETUPVAL                         R28 8
      365 GETUPVAL                         R29 14
      366 DUPTABLE                         R30 K58 [{"LayoutOrder", "variant", "orientation"}]
      367 MOVE                             R31 R19
      368 CALL                             R31 0 1
      369 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      371 GETUPVAL                         R31 15
      372 GETTABLEKS                       R31 R31 K59 ["Default"]
      374 SETTABLEKS                       R31 R30 K56 ["variant"]
      376 GETUPVAL                         R31 16
      377 GETTABLEKS                       R31 R31 K60 ["Horizontal"]
      379 SETTABLEKS                       R31 R30 K57 ["orientation"]
      381 CALL                             R28 2 1
      382 SETTABLEKS                       R28 R27 K30 ["SectionDivider"]
      384 GETUPVAL                         R28 8
      385 GETUPVAL                         R29 11
      386 DUPTABLE                         R30 K61 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-top-small", ["LayoutOrder"]}]
      387 MOVE                             R31 R19
      388 CALL                             R31 0 1
      389 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      391 MOVE                             R31 R22
      392 CALL                             R28 3 1
      393 SETTABLEKS                       R28 R27 K31 ["ScopeList"]
      395 CALL                             R24 3 -1
      396 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["PermissionPresets"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["TestIds"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Resources"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R5 R5 K14 ["Translator"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K16 ["Foundation"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R8 K17 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K8 ["Parent"]
       62 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R6 K19 ["Checkbox"]
       67 GETTABLEKS                       R10 R6 K20 ["Divider"]
       69 GETTABLEKS                       R11 R6 K21 ["Text"]
       71 GETTABLEKS                       R12 R6 K22 ["View"]
       73 GETTABLEKS                       R13 R6 K23 ["Enums"]
       75 GETTABLEKS                       R13 R13 K24 ["DividerOrientation"]
       77 GETTABLEKS                       R14 R6 K23 ["Enums"]
       79 GETTABLEKS                       R14 R14 K25 ["DividerVariant"]
       81 GETTABLEKS                       R15 R6 K23 ["Enums"]
       83 GETTABLEKS                       R15 R15 K26 ["InputSize"]
       85 GETTABLEKS                       R16 R8 K27 ["createNextOrder"]
       87 GETTABLEKS                       R17 R7 K28 ["createElement"]
       89 DUPCLOSURE                       R18 K29 [PROTO_0]
       90 DUPCLOSURE                       R19 K30 [PROTO_2]
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R11
       98 DUPCLOSURE                       R20 K31 [PROTO_4]
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R4
      107 DUPCLOSURE                       R21 K32 [PROTO_5]
      108 CAPTURE                          VAL R2
      109 DUPCLOSURE                       R22 K33 [PROTO_19]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R20
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R13
      127 GETTABLEKS                       R23 R7 K34 ["memo"]
      129 MOVE                             R24 R22
      130 CALL                             R23 1 -1
      131 RETURN                           R23 -1
