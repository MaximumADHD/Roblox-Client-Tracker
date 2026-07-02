MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K24 [{["StartKey"] = "start", ["EndKey"] = "end", ["CharacterLimit"] = 199987, ["AttributeChunkNameBase"], ["AttributeChunkCountName"], ["AttributeInitialIssueCountName"], ["AttributeUnificationScriptName"], ["ScriptStatus"], ["ReferenceKey"] = "Reference", ["ScriptBackupTag"] = "R15MigratorScriptHasBackup"}]
       17 GETTABLEKS                       R4 R1 K25 ["AttributePrefix"]
       19 LOADK                            R5 K26 ["ScriptBackupChunk"]
       20 CONCAT                           R3 R4 R5
       21 SETTABLEKS                       R3 R2 K15 ["AttributeChunkNameBase"]
       23 GETTABLEKS                       R4 R1 K25 ["AttributePrefix"]
       25 LOADK                            R5 K27 ["ScriptBackupCount"]
       26 CONCAT                           R3 R4 R5
       27 SETTABLEKS                       R3 R2 K16 ["AttributeChunkCountName"]
       29 GETTABLEKS                       R4 R1 K25 ["AttributePrefix"]
       31 LOADK                            R5 K28 ["InitialIssueCount"]
       32 CONCAT                           R3 R4 R5
       33 SETTABLEKS                       R3 R2 K17 ["AttributeInitialIssueCountName"]
       35 GETTABLEKS                       R4 R1 K25 ["AttributePrefix"]
       37 LOADK                            R5 K29 ["UnificationScript"]
       38 CONCAT                           R3 R4 R5
       39 SETTABLEKS                       R3 R2 K18 ["AttributeUnificationScriptName"]
       41 DUPTABLE                         R3 K37 [{["AutoConverted"] = "AutoConverted", ["Complete"] = "Complete", ["Reverted"] = "Reverted", ["Warning"] = "Warning", ["Error"] = "Error", ["VariableError"] = "VariableError", ["None"] = "None"}]
       42 SETTABLEKS                       R3 R2 K19 ["ScriptStatus"]
       44 RETURN                           R2 1
