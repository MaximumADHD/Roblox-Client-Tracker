PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["severity"]
        4 GETIMPORT                        R3 K4 [Enum.PropertyStatus.Ok]
        6 JUMPIFEQ                         R2 R3 ; [+68]
        8 GETTABLEKS                       R2 R0 K5 ["message"]
       10 JUMPIFNOT                        R2 ; [+64]
       11 GETTABLEKS                       R2 R0 K6 ["title"]
       13 JUMPIFNOT                        R2 ; [+61]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K7 ["createElement"]
       17 GETUPVAL                         R3 2
       18 DUPTABLE                         R4 K9 [{"text", "title"}]
       19 GETTABLEKS                       R5 R0 K5 ["message"]
       21 SETTABLEKS                       R5 R4 K8 ["text"]
       23 GETTABLEKS                       R5 R0 K6 ["title"]
       25 SETTABLEKS                       R5 R4 K6 ["title"]
       27 DUPTABLE                         R5 K11 [{"Anchor"}]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K7 ["createElement"]
       31 GETUPVAL                         R7 3
       32 DUPTABLE                         R8 K21 [{["LayoutOrder"], ["name"] = "triangle-exclamation", ["size"], ["style"], ["tag"] = "icon", ["testId"] = "status"}]
       33 GETTABLEKS                       R9 R0 K22 ["layoutOrder"]
       35 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       37 GETUPVAL                         R9 4
       38 GETTABLEKS                       R9 R9 K23 ["Small"]
       40 SETTABLEKS                       R9 R8 K15 ["size"]
       42 DUPTABLE                         R9 K25 [{"Color3"}]
       43 GETTABLEKS                       R11 R0 K0 ["severity"]
       45 GETIMPORT                        R12 K27 [Enum.PropertyStatus.Error]
       47 JUMPIFNOTEQ                      R11 R12 ; [+10]
       49 GETTABLEKS                       R10 R1 K28 ["Color"]
       51 GETTABLEKS                       R10 R10 K29 ["System"]
       53 GETTABLEKS                       R10 R10 K30 ["Alert"]
       55 GETTABLEKS                       R10 R10 K24 ["Color3"]
       57 JUMP                             ; [+8]
       58 GETTABLEKS                       R10 R1 K28 ["Color"]
       60 GETTABLEKS                       R10 R10 K29 ["System"]
       62 GETTABLEKS                       R10 R10 K31 ["Warning"]
       64 GETTABLEKS                       R10 R10 K24 ["Color3"]
       66 SETTABLEKS                       R10 R9 K24 ["Color3"]
       68 SETTABLEKS                       R9 R8 K16 ["style"]
       70 CALL                             R6 2 1
       71 SETTABLEKS                       R6 R5 K10 ["Anchor"]
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1
       75 GETUPVAL                         R2 5
       76 CALL                             R2 0 1
       77 JUMPIFNOT                        R2 ; [+26]
       78 GETTABLEKS                       R2 R0 K32 ["displayImage"]
       80 JUMPIFNOT                        R2 ; [+23]
       81 GETTABLEKS                       R2 R0 K32 ["displayImage"]
       83 JUMPIFEQKS                       R2 K33 [""] ; [+20]
       85 GETUPVAL                         R2 1
       86 GETTABLEKS                       R2 R2 K7 ["createElement"]
       88 GETUPVAL                         R3 6
       89 DUPTABLE                         R4 K37 [{["Image"], ["LayoutOrder"], ["ScaleType"], ["tag"] = "icon", ["testId"] = "display-image"}]
       90 GETTABLEKS                       R5 R0 K32 ["displayImage"]
       92 SETTABLEKS                       R5 R4 K34 ["Image"]
       94 GETTABLEKS                       R5 R0 K22 ["layoutOrder"]
       96 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
       98 GETIMPORT                        R5 K39 [Enum.ScaleType.Fit]
      100 SETTABLEKS                       R5 R4 K35 ["ScaleType"]
      102 CALL                             R2 2 -1
      103 RETURN                           R2 -1
      104 GETTABLEKS                       R2 R0 K40 ["cellType"]
      106 JUMPIFNOTEQKS                    R2 K41 ["Instance"] ; [+37]
      108 GETTABLEKS                       R2 R0 K42 ["buttonIcon"]
      110 JUMPIFNOT                        R2 ; [+33]
      111 GETUPVAL                         R2 1
      112 GETTABLEKS                       R2 R2 K7 ["createElement"]
      114 GETUPVAL                         R3 6
      115 DUPTABLE                         R4 K45 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["LayoutOrder"], ["ScaleType"], ["tag"] = "icon"}]
      116 GETTABLEKS                       R5 R0 K42 ["buttonIcon"]
      118 GETTABLEKS                       R5 R5 K34 ["Image"]
      120 SETTABLEKS                       R5 R4 K34 ["Image"]
      122 GETTABLEKS                       R5 R0 K42 ["buttonIcon"]
      124 GETTABLEKS                       R5 R5 K46 ["ImageRectOffset"]
      126 SETTABLEKS                       R5 R4 K43 ["imageRectOffset"]
      128 GETTABLEKS                       R5 R0 K42 ["buttonIcon"]
      130 GETTABLEKS                       R5 R5 K47 ["ImageRectSize"]
      132 SETTABLEKS                       R5 R4 K44 ["imageRectSize"]
      134 GETTABLEKS                       R5 R0 K22 ["layoutOrder"]
      136 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      138 GETIMPORT                        R5 K39 [Enum.ScaleType.Fit]
      140 SETTABLEKS                       R5 R4 K35 ["ScaleType"]
      142 CALL                             R2 2 -1
      143 RETURN                           R2 -1
      144 GETTABLEKS                       R2 R0 K48 ["currentIcon"]
      146 JUMPIFNOT                        R2 ; [+24]
      147 GETTABLEKS                       R2 R0 K48 ["currentIcon"]
      149 JUMPIFEQKS                       R2 K33 [""] ; [+21]
      151 GETUPVAL                         R2 1
      152 GETTABLEKS                       R2 R2 K7 ["createElement"]
      154 GETUPVAL                         R3 3
      155 DUPTABLE                         R4 K49 [{["LayoutOrder"], ["name"], ["size"], ["tag"] = "icon"}]
      156 GETTABLEKS                       R5 R0 K22 ["layoutOrder"]
      158 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      160 GETTABLEKS                       R5 R0 K48 ["currentIcon"]
      162 SETTABLEKS                       R5 R4 K13 ["name"]
      164 GETUPVAL                         R5 4
      165 GETTABLEKS                       R5 R5 K23 ["Small"]
      167 SETTABLEKS                       R5 R4 K15 ["size"]
      169 CALL                             R2 2 -1
      170 RETURN                           R2 -1
      171 LOADNIL                          R2
      172 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETTABLEKS                       R4 R2 K11 ["Icon"]
       27 GETTABLEKS                       R5 R2 K12 ["Image"]
       29 GETTABLEKS                       R6 R2 K13 ["Tooltip"]
       31 GETTABLEKS                       R7 R2 K14 ["Enums"]
       33 GETTABLEKS                       R7 R7 K15 ["IconSize"]
       35 GETTABLEKS                       R8 R0 K16 ["Src"]
       37 GETTABLEKS                       R8 R8 K17 ["Flags"]
       39 GETIMPORT                        R9 K5 [require]
       41 GETTABLEKS                       R10 R8 K18 ["getFFlagIAMUseDisplayImageName"]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R11 R0 K16 ["Src"]
       48 GETTABLEKS                       R11 R11 K19 ["Types"]
       50 CALL                             R10 1 1
       51 DUPCLOSURE                       R11 K20 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R5
       59 RETURN                           R11 1
