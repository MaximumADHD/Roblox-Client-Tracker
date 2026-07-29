PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R1 K0 ["GetChildren"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 LOADK                            R10 K1 ["MeshPart"]
        7 NAMECALL                         R8 R7 K2 ["IsA"]
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+3]
       11 GETTABLEKS                       R8 R7 K3 ["Name"]
       13 SETTABLE                         R7 R2 R8
       14 FORGLOOP                         R3 2 ; [-9]
       16 GETTABLEKS                       R3 R0 K4 ["calculateScaleToValidateBoundsAsync"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K5 ["ok"]
       22 JUMPIFNOT                        R4 ; [+20]
       23 GETTABLEKS                       R4 R3 K6 ["Overall"]
       25 GETTABLEKS                       R4 R4 K5 ["ok"]
       27 JUMPIFNOT                        R4 ; [+15]
       28 DUPTABLE                         R4 K11 [{["scale"], ["proportions"], ["errors"] = }]
       29 GETTABLEKS                       R6 R3 K6 ["Overall"]
       31 GETTABLEKS                       R6 R6 K7 ["scale"]
       33 DIVRK                            R5 K12 [1] R6
       34 SETTABLEKS                       R5 R4 K7 ["scale"]
       36 GETTABLEKS                       R5 R3 K6 ["Overall"]
       38 GETTABLEKS                       R5 R5 K13 ["scaleType"]
       40 SETTABLEKS                       R5 R4 K8 ["proportions"]
       42 RETURN                           R4 1
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K14 ["getBodyTypeSizeSpecification"]
       46 LOADK                            R5 K15 ["ProportionsNormal"]
       47 MOVE                             R6 R1
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K16 ["guessAvatarSizeBounds"]
       52 MOVE                             R6 R4
       53 CALL                             R5 1 1
       54 NAMECALL                         R6 R1 K17 ["GetBoundingBox"]
       56 CALL                             R6 1 2
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K18 ["coversMin"]
       60 MOVE                             R9 R7
       61 GETTABLEKS                       R10 R5 K19 ["minSize"]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K20 ["containsMax"]
       67 MOVE                             R10 R7
       68 GETTABLEKS                       R11 R5 K21 ["maxSize"]
       70 CALL                             R9 2 1
       71 JUMPIFNOT                        R8 ; [+18]
       72 JUMPIFNOT                        R9 ; [+17]
       73 DUPTABLE                         R10 K22 [{["scale"] = 1, ["proportions"] = "ProportionsNormal", ["errors"]}]
       74 GETUPVAL                         R11 1
       75 GETTABLEKS                       R11 R11 K23 ["append"]
       77 NEWTABLE                         R12 0 1
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R13 R13 K24 ["ERROR_NO_VALID_SCALE_ERROR"]
       82 SETLIST                          R12 R13 1 [1]
       84 GETTABLEKS                       R13 R3 K9 ["errors"]
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K9 ["errors"]
       89 RETURN                           R10 1
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R11 R11 K26 ["getScaleFactorToContain"]
       93 MOVE                             R12 R7
       94 GETTABLEKS                       R13 R5 K21 ["maxSize"]
       96 CALL                             R11 2 1
       97 ADDK                             R10 R11 K25 [0.001]
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K27 ["getScaleFactorToCover"]
      101 MOVE                             R13 R7
      102 GETTABLEKS                       R14 R5 K19 ["minSize"]
      104 CALL                             R12 2 1
      105 SUBK                             R11 R12 K25 [0.001]
      106 JUMPIFNOTLT                      R11 R10 ; [+17]
      108 DUPTABLE                         R12 K28 [{["scale"], ["proportions"] = "ProportionsNormal", ["errors"]}]
      109 ADD                              R14 R11 R10
      110 DIVK                             R13 R14 K29 [2]
      111 SETTABLEKS                       R13 R12 K7 ["scale"]
      113 NEWTABLE                         R13 0 1
      115 LOADK                            R14 K30 ["There is no scale in which the model fits within the min and max bounding boxes."]
      116 SETLIST                          R13 R14 1 [1]
      118 JUMPIF                           R13 ; [+2]
      119 GETTABLEKS                       R13 R3 K9 ["errors"]
      121 SETTABLEKS                       R13 R12 K9 ["errors"]
      123 RETURN                           R12 1
      124 DUPTABLE                         R12 K28 [{["scale"], ["proportions"] = "ProportionsNormal", ["errors"]}]
      125 ADD                              R14 R11 R10
      126 DIVK                             R13 R14 K29 [2]
      127 SETTABLEKS                       R13 R12 K7 ["scale"]
      129 GETUPVAL                         R13 1
      130 GETTABLEKS                       R13 R13 K23 ["append"]
      132 NEWTABLE                         R14 0 1
      134 GETUPVAL                         R15 2
      135 GETTABLEKS                       R15 R15 K24 ["ERROR_NO_VALID_SCALE_ERROR"]
      137 SETLIST                          R14 R15 1 [1]
      139 GETTABLEKS                       R15 R3 K9 ["errors"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K9 ["errors"]
      144 RETURN                           R12 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["scale"]
        2 LOADK                            R5 K1 ["Humanoid"]
        3 NAMECALL                         R3 R0 K2 ["FindFirstChildWhichIsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 RETURN                           R0 0
        9 LOADK                            R6 K3 ["HumanoidRootPart"]
       10 NAMECALL                         R4 R0 K4 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 JUMPIFNOTEQKNIL                  R4 ; [+2]
       15 RETURN                           R0 0
       16 NAMECALL                         R5 R0 K5 ["GetChildren"]
       18 CALL                             R5 1 1
       19 NAMECALL                         R6 R0 K6 ["GetDescendants"]
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R0 K7 ["PrimaryPart"]
       24 MOVE                             R8 R5
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 FORGPREP                         R8
       28 LOADNIL                          R13
       29 SETTABLEKS                       R13 R12 K8 ["Parent"]
       31 FORGLOOP                         R8 2 ; [-4]
       33 SETTABLEKS                       R0 R3 K8 ["Parent"]
       35 MOVE                             R10 R2
       36 NAMECALL                         R8 R0 K9 ["ScaleTo"]
       38 CALL                             R8 2 0
       39 LOADK                            R9 K10 [{2, 2, 1}]
       40 MUL                              R8 R9 R2
       41 SETTABLEKS                       R8 R4 K11 ["Size"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K12 ["setOriginalSize"]
       46 MOVE                             R9 R4
       47 LOADK                            R10 K10 [{2, 2, 1}]
       48 CALL                             R8 2 0
       49 MOVE                             R8 R6
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 FORGPREP                         R8
       53 LOADK                            R15 K13 ["BasePart"]
       54 NAMECALL                         R13 R12 K14 ["IsA"]
       56 CALL                             R13 2 1
       57 JUMPIFNOT                        R13 ; [+11]
       58 JUMPIFEQ                         R12 R4 ; [+10]
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R13 R13 K12 ["setOriginalSize"]
       63 MOVE                             R14 R12
       64 GETTABLEKS                       R16 R12 K11 ["Size"]
       66 DIV                              R15 R16 R2
       67 CALL                             R13 2 0
       68 JUMP                             ; [+36]
       69 LOADK                            R15 K15 ["Attachment"]
       70 NAMECALL                         R13 R12 K14 ["IsA"]
       72 CALL                             R13 2 1
       73 JUMPIFNOT                        R13 ; [+31]
       74 GETUPVAL                         R13 1
       75 CALL                             R13 0 1
       76 JUMPIFNOT                        R13 ; [+20]
       77 LOADK                            R15 K13 ["BasePart"]
       78 NAMECALL                         R13 R12 K16 ["FindFirstAncestorWhichIsA"]
       80 CALL                             R13 2 1
       81 JUMPIFEQKNIL                     R13 ; [+23]
       83 GETTABLEKS                       R14 R13 K17 ["CFrame"]
       85 GETTABLEKS                       R16 R12 K18 ["WorldPosition"]
       87 NAMECALL                         R14 R14 K19 ["PointToObjectSpace"]
       89 CALL                             R14 2 1
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R15 R15 K20 ["setOriginalPosition"]
       93 MOVE                             R16 R12
       94 DIV                              R17 R14 R2
       95 CALL                             R15 2 0
       96 JUMP                             ; [+8]
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K20 ["setOriginalPosition"]
      100 MOVE                             R14 R12
      101 GETTABLEKS                       R16 R12 K21 ["Position"]
      103 DIV                              R15 R16 R2
      104 CALL                             R13 2 0
      105 FORGLOOP                         R8 2 ; [-53]
      107 MOVE                             R8 R5
      108 LOADNIL                          R9
      109 LOADNIL                          R10
      110 FORGPREP                         R8
      111 SETTABLEKS                       R0 R12 K8 ["Parent"]
      113 FORGLOOP                         R8 2 ; [-3]
      115 SETTABLEKS                       R7 R0 K7 ["PrimaryPart"]
      117 GETUPVAL                         R10 2
      118 GETTABLEKS                       R10 R10 K22 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
      120 MOVE                             R11 R2
      121 NAMECALL                         R8 R0 K23 ["SetAttribute"]
      123 CALL                             R8 3 0
      124 GETTABLEKS                       R8 R1 K24 ["errors"]
      126 JUMPIFNOT                        R8 ; [+13]
      127 GETUPVAL                         R8 3
      128 GETTABLEKS                       R10 R1 K24 ["errors"]
      130 NAMECALL                         R8 R8 K25 ["JSONEncode"]
      132 CALL                             R8 2 1
      133 GETUPVAL                         R11 2
      134 GETTABLEKS                       R11 R11 K26 ["ATTRIBUTE_SCALE_ERROR_LIST"]
      136 MOVE                             R12 R8
      137 NAMECALL                         R9 R0 K23 ["SetAttribute"]
      139 CALL                             R9 3 0
      140 NEWTABLE                         R8 0 0
      142 GETUPVAL                         R9 4
      143 CALL                             R9 0 1
      144 JUMPIFNOT                        R9 ; [+17]
      145 NAMECALL                         R9 R0 K6 ["GetDescendants"]
      147 CALL                             R9 1 3
      148 FORGPREP                         R9
      149 LOADK                            R16 K27 ["WrapLayer"]
      150 NAMECALL                         R14 R13 K14 ["IsA"]
      152 CALL                             R14 2 1
      153 JUMPIFNOT                        R14 ; [+6]
      154 GETTABLEKS                       R14 R13 K8 ["Parent"]
      156 SETTABLE                         R14 R8 R13
      157 LOADNIL                          R14
      158 SETTABLEKS                       R14 R13 K8 ["Parent"]
      160 FORGLOOP                         R9 2 ; [-12]
      162 LOADN                            R11 1
      163 NAMECALL                         R9 R0 K9 ["ScaleTo"]
      165 CALL                             R9 2 0
      166 GETUPVAL                         R9 4
      167 CALL                             R9 0 1
      168 JUMPIFNOT                        R9 ; [+8]
      169 MOVE                             R9 R8
      170 LOADNIL                          R10
      171 LOADNIL                          R11
      172 FORGPREP                         R9
      173 SETTABLEKS                       R13 R12 K8 ["Parent"]
      175 FORGLOOP                         R9 2 ; [-3]
      177 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["FindFirstChild"]
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R3 K0 ["FindFirstChild"]
       11 CALL                             R4 2 1
       12 JUMPIFEQKNIL                     R4 ; [+6]
       14 LOADK                            R7 K1 ["Animation"]
       15 NAMECALL                         R5 R4 K2 ["IsA"]
       17 CALL                             R5 2 1
       18 JUMPIF                           R5 ; [+1]
       19 RETURN                           R0 0
       20 SETTABLEKS                       R2 R4 K3 ["AnimationId"]
       22 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Players"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K6 [Instance.new]
        8 LOADK                            R3 K7 ["HumanoidDescription"]
        9 CALL                             R2 1 1
       10 GETIMPORT                        R4 K1 [game]
       12 LOADK                            R6 K8 ["AsyncRenamesUsedInLuaApps"]
       13 NAMECALL                         R4 R4 K9 ["GetEngineFeature"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+9]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R6 K13 [Enum.HumanoidRigType.R15]
       20 GETIMPORT                        R7 K16 [Enum.AssetTypeVerification.ClientOnly]
       22 NAMECALL                         R3 R1 K17 ["CreateHumanoidModelFromDescriptionAsync"]
       24 CALL                             R3 4 1
       25 JUMP                             ; [+8]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R6 K13 [Enum.HumanoidRigType.R15]
       29 GETIMPORT                        R7 K16 [Enum.AssetTypeVerification.ClientOnly]
       31 NAMECALL                         R3 R1 K18 ["CreateHumanoidModelFromDescription"]
       33 CALL                             R3 4 1
       34 GETTABLEKS                       R4 R3 K19 ["Animate"]
       36 NAMECALL                         R4 R4 K20 ["Clone"]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 0
       40 CALL                             R5 0 1
       41 JUMPIFNOT                        R5 ; [+157]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          VAL R4
       44 LOADK                            R8 K21 ["walk"]
       45 NAMECALL                         R6 R4 K22 ["FindFirstChild"]
       47 CALL                             R6 2 1
       48 JUMPIFNOTEQKNIL                  R6 ; [+2]
       50 JUMP                             ; [+15]
       51 LOADK                            R9 K23 ["WalkAnim"]
       52 NAMECALL                         R7 R6 K22 ["FindFirstChild"]
       54 CALL                             R7 2 1
       55 JUMPIFEQKNIL                     R7 ; [+10]
       57 LOADK                            R10 K24 ["Animation"]
       58 NAMECALL                         R8 R7 K25 ["IsA"]
       60 CALL                             R8 2 1
       61 JUMPIF                           R8 ; [+1]
       62 JUMP                             ; [+3]
       63 LOADK                            R8 K26 ["rbxassetid://16562332340"]
       64 SETTABLEKS                       R8 R7 K27 ["AnimationId"]
       66 LOADK                            R8 K28 ["run"]
       67 NAMECALL                         R6 R4 K22 ["FindFirstChild"]
       69 CALL                             R6 2 1
       70 JUMPIFNOTEQKNIL                  R6 ; [+2]
       72 JUMP                             ; [+15]
       73 LOADK                            R9 K29 ["RunAnim"]
       74 NAMECALL                         R7 R6 K22 ["FindFirstChild"]
       76 CALL                             R7 2 1
       77 JUMPIFEQKNIL                     R7 ; [+10]
       79 LOADK                            R10 K24 ["Animation"]
       80 NAMECALL                         R8 R7 K25 ["IsA"]
       82 CALL                             R8 2 1
       83 JUMPIF                           R8 ; [+1]
       84 JUMP                             ; [+3]
       85 LOADK                            R8 K30 ["rbxassetid://16562326358"]
       86 SETTABLEKS                       R8 R7 K27 ["AnimationId"]
       88 LOADK                            R8 K31 ["idle"]
       89 NAMECALL                         R6 R4 K22 ["FindFirstChild"]
       91 CALL                             R6 2 1
       92 JUMPIFNOTEQKNIL                  R6 ; [+2]
       94 JUMP                             ; [+15]
       95 LOADK                            R9 K32 ["Animation1"]
       96 NAMECALL                         R7 R6 K22 ["FindFirstChild"]
       98 CALL                             R7 2 1
       99 JUMPIFEQKNIL                     R7 ; [+10]
      101 LOADK                            R10 K24 ["Animation"]
      102 NAMECALL                         R8 R7 K25 ["IsA"]
      104 CALL                             R8 2 1
      105 JUMPIF                           R8 ; [+1]
      106 JUMP                             ; [+3]
      107 LOADK                            R8 K33 ["rbxassetid://16562317918"]
      108 SETTABLEKS                       R8 R7 K27 ["AnimationId"]
      110 LOADK                            R8 K34 ["jump"]
      111 NAMECALL                         R6 R4 K22 ["FindFirstChild"]
      113 CALL                             R6 2 1
      114 JUMPIFNOTEQKNIL                  R6 ; [+2]
      116 JUMP                             ; [+15]
      117 LOADK                            R9 K35 ["JumpAnim"]
      118 NAMECALL                         R7 R6 K22 ["FindFirstChild"]
      120 CALL                             R7 2 1
      121 JUMPIFEQKNIL                     R7 ; [+10]
      123 LOADK                            R10 K24 ["Animation"]
      124 NAMECALL                         R8 R7 K25 ["IsA"]
      126 CALL                             R8 2 1
      127 JUMPIF                           R8 ; [+1]
      128 JUMP                             ; [+3]
      129 LOADK                            R8 K36 ["rbxassetid://16562321958"]
      130 SETTABLEKS                       R8 R7 K27 ["AnimationId"]
      132 LOADK                            R8 K37 ["climb"]
      133 NAMECALL                         R6 R4 K22 ["FindFirstChild"]
      135 CALL                             R6 2 1
      136 JUMPIFNOTEQKNIL                  R6 ; [+2]
      138 JUMP                             ; [+15]
      139 LOADK                            R9 K38 ["ClimbAnim"]
      140 NAMECALL                         R7 R6 K22 ["FindFirstChild"]
      142 CALL                             R7 2 1
      143 JUMPIFEQKNIL                     R7 ; [+10]
      145 LOADK                            R10 K24 ["Animation"]
      146 NAMECALL                         R8 R7 K25 ["IsA"]
      148 CALL                             R8 2 1
      149 JUMPIF                           R8 ; [+1]
      150 JUMP                             ; [+3]
      151 LOADK                            R8 K39 ["rbxassetid://16562307212"]
      152 SETTABLEKS                       R8 R7 K27 ["AnimationId"]
      154 LOADK                            R8 K40 ["fall"]
      155 NAMECALL                         R6 R4 K22 ["FindFirstChild"]
      157 CALL                             R6 2 1
      158 JUMPIFNOTEQKNIL                  R6 ; [+2]
      160 JUMP                             ; [+15]
      161 LOADK                            R9 K41 ["FallAnim"]
      162 NAMECALL                         R7 R6 K22 ["FindFirstChild"]
      164 CALL                             R7 2 1
      165 JUMPIFEQKNIL                     R7 ; [+10]
      167 LOADK                            R10 K24 ["Animation"]
      168 NAMECALL                         R8 R7 K25 ["IsA"]
      170 CALL                             R8 2 1
      171 JUMPIF                           R8 ; [+1]
      172 JUMP                             ; [+3]
      173 LOADK                            R8 K42 ["rbxassetid://16562311455"]
      174 SETTABLEKS                       R8 R7 K27 ["AnimationId"]
      176 LOADK                            R8 K43 ["swim"]
      177 NAMECALL                         R6 R4 K22 ["FindFirstChild"]
      179 CALL                             R6 2 1
      180 JUMPIFNOTEQKNIL                  R6 ; [+2]
      182 JUMP                             ; [+65]
      183 LOADK                            R9 K44 ["Swim"]
      184 NAMECALL                         R7 R6 K22 ["FindFirstChild"]
      186 CALL                             R7 2 1
      187 JUMPIFEQKNIL                     R7 ; [+60]
      189 LOADK                            R10 K24 ["Animation"]
      190 NAMECALL                         R8 R7 K25 ["IsA"]
      192 CALL                             R8 2 1
      193 JUMPIF                           R8 ; [+1]
      194 JUMP                             ; [+53]
      195 LOADK                            R8 K42 ["rbxassetid://16562311455"]
      196 SETTABLEKS                       R8 R7 K27 ["AnimationId"]
      198 JUMP                             ; [+49]
      199 GETTABLEKS                       R5 R4 K21 ["walk"]
      201 GETTABLEKS                       R5 R5 K23 ["WalkAnim"]
      203 LOADK                            R6 K26 ["rbxassetid://16562332340"]
      204 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      206 GETTABLEKS                       R5 R4 K28 ["run"]
      208 GETTABLEKS                       R5 R5 K29 ["RunAnim"]
      210 LOADK                            R6 K30 ["rbxassetid://16562326358"]
      211 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      213 GETTABLEKS                       R5 R4 K31 ["idle"]
      215 GETTABLEKS                       R5 R5 K32 ["Animation1"]
      217 LOADK                            R6 K33 ["rbxassetid://16562317918"]
      218 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      220 GETTABLEKS                       R5 R4 K34 ["jump"]
      222 GETTABLEKS                       R5 R5 K35 ["JumpAnim"]
      224 LOADK                            R6 K36 ["rbxassetid://16562321958"]
      225 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      227 GETTABLEKS                       R5 R4 K37 ["climb"]
      229 GETTABLEKS                       R5 R5 K38 ["ClimbAnim"]
      231 LOADK                            R6 K39 ["rbxassetid://16562307212"]
      232 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      234 GETTABLEKS                       R5 R4 K40 ["fall"]
      236 GETTABLEKS                       R5 R5 K41 ["FallAnim"]
      238 LOADK                            R6 K42 ["rbxassetid://16562311455"]
      239 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      241 GETTABLEKS                       R5 R4 K43 ["swim"]
      243 GETTABLEKS                       R5 R5 K44 ["Swim"]
      245 LOADK                            R6 K42 ["rbxassetid://16562311455"]
      246 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      248 LOADK                            R5 K45 ["AnimateScript"]
      249 SETTABLEKS                       R5 R4 K46 ["Name"]
      251 GETUPVAL                         R5 1
      252 SETTABLEKS                       R5 R4 K47 ["Parent"]
      254 MOVE                             R5 R0
      255 MOVE                             R6 R4
      256 CALL                             R5 1 0
      257 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Folder"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+11]
        9 NAMECALL                         R6 R5 K0 ["GetChildren"]
       11 CALL                             R6 1 3
       12 FORGPREP                         R6
       13 SETTABLEKS                       R0 R10 K3 ["Parent"]
       15 FORGLOOP                         R6 2 ; [-3]
       17 NAMECALL                         R6 R5 K4 ["Destroy"]
       19 CALL                             R6 1 0
       20 FORGLOOP                         R1 2 ; [-17]
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["model"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["target model is nil!"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K0 ["model"]
       14 NAMECALL                         R1 R1 K4 ["GetChildren"]
       16 CALL                             R1 1 3
       17 FORGPREP                         R1
       18 GETIMPORT                        R6 K7 [string.find]
       20 GETTABLEKS                       R7 R5 K8 ["Name"]
       22 LOADK                            R8 K9 ["^RBX_BODY_"]
       23 CALL                             R6 2 1
       24 JUMPIFNOT                        R6 ; [+9]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K10 ["getInstanceNameWithoutClassification"]
       28 GETTABLEKS                       R7 R5 K8 ["Name"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R0 K11 ["intendedName"]
       33 RETURN                           R0 0
       34 FORGLOOP                         R1 2 ; [-17]
       36 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["model"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["intendedName"]
        7 JUMPIF                           R2 ; [+4]
        8 GETTABLEKS                       R2 R1 K0 ["model"]
       10 GETTABLEKS                       R2 R2 K2 ["Name"]
       12 GETIMPORT                        R3 K5 [string.match]
       14 GETIMPORT                        R4 K7 [string.lower]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 LOADK                            R6 K8 ["%*$"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K9 ["BODY_MESH_SUFFIX"]
       22 NAMECALL                         R6 R6 K10 ["format"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+14]
       28 LOADN                            R5 1
       29 LENGTH                           R7 R2
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K9 ["BODY_MESH_SUFFIX"]
       33 LENGTH                           R8 R9
       34 SUB                              R6 R7 R8
       35 FASTCALL3                        STRING_SUB R2 R5 R6
       37 MOVE                             R4 R2
       38 GETIMPORT                        R3 K12 [string.sub]
       40 CALL                             R3 3 1
       41 MOVE                             R2 R3
       42 LOADK                            R4 K13 ["%*%*"]
       43 MOVE                             R6 R2
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K14 ["OUTPUT_MODEL_SUFFIX"]
       47 NAMECALL                         R4 R4 K10 ["format"]
       49 CALL                             R4 3 1
       50 MOVE                             R3 R4
       51 SETTABLEKS                       R3 R0 K2 ["Name"]
       53 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["GetBoundingBox"]
        2 CALL                             R1 1 2
        3 GETIMPORT                        R5 K3 [CFrame.new]
        5 LOADN                            R6 0
        6 GETTABLEKS                       R9 R2 K5 ["Y"]
        8 MINUS                            R8 R9
        9 DIVK                             R7 R8 K4 [2]
       10 LOADN                            R8 0
       11 CALL                             R5 3 -1
       12 NAMECALL                         R3 R1 K6 ["ToWorldSpace"]
       14 CALL                             R3 -1 1
       15 GETTABLEKS                       R4 R0 K7 ["PrimaryPart"]
       17 GETTABLEKS                       R5 R0 K7 ["PrimaryPart"]
       19 GETTABLEKS                       R5 R5 K1 ["CFrame"]
       21 MOVE                             R7 R3
       22 NAMECALL                         R5 R5 K8 ["ToObjectSpace"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K9 ["PivotOffset"]
       27 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R1 K4 [table.insert]
       11 CALL                             R1 2 0
       12 NAMECALL                         R1 R0 K5 ["GetDescendants"]
       14 CALL                             R1 1 3
       15 FORGPREP                         R1
       16 LOADK                            R8 K0 ["BasePart"]
       17 NAMECALL                         R6 R5 K1 ["IsA"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+7]
       21 GETUPVAL                         R7 0
       22 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       24 MOVE                             R8 R5
       25 GETIMPORT                        R6 K4 [table.insert]
       27 CALL                             R6 2 0
       28 FORGLOOP                         R1 2 ; [-13]
       30 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["model"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 RETURN                           R1 2
        7 GETTABLEKS                       R1 R0 K1 ["lastFilteredSelection"]
        9 JUMPIF                           R1 ; [+6]
       10 GETTABLEKS                       R1 R0 K0 ["model"]
       12 NAMECALL                         R1 R1 K2 ["GetBoundingBox"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1
       16 GETTABLEKS                       R2 R0 K1 ["lastFilteredSelection"]
       18 LENGTH                           R1 R2
       19 JUMPIFNOTEQKN                    R1 K3 [1] ; [+23]
       21 GETTABLEKS                       R2 R0 K1 ["lastFilteredSelection"]
       23 GETTABLEN                        R1 R2 1
       24 LOADK                            R4 K4 ["BasePart"]
       25 NAMECALL                         R2 R1 K5 ["IsA"]
       27 CALL                             R2 2 1
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETTABLEKS                       R2 R1 K6 ["CFrame"]
       31 GETTABLEKS                       R3 R1 K7 ["Size"]
       33 RETURN                           R2 2
       34 LOADK                            R4 K8 ["Model"]
       35 NAMECALL                         R2 R1 K5 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIFNOT                        R2 ; [+4]
       39 NAMECALL                         R2 R1 K2 ["GetBoundingBox"]
       41 CALL                             R2 1 -1
       42 RETURN                           R2 -1
       43 NEWTABLE                         R1 0 0
       45 NEWCLOSURE                       R2 P0
       46 CAPTURE                          VAL R1
       47 GETTABLEKS                       R3 R0 K1 ["lastFilteredSelection"]
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 FORGPREP                         R3
       52 MOVE                             R8 R2
       53 MOVE                             R9 R7
       54 CALL                             R8 1 0
       55 FORGLOOP                         R3 2 ; [-4]
       57 LENGTH                           R3 R1
       58 JUMPIFNOTEQKN                    R3 K3 [1] ; [+8]
       60 GETTABLEN                        R3 R1 1
       61 GETTABLEKS                       R3 R3 K6 ["CFrame"]
       63 GETTABLEN                        R4 R1 1
       64 GETTABLEKS                       R4 R4 K7 ["Size"]
       66 RETURN                           R3 2
       67 LENGTH                           R3 R1
       68 LOADN                            R4 0
       69 JUMPIFNOTLT                      R4 R3 ; [+15]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K9 ["getAABoundingBox"]
       74 MOVE                             R4 R1
       75 GETIMPORT                        R5 K11 [CFrame.new]
       77 CALL                             R5 0 -1
       78 CALL                             R3 -1 2
       79 GETIMPORT                        R5 K11 [CFrame.new]
       81 MOVE                             R6 R3
       82 CALL                             R5 1 1
       83 MOVE                             R6 R4
       84 RETURN                           R5 2
       85 GETTABLEKS                       R3 R0 K0 ["model"]
       87 NAMECALL                         R3 R3 K2 ["GetBoundingBox"]
       89 CALL                             R3 1 -1
       90 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["Y"]
        3 DIVK                             R2 R3 K0 [2]
        4 LOADN                            R3 1
        5 LOADN                            R4 512
        6 FASTCALL                         MATH_CLAMP ; [+2]
        7 GETIMPORT                        R1 K4 [math.clamp]
        9 CALL                             R1 3 1
       10 LOADN                            R4 0
       11 DIVK                             R5 R1 K0 [2]
       12 LOADN                            R6 0
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R3 K7 [Vector3.new]
       16 CALL                             R3 3 1
       17 ADD                              R2 R0 R3
       18 GETUPVAL                         R3 1
       19 MOVE                             R5 R2
       20 GETUPVAL                         R6 2
       21 LOADN                            R8 0
       22 MINUS                            R9 R1
       23 LOADN                            R10 0
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R7 K7 [Vector3.new]
       27 CALL                             R7 3 1
       28 GETUPVAL                         R8 3
       29 NAMECALL                         R3 R3 K8 ["Blockcast"]
       31 CALL                             R3 5 1
       32 JUMPIF                           R3 ; [+1]
       33 RETURN                           R0 1
       34 GETIMPORT                        R4 K10 [CFrame.new]
       36 GETTABLEKS                       R5 R2 K11 ["X"]
       38 GETTABLEKS                       R7 R3 K12 ["Position"]
       40 GETTABLEKS                       R7 R7 K1 ["Y"]
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R9 R9 K1 ["Y"]
       45 DIVK                             R8 R9 K0 [2]
       46 ADD                              R6 R7 R8
       47 GETTABLEKS                       R7 R2 K13 ["Z"]
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R1 R1 K0 ["GetPartBoundsInBox"]
        6 CALL                             R1 4 1
        7 GETIMPORT                        R2 K2 [next]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["X"]
        3 DIVK                             R2 R3 K0 [2]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["X"]
        7 DIVK                             R3 R4 K0 [2]
        8 ADD                              R1 R2 R3
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["X"]
       12 ADDK                             R3 R4 K0 [2]
       13 SUBK                             R4 R0 K2 [1]
       14 MUL                              R2 R3 R4
       15 ADD                              R1 R1 R2
       16 GETUPVAL                         R5 2
       17 GETIMPORT                        R6 K5 [CFrame.new]
       19 LOADN                            R7 0
       20 GETUPVAL                         R10 3
       21 GETTABLEKS                       R10 R10 K6 ["Y"]
       23 MINUS                            R9 R10
       24 DIVK                             R8 R9 K0 [2]
       25 LOADN                            R9 0
       26 CALL                             R6 3 1
       27 MUL                              R4 R5 R6
       28 GETIMPORT                        R5 K5 [CFrame.new]
       30 LOADN                            R6 0
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K6 ["Y"]
       34 DIVK                             R7 R8 K0 [2]
       35 LOADN                            R8 0
       36 CALL                             R5 3 1
       37 MUL                              R3 R4 R5
       38 GETIMPORT                        R4 K5 [CFrame.new]
       40 MINUS                            R5 R1
       41 LOADN                            R6 0
       42 LOADN                            R7 0
       43 CALL                             R4 3 1
       44 MUL                              R2 R3 R4
       45 GETUPVAL                         R3 5
       46 MOVE                             R4 R2
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1

PROTO_14:
        0 LOADN                            R2 1
        1 LOADN                            R0 10
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 1
        8 MOVE                             R7 R3
        9 GETUPVAL                         R8 2
       10 GETUPVAL                         R9 3
       11 NAMECALL                         R5 R5 K0 ["GetPartBoundsInBox"]
       13 CALL                             R5 4 1
       14 GETIMPORT                        R6 K2 [next]
       16 MOVE                             R7 R5
       17 CALL                             R6 1 1
       18 JUMPIFNOT                        R6 ; [+2]
       19 LOADB                            R4 0
       20 JUMP                             ; [+1]
       21 LOADB                            R4 1
       22 JUMPIFNOT                        R4 ; [+1]
       23 RETURN                           R3 1
       24 GETUPVAL                         R4 0
       25 MINUS                            R5 R2
       26 CALL                             R4 1 1
       27 GETUPVAL                         R6 1
       28 MOVE                             R8 R4
       29 GETUPVAL                         R9 2
       30 GETUPVAL                         R10 3
       31 NAMECALL                         R6 R6 K0 ["GetPartBoundsInBox"]
       33 CALL                             R6 4 1
       34 GETIMPORT                        R7 K2 [next]
       36 MOVE                             R8 R6
       37 CALL                             R7 1 1
       38 JUMPIFNOT                        R7 ; [+2]
       39 LOADB                            R5 0
       40 JUMP                             ; [+1]
       41 LOADB                            R5 1
       42 JUMPIFNOT                        R5 ; [+1]
       43 RETURN                           R4 1
       44 FORNLOOP                         R0
       45 GETUPVAL                         R0 0
       46 LOADN                            R1 1
       47 CALL                             R0 1 -1
       48 RETURN                           R0 -1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["model"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["getTargetBoundingBox"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 2
       10 JUMPIFEQKNIL                     R2 ; [+3]
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K2 ["axisAlignedBoxSize"]
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 CALL                             R5 2 1
       24 MOVE                             R8 R5
       25 NAMECALL                         R6 R4 K3 ["VectorToWorldSpace"]
       27 CALL                             R6 2 1
       28 NAMECALL                         R7 R0 K4 ["GetBoundingBox"]
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 1
       32 MOVE                             R10 R7
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R10 R10 K2 ["axisAlignedBoxSize"]
       37 MOVE                             R11 R7
       38 MOVE                             R12 R8
       39 CALL                             R10 2 1
       40 MOVE                             R13 R10
       41 NAMECALL                         R11 R9 K3 ["VectorToWorldSpace"]
       43 CALL                             R11 2 1
       44 LOADK                            R13 K5 [{0.75, 0.75, 0.75}]
       45 MUL                              R12 R8 R13
       46 GETIMPORT                        R13 K8 [OverlapParams.new]
       48 CALL                             R13 0 1
       49 LOADB                            R14 1
       50 SETTABLEKS                       R14 R13 K9 ["RespectCanCollide"]
       52 LOADN                            R14 1
       53 SETTABLEKS                       R14 R13 K10 ["MaxParts"]
       55 NEWTABLE                         R14 0 2
       57 MOVE                             R15 R0
       58 GETUPVAL                         R16 3
       59 GETTABLEKS                       R16 R16 K11 ["CurrentCamera"]
       61 SETLIST                          R14 R15 2 [1]
       63 SETTABLEKS                       R14 R13 K12 ["FilterDescendantsInstances"]
       65 GETIMPORT                        R14 K16 [Enum.RaycastFilterType.Exclude]
       67 SETTABLEKS                       R14 R13 K17 ["FilterType"]
       69 GETIMPORT                        R14 K19 [RaycastParams.new]
       71 CALL                             R14 0 1
       72 NEWTABLE                         R15 0 2
       74 MOVE                             R16 R0
       75 GETUPVAL                         R17 3
       76 GETTABLEKS                       R17 R17 K11 ["CurrentCamera"]
       78 SETLIST                          R15 R16 2 [1]
       80 SETTABLEKS                       R15 R14 K12 ["FilterDescendantsInstances"]
       82 GETIMPORT                        R15 K16 [Enum.RaycastFilterType.Exclude]
       84 SETTABLEKS                       R15 R14 K17 ["FilterType"]
       86 LOADB                            R15 0
       87 SETTABLEKS                       R15 R14 K20 ["IgnoreWater"]
       89 NEWCLOSURE                       R15 P0
       90 CAPTURE                          VAL R10
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R14
       94 NEWCLOSURE                       R16 P1
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 NEWCLOSURE                       R17 P2
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R15
      105 NEWCLOSURE                       R18 P3
      106 CAPTURE                          VAL R17
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R13
      110 MOVE                             R19 R18
      111 CALL                             R19 0 1
      112 JUMPIFNOTEQKNIL                  R19 ; [+2]
      114 RETURN                           R0 0
      115 GETTABLEKS                       R20 R0 K21 ["PrimaryPart"]
      117 GETTABLEKS                       R20 R20 K22 ["CFrame"]
      119 MOVE                             R23 R20
      120 NAMECALL                         R21 R7 K23 ["ToObjectSpace"]
      122 CALL                             R21 2 1
      123 MOVE                             R24 R21
      124 NAMECALL                         R22 R19 K24 ["ToWorldSpace"]
      126 CALL                             R22 2 1
      127 MOVE                             R25 R22
      128 NAMECALL                         R23 R0 K25 ["SetPrimaryPartCFrame"]
      130 CALL                             R23 2 0
      131 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AvatarCreation"]
        2 LOADK                            R5 K1 ["Avatar Creation"]
        3 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K3 ["setPivotOffset"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["CurrentCamera"]
       14 JUMPIFEQKNIL                     R3 ; [+7]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K5 ["getViewTargetPosition"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K6 [{0, 0, 0}]
       23 GETIMPORT                        R7 K9 [CFrame.new]
       25 MOVE                             R8 R4
       26 CALL                             R7 1 -1
       27 NAMECALL                         R5 R1 K10 ["PivotTo"]
       29 CALL                             R5 -1 0
       30 GETUPVAL                         R5 2
       31 SETTABLEKS                       R5 R1 K11 ["Parent"]
       33 NEWTABLE                         R7 0 1
       35 MOVE                             R8 R1
       36 SETLIST                          R7 R8 1 [1]
       38 NAMECALL                         R5 R0 K12 ["Set"]
       40 CALL                             R5 2 0
       41 JUMPIFEQKNIL                     R2 ; [+8]
       43 GETUPVAL                         R5 0
       44 MOVE                             R7 R2
       45 GETIMPORT                        R8 K16 [Enum.FinishRecordingOperation.Commit]
       47 NAMECALL                         R5 R5 K17 ["FinishRecording"]
       49 CALL                             R5 3 0
       50 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 NAMECALL                         R7 R6 K2 ["Clone"]
       13 CALL                             R7 1 1
       14 JUMPIFNOT                        R7 ; [+13]
       15 SETTABLEKS                       R0 R7 K3 ["Parent"]
       17 LOADK                            R10 K4 ["Accessory"]
       18 NAMECALL                         R8 R7 K5 ["IsA"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+6]
       22 GETTABLEKS                       R8 R0 K0 ["Humanoid"]
       24 MOVE                             R10 R7
       25 NAMECALL                         R8 R8 K6 ["AddAccessory"]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R2 2 ; [-18]
       30 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["MeshPart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+54]
        9 LOADK                            R8 K3 ["SurfaceAppearance"]
       10 NAMECALL                         R6 R5 K4 ["FindFirstChildWhichIsA"]
       12 CALL                             R6 2 1
       13 JUMPIFEQKNIL                     R6 ; [+29]
       15 GETUPVAL                         R7 0
       16 CALL                             R7 0 1
       17 JUMPIFNOT                        R7 ; [+7]
       18 GETTABLEKS                       R7 R5 K5 ["TextureID"]
       20 JUMPIFEQKS                       R7 K6 [""] ; [+4]
       22 LOADK                            R7 K6 [""]
       23 SETTABLEKS                       R7 R5 K5 ["TextureID"]
       25 GETUPVAL                         R7 1
       26 CALL                             R7 0 1
       27 JUMPIFNOT                        R7 ; [+35]
       28 GETIMPORT                        R7 K9 [table.find]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K10 ["LIMBS"]
       33 GETTABLEKS                       R9 R5 K11 ["Name"]
       35 CALL                             R7 2 1
       36 JUMPIFEQKNIL                     R7 ; [+26]
       38 GETIMPORT                        R7 K15 [Enum.AlphaMode.Overlay]
       40 SETTABLEKS                       R7 R6 K13 ["AlphaMode"]
       42 JUMP                             ; [+20]
       43 GETTABLEKS                       R7 R5 K5 ["TextureID"]
       45 JUMPIFEQKS                       R7 K6 [""] ; [+17]
       47 GETIMPORT                        R7 K18 [Instance.new]
       49 LOADK                            R8 K3 ["SurfaceAppearance"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R5 K5 ["TextureID"]
       53 SETTABLEKS                       R8 R7 K19 ["ColorMap"]
       55 SETTABLEKS                       R5 R7 K20 ["Parent"]
       57 GETUPVAL                         R8 0
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+3]
       60 LOADK                            R8 K6 [""]
       61 SETTABLEKS                       R8 R5 K5 ["TextureID"]
       63 FORGLOOP                         R1 2 ; [-60]
       65 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getAssetClassificationFromName"]
        6 GETTABLEKS                       R2 R0 K1 ["Name"]
        8 CALL                             R1 1 1
        9 NEWTABLE                         R2 0 3
       11 LOADK                            R3 K2 ["Layered"]
       12 LOADK                            R4 K3 ["EyeLayered"]
       13 LOADK                            R5 K4 ["Rigid"]
       14 SETLIST                          R2 R3 3 [1]
       16 GETIMPORT                        R4 K7 [table.find]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R1
       20 CALL                             R4 2 1
       21 JUMPIFNOTEQKNIL                  R4 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 RETURN                           R3 1
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K8 ["startsWith"]
       29 GETTABLEKS                       R2 R0 K1 ["Name"]
       31 LOADK                            R3 K9 ["RBX_LC_"]
       32 CALL                             R1 2 1
       33 JUMPIF                           R1 ; [+7]
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R1 R1 K8 ["startsWith"]
       37 GETTABLEKS                       R2 R0 K1 ["Name"]
       39 LOADK                            R3 K10 ["RBX_RIGID_"]
       40 CALL                             R1 2 1
       41 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+40]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["isPreSetupAutoSetupClothes"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["getAssetClassificationFromName"]
       13 GETTABLEKS                       R2 R0 K2 ["Name"]
       15 CALL                             R1 1 1
       16 JUMPIFEQKS                       R1 K3 ["Layered"] ; [+3]
       18 JUMPIFNOTEQKS                    R1 K4 ["EyeLayered"] ; [+15]
       20 LOADK                            R4 K5 ["WrapLayer"]
       21 NAMECALL                         R2 R0 K6 ["FindFirstChildWhichIsA"]
       23 CALL                             R2 2 1
       24 JUMPIFEQKNIL                     R2 ; [+9]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K7 ["getInstanceNameWithoutClassification"]
       29 GETTABLEKS                       R4 R2 K2 ["Name"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K2 ["Name"]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K7 ["getInstanceNameWithoutClassification"]
       37 GETTABLEKS                       R3 R0 K2 ["Name"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R0 K2 ["Name"]
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 3
       44 GETTABLEKS                       R1 R1 K8 ["startsWith"]
       46 GETTABLEKS                       R2 R0 K2 ["Name"]
       48 LOADK                            R3 K9 ["RBX_LC_"]
       49 CALL                             R1 2 1
       50 JUMPIFNOT                        R1 ; [+33]
       51 GETUPVAL                         R1 3
       52 GETTABLEKS                       R1 R1 K10 ["removePrefix"]
       54 GETTABLEKS                       R2 R0 K2 ["Name"]
       56 LOADK                            R3 K9 ["RBX_LC_"]
       57 CALL                             R1 2 1
       58 SETTABLEKS                       R1 R0 K2 ["Name"]
       60 LOADK                            R3 K5 ["WrapLayer"]
       61 NAMECALL                         R1 R0 K6 ["FindFirstChildWhichIsA"]
       63 CALL                             R1 2 1
       64 JUMPIFEQKNIL                     R1 ; [+36]
       66 GETUPVAL                         R2 3
       67 GETTABLEKS                       R2 R2 K8 ["startsWith"]
       69 GETTABLEKS                       R3 R1 K2 ["Name"]
       71 LOADK                            R4 K9 ["RBX_LC_"]
       72 CALL                             R2 2 1
       73 JUMPIFNOT                        R2 ; [+27]
       74 GETUPVAL                         R2 3
       75 GETTABLEKS                       R2 R2 K10 ["removePrefix"]
       77 GETTABLEKS                       R3 R1 K2 ["Name"]
       79 LOADK                            R4 K9 ["RBX_LC_"]
       80 CALL                             R2 2 1
       81 SETTABLEKS                       R2 R1 K2 ["Name"]
       83 RETURN                           R0 0
       84 GETUPVAL                         R1 3
       85 GETTABLEKS                       R1 R1 K8 ["startsWith"]
       87 GETTABLEKS                       R2 R0 K2 ["Name"]
       89 LOADK                            R3 K11 ["RBX_RIGID_"]
       90 CALL                             R1 2 1
       91 JUMPIFNOT                        R1 ; [+9]
       92 GETUPVAL                         R1 3
       93 GETTABLEKS                       R1 R1 K10 ["removePrefix"]
       95 GETTABLEKS                       R2 R0 K2 ["Name"]
       97 LOADK                            R3 K11 ["RBX_RIGID_"]
       98 CALL                             R1 2 1
       99 SETTABLEKS                       R1 R0 K2 ["Name"]
      101 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["MeshPart"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+12]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K3 ["isPreSetupAutoSetupClothes"]
       12 MOVE                             R8 R6
       13 CALL                             R7 1 1
       14 JUMPIFNOT                        R7 ; [+6]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K4 ["setAvatarPartScaleType"]
       18 MOVE                             R8 R6
       19 MOVE                             R9 R1
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-18]
       23 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["types"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIF                           R2 ; [+10]
        5 GETIMPORT                        R3 K2 [warn]
        7 LOADK                            R5 K3 ["Unknown scalingType %*"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K4 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 LOADK                            R5 K5 ["Humanoid"]
       16 NAMECALL                         R3 R0 K6 ["FindFirstChild"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K7 ["setAvatarPartScaleTypeValueObjects"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K8 ["setBodyProportionScale"]
       31 GETTABLEKS                       R4 R0 K5 ["Humanoid"]
       33 GETTABLEKS                       R5 R2 K9 ["BodyProportionScale"]
       35 CALL                             R3 2 0
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K10 ["setBodyTypeScale"]
       39 GETTABLEKS                       R4 R0 K5 ["Humanoid"]
       41 GETTABLEKS                       R5 R2 K11 ["BodyTypeScale"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_24:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K0 ["Parent"]
       10 JUMPIFEQKNIL                     R8 ; [+24]
       12 LOADK                            R11 K1 ["MeshPart"]
       13 NAMECALL                         R9 R8 K2 ["IsA"]
       15 CALL                             R9 2 1
       16 JUMPIFNOT                        R9 ; [+18]
       17 GETTABLEKS                       R9 R8 K3 ["Size"]
       19 GETTABLEKS                       R12 R9 K4 ["X"]
       21 GETTABLEKS                       R13 R9 K5 ["Y"]
       23 MUL                              R11 R12 R13
       24 GETTABLEKS                       R12 R9 K6 ["Z"]
       26 MUL                              R10 R11 R12
       27 SETTABLE                         R10 R1 R7
       28 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       30 MOVE                             R12 R2
       31 MOVE                             R13 R7
       32 GETIMPORT                        R11 K9 [table.insert]
       34 CALL                             R11 2 0
       35 FORGLOOP                         R3 2 ; [-28]
       37 GETIMPORT                        R3 K11 [table.sort]
       39 MOVE                             R4 R2
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R1
       42 CALL                             R3 2 0
       43 MOVE                             R3 R2
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 SETTABLEKS                       R6 R7 K12 ["Order"]
       49 FORGLOOP                         R3 2 ; [-3]
       51 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R1 1
        8 LOADK                            R5 K1 ["BasePart"]
        9 NAMECALL                         R3 R2 K2 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R3 R2 K3 ["Color"]
       16 RETURN                           R3 1

PROTO_26:
        0 LOADK                            R3 K0 ["BodyColors"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 GETIMPORT                        R3 K4 [Instance.new]
       10 LOADK                            R4 K0 ["BodyColors"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R5 R3 K5 ["HeadColor3"]
       14 LOADK                            R8 K6 ["Head"]
       15 NAMECALL                         R6 R0 K7 ["FindFirstChild"]
       17 CALL                             R6 2 1
       18 JUMPIFNOTEQKNIL                  R6 ; [+3]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+9]
       22 LOADK                            R9 K8 ["BasePart"]
       23 NAMECALL                         R7 R6 K9 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIF                           R7 ; [+2]
       27 MOVE                             R4 R5
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R4 R6 K10 ["Color"]
       31 SETTABLEKS                       R4 R3 K5 ["HeadColor3"]
       33 GETTABLEKS                       R5 R3 K11 ["TorsoColor3"]
       35 LOADK                            R8 K12 ["UpperTorso"]
       36 NAMECALL                         R6 R0 K7 ["FindFirstChild"]
       38 CALL                             R6 2 1
       39 JUMPIFNOTEQKNIL                  R6 ; [+3]
       41 MOVE                             R4 R5
       42 JUMP                             ; [+9]
       43 LOADK                            R9 K8 ["BasePart"]
       44 NAMECALL                         R7 R6 K9 ["IsA"]
       46 CALL                             R7 2 1
       47 JUMPIF                           R7 ; [+2]
       48 MOVE                             R4 R5
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R4 R6 K10 ["Color"]
       52 SETTABLEKS                       R4 R3 K11 ["TorsoColor3"]
       54 GETTABLEKS                       R5 R3 K13 ["LeftArmColor3"]
       56 LOADK                            R8 K14 ["LeftUpperArm"]
       57 NAMECALL                         R6 R0 K7 ["FindFirstChild"]
       59 CALL                             R6 2 1
       60 JUMPIFNOTEQKNIL                  R6 ; [+3]
       62 MOVE                             R4 R5
       63 JUMP                             ; [+9]
       64 LOADK                            R9 K8 ["BasePart"]
       65 NAMECALL                         R7 R6 K9 ["IsA"]
       67 CALL                             R7 2 1
       68 JUMPIF                           R7 ; [+2]
       69 MOVE                             R4 R5
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R4 R6 K10 ["Color"]
       73 SETTABLEKS                       R4 R3 K13 ["LeftArmColor3"]
       75 GETTABLEKS                       R5 R3 K13 ["LeftArmColor3"]
       77 LOADK                            R8 K15 ["RightUpperArm"]
       78 NAMECALL                         R6 R0 K7 ["FindFirstChild"]
       80 CALL                             R6 2 1
       81 JUMPIFNOTEQKNIL                  R6 ; [+3]
       83 MOVE                             R4 R5
       84 JUMP                             ; [+9]
       85 LOADK                            R9 K8 ["BasePart"]
       86 NAMECALL                         R7 R6 K9 ["IsA"]
       88 CALL                             R7 2 1
       89 JUMPIF                           R7 ; [+2]
       90 MOVE                             R4 R5
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R4 R6 K10 ["Color"]
       94 SETTABLEKS                       R4 R3 K16 ["RightArmColor3"]
       96 GETTABLEKS                       R5 R3 K17 ["LeftLegColor3"]
       98 LOADK                            R8 K18 ["LeftUpperLeg"]
       99 NAMECALL                         R6 R0 K7 ["FindFirstChild"]
      101 CALL                             R6 2 1
      102 JUMPIFNOTEQKNIL                  R6 ; [+3]
      104 MOVE                             R4 R5
      105 JUMP                             ; [+9]
      106 LOADK                            R9 K8 ["BasePart"]
      107 NAMECALL                         R7 R6 K9 ["IsA"]
      109 CALL                             R7 2 1
      110 JUMPIF                           R7 ; [+2]
      111 MOVE                             R4 R5
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R4 R6 K10 ["Color"]
      115 SETTABLEKS                       R4 R3 K17 ["LeftLegColor3"]
      117 GETTABLEKS                       R5 R3 K19 ["RightLegColor3"]
      119 LOADK                            R8 K20 ["RightUpperLeg"]
      120 NAMECALL                         R6 R0 K7 ["FindFirstChild"]
      122 CALL                             R6 2 1
      123 JUMPIFNOTEQKNIL                  R6 ; [+3]
      125 MOVE                             R4 R5
      126 JUMP                             ; [+9]
      127 LOADK                            R9 K8 ["BasePart"]
      128 NAMECALL                         R7 R6 K9 ["IsA"]
      130 CALL                             R7 2 1
      131 JUMPIF                           R7 ; [+2]
      132 MOVE                             R4 R5
      133 JUMP                             ; [+2]
      134 GETTABLEKS                       R4 R6 K10 ["Color"]
      136 SETTABLEKS                       R4 R3 K19 ["RightLegColor3"]
      138 SETTABLEKS                       R0 R3 K21 ["Parent"]
      140 RETURN                           R0 0

PROTO_27:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BasePart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+10]
        9 GETIMPORT                        R6 K5 [string.find]
       11 GETTABLEKS                       R7 R5 K6 ["Name"]
       13 LOADK                            R8 K7 ["_Att"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+3]
       16 NAMECALL                         R6 R5 K8 ["Remove"]
       18 CALL                             R6 1 0
       19 FORGLOOP                         R1 2 ; [-16]
       21 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 NAMECALL                         R5 R0 K0 ["GetChildren"]
        8 CALL                             R5 1 3
        9 FORGPREP                         R5
       10 LOADK                            R12 K1 ["MeshPart"]
       11 NAMECALL                         R10 R9 K2 ["IsA"]
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+93]
       15 GETUPVAL                         R10 1
       16 CALL                             R10 0 1
       17 JUMPIF                           R10 ; [+18]
       18 GETUPVAL                         R10 2
       19 GETTABLEKS                       R10 R10 K3 ["isPreSetupAutoSetupClothes"]
       21 MOVE                             R11 R9
       22 CALL                             R10 1 1
       23 JUMPIFNOT                        R10 ; [+12]
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R10 R10 K4 ["removePreSetupAutoSetupClothesPrefix"]
       27 MOVE                             R11 R9
       28 CALL                             R10 1 0
       29 GETUPVAL                         R12 3
       30 GETTABLEKS                       R12 R12 K5 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       32 LOADB                            R13 1
       33 NAMECALL                         R10 R9 K6 ["SetAttribute"]
       35 CALL                             R10 3 0
       36 NAMECALL                         R10 R9 K0 ["GetChildren"]
       38 CALL                             R10 1 3
       39 FORGPREP                         R10
       40 LOADK                            R17 K7 ["WrapLayer"]
       41 NAMECALL                         R15 R14 K2 ["IsA"]
       43 CALL                             R15 2 1
       44 JUMPIFNOT                        R15 ; [+27]
       45 GETUPVAL                         R15 1
       46 CALL                             R15 0 1
       47 JUMPIFNOT                        R15 ; [+13]
       48 GETUPVAL                         R15 4
       49 GETTABLEKS                       R15 R15 K8 ["getAssetClassificationFromName"]
       51 GETTABLEKS                       R16 R9 K9 ["Name"]
       53 CALL                             R15 1 1
       54 JUMPIFNOTEQKS                    R15 K10 ["EyeLayered"] ; [+6]
       56 GETIMPORT                        R15 K14 [Enum.WrapLayerAutoSkin.EnabledOverride]
       58 SETTABLEKS                       R15 R14 K15 ["AutoSkin"]
       60 JUMP                             ; [+4]
       61 GETIMPORT                        R15 K17 [Enum.WrapLayerAutoSkin.EnabledPreserve]
       63 SETTABLEKS                       R15 R14 K15 ["AutoSkin"]
       65 FASTCALL2                        TABLE_INSERT R4 R14 ; [+5]
       67 MOVE                             R16 R4
       68 MOVE                             R17 R14
       69 GETIMPORT                        R15 K20 [table.insert]
       71 CALL                             R15 2 0
       72 FORGLOOP                         R10 2 ; [-33]
       74 GETUPVAL                         R10 1
       75 CALL                             R10 0 1
       76 JUMPIFNOT                        R10 ; [+18]
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R10 R10 K3 ["isPreSetupAutoSetupClothes"]
       80 MOVE                             R11 R9
       81 CALL                             R10 1 1
       82 JUMPIFNOT                        R10 ; [+12]
       83 GETUPVAL                         R10 2
       84 GETTABLEKS                       R10 R10 K4 ["removePreSetupAutoSetupClothesPrefix"]
       86 MOVE                             R11 R9
       87 CALL                             R10 1 0
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R12 R12 K5 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       91 LOADB                            R13 1
       92 NAMECALL                         R10 R9 K6 ["SetAttribute"]
       94 CALL                             R10 3 0
       95 GETUPVAL                         R10 5
       96 MOVE                             R11 R9
       97 MOVE                             R12 R1
       98 MOVE                             R13 R2
       99 CALL                             R10 3 1
      100 JUMPIFNOT                        R10 ; [+7]
      101 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      103 MOVE                             R12 R3
      104 MOVE                             R13 R10
      105 GETIMPORT                        R11 K20 [table.insert]
      107 CALL                             R11 2 0
      108 FORGLOOP                         R5 2 ; [-99]
      110 GETUPVAL                         R5 2
      111 GETTABLEKS                       R5 R5 K21 ["assignWrapLayerOrder"]
      113 MOVE                             R6 R4
      114 CALL                             R5 1 0
      115 GETUPVAL                         R5 6
      116 MOVE                             R6 R3
      117 CALL                             R5 1 0
      118 RETURN                           R0 0

PROTO_29:
        0 LOADK                            R3 K0 ["LowerTorso"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+6]
        6 LOADK                            R4 K2 ["BasePart"]
        7 NAMECALL                         R2 R1 K3 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+2]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 LOADK                            R4 K4 ["Root"]
       14 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       16 CALL                             R2 2 1
       17 JUMPIFEQKNIL                     R2 ; [+6]
       19 LOADK                            R5 K5 ["Motor6D"]
       20 NAMECALL                         R3 R2 K3 ["IsA"]
       22 CALL                             R3 2 1
       23 JUMPIF                           R3 ; [+2]
       24 LOADNIL                          R3
       25 RETURN                           R3 1
       26 GETTABLEKS                       R3 R2 K6 ["Part0"]
       28 JUMPIFNOTEQKNIL                  R3 ; [+3]
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 GETTABLEKS                       R6 R3 K7 ["CFrame"]
       34 GETTABLEKS                       R7 R2 K8 ["C0"]
       36 MUL                              R5 R6 R7
       37 GETTABLEKS                       R6 R2 K9 ["C1"]
       39 NAMECALL                         R6 R6 K10 ["Inverse"]
       41 CALL                             R6 1 1
       42 MUL                              R4 R5 R6
       43 GETTABLEKS                       R6 R4 K11 ["Position"]
       45 GETTABLEKS                       R7 R1 K11 ["Position"]
       47 SUB                              R5 R6 R7
       48 RETURN                           R5 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["computeTranslationUponParent"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["LIMBS"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 MOVE                             R9 R6
       14 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
       16 CALL                             R7 2 1
       17 JUMPIFEQKNIL                     R7 ; [+11]
       19 LOADK                            R10 K3 ["BasePart"]
       20 NAMECALL                         R8 R7 K4 ["IsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+5]
       24 GETTABLEKS                       R9 R7 K5 ["CFrame"]
       26 ADD                              R8 R9 R1
       27 SETTABLEKS                       R8 R7 K5 ["CFrame"]
       29 FORGLOOP                         R2 2 ; [-17]
       31 RETURN                           R0 0

PROTO_31:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 LOADK                            R3 K0 ["BodyTypeScale"]
        5 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 LOADK                            R4 K2 ["NumberValue"]
       10 NAMECALL                         R2 R1 K3 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 LOADK                            R4 K4 ["BodyProportionScale"]
       17 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+5]
       21 LOADK                            R5 K2 ["NumberValue"]
       22 NAMECALL                         R3 R2 K3 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+2]
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 GETTABLEKS                       R3 R1 K5 ["Value"]
       30 JUMPIFNOTEQKN                    R3 K6 [0] ; [+7]
       32 GETTABLEKS                       R3 R2 K5 ["Value"]
       34 JUMPIFNOTEQKN                    R3 K6 [0] ; [+3]
       36 LOADK                            R3 K7 ["Classic"]
       37 RETURN                           R3 1
       38 GETTABLEKS                       R3 R1 K5 ["Value"]
       40 JUMPIFNOTEQKN                    R3 K8 [1] ; [+7]
       42 GETTABLEKS                       R3 R2 K5 ["Value"]
       44 JUMPIFNOTEQKN                    R3 K6 [0] ; [+3]
       46 LOADK                            R3 K9 ["ProportionsNormal"]
       47 RETURN                           R3 1
       48 GETTABLEKS                       R3 R1 K5 ["Value"]
       50 JUMPIFNOTEQKN                    R3 K8 [1] ; [+7]
       52 GETTABLEKS                       R3 R2 K5 ["Value"]
       54 JUMPIFNOTEQKN                    R3 K8 [1] ; [+3]
       56 LOADK                            R3 K10 ["ProportionsSlender"]
       57 RETURN                           R3 1
       58 LOADNIL                          R3
       59 RETURN                           R3 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LIMBS"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R9 R6
        7 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 JUMPIFEQKNIL                     R7 ; [+13]
       12 MOVE                             R10 R1
       13 NAMECALL                         R8 R7 K1 ["FindFirstChild"]
       15 CALL                             R8 2 1
       16 JUMPIFEQKNIL                     R8 ; [+7]
       18 LOADK                            R11 K2 ["Attachment"]
       19 NAMECALL                         R9 R8 K3 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+1]
       23 RETURN                           R8 1
       24 FORGLOOP                         R2 2 ; [-19]
       26 LOADNIL                          R2
       27 RETURN                           R2 1

PROTO_33:
        0 DUPCLOSURE                       R1 K0 [PROTO_32]
        1 CAPTURE                          UPVAL U0
        2 NAMECALL                         R2 R0 K1 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K2 ["BasePart"]
        7 NAMECALL                         R7 R6 K3 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+36]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K4 ["getAssetClassificationFromName"]
       14 GETTABLEKS                       R8 R6 K5 ["Name"]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K6 ["Rigid"] ; [+29]
       19 LOADK                            R9 K7 ["Attachment"]
       20 NAMECALL                         R7 R6 K8 ["FindFirstChildWhichIsA"]
       22 CALL                             R7 2 1
       23 JUMPIFEQKNIL                     R7 ; [+23]
       25 MOVE                             R8 R1
       26 MOVE                             R9 R0
       27 GETTABLEKS                       R10 R7 K5 ["Name"]
       29 CALL                             R8 2 1
       30 JUMPIFEQKNIL                     R8 ; [+16]
       32 GETTABLEKS                       R9 R6 K9 ["CFrame"]
       34 GETTABLEKS                       R11 R7 K10 ["WorldCFrame"]
       36 NAMECALL                         R9 R9 K11 ["ToObjectSpace"]
       38 CALL                             R9 2 1
       39 GETTABLEKS                       R11 R8 K10 ["WorldCFrame"]
       41 NAMECALL                         R12 R9 K12 ["Inverse"]
       43 CALL                             R12 1 1
       44 MUL                              R10 R11 R12
       45 SETTABLEKS                       R10 R6 K9 ["CFrame"]
       47 FORGLOOP                         R2 2 ; [-42]
       49 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 NOT                              R7 R8
        3 FASTCALL2K                       ASSERT R7 K0 ; [+4]
        5 LOADK                            R8 K0 ["getFFlagAvatarPreviewerCustomHumanoidImportOption() must be disabled"]
        6 GETIMPORT                        R6 K2 [assert]
        8 CALL                             R6 2 0
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       15 LOADK                            R8 K3 ["Inserting body with no target"]
       16 GETIMPORT                        R6 K2 [assert]
       18 CALL                             R6 2 0
       19 GETTABLEKS                       R8 R3 K4 ["model"]
       21 JUMPIFNOTEQKNIL                  R8 ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       27 LOADK                            R8 K5 ["Inserting body with no model"]
       28 GETIMPORT                        R6 K2 [assert]
       30 CALL                             R6 2 0
       31 GETTABLEKS                       R8 R2 K6 ["PrimaryPart"]
       33 JUMPIFNOTEQKNIL                  R8 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       39 LOADK                            R8 K7 ["Auto setup returned model with no primary part"]
       40 GETIMPORT                        R6 K2 [assert]
       42 CALL                             R6 2 0
       43 GETUPVAL                         R6 1
       44 LOADK                            R8 K8 ["AvatarAutoSetup"]
       45 LOADK                            R9 K9 ["Avatar Auto Setup"]
       46 NAMECALL                         R6 R6 K10 ["TryBeginRecording"]
       48 CALL                             R6 3 1
       49 NAMECALL                         R7 R2 K11 ["Clone"]
       51 CALL                             R7 1 1
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R10 R10 K12 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       55 LOADB                            R11 1
       56 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       58 CALL                             R8 3 0
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K14 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
       62 MOVE                             R11 R4
       63 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       65 CALL                             R8 3 0
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K15 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
       69 MOVE                             R11 R5
       70 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       72 CALL                             R8 3 0
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R10 R10 K16 ["ATTRIBUTE_IMPORT_METHOD"]
       76 LOADN                            R11 0
       77 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       79 CALL                             R8 3 0
       80 LOADNIL                          R8
       81 JUMPIFEQKNIL                     R0 ; [+8]
       83 GETUPVAL                         R9 3
       84 GETTABLEKS                       R9 R9 K17 ["computeValidScaleAsync"]
       86 MOVE                             R10 R0
       87 MOVE                             R11 R7
       88 CALL                             R9 2 1
       89 MOVE                             R8 R9
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K18 ["translateBodyPartsToFinalCFrame"]
       93 MOVE                             R10 R7
       94 CALL                             R9 1 0
       95 JUMPIFEQKNIL                     R8 ; [+8]
       97 GETUPVAL                         R9 3
       98 GETTABLEKS                       R9 R9 K19 ["applyLayeredClothingProportions"]
      100 MOVE                             R10 R2
      101 GETTABLEKS                       R11 R8 K20 ["proportions"]
      103 CALL                             R9 2 0
      104 GETUPVAL                         R9 4
      105 CALL                             R9 0 1
      106 JUMPIFNOT                        R9 ; [+5]
      107 GETUPVAL                         R9 3
      108 GETTABLEKS                       R9 R9 K21 ["moveRigidToAvatarAttachmentPoints"]
      110 MOVE                             R10 R7
      111 CALL                             R9 1 0
      112 GETUPVAL                         R9 3
      113 GETTABLEKS                       R9 R9 K22 ["assignLayeredClothing"]
      115 MOVE                             R10 R7
      116 CALL                             R9 1 0
      117 GETUPVAL                         R9 3
      118 GETTABLEKS                       R9 R9 K23 ["removeExtraAttachmentParts"]
      120 MOVE                             R10 R7
      121 CALL                             R9 1 0
      122 JUMPIFEQKNIL                     R8 ; [+7]
      124 GETUPVAL                         R9 3
      125 GETTABLEKS                       R9 R9 K24 ["applyScale"]
      127 MOVE                             R10 R7
      128 MOVE                             R11 R8
      129 CALL                             R9 2 0
      130 GETUPVAL                         R9 3
      131 GETTABLEKS                       R9 R9 K25 ["applyAnimationsScript"]
      133 MOVE                             R10 R7
      134 CALL                             R9 1 0
      135 JUMPIFEQKNIL                     R8 ; [+8]
      137 GETUPVAL                         R9 3
      138 GETTABLEKS                       R9 R9 K26 ["applyProportions"]
      140 MOVE                             R10 R7
      141 GETTABLEKS                       R11 R8 K20 ["proportions"]
      143 CALL                             R9 2 0
      144 GETUPVAL                         R9 3
      145 GETTABLEKS                       R9 R9 K27 ["renameModel"]
      147 MOVE                             R10 R7
      148 MOVE                             R11 R3
      149 CALL                             R9 2 0
      150 GETUPVAL                         R9 3
      151 GETTABLEKS                       R9 R9 K28 ["wearAccessories"]
      153 MOVE                             R10 R7
      154 GETTABLEKS                       R11 R3 K29 ["accessories"]
      156 CALL                             R9 2 0
      157 GETUPVAL                         R9 3
      158 GETTABLEKS                       R9 R9 K30 ["ensureSurfaceAppearances"]
      160 MOVE                             R10 R7
      161 CALL                             R9 1 0
      162 GETUPVAL                         R9 3
      163 GETTABLEKS                       R9 R9 K31 ["ensureBodyColors"]
      165 MOVE                             R10 R7
      166 CALL                             R9 1 0
      167 GETUPVAL                         R9 5
      168 SETTABLEKS                       R9 R7 K32 ["Parent"]
      170 GETUPVAL                         R9 3
      171 GETTABLEKS                       R9 R9 K33 ["setPivotOffset"]
      173 MOVE                             R10 R7
      174 CALL                             R9 1 0
      175 GETUPVAL                         R9 3
      176 GETTABLEKS                       R9 R9 K34 ["positionInWorkspace"]
      178 MOVE                             R10 R7
      179 MOVE                             R11 R3
      180 CALL                             R9 2 0
      181 GETUPVAL                         R9 5
      182 GETTABLEKS                       R9 R9 K35 ["CurrentCamera"]
      184 JUMPIFEQKNIL                     R9 ; [+24]
      186 GETUPVAL                         R10 6
      187 GETTABLEKS                       R10 R10 K36 ["zoomIsRequired"]
      189 MOVE                             R11 R9
      190 MOVE                             R12 R7
      191 CALL                             R10 2 1
      192 JUMPIFNOT                        R10 ; [+16]
      193 GETTABLEKS                       R11 R9 K37 ["ViewportSize"]
      195 GETTABLEKS                       R11 R11 K38 ["X"]
      197 GETTABLEKS                       R12 R9 K37 ["ViewportSize"]
      199 GETTABLEKS                       R12 R12 K39 ["Y"]
      201 DIV                              R10 R11 R12
      202 GETUPVAL                         R11 6
      203 GETTABLEKS                       R11 R11 K40 ["zoomToExtents"]
      205 MOVE                             R12 R9
      206 MOVE                             R13 R7
      207 MOVE                             R14 R10
      208 CALL                             R11 3 0
      209 NEWTABLE                         R12 0 1
      211 MOVE                             R13 R7
      212 SETLIST                          R12 R13 1 [1]
      214 NAMECALL                         R10 R1 K41 ["Set"]
      216 CALL                             R10 2 0
      217 JUMPIFNOT                        R6 ; [+7]
      218 GETUPVAL                         R10 1
      219 MOVE                             R12 R6
      220 GETIMPORT                        R13 K45 [Enum.FinishRecordingOperation.Commit]
      222 NAMECALL                         R10 R10 K46 ["FinishRecording"]
      224 CALL                             R10 3 0
      225 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOTEQKNIL                  R3 ; [+2]
        2 LOADB                            R8 0 +1
        3 LOADB                            R8 1
        4 FASTCALL2K                       ASSERT R8 K0 ; [+4]
        6 LOADK                            R9 K0 ["Inserting body with no target"]
        7 GETIMPORT                        R7 K2 [assert]
        9 CALL                             R7 2 0
       10 GETTABLEKS                       R9 R3 K3 ["model"]
       12 JUMPIFNOTEQKNIL                  R9 ; [+2]
       14 LOADB                            R8 0 +1
       15 LOADB                            R8 1
       16 FASTCALL2K                       ASSERT R8 K4 ; [+4]
       18 LOADK                            R9 K4 ["Inserting body with no model"]
       19 GETIMPORT                        R7 K2 [assert]
       21 CALL                             R7 2 0
       22 GETTABLEKS                       R7 R2 K5 ["PrimaryPart"]
       24 JUMPIFNOTEQKNIL                  R7 ; [+7]
       26 LOADK                            R9 K6 ["BasePart"]
       27 NAMECALL                         R7 R2 K7 ["FindFirstChildWhichIsA"]
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R2 K5 ["PrimaryPart"]
       32 GETTABLEKS                       R9 R2 K5 ["PrimaryPart"]
       34 JUMPIFNOTEQKNIL                  R9 ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 FASTCALL2K                       ASSERT R8 K8 ; [+4]
       40 LOADK                            R9 K8 ["Auto setup returned model with no primary part"]
       41 GETIMPORT                        R7 K2 [assert]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 0
       45 LOADK                            R9 K9 ["AvatarAutoSetup"]
       46 LOADK                            R10 K10 ["Avatar Auto Setup"]
       47 NAMECALL                         R7 R7 K11 ["TryBeginRecording"]
       49 CALL                             R7 3 1
       50 NAMECALL                         R8 R2 K12 ["Clone"]
       52 CALL                             R8 1 1
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K13 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       56 LOADB                            R12 1
       57 NAMECALL                         R9 R8 K14 ["SetAttribute"]
       59 CALL                             R9 3 0
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K15 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
       63 MOVE                             R12 R4
       64 NAMECALL                         R9 R8 K14 ["SetAttribute"]
       66 CALL                             R9 3 0
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R11 R11 K16 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
       70 MOVE                             R12 R5
       71 NAMECALL                         R9 R8 K14 ["SetAttribute"]
       73 CALL                             R9 3 0
       74 GETUPVAL                         R11 1
       75 GETTABLEKS                       R11 R11 K17 ["ATTRIBUTE_IMPORT_METHOD"]
       77 LOADN                            R12 0
       78 NAMECALL                         R9 R8 K14 ["SetAttribute"]
       80 CALL                             R9 3 0
       81 LOADNIL                          R9
       82 JUMPIFEQKNIL                     R0 ; [+8]
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R10 R10 K18 ["computeValidScaleAsync"]
       87 MOVE                             R11 R0
       88 MOVE                             R12 R8
       89 CALL                             R10 2 1
       90 MOVE                             R9 R10
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R10 R10 K19 ["translateBodyPartsToFinalCFrame"]
       94 MOVE                             R11 R8
       95 CALL                             R10 1 0
       96 JUMPIFEQKNIL                     R9 ; [+8]
       98 GETUPVAL                         R10 2
       99 GETTABLEKS                       R10 R10 K20 ["applyLayeredClothingProportions"]
      101 MOVE                             R11 R2
      102 GETTABLEKS                       R12 R9 K21 ["proportions"]
      104 CALL                             R10 2 0
      105 GETUPVAL                         R10 3
      106 CALL                             R10 0 1
      107 JUMPIFNOT                        R10 ; [+5]
      108 GETUPVAL                         R10 2
      109 GETTABLEKS                       R10 R10 K22 ["moveRigidToAvatarAttachmentPoints"]
      111 MOVE                             R11 R8
      112 CALL                             R10 1 0
      113 GETUPVAL                         R10 2
      114 GETTABLEKS                       R10 R10 K23 ["assignLayeredClothing"]
      116 MOVE                             R11 R8
      117 CALL                             R10 1 0
      118 GETUPVAL                         R10 2
      119 GETTABLEKS                       R10 R10 K24 ["removeExtraAttachmentParts"]
      121 MOVE                             R11 R8
      122 CALL                             R10 1 0
      123 JUMPIFEQKNIL                     R9 ; [+7]
      125 GETUPVAL                         R10 2
      126 GETTABLEKS                       R10 R10 K25 ["applyScale"]
      128 MOVE                             R11 R8
      129 MOVE                             R12 R9
      130 CALL                             R10 2 0
      131 GETUPVAL                         R10 2
      132 GETTABLEKS                       R10 R10 K26 ["applyAnimationsScript"]
      134 MOVE                             R11 R8
      135 CALL                             R10 1 0
      136 JUMPIFEQKNIL                     R9 ; [+8]
      138 GETUPVAL                         R10 2
      139 GETTABLEKS                       R10 R10 K27 ["applyProportions"]
      141 MOVE                             R11 R8
      142 GETTABLEKS                       R12 R9 K21 ["proportions"]
      144 CALL                             R10 2 0
      145 GETUPVAL                         R10 2
      146 GETTABLEKS                       R10 R10 K28 ["renameModel"]
      148 MOVE                             R11 R8
      149 MOVE                             R12 R3
      150 CALL                             R10 2 0
      151 GETUPVAL                         R10 2
      152 GETTABLEKS                       R10 R10 K29 ["wearAccessories"]
      154 MOVE                             R11 R8
      155 GETTABLEKS                       R12 R3 K30 ["accessories"]
      157 CALL                             R10 2 0
      158 GETUPVAL                         R10 2
      159 GETTABLEKS                       R10 R10 K31 ["ensureSurfaceAppearances"]
      161 MOVE                             R11 R8
      162 CALL                             R10 1 0
      163 GETUPVAL                         R10 2
      164 GETTABLEKS                       R10 R10 K32 ["ensureBodyColors"]
      166 MOVE                             R11 R8
      167 CALL                             R10 1 0
      168 GETUPVAL                         R10 4
      169 SETTABLEKS                       R10 R8 K33 ["Parent"]
      171 GETUPVAL                         R10 2
      172 GETTABLEKS                       R10 R10 K34 ["setPivotOffset"]
      174 MOVE                             R11 R8
      175 CALL                             R10 1 0
      176 GETUPVAL                         R10 2
      177 GETTABLEKS                       R10 R10 K35 ["positionInWorkspace"]
      179 MOVE                             R11 R8
      180 MOVE                             R12 R3
      181 CALL                             R10 2 0
      182 GETUPVAL                         R10 4
      183 GETTABLEKS                       R10 R10 K36 ["CurrentCamera"]
      185 JUMPIFEQKNIL                     R10 ; [+24]
      187 GETUPVAL                         R11 5
      188 GETTABLEKS                       R11 R11 K37 ["zoomIsRequired"]
      190 MOVE                             R12 R10
      191 MOVE                             R13 R8
      192 CALL                             R11 2 1
      193 JUMPIFNOT                        R11 ; [+16]
      194 GETTABLEKS                       R12 R10 K38 ["ViewportSize"]
      196 GETTABLEKS                       R12 R12 K39 ["X"]
      198 GETTABLEKS                       R13 R10 K38 ["ViewportSize"]
      200 GETTABLEKS                       R13 R13 K40 ["Y"]
      202 DIV                              R11 R12 R13
      203 GETUPVAL                         R12 5
      204 GETTABLEKS                       R12 R12 K41 ["zoomToExtents"]
      206 MOVE                             R13 R10
      207 MOVE                             R14 R8
      208 MOVE                             R15 R11
      209 CALL                             R12 3 0
      210 GETUPVAL                         R11 6
      211 CALL                             R11 0 1
      212 JUMPIFNOT                        R11 ; [+38]
      213 JUMPIFNOT                        R6 ; [+37]
      214 GETTABLEKS                       R11 R6 K42 ["settings"]
      216 GETTABLEKS                       R11 R11 K43 ["SetupType"]
      218 JUMPIFEQKS                       R11 K44 ["Unspecified"] ; [+32]
      220 GETTABLEKS                       R11 R6 K42 ["settings"]
      222 GETTABLEKS                       R11 R11 K45 ["R15Plus"]
      224 JUMPIFNOT                        R11 ; [+26]
      225 GETUPVAL                         R11 7
      226 CALL                             R11 0 1
      227 JUMPIF                           R11 ; [+5]
      228 GETIMPORT                        R11 K47 [warn]
      230 LOADK                            R12 K48 ["getDFFlagHumanoidRigDescriptionEnabled must be enabled to use CustomHumanoid option"]
      231 CALL                             R11 1 0
      232 RETURN                           R0 0
      233 GETIMPORT                        R11 K51 [Instance.new]
      235 LOADK                            R12 K52 ["HumanoidRigDescription"]
      236 CALL                             R11 1 1
      237 GETUPVAL                         R12 8
      238 GETTABLEKS                       R12 R12 K53 ["autoAll"]
      240 MOVE                             R13 R11
      241 MOVE                             R14 R8
      242 GETUPVAL                         R16 9
      243 CALL                             R16 0 1
      244 JUMPIFNOT                        R16 ; [+2]
      245 LOADB                            R15 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R15
      248 CALL                             R12 3 0
      249 SETTABLEKS                       R8 R11 K33 ["Parent"]
      251 NEWTABLE                         R13 0 1
      253 MOVE                             R14 R8
      254 SETLIST                          R13 R14 1 [1]
      256 NAMECALL                         R11 R1 K54 ["Set"]
      258 CALL                             R11 2 0
      259 JUMPIFNOT                        R7 ; [+7]
      260 GETUPVAL                         R11 0
      261 MOVE                             R13 R7
      262 GETIMPORT                        R14 K58 [Enum.FinishRecordingOperation.Commit]
      264 NAMECALL                         R11 R11 K59 ["FinishRecording"]
      266 CALL                             R11 3 0
      267 RETURN                           R0 0

PROTO_36:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 LOADB                            R6 0 +1
        3 LOADB                            R6 1
        4 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        6 LOADK                            R7 K0 ["Inserting body with no target"]
        7 GETIMPORT                        R5 K2 [assert]
        9 CALL                             R5 2 0
       10 GETTABLEKS                       R7 R2 K3 ["model"]
       12 JUMPIFNOTEQKNIL                  R7 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       18 LOADK                            R7 K4 ["Inserting body with no model"]
       19 GETIMPORT                        R5 K2 [assert]
       21 CALL                             R5 2 0
       22 GETUPVAL                         R5 0
       23 LOADK                            R7 K5 ["AvatarAutoSetup"]
       24 LOADK                            R8 K6 ["Avatar Auto Setup"]
       25 NAMECALL                         R5 R5 K7 ["TryBeginRecording"]
       27 CALL                             R5 3 1
       28 LOADNIL                          R6
       29 GETTABLEKS                       R9 R2 K8 ["lastFilteredSelection"]
       31 JUMPIFNOTEQKNIL                  R9 ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 FASTCALL2K                       ASSERT R8 K9 ; [+4]
       37 LOADK                            R9 K9 ["Inserting body with no original selection"]
       38 GETIMPORT                        R7 K2 [assert]
       40 CALL                             R7 2 0
       41 GETTABLEKS                       R7 R2 K8 ["lastFilteredSelection"]
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 GETUPVAL                         R12 1
       47 MOVE                             R13 R11
       48 CALL                             R12 1 1
       49 JUMPIFNOT                        R12 ; [+2]
       50 MOVE                             R6 R11
       51 JUMP                             ; [+14]
       52 NAMECALL                         R12 R11 K10 ["GetChildren"]
       54 CALL                             R12 1 3
       55 FORGPREP                         R12
       56 GETUPVAL                         R17 1
       57 MOVE                             R18 R16
       58 CALL                             R17 1 1
       59 JUMPIFNOT                        R17 ; [+2]
       60 MOVE                             R6 R16
       61 JUMP                             ; [+2]
       62 FORGLOOP                         R12 2 ; [-7]
       64 FORGLOOP                         R7 2 ; [-19]
       66 JUMPIFNOTEQKNIL                  R6 ; [+28]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K11 ["createTemplateBody"]
       71 CALL                             R7 0 1
       72 MOVE                             R6 R7
       73 JUMPIFNOTEQKNIL                  R6 ; [+2]
       75 LOADB                            R8 0 +1
       76 LOADB                            R8 1
       77 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       79 LOADK                            R9 K12 ["Luau"]
       80 GETIMPORT                        R7 K2 [assert]
       82 CALL                             R7 2 0
       83 GETTABLEKS                       R7 R2 K3 ["model"]
       85 NAMECALL                         R7 R7 K13 ["GetBoundingBox"]
       87 CALL                             R7 1 1
       88 MOVE                             R10 R7
       89 NAMECALL                         R8 R6 K14 ["PivotTo"]
       91 CALL                             R8 2 0
       92 GETUPVAL                         R8 3
       93 SETTABLEKS                       R8 R6 K15 ["Parent"]
       95 JUMPIFNOTEQKNIL                  R6 ; [+2]
       97 LOADB                            R8 0 +1
       98 LOADB                            R8 1
       99 FASTCALL2K                       ASSERT R8 K16 ; [+4]
      101 LOADK                            R9 K16 ["Could not produce output avatar"]
      102 GETIMPORT                        R7 K2 [assert]
      104 CALL                             R7 2 0
      105 NAMECALL                         R7 R1 K17 ["Clone"]
      107 CALL                             R7 1 1
      108 GETUPVAL                         R10 4
      109 GETTABLEKS                       R10 R10 K18 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      111 LOADB                            R11 1
      112 NAMECALL                         R8 R7 K19 ["SetAttribute"]
      114 CALL                             R8 3 0
      115 GETUPVAL                         R10 4
      116 GETTABLEKS                       R10 R10 K20 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      118 MOVE                             R11 R3
      119 NAMECALL                         R8 R7 K19 ["SetAttribute"]
      121 CALL                             R8 3 0
      122 GETUPVAL                         R10 4
      123 GETTABLEKS                       R10 R10 K21 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
      125 MOVE                             R11 R4
      126 NAMECALL                         R8 R7 K19 ["SetAttribute"]
      128 CALL                             R8 3 0
      129 GETUPVAL                         R10 4
      130 GETTABLEKS                       R10 R10 K22 ["ATTRIBUTE_IMPORT_METHOD"]
      132 LOADN                            R11 0
      133 NAMECALL                         R8 R7 K19 ["SetAttribute"]
      135 CALL                             R8 3 0
      136 GETUPVAL                         R8 2
      137 GETTABLEKS                       R8 R8 K23 ["findProportionsFromHumanoid"]
      139 LOADK                            R11 K24 ["Humanoid"]
      140 NAMECALL                         R9 R6 K25 ["FindFirstChildOfClass"]
      142 CALL                             R9 2 -1
      143 CALL                             R8 -1 1
      144 JUMPIFEQKNIL                     R8 ; [+7]
      146 GETUPVAL                         R9 2
      147 GETTABLEKS                       R9 R9 K26 ["applyLayeredClothingProportions"]
      149 MOVE                             R10 R7
      150 MOVE                             R11 R8
      151 CALL                             R9 2 0
      152 GETUPVAL                         R9 2
      153 GETTABLEKS                       R9 R9 K27 ["assignLayeredClothing"]
      155 MOVE                             R10 R7
      156 CALL                             R9 1 0
      157 GETUPVAL                         R9 2
      158 GETTABLEKS                       R9 R9 K28 ["removeExtraAttachmentParts"]
      160 MOVE                             R10 R7
      161 CALL                             R9 1 0
      162 GETUPVAL                         R9 3
      163 GETTABLEKS                       R9 R9 K29 ["CurrentCamera"]
      165 JUMPIFEQKNIL                     R9 ; [+24]
      167 GETUPVAL                         R10 5
      168 GETTABLEKS                       R10 R10 K30 ["zoomIsRequired"]
      170 MOVE                             R11 R9
      171 MOVE                             R12 R6
      172 CALL                             R10 2 1
      173 JUMPIFNOT                        R10 ; [+16]
      174 GETTABLEKS                       R11 R9 K31 ["ViewportSize"]
      176 GETTABLEKS                       R11 R11 K32 ["X"]
      178 GETTABLEKS                       R12 R9 K31 ["ViewportSize"]
      180 GETTABLEKS                       R12 R12 K33 ["Y"]
      182 DIV                              R10 R11 R12
      183 GETUPVAL                         R11 5
      184 GETTABLEKS                       R11 R11 K34 ["zoomToExtents"]
      186 MOVE                             R12 R9
      187 MOVE                             R13 R6
      188 MOVE                             R14 R10
      189 CALL                             R11 3 0
      190 NEWTABLE                         R12 0 1
      192 MOVE                             R13 R6
      193 SETLIST                          R12 R13 1 [1]
      195 NAMECALL                         R10 R0 K35 ["Set"]
      197 CALL                             R10 2 0
      198 NAMECALL                         R10 R7 K36 ["GetDescendants"]
      200 CALL                             R10 1 3
      201 FORGPREP                         R10
      202 LOADK                            R17 K37 ["BasePart"]
      203 NAMECALL                         R15 R14 K38 ["IsA"]
      205 CALL                             R15 2 1
      206 JUMPIFNOT                        R15 ; [+49]
      207 GETTABLEKS                       R15 R14 K39 ["Name"]
      209 JUMPIFNOTEQKS                    R15 K40 ["RootPart"] ; [+6]
      211 LOADK                            R17 K41 ["Part"]
      212 NAMECALL                         R15 R14 K38 ["IsA"]
      214 CALL                             R15 2 1
      215 JUMPIF                           R15 ; [+40]
      216 GETTABLEKS                       R15 R2 K8 ["lastFilteredSelection"]
      218 LOADNIL                          R16
      219 LOADNIL                          R17
      220 FORGPREP                         R15
      221 GETUPVAL                         R20 6
      222 GETTABLEKS                       R20 R20 K42 ["getInstanceNameWithoutClassification"]
      224 GETTABLEKS                       R21 R14 K39 ["Name"]
      226 CALL                             R20 1 1
      227 GETTABLEKS                       R21 R19 K39 ["Name"]
      229 JUMPIFNOTEQ                      R20 R21 ; [+22]
      231 LOADK                            R22 K43 ["Model"]
      232 NAMECALL                         R20 R19 K38 ["IsA"]
      234 CALL                             R20 2 1
      235 JUMPIFNOT                        R20 ; [+6]
      236 NAMECALL                         R20 R19 K13 ["GetBoundingBox"]
      238 CALL                             R20 1 1
      239 SETTABLEKS                       R20 R14 K44 ["CFrame"]
      241 JUMP                             ; [+12]
      242 LOADK                            R22 K37 ["BasePart"]
      243 NAMECALL                         R20 R19 K38 ["IsA"]
      245 CALL                             R20 2 1
      246 JUMPIFNOT                        R20 ; [+7]
      247 GETTABLEKS                       R20 R19 K44 ["CFrame"]
      249 SETTABLEKS                       R20 R14 K44 ["CFrame"]
      251 JUMP                             ; [+2]
      252 FORGLOOP                         R15 2 ; [-32]
      254 SETTABLEKS                       R6 R14 K15 ["Parent"]
      256 FORGLOOP                         R10 2 ; [-55]
      258 GETUPVAL                         R12 4
      259 GETTABLEKS                       R12 R12 K45 ["ATTRIBUTE_SHOULD_REIMPORT"]
      261 LOADB                            R13 1
      262 NAMECALL                         R10 R6 K19 ["SetAttribute"]
      264 CALL                             R10 3 0
      265 JUMPIFNOT                        R5 ; [+7]
      266 GETUPVAL                         R10 0
      267 MOVE                             R12 R5
      268 GETIMPORT                        R13 K49 [Enum.FinishRecordingOperation.Commit]
      270 NAMECALL                         R10 R10 K50 ["FinishRecording"]
      272 CALL                             R10 3 0
      273 RETURN                           R0 0

PROTO_37:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+16]
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K0 ["settings"]
        6 GETTABLEKS                       R2 R2 K1 ["SetupType"]
        8 JUMPIFEQKS                       R2 K2 ["Unspecified"] ; [+9]
       10 GETTABLEKS                       R2 R0 K0 ["settings"]
       12 GETTABLEKS                       R2 R2 K3 ["ClothingOnly"]
       14 JUMPIFEQKB                       R2 TRUE ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["isClothingOnly"]
        3 MOVE                             R8 R6
        4 CALL                             R7 1 1
        5 JUMPIFNOT                        R7 ; [+76]
        6 JUMPIFEQKNIL                     R6 ; [+75]
        8 GETUPVAL                         R7 1
        9 CALL                             R7 0 1
       10 JUMPIFNOT                        R7 ; [+10]
       11 GETTABLEKS                       R7 R6 K1 ["info"]
       13 GETTABLEKS                       R7 R7 K2 ["shouldProcessAttachmentPoint"]
       15 JUMPIFNOT                        R7 ; [+5]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K3 ["processRigidAndAttachmentMeshes"]
       19 MOVE                             R8 R2
       20 CALL                             R7 1 0
       21 GETTABLEKS                       R7 R6 K1 ["info"]
       23 GETTABLEKS                       R7 R7 K4 ["shouldCreateTemplateBody"]
       25 JUMPIFNOT                        R7 ; [+46]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K5 ["createTemplateBody"]
       29 CALL                             R7 0 1
       30 NAMECALL                         R8 R2 K6 ["Clone"]
       32 CALL                             R8 1 1
       33 NAMECALL                         R9 R8 K7 ["GetDescendants"]
       35 CALL                             R9 1 3
       36 FORGPREP                         R9
       37 LOADK                            R16 K8 ["BasePart"]
       38 NAMECALL                         R14 R13 K9 ["IsA"]
       40 CALL                             R14 2 1
       41 JUMPIFNOT                        R14 ; [+2]
       42 SETTABLEKS                       R7 R13 K10 ["Parent"]
       44 FORGLOOP                         R9 2 ; [-8]
       46 GETUPVAL                         R9 2
       47 CALL                             R9 0 1
       48 JUMPIFNOT                        R9 ; [+12]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K11 ["insertBodyAsync"]
       52 LOADNIL                          R10
       53 MOVE                             R11 R1
       54 MOVE                             R12 R7
       55 MOVE                             R13 R3
       56 MOVE                             R14 R4
       57 MOVE                             R15 R5
       58 MOVE                             R16 R6
       59 CALL                             R9 7 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K12 ["DEPRECATED_insertBodyAsync"]
       64 LOADNIL                          R10
       65 MOVE                             R11 R1
       66 MOVE                             R12 R7
       67 MOVE                             R13 R3
       68 MOVE                             R14 R4
       69 MOVE                             R15 R5
       70 CALL                             R9 6 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K13 ["insertClothingAsync"]
       75 MOVE                             R8 R1
       76 MOVE                             R9 R2
       77 MOVE                             R10 R3
       78 MOVE                             R11 R4
       79 MOVE                             R12 R5
       80 CALL                             R7 5 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R7 2
       83 CALL                             R7 0 1
       84 JUMPIFNOT                        R7 ; [+12]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K11 ["insertBodyAsync"]
       88 MOVE                             R8 R0
       89 MOVE                             R9 R1
       90 MOVE                             R10 R2
       91 MOVE                             R11 R3
       92 MOVE                             R12 R4
       93 MOVE                             R13 R5
       94 MOVE                             R14 R6
       95 CALL                             R7 7 0
       96 RETURN                           R0 0
       97 GETUPVAL                         R7 0
       98 GETTABLEKS                       R7 R7 K12 ["DEPRECATED_insertBodyAsync"]
      100 MOVE                             R8 R0
      101 MOVE                             R9 R1
      102 MOVE                             R10 R2
      103 MOVE                             R11 R3
      104 MOVE                             R12 R4
      105 MOVE                             R13 R5
      106 CALL                             R7 6 0
      107 RETURN                           R0 0

PROTO_39:
        0 DUPTABLE                         R1 K5 [{[1] = 0, ["Layered"] = 0, ["Rigid"] = 0, ["Unselected"] = 0}]
        1 NAMECALL                         R2 R0 K6 ["GetChildren"]
        3 CALL                             R2 1 3
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K7 ["getAssetClassificationFromName"]
        8 GETTABLEKS                       R8 R6 K8 ["Name"]
       10 CALL                             R7 1 1
       11 GETTABLE                         R8 R1 R7
       12 JUMPIFEQKNIL                     R8 ; [+5]
       14 GETTABLE                         R8 R1 R7
       15 ADDK                             R8 R8 K9 [1]
       16 SETTABLE                         R8 R1 R7
       17 JUMP                             ; [+5]
       18 GETTABLEKS                       R8 R1 K4 ["Unselected"]
       20 ADDK                             R8 R8 K9 [1]
       21 SETTABLEKS                       R8 R1 K4 ["Unselected"]
       23 FORGLOOP                         R2 2 ; [-19]
       25 RETURN                           R1 1

PROTO_40:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADK                            R3 K3 [0.5]
        4 LOADK                            R4 K3 [0.5]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K4 ["HeadColor"]
        8 SETTABLEKS                       R1 R0 K5 ["LeftArmColor"]
       10 SETTABLEKS                       R1 R0 K6 ["LeftLegColor"]
       12 SETTABLEKS                       R1 R0 K7 ["RightArmColor"]
       14 SETTABLEKS                       R1 R0 K8 ["RightLegColor"]
       16 SETTABLEKS                       R1 R0 K9 ["TorsoColor"]
       18 LOADN                            R2 0
       19 SETTABLEKS                       R2 R0 K10 ["ClimbAnimation"]
       21 LOADN                            R2 0
       22 SETTABLEKS                       R2 R0 K11 ["FallAnimation"]
       24 LOADN                            R2 0
       25 SETTABLEKS                       R2 R0 K12 ["IdleAnimation"]
       27 LOADN                            R2 0
       28 SETTABLEKS                       R2 R0 K13 ["JumpAnimation"]
       30 LOADN                            R2 0
       31 SETTABLEKS                       R2 R0 K14 ["MoodAnimation"]
       33 LOADN                            R2 0
       34 SETTABLEKS                       R2 R0 K15 ["RunAnimation"]
       36 LOADN                            R2 0
       37 SETTABLEKS                       R2 R0 K16 ["SwimAnimation"]
       39 LOADN                            R2 0
       40 SETTABLEKS                       R2 R0 K17 ["WalkAnimation"]
       42 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
        3 GETTABLEKS                       R1 R1 K1 ["Head"]
        5 SETTABLEKS                       R1 R0 K1 ["Head"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       10 GETTABLEKS                       R1 R1 K2 ["Torso"]
       12 SETTABLEKS                       R1 R0 K2 ["Torso"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       17 GETTABLEKS                       R1 R1 K3 ["LeftArm"]
       19 SETTABLEKS                       R1 R0 K3 ["LeftArm"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       24 GETTABLEKS                       R1 R1 K4 ["RightArm"]
       26 SETTABLEKS                       R1 R0 K4 ["RightArm"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       31 GETTABLEKS                       R1 R1 K5 ["LeftLeg"]
       33 SETTABLEKS                       R1 R0 K5 ["LeftLeg"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       38 GETTABLEKS                       R1 R1 K6 ["RightLeg"]
       40 SETTABLEKS                       R1 R0 K6 ["RightLeg"]
       42 RETURN                           R0 0

PROTO_42:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BasePart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R5 K3 ["Locked"]
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_43:
        0 DUPCLOSURE                       R0 K0 [PROTO_40]
        1 DUPCLOSURE                       R1 K1 [PROTO_41]
        2 CAPTURE                          UPVAL U0
        3 DUPCLOSURE                       R2 K2 [PROTO_42]
        4 GETIMPORT                        R4 K4 [game]
        6 LOADK                            R6 K5 ["AsyncRenamesUsedInLuaApps"]
        7 NAMECALL                         R4 R4 K6 ["GetEngineFeature"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+8]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["TEMPLATE_BODY_OUTFIT_ID"]
       15 NAMECALL                         R3 R3 K8 ["GetHumanoidDescriptionFromOutfitIdAsync"]
       17 CALL                             R3 2 1
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["TEMPLATE_BODY_OUTFIT_ID"]
       23 NAMECALL                         R3 R3 K9 ["GetHumanoidDescriptionFromOutfitId"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 2
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+42]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       32 GETTABLEKS                       R4 R4 K11 ["Head"]
       34 SETTABLEKS                       R4 R3 K11 ["Head"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       39 GETTABLEKS                       R4 R4 K12 ["Torso"]
       41 SETTABLEKS                       R4 R3 K12 ["Torso"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       46 GETTABLEKS                       R4 R4 K13 ["LeftArm"]
       48 SETTABLEKS                       R4 R3 K13 ["LeftArm"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       53 GETTABLEKS                       R4 R4 K14 ["RightArm"]
       55 SETTABLEKS                       R4 R3 K14 ["RightArm"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       60 GETTABLEKS                       R4 R4 K15 ["LeftLeg"]
       62 SETTABLEKS                       R4 R3 K15 ["LeftLeg"]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       67 GETTABLEKS                       R4 R4 K16 ["RightLeg"]
       69 SETTABLEKS                       R4 R3 K16 ["RightLeg"]
       71 GETIMPORT                        R4 K19 [Color3.new]
       73 LOADK                            R5 K20 [0.5]
       74 LOADK                            R6 K20 [0.5]
       75 LOADK                            R7 K20 [0.5]
       76 CALL                             R4 3 1
       77 SETTABLEKS                       R4 R3 K21 ["HeadColor"]
       79 SETTABLEKS                       R4 R3 K22 ["LeftArmColor"]
       81 SETTABLEKS                       R4 R3 K23 ["LeftLegColor"]
       83 SETTABLEKS                       R4 R3 K24 ["RightArmColor"]
       85 SETTABLEKS                       R4 R3 K25 ["RightLegColor"]
       87 SETTABLEKS                       R4 R3 K26 ["TorsoColor"]
       89 LOADN                            R5 0
       90 SETTABLEKS                       R5 R3 K27 ["ClimbAnimation"]
       92 LOADN                            R5 0
       93 SETTABLEKS                       R5 R3 K28 ["FallAnimation"]
       95 LOADN                            R5 0
       96 SETTABLEKS                       R5 R3 K29 ["IdleAnimation"]
       98 LOADN                            R5 0
       99 SETTABLEKS                       R5 R3 K30 ["JumpAnimation"]
      101 LOADN                            R5 0
      102 SETTABLEKS                       R5 R3 K31 ["MoodAnimation"]
      104 LOADN                            R5 0
      105 SETTABLEKS                       R5 R3 K32 ["RunAnimation"]
      107 LOADN                            R5 0
      108 SETTABLEKS                       R5 R3 K33 ["SwimAnimation"]
      110 LOADN                            R5 0
      111 SETTABLEKS                       R5 R3 K34 ["WalkAnimation"]
      113 GETIMPORT                        R5 K4 [game]
      115 LOADK                            R7 K5 ["AsyncRenamesUsedInLuaApps"]
      116 NAMECALL                         R5 R5 K6 ["GetEngineFeature"]
      118 CALL                             R5 2 1
      119 JUMPIFNOT                        R5 ; [+8]
      120 GETUPVAL                         R4 1
      121 MOVE                             R6 R3
      122 GETIMPORT                        R7 K38 [Enum.HumanoidRigType.R15]
      124 NAMECALL                         R4 R4 K39 ["CreateHumanoidModelFromDescriptionAsync"]
      126 CALL                             R4 3 1
      127 JUMP                             ; [+7]
      128 GETUPVAL                         R4 1
      129 MOVE                             R6 R3
      130 GETIMPORT                        R7 K38 [Enum.HumanoidRigType.R15]
      132 NAMECALL                         R4 R4 K40 ["CreateHumanoidModelFromDescription"]
      134 CALL                             R4 3 1
      135 MOVE                             R5 R2
      136 MOVE                             R6 R4
      137 CALL                             R5 1 0
      138 GETIMPORT                        R7 K42 [CFrame.new]
      140 CALL                             R7 0 -1
      141 NAMECALL                         R5 R4 K43 ["PivotTo"]
      143 CALL                             R5 -1 0
      144 LOADK                            R7 K44 ["Accessory"]
      145 NAMECALL                         R5 R4 K45 ["FindFirstChildWhichIsA"]
      147 CALL                             R5 2 1
      148 JUMPIF                           R5 ; [+9]
      149 LOADK                            R7 K46 ["Shirt"]
      150 NAMECALL                         R5 R4 K45 ["FindFirstChildWhichIsA"]
      152 CALL                             R5 2 1
      153 JUMPIF                           R5 ; [+4]
      154 LOADK                            R7 K47 ["Pants"]
      155 NAMECALL                         R5 R4 K45 ["FindFirstChildWhichIsA"]
      157 CALL                             R5 2 1
      158 JUMPIFEQKNIL                     R5 ; [+5]
      160 NAMECALL                         R6 R5 K48 ["Destroy"]
      162 CALL                             R6 1 0
      163 JUMPBACK                         ; [-20]
      164 RETURN                           R4 1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["endsWith"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 LOADK                            R3 K2 ["_Att"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETTABLEKS                       R2 R0 K3 ["Size"]
       10 GETTABLEKS                       R2 R2 K4 ["Magnitude"]
       12 LOADK                            R3 K5 [0.5]
       13 JUMPIFLT                         R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_45:
        0 GETIMPORT                        R1 K2 [string.find]
        2 GETTABLEKS                       R2 R0 K3 ["Name"]
        4 LOADK                            R4 K4 ["^%*_%%a+_Att$"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K3 ["Name"]
        8 NAMECALL                         R4 R4 K5 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_46:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [1] ; [+3]
        3 GETTABLEN                        R2 R0 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["find"]
        8 MOVE                             R3 R0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_47:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%a+_Att$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADK                            R2 K4 [""]
        8 RETURN                           R2 1
        9 LOADN                            R5 -5
       10 FASTCALL3                        STRING_SUB R0 R1 R5
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 GETIMPORT                        R2 K6 [string.sub]
       16 CALL                             R2 3 1
       17 MOVE                             R4 R2
       18 LOADK                            R5 K7 ["Attachment"]
       19 CONCAT                           R3 R4 R5
       20 RETURN                           R3 1

PROTO_48:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_49:
        0 DUPCLOSURE                       R1 K0 [PROTO_44]
        1 CAPTURE                          UPVAL U0
        2 DUPCLOSURE                       R2 K1 [PROTO_46]
        3 CAPTURE                          UPVAL U1
        4 DUPCLOSURE                       R3 K2 [PROTO_47]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K3 ["filter"]
        8 NAMECALL                         R5 R0 K4 ["GetDescendants"]
       10 CALL                             R5 1 1
       11 DUPCLOSURE                       R6 K5 [PROTO_48]
       12 CALL                             R4 2 1
       13 NEWTABLE                         R5 0 0
       15 NEWTABLE                         R6 0 0
       17 MOVE                             R7 R4
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R12 R12 K6 ["endsWith"]
       24 GETTABLEKS                       R13 R11 K7 ["Name"]
       26 LOADK                            R14 K8 ["_Att"]
       27 CALL                             R12 2 1
       28 JUMPIFNOT                        R12 ; [+9]
       29 GETTABLEKS                       R13 R11 K9 ["Size"]
       31 GETTABLEKS                       R13 R13 K10 ["Magnitude"]
       33 LOADK                            R14 K11 [0.5]
       34 JUMPIFLT                         R13 R14 ; [+2]
       36 LOADB                            R12 0 +1
       37 LOADB                            R12 1
       38 JUMPIFNOT                        R12 ; [+8]
       39 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       41 MOVE                             R13 R6
       42 MOVE                             R14 R11
       43 GETIMPORT                        R12 K14 [table.insert]
       45 CALL                             R12 2 0
       46 JUMP                             ; [+7]
       47 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       49 MOVE                             R13 R5
       50 MOVE                             R14 R11
       51 GETIMPORT                        R12 K14 [table.insert]
       53 CALL                             R12 2 0
       54 FORGLOOP                         R7 2 ; [-34]
       56 MOVE                             R7 R5
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 FORGPREP                         R7
       60 LENGTH                           R13 R6
       61 JUMPIFNOTEQKN                    R13 K15 [1] ; [+3]
       63 GETTABLEN                        R12 R6 1
       64 JUMP                             ; [+7]
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K16 ["find"]
       68 MOVE                             R13 R6
       69 NEWCLOSURE                       R14 P4
       70 CAPTURE                          VAL R11
       71 CALL                             R12 2 1
       72 JUMPIFEQKNIL                     R12 ; [+43]
       74 GETIMPORT                        R13 K19 [Instance.new]
       76 LOADK                            R14 K20 ["Attachment"]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R15 R12 K7 ["Name"]
       80 GETIMPORT                        R16 K22 [string.find]
       82 MOVE                             R17 R15
       83 LOADK                            R18 K23 ["%a+_Att$"]
       84 CALL                             R16 2 1
       85 JUMPIFNOTEQKNIL                  R16 ; [+3]
       87 LOADK                            R14 K24 [""]
       88 JUMP                             ; [+11]
       89 LOADN                            R20 -5
       90 FASTCALL3                        STRING_SUB R15 R16 R20
       92 MOVE                             R18 R15
       93 MOVE                             R19 R16
       94 GETIMPORT                        R17 K26 [string.sub]
       96 CALL                             R17 3 1
       97 MOVE                             R18 R17
       98 LOADK                            R19 K20 ["Attachment"]
       99 CONCAT                           R14 R18 R19
      100 SETTABLEKS                       R14 R13 K7 ["Name"]
      102 GETTABLEKS                       R14 R11 K27 ["CFrame"]
      104 GETTABLEKS                       R17 R12 K27 ["CFrame"]
      106 GETTABLEKS                       R18 R12 K28 ["PivotOffset"]
      108 MUL                              R16 R17 R18
      109 NAMECALL                         R14 R14 K29 ["ToObjectSpace"]
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K27 ["CFrame"]
      114 SETTABLEKS                       R11 R13 K30 ["Parent"]
      116 FORGLOOP                         R7 2 ; [-57]
      118 MOVE                             R7 R6
      119 LOADNIL                          R8
      120 LOADNIL                          R9
      121 FORGPREP                         R7
      122 NAMECALL                         R12 R11 K31 ["Destroy"]
      124 CALL                             R12 1 0
      125 FORGLOOP                         R7 2 ; [-4]
      127 NAMECALL                         R7 R0 K32 ["GetChildren"]
      129 CALL                             R7 1 3
      130 FORGPREP                         R7
      131 LOADK                            R14 K33 ["Model"]
      132 NAMECALL                         R12 R11 K34 ["IsA"]
      134 CALL                             R12 2 1
      135 JUMPIFNOT                        R12 ; [+11]
      136 NAMECALL                         R12 R11 K32 ["GetChildren"]
      138 CALL                             R12 1 3
      139 FORGPREP                         R12
      140 SETTABLEKS                       R0 R16 K30 ["Parent"]
      142 FORGLOOP                         R12 2 ; [-3]
      144 NAMECALL                         R12 R11 K31 ["Destroy"]
      146 CALL                             R12 1 0
      147 FORGLOOP                         R7 2 ; [-17]
      149 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Players"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Workspace"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["AvatarCompatibilityPreviewer"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["AdaptiveAnimationTools"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K15 ["Src"]
       42 GETTABLEKS                       R7 R7 K16 ["Util"]
       44 GETTABLEKS                       R7 R7 K17 ["AssetClassificationUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R4 K15 ["Src"]
       51 GETTABLEKS                       R8 R8 K16 ["Util"]
       53 GETTABLEKS                       R8 R8 K18 ["AvatarScalingTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K12 [require]
       58 GETTABLEKS                       R9 R4 K15 ["Src"]
       60 GETTABLEKS                       R9 R9 K19 ["Components"]
       62 GETTABLEKS                       R9 R9 K20 ["Sizing"]
       64 GETTABLEKS                       R9 R9 K21 ["AvatarSizeSpecificationUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K12 [require]
       69 GETTABLEKS                       R10 R4 K15 ["Src"]
       71 GETTABLEKS                       R10 R10 K16 ["Util"]
       73 GETTABLEKS                       R10 R10 K22 ["BoundingBoxUtils"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K12 [require]
       78 GETTABLEKS                       R11 R4 K15 ["Src"]
       80 GETTABLEKS                       R11 R11 K16 ["Util"]
       82 GETTABLEKS                       R11 R11 K23 ["CameraUtils"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K12 [require]
       87 GETTABLEKS                       R12 R4 K15 ["Src"]
       89 GETTABLEKS                       R12 R12 K16 ["Util"]
       91 GETTABLEKS                       R12 R12 K24 ["Constants"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K12 [require]
       96 GETTABLEKS                       R13 R4 K13 ["Packages"]
       98 GETTABLEKS                       R13 R13 K25 ["Dash"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K12 [require]
      103 GETTABLEKS                       R14 R4 K15 ["Src"]
      105 GETTABLEKS                       R14 R14 K16 ["Util"]
      107 GETTABLEKS                       R14 R14 K26 ["HumanoidValueUtil"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K12 [require]
      112 GETTABLEKS                       R15 R4 K13 ["Packages"]
      114 GETTABLEKS                       R15 R15 K27 ["Promise"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K12 [require]
      119 GETTABLEKS                       R16 R4 K15 ["Src"]
      121 GETTABLEKS                       R16 R16 K16 ["Util"]
      123 GETTABLEKS                       R16 R16 K28 ["StringUtil"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K12 [require]
      128 GETTABLEKS                       R17 R4 K15 ["Src"]
      130 GETTABLEKS                       R17 R17 K29 ["Types"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K12 [require]
      135 GETTABLEKS                       R18 R4 K15 ["Src"]
      137 GETTABLEKS                       R18 R18 K19 ["Components"]
      139 GETTABLEKS                       R18 R18 K30 ["UGCValidationContext"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K12 [require]
      144 GETTABLEKS                       R19 R4 K15 ["Src"]
      146 GETTABLEKS                       R19 R19 K19 ["Components"]
      148 GETTABLEKS                       R19 R19 K31 ["DisambiguationMenu"]
      150 GETTABLEKS                       R19 R19 K32 ["getChoosableAssetTypes"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K12 [require]
      155 GETTABLEKS                       R20 R4 K15 ["Src"]
      157 GETTABLEKS                       R20 R20 K33 ["Flags"]
      159 GETTABLEKS                       R20 R20 K34 ["getDFFlagHumanoidRigDescriptionEnabled"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K12 [require]
      164 GETTABLEKS                       R21 R4 K15 ["Src"]
      166 GETTABLEKS                       R21 R21 K33 ["Flags"]
      168 GETTABLEKS                       R21 R21 K35 ["getDFFlagIgnoreLayeredClothingHandleScale"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K12 [require]
      173 GETTABLEKS                       R22 R4 K15 ["Src"]
      175 GETTABLEKS                       R22 R22 K33 ["Flags"]
      177 GETTABLEKS                       R22 R22 K36 ["getFFlagAvatarPreviewerClearTextureIdWithSurfaceAppearance"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K12 [require]
      182 GETTABLEKS                       R23 R4 K15 ["Src"]
      184 GETTABLEKS                       R23 R23 K33 ["Flags"]
      186 GETTABLEKS                       R23 R23 K37 ["getFFlagAvatarPreviewerCustomHumanoidImportOption"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K12 [require]
      191 GETTABLEKS                       R24 R4 K15 ["Src"]
      193 GETTABLEKS                       R24 R24 K33 ["Flags"]
      195 GETTABLEKS                       R24 R24 K38 ["getFFlagAvatarPreviewerEyeLayeredSetup"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K12 [require]
      200 GETTABLEKS                       R25 R4 K15 ["Src"]
      202 GETTABLEKS                       R25 R25 K33 ["Flags"]
      204 GETTABLEKS                       R25 R25 K39 ["getFFlagAvatarPreviewerForceBodyPartOverlayAlphaMode"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K12 [require]
      209 GETTABLEKS                       R26 R4 K15 ["Src"]
      211 GETTABLEKS                       R26 R26 K33 ["Flags"]
      213 GETTABLEKS                       R26 R26 K40 ["getFFlagAvatarPreviewerNestedBoneOriginalPositionFix"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K12 [require]
      218 GETTABLEKS                       R27 R4 K15 ["Src"]
      220 GETTABLEKS                       R27 R27 K33 ["Flags"]
      222 GETTABLEKS                       R27 R27 K41 ["getFFlagAvatarPreviewerProcessRigidOnly"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K12 [require]
      227 GETTABLEKS                       R28 R4 K15 ["Src"]
      229 GETTABLEKS                       R28 R28 K33 ["Flags"]
      231 GETTABLEKS                       R28 R28 K42 ["getFFlagAvatarPreviewerUseMannequinAsTemplateBody"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K12 [require]
      236 GETTABLEKS                       R29 R4 K15 ["Src"]
      238 GETTABLEKS                       R29 R29 K33 ["Flags"]
      240 GETTABLEKS                       R29 R29 K43 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K12 [require]
      245 GETTABLEKS                       R30 R4 K15 ["Src"]
      247 GETTABLEKS                       R30 R30 K16 ["Util"]
      249 GETTABLEKS                       R30 R30 K44 ["getRotationInXZPlane"]
      251 CALL                             R29 1 1
      252 GETIMPORT                        R30 K12 [require]
      254 GETTABLEKS                       R31 R4 K15 ["Src"]
      256 GETTABLEKS                       R31 R31 K33 ["Flags"]
      258 GETTABLEKS                       R31 R31 K45 ["getFFlagAvatarPreviewerCreateDRDs"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K12 [require]
      263 GETTABLEKS                       R32 R4 K15 ["Src"]
      265 GETTABLEKS                       R32 R32 K19 ["Components"]
      267 GETTABLEKS                       R32 R32 K46 ["DisambiguationMenuContext"]
      269 GETTABLEKS                       R32 R32 K47 ["inferLoneMeshPartAssignment"]
      271 CALL                             R31 1 1
      272 GETIMPORT                        R32 K12 [require]
      274 GETTABLEKS                       R33 R4 K15 ["Src"]
      276 GETTABLEKS                       R33 R33 K16 ["Util"]
      278 GETTABLEKS                       R33 R33 K48 ["isAvatar"]
      280 CALL                             R32 1 1
      281 GETIMPORT                        R33 K12 [require]
      283 GETTABLEKS                       R34 R4 K15 ["Src"]
      285 GETTABLEKS                       R34 R34 K19 ["Components"]
      287 GETTABLEKS                       R34 R34 K46 ["DisambiguationMenuContext"]
      289 GETTABLEKS                       R34 R34 K49 ["assignLoneMeshParts"]
      291 CALL                             R33 1 1
      292 NEWTABLE                         R34 32 0
      294 DUPCLOSURE                       R35 K50 [PROTO_0]
      295 CAPTURE                          VAL R8
      296 CAPTURE                          VAL R12
      297 CAPTURE                          VAL R11
      298 SETTABLEKS                       R35 R34 K51 ["computeValidScaleAsync"]
      300 DUPCLOSURE                       R35 K52 [PROTO_1]
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R25
      303 CAPTURE                          VAL R11
      304 CAPTURE                          VAL R1
      305 CAPTURE                          VAL R20
      306 SETTABLEKS                       R35 R34 K53 ["applyScale"]
      308 DUPCLOSURE                       R35 K54 [PROTO_4]
      309 CAPTURE                          VAL R14
      310 CAPTURE                          VAL R28
      311 SETTABLEKS                       R35 R34 K55 ["applyAnimationsScript"]
      313 DUPCLOSURE                       R35 K56 [PROTO_5]
      314 SETTABLEKS                       R35 R34 K57 ["collapseTopLevelFolders"]
      316 DUPCLOSURE                       R35 K58 [PROTO_6]
      317 CAPTURE                          VAL R6
      318 SETTABLEKS                       R35 R34 K59 ["setModelIntendedName"]
      320 DUPCLOSURE                       R35 K60 [PROTO_7]
      321 CAPTURE                          VAL R11
      322 SETTABLEKS                       R35 R34 K61 ["renameModel"]
      324 DUPCLOSURE                       R35 K62 [PROTO_8]
      325 SETTABLEKS                       R35 R34 K63 ["setPivotOffset"]
      327 DUPCLOSURE                       R35 K64 [PROTO_10]
      328 CAPTURE                          VAL R9
      329 SETTABLEKS                       R35 R34 K65 ["getTargetBoundingBox"]
      331 DUPCLOSURE                       R35 K66 [PROTO_15]
      332 CAPTURE                          VAL R34
      333 CAPTURE                          VAL R29
      334 CAPTURE                          VAL R9
      335 CAPTURE                          VAL R3
      336 SETTABLEKS                       R35 R34 K67 ["positionInWorkspace"]
      338 DUPCLOSURE                       R35 K68 [PROTO_16]
      339 CAPTURE                          VAL R0
      340 CAPTURE                          VAL R34
      341 CAPTURE                          VAL R3
      342 CAPTURE                          VAL R10
      343 SETTABLEKS                       R35 R34 K69 ["placeGeneratedAvatar"]
      345 DUPCLOSURE                       R35 K70 [PROTO_17]
      346 SETTABLEKS                       R35 R34 K71 ["wearAccessories"]
      348 DUPCLOSURE                       R35 K72 [PROTO_18]
      349 CAPTURE                          VAL R21
      350 CAPTURE                          VAL R24
      351 CAPTURE                          VAL R11
      352 SETTABLEKS                       R35 R34 K73 ["ensureSurfaceAppearances"]
      354 DUPCLOSURE                       R35 K74 [PROTO_19]
      355 CAPTURE                          VAL R23
      356 CAPTURE                          VAL R6
      357 CAPTURE                          VAL R15
      358 SETTABLEKS                       R35 R34 K75 ["isPreSetupAutoSetupClothes"]
      360 DUPCLOSURE                       R35 K76 [PROTO_20]
      361 CAPTURE                          VAL R23
      362 CAPTURE                          VAL R34
      363 CAPTURE                          VAL R6
      364 CAPTURE                          VAL R15
      365 SETTABLEKS                       R35 R34 K77 ["removePreSetupAutoSetupClothesPrefix"]
      367 DUPCLOSURE                       R35 K78 [PROTO_21]
      368 CAPTURE                          VAL R34
      369 CAPTURE                          VAL R13
      370 SETTABLEKS                       R35 R34 K79 ["applyLayeredClothingProportions"]
      372 DUPCLOSURE                       R35 K80 [PROTO_22]
      373 CAPTURE                          VAL R7
      374 CAPTURE                          VAL R13
      375 SETTABLEKS                       R35 R34 K81 ["applyProportions"]
      377 DUPCLOSURE                       R35 K82 [PROTO_24]
      378 SETTABLEKS                       R35 R34 K83 ["assignWrapLayerOrder"]
      380 DUPCLOSURE                       R35 K84 [PROTO_26]
      381 SETTABLEKS                       R35 R34 K85 ["ensureBodyColors"]
      383 DUPCLOSURE                       R35 K86 [PROTO_27]
      384 SETTABLEKS                       R35 R34 K87 ["removeExtraAttachmentParts"]
      386 DUPCLOSURE                       R35 K88 [PROTO_28]
      387 CAPTURE                          VAL R18
      388 CAPTURE                          VAL R23
      389 CAPTURE                          VAL R34
      390 CAPTURE                          VAL R11
      391 CAPTURE                          VAL R6
      392 CAPTURE                          VAL R31
      393 CAPTURE                          VAL R33
      394 SETTABLEKS                       R35 R34 K89 ["assignLayeredClothing"]
      396 DUPCLOSURE                       R35 K90 [PROTO_29]
      397 SETTABLEKS                       R35 R34 K91 ["computeTranslationUponParent"]
      399 DUPCLOSURE                       R35 K92 [PROTO_30]
      400 CAPTURE                          VAL R34
      401 CAPTURE                          VAL R11
      402 SETTABLEKS                       R35 R34 K93 ["translateBodyPartsToFinalCFrame"]
      404 DUPCLOSURE                       R35 K94 [PROTO_31]
      405 SETTABLEKS                       R35 R34 K95 ["findProportionsFromHumanoid"]
      407 DUPCLOSURE                       R35 K96 [PROTO_33]
      408 CAPTURE                          VAL R11
      409 CAPTURE                          VAL R6
      410 SETTABLEKS                       R35 R34 K97 ["moveRigidToAvatarAttachmentPoints"]
      412 DUPCLOSURE                       R35 K98 [PROTO_34]
      413 CAPTURE                          VAL R22
      414 CAPTURE                          VAL R0
      415 CAPTURE                          VAL R11
      416 CAPTURE                          VAL R34
      417 CAPTURE                          VAL R26
      418 CAPTURE                          VAL R3
      419 CAPTURE                          VAL R10
      420 SETTABLEKS                       R35 R34 K99 ["DEPRECATED_insertBodyAsync"]
      422 DUPCLOSURE                       R35 K100 [PROTO_35]
      423 CAPTURE                          VAL R0
      424 CAPTURE                          VAL R11
      425 CAPTURE                          VAL R34
      426 CAPTURE                          VAL R26
      427 CAPTURE                          VAL R3
      428 CAPTURE                          VAL R10
      429 CAPTURE                          VAL R22
      430 CAPTURE                          VAL R19
      431 CAPTURE                          VAL R5
      432 CAPTURE                          VAL R30
      433 SETTABLEKS                       R35 R34 K101 ["insertBodyAsync"]
      435 DUPCLOSURE                       R35 K102 [PROTO_36]
      436 CAPTURE                          VAL R0
      437 CAPTURE                          VAL R32
      438 CAPTURE                          VAL R34
      439 CAPTURE                          VAL R3
      440 CAPTURE                          VAL R11
      441 CAPTURE                          VAL R10
      442 CAPTURE                          VAL R6
      443 SETTABLEKS                       R35 R34 K103 ["insertClothingAsync"]
      445 DUPCLOSURE                       R35 K104 [PROTO_37]
      446 SETTABLEKS                       R35 R34 K105 ["isClothingOnly"]
      448 DUPCLOSURE                       R35 K106 [PROTO_38]
      449 CAPTURE                          VAL R34
      450 CAPTURE                          VAL R26
      451 CAPTURE                          VAL R22
      452 SETTABLEKS                       R35 R34 K107 ["insertResultAsync"]
      454 DUPCLOSURE                       R35 K108 [PROTO_39]
      455 CAPTURE                          VAL R6
      456 SETTABLEKS                       R35 R34 K109 ["getClothingCategoryCounts"]
      458 DUPCLOSURE                       R35 K110 [PROTO_43]
      459 CAPTURE                          VAL R11
      460 CAPTURE                          VAL R2
      461 CAPTURE                          VAL R27
      462 SETTABLEKS                       R35 R34 K111 ["createTemplateBody"]
      464 DUPCLOSURE                       R35 K112 [PROTO_49]
      465 CAPTURE                          VAL R15
      466 CAPTURE                          VAL R12
      467 SETTABLEKS                       R35 R34 K113 ["processRigidAndAttachmentMeshes"]
      469 RETURN                           R34 1
