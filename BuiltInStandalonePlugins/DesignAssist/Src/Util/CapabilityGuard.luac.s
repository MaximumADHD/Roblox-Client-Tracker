PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["lacking capability ([%w_]+)"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["RobloxScript"] ; [+3]
        2 LOADK                            R1 K1 ["This is not a normal Studio setting toggle for a user-installed .rbxm. Install the internal Design Assist build, or update to a build that avoids this internal-only API."]
        3 RETURN                           R1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 LOADK                            R2 K2 ["Check that this plugin is installed through the expected internal workflow for capability "]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K3 [", or update to a build that guards this feature."]
        8 CONCAT                           R1 R2 R4
        9 RETURN                           R1 1
       10 LOADK                            R1 K4 ["Update Design Assist or share this error with the plugin owner."]
       11 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K4 [string.match]
        7 MOVE                             R5 R3
        8 LOADK                            R6 K5 ["lacking capability ([%w_]+)"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+7]
       11 LOADK                            R5 K6 ["Design Assist could not enable %s because this plugin build is missing the %s capability."]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R4
       14 NAMECALL                         R5 R5 K7 ["format"]
       16 CALL                             R5 3 1
       17 JUMP                             ; [+5]
       18 LOADK                            R5 K8 ["Design Assist could not enable %s."]
       19 MOVE                             R7 R0
       20 NAMECALL                         R5 R5 K7 ["format"]
       22 CALL                             R5 2 1
       23 NEWTABLE                         R6 0 1
       25 MOVE                             R7 R5
       26 SETLIST                          R6 R7 1 [1]
       28 JUMPIFNOT                        R2 ; [+11]
       29 JUMPIFEQKS                       R2 K9 [""] ; [+10]
       31 LOADK                            R10 K10 ["Impact: "]
       32 MOVE                             R11 R2
       33 CONCAT                           R9 R10 R11
       34 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       36 MOVE                             R8 R6
       37 GETIMPORT                        R7 K13 [table.insert]
       39 CALL                             R7 2 0
       40 LOADK                            R10 K14 ["What to do: "]
       41 JUMPIFNOTEQKS                    R4 K15 ["RobloxScript"] ; [+3]
       43 LOADK                            R11 K16 ["This is not a normal Studio setting toggle for a user-installed .rbxm. Install the internal Design Assist build, or update to a build that avoids this internal-only API."]
       44 JUMP                             ; [+7]
       45 JUMPIFNOT                        R4 ; [+5]
       46 LOADK                            R12 K17 ["Check that this plugin is installed through the expected internal workflow for capability "]
       47 MOVE                             R13 R4
       48 LOADK                            R14 K18 [", or update to a build that guards this feature."]
       49 CONCAT                           R11 R12 R14
       50 JUMP                             ; [+1]
       51 LOADK                            R11 K19 ["Update Design Assist or share this error with the plugin owner."]
       52 CONCAT                           R9 R10 R11
       53 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       55 MOVE                             R8 R6
       56 GETIMPORT                        R7 K13 [table.insert]
       58 CALL                             R7 2 0
       59 LOADK                            R10 K20 ["Original error: "]
       60 MOVE                             R11 R3
       61 CONCAT                           R9 R10 R11
       62 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       64 MOVE                             R8 R6
       65 GETIMPORT                        R7 K13 [table.insert]
       67 CALL                             R7 2 0
       68 DUPTABLE                         R7 K25 [{"context", "message", "rawError", "capability"}]
       69 SETTABLEKS                       R0 R7 K21 ["context"]
       71 GETIMPORT                        R8 K27 [table.concat]
       73 MOVE                             R9 R6
       74 LOADK                            R10 K28 ["\n"]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K22 ["message"]
       78 SETTABLEKS                       R3 R7 K23 ["rawError"]
       80 SETTABLEKS                       R4 R7 K24 ["capability"]
       82 RETURN                           R7 1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 2
        4 JUMPIFNOT                        R3 ; [+4]
        5 LOADB                            R5 1
        6 MOVE                             R6 R4
        7 LOADNIL                          R7
        8 RETURN                           R5 3
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["describe"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R4
       14 MOVE                             R8 R2
       15 CALL                             R5 3 1
       16 GETTABLEKS                       R6 R5 K3 ["message"]
       18 LOADK                            R8 K4 ["\n"]
       19 LOADK                            R9 K5 ["\n[DesignAssist] "]
       20 NAMECALL                         R6 R6 K6 ["gsub"]
       22 CALL                             R6 3 1
       23 GETIMPORT                        R7 K8 [warn]
       25 LOADK                            R9 K9 ["[DesignAssist] "]
       26 MOVE                             R10 R6
       27 CONCAT                           R8 R9 R10
       28 CALL                             R7 1 0
       29 LOADB                            R7 0
       30 MOVE                             R8 R4
       31 MOVE                             R9 R5
       32 RETURN                           R7 3

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 SETTABLEKS                       R3 R0 K3 ["describe"]
        8 DUPCLOSURE                       R3 K4 [PROTO_3]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R3 R0 K5 ["run"]
       12 RETURN                           R0 1
