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
       22 JUMPIFNOT                        R4 ; [+23]
       23 GETTABLEKS                       R5 R3 K6 ["Overall"]
       25 GETTABLEKS                       R4 R5 K5 ["ok"]
       27 JUMPIFNOT                        R4 ; [+18]
       28 DUPTABLE                         R4 K10 [{"scale", "proportions", "errors"}]
       29 GETTABLEKS                       R7 R3 K6 ["Overall"]
       31 GETTABLEKS                       R6 R7 K7 ["scale"]
       33 DIVRK                            R5 R11 K6 ["Overall"]
       34 SETTABLEKS                       R5 R4 K7 ["scale"]
       36 GETTABLEKS                       R6 R3 K6 ["Overall"]
       38 GETTABLEKS                       R5 R6 K12 ["scaleType"]
       40 SETTABLEKS                       R5 R4 K8 ["proportions"]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K9 ["errors"]
       45 RETURN                           R4 1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K13 ["getBodyTypeSizeSpecification"]
       49 LOADK                            R5 K14 ["ProportionsNormal"]
       50 MOVE                             R6 R1
       51 CALL                             R4 2 1
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R5 R6 K15 ["guessAvatarSizeBounds"]
       55 MOVE                             R6 R4
       56 CALL                             R5 1 1
       57 NAMECALL                         R6 R1 K16 ["GetBoundingBox"]
       59 CALL                             R6 1 2
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K17 ["coversMin"]
       63 MOVE                             R9 R7
       64 GETTABLEKS                       R10 R5 K18 ["minSize"]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R9 R10 K19 ["containsMax"]
       70 MOVE                             R10 R7
       71 GETTABLEKS                       R11 R5 K20 ["maxSize"]
       73 CALL                             R9 2 1
       74 JUMPIFNOT                        R8 ; [+24]
       75 JUMPIFNOT                        R9 ; [+23]
       76 DUPTABLE                         R10 K10 [{"scale", "proportions", "errors"}]
       77 LOADN                            R11 1
       78 SETTABLEKS                       R11 R10 K7 ["scale"]
       80 LOADK                            R11 K14 ["ProportionsNormal"]
       81 SETTABLEKS                       R11 R10 K8 ["proportions"]
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R11 R12 K21 ["append"]
       86 NEWTABLE                         R12 0 1
       88 GETUPVAL                         R14 2
       89 GETTABLEKS                       R13 R14 K22 ["ERROR_NO_VALID_SCALE_ERROR"]
       91 SETLIST                          R12 R13 1 [1]
       93 GETTABLEKS                       R13 R3 K9 ["errors"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K9 ["errors"]
       98 RETURN                           R10 1
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R11 R12 K24 ["getScaleFactorToContain"]
      102 MOVE                             R12 R7
      103 GETTABLEKS                       R13 R5 K20 ["maxSize"]
      105 CALL                             R11 2 1
      106 ADDK                             R10 R11 K23 [0.001]
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R12 R13 K25 ["getScaleFactorToCover"]
      110 MOVE                             R13 R7
      111 GETTABLEKS                       R14 R5 K18 ["minSize"]
      113 CALL                             R12 2 1
      114 SUBK                             R11 R12 K23 [0.001]
      115 JUMPIFNOTLT                      R11 R10 ; [+20]
      117 DUPTABLE                         R12 K10 [{"scale", "proportions", "errors"}]
      118 ADD                              R14 R11 R10
      119 DIVK                             R13 R14 K26 [2]
      120 SETTABLEKS                       R13 R12 K7 ["scale"]
      122 LOADK                            R13 K14 ["ProportionsNormal"]
      123 SETTABLEKS                       R13 R12 K8 ["proportions"]
      125 NEWTABLE                         R13 0 1
      127 LOADK                            R14 K27 ["There is no scale in which the model fits within the min and max bounding boxes."]
      128 SETLIST                          R13 R14 1 [1]
      130 JUMPIF                           R13 ; [+2]
      131 GETTABLEKS                       R13 R3 K9 ["errors"]
      133 SETTABLEKS                       R13 R12 K9 ["errors"]
      135 RETURN                           R12 1
      136 DUPTABLE                         R12 K10 [{"scale", "proportions", "errors"}]
      137 ADD                              R14 R11 R10
      138 DIVK                             R13 R14 K26 [2]
      139 SETTABLEKS                       R13 R12 K7 ["scale"]
      141 LOADK                            R13 K14 ["ProportionsNormal"]
      142 SETTABLEKS                       R13 R12 K8 ["proportions"]
      144 GETUPVAL                         R14 1
      145 GETTABLEKS                       R13 R14 K21 ["append"]
      147 NEWTABLE                         R14 0 1
      149 GETUPVAL                         R16 2
      150 GETTABLEKS                       R15 R16 K22 ["ERROR_NO_VALID_SCALE_ERROR"]
      152 SETLIST                          R14 R15 1 [1]
      154 GETTABLEKS                       R15 R3 K9 ["errors"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K9 ["errors"]
      159 RETURN                           R12 1

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
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K12 ["setOriginalSize"]
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
       60 GETUPVAL                         R14 0
       61 GETTABLEKS                       R13 R14 K12 ["setOriginalSize"]
       63 MOVE                             R14 R12
       64 GETTABLEKS                       R16 R12 K11 ["Size"]
       66 DIV                              R15 R16 R2
       67 CALL                             R13 2 0
       68 JUMP                             ; [+13]
       69 LOADK                            R15 K15 ["Attachment"]
       70 NAMECALL                         R13 R12 K14 ["IsA"]
       72 CALL                             R13 2 1
       73 JUMPIFNOT                        R13 ; [+8]
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K16 ["setOriginalPosition"]
       77 MOVE                             R14 R12
       78 GETTABLEKS                       R16 R12 K17 ["Position"]
       80 DIV                              R15 R16 R2
       81 CALL                             R13 2 0
       82 FORGLOOP                         R8 2 ; [-30]
       84 MOVE                             R8 R5
       85 LOADNIL                          R9
       86 LOADNIL                          R10
       87 FORGPREP                         R8
       88 SETTABLEKS                       R0 R12 K8 ["Parent"]
       90 FORGLOOP                         R8 2 ; [-3]
       92 SETTABLEKS                       R7 R0 K7 ["PrimaryPart"]
       94 GETUPVAL                         R11 1
       95 GETTABLEKS                       R10 R11 K18 ["ATTRIBUTE_ORIGINAL_SETUP_SCALE"]
       97 MOVE                             R11 R2
       98 NAMECALL                         R8 R0 K19 ["SetAttribute"]
      100 CALL                             R8 3 0
      101 GETTABLEKS                       R8 R1 K20 ["errors"]
      103 JUMPIFNOT                        R8 ; [+13]
      104 GETUPVAL                         R8 2
      105 GETTABLEKS                       R10 R1 K20 ["errors"]
      107 NAMECALL                         R8 R8 K21 ["JSONEncode"]
      109 CALL                             R8 2 1
      110 GETUPVAL                         R12 1
      111 GETTABLEKS                       R11 R12 K22 ["ATTRIBUTE_SCALE_ERROR_LIST"]
      113 MOVE                             R12 R8
      114 NAMECALL                         R9 R0 K19 ["SetAttribute"]
      116 CALL                             R9 3 0
      117 NEWTABLE                         R8 0 0
      119 GETUPVAL                         R9 3
      120 CALL                             R9 0 1
      121 JUMPIFNOT                        R9 ; [+20]
      122 GETUPVAL                         R9 4
      123 CALL                             R9 0 1
      124 JUMPIFNOT                        R9 ; [+17]
      125 NAMECALL                         R9 R0 K6 ["GetDescendants"]
      127 CALL                             R9 1 3
      128 FORGPREP                         R9
      129 LOADK                            R16 K23 ["WrapLayer"]
      130 NAMECALL                         R14 R13 K14 ["IsA"]
      132 CALL                             R14 2 1
      133 JUMPIFNOT                        R14 ; [+6]
      134 GETTABLEKS                       R14 R13 K8 ["Parent"]
      136 SETTABLE                         R14 R8 R13
      137 LOADNIL                          R14
      138 SETTABLEKS                       R14 R13 K8 ["Parent"]
      140 FORGLOOP                         R9 2 ; [-12]
      142 LOADN                            R11 1
      143 NAMECALL                         R9 R0 K9 ["ScaleTo"]
      145 CALL                             R9 2 0
      146 GETUPVAL                         R9 3
      147 CALL                             R9 0 1
      148 JUMPIFNOT                        R9 ; [+11]
      149 GETUPVAL                         R9 4
      150 CALL                             R9 0 1
      151 JUMPIFNOT                        R9 ; [+8]
      152 MOVE                             R9 R8
      153 LOADNIL                          R10
      154 LOADNIL                          R11
      155 FORGPREP                         R9
      156 SETTABLEKS                       R13 R12 K8 ["Parent"]
      158 FORGLOOP                         R9 2 ; [-3]
      160 RETURN                           R0 0

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
      199 GETTABLEKS                       R6 R4 K21 ["walk"]
      201 GETTABLEKS                       R5 R6 K23 ["WalkAnim"]
      203 LOADK                            R6 K26 ["rbxassetid://16562332340"]
      204 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      206 GETTABLEKS                       R6 R4 K28 ["run"]
      208 GETTABLEKS                       R5 R6 K29 ["RunAnim"]
      210 LOADK                            R6 K30 ["rbxassetid://16562326358"]
      211 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      213 GETTABLEKS                       R6 R4 K31 ["idle"]
      215 GETTABLEKS                       R5 R6 K32 ["Animation1"]
      217 LOADK                            R6 K33 ["rbxassetid://16562317918"]
      218 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      220 GETTABLEKS                       R6 R4 K34 ["jump"]
      222 GETTABLEKS                       R5 R6 K35 ["JumpAnim"]
      224 LOADK                            R6 K36 ["rbxassetid://16562321958"]
      225 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      227 GETTABLEKS                       R6 R4 K37 ["climb"]
      229 GETTABLEKS                       R5 R6 K38 ["ClimbAnim"]
      231 LOADK                            R6 K39 ["rbxassetid://16562307212"]
      232 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      234 GETTABLEKS                       R6 R4 K40 ["fall"]
      236 GETTABLEKS                       R5 R6 K41 ["FallAnim"]
      238 LOADK                            R6 K42 ["rbxassetid://16562311455"]
      239 SETTABLEKS                       R6 R5 K27 ["AnimationId"]
      241 GETTABLEKS                       R6 R4 K43 ["swim"]
      243 GETTABLEKS                       R5 R6 K44 ["Swim"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
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
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K10 ["getInstanceNameWithoutClassification"]
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
        8 GETTABLEKS                       R3 R1 K0 ["model"]
       10 GETTABLEKS                       R2 R3 K2 ["Name"]
       12 GETIMPORT                        R3 K5 [string.match]
       14 GETIMPORT                        R4 K7 [string.lower]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 LOADK                            R6 K8 ["%*$"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K9 ["BODY_MESH_SUFFIX"]
       22 NAMECALL                         R6 R6 K10 ["format"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+14]
       28 LOADN                            R5 1
       29 LENGTH                           R7 R2
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K9 ["BODY_MESH_SUFFIX"]
       33 LENGTH                           R8 R9
       34 SUB                              R6 R7 R8
       35 FASTCALL3                        STRING_SUB R2 R5 R6
       37 MOVE                             R4 R2
       38 GETIMPORT                        R3 K12 [string.sub]
       40 CALL                             R3 3 1
       41 MOVE                             R2 R3
       42 LOADK                            R4 K13 ["%*%*"]
       43 MOVE                             R6 R2
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K14 ["OUTPUT_MODEL_SUFFIX"]
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
       17 GETTABLEKS                       R6 R0 K7 ["PrimaryPart"]
       19 GETTABLEKS                       R5 R6 K1 ["CFrame"]
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
       60 GETTABLEN                        R4 R1 1
       61 GETTABLEKS                       R3 R4 K6 ["CFrame"]
       63 GETTABLEN                        R5 R1 1
       64 GETTABLEKS                       R4 R5 K7 ["Size"]
       66 RETURN                           R3 2
       67 LENGTH                           R3 R1
       68 LOADN                            R4 0
       69 JUMPIFNOTLT                      R4 R3 ; [+15]
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R3 R4 K9 ["getAABoundingBox"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K1 ["Y"]
        3 DIVK                             R2 R3 K0 [2]
        4 LOADN                            R3 1
        5 LOADN                            R4 0
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
       38 GETTABLEKS                       R8 R3 K12 ["Position"]
       40 GETTABLEKS                       R7 R8 K1 ["Y"]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R9 R10 K1 ["Y"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K1 ["X"]
        3 DIVK                             R2 R3 K0 [2]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["X"]
        7 DIVK                             R3 R4 K0 [2]
        8 ADD                              R1 R2 R3
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["X"]
       12 ADDK                             R3 R4 K0 [2]
       13 SUBK                             R4 R0 K2 [1]
       14 MUL                              R2 R3 R4
       15 ADD                              R1 R1 R2
       16 GETUPVAL                         R5 2
       17 GETIMPORT                        R6 K5 [CFrame.new]
       19 LOADN                            R7 0
       20 GETUPVAL                         R11 3
       21 GETTABLEKS                       R10 R11 K6 ["Y"]
       23 MINUS                            R9 R10
       24 DIVK                             R8 R9 K0 [2]
       25 LOADN                            R9 0
       26 CALL                             R6 3 1
       27 MUL                              R4 R5 R6
       28 GETIMPORT                        R5 K5 [CFrame.new]
       30 LOADN                            R6 0
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R8 R9 K6 ["Y"]
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
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["getTargetBoundingBox"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 2
       10 JUMPIFEQKNIL                     R2 ; [+3]
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K2 ["axisAlignedBoxSize"]
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
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R10 R11 K2 ["axisAlignedBoxSize"]
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
       58 GETUPVAL                         R17 3
       59 GETTABLEKS                       R16 R17 K11 ["CurrentCamera"]
       61 SETLIST                          R14 R15 2 [1]
       63 SETTABLEKS                       R14 R13 K12 ["FilterDescendantsInstances"]
       65 GETIMPORT                        R14 K16 [Enum.RaycastFilterType.Exclude]
       67 SETTABLEKS                       R14 R13 K17 ["FilterType"]
       69 GETIMPORT                        R14 K19 [RaycastParams.new]
       71 CALL                             R14 0 1
       72 NEWTABLE                         R15 0 2
       74 MOVE                             R16 R0
       75 GETUPVAL                         R18 3
       76 GETTABLEKS                       R17 R18 K11 ["CurrentCamera"]
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
      115 GETTABLEKS                       R21 R0 K21 ["PrimaryPart"]
      117 GETTABLEKS                       R20 R21 K22 ["CFrame"]
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
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 LOADK                            R4 K0 ["Humanoid"]
        4 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 RETURN                           R0 0
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 NAMECALL                         R7 R6 K2 ["Clone"]
       16 CALL                             R7 1 1
       17 JUMPIFNOT                        R7 ; [+13]
       18 SETTABLEKS                       R0 R7 K3 ["Parent"]
       20 LOADK                            R10 K4 ["Accessory"]
       21 NAMECALL                         R8 R7 K5 ["IsA"]
       23 CALL                             R8 2 1
       24 JUMPIFNOT                        R8 ; [+6]
       25 GETTABLEKS                       R8 R0 K0 ["Humanoid"]
       27 MOVE                             R10 R7
       28 NAMECALL                         R8 R8 K6 ["AddAccessory"]
       30 CALL                             R8 2 0
       31 FORGLOOP                         R2 2 ; [-18]
       33 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["MeshPart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+19]
        9 LOADK                            R8 K3 ["SurfaceAppearance"]
       10 NAMECALL                         R6 R5 K4 ["FindFirstChildWhichIsA"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+14]
       14 GETTABLEKS                       R6 R5 K5 ["TextureID"]
       16 JUMPIFEQKS                       R6 K6 [""] ; [+11]
       18 GETIMPORT                        R6 K9 [Instance.new]
       20 LOADK                            R7 K3 ["SurfaceAppearance"]
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R5 K5 ["TextureID"]
       24 SETTABLEKS                       R7 R6 K10 ["ColorMap"]
       26 SETTABLEKS                       R5 R6 K11 ["Parent"]
       28 FORGLOOP                         R1 2 ; [-25]
       30 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["getAssetClassificationFromName"]
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
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R1 R2 K8 ["startsWith"]
       29 GETTABLEKS                       R2 R0 K1 ["Name"]
       31 LOADK                            R3 K9 ["RBX_LC_"]
       32 CALL                             R1 2 1
       33 JUMPIF                           R1 ; [+7]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R1 R2 K8 ["startsWith"]
       37 GETTABLEKS                       R2 R0 K1 ["Name"]
       39 LOADK                            R3 K10 ["RBX_RIGID_"]
       40 CALL                             R1 2 1
       41 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+40]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["isPreSetupAutoSetupClothes"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K1 ["getAssetClassificationFromName"]
       13 GETTABLEKS                       R2 R0 K2 ["Name"]
       15 CALL                             R1 1 1
       16 JUMPIFEQKS                       R1 K3 ["Layered"] ; [+3]
       18 JUMPIFNOTEQKS                    R1 K4 ["EyeLayered"] ; [+15]
       20 LOADK                            R4 K5 ["WrapLayer"]
       21 NAMECALL                         R2 R0 K6 ["FindFirstChildWhichIsA"]
       23 CALL                             R2 2 1
       24 JUMPIFEQKNIL                     R2 ; [+9]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K7 ["getInstanceNameWithoutClassification"]
       29 GETTABLEKS                       R4 R2 K2 ["Name"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K2 ["Name"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R2 R3 K7 ["getInstanceNameWithoutClassification"]
       37 GETTABLEKS                       R3 R0 K2 ["Name"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R0 K2 ["Name"]
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R1 R2 K8 ["startsWith"]
       46 GETTABLEKS                       R2 R0 K2 ["Name"]
       48 LOADK                            R3 K9 ["RBX_LC_"]
       49 CALL                             R1 2 1
       50 JUMPIFNOT                        R1 ; [+36]
       51 GETUPVAL                         R2 3
       52 GETTABLEKS                       R1 R2 K10 ["removePrefix"]
       54 GETTABLEKS                       R2 R0 K2 ["Name"]
       56 LOADK                            R3 K9 ["RBX_LC_"]
       57 CALL                             R1 2 1
       58 SETTABLEKS                       R1 R0 K2 ["Name"]
       60 GETUPVAL                         R1 4
       61 CALL                             R1 0 1
       62 JUMPIFNOT                        R1 ; [+41]
       63 LOADK                            R3 K5 ["WrapLayer"]
       64 NAMECALL                         R1 R0 K6 ["FindFirstChildWhichIsA"]
       66 CALL                             R1 2 1
       67 JUMPIFEQKNIL                     R1 ; [+36]
       69 GETUPVAL                         R3 3
       70 GETTABLEKS                       R2 R3 K8 ["startsWith"]
       72 GETTABLEKS                       R3 R1 K2 ["Name"]
       74 LOADK                            R4 K9 ["RBX_LC_"]
       75 CALL                             R2 2 1
       76 JUMPIFNOT                        R2 ; [+27]
       77 GETUPVAL                         R3 3
       78 GETTABLEKS                       R2 R3 K10 ["removePrefix"]
       80 GETTABLEKS                       R3 R1 K2 ["Name"]
       82 LOADK                            R4 K9 ["RBX_LC_"]
       83 CALL                             R2 2 1
       84 SETTABLEKS                       R2 R1 K2 ["Name"]
       86 RETURN                           R0 0
       87 GETUPVAL                         R2 3
       88 GETTABLEKS                       R1 R2 K8 ["startsWith"]
       90 GETTABLEKS                       R2 R0 K2 ["Name"]
       92 LOADK                            R3 K11 ["RBX_RIGID_"]
       93 CALL                             R1 2 1
       94 JUMPIFNOT                        R1 ; [+9]
       95 GETUPVAL                         R2 3
       96 GETTABLEKS                       R1 R2 K10 ["removePrefix"]
       98 GETTABLEKS                       R2 R0 K2 ["Name"]
      100 LOADK                            R3 K11 ["RBX_RIGID_"]
      101 CALL                             R1 2 1
      102 SETTABLEKS                       R1 R0 K2 ["Name"]
      104 RETURN                           R0 0

PROTO_20:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["MeshPart"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+12]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K3 ["isPreSetupAutoSetupClothes"]
       12 MOVE                             R8 R6
       13 CALL                             R7 1 1
       14 JUMPIFNOT                        R7 ; [+6]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K4 ["setAvatarPartScaleType"]
       18 MOVE                             R8 R6
       19 MOVE                             R9 R1
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-18]
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["types"]
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
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+7]
       18 LOADK                            R5 K5 ["Humanoid"]
       19 NAMECALL                         R3 R0 K6 ["FindFirstChild"]
       21 CALL                             R3 2 1
       22 JUMPIFNOTEQKNIL                  R3 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K7 ["setAvatarPartScaleTypeValueObjects"]
       28 MOVE                             R4 R0
       29 MOVE                             R5 R1
       30 CALL                             R3 2 0
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R3 R4 K8 ["setBodyProportionScale"]
       34 GETTABLEKS                       R4 R0 K5 ["Humanoid"]
       36 GETTABLEKS                       R5 R2 K9 ["BodyProportionScale"]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R3 R4 K10 ["setBodyTypeScale"]
       42 GETTABLEKS                       R4 R0 K5 ["Humanoid"]
       44 GETTABLEKS                       R5 R2 K11 ["BodyTypeScale"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getFFlagFixLayeredClothingAssignment() must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 NEWTABLE                         R2 0 0
       12 MOVE                             R3 R0
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R8 R7 K3 ["Parent"]
       18 JUMPIFEQKNIL                     R8 ; [+24]
       20 LOADK                            R11 K4 ["MeshPart"]
       21 NAMECALL                         R9 R8 K5 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIFNOT                        R9 ; [+18]
       25 GETTABLEKS                       R9 R8 K6 ["Size"]
       27 GETTABLEKS                       R12 R9 K7 ["X"]
       29 GETTABLEKS                       R13 R9 K8 ["Y"]
       31 MUL                              R11 R12 R13
       32 GETTABLEKS                       R12 R9 K9 ["Z"]
       34 MUL                              R10 R11 R12
       35 SETTABLE                         R10 R1 R7
       36 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       38 MOVE                             R12 R2
       39 MOVE                             R13 R7
       40 GETIMPORT                        R11 K12 [table.insert]
       42 CALL                             R11 2 0
       43 FORGLOOP                         R3 2 ; [-28]
       45 GETIMPORT                        R3 K14 [table.sort]
       47 MOVE                             R4 R2
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          VAL R1
       50 CALL                             R3 2 0
       51 MOVE                             R3 R2
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 FORGPREP                         R3
       55 SETTABLEKS                       R6 R7 K15 ["Order"]
       57 FORGLOOP                         R3 2 ; [-3]
       59 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getFFlagIncludeBodyColorsInAutoSetup() must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADK                            R3 K3 ["BodyColors"]
        9 NAMECALL                         R1 R0 K4 ["FindFirstAncestorWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 GETIMPORT                        R3 K7 [Instance.new]
       18 LOADK                            R4 K3 ["BodyColors"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R5 R3 K8 ["HeadColor3"]
       22 LOADK                            R8 K9 ["Head"]
       23 NAMECALL                         R6 R0 K10 ["FindFirstChild"]
       25 CALL                             R6 2 1
       26 JUMPIFNOTEQKNIL                  R6 ; [+3]
       28 MOVE                             R4 R5
       29 JUMP                             ; [+9]
       30 LOADK                            R9 K11 ["BasePart"]
       31 NAMECALL                         R7 R6 K12 ["IsA"]
       33 CALL                             R7 2 1
       34 JUMPIF                           R7 ; [+2]
       35 MOVE                             R4 R5
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R4 R6 K13 ["Color"]
       39 SETTABLEKS                       R4 R3 K8 ["HeadColor3"]
       41 GETTABLEKS                       R5 R3 K14 ["TorsoColor3"]
       43 LOADK                            R8 K15 ["UpperTorso"]
       44 NAMECALL                         R6 R0 K10 ["FindFirstChild"]
       46 CALL                             R6 2 1
       47 JUMPIFNOTEQKNIL                  R6 ; [+3]
       49 MOVE                             R4 R5
       50 JUMP                             ; [+9]
       51 LOADK                            R9 K11 ["BasePart"]
       52 NAMECALL                         R7 R6 K12 ["IsA"]
       54 CALL                             R7 2 1
       55 JUMPIF                           R7 ; [+2]
       56 MOVE                             R4 R5
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R4 R6 K13 ["Color"]
       60 SETTABLEKS                       R4 R3 K14 ["TorsoColor3"]
       62 GETTABLEKS                       R5 R3 K16 ["LeftArmColor3"]
       64 LOADK                            R8 K17 ["LeftUpperArm"]
       65 NAMECALL                         R6 R0 K10 ["FindFirstChild"]
       67 CALL                             R6 2 1
       68 JUMPIFNOTEQKNIL                  R6 ; [+3]
       70 MOVE                             R4 R5
       71 JUMP                             ; [+9]
       72 LOADK                            R9 K11 ["BasePart"]
       73 NAMECALL                         R7 R6 K12 ["IsA"]
       75 CALL                             R7 2 1
       76 JUMPIF                           R7 ; [+2]
       77 MOVE                             R4 R5
       78 JUMP                             ; [+2]
       79 GETTABLEKS                       R4 R6 K13 ["Color"]
       81 SETTABLEKS                       R4 R3 K16 ["LeftArmColor3"]
       83 GETTABLEKS                       R5 R3 K16 ["LeftArmColor3"]
       85 LOADK                            R8 K18 ["RightUpperArm"]
       86 NAMECALL                         R6 R0 K10 ["FindFirstChild"]
       88 CALL                             R6 2 1
       89 JUMPIFNOTEQKNIL                  R6 ; [+3]
       91 MOVE                             R4 R5
       92 JUMP                             ; [+9]
       93 LOADK                            R9 K11 ["BasePart"]
       94 NAMECALL                         R7 R6 K12 ["IsA"]
       96 CALL                             R7 2 1
       97 JUMPIF                           R7 ; [+2]
       98 MOVE                             R4 R5
       99 JUMP                             ; [+2]
      100 GETTABLEKS                       R4 R6 K13 ["Color"]
      102 SETTABLEKS                       R4 R3 K19 ["RightArmColor3"]
      104 GETTABLEKS                       R5 R3 K20 ["LeftLegColor3"]
      106 LOADK                            R8 K21 ["LeftUpperLeg"]
      107 NAMECALL                         R6 R0 K10 ["FindFirstChild"]
      109 CALL                             R6 2 1
      110 JUMPIFNOTEQKNIL                  R6 ; [+3]
      112 MOVE                             R4 R5
      113 JUMP                             ; [+9]
      114 LOADK                            R9 K11 ["BasePart"]
      115 NAMECALL                         R7 R6 K12 ["IsA"]
      117 CALL                             R7 2 1
      118 JUMPIF                           R7 ; [+2]
      119 MOVE                             R4 R5
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R4 R6 K13 ["Color"]
      123 SETTABLEKS                       R4 R3 K20 ["LeftLegColor3"]
      125 GETTABLEKS                       R5 R3 K22 ["RightLegColor3"]
      127 LOADK                            R8 K23 ["RightUpperLeg"]
      128 NAMECALL                         R6 R0 K10 ["FindFirstChild"]
      130 CALL                             R6 2 1
      131 JUMPIFNOTEQKNIL                  R6 ; [+3]
      133 MOVE                             R4 R5
      134 JUMP                             ; [+9]
      135 LOADK                            R9 K11 ["BasePart"]
      136 NAMECALL                         R7 R6 K12 ["IsA"]
      138 CALL                             R7 2 1
      139 JUMPIF                           R7 ; [+2]
      140 MOVE                             R4 R5
      141 JUMP                             ; [+2]
      142 GETTABLEKS                       R4 R6 K13 ["Color"]
      144 SETTABLEKS                       R4 R3 K22 ["RightLegColor3"]
      146 SETTABLEKS                       R0 R3 K24 ["Parent"]
      148 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getFFlagFixLayeredClothingAssignment() must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 NAMECALL                         R1 R0 K3 ["GetChildren"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 LOADK                            R8 K4 ["BasePart"]
       13 NAMECALL                         R6 R5 K5 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+10]
       17 GETIMPORT                        R6 K8 [string.find]
       19 GETTABLEKS                       R7 R5 K9 ["Name"]
       21 LOADK                            R8 K10 ["_Att"]
       22 CALL                             R6 2 1
       23 JUMPIFNOT                        R6 ; [+3]
       24 NAMECALL                         R6 R5 K11 ["Remove"]
       26 CALL                             R6 1 0
       27 FORGLOOP                         R1 2 ; [-16]
       29 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getFFlagFixLayeredClothingAssignment() must be enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 2
       10 NEWTABLE                         R3 0 0
       12 NEWTABLE                         R4 0 0
       14 NAMECALL                         R5 R0 K3 ["GetChildren"]
       16 CALL                             R5 1 3
       17 FORGPREP                         R5
       18 LOADK                            R12 K4 ["MeshPart"]
       19 NAMECALL                         R10 R9 K5 ["IsA"]
       21 CALL                             R10 2 1
       22 JUMPIFNOT                        R10 ; [+93]
       23 GETUPVAL                         R10 2
       24 CALL                             R10 0 1
       25 JUMPIF                           R10 ; [+18]
       26 GETUPVAL                         R11 3
       27 GETTABLEKS                       R10 R11 K6 ["isPreSetupAutoSetupClothes"]
       29 MOVE                             R11 R9
       30 CALL                             R10 1 1
       31 JUMPIFNOT                        R10 ; [+12]
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R10 R11 K7 ["removePreSetupAutoSetupClothesPrefix"]
       35 MOVE                             R11 R9
       36 CALL                             R10 1 0
       37 GETUPVAL                         R13 4
       38 GETTABLEKS                       R12 R13 K8 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       40 LOADB                            R13 1
       41 NAMECALL                         R10 R9 K9 ["SetAttribute"]
       43 CALL                             R10 3 0
       44 NAMECALL                         R10 R9 K3 ["GetChildren"]
       46 CALL                             R10 1 3
       47 FORGPREP                         R10
       48 LOADK                            R17 K10 ["WrapLayer"]
       49 NAMECALL                         R15 R14 K5 ["IsA"]
       51 CALL                             R15 2 1
       52 JUMPIFNOT                        R15 ; [+27]
       53 GETUPVAL                         R15 2
       54 CALL                             R15 0 1
       55 JUMPIFNOT                        R15 ; [+13]
       56 GETUPVAL                         R16 5
       57 GETTABLEKS                       R15 R16 K11 ["getAssetClassificationFromName"]
       59 GETTABLEKS                       R16 R9 K12 ["Name"]
       61 CALL                             R15 1 1
       62 JUMPIFNOTEQKS                    R15 K13 ["EyeLayered"] ; [+6]
       64 GETIMPORT                        R15 K17 [Enum.WrapLayerAutoSkin.EnabledOverride]
       66 SETTABLEKS                       R15 R14 K18 ["AutoSkin"]
       68 JUMP                             ; [+4]
       69 GETIMPORT                        R15 K20 [Enum.WrapLayerAutoSkin.EnabledPreserve]
       71 SETTABLEKS                       R15 R14 K18 ["AutoSkin"]
       73 FASTCALL2                        TABLE_INSERT R4 R14 ; [+5]
       75 MOVE                             R16 R4
       76 MOVE                             R17 R14
       77 GETIMPORT                        R15 K23 [table.insert]
       79 CALL                             R15 2 0
       80 FORGLOOP                         R10 2 ; [-33]
       82 GETUPVAL                         R10 2
       83 CALL                             R10 0 1
       84 JUMPIFNOT                        R10 ; [+18]
       85 GETUPVAL                         R11 3
       86 GETTABLEKS                       R10 R11 K6 ["isPreSetupAutoSetupClothes"]
       88 MOVE                             R11 R9
       89 CALL                             R10 1 1
       90 JUMPIFNOT                        R10 ; [+12]
       91 GETUPVAL                         R11 3
       92 GETTABLEKS                       R10 R11 K7 ["removePreSetupAutoSetupClothesPrefix"]
       94 MOVE                             R11 R9
       95 CALL                             R10 1 0
       96 GETUPVAL                         R13 4
       97 GETTABLEKS                       R12 R13 K8 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       99 LOADB                            R13 1
      100 NAMECALL                         R10 R9 K9 ["SetAttribute"]
      102 CALL                             R10 3 0
      103 GETUPVAL                         R10 6
      104 MOVE                             R11 R9
      105 MOVE                             R12 R1
      106 MOVE                             R13 R2
      107 CALL                             R10 3 1
      108 JUMPIFNOT                        R10 ; [+7]
      109 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      111 MOVE                             R12 R3
      112 MOVE                             R13 R10
      113 GETIMPORT                        R11 K23 [table.insert]
      115 CALL                             R11 2 0
      116 FORGLOOP                         R5 2 ; [-99]
      118 GETUPVAL                         R6 3
      119 GETTABLEKS                       R5 R6 K24 ["assignWrapLayerOrder"]
      121 MOVE                             R6 R4
      122 CALL                             R5 1 0
      123 GETUPVAL                         R5 7
      124 MOVE                             R6 R3
      125 CALL                             R5 1 0
      126 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["computeTranslationUponParent"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R2 R5 K1 ["LIMBS"]
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["LIMBS"]
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

PROTO_32:
        0 DUPCLOSURE                       R1 K0 [PROTO_31]
        1 CAPTURE                          UPVAL U0
        2 NAMECALL                         R2 R0 K1 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K2 ["BasePart"]
        7 NAMECALL                         R7 R6 K3 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+36]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R7 R8 K4 ["getAssetClassificationFromName"]
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

PROTO_33:
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
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R10 R11 K12 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       55 LOADB                            R11 1
       56 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       58 CALL                             R8 3 0
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R10 R11 K14 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
       62 MOVE                             R11 R4
       63 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       65 CALL                             R8 3 0
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R10 R11 K15 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
       69 MOVE                             R11 R5
       70 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       72 CALL                             R8 3 0
       73 GETUPVAL                         R11 2
       74 GETTABLEKS                       R10 R11 K16 ["ATTRIBUTE_IMPORT_METHOD"]
       76 LOADN                            R11 0
       77 NAMECALL                         R8 R7 K13 ["SetAttribute"]
       79 CALL                             R8 3 0
       80 LOADNIL                          R8
       81 JUMPIFEQKNIL                     R0 ; [+8]
       83 GETUPVAL                         R10 3
       84 GETTABLEKS                       R9 R10 K17 ["computeValidScaleAsync"]
       86 MOVE                             R10 R0
       87 MOVE                             R11 R7
       88 CALL                             R9 2 1
       89 MOVE                             R8 R9
       90 GETUPVAL                         R9 4
       91 CALL                             R9 0 1
       92 JUMPIFNOT                        R9 ; [+32]
       93 GETUPVAL                         R10 3
       94 GETTABLEKS                       R9 R10 K18 ["translateBodyPartsToFinalCFrame"]
       96 MOVE                             R10 R7
       97 CALL                             R9 1 0
       98 JUMPIFEQKNIL                     R8 ; [+8]
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R9 R10 K19 ["applyLayeredClothingProportions"]
      103 MOVE                             R10 R2
      104 GETTABLEKS                       R11 R8 K20 ["proportions"]
      106 CALL                             R9 2 0
      107 GETUPVAL                         R9 5
      108 CALL                             R9 0 1
      109 JUMPIFNOT                        R9 ; [+5]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R9 R10 K21 ["moveRigidToAvatarAttachmentPoints"]
      113 MOVE                             R10 R7
      114 CALL                             R9 1 0
      115 GETUPVAL                         R10 3
      116 GETTABLEKS                       R9 R10 K22 ["assignLayeredClothing"]
      118 MOVE                             R10 R7
      119 CALL                             R9 1 0
      120 GETUPVAL                         R10 3
      121 GETTABLEKS                       R9 R10 K23 ["removeExtraAttachmentParts"]
      123 MOVE                             R10 R7
      124 CALL                             R9 1 0
      125 JUMPIFEQKNIL                     R8 ; [+7]
      127 GETUPVAL                         R10 3
      128 GETTABLEKS                       R9 R10 K24 ["applyScale"]
      130 MOVE                             R10 R7
      131 MOVE                             R11 R8
      132 CALL                             R9 2 0
      133 GETUPVAL                         R10 3
      134 GETTABLEKS                       R9 R10 K25 ["applyAnimationsScript"]
      136 MOVE                             R10 R7
      137 CALL                             R9 1 0
      138 JUMPIFEQKNIL                     R8 ; [+8]
      140 GETUPVAL                         R10 3
      141 GETTABLEKS                       R9 R10 K26 ["applyProportions"]
      143 MOVE                             R10 R7
      144 GETTABLEKS                       R11 R8 K20 ["proportions"]
      146 CALL                             R9 2 0
      147 GETUPVAL                         R10 3
      148 GETTABLEKS                       R9 R10 K27 ["renameModel"]
      150 MOVE                             R10 R7
      151 MOVE                             R11 R3
      152 CALL                             R9 2 0
      153 GETUPVAL                         R10 3
      154 GETTABLEKS                       R9 R10 K28 ["wearAccessories"]
      156 MOVE                             R10 R7
      157 GETTABLEKS                       R11 R3 K29 ["accessories"]
      159 CALL                             R9 2 0
      160 GETUPVAL                         R10 3
      161 GETTABLEKS                       R9 R10 K30 ["ensureSurfaceAppearances"]
      163 MOVE                             R10 R7
      164 CALL                             R9 1 0
      165 GETUPVAL                         R9 6
      166 CALL                             R9 0 1
      167 JUMPIFNOT                        R9 ; [+5]
      168 GETUPVAL                         R10 3
      169 GETTABLEKS                       R9 R10 K31 ["ensureBodyColors"]
      171 MOVE                             R10 R7
      172 CALL                             R9 1 0
      173 GETUPVAL                         R9 7
      174 SETTABLEKS                       R9 R7 K32 ["Parent"]
      176 GETUPVAL                         R10 3
      177 GETTABLEKS                       R9 R10 K33 ["setPivotOffset"]
      179 MOVE                             R10 R7
      180 CALL                             R9 1 0
      181 GETUPVAL                         R10 3
      182 GETTABLEKS                       R9 R10 K34 ["positionInWorkspace"]
      184 MOVE                             R10 R7
      185 MOVE                             R11 R3
      186 CALL                             R9 2 0
      187 GETUPVAL                         R10 7
      188 GETTABLEKS                       R9 R10 K35 ["CurrentCamera"]
      190 JUMPIFEQKNIL                     R9 ; [+24]
      192 GETUPVAL                         R11 8
      193 GETTABLEKS                       R10 R11 K36 ["zoomIsRequired"]
      195 MOVE                             R11 R9
      196 MOVE                             R12 R7
      197 CALL                             R10 2 1
      198 JUMPIFNOT                        R10 ; [+16]
      199 GETTABLEKS                       R12 R9 K37 ["ViewportSize"]
      201 GETTABLEKS                       R11 R12 K38 ["X"]
      203 GETTABLEKS                       R13 R9 K37 ["ViewportSize"]
      205 GETTABLEKS                       R12 R13 K39 ["Y"]
      207 DIV                              R10 R11 R12
      208 GETUPVAL                         R12 8
      209 GETTABLEKS                       R11 R12 K40 ["zoomToExtents"]
      211 MOVE                             R12 R9
      212 MOVE                             R13 R7
      213 MOVE                             R14 R10
      214 CALL                             R11 3 0
      215 NEWTABLE                         R12 0 1
      217 MOVE                             R13 R7
      218 SETLIST                          R12 R13 1 [1]
      220 NAMECALL                         R10 R1 K41 ["Set"]
      222 CALL                             R10 2 0
      223 JUMPIFNOT                        R6 ; [+7]
      224 GETUPVAL                         R10 1
      225 MOVE                             R12 R6
      226 GETIMPORT                        R13 K45 [Enum.FinishRecordingOperation.Commit]
      228 NAMECALL                         R10 R10 K46 ["FinishRecording"]
      230 CALL                             R10 3 0
      231 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 FASTCALL2K                       ASSERT R8 K0 ; [+4]
        4 LOADK                            R9 K0 ["getFFlagAvatarAutosetupOptionsInput() must be enabled"]
        5 GETIMPORT                        R7 K2 [assert]
        7 CALL                             R7 2 0
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 FASTCALL2K                       ASSERT R8 K3 ; [+4]
       14 LOADK                            R9 K3 ["Inserting body with no target"]
       15 GETIMPORT                        R7 K2 [assert]
       17 CALL                             R7 2 0
       18 GETTABLEKS                       R9 R3 K4 ["model"]
       20 JUMPIFNOTEQKNIL                  R9 ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 FASTCALL2K                       ASSERT R8 K5 ; [+4]
       26 LOADK                            R9 K5 ["Inserting body with no model"]
       27 GETIMPORT                        R7 K2 [assert]
       29 CALL                             R7 2 0
       30 GETTABLEKS                       R7 R2 K6 ["PrimaryPart"]
       32 JUMPIFNOTEQKNIL                  R7 ; [+7]
       34 LOADK                            R9 K7 ["BasePart"]
       35 NAMECALL                         R7 R2 K8 ["FindFirstChildWhichIsA"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R2 K6 ["PrimaryPart"]
       40 GETTABLEKS                       R9 R2 K6 ["PrimaryPart"]
       42 JUMPIFNOTEQKNIL                  R9 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 FASTCALL2K                       ASSERT R8 K9 ; [+4]
       48 LOADK                            R9 K9 ["Auto setup returned model with no primary part"]
       49 GETIMPORT                        R7 K2 [assert]
       51 CALL                             R7 2 0
       52 GETUPVAL                         R7 1
       53 LOADK                            R9 K10 ["AvatarAutoSetup"]
       54 LOADK                            R10 K11 ["Avatar Auto Setup"]
       55 NAMECALL                         R7 R7 K12 ["TryBeginRecording"]
       57 CALL                             R7 3 1
       58 NAMECALL                         R8 R2 K13 ["Clone"]
       60 CALL                             R8 1 1
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R11 R12 K14 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       64 LOADB                            R12 1
       65 NAMECALL                         R9 R8 K15 ["SetAttribute"]
       67 CALL                             R9 3 0
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R11 R12 K16 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
       71 MOVE                             R12 R4
       72 NAMECALL                         R9 R8 K15 ["SetAttribute"]
       74 CALL                             R9 3 0
       75 GETUPVAL                         R12 2
       76 GETTABLEKS                       R11 R12 K17 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
       78 MOVE                             R12 R5
       79 NAMECALL                         R9 R8 K15 ["SetAttribute"]
       81 CALL                             R9 3 0
       82 GETUPVAL                         R12 2
       83 GETTABLEKS                       R11 R12 K18 ["ATTRIBUTE_IMPORT_METHOD"]
       85 LOADN                            R12 0
       86 NAMECALL                         R9 R8 K15 ["SetAttribute"]
       88 CALL                             R9 3 0
       89 LOADNIL                          R9
       90 JUMPIFEQKNIL                     R0 ; [+8]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R10 R11 K19 ["computeValidScaleAsync"]
       95 MOVE                             R11 R0
       96 MOVE                             R12 R8
       97 CALL                             R10 2 1
       98 MOVE                             R9 R10
       99 GETUPVAL                         R10 4
      100 CALL                             R10 0 1
      101 JUMPIFNOT                        R10 ; [+32]
      102 GETUPVAL                         R11 3
      103 GETTABLEKS                       R10 R11 K20 ["translateBodyPartsToFinalCFrame"]
      105 MOVE                             R11 R8
      106 CALL                             R10 1 0
      107 JUMPIFEQKNIL                     R9 ; [+8]
      109 GETUPVAL                         R11 3
      110 GETTABLEKS                       R10 R11 K21 ["applyLayeredClothingProportions"]
      112 MOVE                             R11 R2
      113 GETTABLEKS                       R12 R9 K22 ["proportions"]
      115 CALL                             R10 2 0
      116 GETUPVAL                         R10 5
      117 CALL                             R10 0 1
      118 JUMPIFNOT                        R10 ; [+5]
      119 GETUPVAL                         R11 3
      120 GETTABLEKS                       R10 R11 K23 ["moveRigidToAvatarAttachmentPoints"]
      122 MOVE                             R11 R8
      123 CALL                             R10 1 0
      124 GETUPVAL                         R11 3
      125 GETTABLEKS                       R10 R11 K24 ["assignLayeredClothing"]
      127 MOVE                             R11 R8
      128 CALL                             R10 1 0
      129 GETUPVAL                         R11 3
      130 GETTABLEKS                       R10 R11 K25 ["removeExtraAttachmentParts"]
      132 MOVE                             R11 R8
      133 CALL                             R10 1 0
      134 JUMPIFEQKNIL                     R9 ; [+7]
      136 GETUPVAL                         R11 3
      137 GETTABLEKS                       R10 R11 K26 ["applyScale"]
      139 MOVE                             R11 R8
      140 MOVE                             R12 R9
      141 CALL                             R10 2 0
      142 GETUPVAL                         R11 3
      143 GETTABLEKS                       R10 R11 K27 ["applyAnimationsScript"]
      145 MOVE                             R11 R8
      146 CALL                             R10 1 0
      147 JUMPIFEQKNIL                     R9 ; [+8]
      149 GETUPVAL                         R11 3
      150 GETTABLEKS                       R10 R11 K28 ["applyProportions"]
      152 MOVE                             R11 R8
      153 GETTABLEKS                       R12 R9 K22 ["proportions"]
      155 CALL                             R10 2 0
      156 GETUPVAL                         R11 3
      157 GETTABLEKS                       R10 R11 K29 ["renameModel"]
      159 MOVE                             R11 R8
      160 MOVE                             R12 R3
      161 CALL                             R10 2 0
      162 GETUPVAL                         R11 3
      163 GETTABLEKS                       R10 R11 K30 ["wearAccessories"]
      165 MOVE                             R11 R8
      166 GETTABLEKS                       R12 R3 K31 ["accessories"]
      168 CALL                             R10 2 0
      169 GETUPVAL                         R11 3
      170 GETTABLEKS                       R10 R11 K32 ["ensureSurfaceAppearances"]
      172 MOVE                             R11 R8
      173 CALL                             R10 1 0
      174 GETUPVAL                         R10 6
      175 CALL                             R10 0 1
      176 JUMPIFNOT                        R10 ; [+5]
      177 GETUPVAL                         R11 3
      178 GETTABLEKS                       R10 R11 K33 ["ensureBodyColors"]
      180 MOVE                             R11 R8
      181 CALL                             R10 1 0
      182 GETUPVAL                         R10 7
      183 SETTABLEKS                       R10 R8 K34 ["Parent"]
      185 GETUPVAL                         R11 3
      186 GETTABLEKS                       R10 R11 K35 ["setPivotOffset"]
      188 MOVE                             R11 R8
      189 CALL                             R10 1 0
      190 GETUPVAL                         R11 3
      191 GETTABLEKS                       R10 R11 K36 ["positionInWorkspace"]
      193 MOVE                             R11 R8
      194 MOVE                             R12 R3
      195 CALL                             R10 2 0
      196 GETUPVAL                         R11 7
      197 GETTABLEKS                       R10 R11 K37 ["CurrentCamera"]
      199 JUMPIFEQKNIL                     R10 ; [+24]
      201 GETUPVAL                         R12 8
      202 GETTABLEKS                       R11 R12 K38 ["zoomIsRequired"]
      204 MOVE                             R12 R10
      205 MOVE                             R13 R8
      206 CALL                             R11 2 1
      207 JUMPIFNOT                        R11 ; [+16]
      208 GETTABLEKS                       R13 R10 K39 ["ViewportSize"]
      210 GETTABLEKS                       R12 R13 K40 ["X"]
      212 GETTABLEKS                       R14 R10 K39 ["ViewportSize"]
      214 GETTABLEKS                       R13 R14 K41 ["Y"]
      216 DIV                              R11 R12 R13
      217 GETUPVAL                         R13 8
      218 GETTABLEKS                       R12 R13 K42 ["zoomToExtents"]
      220 MOVE                             R13 R10
      221 MOVE                             R14 R8
      222 MOVE                             R15 R11
      223 CALL                             R12 3 0
      224 GETUPVAL                         R11 9
      225 CALL                             R11 0 1
      226 JUMPIFNOT                        R11 ; [+32]
      227 JUMPIFNOT                        R6 ; [+31]
      228 GETTABLEKS                       R12 R6 K43 ["settings"]
      230 GETTABLEKS                       R11 R12 K44 ["SetupType"]
      232 JUMPIFNOTEQKS                    R11 K45 ["Development"] ; [+26]
      234 GETTABLEKS                       R12 R6 K43 ["settings"]
      236 GETTABLEKS                       R11 R12 K46 ["R15Plus"]
      238 JUMPIFNOT                        R11 ; [+20]
      239 GETUPVAL                         R11 10
      240 CALL                             R11 0 1
      241 JUMPIF                           R11 ; [+5]
      242 GETIMPORT                        R11 K48 [warn]
      244 LOADK                            R12 K49 ["getDFFlagHumanoidRigDescriptionEnabled must be enabled to use CustomHumanoid option"]
      245 CALL                             R11 1 0
      246 RETURN                           R0 0
      247 GETIMPORT                        R11 K52 [Instance.new]
      249 LOADK                            R12 K53 ["HumanoidRigDescription"]
      250 CALL                             R11 1 1
      251 GETUPVAL                         R13 11
      252 GETTABLEKS                       R12 R13 K54 ["autoAll"]
      254 MOVE                             R13 R11
      255 MOVE                             R14 R8
      256 CALL                             R12 2 0
      257 SETTABLEKS                       R8 R11 K34 ["Parent"]
      259 NEWTABLE                         R13 0 1
      261 MOVE                             R14 R8
      262 SETLIST                          R13 R14 1 [1]
      264 NAMECALL                         R11 R1 K55 ["Set"]
      266 CALL                             R11 2 0
      267 JUMPIFNOT                        R7 ; [+7]
      268 GETUPVAL                         R11 1
      269 MOVE                             R13 R7
      270 GETIMPORT                        R14 K59 [Enum.FinishRecordingOperation.Commit]
      272 NAMECALL                         R11 R11 K60 ["FinishRecording"]
      274 CALL                             R11 3 0
      275 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        4 LOADK                            R7 K0 ["getFFlagAvatarAutosetupOptionsInput is not enabled"]
        5 GETIMPORT                        R5 K2 [assert]
        7 CALL                             R5 2 0
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R6 0 +1
       11 LOADB                            R6 1
       12 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       14 LOADK                            R7 K3 ["Inserting body with no target"]
       15 GETIMPORT                        R5 K2 [assert]
       17 CALL                             R5 2 0
       18 GETTABLEKS                       R7 R2 K4 ["model"]
       20 JUMPIFNOTEQKNIL                  R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       26 LOADK                            R7 K5 ["Inserting body with no model"]
       27 GETIMPORT                        R5 K2 [assert]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 1
       31 LOADK                            R7 K6 ["AvatarAutoSetup"]
       32 LOADK                            R8 K7 ["Avatar Auto Setup"]
       33 NAMECALL                         R5 R5 K8 ["TryBeginRecording"]
       35 CALL                             R5 3 1
       36 LOADNIL                          R6
       37 GETTABLEKS                       R9 R2 K9 ["lastFilteredSelection"]
       39 JUMPIFNOTEQKNIL                  R9 ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 FASTCALL2K                       ASSERT R8 K10 ; [+4]
       45 LOADK                            R9 K10 ["Inserting body with no original selection"]
       46 GETIMPORT                        R7 K2 [assert]
       48 CALL                             R7 2 0
       49 GETTABLEKS                       R7 R2 K9 ["lastFilteredSelection"]
       51 LOADNIL                          R8
       52 LOADNIL                          R9
       53 FORGPREP                         R7
       54 GETUPVAL                         R12 2
       55 MOVE                             R13 R11
       56 CALL                             R12 1 1
       57 JUMPIFNOT                        R12 ; [+2]
       58 MOVE                             R6 R11
       59 JUMP                             ; [+14]
       60 NAMECALL                         R12 R11 K11 ["GetChildren"]
       62 CALL                             R12 1 3
       63 FORGPREP                         R12
       64 GETUPVAL                         R17 2
       65 MOVE                             R18 R16
       66 CALL                             R17 1 1
       67 JUMPIFNOT                        R17 ; [+2]
       68 MOVE                             R6 R16
       69 JUMP                             ; [+2]
       70 FORGLOOP                         R12 2 ; [-7]
       72 FORGLOOP                         R7 2 ; [-19]
       74 JUMPIFNOTEQKNIL                  R6 ; [+28]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R7 R8 K12 ["createTemplateBody"]
       79 CALL                             R7 0 1
       80 MOVE                             R6 R7
       81 JUMPIFNOTEQKNIL                  R6 ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 FASTCALL2K                       ASSERT R8 K13 ; [+4]
       87 LOADK                            R9 K13 ["Luau"]
       88 GETIMPORT                        R7 K2 [assert]
       90 CALL                             R7 2 0
       91 GETTABLEKS                       R7 R2 K4 ["model"]
       93 NAMECALL                         R7 R7 K14 ["GetBoundingBox"]
       95 CALL                             R7 1 1
       96 MOVE                             R10 R7
       97 NAMECALL                         R8 R6 K15 ["PivotTo"]
       99 CALL                             R8 2 0
      100 GETUPVAL                         R8 4
      101 SETTABLEKS                       R8 R6 K16 ["Parent"]
      103 JUMPIFNOTEQKNIL                  R6 ; [+2]
      105 LOADB                            R8 0 +1
      106 LOADB                            R8 1
      107 FASTCALL2K                       ASSERT R8 K17 ; [+4]
      109 LOADK                            R9 K17 ["Could not produce output avatar"]
      110 GETIMPORT                        R7 K2 [assert]
      112 CALL                             R7 2 0
      113 NAMECALL                         R7 R1 K18 ["Clone"]
      115 CALL                             R7 1 1
      116 GETUPVAL                         R11 5
      117 GETTABLEKS                       R10 R11 K19 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      119 LOADB                            R11 1
      120 NAMECALL                         R8 R7 K20 ["SetAttribute"]
      122 CALL                             R8 3 0
      123 GETUPVAL                         R11 5
      124 GETTABLEKS                       R10 R11 K21 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      126 MOVE                             R11 R3
      127 NAMECALL                         R8 R7 K20 ["SetAttribute"]
      129 CALL                             R8 3 0
      130 GETUPVAL                         R11 5
      131 GETTABLEKS                       R10 R11 K22 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
      133 MOVE                             R11 R4
      134 NAMECALL                         R8 R7 K20 ["SetAttribute"]
      136 CALL                             R8 3 0
      137 GETUPVAL                         R11 5
      138 GETTABLEKS                       R10 R11 K23 ["ATTRIBUTE_IMPORT_METHOD"]
      140 LOADN                            R11 0
      141 NAMECALL                         R8 R7 K20 ["SetAttribute"]
      143 CALL                             R8 3 0
      144 GETUPVAL                         R9 3
      145 GETTABLEKS                       R8 R9 K24 ["findProportionsFromHumanoid"]
      147 LOADK                            R11 K25 ["Humanoid"]
      148 NAMECALL                         R9 R6 K26 ["FindFirstChildOfClass"]
      150 CALL                             R9 2 -1
      151 CALL                             R8 -1 1
      152 GETUPVAL                         R9 6
      153 CALL                             R9 0 1
      154 JUMPIFNOT                        R9 ; [+18]
      155 JUMPIFEQKNIL                     R8 ; [+7]
      157 GETUPVAL                         R10 3
      158 GETTABLEKS                       R9 R10 K27 ["applyLayeredClothingProportions"]
      160 MOVE                             R10 R7
      161 MOVE                             R11 R8
      162 CALL                             R9 2 0
      163 GETUPVAL                         R10 3
      164 GETTABLEKS                       R9 R10 K28 ["assignLayeredClothing"]
      166 MOVE                             R10 R7
      167 CALL                             R9 1 0
      168 GETUPVAL                         R10 3
      169 GETTABLEKS                       R9 R10 K29 ["removeExtraAttachmentParts"]
      171 MOVE                             R10 R7
      172 CALL                             R9 1 0
      173 GETUPVAL                         R10 4
      174 GETTABLEKS                       R9 R10 K30 ["CurrentCamera"]
      176 JUMPIFEQKNIL                     R9 ; [+24]
      178 GETUPVAL                         R11 7
      179 GETTABLEKS                       R10 R11 K31 ["zoomIsRequired"]
      181 MOVE                             R11 R9
      182 MOVE                             R12 R6
      183 CALL                             R10 2 1
      184 JUMPIFNOT                        R10 ; [+16]
      185 GETTABLEKS                       R12 R9 K32 ["ViewportSize"]
      187 GETTABLEKS                       R11 R12 K33 ["X"]
      189 GETTABLEKS                       R13 R9 K32 ["ViewportSize"]
      191 GETTABLEKS                       R12 R13 K34 ["Y"]
      193 DIV                              R10 R11 R12
      194 GETUPVAL                         R12 7
      195 GETTABLEKS                       R11 R12 K35 ["zoomToExtents"]
      197 MOVE                             R12 R9
      198 MOVE                             R13 R6
      199 MOVE                             R14 R10
      200 CALL                             R11 3 0
      201 NEWTABLE                         R12 0 1
      203 MOVE                             R13 R6
      204 SETLIST                          R12 R13 1 [1]
      206 NAMECALL                         R10 R0 K36 ["Set"]
      208 CALL                             R10 2 0
      209 NAMECALL                         R10 R7 K37 ["GetDescendants"]
      211 CALL                             R10 1 3
      212 FORGPREP                         R10
      213 LOADK                            R17 K38 ["BasePart"]
      214 NAMECALL                         R15 R14 K39 ["IsA"]
      216 CALL                             R15 2 1
      217 JUMPIFNOT                        R15 ; [+51]
      218 GETUPVAL                         R15 8
      219 JUMPIFNOT                        R15 ; [+9]
      220 GETTABLEKS                       R15 R14 K40 ["Name"]
      222 JUMPIFNOTEQKS                    R15 K41 ["RootPart"] ; [+6]
      224 LOADK                            R17 K42 ["Part"]
      225 NAMECALL                         R15 R14 K39 ["IsA"]
      227 CALL                             R15 2 1
      228 JUMPIF                           R15 ; [+40]
      229 GETTABLEKS                       R15 R2 K9 ["lastFilteredSelection"]
      231 LOADNIL                          R16
      232 LOADNIL                          R17
      233 FORGPREP                         R15
      234 GETUPVAL                         R21 9
      235 GETTABLEKS                       R20 R21 K43 ["getInstanceNameWithoutClassification"]
      237 GETTABLEKS                       R21 R14 K40 ["Name"]
      239 CALL                             R20 1 1
      240 GETTABLEKS                       R21 R19 K40 ["Name"]
      242 JUMPIFNOTEQ                      R20 R21 ; [+22]
      244 LOADK                            R22 K44 ["Model"]
      245 NAMECALL                         R20 R19 K39 ["IsA"]
      247 CALL                             R20 2 1
      248 JUMPIFNOT                        R20 ; [+6]
      249 NAMECALL                         R20 R19 K14 ["GetBoundingBox"]
      251 CALL                             R20 1 1
      252 SETTABLEKS                       R20 R14 K45 ["CFrame"]
      254 JUMP                             ; [+12]
      255 LOADK                            R22 K38 ["BasePart"]
      256 NAMECALL                         R20 R19 K39 ["IsA"]
      258 CALL                             R20 2 1
      259 JUMPIFNOT                        R20 ; [+7]
      260 GETTABLEKS                       R20 R19 K45 ["CFrame"]
      262 SETTABLEKS                       R20 R14 K45 ["CFrame"]
      264 JUMP                             ; [+2]
      265 FORGLOOP                         R15 2 ; [-32]
      267 SETTABLEKS                       R6 R14 K16 ["Parent"]
      269 FORGLOOP                         R10 2 ; [-57]
      271 GETUPVAL                         R13 5
      272 GETTABLEKS                       R12 R13 K46 ["ATTRIBUTE_SHOULD_REIMPORT"]
      274 LOADB                            R13 1
      275 NAMECALL                         R10 R6 K20 ["SetAttribute"]
      277 CALL                             R10 3 0
      278 JUMPIFNOT                        R5 ; [+7]
      279 GETUPVAL                         R10 1
      280 MOVE                             R12 R5
      281 GETIMPORT                        R13 K50 [Enum.FinishRecordingOperation.Commit]
      283 NAMECALL                         R10 R10 K51 ["FinishRecording"]
      285 CALL                             R10 3 0
      286 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R1 K4 [{"Body", "Layered", "Rigid", "Unselected"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Body"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["Layered"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["Rigid"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["Unselected"]
       13 NAMECALL                         R2 R0 K5 ["GetChildren"]
       15 CALL                             R2 1 3
       16 FORGPREP                         R2
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K6 ["getAssetClassificationFromName"]
       20 GETTABLEKS                       R8 R6 K7 ["Name"]
       22 CALL                             R7 1 1
       23 GETTABLE                         R8 R1 R7
       24 JUMPIFEQKNIL                     R8 ; [+5]
       26 GETTABLE                         R8 R1 R7
       27 ADDK                             R8 R8 K8 [1]
       28 SETTABLE                         R8 R1 R7
       29 JUMP                             ; [+5]
       30 GETTABLEKS                       R8 R1 K3 ["Unselected"]
       32 ADDK                             R8 R8 K8 [1]
       33 SETTABLEKS                       R8 R1 K3 ["Unselected"]
       35 FORGLOOP                         R2 2 ; [-19]
       37 RETURN                           R1 1

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
        3 GETTABLEKS                       R1 R2 K1 ["Head"]
        5 SETTABLEKS                       R1 R0 K1 ["Head"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       10 GETTABLEKS                       R1 R2 K2 ["Torso"]
       12 SETTABLEKS                       R1 R0 K2 ["Torso"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       17 GETTABLEKS                       R1 R2 K3 ["LeftArm"]
       19 SETTABLEKS                       R1 R0 K3 ["LeftArm"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       24 GETTABLEKS                       R1 R2 K4 ["RightArm"]
       26 SETTABLEKS                       R1 R0 K4 ["RightArm"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       31 GETTABLEKS                       R1 R2 K5 ["LeftLeg"]
       33 SETTABLEKS                       R1 R0 K5 ["LeftLeg"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K0 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       38 GETTABLEKS                       R1 R2 K6 ["RightLeg"]
       40 SETTABLEKS                       R1 R0 K6 ["RightLeg"]
       42 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
        0 DUPCLOSURE                       R0 K0 [PROTO_37]
        1 DUPCLOSURE                       R1 K1 [PROTO_38]
        2 CAPTURE                          UPVAL U0
        3 DUPCLOSURE                       R2 K2 [PROTO_39]
        4 GETIMPORT                        R4 K4 [game]
        6 LOADK                            R6 K5 ["AsyncRenamesUsedInLuaApps"]
        7 NAMECALL                         R4 R4 K6 ["GetEngineFeature"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+8]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K7 ["TEMPLATE_BODY_OUTFIT_ID"]
       15 NAMECALL                         R3 R3 K8 ["GetHumanoidDescriptionFromOutfitIdAsync"]
       17 CALL                             R3 2 1
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K7 ["TEMPLATE_BODY_OUTFIT_ID"]
       23 NAMECALL                         R3 R3 K9 ["GetHumanoidDescriptionFromOutfitId"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 2
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+42]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       32 GETTABLEKS                       R4 R5 K11 ["Head"]
       34 SETTABLEKS                       R4 R3 K11 ["Head"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       39 GETTABLEKS                       R4 R5 K12 ["Torso"]
       41 SETTABLEKS                       R4 R3 K12 ["Torso"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       46 GETTABLEKS                       R4 R5 K13 ["LeftArm"]
       48 SETTABLEKS                       R4 R3 K13 ["LeftArm"]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R5 R6 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       53 GETTABLEKS                       R4 R5 K14 ["RightArm"]
       55 SETTABLEKS                       R4 R3 K14 ["RightArm"]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R5 R6 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       60 GETTABLEKS                       R4 R5 K15 ["LeftLeg"]
       62 SETTABLEKS                       R4 R3 K15 ["LeftLeg"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K10 ["TEMPLATE_BODY_PARTS_ASSET_IDS"]
       67 GETTABLEKS                       R4 R5 K16 ["RightLeg"]
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

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["endsWith"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 LOADK                            R3 K2 ["_Att"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETTABLEKS                       R3 R0 K3 ["Size"]
       10 GETTABLEKS                       R2 R3 K4 ["Magnitude"]
       12 LOADK                            R3 K5 [0.5]
       13 JUMPIFLT                         R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_42:
        0 GETIMPORT                        R1 K2 [string.find]
        2 GETTABLEKS                       R2 R0 K3 ["Name"]
        4 LOADK                            R4 K4 ["^%*_%%a+_Att$"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K3 ["Name"]
        8 NAMECALL                         R4 R4 K5 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_43:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [1] ; [+3]
        3 GETTABLEN                        R2 R0 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["find"]
        8 MOVE                             R3 R0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_44:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%a+_Att$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADK                            R2 K4 [""]
        8 RETURN                           R2 1
        9 LOADN                            R5 251
       10 FASTCALL3                        STRING_SUB R0 R1 R5
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 GETIMPORT                        R2 K6 [string.sub]
       16 CALL                             R2 3 1
       17 MOVE                             R4 R2
       18 LOADK                            R5 K7 ["Attachment"]
       19 CONCAT                           R3 R4 R5
       20 RETURN                           R3 1

PROTO_45:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_46:
        0 DUPCLOSURE                       R1 K0 [PROTO_41]
        1 CAPTURE                          UPVAL U0
        2 DUPCLOSURE                       R2 K1 [PROTO_43]
        3 CAPTURE                          UPVAL U1
        4 DUPCLOSURE                       R3 K2 [PROTO_44]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K3 ["filter"]
        8 NAMECALL                         R5 R0 K4 ["GetChildren"]
       10 CALL                             R5 1 1
       11 DUPCLOSURE                       R6 K5 [PROTO_45]
       12 CALL                             R4 2 1
       13 NEWTABLE                         R5 0 0
       15 NEWTABLE                         R6 0 0
       17 MOVE                             R7 R4
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 GETUPVAL                         R13 0
       22 GETTABLEKS                       R12 R13 K6 ["endsWith"]
       24 GETTABLEKS                       R13 R11 K7 ["Name"]
       26 LOADK                            R14 K8 ["_Att"]
       27 CALL                             R12 2 1
       28 JUMPIFNOT                        R12 ; [+9]
       29 GETTABLEKS                       R14 R11 K9 ["Size"]
       31 GETTABLEKS                       R13 R14 K10 ["Magnitude"]
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
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R12 R13 K16 ["find"]
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
       89 LOADN                            R20 251
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
      127 RETURN                           R0 0

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
       33 GETTABLEKS                       R7 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R7 K14 ["AdaptiveAnimationTools"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R9 R4 K15 ["Src"]
       42 GETTABLEKS                       R8 R9 K16 ["Util"]
       44 GETTABLEKS                       R7 R8 K17 ["AssetClassificationUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R10 R4 K15 ["Src"]
       51 GETTABLEKS                       R9 R10 K16 ["Util"]
       53 GETTABLEKS                       R8 R9 K18 ["AvatarScalingTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K12 [require]
       58 GETTABLEKS                       R12 R4 K15 ["Src"]
       60 GETTABLEKS                       R11 R12 K19 ["Components"]
       62 GETTABLEKS                       R10 R11 K20 ["Sizing"]
       64 GETTABLEKS                       R9 R10 K21 ["AvatarSizeSpecificationUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K12 [require]
       69 GETTABLEKS                       R12 R4 K15 ["Src"]
       71 GETTABLEKS                       R11 R12 K16 ["Util"]
       73 GETTABLEKS                       R10 R11 K22 ["BoundingBoxUtils"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K12 [require]
       78 GETTABLEKS                       R13 R4 K15 ["Src"]
       80 GETTABLEKS                       R12 R13 K16 ["Util"]
       82 GETTABLEKS                       R11 R12 K23 ["CameraUtils"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K12 [require]
       87 GETTABLEKS                       R14 R4 K15 ["Src"]
       89 GETTABLEKS                       R13 R14 K16 ["Util"]
       91 GETTABLEKS                       R12 R13 K24 ["Constants"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K12 [require]
       96 GETTABLEKS                       R14 R4 K13 ["Packages"]
       98 GETTABLEKS                       R13 R14 K25 ["Dash"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K12 [require]
      103 GETTABLEKS                       R16 R4 K15 ["Src"]
      105 GETTABLEKS                       R15 R16 K16 ["Util"]
      107 GETTABLEKS                       R14 R15 K26 ["HumanoidValueUtil"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K12 [require]
      112 GETTABLEKS                       R16 R4 K13 ["Packages"]
      114 GETTABLEKS                       R15 R16 K27 ["Promise"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K12 [require]
      119 GETTABLEKS                       R18 R4 K15 ["Src"]
      121 GETTABLEKS                       R17 R18 K16 ["Util"]
      123 GETTABLEKS                       R16 R17 K28 ["StringUtil"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K12 [require]
      128 GETTABLEKS                       R18 R4 K15 ["Src"]
      130 GETTABLEKS                       R17 R18 K29 ["Types"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K12 [require]
      135 GETTABLEKS                       R20 R4 K15 ["Src"]
      137 GETTABLEKS                       R19 R20 K19 ["Components"]
      139 GETTABLEKS                       R18 R19 K30 ["UGCValidationContext"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K12 [require]
      144 GETTABLEKS                       R22 R4 K15 ["Src"]
      146 GETTABLEKS                       R21 R22 K19 ["Components"]
      148 GETTABLEKS                       R20 R21 K31 ["DisambiguationMenu"]
      150 GETTABLEKS                       R19 R20 K32 ["getChoosableAssetTypes"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K12 [require]
      155 GETTABLEKS                       R22 R4 K15 ["Src"]
      157 GETTABLEKS                       R21 R22 K33 ["Flags"]
      159 GETTABLEKS                       R20 R21 K34 ["getDFFlagHumanoidRigDescriptionEnabled"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K12 [require]
      164 GETTABLEKS                       R23 R4 K15 ["Src"]
      166 GETTABLEKS                       R22 R23 K33 ["Flags"]
      168 GETTABLEKS                       R21 R22 K35 ["getDFFlagIgnoreLayeredClothingHandleScale"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K12 [require]
      173 GETTABLEKS                       R24 R4 K15 ["Src"]
      175 GETTABLEKS                       R23 R24 K33 ["Flags"]
      177 GETTABLEKS                       R22 R23 K36 ["getFFlagAvatarAutosetupOptionsInput"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K12 [require]
      182 GETTABLEKS                       R25 R4 K15 ["Src"]
      184 GETTABLEKS                       R24 R25 K33 ["Flags"]
      186 GETTABLEKS                       R23 R24 K37 ["getFFlagAvatarPreviewerAllowInvalidHumanoid"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K12 [require]
      191 GETTABLEKS                       R26 R4 K15 ["Src"]
      193 GETTABLEKS                       R25 R26 K33 ["Flags"]
      195 GETTABLEKS                       R24 R25 K38 ["getFFlagAvatarPreviewerCustomHumanoidImportOption"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K12 [require]
      200 GETTABLEKS                       R27 R4 K15 ["Src"]
      202 GETTABLEKS                       R26 R27 K33 ["Flags"]
      204 GETTABLEKS                       R25 R26 K39 ["getFFlagAvatarPreviewerEyeLayeredSetup"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K12 [require]
      209 GETTABLEKS                       R28 R4 K15 ["Src"]
      211 GETTABLEKS                       R27 R28 K33 ["Flags"]
      213 GETTABLEKS                       R26 R27 K40 ["getFFlagAvatarPreviewerProcessRigidOnly"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K12 [require]
      218 GETTABLEKS                       R29 R4 K15 ["Src"]
      220 GETTABLEKS                       R28 R29 K33 ["Flags"]
      222 GETTABLEKS                       R27 R28 K41 ["getFFlagAvatarPreviewerUseMannequinAsTemplateBody"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K12 [require]
      227 GETTABLEKS                       R30 R4 K15 ["Src"]
      229 GETTABLEKS                       R29 R30 K33 ["Flags"]
      231 GETTABLEKS                       R28 R29 K42 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K12 [require]
      236 GETTABLEKS                       R31 R4 K15 ["Src"]
      238 GETTABLEKS                       R30 R31 K33 ["Flags"]
      240 GETTABLEKS                       R29 R30 K43 ["getFFlagFixLayeredClothingAssignment"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K12 [require]
      245 GETTABLEKS                       R32 R4 K15 ["Src"]
      247 GETTABLEKS                       R31 R32 K33 ["Flags"]
      249 GETTABLEKS                       R30 R31 K44 ["getFFlagIncludeBodyColorsInAutoSetup"]
      251 CALL                             R29 1 1
      252 GETIMPORT                        R30 K12 [require]
      254 GETTABLEKS                       R33 R4 K15 ["Src"]
      256 GETTABLEKS                       R32 R33 K16 ["Util"]
      258 GETTABLEKS                       R31 R32 K45 ["getRotationInXZPlane"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K1 [game]
      263 LOADK                            R33 K46 ["AvatarPreviewerAvoidExtraRootPart"]
      264 LOADB                            R34 0
      265 NAMECALL                         R31 R31 K47 ["DefineFastFlag"]
      267 CALL                             R31 3 1
      268 GETIMPORT                        R32 K12 [require]
      270 GETTABLEKS                       R36 R4 K15 ["Src"]
      272 GETTABLEKS                       R35 R36 K19 ["Components"]
      274 GETTABLEKS                       R34 R35 K48 ["DisambiguationMenuContext"]
      276 GETTABLEKS                       R33 R34 K49 ["inferLoneMeshPartAssignment"]
      278 CALL                             R32 1 1
      279 GETIMPORT                        R33 K12 [require]
      281 GETTABLEKS                       R36 R4 K15 ["Src"]
      283 GETTABLEKS                       R35 R36 K16 ["Util"]
      285 GETTABLEKS                       R34 R35 K50 ["isAvatar"]
      287 CALL                             R33 1 1
      288 GETIMPORT                        R34 K12 [require]
      290 GETTABLEKS                       R38 R4 K15 ["Src"]
      292 GETTABLEKS                       R37 R38 K19 ["Components"]
      294 GETTABLEKS                       R36 R37 K48 ["DisambiguationMenuContext"]
      296 GETTABLEKS                       R35 R36 K51 ["assignLoneMeshParts"]
      298 CALL                             R34 1 1
      299 NEWTABLE                         R35 32 0
      301 DUPCLOSURE                       R36 K52 [PROTO_0]
      302 CAPTURE                          VAL R8
      303 CAPTURE                          VAL R12
      304 CAPTURE                          VAL R11
      305 SETTABLEKS                       R36 R35 K53 ["computeValidScaleAsync"]
      307 DUPCLOSURE                       R36 K54 [PROTO_1]
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R11
      310 CAPTURE                          VAL R1
      311 CAPTURE                          VAL R28
      312 CAPTURE                          VAL R20
      313 SETTABLEKS                       R36 R35 K55 ["applyScale"]
      315 DUPCLOSURE                       R36 K56 [PROTO_4]
      316 CAPTURE                          VAL R14
      317 CAPTURE                          VAL R27
      318 SETTABLEKS                       R36 R35 K57 ["applyAnimationsScript"]
      320 DUPCLOSURE                       R36 K58 [PROTO_5]
      321 SETTABLEKS                       R36 R35 K59 ["collapseTopLevelFolders"]
      323 DUPCLOSURE                       R36 K60 [PROTO_6]
      324 CAPTURE                          VAL R6
      325 SETTABLEKS                       R36 R35 K61 ["setModelIntendedName"]
      327 DUPCLOSURE                       R36 K62 [PROTO_7]
      328 CAPTURE                          VAL R11
      329 SETTABLEKS                       R36 R35 K63 ["renameModel"]
      331 DUPCLOSURE                       R36 K64 [PROTO_8]
      332 SETTABLEKS                       R36 R35 K65 ["setPivotOffset"]
      334 DUPCLOSURE                       R36 K66 [PROTO_10]
      335 CAPTURE                          VAL R9
      336 SETTABLEKS                       R36 R35 K67 ["getTargetBoundingBox"]
      338 DUPCLOSURE                       R36 K68 [PROTO_15]
      339 CAPTURE                          VAL R35
      340 CAPTURE                          VAL R30
      341 CAPTURE                          VAL R9
      342 CAPTURE                          VAL R3
      343 SETTABLEKS                       R36 R35 K69 ["positionInWorkspace"]
      345 DUPCLOSURE                       R36 K70 [PROTO_16]
      346 CAPTURE                          VAL R22
      347 SETTABLEKS                       R36 R35 K71 ["wearAccessories"]
      349 DUPCLOSURE                       R36 K72 [PROTO_17]
      350 SETTABLEKS                       R36 R35 K73 ["ensureSurfaceAppearances"]
      352 DUPCLOSURE                       R36 K74 [PROTO_18]
      353 CAPTURE                          VAL R24
      354 CAPTURE                          VAL R6
      355 CAPTURE                          VAL R15
      356 SETTABLEKS                       R36 R35 K75 ["isPreSetupAutoSetupClothes"]
      358 DUPCLOSURE                       R36 K76 [PROTO_19]
      359 CAPTURE                          VAL R24
      360 CAPTURE                          VAL R35
      361 CAPTURE                          VAL R6
      362 CAPTURE                          VAL R15
      363 CAPTURE                          VAL R21
      364 SETTABLEKS                       R36 R35 K77 ["removePreSetupAutoSetupClothesPrefix"]
      366 DUPCLOSURE                       R36 K78 [PROTO_20]
      367 CAPTURE                          VAL R35
      368 CAPTURE                          VAL R13
      369 SETTABLEKS                       R36 R35 K79 ["applyLayeredClothingProportions"]
      371 DUPCLOSURE                       R36 K80 [PROTO_21]
      372 CAPTURE                          VAL R7
      373 CAPTURE                          VAL R22
      374 CAPTURE                          VAL R13
      375 SETTABLEKS                       R36 R35 K81 ["applyProportions"]
      377 DUPCLOSURE                       R36 K82 [PROTO_23]
      378 CAPTURE                          VAL R28
      379 SETTABLEKS                       R36 R35 K83 ["assignWrapLayerOrder"]
      381 DUPCLOSURE                       R36 K84 [PROTO_25]
      382 CAPTURE                          VAL R29
      383 SETTABLEKS                       R36 R35 K85 ["ensureBodyColors"]
      385 DUPCLOSURE                       R36 K86 [PROTO_26]
      386 CAPTURE                          VAL R28
      387 SETTABLEKS                       R36 R35 K87 ["removeExtraAttachmentParts"]
      389 DUPCLOSURE                       R36 K88 [PROTO_27]
      390 CAPTURE                          VAL R28
      391 CAPTURE                          VAL R18
      392 CAPTURE                          VAL R24
      393 CAPTURE                          VAL R35
      394 CAPTURE                          VAL R11
      395 CAPTURE                          VAL R6
      396 CAPTURE                          VAL R32
      397 CAPTURE                          VAL R34
      398 SETTABLEKS                       R36 R35 K89 ["assignLayeredClothing"]
      400 DUPCLOSURE                       R36 K90 [PROTO_28]
      401 SETTABLEKS                       R36 R35 K91 ["computeTranslationUponParent"]
      403 DUPCLOSURE                       R36 K92 [PROTO_29]
      404 CAPTURE                          VAL R35
      405 CAPTURE                          VAL R11
      406 SETTABLEKS                       R36 R35 K93 ["translateBodyPartsToFinalCFrame"]
      408 DUPCLOSURE                       R36 K94 [PROTO_30]
      409 SETTABLEKS                       R36 R35 K95 ["findProportionsFromHumanoid"]
      411 DUPCLOSURE                       R36 K96 [PROTO_32]
      412 CAPTURE                          VAL R11
      413 CAPTURE                          VAL R6
      414 SETTABLEKS                       R36 R35 K97 ["moveRigidToAvatarAttachmentPoints"]
      416 DUPCLOSURE                       R36 K98 [PROTO_33]
      417 CAPTURE                          VAL R23
      418 CAPTURE                          VAL R0
      419 CAPTURE                          VAL R11
      420 CAPTURE                          VAL R35
      421 CAPTURE                          VAL R28
      422 CAPTURE                          VAL R25
      423 CAPTURE                          VAL R29
      424 CAPTURE                          VAL R3
      425 CAPTURE                          VAL R10
      426 SETTABLEKS                       R36 R35 K99 ["DEPRECATED_insertBodyAsync"]
      428 DUPCLOSURE                       R36 K100 [PROTO_34]
      429 CAPTURE                          VAL R21
      430 CAPTURE                          VAL R0
      431 CAPTURE                          VAL R11
      432 CAPTURE                          VAL R35
      433 CAPTURE                          VAL R28
      434 CAPTURE                          VAL R25
      435 CAPTURE                          VAL R29
      436 CAPTURE                          VAL R3
      437 CAPTURE                          VAL R10
      438 CAPTURE                          VAL R23
      439 CAPTURE                          VAL R19
      440 CAPTURE                          VAL R5
      441 SETTABLEKS                       R36 R35 K101 ["insertBodyAsync"]
      443 DUPCLOSURE                       R36 K102 [PROTO_35]
      444 CAPTURE                          VAL R21
      445 CAPTURE                          VAL R0
      446 CAPTURE                          VAL R33
      447 CAPTURE                          VAL R35
      448 CAPTURE                          VAL R3
      449 CAPTURE                          VAL R11
      450 CAPTURE                          VAL R28
      451 CAPTURE                          VAL R10
      452 CAPTURE                          VAL R31
      453 CAPTURE                          VAL R6
      454 SETTABLEKS                       R36 R35 K103 ["insertClothingAsync"]
      456 DUPCLOSURE                       R36 K104 [PROTO_36]
      457 CAPTURE                          VAL R6
      458 SETTABLEKS                       R36 R35 K105 ["getClothingCategoryCounts"]
      460 DUPCLOSURE                       R36 K106 [PROTO_40]
      461 CAPTURE                          VAL R11
      462 CAPTURE                          VAL R2
      463 CAPTURE                          VAL R26
      464 SETTABLEKS                       R36 R35 K107 ["createTemplateBody"]
      466 DUPCLOSURE                       R36 K108 [PROTO_46]
      467 CAPTURE                          VAL R15
      468 CAPTURE                          VAL R12
      469 SETTABLEKS                       R36 R35 K109 ["processRigidAndAttachmentMeshes"]
      471 RETURN                           R35 1
