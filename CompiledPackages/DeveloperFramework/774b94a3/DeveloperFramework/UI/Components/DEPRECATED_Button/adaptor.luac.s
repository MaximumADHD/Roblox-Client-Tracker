PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+33]
        7 GETTABLEKS                       R2 R0 K3 ["Foreground"]
        9 GETUPVAL                         R3 0
       10 JUMPIFNOTEQ                      R2 R3 ; [+28]
       12 GETUPVAL                         R2 1
       13 DUPTABLE                         R3 K6 [{"LeftIcon", "IconColor"}]
       14 GETTABLEKS                       R4 R0 K7 ["ForegroundStyle"]
       16 GETTABLEKS                       R4 R4 K8 ["Image"]
       18 SETTABLEKS                       R4 R3 K4 ["LeftIcon"]
       20 GETTABLEKS                       R4 R0 K7 ["ForegroundStyle"]
       22 GETTABLEKS                       R4 R4 K9 ["Color"]
       24 SETTABLEKS                       R4 R3 K5 ["IconColor"]
       26 GETUPVAL                         R5 2
       27 JUMPIFNOT                        R5 ; [+8]
       28 NEWTABLE                         R4 1 0
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K10 ["Tag"]
       33 LOADK                            R6 K11 ["IconOnly"]
       34 SETTABLE                         R6 R4 R5
       35 JUMP                             ; [+1]
       36 DUPTABLE                         R4 K13 [{["Style"] = "IconOnly"}]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 GETUPVAL                         R2 2
       40 JUMPIFNOT                        R2 ; [+29]
       41 NEWTABLE                         R2 2 0
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K10 ["Tag"]
       46 GETUPVAL                         R4 4
       47 GETUPVAL                         R7 5
       48 GETTABLE                         R6 R7 R0
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K14 ["None"]
       52 JUMPIFNOTEQ                      R6 R7 ; [+3]
       54 LOADNIL                          R5
       55 JUMP                             ; [+2]
       56 GETUPVAL                         R6 5
       57 GETTABLE                         R5 R6 R0
       58 JUMPIFNOT                        R1 ; [+2]
       59 LOADK                            R6 K15 ["Disabled"]
       60 JUMP                             ; [+1]
       61 LOADK                            R6 K16 [""]
       62 CALL                             R4 2 1
       63 SETTABLE                         R4 R2 R3
       64 GETUPVAL                         R3 6
       65 GETTABLEKS                       R3 R3 K14 ["None"]
       67 SETTABLEKS                       R3 R2 K12 ["Style"]
       69 RETURN                           R2 1
       70 DUPTABLE                         R2 K17 [{"Style"}]
       71 GETUPVAL                         R5 5
       72 GETTABLE                         R4 R5 R0
       73 GETUPVAL                         R5 6
       74 GETTABLEKS                       R5 R5 K14 ["None"]
       76 JUMPIFNOTEQ                      R4 R5 ; [+5]
       78 GETUPVAL                         R3 6
       79 GETTABLEKS                       R3 R3 K14 ["None"]
       81 JUMP                             ; [+2]
       82 GETUPVAL                         R4 5
       83 GETTABLE                         R3 R4 R0
       84 SETTABLEKS                       R3 R2 K12 ["Style"]
       86 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Style"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["StyleModifier"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Disabled"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETGLOBAL                        R2 K2 ["mapStyle"]
       11 GETTABLEKS                       R3 R0 K3 ["Style"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 2
       17 GETUPVAL                         R5 3
       18 CALL                             R4 1 1
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R0
       21 CALL                             R3 2 1
       22 JUMPIF                           R3 ; [+10]
       23 GETIMPORT                        R3 K5 [print]
       25 LOADK                            R5 K6 ["WARN: %* has no mapping"]
       26 GETTABLEKS                       R7 R0 K3 ["Style"]
       28 NAMECALL                         R5 R5 K7 ["format"]
       30 CALL                             R5 2 1
       31 MOVE                             R4 R5
       32 CALL                             R3 1 0
       33 GETTABLEKS                       R4 R0 K3 ["Style"]
       35 JUMPIFNOTEQKS                    R4 K8 ["Close"] ; [+3]
       37 LOADK                            R3 K9 ["rbxasset://textures/StudioSharedUI/clear.png"]
       38 JUMP                             ; [+2]
       39 GETTABLEKS                       R3 R0 K10 ["Icon"]
       41 GETUPVAL                         R4 4
       42 MOVE                             R5 R0
       43 DUPTABLE                         R6 K14 [{"LeftIcon", "TooltipText", "Disabled", "TextXAlignment"}]
       44 SETTABLEKS                       R3 R6 K11 ["LeftIcon"]
       46 GETTABLEKS                       R7 R0 K15 ["Tooltip"]
       48 SETTABLEKS                       R7 R6 K12 ["TooltipText"]
       50 SETTABLEKS                       R1 R6 K1 ["Disabled"]
       52 GETTABLEKS                       R7 R0 K13 ["TextXAlignment"]
       54 JUMPIF                           R7 ; [+2]
       55 GETIMPORT                        R7 K18 [Enum.TextXAlignment.Center]
       57 SETTABLEKS                       R7 R6 K13 ["TextXAlignment"]
       59 MOVE                             R7 R2
       60 CALL                             R4 3 -1
       61 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETGLOBAL                        R3 K1 ["mapProps"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDevFrameworkIconButtonAsButton"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K6 [require]
       19 GETTABLEKS                       R3 R0 K2 ["UI"]
       21 GETTABLEKS                       R3 R3 K9 ["Components"]
       23 GETTABLEKS                       R3 R3 K10 ["DEPRECATED_Button"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R1 ; [0]
       27 RETURN                           R2 1
       28 GETIMPORT                        R3 K6 [require]
       30 GETTABLEKS                       R4 R0 K4 ["Parent"]
       32 GETTABLEKS                       R4 R4 K11 ["Roact"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R5 R0 K4 ["Parent"]
       37 LOADK                            R7 K12 ["React"]
       38 NAMECALL                         R5 R5 K13 ["FindFirstChild"]
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+8]
       42 GETIMPORT                        R4 K6 [require]
       44 GETTABLEKS                       R5 R0 K4 ["Parent"]
       46 GETTABLEKS                       R5 R5 K12 ["React"]
       48 CALL                             R4 1 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 GETIMPORT                        R5 K6 [require]
       53 GETTABLEKS                       R6 R0 K14 ["Styling"]
       55 GETTABLEKS                       R6 R6 K15 ["joinTags"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K6 [require]
       60 GETTABLEKS                       R7 R0 K16 ["Util"]
       62 GETTABLEKS                       R7 R7 K17 ["StyleModifier"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K6 [require]
       67 GETTABLEKS                       R8 R0 K14 ["Styling"]
       69 GETTABLEKS                       R8 R8 K18 ["supportsStyleSheets"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K6 [require]
       74 GETTABLEKS                       R9 R0 K2 ["UI"]
       76 GETTABLEKS                       R9 R9 K9 ["Components"]
       78 GETTABLEKS                       R9 R9 K19 ["Image"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K6 [require]
       83 GETTABLEKS                       R10 R0 K4 ["Parent"]
       85 GETTABLEKS                       R10 R10 K20 ["Dash"]
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R9 K21 ["join"]
       90 GETTABLEKS                       R11 R9 K22 ["find"]
       92 GETTABLEKS                       R12 R9 K23 ["keys"]
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K2 ["UI"]
       98 GETTABLEKS                       R14 R14 K9 ["Components"]
      100 GETTABLEKS                       R14 R14 K24 ["IconButton"]
      102 CALL                             R13 1 1
      103 DUPTABLE                         R14 K33 [{["Round"], ["RoundSubtle"], ["Close"] = "IconOnly", ["RoundPrimary"] = "PrimaryBrand", ["GameSettingsButton"], ["GameSettingsPrimaryButton"] = "PrimaryBrand"}]
      104 GETTABLEKS                       R15 R9 K34 ["None"]
      106 SETTABLEKS                       R15 R14 K25 ["Round"]
      108 GETTABLEKS                       R15 R9 K34 ["None"]
      110 SETTABLEKS                       R15 R14 K26 ["RoundSubtle"]
      112 GETTABLEKS                       R15 R9 K34 ["None"]
      114 SETTABLEKS                       R15 R14 K31 ["GameSettingsButton"]
      116 DUPCLOSURE                       R15 K35 [PROTO_0]
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R9
      124 SETGLOBAL                        R15 K36 ["mapStyle"]
      126 DUPCLOSURE                       R15 K37 [PROTO_2]
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R10
      132 SETGLOBAL                        R15 K38 ["mapProps"]
      134 DUPCLOSURE                       R15 K39 [PROTO_3]
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R13
      137 RETURN                           R15 1
