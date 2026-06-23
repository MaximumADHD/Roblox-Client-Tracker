PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["severity"]
        4 GETIMPORT                        R3 K4 [Enum.PropertyStatus.Ok]
        6 JUMPIFEQ                         R2 R3 ; [+77]
        8 GETTABLEKS                       R2 R0 K5 ["message"]
       10 JUMPIFNOT                        R2 ; [+73]
       11 GETTABLEKS                       R2 R0 K6 ["title"]
       13 JUMPIFNOT                        R2 ; [+70]
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
       32 DUPTABLE                         R8 K18 [{"LayoutOrder", "name", "size", "style", "tag", "testId"}]
       33 GETTABLEKS                       R9 R0 K19 ["layoutOrder"]
       35 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       37 LOADK                            R9 K20 ["triangle-exclamation"]
       38 SETTABLEKS                       R9 R8 K13 ["name"]
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R9 R9 K21 ["Small"]
       43 SETTABLEKS                       R9 R8 K14 ["size"]
       45 DUPTABLE                         R9 K23 [{"Color3"}]
       46 GETTABLEKS                       R11 R0 K0 ["severity"]
       48 GETIMPORT                        R12 K25 [Enum.PropertyStatus.Error]
       50 JUMPIFNOTEQ                      R11 R12 ; [+10]
       52 GETTABLEKS                       R10 R1 K26 ["Color"]
       54 GETTABLEKS                       R10 R10 K27 ["System"]
       56 GETTABLEKS                       R10 R10 K28 ["Alert"]
       58 GETTABLEKS                       R10 R10 K22 ["Color3"]
       60 JUMP                             ; [+8]
       61 GETTABLEKS                       R10 R1 K26 ["Color"]
       63 GETTABLEKS                       R10 R10 K27 ["System"]
       65 GETTABLEKS                       R10 R10 K29 ["Warning"]
       67 GETTABLEKS                       R10 R10 K22 ["Color3"]
       69 SETTABLEKS                       R10 R9 K22 ["Color3"]
       71 SETTABLEKS                       R9 R8 K15 ["style"]
       73 LOADK                            R9 K30 ["icon"]
       74 SETTABLEKS                       R9 R8 K16 ["tag"]
       76 LOADK                            R9 K31 ["status"]
       77 SETTABLEKS                       R9 R8 K17 ["testId"]
       79 CALL                             R6 2 1
       80 SETTABLEKS                       R6 R5 K10 ["Anchor"]
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1
       84 GETTABLEKS                       R2 R0 K32 ["cellType"]
       86 JUMPIFNOTEQKS                    R2 K33 ["Instance"] ; [+37]
       88 GETUPVAL                         R2 1
       89 GETTABLEKS                       R2 R2 K7 ["createElement"]
       91 GETUPVAL                         R3 5
       92 DUPTABLE                         R4 K38 [{"Image", "imageRectOffset", "imageRectSize", "LayoutOrder", "ScaleType", "tag"}]
       93 GETTABLEKS                       R5 R0 K39 ["buttonIcon"]
       95 GETTABLEKS                       R5 R5 K34 ["Image"]
       97 SETTABLEKS                       R5 R4 K34 ["Image"]
       99 GETTABLEKS                       R5 R0 K39 ["buttonIcon"]
      101 GETTABLEKS                       R5 R5 K40 ["ImageRectOffset"]
      103 SETTABLEKS                       R5 R4 K35 ["imageRectOffset"]
      105 GETTABLEKS                       R5 R0 K39 ["buttonIcon"]
      107 GETTABLEKS                       R5 R5 K41 ["ImageRectSize"]
      109 SETTABLEKS                       R5 R4 K36 ["imageRectSize"]
      111 GETTABLEKS                       R5 R0 K19 ["layoutOrder"]
      113 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      115 GETIMPORT                        R5 K43 [Enum.ScaleType.Fit]
      117 SETTABLEKS                       R5 R4 K37 ["ScaleType"]
      119 LOADK                            R5 K30 ["icon"]
      120 SETTABLEKS                       R5 R4 K16 ["tag"]
      122 CALL                             R2 2 -1
      123 RETURN                           R2 -1
      124 GETTABLEKS                       R2 R0 K44 ["currentIcon"]
      126 JUMPIFNOT                        R2 ; [+27]
      127 GETTABLEKS                       R2 R0 K44 ["currentIcon"]
      129 JUMPIFEQKS                       R2 K45 [""] ; [+24]
      131 GETUPVAL                         R2 1
      132 GETTABLEKS                       R2 R2 K7 ["createElement"]
      134 GETUPVAL                         R3 3
      135 DUPTABLE                         R4 K46 [{"LayoutOrder", "name", "size", "tag"}]
      136 GETTABLEKS                       R5 R0 K19 ["layoutOrder"]
      138 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      140 GETTABLEKS                       R5 R0 K44 ["currentIcon"]
      142 SETTABLEKS                       R5 R4 K13 ["name"]
      144 GETUPVAL                         R5 4
      145 GETTABLEKS                       R5 R5 K21 ["Small"]
      147 SETTABLEKS                       R5 R4 K14 ["size"]
      149 LOADK                            R5 K30 ["icon"]
      150 SETTABLEKS                       R5 R4 K16 ["tag"]
      152 CALL                             R2 2 -1
      153 RETURN                           R2 -1
      154 LOADNIL                          R2
      155 RETURN                           R2 1

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
