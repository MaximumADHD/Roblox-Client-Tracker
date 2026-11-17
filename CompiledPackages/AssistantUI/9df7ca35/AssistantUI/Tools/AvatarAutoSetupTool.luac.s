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
       99 GETIMPORT                        R5 K24 [table.concat]
      101 MOVE                             R6 R3
      102 LOADK                            R7 K25 [". "]
      103 CALL                             R5 2 1
      104 LOADK                            R6 K26 ["."]
      105 CONCAT                           R4 R5 R6
      106 RETURN                           R4 1

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
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          REF R4
       21 CAPTURE                          VAL R2
       22 FASTPCALL                        pcall 1 ; [+2]
       23 GETIMPORT                        R5 K9 [pcall]
       25 CALL                             R5 1 2
       26 GETUPVAL                         R7 0
       27 LOADNIL                          R8
       28 SETTABLE                         R8 R7 R1
       29 NAMECALL                         R7 R3 K10 ["Destroy"]
       31 CALL                             R7 1 0
       32 JUMPIF                           R5 ; [+5]
       33 GETIMPORT                        R7 K12 [error]
       35 MOVE                             R8 R6
       36 LOADN                            R9 0
       37 CALL                             R7 2 0
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K13 ["selection"]
       41 GETTABLEKS                       R7 R7 K14 ["set"]
       43 NEWTABLE                         R8 0 1
       45 GETTABLEKS                       R9 R6 K15 ["outputModel"]
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R7 1 0
       50 DUPTABLE                         R7 K18 [{"inputModelName", "outputModelName"}]
       51 GETTABLEKS                       R8 R6 K19 ["inputModel"]
       53 GETTABLEKS                       R8 R8 K20 ["Name"]
       55 SETTABLEKS                       R8 R7 K16 ["inputModelName"]
       57 GETTABLEKS                       R8 R6 K15 ["outputModel"]
       59 GETTABLEKS                       R8 R8 K20 ["Name"]
       61 SETTABLEKS                       R8 R7 K17 ["outputModelName"]
       63 CLOSEUPVALS                      R4
       64 RETURN                           R7 1

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"toolUseId"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["toolUseId"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R0 K1 [pcall]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["InvokeAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 GETUPVAL                         R3 4
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_19:
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
       62 GETUPVAL                         R5 0
       63 GETTABLEKS                       R5 R5 K19 ["resolveTargetAsync"]
       65 GETUPVAL                         R6 1
       66 CALL                             R5 1 1
       67 LOADB                            R6 0
       68 JUMPIFNOT                        R2 ; [+20]
       69 GETTABLEKS                       R7 R2 K20 ["signal"]
       71 JUMPIFNOT                        R7 ; [+17]
       72 GETTABLEKS                       R7 R2 K20 ["signal"]
       74 GETTABLEKS                       R7 R7 K21 ["abortSignal"]
       76 JUMPIFNOT                        R7 ; [+12]
       77 GETTABLEKS                       R7 R2 K20 ["signal"]
       79 GETTABLEKS                       R7 R7 K21 ["abortSignal"]
       81 NEWCLOSURE                       R9 P0
       82 CAPTURE                          REF R6
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 NAMECALL                         R7 R7 K22 ["Once"]
       88 CALL                             R7 2 0
       89 NEWCLOSURE                       R8 P1
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 FASTPCALL                        pcall 1 ; [+2]
       96 GETIMPORT                        R7 K24 [pcall]
       98 CALL                             R7 1 2
       99 JUMPIF                           R7 ; [+25]
      100 JUMPIF                           R6 ; [+5]
      101 GETIMPORT                        R9 K26 [error]
      103 MOVE                             R10 R8
      104 LOADN                            R11 0
      105 CALL                             R9 2 0
      106 GETUPVAL                         R9 5
      107 CALL                             R9 0 1
      108 LOADK                            R11 K27 ["Auto-setup canceled before it finished."]
      109 NAMECALL                         R9 R9 K28 ["addText"]
      111 CALL                             R9 2 1
      112 DUPTABLE                         R11 K31 [{["canceled"] = True}]
      113 NAMECALL                         R9 R9 K32 ["setStructuredContent"]
      115 CALL                             R9 2 1
      116 LOADB                            R11 1
      117 NAMECALL                         R9 R9 K33 ["setError"]
      119 CALL                             R9 2 1
      120 NAMECALL                         R9 R9 K34 ["build"]
      122 CALL                             R9 1 -1
      123 CLOSEUPVALS                      R6
      124 RETURN                           R9 -1
      125 GETUPVAL                         R9 5
      126 CALL                             R9 0 1
      127 LOADK                            R11 K35 ["Auto-setup complete: input \"%*\" -> output \"%*\"."]
      128 GETTABLEKS                       R13 R8 K36 ["inputModelName"]
      130 GETTABLEKS                       R14 R8 K37 ["outputModelName"]
      132 NAMECALL                         R11 R11 K38 ["format"]
      134 CALL                             R11 3 1
      135 NAMECALL                         R9 R9 K28 ["addText"]
      137 CALL                             R9 2 1
      138 NAMECALL                         R9 R9 K34 ["build"]
      140 CALL                             R9 1 -1
      141 CLOSEUPVALS                      R6
      142 RETURN                           R9 -1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 DUPCLOSURE                       R1 K0 [PROTO_20]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 DUPCLOSURE                       R2 K1 [PROTO_21]
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U3
        9 NEWTABLE                         R3 0 2
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 SETLIST                          R3 R4 2 [1]
       15 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AvatarAutoSetup"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolveTargetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 3
        8 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_25:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R2 K0 ["classifications"]
        7 JUMPIFEQKNIL                     R4 ; [+15]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 FASTPCALL                        pcall 1 ; [+2]
       15 GETIMPORT                        R4 K2 [pcall]
       17 CALL                             R4 1 2
       18 JUMPIFNOT                        R4 ; [+2]
       19 MOVE                             R3 R5
       20 JUMP                             ; [+2]
       21 NEWTABLE                         R3 0 0
       23 DUPTABLE                         R4 K6 [{["shouldConfirm"] = True, ["warningMessage"]}]
       24 GETUPVAL                         R5 3
       25 MOVE                             R6 R2
       26 MOVE                             R7 R3
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K5 ["warningMessage"]
       30 RETURN                           R4 1

PROTO_26:
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
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K3 ["invoke"]
       23 MOVE                             R9 R2
       24 LOADK                            R10 K4 ["AvatarAutoSetupTool.runAutoSetup"]
       25 CALL                             R8 2 1
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K3 ["invoke"]
       29 MOVE                             R10 R2
       30 LOADK                            R11 K5 ["AvatarAutoSetupTool.cancelAutoSetup"]
       31 CALL                             R9 2 1
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R10 R10 K3 ["invoke"]
       35 MOVE                             R11 R2
       36 LOADK                            R12 K6 ["AvatarAutoSetupTool.getClassificationPlan"]
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 4
       39 GETTABLEKS                       R11 R11 K7 ["new"]
       41 CALL                             R11 0 1
       42 NAMECALL                         R12 R2 K8 ["GetIdentity"]
       44 CALL                             R12 1 1
       45 GETUPVAL                         R13 5
       46 GETTABLEKS                       R13 R13 K9 ["Identity"]
       48 GETTABLEKS                       R13 R13 K10 ["Standalone"]
       50 JUMPIFEQ                         R12 R13 ; [+26]
       52 NEWCLOSURE                       R16 P3
       53 CAPTURE                          VAL R6
       54 NAMECALL                         R14 R8 K11 ["Connect"]
       56 CALL                             R14 2 -1
       57 NAMECALL                         R12 R11 K12 ["Add"]
       59 CALL                             R12 -1 0
       60 NEWCLOSURE                       R16 P4
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 NAMECALL                         R14 R9 K11 ["Connect"]
       65 CALL                             R14 2 -1
       66 NAMECALL                         R12 R11 K12 ["Add"]
       68 CALL                             R12 -1 0
       69 NEWCLOSURE                       R16 P5
       70 CAPTURE                          VAL R5
       71 NAMECALL                         R14 R10 K11 ["Connect"]
       73 CALL                             R14 2 -1
       74 NAMECALL                         R12 R11 K12 ["Add"]
       76 CALL                             R12 -1 0
       77 NEWCLOSURE                       R14 P6
       78 CAPTURE                          VAL R11
       79 NAMECALL                         R12 R3 K13 ["Once"]
       81 CALL                             R12 2 0
       82 NEWCLOSURE                       R12 P7
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R9
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          UPVAL U8
       89 GETUPVAL                         R13 9
       90 GETTABLEKS                       R13 R13 K14 ["define"]
       92 CALL                             R13 0 1
       93 GETUPVAL                         R15 10
       94 GETTABLEKS                       R15 R15 K15 ["AvatarAutoSetup"]
       96 NAMECALL                         R13 R13 K16 ["setName"]
       98 CALL                             R13 2 1
       99 LOADK                            R15 K17 ["Rig a static Workspace Model as an R15 avatar and place the result beside it.\nPass `instance_path` whenever the Model is known; omit it only to use the\nuser's single selected Model. Do not set Selection with execute_luau.\nUsually takes 3-5 minutes."]
      100 NAMECALL                         R13 R13 K18 ["setDescription"]
      102 CALL                             R13 2 1
      103 LOADK                            R15 K19 ["instance_path"]
      104 DUPTABLE                         R16 K24 [{["type"] = "string", ["description"] = "Workspace path to the input Model, preferably from inspect_instance. Pass it whenever known; omit only for the user's single selected Model."}]
      105 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      107 CALL                             R13 3 1
      108 LOADK                            R15 K26 ["setup_type"]
      109 DUPTABLE                         R16 K29 [{["type"] = "string", ["enum"], ["description"] = "\"Platform\" (default) creates marketplace-compatible avatars. \"Development\" creates experience-only characters such as NPCs."}]
      110 NEWTABLE                         R17 0 2
      112 LOADK                            R18 K30 ["Platform"]
      113 LOADK                            R19 K31 ["Development"]
      114 SETLIST                          R17 R18 2 [1]
      116 SETTABLEKS                       R17 R16 K27 ["enum"]
      118 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      120 CALL                             R13 3 1
      121 LOADK                            R15 K32 ["r15_plus"]
      122 DUPTABLE                         R16 K35 [{["type"] = "boolean", ["description"] = "Add optional upper-torso, neck, hand, and foot joints for more articulation. Defaults to false."}]
      123 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      125 CALL                             R13 3 1
      126 LOADK                            R15 K36 ["align_front_angle"]
      127 DUPTABLE                         R16 K38 [{["type"] = "boolean", ["description"] = "Fix the front to negative Z. Defaults to false, which lets the engine infer it. Use true for ambiguous models that already face negative Z."}]
      128 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      130 CALL                             R13 3 1
      131 LOADK                            R15 K39 ["decal_to_dynamic_head"]
      132 DUPTABLE                         R16 K41 [{["type"] = "boolean", ["description"] = "Create a dynamic head from a 2D face Decal or texture. Defaults to false."}]
      133 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      135 CALL                             R13 3 1
      136 LOADK                            R15 K42 ["enable_additional_head_processing"]
      137 DUPTABLE                         R16 K44 [{["type"] = "boolean", ["description"] = "Align the head cage to facial features for a better makeup fit. Defaults to true."}]
      138 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      140 CALL                             R13 3 1
      141 LOADK                            R15 K45 ["reduce_triangles"]
      142 DUPTABLE                         R16 K47 [{["type"] = "boolean", ["description"] = "Development only: reduce triangles for validation. Defaults to false. Omit for Platform, which always reduces them."}]
      143 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      145 CALL                             R13 3 1
      146 LOADK                            R15 K48 ["classifications"]
      147 DUPTABLE                         R16 K52 [{["type"] = "array", ["description"] = "Labels for Models and BaseParts under the input. A Model covers every BasePart inside it. Omit to let the engine decide. Unlisted parts become Body; an R15 body with a Humanoid is skipped.", ["items"]}]
      148 DUPTABLE                         R17 K58 [{["type"] = "object", ["additionalProperties"] = False, ["properties"], ["required"]}]
      149 DUPTABLE                         R18 K62 [{"path", "uniqueId", "classification"}]
      150 DUPTABLE                         R19 K64 [{["type"] = "string", ["description"] = "Path under the input Model, such as \"Acc.Staff_Rigid\", or the full path from inspect_instance. A Model covers every BasePart inside it."}]
      151 SETTABLEKS                       R19 R18 K59 ["path"]
      153 DUPTABLE                         R19 K66 [{["type"] = "string", ["description"] = "uniqueId from inspect_instance. Required only when path matches more than one instance."}]
      154 SETTABLEKS                       R19 R18 K60 ["uniqueId"]
      156 DUPTABLE                         R19 K68 [{["type"] = "string", ["enum"], ["description"] = "Body is the avatar itself. Layered is layered clothing, including shoes. EyeLayered is eyelashes or eyebrows. Rigid is a fixed accessory like a hat."}]
      157 NEWTABLE                         R20 0 4
      159 LOADK                            R21 K69 ["Body"]
      160 LOADK                            R22 K70 ["Layered"]
      161 LOADK                            R23 K71 ["EyeLayered"]
      162 LOADK                            R24 K72 ["Rigid"]
      163 SETLIST                          R20 R21 4 [1]
      165 SETTABLEKS                       R20 R19 K27 ["enum"]
      167 SETTABLEKS                       R19 R18 K61 ["classification"]
      169 SETTABLEKS                       R18 R17 K56 ["properties"]
      171 NEWTABLE                         R18 0 2
      173 LOADK                            R19 K59 ["path"]
      174 LOADK                            R20 K61 ["classification"]
      175 SETLIST                          R18 R19 2 [1]
      177 SETTABLEKS                       R18 R17 K57 ["required"]
      179 SETTABLEKS                       R17 R16 K51 ["items"]
      181 NAMECALL                         R13 R13 K25 ["addOptionalArgument"]
      183 CALL                             R13 3 1
      184 MOVE                             R15 R12
      185 NAMECALL                         R13 R13 K73 ["setHandler"]
      187 CALL                             R13 2 1
      188 LOADK                            R15 K74 ["Auto Setup Avatar"]
      189 NAMECALL                         R13 R13 K75 ["setTitle"]
      191 CALL                             R13 2 1
      192 DUPTABLE                         R15 K81 [{["title"] = "Auto Setup Avatar", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      193 NAMECALL                         R13 R13 K82 ["setAnnotations"]
      195 CALL                             R13 2 1
      196 NAMECALL                         R13 R13 K83 ["build"]
      198 CALL                             R13 1 1
      199 DUPCLOSURE                       R14 K84 [PROTO_22]
      200 CAPTURE                          UPVAL U11
      201 CAPTURE                          UPVAL U12
      202 CAPTURE                          UPVAL U13
      203 CAPTURE                          UPVAL U10
      204 CAPTURE                          UPVAL U14
      205 DUPTABLE                         R15 K88 [{"command", "getDescription", "runToolChain"}]
      206 GETUPVAL                         R16 10
      207 GETTABLEKS                       R16 R16 K15 ["AvatarAutoSetup"]
      209 SETTABLEKS                       R16 R15 K85 ["command"]
      211 DUPCLOSURE                       R16 K89 [PROTO_23]
      212 CAPTURE                          UPVAL U15
      213 SETTABLEKS                       R16 R15 K86 ["getDescription"]
      215 SETTABLEKS                       R14 R15 K87 ["runToolChain"]
      217 DUPTABLE                         R16 K94 [{"toolCallOptions", "definition", "slashCommands", "getPreExecuteWarning"}]
      218 DUPTABLE                         R17 K97 [{["resetTimeoutOnProgress"] = True}]
      219 SETTABLEKS                       R17 R16 K90 ["toolCallOptions"]
      221 SETTABLEKS                       R13 R16 K91 ["definition"]
      223 NEWTABLE                         R17 0 1
      225 MOVE                             R18 R15
      226 SETLIST                          R17 R18 1 [1]
      228 SETTABLEKS                       R17 R16 K92 ["slashCommands"]
      230 NEWCLOSURE                       R17 P10
      231 CAPTURE                          UPVAL U6
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R10
      234 CAPTURE                          UPVAL U16
      235 SETTABLEKS                       R17 R16 K93 ["getPreExecuteWarning"]
      237 RETURN                           R16 1

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
       51 GETTABLEKS                       R9 R0 K10 ["Util"]
       53 GETTABLEKS                       R9 R9 K17 ["InstanceChannel"]
       55 GETTABLEKS                       R9 R9 K17 ["InstanceChannel"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K10 ["Util"]
       62 GETTABLEKS                       R10 R10 K18 ["NetworkingIdentity"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["SlashCommandConfiguration"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Util"]
       76 GETTABLEKS                       R12 R12 K20 ["TestAutomationUtils"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K21 ["Tools"]
       83 GETTABLEKS                       R13 R13 K22 ["ToolTypes"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Util"]
       90 GETTABLEKS                       R14 R14 K23 ["ToolUtils"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K24 ["Resources"]
       97 GETTABLEKS                       R15 R15 K25 ["Localization"]
       99 GETTABLEKS                       R15 R15 K26 ["Translator"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R16 R0 K27 ["Types"]
      106 CALL                             R15 1 1
      107 GETTABLEKS                       R16 R3 K28 ["Remote"]
      109 GETTABLEKS                       R17 R4 K10 ["Util"]
      111 GETTABLEKS                       R17 R17 K29 ["ToolBuilder"]
      113 GETTABLEKS                       R18 R4 K10 ["Util"]
      115 GETTABLEKS                       R18 R18 K30 ["ToolResult"]
      117 GETTABLEKS                       R19 R12 K31 ["ToolNames"]
      119 GETTABLEKS                       R20 R5 K32 ["INPUT_TYPE"]
      121 GETTABLEKS                       R21 R10 K33 ["Configs"]
      123 GETTABLEKS                       R21 R21 K13 ["AvatarAutoSetup"]
      125 GETTABLEKS                       R22 R21 K34 ["row"]
      127 DUPCLOSURE                       R23 K35 [PROTO_0]
      128 CAPTURE                          VAL R11
      129 DUPCLOSURE                       R24 K36 [PROTO_1]
      130 CAPTURE                          VAL R14
      131 DUPCLOSURE                       R25 K37 [PROTO_2]
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R24
      134 DUPCLOSURE                       R26 K38 [PROTO_3]
      135 DUPCLOSURE                       R27 K39 [PROTO_4]
      136 CAPTURE                          VAL R25
      137 DUPCLOSURE                       R28 K40 [PROTO_26]
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R22
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R21
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R27
      155 RETURN                           R28 1
