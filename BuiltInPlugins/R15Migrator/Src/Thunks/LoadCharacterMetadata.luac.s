PROTO_0:
        0 LOADNIL                          R1
        1 NEWTABLE                         R2 0 0
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 LOADNIL                          R8
        8 LOADK                            R11 K0 ["Humanoid"]
        9 NAMECALL                         R9 R7 K1 ["FindFirstChildOfClass"]
       11 CALL                             R9 2 1
       12 GETTABLEKS                       R9 R9 K2 ["RigType"]
       14 GETIMPORT                        R10 K6 [Enum.HumanoidRigType.R6]
       16 JUMPIFNOTEQ                      R9 R10 ; [+6]
       18 NAMECALL                         R9 R7 K7 ["Clone"]
       20 CALL                             R9 1 1
       21 MOVE                             R8 R9
       22 JUMP                             ; [+49]
       23 MOVE                             R9 R1
       24 JUMPIF                           R9 ; [+4]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K8 ["getR6Characters"]
       28 CALL                             R9 0 1
       29 MOVE                             R1 R9
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K9 ["getConversionId"]
       33 MOVE                             R11 R7
       34 CALL                             R10 1 1
       35 GETTABLE                         R9 R1 R10
       36 JUMPIF                           R9 ; [+5]
       37 GETIMPORT                        R10 K11 [warn]
       39 LOADK                            R11 K12 ["Original R6 character is unavailable. Was the save folder edited?"]
       40 CALL                             R10 1 0
       41 JUMP                             ; [+60]
       42 GETUPVAL                         R10 1
       43 MOVE                             R12 R7
       44 NAMECALL                         R10 R10 K13 ["addTag"]
       46 CALL                             R10 2 0
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K14 ["HasUnificationScripts"]
       50 MOVE                             R11 R7
       51 CALL                             R10 1 1
       52 JUMPIFNOT                        R10 ; [+6]
       53 GETUPVAL                         R10 3
       54 MOVE                             R12 R7
       55 NAMECALL                         R10 R10 K13 ["addTag"]
       57 CALL                             R10 2 0
       58 JUMP                             ; [+5]
       59 GETUPVAL                         R10 3
       60 MOVE                             R12 R7
       61 NAMECALL                         R10 R10 K15 ["removeTag"]
       63 CALL                             R10 2 0
       64 NAMECALL                         R10 R9 K7 ["Clone"]
       66 CALL                             R10 1 1
       67 MOVE                             R8 R10
       68 GETTABLEKS                       R10 R7 K16 ["Name"]
       70 SETTABLEKS                       R10 R8 K16 ["Name"]
       72 NAMECALL                         R9 R7 K17 ["GetFullName"]
       74 CALL                             R9 1 1
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R10 R10 K9 ["getConversionId"]
       78 MOVE                             R11 R7
       79 CALL                             R10 1 1
       80 JUMPIFNOT                        R10 ; [+7]
       81 GETUPVAL                         R11 4
       82 GETTABLEKS                       R11 R11 K18 ["SetNpcWithId"]
       84 MOVE                             R12 R7
       85 MOVE                             R13 R10
       86 CALL                             R11 2 0
       87 JUMP                             ; [+6]
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R11 R11 K19 ["AddNpc"]
       91 MOVE                             R12 R7
       92 CALL                             R11 1 1
       93 MOVE                             R10 R11
       94 DUPTABLE                         R11 K23 [{"key", "fullName", "model"}]
       95 SETTABLEKS                       R10 R11 K20 ["key"]
       97 SETTABLEKS                       R9 R11 K21 ["fullName"]
       99 SETTABLEKS                       R8 R11 K22 ["model"]
      101 SETTABLE                         R11 R2 R10
      102 FORGLOOP                         R3 2 ; [-96]
      104 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R7 K2 ["hasTagged"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+21]
       11 JUMPIFNOT                        R1 ; [+10]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K3 ["SetupUnificationScripts"]
       15 MOVE                             R8 R6
       16 CALL                             R7 1 0
       17 GETUPVAL                         R7 2
       18 MOVE                             R9 R6
       19 NAMECALL                         R7 R7 K4 ["addTag"]
       21 CALL                             R7 2 0
       22 GETUPVAL                         R7 3
       23 MOVE                             R9 R6
       24 NAMECALL                         R7 R7 K4 ["addTag"]
       26 CALL                             R7 2 0
       27 GETUPVAL                         R7 0
       28 MOVE                             R9 R6
       29 NAMECALL                         R7 R7 K5 ["removeTag"]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-28]
       34 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Reset"]
        6 CALL                             R3 0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["GetR6Npcs"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["addConvertibleCharacters"]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K4 ["GetR15ConvertedNpcs"]
       22 CALL                             R5 0 1
       23 GETTABLEKS                       R6 R2 K5 ["Adapter"]
       25 GETTABLEKS                       R6 R6 K6 ["adapted"]
       27 GETUPVAL                         R7 4
       28 MOVE                             R8 R5
       29 MOVE                             R9 R6
       30 CALL                             R7 2 0
       31 GETUPVAL                         R7 3
       32 MOVE                             R8 R5
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K8 [pairs]
       36 MOVE                             R9 R3
       37 CALL                             R8 1 3
       38 FORGPREP_NEXT                    R8
       39 GETUPVAL                         R13 5
       40 MOVE                             R15 R12
       41 NAMECALL                         R13 R13 K9 ["addTag"]
       43 CALL                             R13 2 0
       44 FORGLOOP                         R8 2 ; [-6]
       46 GETIMPORT                        R8 K8 [pairs]
       48 MOVE                             R9 R5
       49 CALL                             R8 1 3
       50 FORGPREP_NEXT                    R8
       51 GETUPVAL                         R13 5
       52 MOVE                             R15 R12
       53 NAMECALL                         R13 R13 K10 ["removeTag"]
       55 CALL                             R13 2 0
       56 FORGLOOP                         R8 2 ; [-6]
       58 GETUPVAL                         R10 6
       59 MOVE                             R11 R4
       60 MOVE                             R12 R7
       61 CALL                             R10 2 -1
       62 NAMECALL                         R8 R0 K11 ["dispatch"]
       64 CALL                             R8 -1 0
       65 LOADK                            R10 K12 ["onCharactersLoaded"]
       66 NAMECALL                         R8 R1 K13 ["getHandler"]
       68 CALL                             R8 2 1
       69 MOVE                             R9 R4
       70 MOVE                             R10 R7
       71 CALL                             R8 2 0
       72 GETIMPORT                        R8 K15 [game]
       74 LOADK                            R10 K16 ["Workspace"]
       75 NAMECALL                         R8 R8 K17 ["GetService"]
       77 CALL                             R8 2 1
       78 JUMPIFNOT                        R6 ; [+3]
       79 GETIMPORT                        R10 K21 [Enum.AvatarUnificationMode.Enabled]
       81 JUMPIF                           R10 ; [+2]
       82 GETIMPORT                        R10 K23 [Enum.AvatarUnificationMode.Disabled]
       84 NAMECALL                         R8 R8 K24 ["SetAvatarUnificationMode"]
       86 CALL                             R8 2 0
       87 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [coroutine.wrap]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 GETUPVAL                         R3 1
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Modules"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["NpcManager"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["NpcIdManager"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K4 ["Src"]
       23 GETTABLEKS                       R4 R4 K10 ["Util"]
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R4 K11 ["SaveInterface"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R4 K12 ["PublishTagging"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R6 R6 K13 ["CharacterTagging"]
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R4 K12 ["PublishTagging"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R7 R7 K14 ["AdapterTagging"]
       44 GETIMPORT                        R8 K7 [require]
       46 GETTABLEKS                       R9 R4 K15 ["QuickAccessTagging"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R8 R8 K16 ["CharactersConvertedToR15Tagging"]
       51 GETIMPORT                        R9 K7 [require]
       53 GETTABLEKS                       R10 R0 K4 ["Src"]
       55 GETTABLEKS                       R10 R10 K17 ["Actions"]
       57 GETTABLEKS                       R10 R10 K18 ["SetCharacterMetadata"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R0 K4 ["Src"]
       62 GETTABLEKS                       R10 R10 K17 ["Actions"]
       64 GETIMPORT                        R11 K7 [require]
       66 GETTABLEKS                       R12 R10 K19 ["SetAdapted"]
       68 CALL                             R11 1 1
       69 DUPCLOSURE                       R12 K20 [PROTO_0]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R3
       75 DUPCLOSURE                       R13 K21 [PROTO_1]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 DUPCLOSURE                       R14 K22 [PROTO_2]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R9
       88 DUPCLOSURE                       R15 K23 [PROTO_4]
       89 CAPTURE                          VAL R14
       90 RETURN                           R15 1
