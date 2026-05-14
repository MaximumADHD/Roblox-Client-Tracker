PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R2 K2 ["diagnostics"]
        7 LOADN                            R3 0
        8 MOVE                             R4 R2
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R10 R8 K3 ["_list"]
       14 LENGTH                           R9 R10
       15 ADD                              R3 R3 R9
       16 FORGLOOP                         R4 2 ; [-5]
       18 GETTABLEKS                       R4 R1 K4 ["AnimationConversion"]
       20 GETTABLEKS                       R4 R4 K5 ["animations"]
       22 LOADN                            R5 0
       23 MOVE                             R6 R4
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETTABLEKS                       R11 R10 K6 ["status"]
       29 JUMPIFEQKNIL                     R11 ; [+11]
       31 GETTABLEKS                       R11 R10 K6 ["status"]
       33 JUMPIFEQKS                       R11 K7 ["Done"] ; [+8]
       35 GETTABLEKS                       R11 R10 K6 ["status"]
       37 JUMPIFEQKS                       R11 K8 ["Published"] ; [+4]
       39 ADDK                             R5 R5 K9 [1]
       40 JUMP                             ; [+1]
       41 ADDK                             R5 R5 K9 [1]
       42 FORGLOOP                         R6 2 ; [-16]
       44 GETTABLEKS                       R6 R1 K10 ["CharacterConversion"]
       46 GETTABLEKS                       R6 R6 K11 ["characters"]
       48 LOADN                            R7 0
       49 MOVE                             R8 R6
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 FORGPREP                         R8
       53 ADDK                             R7 R7 K9 [1]
       54 FORGLOOP                         R8 2 ; [-2]
       56 GETUPVAL                         R8 0
       57 LOADK                            R10 K12 ["onAdapterToggle"]
       58 NAMECALL                         R8 R8 K13 ["getHandler"]
       60 CALL                             R8 2 1
       61 LOADB                            R9 0
       62 MOVE                             R10 R3
       63 MOVE                             R11 R5
       64 MOVE                             R12 R7
       65 CALL                             R8 4 0
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K14 ["ClearAdapterSetup"]
       69 CALL                             R8 0 0
       70 GETUPVAL                         R8 2
       71 NAMECALL                         R8 R8 K15 ["removeAllTags"]
       73 CALL                             R8 1 0
       74 GETIMPORT                        R8 K17 [game]
       76 LOADK                            R10 K18 ["Workspace"]
       77 NAMECALL                         R8 R8 K19 ["GetService"]
       79 CALL                             R8 2 1
       80 GETIMPORT                        R10 K23 [Enum.AvatarUnificationMode.Disabled]
       82 NAMECALL                         R8 R8 K24 ["SetAvatarUnificationMode"]
       84 CALL                             R8 2 0
       85 GETUPVAL                         R8 3
       86 GETTABLEKS                       R8 R8 K25 ["SetAdapted"]
       88 LOADB                            R9 0
       89 CALL                             R8 1 0
       90 GETUPVAL                         R10 4
       91 LOADB                            R11 0
       92 CALL                             R10 1 -1
       93 NAMECALL                         R8 R0 K26 ["dispatch"]
       95 CALL                             R8 -1 0
       96 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["PublishTagging"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K9 ["AdapterTagging"]
       18 GETTABLEKS                       R3 R0 K4 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["Actions"]
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R3 K11 ["SetAdapted"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R0 K4 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Modules"]
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R5 K13 ["NpcManager"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R0 K4 ["Src"]
       40 GETTABLEKS                       R8 R8 K5 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["SaveInterface"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K15 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 RETURN                           R8 1
