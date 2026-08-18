PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 LOADN                            R4 1
        3 LOADN                            R5 11
        4 NAMECALL                         R2 R1 K0 ["sub"]
        6 CALL                             R2 3 1
        7 JUMPIFNOTEQKS                    R2 K1 ["--!nocheck\n"] ; [+6]
        9 LOADN                            R4 12
       10 NAMECALL                         R2 R1 K0 ["sub"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+8]
        7 LOADK                            R2 K3 ["\"%*\""]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 RETURN                           R1 1
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K6 [tostring]
       18 CALL                             R1 1 1
       19 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 4
        2 LOADK                            R2 K0 [""]
        3 LOADK                            R3 K1 ["-- Set graph parameters each frame (uncomment and edit as needed):"]
        4 LOADK                            R4 K2 ["-- RunService.Stepped:Connect(function()"]
        5 LOADK                            R5 K3 ["-- \tif track then"]
        6 SETLIST                          R1 R2 4 [1]
        8 LENGTH                           R2 R0
        9 JUMPIFNOTEQKN                    R2 K4 [0] ; [+9]
       11 FASTCALL2K                       TABLE_INSERT R1 K5 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K5 ["-- \t\ttrack:SetParameter(\"Parameter1\", 0) -- Number"]
       15 GETIMPORT                        R2 K8 [table.insert]
       17 CALL                             R2 2 0
       18 JUMP                             ; [+44]
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETTABLEKS                       R8 R6 K9 ["defaultValue"]
       25 FASTCALL1                        TYPE R8 ; [+3]
       26 MOVE                             R10 R8
       27 GETIMPORT                        R9 K11 [type]
       29 CALL                             R9 1 1
       30 JUMPIFNOTEQKS                    R9 K12 ["string"] ; [+8]
       32 LOADK                            R9 K13 ["\"%*\""]
       33 MOVE                             R11 R8
       34 NAMECALL                         R9 R9 K14 ["format"]
       36 CALL                             R9 2 1
       37 MOVE                             R7 R9
       38 JUMP                             ; [+6]
       39 FASTCALL1                        TOSTRING R8 ; [+3]
       40 MOVE                             R10 R8
       41 GETIMPORT                        R9 K16 [tostring]
       43 CALL                             R9 1 1
       44 MOVE                             R7 R9
       45 LOADK                            R11 K17 ["-- \t\ttrack:SetParameter(\"%*\", %*) -- %*"]
       46 GETTABLEKS                       R13 R6 K18 ["name"]
       48 MOVE                             R14 R7
       49 GETTABLEKS                       R15 R6 K10 ["type"]
       51 NAMECALL                         R11 R11 K14 ["format"]
       53 CALL                             R11 4 1
       54 MOVE                             R10 R11
       55 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       57 MOVE                             R9 R1
       58 GETIMPORT                        R8 K8 [table.insert]
       60 CALL                             R8 2 0
       61 FORGLOOP                         R2 2 ; [-39]
       63 FASTCALL2K                       TABLE_INSERT R1 K19 ; [+5]
       65 MOVE                             R3 R1
       66 LOADK                            R4 K19 ["-- \tend"]
       67 GETIMPORT                        R2 K8 [table.insert]
       69 CALL                             R2 2 0
       70 FASTCALL2K                       TABLE_INSERT R1 K20 ; [+5]
       72 MOVE                             R3 R1
       73 LOADK                            R4 K20 ["-- end)"]
       74 GETIMPORT                        R2 K8 [table.insert]
       76 CALL                             R2 2 0
       77 FASTCALL2K                       TABLE_INSERT R1 K0 ; [+5]
       79 MOVE                             R3 R1
       80 LOADK                            R4 K0 [""]
       81 GETIMPORT                        R2 K8 [table.insert]
       83 CALL                             R2 2 0
       84 GETIMPORT                        R2 K22 [table.concat]
       86 MOVE                             R3 R1
       87 LOADK                            R4 K23 ["\n"]
       88 CALL                             R2 2 -1
       89 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 LOADK                            R5 K0 ["-- {{PARAMETERS}}"]
        4 LOADN                            R6 1
        5 LOADB                            R7 1
        6 NAMECALL                         R3 R0 K1 ["find"]
        8 CALL                             R3 4 2
        9 JUMPIFNOT                        R3 ; [+14]
       10 JUMPIFNOT                        R4 ; [+13]
       11 LOADN                            R11 1
       12 SUBK                             R12 R3 K2 [1]
       13 NAMECALL                         R9 R0 K3 ["sub"]
       15 CALL                             R9 3 1
       16 MOVE                             R6 R9
       17 MOVE                             R7 R2
       18 ADDK                             R10 R4 K2 [1]
       19 NAMECALL                         R8 R0 K3 ["sub"]
       21 CALL                             R8 2 1
       22 CONCAT                           R5 R6 R8
       23 RETURN                           R5 1
       24 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R2 K10 [{[1] = "RunClient", ["className"] = "LocalScript", ["runContext"] = , ["source"], ["isRoot"] = False, ["children"] = }]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K1 ["RunClient"]
        4 LOADN                            R7 1
        5 LOADN                            R8 11
        6 NAMECALL                         R5 R4 K11 ["sub"]
        8 CALL                             R5 3 1
        9 JUMPIFNOTEQKS                    R5 K12 ["--!nocheck\n"] ; [+7]
       11 LOADN                            R7 12
       12 NAMECALL                         R5 R4 K11 ["sub"]
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 JUMP                             ; [+1]
       17 MOVE                             R3 R4
       18 SETTABLEKS                       R3 R2 K6 ["source"]
       20 DUPTABLE                         R3 K15 [{[1] = "RunServer", ["className"] = "Script", ["runContext"] = , ["source"], ["isRoot"] = False, ["children"] = }]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K13 ["RunServer"]
       24 LOADN                            R8 1
       25 LOADN                            R9 11
       26 NAMECALL                         R6 R5 K11 ["sub"]
       28 CALL                             R6 3 1
       29 JUMPIFNOTEQKS                    R6 K12 ["--!nocheck\n"] ; [+7]
       31 LOADN                            R8 12
       32 NAMECALL                         R6 R5 K11 ["sub"]
       34 CALL                             R6 2 1
       35 MOVE                             R4 R6
       36 JUMP                             ; [+1]
       37 MOVE                             R4 R5
       38 SETTABLEKS                       R4 R3 K6 ["source"]
       40 JUMPIFEQKS                       R0 K16 ["StarterPlayer"] ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 JUMPIF                           R4 ; [+6]
       45 NEWTABLE                         R5 0 1
       47 MOVE                             R6 R3
       48 SETLIST                          R5 R6 1 [1]
       50 RETURN                           R5 1
       51 JUMPIFNOT                        R1 ; [+7]
       52 NEWTABLE                         R5 0 2
       54 MOVE                             R6 R3
       55 MOVE                             R7 R2
       56 SETLIST                          R5 R6 2 [1]
       58 RETURN                           R5 1
       59 NEWTABLE                         R5 0 1
       61 MOVE                             R6 R2
       62 SETLIST                          R5 R6 1 [1]
       64 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+31]
        3 NEWTABLE                         R3 0 1
        5 DUPTABLE                         R4 K10 [{[1] = "Animate", ["className"] = "ModuleScript", ["runContext"] = , ["source"], ["isRoot"] = True, ["children"]}]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["Animate"]
        9 LOADN                            R9 1
       10 LOADN                            R10 11
       11 NAMECALL                         R7 R6 K11 ["sub"]
       13 CALL                             R7 3 1
       14 JUMPIFNOTEQKS                    R7 K12 ["--!nocheck\n"] ; [+7]
       16 LOADN                            R9 12
       17 NAMECALL                         R7 R6 K11 ["sub"]
       19 CALL                             R7 2 1
       20 MOVE                             R5 R7
       21 JUMP                             ; [+1]
       22 MOVE                             R5 R6
       23 SETTABLEKS                       R5 R4 K6 ["source"]
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R0
       27 MOVE                             R7 R2
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K9 ["children"]
       31 SETLIST                          R3 R4 1 [1]
       33 RETURN                           R3 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K13 ["AnimateLegacy"]
       37 LOADN                            R8 1
       38 LOADN                            R9 11
       39 NAMECALL                         R6 R5 K11 ["sub"]
       41 CALL                             R6 3 1
       42 JUMPIFNOTEQKS                    R6 K12 ["--!nocheck\n"] ; [+7]
       44 LOADN                            R8 12
       45 NAMECALL                         R6 R5 K11 ["sub"]
       47 CALL                             R6 2 1
       48 MOVE                             R4 R6
       49 JUMP                             ; [+1]
       50 MOVE                             R4 R5
       51 GETUPVAL                         R5 3
       52 MOVE                             R6 R1
       53 CALL                             R5 1 1
       54 LOADK                            R8 K14 ["-- {{PARAMETERS}}"]
       55 LOADN                            R9 1
       56 LOADB                            R10 1
       57 NAMECALL                         R6 R4 K15 ["find"]
       59 CALL                             R6 4 2
       60 JUMPIFNOT                        R6 ; [+14]
       61 JUMPIFNOT                        R7 ; [+13]
       62 LOADN                            R13 1
       63 SUBK                             R14 R6 K16 [1]
       64 NAMECALL                         R11 R4 K11 ["sub"]
       66 CALL                             R11 3 1
       67 MOVE                             R8 R11
       68 MOVE                             R9 R5
       69 ADDK                             R12 R7 K16 [1]
       70 NAMECALL                         R10 R4 K11 ["sub"]
       72 CALL                             R10 2 1
       73 CONCAT                           R3 R8 R10
       74 JUMP                             ; [+1]
       75 MOVE                             R3 R4
       76 JUMPIFNOTEQKS                    R0 K17 ["StarterPlayer"] ; [+9]
       78 NEWTABLE                         R4 0 1
       80 DUPTABLE                         R5 K19 [{[1] = "Animate", ["className"] = "LocalScript", ["runContext"] = , ["source"], ["isRoot"] = True, ["children"] = }]
       81 SETTABLEKS                       R3 R5 K6 ["source"]
       83 SETLIST                          R4 R5 1 [1]
       85 RETURN                           R4 1
       86 NEWTABLE                         R4 0 1
       88 DUPTABLE                         R5 K21 [{[1] = "Animate", ["className"] = "Script", ["runContext"], ["source"], ["isRoot"] = True, ["children"] = }]
       89 GETIMPORT                        R6 K25 [Enum.RunContext.Client]
       91 SETTABLEKS                       R6 R5 K4 ["runContext"]
       93 SETTABLEKS                       R3 R5 K6 ["source"]
       95 SETLIST                          R4 R5 1 [1]
       97 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PreviewStaging"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAnimGraphCreateSAScript"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["GeneratedTemplates"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 DUPCLOSURE                       R5 K11 [PROTO_2]
       25 DUPCLOSURE                       R6 K12 [PROTO_3]
       26 CAPTURE                          VAL R5
       27 DUPCLOSURE                       R7 K13 [PROTO_4]
       28 CAPTURE                          VAL R2
       29 DUPCLOSURE                       R8 K14 [PROTO_5]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R5
       34 DUPCLOSURE                       R9 K15 [PROTO_6]
       35 CAPTURE                          VAL R3
       36 DUPTABLE                         R10 K20 [{"getActiveTemplateSet", "generateParameterBlock", "injectParameters", "getPreviewStagingSource"}]
       37 SETTABLEKS                       R8 R10 K16 ["getActiveTemplateSet"]
       39 SETTABLEKS                       R5 R10 K17 ["generateParameterBlock"]
       41 SETTABLEKS                       R6 R10 K18 ["injectParameters"]
       43 SETTABLEKS                       R9 R10 K19 ["getPreviewStagingSource"]
       45 RETURN                           R10 1
