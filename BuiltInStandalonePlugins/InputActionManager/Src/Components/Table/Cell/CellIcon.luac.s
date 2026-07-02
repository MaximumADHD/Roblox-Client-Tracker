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
       75 GETTABLEKS                       R2 R0 K32 ["cellType"]
       77 JUMPIFNOTEQKS                    R2 K33 ["Instance"] ; [+34]
       79 GETUPVAL                         R2 1
       80 GETTABLEKS                       R2 R2 K7 ["createElement"]
       82 GETUPVAL                         R3 5
       83 DUPTABLE                         R4 K38 [{["Image"], ["imageRectOffset"], ["imageRectSize"], ["LayoutOrder"], ["ScaleType"], ["tag"] = "icon"}]
       84 GETTABLEKS                       R5 R0 K39 ["buttonIcon"]
       86 GETTABLEKS                       R5 R5 K34 ["Image"]
       88 SETTABLEKS                       R5 R4 K34 ["Image"]
       90 GETTABLEKS                       R5 R0 K39 ["buttonIcon"]
       92 GETTABLEKS                       R5 R5 K40 ["ImageRectOffset"]
       94 SETTABLEKS                       R5 R4 K35 ["imageRectOffset"]
       96 GETTABLEKS                       R5 R0 K39 ["buttonIcon"]
       98 GETTABLEKS                       R5 R5 K41 ["ImageRectSize"]
      100 SETTABLEKS                       R5 R4 K36 ["imageRectSize"]
      102 GETTABLEKS                       R5 R0 K22 ["layoutOrder"]
      104 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      106 GETIMPORT                        R5 K43 [Enum.ScaleType.Fit]
      108 SETTABLEKS                       R5 R4 K37 ["ScaleType"]
      110 CALL                             R2 2 -1
      111 RETURN                           R2 -1
      112 GETTABLEKS                       R2 R0 K44 ["currentIcon"]
      114 JUMPIFNOT                        R2 ; [+24]
      115 GETTABLEKS                       R2 R0 K44 ["currentIcon"]
      117 JUMPIFEQKS                       R2 K45 [""] ; [+21]
      119 GETUPVAL                         R2 1
      120 GETTABLEKS                       R2 R2 K7 ["createElement"]
      122 GETUPVAL                         R3 3
      123 DUPTABLE                         R4 K46 [{["LayoutOrder"], ["name"], ["size"], ["tag"] = "icon"}]
      124 GETTABLEKS                       R5 R0 K22 ["layoutOrder"]
      126 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      128 GETTABLEKS                       R5 R0 K44 ["currentIcon"]
      130 SETTABLEKS                       R5 R4 K13 ["name"]
      132 GETUPVAL                         R5 4
      133 GETTABLEKS                       R5 R5 K23 ["Small"]
      135 SETTABLEKS                       R5 R4 K15 ["size"]
      137 CALL                             R2 2 -1
      138 RETURN                           R2 -1
      139 LOADNIL                          R2
      140 RETURN                           R2 1

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
       35 GETIMPORT                        R8 K5 [require]
       37 GETTABLEKS                       R9 R0 K16 ["Src"]
       39 GETTABLEKS                       R9 R9 K17 ["Types"]
       41 CALL                             R8 1 1
       42 DUPCLOSURE                       R9 K18 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R5
       49 RETURN                           R9 1
