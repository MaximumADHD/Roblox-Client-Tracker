PROTO_0:
        0 ORK                              R4 R3 K0 ["Last good preview is still shown. Fix the source or undo the edit, then the canvas will update automatically."]
        1 FASTCALL1                        TYPE R2 ; [+3]
        2 MOVE                             R7 R2
        3 GETIMPORT                        R6 K2 [type]
        5 CALL                             R6 1 1
        6 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+12]
        8 GETTABLEKS                       R7 R2 K4 ["message"]
       10 FASTCALL1                        TYPE R7 ; [+2]
       11 GETIMPORT                        R6 K2 [type]
       13 CALL                             R6 1 1
       14 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+4]
       16 GETTABLEKS                       R5 R2 K4 ["message"]
       18 JUMP                             ; [+5]
       19 FASTCALL1                        TOSTRING R2 ; [+3]
       20 MOVE                             R6 R2
       21 GETIMPORT                        R5 K7 [tostring]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R0 K8 ["_canvas"]
       26 MOVE                             R9 R4
       27 LOADK                            R10 K9 ["\n\n"]
       28 MOVE                             R11 R1
       29 LOADK                            R12 K10 [":\n"]
       30 MOVE                             R13 R5
       31 CONCAT                           R8 R9 R13
       32 NAMECALL                         R6 R6 K11 ["setError"]
       34 CALL                             R6 2 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_canvas"]
        2 LOADNIL                          R3
        3 NAMECALL                         R1 R1 K1 ["setError"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETTABLEKS                       R5 R1 K0 ["setExecutionWatchModules"]
        3 FASTCALL1                        TYPE R5 ; [+2]
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFEQKS                       R4 K3 ["function"] ; [+2]
        9 RETURN                           R0 0
       10 JUMPIFNOT                        R3 ; [+4]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R0 K4 ["_lastSuccessfulWatchModules"]
       15 GETTABLEKS                       R4 R2 K5 ["attemptedWatchModules"]
       17 JUMPIF                           R4 ; [+2]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R0 K6 ["_latestAttemptedWatchModules"]
       22 GETTABLEKS                       R4 R2 K7 ["success"]
       24 JUMPIFNOT                        R4 ; [+7]
       25 GETTABLEKS                       R4 R2 K8 ["successfulWatchModules"]
       27 JUMPIF                           R4 ; [+2]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R0 K4 ["_lastSuccessfulWatchModules"]
       32 NEWTABLE                         R4 0 0
       34 NEWTABLE                         R5 0 0
       36 GETTABLEKS                       R6 R0 K4 ["_lastSuccessfulWatchModules"]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 GETTABLE                         R11 R4 R10
       42 JUMPIF                           R11 ; [+9]
       43 LOADB                            R11 1
       44 SETTABLE                         R11 R4 R10
       45 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       47 MOVE                             R12 R5
       48 MOVE                             R13 R10
       49 GETIMPORT                        R11 K11 [table.insert]
       51 CALL                             R11 2 0
       52 FORGLOOP                         R6 2 ; [-12]
       54 GETTABLEKS                       R6 R0 K6 ["_latestAttemptedWatchModules"]
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 GETTABLE                         R11 R4 R10
       60 JUMPIF                           R11 ; [+9]
       61 LOADB                            R11 1
       62 SETTABLE                         R11 R4 R10
       63 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       65 MOVE                             R12 R5
       66 MOVE                             R13 R10
       67 GETIMPORT                        R11 K11 [table.insert]
       69 CALL                             R11 2 0
       70 FORGLOOP                         R6 2 ; [-12]
       72 MOVE                             R8 R5
       73 NAMECALL                         R6 R1 K0 ["setExecutionWatchModules"]
       75 CALL                             R6 2 0
       76 RETURN                           R0 0

PROTO_3:
        0 OR                               R3 R1 R2
        1 MOVE                             R4 R0
        2 JUMPIFNOT                        R4 ; [+3]
        3 NAMECALL                         R4 R0 K0 ["getThemeOverride"]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K1 ["light"] ; [+12]
        8 JUMPIFNOT                        R3 ; [+10]
        9 GETTABLEKS                       R5 R3 K2 ["Enums"]
       11 JUMPIFNOT                        R5 ; [+7]
       12 GETTABLEKS                       R5 R3 K2 ["Enums"]
       14 GETTABLEKS                       R5 R5 K3 ["Theme"]
       16 GETTABLEKS                       R5 R5 K4 ["Light"]
       18 RETURN                           R5 1
       19 JUMPIFNOTEQKS                    R4 K5 ["dark"] ; [+12]
       21 JUMPIFNOT                        R3 ; [+10]
       22 GETTABLEKS                       R5 R3 K2 ["Enums"]
       24 JUMPIFNOT                        R5 ; [+7]
       25 GETTABLEKS                       R5 R3 K2 ["Enums"]
       27 GETTABLEKS                       R5 R5 K3 ["Theme"]
       29 GETTABLEKS                       R5 R5 K6 ["Dark"]
       31 RETURN                           R5 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["getStudioFoundationTheme"]
       35 MOVE                             R6 R3
       36 CALL                             R5 1 -1
       37 RETURN                           R5 -1

PROTO_4:
        0 NEWTABLE                         R2 64 0
        2 GETTABLEKS                       R3 R0 K0 ["canvas"]
        4 SETTABLEKS                       R3 R2 K1 ["_canvas"]
        6 GETTABLEKS                       R3 R0 K2 ["controls"]
        8 SETTABLEKS                       R3 R2 K3 ["_controls"]
       10 GETTABLEKS                       R3 R0 K4 ["plugin"]
       12 SETTABLEKS                       R3 R2 K5 ["_plugin"]
       14 GETTABLEKS                       R3 R0 K6 ["widget"]
       16 SETTABLEKS                       R3 R2 K7 ["_widget"]
       18 GETTABLEKS                       R3 R0 K8 ["previewMountFrame"]
       20 SETTABLEKS                       R3 R2 K9 ["_previewMountFrame"]
       22 GETTABLEKS                       R3 R0 K10 ["React"]
       24 SETTABLEKS                       R3 R2 K11 ["_React"]
       26 GETTABLEKS                       R3 R0 K12 ["ReactRoblox"]
       28 SETTABLEKS                       R3 R2 K13 ["_ReactRoblox"]
       30 GETTABLEKS                       R3 R0 K14 ["Foundation"]
       32 SETTABLEKS                       R3 R2 K15 ["_Foundation"]
       34 GETTABLEKS                       R3 R0 K16 ["AppFrameworkPkg"]
       36 SETTABLEKS                       R3 R2 K17 ["_AppFrameworkPkg"]
       38 GETTABLEKS                       R3 R0 K18 ["Executor"]
       40 SETTABLEKS                       R3 R2 K19 ["_Executor"]
       42 GETTABLEKS                       R3 R0 K20 ["RunService"]
       44 JUMPIF                           R3 ; [+6]
       45 GETIMPORT                        R3 K22 [game]
       47 LOADK                            R5 K20 ["RunService"]
       48 NAMECALL                         R3 R3 K23 ["GetService"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K24 ["_RunService"]
       53 GETTABLEKS                       R3 R0 K25 ["ErrorBoundary"]
       55 SETTABLEKS                       R3 R2 K26 ["_ErrorBoundary"]
       57 GETTABLEKS                       R3 R0 K27 ["getLiveModule"]
       59 SETTABLEKS                       R3 R2 K28 ["_getLiveModule"]
       61 GETTABLEKS                       R3 R0 K29 ["now"]
       63 JUMPIF                           R3 ; [+2]
       64 GETIMPORT                        R3 K32 [os.clock]
       66 SETTABLEKS                       R3 R2 K33 ["_now"]
       68 GETTABLEKS                       R3 R0 K12 ["ReactRoblox"]
       70 GETTABLEKS                       R3 R3 K34 ["createRoot"]
       72 GETIMPORT                        R4 K37 [Instance.new]
       74 LOADK                            R5 K38 ["Folder"]
       75 CALL                             R4 1 -1
       76 CALL                             R3 -1 1
       77 SETTABLEKS                       R3 R2 K39 ["_root"]
       79 LOADN                            R3 0
       80 SETTABLEKS                       R3 R2 K40 ["_renderVersion"]
       82 LOADNIL                          R3
       83 SETTABLEKS                       R3 R2 K41 ["_executionSession"]
       85 LOADNIL                          R3
       86 SETTABLEKS                       R3 R2 K42 ["_bindStartedAt"]
       88 LOADNIL                          R3
       89 SETTABLEKS                       R3 R2 K43 ["_previewCommittedAt"]
       91 LOADN                            R3 0
       92 SETTABLEKS                       R3 R2 K44 ["_executionRefreshCount"]
       94 LOADN                            R3 0
       95 SETTABLEKS                       R3 R2 K45 ["_rootRenderCount"]
       97 LOADNIL                          R3
       98 SETTABLEKS                       R3 R2 K46 ["_warmReloadDuration"]
      100 NEWTABLE                         R3 0 0
      102 SETTABLEKS                       R3 R2 K47 ["_lastSuccessfulWatchModules"]
      104 NEWTABLE                         R3 0 0
      106 SETTABLEKS                       R3 R2 K48 ["_latestAttemptedWatchModules"]
      108 LOADNIL                          R3
      109 SETTABLEKS                       R3 R2 K49 ["_currentStoryFn"]
      111 LOADNIL                          R3
      112 SETTABLEKS                       R3 R2 K50 ["_currentSourceMap"]
      114 LOADNIL                          R3
      115 SETTABLEKS                       R3 R2 K51 ["_currentElement"]
      117 LOADNIL                          R3
      118 SETTABLEKS                       R3 R2 K52 ["_currentFoundationPackage"]
      120 LOADK                            R3 K53 ["implicit"]
      121 SETTABLEKS                       R3 R2 K54 ["_currentProviderMode"]
      123 LOADNIL                          R3
      124 SETTABLEKS                       R3 R2 K55 ["_currentOrigin"]
      126 LOADNIL                          R3
      127 SETTABLEKS                       R3 R2 K56 ["_currentDependencies"]
      129 LOADNIL                          R3
      130 SETTABLEKS                       R3 R2 K57 ["_currentSourceHashes"]
      132 LOADNIL                          R3
      133 SETTABLEKS                       R3 R2 K58 ["_currentDefinition"]
      135 LOADNIL                          R3
      136 SETTABLEKS                       R3 R2 K59 ["_currentHarnessModulePath"]
      138 LOADNIL                          R3
      139 SETTABLEKS                       R3 R2 K60 ["_currentPackageProvenance"]
      141 LOADNIL                          R3
      142 SETTABLEKS                       R3 R2 K61 ["_currentStoryName"]
      144 LOADNIL                          R3
      145 SETTABLEKS                       R3 R2 K62 ["_currentModuleScript"]
      147 LOADB                            R3 0
      148 SETTABLEKS                       R3 R2 K63 ["_currentUsesStoryProps"]
      150 LOADNIL                          R3
      151 SETTABLEKS                       R3 R2 K64 ["_currentVariants"]
      153 LOADNIL                          R3
      154 SETTABLEKS                       R3 R2 K65 ["_currentVariantId"]
      156 LOADNIL                          R3
      157 SETTABLEKS                       R3 R2 K66 ["_currentStoryIdentity"]
      159 LOADNIL                          R3
      160 SETTABLEKS                       R3 R2 K67 ["_currentControlSchema"]
      162 NEWTABLE                         R3 0 0
      164 SETTABLEKS                       R3 R2 K68 ["_currentControlValues"]
      166 GETUPVAL                         R3 0
      167 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
      169 GETIMPORT                        R1 K70 [setmetatable]
      171 CALL                             R1 2 1
      172 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_currentSourceMap"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETTABLEKS                       R1 R0 K0 ["_currentSourceMap"]
        5 NAMECALL                         R1 R1 K1 ["getSource"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 LENGTH                           R2 R1
       10 LOADN                            R3 0
       11 JUMPIFNOTLT                      R3 R2 ; [+2]
       13 RETURN                           R1 1
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_currentSourceMap"]
        2 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R1 K8 [{"providerMode", "harnessModulePath", "packageProvenance", "variantId", "storyIdentity", "origin", "dependencies", "sourceHashes"}]
        1 GETTABLEKS                       R2 R0 K9 ["_currentProviderMode"]
        3 SETTABLEKS                       R2 R1 K0 ["providerMode"]
        5 GETTABLEKS                       R2 R0 K10 ["_currentHarnessModulePath"]
        7 SETTABLEKS                       R2 R1 K1 ["harnessModulePath"]
        9 GETTABLEKS                       R2 R0 K11 ["_currentPackageProvenance"]
       11 SETTABLEKS                       R2 R1 K2 ["packageProvenance"]
       13 GETTABLEKS                       R2 R0 K12 ["_currentVariantId"]
       15 SETTABLEKS                       R2 R1 K3 ["variantId"]
       17 GETTABLEKS                       R2 R0 K13 ["_currentStoryIdentity"]
       19 SETTABLEKS                       R2 R1 K4 ["storyIdentity"]
       21 GETTABLEKS                       R2 R0 K14 ["_currentOrigin"]
       23 SETTABLEKS                       R2 R1 K5 ["origin"]
       25 GETTABLEKS                       R2 R0 K15 ["_currentDependencies"]
       27 SETTABLEKS                       R2 R1 K6 ["dependencies"]
       29 GETTABLEKS                       R2 R0 K16 ["_currentSourceHashes"]
       31 SETTABLEKS                       R2 R1 K7 ["sourceHashes"]
       33 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_executionSession"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_executionSession"]
        5 NAMECALL                         R1 R1 K1 ["getMetrics"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 DUPTABLE                         R1 K10 [{["ownedTaskCount"] = 0, ["ownedConnectionCount"] = 0, ["ownedRootCount"] = 0, ["ownedTemporaryCount"] = 0, ["createdTaskCount"] = 0, ["cleaned"] = True}]
       10 GETTABLEKS                       R3 R0 K11 ["_bindStartedAt"]
       12 JUMPIFNOT                        R3 ; [+9]
       13 GETTABLEKS                       R3 R0 K12 ["_previewCommittedAt"]
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETTABLEKS                       R3 R0 K12 ["_previewCommittedAt"]
       18 GETTABLEKS                       R4 R0 K11 ["_bindStartedAt"]
       20 SUB                              R2 R3 R4
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 LOADB                            R3 0
       24 JUMPIFEQKNIL                     R2 ; [+6]
       26 LOADN                            R4 2
       27 JUMPIFLT                         R4 R2 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 LOADB                            R4 0
       32 GETTABLEKS                       R5 R0 K13 ["_warmReloadDuration"]
       34 JUMPIFEQKNIL                     R5 ; [+8]
       36 GETTABLEKS                       R5 R0 K13 ["_warmReloadDuration"]
       38 LOADK                            R6 K14 [0.5]
       39 JUMPIFLT                         R6 R5 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 DUPTABLE                         R5 K24 [{"bindStartedAt", "previewCommittedAt", "coldBindDuration", "coldBindBudgetExceeded", "warmReloadDuration", "warmReloadBudgetExceeded", "performanceWarning", "executionRefreshCount", "rootRenderCount", "ownedTaskCount", "ownedConnectionCount", "ownedRootCount", "ownedTemporaryCount", "createdTaskCount"}]
       44 GETTABLEKS                       R6 R0 K11 ["_bindStartedAt"]
       46 SETTABLEKS                       R6 R5 K15 ["bindStartedAt"]
       48 GETTABLEKS                       R6 R0 K12 ["_previewCommittedAt"]
       50 SETTABLEKS                       R6 R5 K16 ["previewCommittedAt"]
       52 SETTABLEKS                       R2 R5 K17 ["coldBindDuration"]
       54 SETTABLEKS                       R3 R5 K18 ["coldBindBudgetExceeded"]
       56 GETTABLEKS                       R6 R0 K13 ["_warmReloadDuration"]
       58 SETTABLEKS                       R6 R5 K19 ["warmReloadDuration"]
       60 SETTABLEKS                       R4 R5 K20 ["warmReloadBudgetExceeded"]
       62 JUMPIFNOT                        R4 ; [+2]
       63 DUPTABLE                         R6 K29 [{["code"] = "resource-limit-exceeded", ["message"] = "Committed preview exceeded the 500 ms warm-reload budget"}]
       64 JUMP                             ; [+4]
       65 JUMPIFNOT                        R3 ; [+2]
       66 DUPTABLE                         R6 K31 [{["code"] = "resource-limit-exceeded", ["message"] = "Committed preview exceeded the two-second cold-bind budget"}]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R5 K21 ["performanceWarning"]
       71 GETTABLEKS                       R6 R0 K32 ["_executionRefreshCount"]
       73 SETTABLEKS                       R6 R5 K22 ["executionRefreshCount"]
       75 GETTABLEKS                       R6 R0 K33 ["_rootRenderCount"]
       77 SETTABLEKS                       R6 R5 K23 ["rootRenderCount"]
       79 GETTABLEKS                       R6 R1 K2 ["ownedTaskCount"]
       81 SETTABLEKS                       R6 R5 K2 ["ownedTaskCount"]
       83 GETTABLEKS                       R6 R1 K4 ["ownedConnectionCount"]
       85 SETTABLEKS                       R6 R5 K4 ["ownedConnectionCount"]
       87 GETTABLEKS                       R6 R1 K5 ["ownedRootCount"]
       89 SETTABLEKS                       R6 R5 K5 ["ownedRootCount"]
       91 GETTABLEKS                       R6 R1 K6 ["ownedTemporaryCount"]
       93 SETTABLEKS                       R6 R5 K6 ["ownedTemporaryCount"]
       95 GETTABLEKS                       R6 R1 K7 ["createdTaskCount"]
       97 SETTABLEKS                       R6 R5 K7 ["createdTaskCount"]
       99 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_Executor"]
        3 GETTABLEKS                       R0 R0 K1 ["executeModule"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 JUMPIF                           R1 ; [+4]
        1 DUPTABLE                         R3 K5 [{[1] = False, ["error"] = "Story Contract execution requires a bound ModuleScript", ["name"]}]
        2 SETTABLEKS                       R2 R3 K4 ["name"]
        4 RETURN                           R3 1
        5 GETIMPORT                        R3 K7 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 2
       11 JUMPIFNOT                        R3 ; [+1]
       12 RETURN                           R4 1
       13 DUPTABLE                         R5 K8 [{[1] = False, ["error"], ["name"]}]
       14 FASTCALL1                        TOSTRING R4 ; [+3]
       15 MOVE                             R7 R4
       16 GETIMPORT                        R6 K10 [tostring]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K2 ["error"]
       21 SETTABLEKS                       R2 R5 K4 ["name"]
       23 RETURN                           R5 1

PROTO_11:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 SETTABLEKS                       R2 R1 K0 ["_currentElement"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 3
        8 SETTABLEKS                       R2 R1 K1 ["_currentSourceMap"]
       10 GETUPVAL                         R1 1
       11 FASTCALL1                        TYPE R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K3 [type]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+12]
       18 GETTABLEKS                       R4 R0 K5 ["message"]
       20 FASTCALL1                        TYPE R4 ; [+2]
       21 GETIMPORT                        R3 K3 [type]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+4]
       26 GETTABLEKS                       R2 R0 K5 ["message"]
       28 JUMP                             ; [+5]
       29 FASTCALL1                        TOSTRING R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K8 [tostring]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R3 R1 K9 ["_canvas"]
       36 LOADK                            R6 K10 ["Last good preview is still shown. Fix the source or undo the edit, then the canvas will update automatically."]
       37 LOADK                            R7 K11 ["\n\n"]
       38 LOADK                            R8 K12 ["Render error"]
       39 LOADK                            R9 K13 [":\n"]
       40 MOVE                             R10 R2
       41 CONCAT                           R5 R6 R10
       42 NAMECALL                         R3 R3 K14 ["setError"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["createPortal"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 CALL                             R2 2 -1
        9 NAMECALL                         R0 R0 K2 ["render"]
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_RunService"]
        3 GETTABLEKS                       R0 R0 K1 ["Heartbeat"]
        5 NAMECALL                         R0 R0 K2 ["Wait"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["_renderVersion"]
       11 GETUPVAL                         R1 1
       12 JUMPIFEQ                         R0 R1 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K4 ["_currentSourceMap"]
       18 JUMPIFNOT                        R0 ; [+6]
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K4 ["_currentSourceMap"]
       22 NAMECALL                         R0 R0 K5 ["resolveKeysFromSource"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_React"]
        2 GETTABLEKS                       R3 R0 K1 ["_ReactRoblox"]
        4 GETTABLEKS                       R4 R0 K2 ["_AppFrameworkPkg"]
        6 GETTABLEKS                       R5 R0 K3 ["_previewMountFrame"]
        8 MOVE                             R6 R1
        9 GETTABLEKS                       R7 R0 K4 ["_currentElement"]
       11 GETTABLEKS                       R8 R0 K5 ["_currentSourceMap"]
       13 LOADB                            R9 0
       14 GETTABLEKS                       R10 R0 K6 ["_renderVersion"]
       16 ADDK                             R10 R10 K7 [1]
       17 SETTABLEKS                       R10 R0 K6 ["_renderVersion"]
       19 GETTABLEKS                       R10 R0 K6 ["_renderVersion"]
       21 NEWCLOSURE                       R11 P0
       22 CAPTURE                          REF R9
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R8
       26 GETTABLEKS                       R12 R0 K8 ["_currentFoundationPackage"]
       28 JUMPIF                           R12 ; [+2]
       29 GETTABLEKS                       R12 R0 K9 ["_Foundation"]
       31 GETTABLEKS                       R13 R0 K10 ["_currentProviderMode"]
       33 JUMPIFEQKS                       R13 K11 ["explicit"] ; [+88]
       35 JUMPIFNOT                        R12 ; [+86]
       36 GETTABLEKS                       R13 R12 K12 ["FoundationProvider"]
       38 JUMPIFNOT                        R13 ; [+83]
       39 GETTABLEKS                       R13 R2 K13 ["createElement"]
       41 GETTABLEKS                       R14 R12 K12 ["FoundationProvider"]
       43 DUPTABLE                         R15 K19 [{"theme", "device", "responsiveConfig", "plugin", "overlayGui"}]
       44 GETTABLEKS                       R17 R0 K20 ["_canvas"]
       46 GETTABLEKS                       R18 R0 K9 ["_Foundation"]
       48 OR                               R19 R12 R18
       49 MOVE                             R20 R17
       50 JUMPIFNOT                        R20 ; [+3]
       51 NAMECALL                         R20 R17 K21 ["getThemeOverride"]
       53 CALL                             R20 1 1
       54 JUMPIFNOTEQKS                    R20 K22 ["light"] ; [+12]
       56 JUMPIFNOT                        R19 ; [+10]
       57 GETTABLEKS                       R21 R19 K23 ["Enums"]
       59 JUMPIFNOT                        R21 ; [+7]
       60 GETTABLEKS                       R16 R19 K23 ["Enums"]
       62 GETTABLEKS                       R16 R16 K24 ["Theme"]
       64 GETTABLEKS                       R16 R16 K25 ["Light"]
       66 JUMP                             ; [+19]
       67 JUMPIFNOTEQKS                    R20 K26 ["dark"] ; [+12]
       69 JUMPIFNOT                        R19 ; [+10]
       70 GETTABLEKS                       R21 R19 K23 ["Enums"]
       72 JUMPIFNOT                        R21 ; [+7]
       73 GETTABLEKS                       R16 R19 K23 ["Enums"]
       75 GETTABLEKS                       R16 R16 K24 ["Theme"]
       77 GETTABLEKS                       R16 R16 K27 ["Dark"]
       79 JUMP                             ; [+6]
       80 GETUPVAL                         R21 0
       81 GETTABLEKS                       R21 R21 K28 ["getStudioFoundationTheme"]
       83 MOVE                             R22 R19
       84 CALL                             R21 1 1
       85 MOVE                             R16 R21
       86 SETTABLEKS                       R16 R15 K14 ["theme"]
       88 GETTABLEKS                       R16 R12 K23 ["Enums"]
       90 GETTABLEKS                       R16 R16 K29 ["Device"]
       92 GETTABLEKS                       R16 R16 K30 ["Desktop"]
       94 SETTABLEKS                       R16 R15 K15 ["device"]
       96 JUMPIFNOT                        R4 ; [+9]
       97 GETTABLEKS                       R17 R4 K31 ["DeviceProfiles"]
       99 JUMPIFNOT                        R17 ; [+6]
      100 GETTABLEKS                       R16 R4 K31 ["DeviceProfiles"]
      102 GETTABLEKS                       R16 R16 K32 ["getResponsiveConfig"]
      104 CALL                             R16 0 1
      105 JUMP                             ; [+1]
      106 LOADNIL                          R16
      107 SETTABLEKS                       R16 R15 K16 ["responsiveConfig"]
      109 GETTABLEKS                       R16 R0 K33 ["_plugin"]
      111 SETTABLEKS                       R16 R15 K17 ["plugin"]
      113 GETTABLEKS                       R16 R0 K34 ["_widget"]
      115 SETTABLEKS                       R16 R15 K18 ["overlayGui"]
      117 DUPTABLE                         R16 K36 [{"Preview"}]
      118 SETTABLEKS                       R1 R16 K35 ["Preview"]
      120 CALL                             R13 3 1
      121 MOVE                             R1 R13
      122 GETTABLEKS                       R13 R0 K10 ["_currentProviderMode"]
      124 JUMPIFEQKS                       R13 K11 ["explicit"] ; [+31]
      126 JUMPIFNOT                        R4 ; [+29]
      127 GETTABLEKS                       R13 R4 K37 ["DeviceProfileProvider"]
      129 JUMPIFNOT                        R13 ; [+26]
      130 GETTABLEKS                       R13 R2 K13 ["createElement"]
      132 GETTABLEKS                       R14 R4 K37 ["DeviceProfileProvider"]
      134 DUPTABLE                         R15 K41 [{"profile", "useInsets", "canvasInstance"}]
      135 GETTABLEKS                       R16 R0 K20 ["_canvas"]
      137 NAMECALL                         R16 R16 K42 ["getDeviceProfile"]
      139 CALL                             R16 1 1
      140 SETTABLEKS                       R16 R15 K38 ["profile"]
      142 GETTABLEKS                       R16 R0 K20 ["_canvas"]
      144 NAMECALL                         R16 R16 K43 ["getUseInsets"]
      146 CALL                             R16 1 1
      147 SETTABLEKS                       R16 R15 K39 ["useInsets"]
      149 SETTABLEKS                       R5 R15 K40 ["canvasInstance"]
      151 DUPTABLE                         R16 K45 [{"Inner"}]
      152 SETTABLEKS                       R1 R16 K44 ["Inner"]
      154 CALL                             R13 3 1
      155 MOVE                             R1 R13
      156 GETTABLEKS                       R13 R2 K13 ["createElement"]
      158 LOADK                            R14 K46 ["Frame"]
      159 DUPTABLE                         R15 K51 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      160 GETIMPORT                        R16 K54 [UDim2.fromScale]
      162 LOADN                            R17 1
      163 LOADN                            R18 1
      164 CALL                             R16 2 1
      165 SETTABLEKS                       R16 R15 K47 ["Size"]
      167 DUPTABLE                         R16 K56 [{"Content"}]
      168 GETTABLEKS                       R17 R2 K13 ["createElement"]
      170 GETTABLEKS                       R18 R0 K57 ["_ErrorBoundary"]
      172 DUPTABLE                         R19 K61 [{"onError", "fallbackElement", "renderVersion"}]
      173 SETTABLEKS                       R11 R19 K58 ["onError"]
      175 SETTABLEKS                       R7 R19 K59 ["fallbackElement"]
      177 SETTABLEKS                       R10 R19 K60 ["renderVersion"]
      179 DUPTABLE                         R20 K45 [{"Inner"}]
      180 SETTABLEKS                       R1 R20 K44 ["Inner"]
      182 CALL                             R17 3 1
      183 SETTABLEKS                       R17 R16 K55 ["Content"]
      185 CALL                             R13 3 1
      186 GETTABLEKS                       R14 R3 K62 ["flushSync"]
      188 NEWCLOSURE                       R15 P1
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R5
      193 CALL                             R14 1 0
      194 JUMPIF                           R9 ; [+12]
      195 SETTABLEKS                       R6 R0 K4 ["_currentElement"]
      197 GETTABLEKS                       R14 R0 K63 ["_rootRenderCount"]
      199 ADDK                             R14 R14 K7 [1]
      200 SETTABLEKS                       R14 R0 K63 ["_rootRenderCount"]
      202 GETTABLEKS                       R14 R0 K64 ["_now"]
      204 CALL                             R14 0 1
      205 SETTABLEKS                       R14 R0 K65 ["_previewCommittedAt"]
      207 GETIMPORT                        R14 K68 [task.spawn]
      209 NEWCLOSURE                       R15 P2
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R10
      212 CALL                             R14 1 0
      213 NOT                              R14 R9
      214 CLOSEUPVALS                      R9
      215 RETURN                           R14 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_currentControlSchema"]
        2 GETTABLEKS                       R3 R0 K1 ["_currentUsesStoryProps"]
        4 JUMPIFNOT                        R3 ; [+8]
        5 JUMPIFNOT                        R2 ; [+7]
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R3 K3 [type]
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K4 ["table"] ; [+3]
       13 LOADB                            R3 0
       14 RETURN                           R3 1
       15 NEWTABLE                         R3 0 0
       17 MOVE                             R4 R1
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLEKS                       R10 R2 K5 ["byId"]
       23 GETTABLE                         R9 R10 R7
       24 JUMPIF                           R9 ; [+2]
       25 LOADB                            R10 0
       26 RETURN                           R10 1
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K6 ["coerceIncomingValue"]
       30 MOVE                             R11 R9
       31 MOVE                             R12 R8
       32 CALL                             R10 2 1
       33 SETTABLE                         R10 R3 R7
       34 FORGLOOP                         R4 2 ; [-14]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K7 ["validateControlChanges"]
       39 MOVE                             R5 R2
       40 MOVE                             R6 R3
       41 CALL                             R4 2 1
       42 JUMPIF                           R4 ; [+2]
       43 LOADB                            R5 0
       44 RETURN                           R5 1
       45 GETTABLEKS                       R5 R0 K8 ["_currentControlValues"]
       47 GETIMPORT                        R6 K10 [table.clone]
       49 MOVE                             R7 R5
       50 CALL                             R6 1 1
       51 MOVE                             R7 R3
       52 LOADNIL                          R8
       53 LOADNIL                          R9
       54 FORGPREP                         R7
       55 SETTABLE                         R11 R6 R10
       56 FORGLOOP                         R7 2 ; [-2]
       58 SETTABLEKS                       R6 R0 K8 ["_currentControlValues"]
       60 GETTABLEKS                       R7 R0 K11 ["_controls"]
       62 MOVE                             R9 R6
       63 NAMECALL                         R7 R7 K12 ["setContractValues"]
       65 CALL                             R7 2 0
       66 NAMECALL                         R7 R0 K13 ["reRenderControlledStory"]
       68 CALL                             R7 1 1
       69 JUMPIF                           R7 ; [+8]
       70 SETTABLEKS                       R5 R0 K8 ["_currentControlValues"]
       72 GETTABLEKS                       R8 R0 K11 ["_controls"]
       74 MOVE                             R10 R5
       75 NAMECALL                         R8 R8 K12 ["setContractValues"]
       77 CALL                             R8 2 0
       78 RETURN                           R7 1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_currentUsesStoryProps"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K1 ["_currentVariants"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K1 ["_currentVariants"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K2 ["id"]
       16 JUMPIFNOTEQ                      R8 R1 ; [+3]
       18 MOVE                             R2 R7
       19 JUMP                             ; [+2]
       20 FORGLOOP                         R3 2 ; [-7]
       22 JUMPIF                           R2 ; [+2]
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 GETTABLEKS                       R3 R0 K3 ["_currentVariantId"]
       27 JUMPIFNOTEQ                      R1 R3 ; [+3]
       29 LOADB                            R3 1
       30 RETURN                           R3 1
       31 GETTABLEKS                       R3 R0 K3 ["_currentVariantId"]
       33 GETTABLEKS                       R4 R0 K4 ["_currentStoryFn"]
       35 SETTABLEKS                       R1 R0 K3 ["_currentVariantId"]
       37 GETTABLEKS                       R5 R2 K5 ["component"]
       39 SETTABLEKS                       R5 R0 K4 ["_currentStoryFn"]
       41 GETTABLEKS                       R5 R0 K6 ["_controls"]
       43 MOVE                             R7 R1
       44 NAMECALL                         R5 R5 K7 ["setSelectedVariant"]
       46 CALL                             R5 2 0
       47 NAMECALL                         R5 R0 K8 ["reRenderControlledStory"]
       49 CALL                             R5 1 1
       50 JUMPIF                           R5 ; [+11]
       51 SETTABLEKS                       R3 R0 K3 ["_currentVariantId"]
       53 SETTABLEKS                       R4 R0 K4 ["_currentStoryFn"]
       55 JUMPIFNOT                        R3 ; [+6]
       56 GETTABLEKS                       R6 R0 K6 ["_controls"]
       58 MOVE                             R8 R3
       59 NAMECALL                         R6 R6 K7 ["setSelectedVariant"]
       61 CALL                             R6 2 0
       62 RETURN                           R5 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["applyControlChanges"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_currentStoryFn"]
        2 JUMPIFNOT                        R1 ; [+142]
        3 GETTABLEKS                       R1 R0 K1 ["_controls"]
        5 NAMECALL                         R1 R1 K2 ["getValues"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["_currentUsesStoryProps"]
       10 JUMPIFNOT                        R2 ; [+75]
       11 GETTABLEKS                       R2 R0 K4 ["_canvas"]
       13 NAMECALL                         R2 R2 K5 ["getDeviceProfile"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETTABLEKS                       R3 R2 K6 ["breakpoint"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 JUMPIFNOTEQKS                    R3 K7 ["Mobile"] ; [+3]
       23 LOADK                            R4 K8 ["Phone"]
       24 JUMP                             ; [+9]
       25 JUMPIFNOTEQKS                    R3 K9 ["Tablet"] ; [+3]
       27 LOADK                            R4 K9 ["Tablet"]
       28 JUMP                             ; [+5]
       29 JUMPIFNOTEQKS                    R3 K10 ["Console"] ; [+3]
       31 LOADK                            R4 K10 ["Console"]
       32 JUMP                             ; [+1]
       33 LOADK                            R4 K11 ["Desktop"]
       34 GETIMPORT                        R5 K14 [table.clone]
       36 GETTABLEKS                       R6 R0 K15 ["_currentControlValues"]
       38 CALL                             R5 1 1
       39 DUPTABLE                         R6 K24 [{"controls", "setControls", "theme", "platform", "settings", "host", "focus", "definition"}]
       40 SETTABLEKS                       R5 R6 K16 ["controls"]
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R7 R6 K17 ["setControls"]
       46 GETTABLEKS                       R8 R0 K4 ["_canvas"]
       48 NAMECALL                         R8 R8 K25 ["getThemeOverride"]
       50 CALL                             R8 1 1
       51 JUMPIFNOTEQKS                    R8 K26 ["light"] ; [+3]
       53 LOADK                            R7 K27 ["Light"]
       54 JUMP                             ; [+1]
       55 LOADK                            R7 K28 ["Dark"]
       56 SETTABLEKS                       R7 R6 K18 ["theme"]
       58 SETTABLEKS                       R4 R6 K19 ["platform"]
       60 DUPTABLE                         R7 K35 [{["reducedMotion"] = False, ["preferredTransparency"] = 1, ["preferredTextSize"], ["scale"] = 1}]
       61 GETIMPORT                        R8 K37 [game]
       63 LOADK                            R10 K38 ["GuiService"]
       64 NAMECALL                         R8 R8 K39 ["GetService"]
       66 CALL                             R8 2 1
       67 GETTABLEKS                       R8 R8 K40 ["PreferredTextSize"]
       69 SETTABLEKS                       R8 R7 K33 ["preferredTextSize"]
       71 SETTABLEKS                       R7 R6 K20 ["settings"]
       73 GETTABLEKS                       R7 R0 K41 ["_previewMountFrame"]
       75 SETTABLEKS                       R7 R6 K21 ["host"]
       77 GETTABLEKS                       R7 R0 K42 ["_widget"]
       79 SETTABLEKS                       R7 R6 K22 ["focus"]
       81 GETTABLEKS                       R7 R0 K43 ["_currentDefinition"]
       83 SETTABLEKS                       R7 R6 K23 ["definition"]
       85 MOVE                             R1 R6
       86 GETIMPORT                        R2 K45 [pcall]
       88 GETTABLEKS                       R3 R0 K46 ["_React"]
       90 GETTABLEKS                       R3 R3 K47 ["createElement"]
       92 GETTABLEKS                       R4 R0 K0 ["_currentStoryFn"]
       94 MOVE                             R5 R1
       95 CALL                             R2 3 2
       96 JUMPIFNOT                        R2 ; [+12]
       97 GETUPVAL                         R4 0
       98 MOVE                             R5 R0
       99 MOVE                             R6 R3
      100 CALL                             R4 2 1
      101 JUMPIFNOT                        R4 ; [+6]
      102 GETTABLEKS                       R5 R0 K4 ["_canvas"]
      104 LOADNIL                          R7
      105 NAMECALL                         R5 R5 K48 ["setError"]
      107 CALL                             R5 2 0
      108 RETURN                           R4 1
      109 FASTCALL1                        TYPE R3 ; [+3]
      110 MOVE                             R6 R3
      111 GETIMPORT                        R5 K50 [type]
      113 CALL                             R5 1 1
      114 JUMPIFNOTEQKS                    R5 K12 ["table"] ; [+12]
      116 GETTABLEKS                       R6 R3 K51 ["message"]
      118 FASTCALL1                        TYPE R6 ; [+2]
      119 GETIMPORT                        R5 K50 [type]
      121 CALL                             R5 1 1
      122 JUMPIFNOTEQKS                    R5 K52 ["string"] ; [+4]
      124 GETTABLEKS                       R4 R3 K51 ["message"]
      126 JUMP                             ; [+5]
      127 FASTCALL1                        TOSTRING R3 ; [+3]
      128 MOVE                             R5 R3
      129 GETIMPORT                        R4 K54 [tostring]
      131 CALL                             R4 1 1
      132 GETTABLEKS                       R5 R0 K4 ["_canvas"]
      134 LOADK                            R8 K55 ["Last good preview is still shown. Fix the source or undo the edit, then the canvas will update automatically."]
      135 LOADK                            R9 K56 ["\n\n"]
      136 LOADK                            R10 K57 ["Story function error"]
      137 LOADK                            R11 K58 [":\n"]
      138 MOVE                             R12 R4
      139 CONCAT                           R7 R8 R12
      140 NAMECALL                         R5 R5 K48 ["setError"]
      142 CALL                             R5 2 0
      143 LOADB                            R4 0
      144 RETURN                           R4 1
      145 LOADB                            R1 1
      146 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_currentStoryFn"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NAMECALL                         R1 R0 K1 ["reRenderControlledStory"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["_currentElement"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 GETTABLEKS                       R3 R0 K2 ["_currentElement"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_renderVersion"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_renderVersion"]
        5 GETTABLEKS                       R1 R0 K2 ["_root"]
        7 LOADNIL                          R3
        8 NAMECALL                         R1 R1 K3 ["render"]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K4 ["_executionSession"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K4 ["_executionSession"]
       16 NAMECALL                         R1 R1 K5 ["cleanup"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K4 ["_executionSession"]
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K6 ["_bindStartedAt"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K7 ["_previewCommittedAt"]
       28 LOADN                            R1 0
       29 SETTABLEKS                       R1 R0 K8 ["_executionRefreshCount"]
       31 LOADN                            R1 0
       32 SETTABLEKS                       R1 R0 K9 ["_rootRenderCount"]
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K10 ["_warmReloadDuration"]
       37 NEWTABLE                         R1 0 0
       39 SETTABLEKS                       R1 R0 K11 ["_lastSuccessfulWatchModules"]
       41 NEWTABLE                         R1 0 0
       43 SETTABLEKS                       R1 R0 K12 ["_latestAttemptedWatchModules"]
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K13 ["_currentStoryFn"]
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K14 ["_currentSourceMap"]
       51 LOADNIL                          R1
       52 SETTABLEKS                       R1 R0 K15 ["_currentElement"]
       54 LOADNIL                          R1
       55 SETTABLEKS                       R1 R0 K16 ["_currentFoundationPackage"]
       57 LOADK                            R1 K17 ["implicit"]
       58 SETTABLEKS                       R1 R0 K18 ["_currentProviderMode"]
       60 LOADNIL                          R1
       61 SETTABLEKS                       R1 R0 K19 ["_currentOrigin"]
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K20 ["_currentDependencies"]
       66 LOADNIL                          R1
       67 SETTABLEKS                       R1 R0 K21 ["_currentSourceHashes"]
       69 LOADNIL                          R1
       70 SETTABLEKS                       R1 R0 K22 ["_currentDefinition"]
       72 LOADNIL                          R1
       73 SETTABLEKS                       R1 R0 K23 ["_currentHarnessModulePath"]
       75 LOADNIL                          R1
       76 SETTABLEKS                       R1 R0 K24 ["_currentPackageProvenance"]
       78 LOADNIL                          R1
       79 SETTABLEKS                       R1 R0 K25 ["_currentStoryName"]
       81 LOADNIL                          R1
       82 SETTABLEKS                       R1 R0 K26 ["_currentModuleScript"]
       84 LOADB                            R1 0
       85 SETTABLEKS                       R1 R0 K27 ["_currentUsesStoryProps"]
       87 LOADNIL                          R1
       88 SETTABLEKS                       R1 R0 K28 ["_currentVariants"]
       90 LOADNIL                          R1
       91 SETTABLEKS                       R1 R0 K29 ["_currentVariantId"]
       93 LOADNIL                          R1
       94 SETTABLEKS                       R1 R0 K30 ["_currentStoryIdentity"]
       96 LOADNIL                          R1
       97 SETTABLEKS                       R1 R0 K31 ["_currentControlSchema"]
       99 NEWTABLE                         R1 0 0
      101 SETTABLEKS                       R1 R0 K32 ["_currentControlValues"]
      103 GETTABLEKS                       R1 R0 K33 ["_Executor"]
      105 GETTABLEKS                       R1 R1 K34 ["clearStableWrappers"]
      107 CALL                             R1 0 0
      108 GETTABLEKS                       R1 R0 K35 ["_controls"]
      110 NAMECALL                         R1 R1 K36 ["clear"]
      112 CALL                             R1 1 0
      113 GETTABLEKS                       R1 R0 K37 ["_canvas"]
      115 LOADK                            R3 K38 ["-- Select a ModuleScript in Explorer to begin."]
      116 NAMECALL                         R1 R1 K39 ["setCodeSource"]
      118 CALL                             R1 2 0
      119 GETTABLEKS                       R1 R0 K37 ["_canvas"]
      121 LOADNIL                          R3
      122 NAMECALL                         R1 R1 K40 ["setError"]
      124 CALL                             R1 2 0
      125 GETTABLEKS                       R1 R0 K37 ["_canvas"]
      127 LOADB                            R3 0
      128 NAMECALL                         R1 R1 K41 ["setControlsVisible"]
      130 CALL                             R1 2 0
      131 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_currentElement"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 [" could not load. The previous preview is still shown. Fix the source, then the canvas will update automatically."]
        5 CONCAT                           R2 R3 R4
        6 RETURN                           R2 1
        7 MOVE                             R3 R1
        8 LOADK                            R4 K2 [" could not load. Fix the source, then the canvas will update automatically."]
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["selectVariant"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R4 R0 K0 ["_getLiveModule"]
        2 CALL                             R4 0 1
        3 GETTABLEKS                       R6 R0 K1 ["_currentModuleScript"]
        5 JUMPIFNOTEQ                      R2 R6 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 JUMPIFNOT                        R5 ; [+4]
       10 GETTABLEKS                       R6 R0 K2 ["_now"]
       12 CALL                             R6 0 1
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R6 R0 K3 ["_bindStartedAt"]
       16 JUMPIFNOT                        R5 ; [+2]
       17 LOADN                            R7 1
       18 JUMP                             ; [+3]
       19 GETTABLEKS                       R8 R0 K5 ["_executionRefreshCount"]
       21 ADDK                             R7 R8 K4 [1]
       22 GETTABLEKS                       R8 R0 K6 ["_currentSourceMap"]
       24 GETTABLEKS                       R9 R0 K7 ["_currentFoundationPackage"]
       26 GETTABLEKS                       R10 R0 K8 ["_currentProviderMode"]
       28 GETTABLEKS                       R11 R0 K9 ["_currentOrigin"]
       30 GETTABLEKS                       R12 R0 K10 ["_currentDependencies"]
       32 GETTABLEKS                       R13 R0 K11 ["_currentSourceHashes"]
       34 GETTABLEKS                       R14 R0 K12 ["_currentDefinition"]
       36 GETTABLEKS                       R15 R0 K13 ["_currentHarnessModulePath"]
       38 GETTABLEKS                       R16 R0 K14 ["_currentPackageProvenance"]
       40 GETTABLEKS                       R17 R0 K15 ["_currentStoryFn"]
       42 GETTABLEKS                       R18 R0 K16 ["_currentUsesStoryProps"]
       44 GETTABLEKS                       R19 R0 K17 ["_currentVariants"]
       46 GETTABLEKS                       R20 R0 K18 ["_currentVariantId"]
       48 GETTABLEKS                       R21 R0 K19 ["_currentStoryIdentity"]
       50 GETTABLEKS                       R22 R0 K20 ["_currentControlSchema"]
       52 GETTABLEKS                       R23 R0 K21 ["_currentControlValues"]
       54 GETTABLEKS                       R24 R0 K22 ["_executionSession"]
       56 GETTABLEKS                       R25 R0 K2 ["_now"]
       58 CALL                             R25 0 1
       59 GETUPVAL                         R26 0
       60 MOVE                             R27 R0
       61 MOVE                             R28 R2
       62 MOVE                             R29 R1
       63 CALL                             R26 3 1
       64 GETUPVAL                         R27 1
       65 MOVE                             R28 R0
       66 MOVE                             R29 R4
       67 MOVE                             R30 R26
       68 MOVE                             R31 R5
       69 CALL                             R27 4 0
       70 GETTABLEKS                       R27 R26 K23 ["success"]
       72 JUMPIF                           R27 ; [+53]
       73 GETTABLEKS                       R27 R26 K24 ["diagnostic"]
       75 JUMPIF                           R27 ; [+2]
       76 GETTABLEKS                       R27 R26 K25 ["error"]
       78 GETTABLEKS                       R28 R3 K26 ["failureContext"]
       80 JUMPIFNOT                        R28 ; [+6]
       81 GETIMPORT                        R28 K28 [warn]
       83 LOADK                            R29 K29 ["[DesignAssist] Execution error:"]
       84 GETTABLEKS                       R30 R26 K25 ["error"]
       86 CALL                             R28 2 0
       87 GETTABLEKS                       R28 R3 K26 ["failureContext"]
       89 ORK                              R29 R28 K30 ["Last good preview is still shown. Fix the source or undo the edit, then the canvas will update automatically."]
       90 FASTCALL1                        TYPE R27 ; [+3]
       91 MOVE                             R32 R27
       92 GETIMPORT                        R31 K32 [type]
       94 CALL                             R31 1 1
       95 JUMPIFNOTEQKS                    R31 K33 ["table"] ; [+12]
       97 GETTABLEKS                       R32 R27 K34 ["message"]
       99 FASTCALL1                        TYPE R32 ; [+2]
      100 GETIMPORT                        R31 K32 [type]
      102 CALL                             R31 1 1
      103 JUMPIFNOTEQKS                    R31 K35 ["string"] ; [+4]
      105 GETTABLEKS                       R30 R27 K34 ["message"]
      107 JUMP                             ; [+5]
      108 FASTCALL1                        TOSTRING R27 ; [+3]
      109 MOVE                             R31 R27
      110 GETIMPORT                        R30 K37 [tostring]
      112 CALL                             R30 1 1
      113 GETTABLEKS                       R31 R0 K38 ["_canvas"]
      115 MOVE                             R34 R29
      116 LOADK                            R35 K39 ["\n\n"]
      117 LOADK                            R36 K40 ["Execution error"]
      118 LOADK                            R37 K41 [":\n"]
      119 MOVE                             R38 R30
      120 CONCAT                           R33 R34 R38
      121 NAMECALL                         R31 R31 K42 ["setError"]
      123 CALL                             R31 2 0
      124 LOADB                            R28 0
      125 RETURN                           R28 1
      126 GETTABLEKS                       R27 R26 K43 ["foundationPackage"]
      128 SETTABLEKS                       R27 R0 K7 ["_currentFoundationPackage"]
      130 GETTABLEKS                       R28 R26 K45 ["providerMode"]
      132 ORK                              R27 R28 K44 ["implicit"]
      133 SETTABLEKS                       R27 R0 K8 ["_currentProviderMode"]
      135 GETTABLEKS                       R27 R26 K46 ["origin"]
      137 SETTABLEKS                       R27 R0 K9 ["_currentOrigin"]
      139 GETTABLEKS                       R27 R26 K47 ["dependencies"]
      141 SETTABLEKS                       R27 R0 K10 ["_currentDependencies"]
      143 GETTABLEKS                       R27 R26 K48 ["sourceHashes"]
      145 SETTABLEKS                       R27 R0 K11 ["_currentSourceHashes"]
      147 GETTABLEKS                       R27 R26 K49 ["definition"]
      149 SETTABLEKS                       R27 R0 K12 ["_currentDefinition"]
      151 GETTABLEKS                       R27 R26 K50 ["harnessModulePath"]
      153 SETTABLEKS                       R27 R0 K13 ["_currentHarnessModulePath"]
      155 GETTABLEKS                       R27 R26 K51 ["packageProvenance"]
      157 SETTABLEKS                       R27 R0 K14 ["_currentPackageProvenance"]
      159 LOADB                            R27 0
      160 GETTABLEKS                       R29 R26 K52 ["variants"]
      162 FASTCALL2K                       ASSERT R29 K53 ; [+4]
      164 LOADK                            R30 K53 ["Story Contract result is missing variants"]
      165 GETIMPORT                        R28 K55 [assert]
      167 CALL                             R28 2 0
      168 GETTABLEKS                       R29 R26 K56 ["controlSchema"]
      170 FASTCALL2K                       ASSERT R29 K57 ; [+4]
      172 LOADK                            R30 K57 ["Story Contract result is missing a control schema"]
      173 GETIMPORT                        R28 K55 [assert]
      175 CALL                             R28 2 0
      176 GETTABLEKS                       R29 R26 K58 ["storyIdentity"]
      178 GETTABLEKS                       R30 R0 K19 ["_currentStoryIdentity"]
      180 JUMPIFEQ                         R29 R30 ; [+2]
      182 LOADB                            R28 0 +1
      183 LOADB                            R28 1
      184 GETUPVAL                         R29 2
      185 GETTABLEKS                       R29 R29 K59 ["resolveDefaultVariantId"]
      187 GETTABLEKS                       R30 R26 K52 ["variants"]
      189 JUMPIFNOT                        R28 ; [+3]
      190 GETTABLEKS                       R31 R0 K18 ["_currentVariantId"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R31
      194 CALL                             R29 2 1
      195 LOADNIL                          R30
      196 GETTABLEKS                       R31 R26 K52 ["variants"]
      198 LOADNIL                          R32
      199 LOADNIL                          R33
      200 FORGPREP                         R31
      201 GETTABLEKS                       R36 R35 K60 ["id"]
      203 JUMPIFNOTEQ                      R36 R29 ; [+3]
      205 MOVE                             R30 R35
      206 JUMP                             ; [+2]
      207 FORGLOOP                         R31 2 ; [-7]
      209 FASTCALL2K                       ASSERT R30 K61 ; [+5]
      211 MOVE                             R32 R30
      212 LOADK                            R33 K61 ["Story Contract produced no selectable variant"]
      213 GETIMPORT                        R31 K55 [assert]
      215 CALL                             R31 2 0
      216 LOADB                            R31 1
      217 SETTABLEKS                       R31 R0 K16 ["_currentUsesStoryProps"]
      219 GETTABLEKS                       R31 R26 K52 ["variants"]
      221 SETTABLEKS                       R31 R0 K17 ["_currentVariants"]
      223 SETTABLEKS                       R29 R0 K18 ["_currentVariantId"]
      225 GETTABLEKS                       R31 R26 K58 ["storyIdentity"]
      227 SETTABLEKS                       R31 R0 K19 ["_currentStoryIdentity"]
      229 GETTABLEKS                       R31 R26 K56 ["controlSchema"]
      231 SETTABLEKS                       R31 R0 K20 ["_currentControlSchema"]
      233 GETUPVAL                         R31 2
      234 GETTABLEKS                       R31 R31 K62 ["mergeControlValuesOnReload"]
      236 JUMPIFNOT                        R28 ; [+2]
      237 MOVE                             R32 R22
      238 JUMP                             ; [+1]
      239 LOADNIL                          R32
      240 JUMPIFNOT                        R28 ; [+2]
      241 MOVE                             R33 R23
      242 JUMP                             ; [+1]
      243 LOADNIL                          R33
      244 GETTABLEKS                       R34 R26 K56 ["controlSchema"]
      246 CALL                             R31 3 1
      247 SETTABLEKS                       R31 R0 K21 ["_currentControlValues"]
      249 GETTABLEKS                       R31 R30 K63 ["component"]
      251 SETTABLEKS                       R31 R0 K15 ["_currentStoryFn"]
      253 NAMECALL                         R31 R0 K64 ["reRenderControlledStory"]
      255 CALL                             R31 1 1
      256 MOVE                             R27 R31
      257 JUMPIFNOT                        R27 ; [+38]
      258 GETTABLEKS                       R32 R26 K56 ["controlSchema"]
      260 GETTABLEKS                       R32 R32 K65 ["controls"]
      262 LENGTH                           R31 R32
      263 LOADN                            R32 0
      264 JUMPIFLT                         R32 R31 ; [+7]
      266 GETTABLEKS                       R32 R26 K52 ["variants"]
      268 LENGTH                           R31 R32
      269 LOADN                            R32 1
      270 JUMPIFNOTLT                      R32 R31 ; [+20]
      272 GETTABLEKS                       R31 R0 K66 ["_controls"]
      274 GETTABLEKS                       R33 R26 K56 ["controlSchema"]
      276 GETTABLEKS                       R34 R0 K21 ["_currentControlValues"]
      278 GETTABLEKS                       R35 R26 K52 ["variants"]
      280 DUPTABLE                         R36 K69 [{"selectedVariantId", "onVariantChange"}]
      281 SETTABLEKS                       R29 R36 K67 ["selectedVariantId"]
      283 NEWCLOSURE                       R37 P0
      284 CAPTURE                          VAL R0
      285 SETTABLEKS                       R37 R36 K68 ["onVariantChange"]
      287 NAMECALL                         R31 R31 K70 ["setStoryContract"]
      289 CALL                             R31 5 0
      290 JUMP                             ; [+5]
      291 GETTABLEKS                       R31 R0 K66 ["_controls"]
      293 NAMECALL                         R31 R31 K71 ["clear"]
      295 CALL                             R31 1 0
      296 JUMPIF                           R27 ; [+42]
      297 GETTABLEKS                       R28 R26 K72 ["executionSession"]
      299 JUMPIFNOT                        R28 ; [+5]
      300 GETTABLEKS                       R28 R26 K72 ["executionSession"]
      302 NAMECALL                         R28 R28 K73 ["cleanup"]
      304 CALL                             R28 1 0
      305 SETTABLEKS                       R8 R0 K6 ["_currentSourceMap"]
      307 SETTABLEKS                       R9 R0 K7 ["_currentFoundationPackage"]
      309 SETTABLEKS                       R10 R0 K8 ["_currentProviderMode"]
      311 SETTABLEKS                       R11 R0 K9 ["_currentOrigin"]
      313 SETTABLEKS                       R12 R0 K10 ["_currentDependencies"]
      315 SETTABLEKS                       R13 R0 K11 ["_currentSourceHashes"]
      317 SETTABLEKS                       R14 R0 K12 ["_currentDefinition"]
      319 SETTABLEKS                       R15 R0 K13 ["_currentHarnessModulePath"]
      321 SETTABLEKS                       R16 R0 K14 ["_currentPackageProvenance"]
      323 SETTABLEKS                       R17 R0 K15 ["_currentStoryFn"]
      325 SETTABLEKS                       R18 R0 K16 ["_currentUsesStoryProps"]
      327 SETTABLEKS                       R19 R0 K17 ["_currentVariants"]
      329 SETTABLEKS                       R20 R0 K18 ["_currentVariantId"]
      331 SETTABLEKS                       R21 R0 K19 ["_currentStoryIdentity"]
      333 SETTABLEKS                       R22 R0 K20 ["_currentControlSchema"]
      335 SETTABLEKS                       R23 R0 K21 ["_currentControlValues"]
      337 LOADB                            R28 0
      338 RETURN                           R28 1
      339 GETTABLEKS                       R28 R26 K72 ["executionSession"]
      341 SETTABLEKS                       R28 R0 K22 ["_executionSession"]
      343 JUMPIFNOT                        R24 ; [+7]
      344 GETTABLEKS                       R28 R0 K22 ["_executionSession"]
      346 JUMPIFEQ                         R24 R28 ; [+4]
      348 NAMECALL                         R28 R24 K73 ["cleanup"]
      350 CALL                             R28 1 0
      351 SETTABLEKS                       R6 R0 K3 ["_bindStartedAt"]
      353 SETTABLEKS                       R7 R0 K5 ["_executionRefreshCount"]
      355 JUMPIFNOT                        R5 ; [+3]
      356 LOADN                            R28 1
      357 SETTABLEKS                       R28 R0 K74 ["_rootRenderCount"]
      359 GETTABLEKS                       R28 R26 K75 ["sourceMap"]
      361 SETTABLEKS                       R28 R0 K6 ["_currentSourceMap"]
      363 JUMPIFNOT                        R5 ; [+2]
      364 LOADNIL                          R28
      365 JUMP                             ; [+4]
      366 GETTABLEKS                       R29 R0 K2 ["_now"]
      368 CALL                             R29 0 1
      369 SUB                              R28 R29 R25
      370 SETTABLEKS                       R28 R0 K76 ["_warmReloadDuration"]
      372 GETTABLEKS                       R28 R0 K76 ["_warmReloadDuration"]
      374 JUMPIFNOT                        R28 ; [+15]
      375 GETTABLEKS                       R28 R0 K76 ["_warmReloadDuration"]
      377 LOADK                            R29 K77 [0.5]
      378 JUMPIFNOTLT                      R29 R28 ; [+11]
      380 GETIMPORT                        R28 K28 [warn]
      382 GETIMPORT                        R29 K79 [string.format]
      384 LOADK                            R30 K80 ["[DesignAssist] Warm story reload took %.0f ms (budget: 500 ms)"]
      385 GETTABLEKS                       R32 R0 K76 ["_warmReloadDuration"]
      387 MULK                             R31 R32 K81 [1000]
      388 CALL                             R29 2 -1
      389 CALL                             R28 -1 0
      390 GETTABLEKS                       R28 R0 K38 ["_canvas"]
      392 LOADNIL                          R30
      393 NAMECALL                         R28 R28 K42 ["setError"]
      395 CALL                             R28 2 0
      396 LOADB                            R28 1
      397 RETURN                           R28 1

PROTO_24:
        0 JUMPIF                           R1 ; [+5]
        1 NAMECALL                         R2 R0 K0 ["clearPreview"]
        3 CALL                             R2 1 0
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K1 ["Name"]
        8 SETTABLEKS                       R2 R0 K2 ["_currentStoryName"]
       10 GETTABLEKS                       R2 R0 K3 ["_canvas"]
       12 GETTABLEKS                       R4 R1 K4 ["Source"]
       14 NAMECALL                         R2 R2 K5 ["setCodeSource"]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R0 K3 ["_canvas"]
       19 GETTABLEKS                       R4 R1 K1 ["Name"]
       21 NAMECALL                         R2 R2 K6 ["setStoryName"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R0 K3 ["_canvas"]
       26 LOADNIL                          R4
       27 NAMECALL                         R2 R2 K7 ["setError"]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R0 K8 ["_currentModuleScript"]
       32 JUMPIFEQ                         R1 R2 ; [+6]
       34 GETTABLEKS                       R2 R0 K9 ["_Executor"]
       36 GETTABLEKS                       R2 R2 K10 ["clearStableWrappers"]
       38 CALL                             R2 0 0
       39 GETTABLEKS                       R4 R1 K1 ["Name"]
       41 MOVE                             R5 R1
       42 DUPTABLE                         R6 K12 [{"failureContext"}]
       43 GETTABLEKS                       R8 R1 K1 ["Name"]
       45 GETTABLEKS                       R9 R0 K13 ["_currentElement"]
       47 JUMPIFNOT                        R9 ; [+4]
       48 MOVE                             R9 R8
       49 LOADK                            R10 K14 [" could not load. The previous preview is still shown. Fix the source, then the canvas will update automatically."]
       50 CONCAT                           R7 R9 R10
       51 JUMP                             ; [+3]
       52 MOVE                             R9 R8
       53 LOADK                            R10 K15 [" could not load. Fix the source, then the canvas will update automatically."]
       54 CONCAT                           R7 R9 R10
       55 SETTABLEKS                       R7 R6 K11 ["failureContext"]
       57 NAMECALL                         R2 R0 K16 ["_runSource"]
       59 CALL                             R2 4 1
       60 JUMPIFNOT                        R2 ; [+2]
       61 SETTABLEKS                       R1 R0 K8 ["_currentModuleScript"]
       63 RETURN                           R2 1

PROTO_25:
        0 GETTABLEKS                       R4 R1 K0 ["moduleScript"]
        2 NAMECALL                         R2 R0 K1 ["refreshFromDataModel"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Canvas"]
       15 GETTABLEKS                       R2 R2 K9 ["CanvasTheme"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["StoryContract"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["StoryContractControls"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 16 0
       38 SETTABLEKS                       R4 R4 K13 ["__index"]
       40 DUPCLOSURE                       R5 K14 [PROTO_0]
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 DUPCLOSURE                       R7 K16 [PROTO_2]
       43 DUPCLOSURE                       R8 K17 [PROTO_3]
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R9 K18 [PROTO_4]
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R9 R4 K19 ["new"]
       49 DUPCLOSURE                       R9 K20 [PROTO_5]
       50 SETTABLEKS                       R9 R4 K21 ["getCurrentSource"]
       52 DUPCLOSURE                       R9 K22 [PROTO_6]
       53 SETTABLEKS                       R9 R4 K23 ["getCurrentSourceMap"]
       55 DUPCLOSURE                       R9 K24 [PROTO_7]
       56 SETTABLEKS                       R9 R4 K25 ["getExecutionContext"]
       58 DUPCLOSURE                       R9 K26 [PROTO_8]
       59 SETTABLEKS                       R9 R4 K27 ["getExecutionMetrics"]
       61 DUPCLOSURE                       R9 K28 [PROTO_10]
       62 DUPCLOSURE                       R10 K29 [PROTO_14]
       63 CAPTURE                          VAL R1
       64 DUPCLOSURE                       R11 K30 [PROTO_15]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R11 R4 K31 ["applyControlChanges"]
       69 DUPCLOSURE                       R11 K32 [PROTO_16]
       70 SETTABLEKS                       R11 R4 K33 ["selectVariant"]
       72 DUPCLOSURE                       R11 K34 [PROTO_18]
       73 CAPTURE                          VAL R10
       74 SETTABLEKS                       R11 R4 K35 ["reRenderControlledStory"]
       76 DUPCLOSURE                       R11 K36 [PROTO_19]
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R11 R4 K37 ["rerenderForContextChange"]
       80 DUPCLOSURE                       R11 K38 [PROTO_20]
       81 SETTABLEKS                       R11 R4 K39 ["clearPreview"]
       83 DUPCLOSURE                       R11 K40 [PROTO_21]
       84 DUPCLOSURE                       R12 K41 [PROTO_23]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R12 R4 K42 ["_runSource"]
       90 DUPCLOSURE                       R12 K43 [PROTO_24]
       91 SETTABLEKS                       R12 R4 K44 ["refreshFromDataModel"]
       93 DUPCLOSURE                       R12 K45 [PROTO_25]
       94 SETTABLEKS                       R12 R4 K46 ["onNewCode"]
       96 RETURN                           R4 1
