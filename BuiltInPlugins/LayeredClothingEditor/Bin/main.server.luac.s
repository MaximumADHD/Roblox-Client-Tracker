PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LayeredClothingEditorPreview"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R4 R4 K2 ["GetUserId"]
       10 CALL                             R4 1 -1
       11 FASTCALL                         TOSTRING ; [+2]
       12 GETIMPORT                        R3 K4 [tostring]
       14 CALL                             R3 -1 1
       15 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+3]
       19 NAMECALL                         R2 R1 K5 ["Destroy"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+15]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["IsClient"]
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K2 ["init"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K2 ["init"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 NAMECALL                         R0 R0 K3 ["IsEdit"]
       23 CALL                             R0 1 1
       24 JUMPIFNOT                        R0 ; [+22]
       25 GETUPVAL                         R0 3
       26 LOADK                            R2 K4 ["LayeredClothingEditorPreview"]
       27 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       29 CALL                             R0 2 1
       30 JUMPIF                           R0 ; [+1]
       31 JUMP                             ; [+15]
       32 GETUPVAL                         R4 4
       33 NAMECALL                         R4 R4 K6 ["GetUserId"]
       35 CALL                             R4 1 -1
       36 FASTCALL                         TOSTRING ; [+2]
       37 GETIMPORT                        R3 K8 [tostring]
       39 CALL                             R3 -1 1
       40 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       42 CALL                             R1 2 1
       43 JUMPIFNOT                        R1 ; [+3]
       44 NAMECALL                         R2 R1 K9 ["Destroy"]
       46 CALL                             R2 1 0
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R0 R1 K10 ["createElement"]
       50 GETUPVAL                         R1 6
       51 DUPTABLE                         R2 K12 [{"plugin"}]
       52 GETIMPORT                        R3 K13 [plugin]
       54 SETTABLEKS                       R3 R2 K11 ["plugin"]
       56 CALL                             R0 2 1
       57 GETUPVAL                         R2 5
       58 GETTABLEKS                       R1 R2 K14 ["mount"]
       60 MOVE                             R2 R0
       61 CALL                             R1 1 1
       62 SETUPVAL                         R1 7
       63 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsRunning"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+15]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["IsClient"]
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K2 ["shutdown"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K2 ["shutdown"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+5]
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R0 R1 K3 ["unmount"]
       25 GETUPVAL                         R1 3
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [require]
       21 GETIMPORT                        R6 K9 [script]
       23 GETTABLEKS                       R5 R6 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["defineLuaFlags"]
       27 CALL                             R3 1 0
       28 GETIMPORT                        R5 K9 [script]
       30 GETTABLEKS                       R4 R5 K10 ["Parent"]
       32 GETTABLEKS                       R3 R4 K10 ["Parent"]
       34 GETIMPORT                        R4 K7 [require]
       36 GETTABLEKS                       R8 R3 K12 ["Src"]
       38 GETTABLEKS                       R7 R8 K13 ["Components"]
       40 GETTABLEKS                       R6 R7 K14 ["InExperiencePreviewer"]
       42 GETTABLEKS                       R5 R6 K15 ["InExperiencePreviewerClient"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K7 [require]
       47 GETTABLEKS                       R9 R3 K12 ["Src"]
       49 GETTABLEKS                       R8 R9 K13 ["Components"]
       51 GETTABLEKS                       R7 R8 K14 ["InExperiencePreviewer"]
       53 GETTABLEKS                       R6 R7 K16 ["InExperiencePreviewerServer"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K7 [require]
       58 GETTABLEKS                       R8 R3 K17 ["Packages"]
       60 GETTABLEKS                       R7 R8 K18 ["Roact"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K7 [require]
       65 GETTABLEKS                       R10 R3 K12 ["Src"]
       67 GETTABLEKS                       R9 R10 K19 ["Util"]
       69 GETTABLEKS                       R8 R9 K20 ["DebugFlags"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K7 [require]
       74 GETTABLEKS                       R11 R3 K12 ["Src"]
       76 GETTABLEKS                       R10 R11 K21 ["Flags"]
       78 GETTABLEKS                       R9 R10 K22 ["GetAccessoryToolEngineFeature"]
       80 CALL                             R8 1 1
       81 MOVE                             R9 R8
       82 CALL                             R9 0 1
       83 JUMPIF                           R9 ; [+1]
       84 RETURN                           R0 0
       85 GETTABLEKS                       R9 R7 K23 ["RunTests"]
       87 CALL                             R9 0 1
       88 JUMPIF                           R9 ; [+3]
       89 GETTABLEKS                       R9 R7 K24 ["RunRhodiumTests"]
       91 CALL                             R9 0 1
       92 GETTABLEKS                       R10 R6 K25 ["setGlobalConfig"]
       94 NEWTABLE                         R11 0 0
       96 CALL                             R10 1 0
       97 JUMPIFNOT                        R9 ; [+1]
       98 RETURN                           R0 0
       99 GETIMPORT                        R10 K7 [require]
      101 GETTABLEKS                       R13 R3 K12 ["Src"]
      103 GETTABLEKS                       R12 R13 K13 ["Components"]
      105 GETTABLEKS                       R11 R12 K26 ["LayeredClothingEditorPlugin"]
      107 CALL                             R10 1 1
      108 LOADNIL                          R11
      109 DUPCLOSURE                       R12 K27 [PROTO_0]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R1
      112 NEWCLOSURE                       R13 P1
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R10
      120 CAPTURE                          REF R11
      121 GETIMPORT                        R15 K29 [plugin]
      123 GETTABLEKS                       R14 R15 K30 ["Unloading"]
      125 NEWCLOSURE                       R16 P2
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R5
      129 CAPTURE                          REF R11
      130 CAPTURE                          VAL R6
      131 NAMECALL                         R14 R14 K31 ["Connect"]
      133 CALL                             R14 2 0
      134 MOVE                             R14 R13
      135 CALL                             R14 0 0
      136 CLOSEUPVALS                      R11
      137 RETURN                           R0 0
