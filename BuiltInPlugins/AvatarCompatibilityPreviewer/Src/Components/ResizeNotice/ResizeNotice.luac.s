PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["ContextServices"]
       11 GETTABLEKS                       R2 R3 K3 ["Stylizer"]
       13 LOADK                            R4 K4 ["ResizeNotice"]
       14 NAMECALL                         R2 R2 K2 ["use"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R4 R0 K5 ["Avatar"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 2
       22 LOADB                            R5 1
       23 CALL                             R4 1 1
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R5 R6 K6 ["useEffect"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 1
       31 GETTABLEKS                       R9 R0 K5 ["Avatar"]
       33 GETTABLEKS                       R8 R9 K7 ["WorldModel"]
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 0
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 GETTABLEKS                       R7 R3 K8 ["autoSetupScaleErrorList"]
       42 JUMPIFNOT                        R7 ; [+55]
       43 LOADK                            R9 K4 ["ResizeNotice"]
       44 LOADK                            R10 K9 ["TitleError"]
       45 NAMECALL                         R7 R1 K10 ["getText"]
       47 CALL                             R7 3 1
       48 MOVE                             R5 R7
       49 LOADK                            R9 K4 ["ResizeNotice"]
       50 LOADK                            R10 K11 ["DescriptionError"]
       51 DUPTABLE                         R11 K13 [{"resizePercent"}]
       52 GETTABLEKS                       R13 R3 K14 ["autoSetupResizeProportion"]
       54 JUMPIFNOT                        R13 ; [+4]
       55 GETTABLEKS                       R13 R3 K14 ["autoSetupResizeProportion"]
       57 MULK                             R12 R13 K15 [100]
       58 JUMP                             ; [+1]
       59 LOADN                            R12 100
       60 SETTABLEKS                       R12 R11 K12 ["resizePercent"]
       62 NAMECALL                         R7 R1 K10 ["getText"]
       64 CALL                             R7 4 1
       65 MOVE                             R6 R7
       66 GETTABLEKS                       R7 R3 K8 ["autoSetupScaleErrorList"]
       68 LOADNIL                          R8
       69 LOADNIL                          R9
       70 FORGPREP                         R7
       71 GETUPVAL                         R13 4
       72 GETTABLEKS                       R12 R13 K16 ["ERROR_NO_VALID_SCALE_ERROR"]
       74 JUMPIFNOTEQ                      R11 R12 ; [+7]
       76 LOADK                            R14 K4 ["ResizeNotice"]
       77 LOADK                            R15 K17 ["NoValidScaleError"]
       78 NAMECALL                         R12 R1 K10 ["getText"]
       80 CALL                             R12 3 1
       81 MOVE                             R11 R12
       82 MOVE                             R12 R6
       83 LOADK                            R13 K18 [" "]
       84 MOVE                             R14 R11
       85 CONCAT                           R6 R12 R14
       86 GETIMPORT                        R12 K21 [string.match]
       88 MOVE                             R13 R11
       89 LOADK                            R14 K22 ["%p%s*$"]
       90 CALL                             R12 2 1
       91 JUMPIF                           R12 ; [+3]
       92 MOVE                             R12 R6
       93 LOADK                            R13 K23 ["."]
       94 CONCAT                           R6 R12 R13
       95 FORGLOOP                         R7 2 ; [-25]
       97 JUMP                             ; [+23]
       98 LOADK                            R9 K4 ["ResizeNotice"]
       99 LOADK                            R10 K24 ["Title"]
      100 NAMECALL                         R7 R1 K10 ["getText"]
      102 CALL                             R7 3 1
      103 MOVE                             R5 R7
      104 LOADK                            R9 K4 ["ResizeNotice"]
      105 LOADK                            R10 K25 ["Description"]
      106 DUPTABLE                         R11 K13 [{"resizePercent"}]
      107 GETTABLEKS                       R13 R3 K14 ["autoSetupResizeProportion"]
      109 JUMPIFNOT                        R13 ; [+4]
      110 GETTABLEKS                       R13 R3 K14 ["autoSetupResizeProportion"]
      112 MULK                             R12 R13 K15 [100]
      113 JUMP                             ; [+1]
      114 LOADN                            R12 100
      115 SETTABLEKS                       R12 R11 K12 ["resizePercent"]
      117 NAMECALL                         R7 R1 K10 ["getText"]
      119 CALL                             R7 4 1
      120 MOVE                             R6 R7
      121 GETUPVAL                         R8 3
      122 GETTABLEKS                       R7 R8 K26 ["createElement"]
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R9 R10 K27 ["UI"]
      127 GETTABLEKS                       R8 R9 K28 ["Pane"]
      129 DUPTABLE                         R9 K34 [{"Size", "Position", "AnchorPoint", "AutomaticSize", "Visible"}]
      130 GETTABLEKS                       R10 R2 K29 ["Size"]
      132 SETTABLEKS                       R10 R9 K29 ["Size"]
      134 GETTABLEKS                       R10 R2 K30 ["Position"]
      136 SETTABLEKS                       R10 R9 K30 ["Position"]
      138 GETTABLEKS                       R10 R2 K31 ["AnchorPoint"]
      140 SETTABLEKS                       R10 R9 K31 ["AnchorPoint"]
      142 GETIMPORT                        R10 K37 [Enum.AutomaticSize.Y]
      144 SETTABLEKS                       R10 R9 K32 ["AutomaticSize"]
      146 GETTABLEKS                       R10 R4 K38 ["enabled"]
      148 JUMPIFNOT                        R10 ; [+18]
      149 LOADB                            R10 0
      150 GETTABLEKS                       R11 R3 K39 ["autoSetupOriginalScale"]
      152 JUMPIFEQKNIL                     R11 ; [+14]
      154 LOADB                            R10 0
      155 GETTABLEKS                       R11 R3 K39 ["autoSetupOriginalScale"]
      157 JUMPIFEQKN                       R11 K40 [1] ; [+9]
      159 GETTABLEKS                       R12 R0 K5 ["Avatar"]
      161 GETTABLEKS                       R11 R12 K41 ["WorldModelScale"]
      163 JUMPIFEQKN                       R11 K40 [1] ; [+2]
      165 LOADB                            R10 0 +1
      166 LOADB                            R10 1
      167 SETTABLEKS                       R10 R9 K33 ["Visible"]
      169 DUPTABLE                         R10 K43 [{"Alert"}]
      170 GETUPVAL                         R12 3
      171 GETTABLEKS                       R11 R12 K26 ["createElement"]
      173 GETUPVAL                         R14 0
      174 GETTABLEKS                       R13 R14 K27 ["UI"]
      176 GETTABLEKS                       R12 R13 K42 ["Alert"]
      178 DUPTABLE                         R13 K47 [{"Title", "Description", "PrimaryAction", "OnClose", "Style"}]
      179 SETTABLEKS                       R5 R13 K24 ["Title"]
      181 SETTABLEKS                       R6 R13 K25 ["Description"]
      183 DUPTABLE                         R14 K50 [{"Text", "OnClick"}]
      184 LOADK                            R17 K4 ["ResizeNotice"]
      185 LOADK                            R18 K51 ["RevertAction"]
      186 NAMECALL                         R15 R1 K10 ["getText"]
      188 CALL                             R15 3 1
      189 SETTABLEKS                       R15 R14 K48 ["Text"]
      191 GETTABLEKS                       R15 R3 K52 ["revertScale"]
      193 SETTABLEKS                       R15 R14 K49 ["OnClick"]
      195 SETTABLEKS                       R14 R13 K44 ["PrimaryAction"]
      197 GETTABLEKS                       R14 R4 K53 ["disable"]
      199 SETTABLEKS                       R14 R13 K45 ["OnClose"]
      201 GETTABLEKS                       R15 R3 K8 ["autoSetupScaleErrorList"]
      203 JUMPIFNOT                        R15 ; [+2]
      204 LOADK                            R14 K54 ["Info"]
      205 JUMP                             ; [+1]
      206 LOADK                            R14 K55 ["Success"]
      207 SETTABLEKS                       R14 R13 K46 ["Style"]
      209 CALL                             R11 2 1
      210 SETTABLEKS                       R11 R10 K42 ["Alert"]
      212 CALL                             R7 3 -1
      213 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Resources"]
       36 GETTABLEKS                       R5 R6 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R7 K14 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R8 R9 K15 ["Hooks"]
       52 GETTABLEKS                       R7 R8 K16 ["useResizeAvatarHelper"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Src"]
       59 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       61 GETTABLEKS                       R8 R9 K17 ["useToggleState"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K18 [PROTO_1]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 RETURN                           R8 1
