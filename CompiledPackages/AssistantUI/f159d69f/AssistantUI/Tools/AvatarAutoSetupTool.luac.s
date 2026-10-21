PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["selectedModelRef"]
        2 JUMPIFEQKNIL                     R2 ; [+26]
        4 GETTABLEKS                       R3 R0 K1 ["instances"]
        6 GETTABLEKS                       R3 R3 K2 ["getInstanceFromUniqueId"]
        8 GETTABLEKS                       R4 R2 K3 ["uniqueId"]
       10 CALL                             R3 1 1
       11 JUMPIFEQKNIL                     R3 ; [+6]
       13 LOADK                            R6 K4 ["Model"]
       14 NAMECALL                         R4 R3 K5 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIF                           R4 ; [+10]
       18 GETIMPORT                        R4 K7 [error]
       20 LOADK                            R5 K8 ["could not resolve the picked Model \"%*\"; it may have been deleted."]
       21 GETTABLEKS                       R7 R2 K9 ["name"]
       23 NAMECALL                         R5 R5 K10 ["format"]
       25 CALL                             R5 2 1
       26 LOADN                            R6 0
       27 CALL                             R4 2 0
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R1 K11 ["instance_path"]
       31 JUMPIFEQKNIL                     R3 ; [+38]
       33 JUMPIFEQKS                       R3 K12 [""] ; [+36]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K13 ["findInstanceByPath"]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKNIL                  R4 ; [+10]
       42 GETIMPORT                        R5 K7 [error]
       44 LOADK                            R6 K14 ["could not resolve instance_path \"%*\"; the Model must be under Workspace, e.g. \"Workspace.Goblin\"."]
       45 MOVE                             R8 R3
       46 NAMECALL                         R6 R6 K10 ["format"]
       48 CALL                             R6 2 1
       49 LOADN                            R7 0
       50 CALL                             R5 2 0
       51 LOADK                            R7 K4 ["Model"]
       52 NAMECALL                         R5 R4 K5 ["IsA"]
       54 CALL                             R5 2 1
       55 JUMPIF                           R5 ; [+13]
       56 GETIMPORT                        R5 K7 [error]
       58 LOADK                            R6 K15 ["requires a Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       59 MOVE                             R8 R3
       60 GETTABLEKS                       R9 R4 K16 ["ClassName"]
       62 GETTABLEKS                       R10 R4 K17 ["Name"]
       64 NAMECALL                         R6 R6 K10 ["format"]
       66 CALL                             R6 4 1
       67 LOADN                            R7 0
       68 CALL                             R5 2 0
       69 RETURN                           R4 1
       70 GETTABLEKS                       R4 R0 K18 ["selection"]
       72 GETTABLEKS                       R4 R4 K19 ["get"]
       74 CALL                             R4 0 1
       75 LENGTH                           R5 R4
       76 JUMPIFEQKN                       R5 K20 [1] ; [+10]
       78 GETIMPORT                        R5 K7 [error]
       80 LOADK                            R6 K21 ["needs either an instance_path argument or exactly one selected Model; got %* selected."]
       81 LENGTH                           R8 R4
       82 NAMECALL                         R6 R6 K10 ["format"]
       84 CALL                             R6 2 1
       85 LOADN                            R7 0
       86 CALL                             R5 2 0
       87 GETTABLEN                        R5 R4 1
       88 LOADK                            R8 K4 ["Model"]
       89 NAMECALL                         R6 R5 K5 ["IsA"]
       91 CALL                             R6 2 1
       92 JUMPIF                           R6 ; [+12]
       93 GETIMPORT                        R6 K7 [error]
       95 LOADK                            R7 K22 ["requires a Model; selected instance \"%*\" is a %*."]
       96 GETTABLEKS                       R9 R5 K17 ["Name"]
       98 GETTABLEKS                       R10 R5 K16 ["ClassName"]
      100 NAMECALL                         R7 R7 K10 ["format"]
      102 CALL                             R7 3 1
      103 LOADN                            R8 0
      104 CALL                             R6 2 0
      105 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarAutoSetupOptions"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["getText"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["setup_type"]
        2 JUMPIFEQKS                       R2 K1 ["Development"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADK                            R2 K2 ["DevelopmentAvatar"]
        8 JUMP                             ; [+1]
        9 LOADK                            R2 K3 ["PlatformAvatar"]
       10 NEWTABLE                         R3 0 1
       12 LOADK                            R4 K4 ["%*: %*"]
       13 GETUPVAL                         R6 0
       14 LOADK                            R8 K5 ["AvatarAutoSetupOptions"]
       15 LOADK                            R9 K6 ["SetupType"]
       16 NAMECALL                         R6 R6 K7 ["getText"]
       18 CALL                             R6 3 1
       19 GETUPVAL                         R7 0
       20 LOADK                            R9 K5 ["AvatarAutoSetupOptions"]
       21 MOVE                             R10 R2
       22 NAMECALL                         R7 R7 K7 ["getText"]
       24 CALL                             R7 3 1
       25 NAMECALL                         R4 R4 K8 ["format"]
       27 CALL                             R4 3 1
       28 SETLIST                          R3 R4 1 [1]
       30 GETTABLEKS                       R4 R0 K9 ["r15_plus"]
       32 JUMPIFNOTEQKB                    R4 TRUE ; [+9]
       34 MOVE                             R5 R3
       35 GETUPVAL                         R6 1
       36 LOADK                            R7 K10 ["R15Plus"]
       37 CALL                             R6 1 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R4 K13 [table.insert]
       41 CALL                             R4 -1 0
       42 GETTABLEKS                       R4 R0 K14 ["align_front_angle"]
       44 JUMPIFNOTEQKB                    R4 TRUE ; [+9]
       46 MOVE                             R5 R3
       47 GETUPVAL                         R6 1
       48 LOADK                            R7 K15 ["AlignFront"]
       49 CALL                             R6 1 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R4 K13 [table.insert]
       53 CALL                             R4 -1 0
       54 GETTABLEKS                       R4 R0 K16 ["decal_to_dynamic_head"]
       56 JUMPIFNOTEQKB                    R4 TRUE ; [+9]
       58 MOVE                             R5 R3
       59 GETUPVAL                         R6 1
       60 LOADK                            R7 K17 ["DecalToDynamicHead"]
       61 CALL                             R6 1 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R4 K13 [table.insert]
       65 CALL                             R4 -1 0
       66 GETTABLEKS                       R4 R0 K18 ["enable_additional_head_processing"]
       68 JUMPIFNOTEQKB                    R4 FALSE ; [+17]
       70 LOADK                            R6 K19 ["%*: off"]
       71 GETUPVAL                         R8 0
       72 LOADK                            R10 K5 ["AvatarAutoSetupOptions"]
       73 LOADK                            R11 K20 ["FacialCaging"]
       74 NAMECALL                         R8 R8 K7 ["getText"]
       76 CALL                             R8 3 1
       77 NAMECALL                         R6 R6 K8 ["format"]
       79 CALL                             R6 2 1
       80 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       82 MOVE                             R5 R3
       83 GETIMPORT                        R4 K13 [table.insert]
       85 CALL                             R4 2 0
       86 JUMPIFNOT                        R1 ; [+12]
       87 GETTABLEKS                       R4 R0 K21 ["reduce_triangles"]
       89 JUMPIFNOTEQKB                    R4 TRUE ; [+9]
       91 MOVE                             R5 R3
       92 GETUPVAL                         R6 1
       93 LOADK                            R7 K22 ["ReduceTriangles"]
       94 CALL                             R6 1 -1
       95 FASTCALL                         TABLE_INSERT ; [+2]
       96 GETIMPORT                        R4 K13 [table.insert]
       98 CALL                             R4 -1 0
       99 GETIMPORT                        R7 K24 [table.concat]
      101 MOVE                             R8 R3
      102 LOADK                            R9 K25 [". "]
      103 CALL                             R7 2 1
      104 MOVE                             R5 R7
      105 LOADK                            R6 K26 ["."]
      106 CONCAT                           R4 R5 R6
      107 RETURN                           R4 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["caller"] ; [+3]
        2 LOADK                            R1 K1 ["as specified"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["avatar"] ; [+3]
        6 LOADK                            R1 K3 ["already rigged"]
        7 RETURN                           R1 1
        8 LOADK                            R1 K4 ["left as body"]
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+7]
        5 LOADK                            R3 K0 ["%* Classification is left to the engine. Cancel to change this in chat."]
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K1 ["format"]
        9 CALL                             R3 2 1
       10 RETURN                           R3 1
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 MOVE                             R4 R1
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 LOADK                            R11 K2 ["%*: %* (%*)"]
       21 GETTABLEKS                       R13 R8 K3 ["path"]
       23 GETTABLEKS                       R14 R8 K4 ["classification"]
       25 GETTABLEKS                       R16 R8 K5 ["source"]
       27 JUMPIFNOTEQKS                    R16 K6 ["caller"] ; [+3]
       29 LOADK                            R15 K7 ["as specified"]
       30 JUMP                             ; [+5]
       31 JUMPIFNOTEQKS                    R16 K8 ["avatar"] ; [+3]
       33 LOADK                            R15 K9 ["already rigged"]
       34 JUMP                             ; [+1]
       35 LOADK                            R15 K10 ["left as body"]
       36 NAMECALL                         R11 R11 K1 ["format"]
       38 CALL                             R11 4 1
       39 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       41 MOVE                             R10 R3
       42 GETIMPORT                        R9 K13 [table.insert]
       44 CALL                             R9 2 0
       45 FORGLOOP                         R4 2 ; [-26]
       47 FASTCALL2K                       TABLE_INSERT R3 K14 ; [+5]
       49 MOVE                             R5 R3
       50 LOADK                            R6 K14 ["Cancel to change this in chat."]
       51 GETIMPORT                        R4 K13 [table.insert]
       53 CALL                             R4 2 0
       54 GETIMPORT                        R4 K16 [table.concat]
       56 MOVE                             R5 R3
       57 LOADK                            R6 K17 ["\n"]
       58 CALL                             R4 2 -1
       59 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["tools"]
        7 GETTABLEKS                       R2 R2 K1 ["avatarAutoSetup"]
        9 GETTABLEKS                       R2 R2 K2 ["getClassificationPlan"]
       11 MOVE                             R3 R1
       12 GETTABLEKS                       R4 R0 K3 ["classifications"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Field"]
        4 GETTABLEKS                       R3 R3 K1 ["Stage"]
        6 GETTABLEKS                       R4 R0 K2 ["progressName"]
        8 NAMECALL                         R1 R1 K3 ["Set"]
       10 CALL                             R1 3 0
       11 GETTABLEKS                       R2 R0 K4 ["completionEnd"]
       13 GETTABLEKS                       R3 R0 K5 ["completionStart"]
       15 SUB                              R1 R2 R3
       16 GETTABLEKS                       R3 R0 K5 ["completionStart"]
       18 GETTABLEKS                       R5 R0 K6 ["progressPercentage"]
       20 MUL                              R4 R5 R1
       21 ADD                              R2 R3 R4
       22 GETUPVAL                         R4 2
       23 LOADN                            R8 0
       24 LOADN                            R9 1
       25 FASTCALL3                        MATH_CLAMP R2 R8 R9
       27 MOVE                             R7 R2
       28 GETIMPORT                        R6 K10 [math.clamp]
       30 CALL                             R6 3 1
       31 MULK                             R5 R6 K7 [100]
       32 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       34 GETIMPORT                        R3 K12 [math.max]
       36 CALL                             R3 2 1
       37 SETUPVAL                         R3 2
       38 GETUPVAL                         R3 0
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K0 ["Field"]
       42 GETTABLEKS                       R5 R5 K13 ["Percentage"]
       44 GETUPVAL                         R6 2
       45 NAMECALL                         R3 R3 K3 ["Set"]
       47 CALL                             R3 3 0
       48 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["jobId"]
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 JUMPIFEQKS                       R1 K1 [""] ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["engineJobId"]
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 SETTABLEKS                       R1 R2 K2 ["engineJobId"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["cancelRequested"]
       18 JUMPIFNOT                        R2 ; [+9]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["tools"]
       22 GETTABLEKS                       R2 R2 K5 ["avatarAutoSetup"]
       24 GETTABLEKS                       R2 R2 K6 ["cancelAutoSetup"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["tools"]
        7 GETTABLEKS                       R1 R1 K1 ["avatarAutoSetup"]
        9 GETTABLEKS                       R1 R1 K2 ["autoSetupAsync"]
       11 DUPTABLE                         R2 K8 [{"model", "classifications", "options", "onProgress", "onNotification"}]
       12 SETTABLEKS                       R0 R2 K3 ["model"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["classifications"]
       17 SETTABLEKS                       R3 R2 K4 ["classifications"]
       19 DUPTABLE                         R3 K15 [{"setupType", "r15Plus", "alignFrontAngle", "decalToDynamicHead", "enableAdditionalHeadProcessing", "reduceTriangles"}]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K16 ["setup_type"]
       23 SETTABLEKS                       R4 R3 K9 ["setupType"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K17 ["r15_plus"]
       28 SETTABLEKS                       R4 R3 K10 ["r15Plus"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K18 ["align_front_angle"]
       33 SETTABLEKS                       R4 R3 K11 ["alignFrontAngle"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K19 ["decal_to_dynamic_head"]
       38 SETTABLEKS                       R4 R3 K12 ["decalToDynamicHead"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K20 ["enable_additional_head_processing"]
       43 SETTABLEKS                       R4 R3 K13 ["enableAdditionalHeadProcessing"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K16 ["setup_type"]
       48 JUMPIFNOTEQKS                    R5 K21 ["Development"] ; [+5]
       50 GETUPVAL                         R4 2
       51 GETTABLEKS                       R4 R4 K22 ["reduce_triangles"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 SETTABLEKS                       R4 R3 K14 ["reduceTriangles"]
       57 SETTABLEKS                       R3 R2 K5 ["options"]
       59 NEWCLOSURE                       R3 P0
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 SETTABLEKS                       R3 R2 K6 ["onProgress"]
       65 NEWCLOSURE                       R3 P1
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U1
       68 SETTABLEKS                       R3 R2 K7 ["onNotification"]
       70 CALL                             R1 1 1
       71 DUPTABLE                         R2 K25 [{"inputModel", "outputModel"}]
       72 SETTABLEKS                       R0 R2 K23 ["inputModel"]
       74 SETTABLEKS                       R1 R2 K24 ["outputModel"]
       76 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 DUPTABLE                         R2 K5 [{["engineJobId"] = , ["cancelRequested"] = False}]
        3 GETUPVAL                         R3 0
        4 SETTABLE                         R2 R3 R1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K6 ["getOrCreate"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K7 ["Scope"]
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 LOADN                            R4 0
       14 GETIMPORT                        R5 K9 [pcall]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          REF R4
       23 CAPTURE                          VAL R2
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 0
       26 LOADNIL                          R8
       27 SETTABLE                         R8 R7 R1
       28 NAMECALL                         R7 R3 K10 ["Destroy"]
       30 CALL                             R7 1 0
       31 JUMPIF                           R5 ; [+5]
       32 GETIMPORT                        R7 K12 [error]
       34 MOVE                             R8 R6
       35 LOADN                            R9 0
       36 CALL                             R7 2 0
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R7 R7 K13 ["selection"]
       40 GETTABLEKS                       R7 R7 K14 ["set"]
       42 NEWTABLE                         R8 0 1
       44 GETTABLEKS                       R9 R6 K15 ["outputModel"]
       46 SETLIST                          R8 R9 1 [1]
       48 CALL                             R7 1 0
       49 DUPTABLE                         R7 K18 [{"inputModelName", "outputModelName"}]
       50 GETTABLEKS                       R8 R6 K19 ["inputModel"]
       52 GETTABLEKS                       R8 R8 K20 ["Name"]
       54 SETTABLEKS                       R8 R7 K16 ["inputModelName"]
       56 GETTABLEKS                       R8 R6 K15 ["outputModel"]
       58 GETTABLEKS                       R8 R8 K20 ["Name"]
       60 SETTABLEKS                       R8 R7 K17 ["outputModelName"]
       62 CLOSEUPVALS                      R4
       63 RETURN                           R7 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K1 ["cancelRequested"]
       11 GETTABLEKS                       R2 R1 K2 ["engineJobId"]
       13 JUMPIFEQKNIL                     R2 ; [+11]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["tools"]
       18 GETTABLEKS                       R2 R2 K4 ["avatarAutoSetup"]
       20 GETTABLEKS                       R2 R2 K5 ["cancelAutoSetup"]
       22 GETTABLEKS                       R3 R1 K2 ["engineJobId"]
       24 CALL                             R2 1 0
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K1 ["cancelRequested"]
       11 GETTABLEKS                       R4 R3 K2 ["engineJobId"]
       13 JUMPIFEQKNIL                     R4 ; [+11]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["tools"]
       18 GETTABLEKS                       R4 R4 K4 ["avatarAutoSetup"]
       20 GETTABLEKS                       R4 R4 K5 ["cancelAutoSetup"]
       22 GETTABLEKS                       R5 R3 K2 ["engineJobId"]
       24 CALL                             R4 1 0
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K1 ["cancelRequested"]
       11 GETTABLEKS                       R4 R3 K2 ["engineJobId"]
       13 JUMPIFEQKNIL                     R4 ; [+11]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["tools"]
       18 GETTABLEKS                       R4 R4 K4 ["avatarAutoSetup"]
       20 GETTABLEKS                       R4 R4 K5 ["cancelAutoSetup"]
       22 GETTABLEKS                       R5 R3 K2 ["engineJobId"]
       24 CALL                             R4 1 0
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K2 [{"toolUseId"}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
       10 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 4
       15 LOADNIL                          R1
       16 DUPTABLE                         R2 K2 [{"toolUseId"}]
       17 GETUPVAL                         R3 3
       18 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["InvokeAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["runWithProgressLoop"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["sendProgress"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 GETUPVAL                         R3 5
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K1 ["runWithProgressLoop"]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K2 ["sendProgress"]
       22 GETUPVAL                         R2 6
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 5
       25 CALL                             R0 4 -1
       26 RETURN                           R0 -1

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["AvatarAutoSetupTool requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 DUPTABLE                         R4 K18 [{"toolUseId", "instance_path", "selectedModelRef", "setup_type", "r15_plus", "align_front_angle", "decal_to_dynamic_head", "enable_additional_head_processing", "reduce_triangles", "classifications"}]
       24 SETTABLEKS                       R3 R4 K8 ["toolUseId"]
       26 GETTABLEKS                       R5 R0 K9 ["instance_path"]
       28 SETTABLEKS                       R5 R4 K9 ["instance_path"]
       30 GETTABLEKS                       R5 R0 K10 ["selectedModelRef"]
       32 SETTABLEKS                       R5 R4 K10 ["selectedModelRef"]
       34 GETTABLEKS                       R5 R0 K11 ["setup_type"]
       36 SETTABLEKS                       R5 R4 K11 ["setup_type"]
       38 GETTABLEKS                       R5 R0 K12 ["r15_plus"]
       40 SETTABLEKS                       R5 R4 K12 ["r15_plus"]
       42 GETTABLEKS                       R5 R0 K13 ["align_front_angle"]
       44 SETTABLEKS                       R5 R4 K13 ["align_front_angle"]
       46 GETTABLEKS                       R5 R0 K14 ["decal_to_dynamic_head"]
       48 SETTABLEKS                       R5 R4 K14 ["decal_to_dynamic_head"]
       50 GETTABLEKS                       R5 R0 K15 ["enable_additional_head_processing"]
       52 SETTABLEKS                       R5 R4 K15 ["enable_additional_head_processing"]
       54 GETTABLEKS                       R5 R0 K16 ["reduce_triangles"]
       56 SETTABLEKS                       R5 R4 K16 ["reduce_triangles"]
       58 GETTABLEKS                       R5 R0 K17 ["classifications"]
       60 SETTABLEKS                       R5 R4 K17 ["classifications"]
       62 LOADNIL                          R5
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K19 ["FFlagAssistantUseNewDMNetworking"]
       66 JUMPIFNOT                        R6 ; [+6]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K20 ["resolveTargetAsync"]
       70 GETUPVAL                         R7 2
       71 CALL                             R6 1 1
       72 MOVE                             R5 R6
       73 LOADB                            R6 0
       74 JUMPIFNOT                        R2 ; [+22]
       75 GETTABLEKS                       R7 R2 K21 ["signal"]
       77 JUMPIFNOT                        R7 ; [+19]
       78 GETTABLEKS                       R7 R2 K21 ["signal"]
       80 GETTABLEKS                       R7 R7 K22 ["abortSignal"]
       82 JUMPIFNOT                        R7 ; [+14]
       83 GETTABLEKS                       R7 R2 K21 ["signal"]
       85 GETTABLEKS                       R7 R7 K22 ["abortSignal"]
       87 NEWCLOSURE                       R9 P0
       88 CAPTURE                          REF R6
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          REF R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          UPVAL U4
       94 NAMECALL                         R7 R7 K23 ["Once"]
       96 CALL                             R7 2 0
       97 GETIMPORT                        R7 K25 [pcall]
       99 NEWCLOSURE                       R8 P1
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          VAL R2
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          REF R5
      105 CAPTURE                          VAL R4
      106 CAPTURE                          UPVAL U7
      107 CALL                             R7 1 2
      108 JUMPIF                           R7 ; [+25]
      109 JUMPIF                           R6 ; [+5]
      110 GETIMPORT                        R9 K27 [error]
      112 MOVE                             R10 R8
      113 LOADN                            R11 0
      114 CALL                             R9 2 0
      115 GETUPVAL                         R9 8
      116 CALL                             R9 0 1
      117 LOADK                            R11 K28 ["Auto-setup canceled before it finished."]
      118 NAMECALL                         R9 R9 K29 ["addText"]
      120 CALL                             R9 2 1
      121 DUPTABLE                         R11 K32 [{["canceled"] = True}]
      122 NAMECALL                         R9 R9 K33 ["setStructuredContent"]
      124 CALL                             R9 2 1
      125 LOADB                            R11 1
      126 NAMECALL                         R9 R9 K34 ["setError"]
      128 CALL                             R9 2 1
      129 NAMECALL                         R9 R9 K35 ["build"]
      131 CALL                             R9 1 -1
      132 CLOSEUPVALS                      R5
      133 RETURN                           R9 -1
      134 GETUPVAL                         R9 8
      135 CALL                             R9 0 1
      136 LOADK                            R11 K36 ["Auto-setup complete: input \"%*\" -> output \"%*\"."]
      137 GETTABLEKS                       R13 R8 K37 ["inputModelName"]
      139 GETTABLEKS                       R14 R8 K38 ["outputModelName"]
      141 NAMECALL                         R11 R11 K39 ["format"]
      143 CALL                             R11 3 1
      144 NAMECALL                         R9 R9 K29 ["addText"]
      146 CALL                             R9 2 1
      147 NAMECALL                         R9 R9 K35 ["build"]
      149 CALL                             R9 1 -1
      150 CLOSEUPVALS                      R5
      151 RETURN                           R9 -1

PROTO_23:
        0 NEWTABLE                         R1 0 7
        2 DUPTABLE                         R2 K6 [{[1], ["inputType"], ["initialValue"] = , ["required"] = True}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K7 ["SelectedModelRef"]
        6 SETTABLEKS                       R3 R2 K0 ["name"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K8 ["Instance"]
       11 SETTABLEKS                       R3 R2 K1 ["inputType"]
       13 DUPTABLE                         R3 K11 [{[1], ["inputType"], ["options"], ["initialValue"] = "Platform"}]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K12 ["SetupType"]
       17 SETTABLEKS                       R4 R3 K0 ["name"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K13 ["Option"]
       22 SETTABLEKS                       R4 R3 K1 ["inputType"]
       24 NEWTABLE                         R4 0 2
       26 LOADK                            R5 K10 ["Platform"]
       27 LOADK                            R6 K14 ["Development"]
       28 SETLIST                          R4 R5 2 [1]
       30 SETTABLEKS                       R4 R3 K9 ["options"]
       32 DUPTABLE                         R4 K16 [{[1], ["inputType"], ["initialValue"] = False}]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K17 ["R15Plus"]
       36 SETTABLEKS                       R5 R4 K0 ["name"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K18 ["Boolean"]
       41 SETTABLEKS                       R5 R4 K1 ["inputType"]
       43 DUPTABLE                         R5 K16 [{[1], ["inputType"], ["initialValue"] = False}]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K19 ["AlignFrontAngle"]
       47 SETTABLEKS                       R6 R5 K0 ["name"]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K18 ["Boolean"]
       52 SETTABLEKS                       R6 R5 K1 ["inputType"]
       54 DUPTABLE                         R6 K16 [{[1], ["inputType"], ["initialValue"] = False}]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K20 ["DecalToDynamicHead"]
       58 SETTABLEKS                       R7 R6 K0 ["name"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K18 ["Boolean"]
       63 SETTABLEKS                       R7 R6 K1 ["inputType"]
       65 DUPTABLE                         R7 K21 [{[1], ["inputType"], ["initialValue"] = True}]
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K22 ["EnableAdditionalHeadProcessing"]
       69 SETTABLEKS                       R8 R7 K0 ["name"]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K18 ["Boolean"]
       74 SETTABLEKS                       R8 R7 K1 ["inputType"]
       76 DUPTABLE                         R8 K16 [{[1], ["inputType"], ["initialValue"] = False}]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K23 ["ReduceTriangles"]
       80 SETTABLEKS                       R9 R8 K0 ["name"]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R9 R9 K18 ["Boolean"]
       85 SETTABLEKS                       R9 R8 K1 ["inputType"]
       87 SETLIST                          R1 R2 7 [1]
       89 DUPTABLE                         R2 K26 [{"formId", "fields"}]
       90 GETUPVAL                         R3 2
       91 GETTABLEKS                       R3 R3 K24 ["formId"]
       93 SETTABLEKS                       R3 R2 K24 ["formId"]
       95 SETTABLEKS                       R1 R2 K25 ["fields"]
       97 DUPTABLE                         R3 K28 [{"name", "arguments"}]
       98 GETUPVAL                         R4 3
       99 GETTABLEKS                       R4 R4 K29 ["AskInput"]
      101 SETTABLEKS                       R4 R3 K0 ["name"]
      103 SETTABLEKS                       R2 R3 K27 ["arguments"]
      105 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K10 [{["instance_path"] = , ["selectedModelRef"], ["setup_type"], ["r15_plus"], ["align_front_angle"], ["decal_to_dynamic_head"], ["enable_additional_head_processing"], ["reduce_triangles"]}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K11 ["SelectedModelRef"]
       10 GETTABLE                         R3 R1 R4
       11 SETTABLEKS                       R3 R2 K3 ["selectedModelRef"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K12 ["SetupType"]
       16 GETTABLE                         R3 R1 R4
       17 SETTABLEKS                       R3 R2 K4 ["setup_type"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K13 ["R15Plus"]
       22 GETTABLE                         R3 R1 R4
       23 SETTABLEKS                       R3 R2 K5 ["r15_plus"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K14 ["AlignFrontAngle"]
       28 GETTABLE                         R3 R1 R4
       29 SETTABLEKS                       R3 R2 K6 ["align_front_angle"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K15 ["DecalToDynamicHead"]
       34 GETTABLE                         R3 R1 R4
       35 SETTABLEKS                       R3 R2 K7 ["decal_to_dynamic_head"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K16 ["EnableAdditionalHeadProcessing"]
       40 GETTABLE                         R3 R1 R4
       41 SETTABLEKS                       R3 R2 K8 ["enable_additional_head_processing"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K17 ["ReduceTriangles"]
       46 GETTABLE                         R3 R1 R4
       47 SETTABLEKS                       R3 R2 K9 ["reduce_triangles"]
       49 DUPTABLE                         R3 K20 [{"name", "arguments"}]
       50 GETUPVAL                         R4 2
       51 GETTABLEKS                       R4 R4 K21 ["AvatarAutoSetup"]
       53 SETTABLEKS                       R4 R3 K18 ["name"]
       55 SETTABLEKS                       R2 R3 K19 ["arguments"]
       57 RETURN                           R3 1

PROTO_25:
        0 DUPCLOSURE                       R1 K0 [PROTO_23]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 DUPCLOSURE                       R2 K1 [PROTO_24]
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U3
        9 NEWTABLE                         R3 0 2
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 SETLIST                          R3 R4 2 [1]
       15 RETURN                           R3 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AvatarAutoSetup"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["resolveTargetAsync"]
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 3
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 4
       12 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R0 5
       17 LOADNIL                          R1
       18 GETUPVAL                         R2 4
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_28:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R2 K0 ["classifications"]
        7 JUMPIFEQKNIL                     R4 ; [+16]
        9 GETIMPORT                        R4 K2 [pcall]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U4
       18 CALL                             R4 1 2
       19 JUMPIFNOT                        R4 ; [+2]
       20 MOVE                             R3 R5
       21 JUMP                             ; [+2]
       22 NEWTABLE                         R3 0 0
       24 DUPTABLE                         R4 K6 [{["shouldConfirm"] = True, ["warningMessage"]}]
       25 GETUPVAL                         R5 5
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K5 ["warningMessage"]
       31 RETURN                           R4 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R4
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 NEWCLOSURE                       R7 P2
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R1
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 LOADNIL                          R11
       24 LOADNIL                          R12
       25 LOADNIL                          R13
       26 GETUPVAL                         R14 3
       27 GETTABLEKS                       R14 R14 K3 ["FFlagAssistantUseNewDMNetworking"]
       29 JUMPIFNOT                        R14 ; [+66]
       30 GETUPVAL                         R14 4
       31 GETTABLEKS                       R14 R14 K4 ["invoke"]
       33 MOVE                             R15 R2
       34 LOADK                            R16 K5 ["AvatarAutoSetupTool.runAutoSetup"]
       35 CALL                             R14 2 1
       36 MOVE                             R9 R14
       37 GETUPVAL                         R14 4
       38 GETTABLEKS                       R14 R14 K4 ["invoke"]
       40 MOVE                             R15 R2
       41 LOADK                            R16 K6 ["AvatarAutoSetupTool.cancelAutoSetup"]
       42 CALL                             R14 2 1
       43 MOVE                             R11 R14
       44 GETUPVAL                         R14 4
       45 GETTABLEKS                       R14 R14 K4 ["invoke"]
       47 MOVE                             R15 R2
       48 LOADK                            R16 K7 ["AvatarAutoSetupTool.getClassificationPlan"]
       49 CALL                             R14 2 1
       50 MOVE                             R13 R14
       51 GETUPVAL                         R14 5
       52 GETTABLEKS                       R14 R14 K8 ["new"]
       54 CALL                             R14 0 1
       55 NAMECALL                         R15 R2 K9 ["GetIdentity"]
       57 CALL                             R15 1 1
       58 GETUPVAL                         R16 6
       59 GETTABLEKS                       R16 R16 K10 ["Identity"]
       61 GETTABLEKS                       R16 R16 K11 ["Standalone"]
       63 JUMPIFEQ                         R15 R16 ; [+26]
       65 NEWCLOSURE                       R19 P3
       66 CAPTURE                          VAL R6
       67 NAMECALL                         R17 R9 K12 ["Connect"]
       69 CALL                             R17 2 -1
       70 NAMECALL                         R15 R14 K13 ["Add"]
       72 CALL                             R15 -1 0
       73 NEWCLOSURE                       R19 P4
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R1
       76 NAMECALL                         R17 R11 K12 ["Connect"]
       78 CALL                             R17 2 -1
       79 NAMECALL                         R15 R14 K13 ["Add"]
       81 CALL                             R15 -1 0
       82 NEWCLOSURE                       R19 P5
       83 CAPTURE                          VAL R5
       84 NAMECALL                         R17 R13 K12 ["Connect"]
       86 CALL                             R17 2 -1
       87 NAMECALL                         R15 R14 K13 ["Add"]
       89 CALL                             R15 -1 0
       90 NEWCLOSURE                       R17 P6
       91 CAPTURE                          VAL R14
       92 NAMECALL                         R15 R3 K14 ["Once"]
       94 CALL                             R15 2 0
       95 JUMP                             ; [+24]
       96 GETTABLEKS                       R14 R0 K15 ["networkingOLD"]
       98 LOADK                            R17 K16 ["AvatarAutoSetupTool_runAutoSetup"]
       99 NEWCLOSURE                       R18 P7
      100 CAPTURE                          VAL R6
      101 NAMECALL                         R15 R14 K17 ["OnHostInvokeAsync"]
      103 CALL                             R15 3 1
      104 MOVE                             R8 R15
      105 LOADK                            R17 K18 ["AvatarAutoSetupTool_cancelAutoSetup"]
      106 NEWCLOSURE                       R18 P8
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R1
      109 NAMECALL                         R15 R14 K17 ["OnHostInvokeAsync"]
      111 CALL                             R15 3 1
      112 MOVE                             R10 R15
      113 LOADK                            R17 K19 ["AvatarAutoSetupTool_getClassificationPlan"]
      114 NEWCLOSURE                       R18 P9
      115 CAPTURE                          VAL R5
      116 NAMECALL                         R15 R14 K17 ["OnHostInvokeAsync"]
      118 CALL                             R15 3 1
      119 MOVE                             R12 R15
      120 NEWCLOSURE                       R14 P10
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          UPVAL U7
      123 CAPTURE                          VAL R2
      124 CAPTURE                          REF R11
      125 CAPTURE                          REF R10
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          REF R9
      128 CAPTURE                          REF R8
      129 CAPTURE                          UPVAL U9
      130 GETUPVAL                         R15 10
      131 GETTABLEKS                       R15 R15 K20 ["define"]
      133 CALL                             R15 0 1
      134 GETUPVAL                         R17 11
      135 GETTABLEKS                       R17 R17 K21 ["AvatarAutoSetup"]
      137 NAMECALL                         R15 R15 K22 ["setName"]
      139 CALL                             R15 2 1
      140 LOADK                            R17 K23 ["Rig a static Workspace Model as an R15 avatar and place the result beside it.\nPass `instance_path` whenever the Model is known; omit it only to use the\nuser's single selected Model. Do not set Selection with execute_luau.\nUsually takes 3-5 minutes."]
      141 NAMECALL                         R15 R15 K24 ["setDescription"]
      143 CALL                             R15 2 1
      144 LOADK                            R17 K25 ["instance_path"]
      145 DUPTABLE                         R18 K30 [{["type"] = "string", ["description"] = "Workspace path to the input Model, preferably from inspect_instance. Pass it whenever known; omit only for the user's single selected Model."}]
      146 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      148 CALL                             R15 3 1
      149 LOADK                            R17 K32 ["setup_type"]
      150 DUPTABLE                         R18 K35 [{["type"] = "string", ["enum"], ["description"] = "\"Platform\" (default) creates marketplace-compatible avatars. \"Development\" creates experience-only characters such as NPCs."}]
      151 NEWTABLE                         R19 0 2
      153 LOADK                            R20 K36 ["Platform"]
      154 LOADK                            R21 K37 ["Development"]
      155 SETLIST                          R19 R20 2 [1]
      157 SETTABLEKS                       R19 R18 K33 ["enum"]
      159 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      161 CALL                             R15 3 1
      162 LOADK                            R17 K38 ["r15_plus"]
      163 DUPTABLE                         R18 K41 [{["type"] = "boolean", ["description"] = "Add optional upper-torso, neck, hand, and foot joints for more articulation. Defaults to false."}]
      164 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      166 CALL                             R15 3 1
      167 LOADK                            R17 K42 ["align_front_angle"]
      168 DUPTABLE                         R18 K44 [{["type"] = "boolean", ["description"] = "Fix the front to negative Z. Defaults to false, which lets the engine infer it. Use true for ambiguous models that already face negative Z."}]
      169 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      171 CALL                             R15 3 1
      172 LOADK                            R17 K45 ["decal_to_dynamic_head"]
      173 DUPTABLE                         R18 K47 [{["type"] = "boolean", ["description"] = "Create a dynamic head from a 2D face Decal or texture. Defaults to false."}]
      174 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      176 CALL                             R15 3 1
      177 LOADK                            R17 K48 ["enable_additional_head_processing"]
      178 DUPTABLE                         R18 K50 [{["type"] = "boolean", ["description"] = "Align the head cage to facial features for a better makeup fit. Defaults to true."}]
      179 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      181 CALL                             R15 3 1
      182 LOADK                            R17 K51 ["reduce_triangles"]
      183 DUPTABLE                         R18 K53 [{["type"] = "boolean", ["description"] = "Development only: reduce triangles for validation. Defaults to false. Omit for Platform, which always reduces them."}]
      184 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      186 CALL                             R15 3 1
      187 LOADK                            R17 K54 ["classifications"]
      188 DUPTABLE                         R18 K58 [{["type"] = "array", ["description"] = "Labels for Models and BaseParts under the input. A Model covers every BasePart inside it. Omit to let the engine decide. Unlisted parts become Body; an R15 body with a Humanoid is skipped.", ["items"]}]
      189 DUPTABLE                         R19 K64 [{["type"] = "object", ["additionalProperties"] = False, ["properties"], ["required"]}]
      190 DUPTABLE                         R20 K68 [{"path", "uniqueId", "classification"}]
      191 DUPTABLE                         R21 K70 [{["type"] = "string", ["description"] = "Path under the input Model, such as \"Acc.Staff_Rigid\", or the full path from inspect_instance. A Model covers every BasePart inside it."}]
      192 SETTABLEKS                       R21 R20 K65 ["path"]
      194 DUPTABLE                         R21 K72 [{["type"] = "string", ["description"] = "uniqueId from inspect_instance. Required only when path matches more than one instance."}]
      195 SETTABLEKS                       R21 R20 K66 ["uniqueId"]
      197 DUPTABLE                         R21 K74 [{["type"] = "string", ["enum"], ["description"] = "Body is the avatar itself. Layered is layered clothing, including shoes. EyeLayered is eyelashes or eyebrows. Rigid is a fixed accessory like a hat."}]
      198 NEWTABLE                         R22 0 4
      200 LOADK                            R23 K75 ["Body"]
      201 LOADK                            R24 K76 ["Layered"]
      202 LOADK                            R25 K77 ["EyeLayered"]
      203 LOADK                            R26 K78 ["Rigid"]
      204 SETLIST                          R22 R23 4 [1]
      206 SETTABLEKS                       R22 R21 K33 ["enum"]
      208 SETTABLEKS                       R21 R20 K67 ["classification"]
      210 SETTABLEKS                       R20 R19 K62 ["properties"]
      212 NEWTABLE                         R20 0 2
      214 LOADK                            R21 K65 ["path"]
      215 LOADK                            R22 K67 ["classification"]
      216 SETLIST                          R20 R21 2 [1]
      218 SETTABLEKS                       R20 R19 K63 ["required"]
      220 SETTABLEKS                       R19 R18 K57 ["items"]
      222 NAMECALL                         R15 R15 K31 ["addOptionalArgument"]
      224 CALL                             R15 3 1
      225 MOVE                             R17 R14
      226 NAMECALL                         R15 R15 K79 ["setHandler"]
      228 CALL                             R15 2 1
      229 LOADK                            R17 K80 ["Auto Setup Avatar"]
      230 NAMECALL                         R15 R15 K81 ["setTitle"]
      232 CALL                             R15 2 1
      233 DUPTABLE                         R17 K87 [{["title"] = "Auto Setup Avatar", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      234 NAMECALL                         R15 R15 K88 ["setAnnotations"]
      236 CALL                             R15 2 1
      237 NAMECALL                         R15 R15 K89 ["build"]
      239 CALL                             R15 1 1
      240 DUPCLOSURE                       R16 K90 [PROTO_25]
      241 CAPTURE                          UPVAL U12
      242 CAPTURE                          UPVAL U13
      243 CAPTURE                          UPVAL U14
      244 CAPTURE                          UPVAL U11
      245 CAPTURE                          UPVAL U15
      246 DUPTABLE                         R17 K94 [{"command", "getDescription", "runToolChain"}]
      247 GETUPVAL                         R18 11
      248 GETTABLEKS                       R18 R18 K21 ["AvatarAutoSetup"]
      250 SETTABLEKS                       R18 R17 K91 ["command"]
      252 DUPCLOSURE                       R18 K95 [PROTO_26]
      253 CAPTURE                          UPVAL U16
      254 SETTABLEKS                       R18 R17 K92 ["getDescription"]
      256 SETTABLEKS                       R16 R17 K93 ["runToolChain"]
      258 DUPTABLE                         R18 K100 [{"toolCallOptions", "definition", "slashCommands", "getPreExecuteWarning"}]
      259 DUPTABLE                         R19 K103 [{["resetTimeoutOnProgress"] = True}]
      260 SETTABLEKS                       R19 R18 K96 ["toolCallOptions"]
      262 SETTABLEKS                       R15 R18 K97 ["definition"]
      264 NEWTABLE                         R19 0 1
      266 MOVE                             R20 R17
      267 SETLIST                          R19 R20 1 [1]
      269 SETTABLEKS                       R19 R18 K98 ["slashCommands"]
      271 NEWCLOSURE                       R19 P13
      272 CAPTURE                          UPVAL U3
      273 CAPTURE                          UPVAL U7
      274 CAPTURE                          VAL R2
      275 CAPTURE                          REF R13
      276 CAPTURE                          REF R12
      277 CAPTURE                          UPVAL U17
      278 SETTABLEKS                       R19 R18 K99 ["getPreExecuteWarning"]
      280 CLOSEUPVALS                      R8
      281 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["AskInput"]
       30 GETTABLEKS                       R6 R6 K12 ["AskInputTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Util"]
       37 GETTABLEKS                       R7 R7 K13 ["AvatarAutoSetup"]
       39 GETTABLEKS                       R7 R7 K14 ["AvatarAutoSetupChannel"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Guest"]
       46 GETTABLEKS                       R8 R8 K16 ["Environment"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K17 ["Flags"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Util"]
       58 GETTABLEKS                       R10 R10 K18 ["InstanceChannel"]
       60 GETTABLEKS                       R10 R10 K18 ["InstanceChannel"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Util"]
       67 GETTABLEKS                       R11 R11 K19 ["NetworkingIdentity"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K10 ["Util"]
       74 GETTABLEKS                       R12 R12 K20 ["SlashCommandConfiguration"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Util"]
       81 GETTABLEKS                       R13 R13 K21 ["TestAutomationUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K22 ["Tools"]
       88 GETTABLEKS                       R14 R14 K23 ["ToolTypes"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K10 ["Util"]
       95 GETTABLEKS                       R15 R15 K24 ["ToolUtils"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K25 ["Resources"]
      102 GETTABLEKS                       R16 R16 K26 ["Localization"]
      104 GETTABLEKS                       R16 R16 K27 ["Translator"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K28 ["Types"]
      111 CALL                             R16 1 1
      112 GETTABLEKS                       R17 R3 K29 ["Remote"]
      114 GETTABLEKS                       R18 R4 K10 ["Util"]
      116 GETTABLEKS                       R18 R18 K30 ["ToolBuilder"]
      118 GETTABLEKS                       R19 R4 K10 ["Util"]
      120 GETTABLEKS                       R19 R19 K31 ["ToolResult"]
      122 GETTABLEKS                       R20 R13 K32 ["ToolNames"]
      124 GETTABLEKS                       R21 R5 K33 ["INPUT_TYPE"]
      126 GETTABLEKS                       R22 R11 K34 ["Configs"]
      128 GETTABLEKS                       R22 R22 K13 ["AvatarAutoSetup"]
      130 GETTABLEKS                       R23 R22 K35 ["row"]
      132 DUPCLOSURE                       R24 K36 [PROTO_0]
      133 CAPTURE                          VAL R12
      134 DUPCLOSURE                       R25 K37 [PROTO_1]
      135 CAPTURE                          VAL R15
      136 DUPCLOSURE                       R26 K38 [PROTO_2]
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R25
      139 DUPCLOSURE                       R27 K39 [PROTO_3]
      140 DUPCLOSURE                       R28 K40 [PROTO_4]
      141 CAPTURE                          VAL R26
      142 DUPCLOSURE                       R29 K41 [PROTO_29]
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R28
      161 RETURN                           R29 1
