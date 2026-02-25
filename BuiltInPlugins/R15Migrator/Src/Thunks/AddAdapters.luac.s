PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["onAdapterToggle"]
        2 NAMECALL                         R1 R1 K1 ["getHandler"]
        4 CALL                             R1 2 1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 GETIMPORT                        R1 K3 [pairs]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K4 ["getTagged"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 3
       14 FORGPREP_NEXT                    R1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K5 ["SetupUnificationScripts"]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 0
       20 GETUPVAL                         R6 3
       21 MOVE                             R8 R5
       22 NAMECALL                         R6 R6 K6 ["addTag"]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-11]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R1 R2 K7 ["SetAdapted"]
       30 LOADB                            R2 1
       31 CALL                             R1 1 0
       32 GETUPVAL                         R3 5
       33 LOADB                            R4 1
       34 CALL                             R3 1 -1
       35 NAMECALL                         R1 R0 K8 ["dispatch"]
       37 CALL                             R1 -1 0
       38 GETIMPORT                        R1 K10 [game]
       40 LOADK                            R3 K11 ["Workspace"]
       41 NAMECALL                         R1 R1 K12 ["GetService"]
       43 CALL                             R1 2 1
       44 GETIMPORT                        R3 K16 [Enum.AvatarUnificationMode.Enabled]
       46 NAMECALL                         R1 R1 K17 ["SetAvatarUnificationMode"]
       48 CALL                             R1 2 0
       49 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R3 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["PublishTagging"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K9 ["AdapterTagging"]
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R1 K10 ["QuickAccessTagging"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R3 R4 K11 ["CharactersConvertedToR15Tagging"]
       25 GETTABLEKS                       R5 R0 K4 ["Src"]
       27 GETTABLEKS                       R4 R5 K12 ["Actions"]
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R4 K13 ["SetAdapted"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R7 R0 K4 ["Src"]
       36 GETTABLEKS                       R6 R7 K14 ["Modules"]
       38 GETIMPORT                        R7 K7 [require]
       40 GETTABLEKS                       R8 R6 K15 ["NpcManager"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K7 [require]
       45 GETTABLEKS                       R11 R0 K4 ["Src"]
       47 GETTABLEKS                       R10 R11 K5 ["Util"]
       49 GETTABLEKS                       R9 R10 K16 ["SaveInterface"]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K17 [PROTO_1]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R5
       58 RETURN                           R9 1
