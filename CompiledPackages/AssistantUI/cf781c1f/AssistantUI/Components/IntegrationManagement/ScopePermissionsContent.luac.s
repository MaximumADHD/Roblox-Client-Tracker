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
       15 JUMPIF                           R3 ; [+10]
       16 DUPTABLE                         R5 K8 [{"before", "link", "after"}]
       17 SETTABLEKS                       R0 R5 K5 ["before"]
       19 LOADK                            R6 K9 [""]
       20 SETTABLEKS                       R6 R5 K6 ["link"]
       22 LOADK                            R6 K9 [""]
       23 SETTABLEKS                       R6 R5 K7 ["after"]
       25 RETURN                           R5 1
       26 AND                              R6 R2 R4
       27 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       29 LOADK                            R7 K10 ["Expected openEnd and closeEnd"]
       30 GETIMPORT                        R5 K12 [assert]
       32 CALL                             R5 2 0
       33 DUPTABLE                         R5 K8 [{"before", "link", "after"}]
       34 LOADN                            R8 1
       35 SUBK                             R9 R1 K13 [1]
       36 FASTCALL3                        STRING_SUB R0 R8 R9
       38 MOVE                             R7 R0
       39 GETIMPORT                        R6 K15 [string.sub]
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R5 K5 ["before"]
       44 ADDK                             R8 R2 K13 [1]
       45 SUBK                             R9 R3 K13 [1]
       46 FASTCALL3                        STRING_SUB R0 R8 R9
       48 MOVE                             R7 R0
       49 GETIMPORT                        R6 K15 [string.sub]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K6 ["link"]
       54 ADDK                             R8 R4 K13 [1]
       55 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       57 MOVE                             R7 R0
       58 GETIMPORT                        R6 K15 [string.sub]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K7 ["after"]
       63 RETURN                           R5 1

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
        4 DUPTABLE                         R4 K2 [{"tag", "LayoutOrder"}]
        5 LOADK                            R5 K3 ["row size-full-0 auto-y gap-small align-y-center"]
        6 SETTABLEKS                       R5 R4 K0 ["tag"]
        8 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
       10 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       12 DUPTABLE                         R5 K6 [{"ScopeCheckbox", "ScopeName"}]
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 3
       15 DUPTABLE                         R8 K12 [{"isChecked", "onActivated", "label", "size", "testId", "LayoutOrder"}]
       16 GETTABLEKS                       R9 R0 K7 ["isChecked"]
       18 SETTABLEKS                       R9 R8 K7 ["isChecked"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R9 R8 K8 ["onActivated"]
       24 LOADK                            R9 K13 [""]
       25 SETTABLEKS                       R9 R8 K9 ["label"]
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R9 R9 K14 ["XSmall"]
       30 SETTABLEKS                       R9 R8 K10 ["size"]
       32 GETUPVAL                         R9 5
       33 GETTABLEKS                       R9 R9 K15 ["ScopePermissions"]
       35 GETTABLEKS                       R9 R9 K4 ["ScopeCheckbox"]
       37 GETTABLEKS                       R10 R0 K16 ["scope"]
       39 CALL                             R9 1 1
       40 SETTABLEKS                       R9 R8 K11 ["testId"]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K4 ["ScopeCheckbox"]
       49 GETUPVAL                         R6 1
       50 GETUPVAL                         R7 6
       51 DUPTABLE                         R8 K18 [{"tag", "Text", "LayoutOrder"}]
       52 LOADK                            R9 K19 ["auto-xy text-label-small text-align-x-left"]
       53 SETTABLEKS                       R9 R8 K0 ["tag"]
       55 GETTABLEKS                       R9 R0 K16 ["scope"]
       57 SETTABLEKS                       R9 R8 K17 ["Text"]
       59 MOVE                             R9 R1
       60 CALL                             R9 0 1
       61 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K5 ["ScopeName"]
       66 CALL                             R2 3 -1
       67 RETURN                           R2 -1

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
        6 DUPTABLE                         R5 K4 [{"tag", "LayoutOrder", "testId"}]
        7 LOADK                            R6 K5 ["row size-full-0 auto-y gap-small align-y-center padding-y-xsmall"]
        8 SETTABLEKS                       R6 R5 K1 ["tag"]
       10 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K6 ["ScopePermissions"]
       17 GETTABLEKS                       R6 R6 K7 ["PresetItem"]
       19 GETTABLEKS                       R7 R1 K8 ["id"]
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R5 K3 ["testId"]
       24 DUPTABLE                         R6 K13 [{"PresetCheckbox", "ColorDot", "Label", "Description"}]
       25 GETUPVAL                         R7 1
       26 GETUPVAL                         R8 4
       27 DUPTABLE                         R9 K18 [{"isChecked", "onActivated", "label", "size", "LayoutOrder"}]
       28 GETTABLEKS                       R10 R0 K19 ["isActive"]
       30 SETTABLEKS                       R10 R9 K14 ["isChecked"]
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       37 LOADK                            R10 K20 [""]
       38 SETTABLEKS                       R10 R9 K16 ["label"]
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R10 R10 K21 ["XSmall"]
       43 SETTABLEKS                       R10 R9 K17 ["size"]
       45 MOVE                             R10 R2
       46 CALL                             R10 0 1
       47 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K9 ["PresetCheckbox"]
       52 GETUPVAL                         R7 1
       53 GETUPVAL                         R8 2
       54 DUPTABLE                         R9 K22 [{"tag", "LayoutOrder"}]
       55 NEWTABLE                         R10 2 0
       57 LOADB                            R11 1
       58 SETTABLEKS                       R11 R10 K23 ["size-200-200 radius-circle shrink-0"]
       60 GETTABLEKS                       R11 R1 K24 ["colorTag"]
       62 LOADB                            R12 1
       63 SETTABLE                         R12 R10 R11
       64 SETTABLEKS                       R10 R9 K1 ["tag"]
       66 MOVE                             R10 R2
       67 CALL                             R10 0 1
       68 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K10 ["ColorDot"]
       73 GETUPVAL                         R7 1
       74 GETUPVAL                         R8 6
       75 DUPTABLE                         R9 K26 [{"tag", "Text", "LayoutOrder"}]
       76 LOADK                            R10 K27 ["auto-xy text-label-small text-align-x-left shrink-0"]
       77 SETTABLEKS                       R10 R9 K1 ["tag"]
       79 GETUPVAL                         R10 7
       80 LOADK                            R12 K6 ["ScopePermissions"]
       81 GETTABLEKS                       R13 R1 K28 ["labelKey"]
       83 NAMECALL                         R10 R10 K29 ["getText"]
       85 CALL                             R10 3 1
       86 SETTABLEKS                       R10 R9 K25 ["Text"]
       88 MOVE                             R10 R2
       89 CALL                             R10 0 1
       90 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K11 ["Label"]
       95 GETUPVAL                         R7 1
       96 GETUPVAL                         R8 6
       97 DUPTABLE                         R9 K26 [{"tag", "Text", "LayoutOrder"}]
       98 LOADK                            R10 K30 ["fill auto-y text-body-small text-align-x-left content-muted text-truncate-end"]
       99 SETTABLEKS                       R10 R9 K1 ["tag"]
      101 GETUPVAL                         R10 7
      102 LOADK                            R12 K6 ["ScopePermissions"]
      103 GETTABLEKS                       R13 R1 K31 ["descriptionKey"]
      105 NAMECALL                         R10 R10 K29 ["getText"]
      107 CALL                             R10 3 1
      108 SETTABLEKS                       R10 R9 K25 ["Text"]
      110 MOVE                             R10 R2
      111 CALL                             R10 0 1
      112 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K12 ["Description"]
      117 CALL                             R3 3 -1
      118 RETURN                           R3 -1

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
       28 DUPTABLE                         R6 K11 [{"linkStart", "linkEnd"}]
       29 LOADK                            R7 K12 ["\x<LS>\x"]
       30 SETTABLEKS                       R7 R6 K9 ["linkStart"]
       32 LOADK                            R7 K13 ["\x<LE>\x"]
       33 SETTABLEKS                       R7 R6 K10 ["linkEnd"]
       35 NAMECALL                         R2 R2 K5 ["getText"]
       37 CALL                             R2 4 -1
       38 CALL                             R1 -1 1
       39 SETTABLEKS                       R1 R0 K2 ["LearnMoreRiskLevels"]
       41 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["openUrl"]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

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
      218 DUPTABLE                         R26 K22 [{"tag", "testId"}]
      219 LOADK                            R27 K23 ["col size-full-0 auto-y gap-small"]
      220 SETTABLEKS                       R27 R26 K20 ["tag"]
      222 GETUPVAL                         R27 12
      223 GETTABLEKS                       R27 R27 K24 ["ScopePermissions"]
      225 GETTABLEKS                       R27 R27 K25 ["Container"]
      227 SETTABLEKS                       R27 R26 K21 ["testId"]
      229 DUPTABLE                         R27 K32 [{"Header", "Subtitle", "PresetSection", "LearnMoreRiskLevels", "SectionDivider", "ScopeList"}]
      230 GETUPVAL                         R28 8
      231 GETUPVAL                         R29 13
      232 DUPTABLE                         R30 K34 [{"tag", "Text", "LayoutOrder"}]
      233 LOADK                            R31 K35 ["auto-xy text-title-medium text-align-x-left"]
      234 SETTABLEKS                       R31 R30 K20 ["tag"]
      236 GETTABLEKS                       R31 R17 K36 ["Title"]
      238 SETTABLEKS                       R31 R30 K33 ["Text"]
      240 MOVE                             R31 R19
      241 CALL                             R31 0 1
      242 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      244 CALL                             R28 2 1
      245 SETTABLEKS                       R28 R27 K26 ["Header"]
      247 GETUPVAL                         R28 8
      248 GETUPVAL                         R29 13
      249 DUPTABLE                         R30 K34 [{"tag", "Text", "LayoutOrder"}]
      250 LOADK                            R31 K37 ["auto-xy text-body-small text-align-x-left content-muted"]
      251 SETTABLEKS                       R31 R30 K20 ["tag"]
      253 GETTABLEKS                       R31 R17 K27 ["Subtitle"]
      255 SETTABLEKS                       R31 R30 K33 ["Text"]
      257 MOVE                             R31 R19
      258 CALL                             R31 0 1
      259 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      261 CALL                             R28 2 1
      262 SETTABLEKS                       R28 R27 K27 ["Subtitle"]
      264 GETUPVAL                         R28 8
      265 GETUPVAL                         R29 11
      266 DUPTABLE                         R30 K38 [{"tag", "LayoutOrder", "testId"}]
      267 LOADK                            R31 K39 ["col size-full-0 auto-y gap-xxsmall padding-top-small"]
      268 SETTABLEKS                       R31 R30 K20 ["tag"]
      270 MOVE                             R31 R19
      271 CALL                             R31 0 1
      272 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      274 GETUPVAL                         R31 12
      275 GETTABLEKS                       R31 R31 K24 ["ScopePermissions"]
      277 GETTABLEKS                       R31 R31 K40 ["PresetGroup"]
      279 SETTABLEKS                       R31 R30 K21 ["testId"]
      281 MOVE                             R31 R20
      282 CALL                             R28 3 1
      283 SETTABLEKS                       R28 R27 K28 ["PresetSection"]
      285 GETUPVAL                         R28 8
      286 GETUPVAL                         R29 11
      287 DUPTABLE                         R30 K41 [{"tag", "LayoutOrder"}]
      288 LOADK                            R31 K42 ["row size-full-0 auto-y align-y-center"]
      289 SETTABLEKS                       R31 R30 K20 ["tag"]
      291 MOVE                             R31 R19
      292 CALL                             R31 0 1
      293 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      295 DUPTABLE                         R31 K46 [{"Before", "Link", "After"}]
      296 GETTABLEKS                       R34 R17 K29 ["LearnMoreRiskLevels"]
      298 GETTABLEKS                       R34 R34 K47 ["before"]
      300 LENGTH                           R33 R34
      301 LOADN                            R34 0
      302 JUMPIFNOTLT                      R34 R33 ; [+19]
      304 GETUPVAL                         R32 8
      305 GETUPVAL                         R33 13
      306 DUPTABLE                         R34 K34 [{"tag", "Text", "LayoutOrder"}]
      307 LOADK                            R35 K48 ["auto-xy text-body-small text-align-x-left content-default"]
      308 SETTABLEKS                       R35 R34 K20 ["tag"]
      310 GETTABLEKS                       R35 R17 K29 ["LearnMoreRiskLevels"]
      312 GETTABLEKS                       R35 R35 K47 ["before"]
      314 SETTABLEKS                       R35 R34 K33 ["Text"]
      316 MOVE                             R35 R19
      317 CALL                             R35 0 1
      318 SETTABLEKS                       R35 R34 K13 ["LayoutOrder"]
      320 CALL                             R32 2 1
      321 JUMP                             ; [+1]
      322 LOADNIL                          R32
      323 SETTABLEKS                       R32 R31 K43 ["Before"]
      325 GETTABLEKS                       R34 R17 K29 ["LearnMoreRiskLevels"]
      327 GETTABLEKS                       R34 R34 K49 ["link"]
      329 LENGTH                           R33 R34
      330 LOADN                            R34 0
      331 JUMPIFNOTLT                      R34 R33 ; [+21]
      333 GETUPVAL                         R32 8
      334 GETUPVAL                         R33 13
      335 DUPTABLE                         R34 K51 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      336 LOADK                            R35 K52 ["auto-xy text-body-small text-align-x-left content-link text-underline"]
      337 SETTABLEKS                       R35 R34 K20 ["tag"]
      339 GETTABLEKS                       R35 R17 K29 ["LearnMoreRiskLevels"]
      341 GETTABLEKS                       R35 R35 K49 ["link"]
      343 SETTABLEKS                       R35 R34 K33 ["Text"]
      345 SETTABLEKS                       R18 R34 K50 ["onActivated"]
      347 MOVE                             R35 R19
      348 CALL                             R35 0 1
      349 SETTABLEKS                       R35 R34 K13 ["LayoutOrder"]
      351 CALL                             R32 2 1
      352 JUMP                             ; [+1]
      353 LOADNIL                          R32
      354 SETTABLEKS                       R32 R31 K44 ["Link"]
      356 GETTABLEKS                       R34 R17 K29 ["LearnMoreRiskLevels"]
      358 GETTABLEKS                       R34 R34 K53 ["after"]
      360 LENGTH                           R33 R34
      361 LOADN                            R34 0
      362 JUMPIFNOTLT                      R34 R33 ; [+19]
      364 GETUPVAL                         R32 8
      365 GETUPVAL                         R33 13
      366 DUPTABLE                         R34 K34 [{"tag", "Text", "LayoutOrder"}]
      367 LOADK                            R35 K48 ["auto-xy text-body-small text-align-x-left content-default"]
      368 SETTABLEKS                       R35 R34 K20 ["tag"]
      370 GETTABLEKS                       R35 R17 K29 ["LearnMoreRiskLevels"]
      372 GETTABLEKS                       R35 R35 K53 ["after"]
      374 SETTABLEKS                       R35 R34 K33 ["Text"]
      376 MOVE                             R35 R19
      377 CALL                             R35 0 1
      378 SETTABLEKS                       R35 R34 K13 ["LayoutOrder"]
      380 CALL                             R32 2 1
      381 JUMP                             ; [+1]
      382 LOADNIL                          R32
      383 SETTABLEKS                       R32 R31 K45 ["After"]
      385 CALL                             R28 3 1
      386 SETTABLEKS                       R28 R27 K29 ["LearnMoreRiskLevels"]
      388 GETUPVAL                         R28 8
      389 GETUPVAL                         R29 14
      390 DUPTABLE                         R30 K56 [{"LayoutOrder", "variant", "orientation"}]
      391 MOVE                             R31 R19
      392 CALL                             R31 0 1
      393 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      395 GETUPVAL                         R31 15
      396 GETTABLEKS                       R31 R31 K57 ["Default"]
      398 SETTABLEKS                       R31 R30 K54 ["variant"]
      400 GETUPVAL                         R31 16
      401 GETTABLEKS                       R31 R31 K58 ["Horizontal"]
      403 SETTABLEKS                       R31 R30 K55 ["orientation"]
      405 CALL                             R28 2 1
      406 SETTABLEKS                       R28 R27 K30 ["SectionDivider"]
      408 GETUPVAL                         R28 8
      409 GETUPVAL                         R29 11
      410 DUPTABLE                         R30 K41 [{"tag", "LayoutOrder"}]
      411 LOADK                            R31 K39 ["col size-full-0 auto-y gap-xxsmall padding-top-small"]
      412 SETTABLEKS                       R31 R30 K20 ["tag"]
      414 MOVE                             R31 R19
      415 CALL                             R31 0 1
      416 SETTABLEKS                       R31 R30 K13 ["LayoutOrder"]
      418 MOVE                             R31 R22
      419 CALL                             R28 3 1
      420 SETTABLEKS                       R28 R27 K31 ["ScopeList"]
      422 CALL                             R24 3 -1
      423 RETURN                           R24 -1

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
       41 GETTABLEKS                       R6 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["Foundation"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Parent"]
       57 GETTABLEKS                       R8 R8 K17 ["ReactUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Flags"]
       64 GETTABLEKS                       R9 R9 K19 ["FStringStudioScopeRiskLevelsDocsUrl"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R5 K20 ["Checkbox"]
       69 GETTABLEKS                       R10 R5 K21 ["Divider"]
       71 GETTABLEKS                       R11 R5 K22 ["Text"]
       73 GETTABLEKS                       R12 R5 K23 ["View"]
       75 GETTABLEKS                       R13 R5 K24 ["Enums"]
       77 GETTABLEKS                       R13 R13 K25 ["DividerOrientation"]
       79 GETTABLEKS                       R14 R5 K24 ["Enums"]
       81 GETTABLEKS                       R14 R14 K26 ["DividerVariant"]
       83 GETTABLEKS                       R15 R5 K24 ["Enums"]
       85 GETTABLEKS                       R15 R15 K27 ["InputSize"]
       87 GETTABLEKS                       R16 R7 K28 ["createNextOrder"]
       89 GETTABLEKS                       R17 R6 K29 ["createElement"]
       91 DUPCLOSURE                       R18 K30 [PROTO_0]
       92 DUPCLOSURE                       R19 K31 [PROTO_2]
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R11
      100 DUPCLOSURE                       R20 K32 [PROTO_4]
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R4
      109 DUPCLOSURE                       R21 K33 [PROTO_5]
      110 CAPTURE                          VAL R2
      111 DUPCLOSURE                       R22 K34 [PROTO_19]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R20
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R13
      129 GETTABLEKS                       R23 R6 K35 ["memo"]
      131 MOVE                             R24 R22
      132 CALL                             R23 1 -1
      133 RETURN                           R23 -1
