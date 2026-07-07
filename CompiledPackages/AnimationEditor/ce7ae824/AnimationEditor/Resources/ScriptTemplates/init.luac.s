PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Source"]
        2 LOADN                            R4 1
        3 LOADN                            R5 11
        4 NAMECALL                         R2 R1 K1 ["sub"]
        6 CALL                             R2 3 1
        7 JUMPIFNOTEQKS                    R2 K2 ["--!nocheck\n"] ; [+6]
        9 LOADN                            R4 12
       10 NAMECALL                         R2 R1 K1 ["sub"]
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
        1 GETIMPORT                        R4 K12 [script]
        3 GETTABLEKS                       R4 R4 K1 ["RunClient"]
        5 GETTABLEKS                       R5 R4 K13 ["Source"]
        7 LOADN                            R8 1
        8 LOADN                            R9 11
        9 NAMECALL                         R6 R5 K14 ["sub"]
       11 CALL                             R6 3 1
       12 JUMPIFNOTEQKS                    R6 K15 ["--!nocheck\n"] ; [+7]
       14 LOADN                            R8 12
       15 NAMECALL                         R6 R5 K14 ["sub"]
       17 CALL                             R6 2 1
       18 MOVE                             R3 R6
       19 JUMP                             ; [+1]
       20 MOVE                             R3 R5
       21 SETTABLEKS                       R3 R2 K6 ["source"]
       23 DUPTABLE                         R3 K18 [{[1] = "RunServer", ["className"] = "Script", ["runContext"] = , ["source"], ["isRoot"] = False, ["children"] = }]
       24 GETIMPORT                        R5 K12 [script]
       26 GETTABLEKS                       R5 R5 K16 ["RunServer"]
       28 GETTABLEKS                       R6 R5 K13 ["Source"]
       30 LOADN                            R9 1
       31 LOADN                            R10 11
       32 NAMECALL                         R7 R6 K14 ["sub"]
       34 CALL                             R7 3 1
       35 JUMPIFNOTEQKS                    R7 K15 ["--!nocheck\n"] ; [+7]
       37 LOADN                            R9 12
       38 NAMECALL                         R7 R6 K14 ["sub"]
       40 CALL                             R7 2 1
       41 MOVE                             R4 R7
       42 JUMP                             ; [+1]
       43 MOVE                             R4 R6
       44 SETTABLEKS                       R4 R3 K6 ["source"]
       46 JUMPIFEQKS                       R0 K19 ["StarterPlayer"] ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 JUMPIF                           R4 ; [+6]
       51 NEWTABLE                         R5 0 1
       53 MOVE                             R6 R3
       54 SETLIST                          R5 R6 1 [1]
       56 RETURN                           R5 1
       57 JUMPIFNOT                        R1 ; [+7]
       58 NEWTABLE                         R5 0 2
       60 MOVE                             R6 R3
       61 MOVE                             R7 R2
       62 SETLIST                          R5 R6 2 [1]
       64 RETURN                           R5 1
       65 NEWTABLE                         R5 0 1
       67 MOVE                             R6 R2
       68 SETLIST                          R5 R6 1 [1]
       70 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+34]
        3 NEWTABLE                         R3 0 1
        5 DUPTABLE                         R4 K10 [{[1] = "Animate", ["className"] = "ModuleScript", ["runContext"] = , ["source"], ["isRoot"] = True, ["children"]}]
        6 GETIMPORT                        R6 K12 [script]
        8 GETTABLEKS                       R6 R6 K1 ["Animate"]
       10 GETTABLEKS                       R7 R6 K13 ["Source"]
       12 LOADN                            R10 1
       13 LOADN                            R11 11
       14 NAMECALL                         R8 R7 K14 ["sub"]
       16 CALL                             R8 3 1
       17 JUMPIFNOTEQKS                    R8 K15 ["--!nocheck\n"] ; [+7]
       19 LOADN                            R10 12
       20 NAMECALL                         R8 R7 K14 ["sub"]
       22 CALL                             R8 2 1
       23 MOVE                             R5 R8
       24 JUMP                             ; [+1]
       25 MOVE                             R5 R7
       26 SETTABLEKS                       R5 R4 K6 ["source"]
       28 GETUPVAL                         R5 1
       29 MOVE                             R6 R0
       30 MOVE                             R7 R2
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K9 ["children"]
       34 SETLIST                          R3 R4 1 [1]
       36 RETURN                           R3 1
       37 GETIMPORT                        R5 K12 [script]
       39 GETTABLEKS                       R5 R5 K16 ["AnimateLegacy"]
       41 GETTABLEKS                       R6 R5 K13 ["Source"]
       43 LOADN                            R9 1
       44 LOADN                            R10 11
       45 NAMECALL                         R7 R6 K14 ["sub"]
       47 CALL                             R7 3 1
       48 JUMPIFNOTEQKS                    R7 K15 ["--!nocheck\n"] ; [+7]
       50 LOADN                            R9 12
       51 NAMECALL                         R7 R6 K14 ["sub"]
       53 CALL                             R7 2 1
       54 MOVE                             R4 R7
       55 JUMP                             ; [+1]
       56 MOVE                             R4 R6
       57 GETUPVAL                         R5 2
       58 MOVE                             R6 R1
       59 CALL                             R5 1 1
       60 LOADK                            R8 K17 ["-- {{PARAMETERS}}"]
       61 LOADN                            R9 1
       62 LOADB                            R10 1
       63 NAMECALL                         R6 R4 K18 ["find"]
       65 CALL                             R6 4 2
       66 JUMPIFNOT                        R6 ; [+14]
       67 JUMPIFNOT                        R7 ; [+13]
       68 LOADN                            R13 1
       69 SUBK                             R14 R6 K19 [1]
       70 NAMECALL                         R11 R4 K14 ["sub"]
       72 CALL                             R11 3 1
       73 MOVE                             R8 R11
       74 MOVE                             R9 R5
       75 ADDK                             R12 R7 K19 [1]
       76 NAMECALL                         R10 R4 K14 ["sub"]
       78 CALL                             R10 2 1
       79 CONCAT                           R3 R8 R10
       80 JUMP                             ; [+1]
       81 MOVE                             R3 R4
       82 JUMPIFNOTEQKS                    R0 K20 ["StarterPlayer"] ; [+9]
       84 NEWTABLE                         R4 0 1
       86 DUPTABLE                         R5 K22 [{[1] = "Animate", ["className"] = "LocalScript", ["runContext"] = , ["source"], ["isRoot"] = True, ["children"] = }]
       87 SETTABLEKS                       R3 R5 K6 ["source"]
       89 SETLIST                          R4 R5 1 [1]
       91 RETURN                           R4 1
       92 NEWTABLE                         R4 0 1
       94 DUPTABLE                         R5 K24 [{[1] = "Animate", ["className"] = "Script", ["runContext"], ["source"], ["isRoot"] = True, ["children"] = }]
       95 GETIMPORT                        R6 K28 [Enum.RunContext.Client]
       97 SETTABLEKS                       R6 R5 K4 ["runContext"]
       99 SETTABLEKS                       R3 R5 K6 ["source"]
      101 SETLIST                          R4 R5 1 [1]
      103 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R1 R1 K2 ["PreviewStaging"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_2]
       17 DUPCLOSURE                       R5 K11 [PROTO_3]
       18 CAPTURE                          VAL R4
       19 DUPCLOSURE                       R6 K12 [PROTO_4]
       20 DUPCLOSURE                       R7 K13 [PROTO_5]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R4
       24 DUPCLOSURE                       R8 K14 [PROTO_6]
       25 CAPTURE                          VAL R2
       26 DUPTABLE                         R9 K19 [{"getActiveTemplateSet", "generateParameterBlock", "injectParameters", "getPreviewStagingSource"}]
       27 SETTABLEKS                       R7 R9 K15 ["getActiveTemplateSet"]
       29 SETTABLEKS                       R4 R9 K16 ["generateParameterBlock"]
       31 SETTABLEKS                       R5 R9 K17 ["injectParameters"]
       33 SETTABLEKS                       R8 R9 K18 ["getPreviewStagingSource"]
       35 RETURN                           R9 1
