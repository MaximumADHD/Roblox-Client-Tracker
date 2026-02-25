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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["startsWith"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 LOADK                            R3 K2 ["RBX_LC_"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["startsWith"]
       11 GETTABLEKS                       R2 R0 K1 ["Name"]
       13 LOADK                            R3 K3 ["RBX_RIGID_"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["startsWith"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 LOADK                            R3 K2 ["RBX_LC_"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+36]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["removePrefix"]
       11 GETTABLEKS                       R2 R0 K1 ["Name"]
       13 LOADK                            R3 K2 ["RBX_LC_"]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K1 ["Name"]
       17 GETUPVAL                         R1 1
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+41]
       20 LOADK                            R3 K4 ["WrapLayer"]
       21 NAMECALL                         R1 R0 K5 ["FindFirstChildWhichIsA"]
       23 CALL                             R1 2 1
       24 JUMPIFEQKNIL                     R1 ; [+36]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["startsWith"]
       29 GETTABLEKS                       R3 R1 K1 ["Name"]
       31 LOADK                            R4 K2 ["RBX_LC_"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+27]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K3 ["removePrefix"]
       37 GETTABLEKS                       R3 R1 K1 ["Name"]
       39 LOADK                            R4 K2 ["RBX_LC_"]
       40 CALL                             R2 2 1
       41 SETTABLEKS                       R2 R1 K1 ["Name"]
       43 RETURN                           R0 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K0 ["startsWith"]
       47 GETTABLEKS                       R2 R0 K1 ["Name"]
       49 LOADK                            R3 K6 ["RBX_RIGID_"]
       50 CALL                             R1 2 1
       51 JUMPIFNOT                        R1 ; [+9]
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R1 R2 K3 ["removePrefix"]
       55 GETTABLEKS                       R2 R0 K1 ["Name"]
       57 LOADK                            R3 K6 ["RBX_RIGID_"]
       58 CALL                             R1 2 1
       59 SETTABLEKS                       R1 R0 K1 ["Name"]
       61 RETURN                           R0 0

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
       22 JUMPIFNOT                        R10 ; [+53]
       23 GETUPVAL                         R11 2
       24 GETTABLEKS                       R10 R11 K6 ["isPreSetupAutoSetupClothes"]
       26 MOVE                             R11 R9
       27 CALL                             R10 1 1
       28 JUMPIFNOT                        R10 ; [+12]
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R10 R11 K7 ["removePreSetupAutoSetupClothesPrefix"]
       32 MOVE                             R11 R9
       33 CALL                             R10 1 0
       34 GETUPVAL                         R13 3
       35 GETTABLEKS                       R12 R13 K8 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
       37 LOADB                            R13 1
       38 NAMECALL                         R10 R9 K9 ["SetAttribute"]
       40 CALL                             R10 3 0
       41 NAMECALL                         R10 R9 K3 ["GetChildren"]
       43 CALL                             R10 1 3
       44 FORGPREP                         R10
       45 LOADK                            R17 K10 ["WrapLayer"]
       46 NAMECALL                         R15 R14 K5 ["IsA"]
       48 CALL                             R15 2 1
       49 JUMPIFNOT                        R15 ; [+11]
       50 GETIMPORT                        R15 K14 [Enum.WrapLayerAutoSkin.EnabledPreserve]
       52 SETTABLEKS                       R15 R14 K15 ["AutoSkin"]
       54 FASTCALL2                        TABLE_INSERT R4 R14 ; [+5]
       56 MOVE                             R16 R4
       57 MOVE                             R17 R14
       58 GETIMPORT                        R15 K18 [table.insert]
       60 CALL                             R15 2 0
       61 FORGLOOP                         R10 2 ; [-17]
       63 GETUPVAL                         R10 4
       64 MOVE                             R11 R9
       65 MOVE                             R12 R1
       66 MOVE                             R13 R2
       67 CALL                             R10 3 1
       68 JUMPIFNOT                        R10 ; [+7]
       69 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       71 MOVE                             R12 R3
       72 MOVE                             R13 R10
       73 GETIMPORT                        R11 K18 [table.insert]
       75 CALL                             R11 2 0
       76 FORGLOOP                         R5 2 ; [-59]
       78 GETUPVAL                         R6 2
       79 GETTABLEKS                       R5 R6 K19 ["assignWrapLayerOrder"]
       81 MOVE                             R6 R4
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 5
       84 MOVE                             R6 R3
       85 CALL                             R5 1 0
       86 RETURN                           R0 0

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
       92 JUMPIFNOT                        R9 ; [+24]
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
      107 GETUPVAL                         R10 3
      108 GETTABLEKS                       R9 R10 K21 ["assignLayeredClothing"]
      110 MOVE                             R10 R7
      111 CALL                             R9 1 0
      112 GETUPVAL                         R10 3
      113 GETTABLEKS                       R9 R10 K22 ["removeExtraAttachmentParts"]
      115 MOVE                             R10 R7
      116 CALL                             R9 1 0
      117 JUMPIFEQKNIL                     R8 ; [+7]
      119 GETUPVAL                         R10 3
      120 GETTABLEKS                       R9 R10 K23 ["applyScale"]
      122 MOVE                             R10 R7
      123 MOVE                             R11 R8
      124 CALL                             R9 2 0
      125 GETUPVAL                         R10 3
      126 GETTABLEKS                       R9 R10 K24 ["applyAnimationsScript"]
      128 MOVE                             R10 R7
      129 CALL                             R9 1 0
      130 JUMPIFEQKNIL                     R8 ; [+8]
      132 GETUPVAL                         R10 3
      133 GETTABLEKS                       R9 R10 K25 ["applyProportions"]
      135 MOVE                             R10 R7
      136 GETTABLEKS                       R11 R8 K20 ["proportions"]
      138 CALL                             R9 2 0
      139 GETUPVAL                         R10 3
      140 GETTABLEKS                       R9 R10 K26 ["renameModel"]
      142 MOVE                             R10 R7
      143 MOVE                             R11 R3
      144 CALL                             R9 2 0
      145 GETUPVAL                         R10 3
      146 GETTABLEKS                       R9 R10 K27 ["wearAccessories"]
      148 MOVE                             R10 R7
      149 GETTABLEKS                       R11 R3 K28 ["accessories"]
      151 CALL                             R9 2 0
      152 GETUPVAL                         R10 3
      153 GETTABLEKS                       R9 R10 K29 ["ensureSurfaceAppearances"]
      155 MOVE                             R10 R7
      156 CALL                             R9 1 0
      157 GETUPVAL                         R9 5
      158 CALL                             R9 0 1
      159 JUMPIFNOT                        R9 ; [+5]
      160 GETUPVAL                         R10 3
      161 GETTABLEKS                       R9 R10 K30 ["ensureBodyColors"]
      163 MOVE                             R10 R7
      164 CALL                             R9 1 0
      165 GETUPVAL                         R9 6
      166 SETTABLEKS                       R9 R7 K31 ["Parent"]
      168 GETUPVAL                         R10 3
      169 GETTABLEKS                       R9 R10 K32 ["setPivotOffset"]
      171 MOVE                             R10 R7
      172 CALL                             R9 1 0
      173 GETUPVAL                         R10 3
      174 GETTABLEKS                       R9 R10 K33 ["positionInWorkspace"]
      176 MOVE                             R10 R7
      177 MOVE                             R11 R3
      178 CALL                             R9 2 0
      179 GETUPVAL                         R10 6
      180 GETTABLEKS                       R9 R10 K34 ["CurrentCamera"]
      182 JUMPIFEQKNIL                     R9 ; [+24]
      184 GETUPVAL                         R11 7
      185 GETTABLEKS                       R10 R11 K35 ["zoomIsRequired"]
      187 MOVE                             R11 R9
      188 MOVE                             R12 R7
      189 CALL                             R10 2 1
      190 JUMPIFNOT                        R10 ; [+16]
      191 GETTABLEKS                       R12 R9 K36 ["ViewportSize"]
      193 GETTABLEKS                       R11 R12 K37 ["X"]
      195 GETTABLEKS                       R13 R9 K36 ["ViewportSize"]
      197 GETTABLEKS                       R12 R13 K38 ["Y"]
      199 DIV                              R10 R11 R12
      200 GETUPVAL                         R12 7
      201 GETTABLEKS                       R11 R12 K39 ["zoomToExtents"]
      203 MOVE                             R12 R9
      204 MOVE                             R13 R7
      205 MOVE                             R14 R10
      206 CALL                             R11 3 0
      207 NEWTABLE                         R12 0 1
      209 MOVE                             R13 R7
      210 SETLIST                          R12 R13 1 [1]
      212 NAMECALL                         R10 R1 K40 ["Set"]
      214 CALL                             R10 2 0
      215 JUMPIFNOT                        R6 ; [+7]
      216 GETUPVAL                         R10 1
      217 MOVE                             R12 R6
      218 GETIMPORT                        R13 K44 [Enum.FinishRecordingOperation.Commit]
      220 NAMECALL                         R10 R10 K45 ["FinishRecording"]
      222 CALL                             R10 3 0
      223 RETURN                           R0 0

PROTO_32:
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
      101 JUMPIFNOT                        R10 ; [+24]
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
      116 GETUPVAL                         R11 3
      117 GETTABLEKS                       R10 R11 K23 ["assignLayeredClothing"]
      119 MOVE                             R11 R8
      120 CALL                             R10 1 0
      121 GETUPVAL                         R11 3
      122 GETTABLEKS                       R10 R11 K24 ["removeExtraAttachmentParts"]
      124 MOVE                             R11 R8
      125 CALL                             R10 1 0
      126 JUMPIFEQKNIL                     R9 ; [+7]
      128 GETUPVAL                         R11 3
      129 GETTABLEKS                       R10 R11 K25 ["applyScale"]
      131 MOVE                             R11 R8
      132 MOVE                             R12 R9
      133 CALL                             R10 2 0
      134 GETUPVAL                         R11 3
      135 GETTABLEKS                       R10 R11 K26 ["applyAnimationsScript"]
      137 MOVE                             R11 R8
      138 CALL                             R10 1 0
      139 JUMPIFEQKNIL                     R9 ; [+8]
      141 GETUPVAL                         R11 3
      142 GETTABLEKS                       R10 R11 K27 ["applyProportions"]
      144 MOVE                             R11 R8
      145 GETTABLEKS                       R12 R9 K22 ["proportions"]
      147 CALL                             R10 2 0
      148 GETUPVAL                         R11 3
      149 GETTABLEKS                       R10 R11 K28 ["renameModel"]
      151 MOVE                             R11 R8
      152 MOVE                             R12 R3
      153 CALL                             R10 2 0
      154 GETUPVAL                         R11 3
      155 GETTABLEKS                       R10 R11 K29 ["wearAccessories"]
      157 MOVE                             R11 R8
      158 GETTABLEKS                       R12 R3 K30 ["accessories"]
      160 CALL                             R10 2 0
      161 GETUPVAL                         R11 3
      162 GETTABLEKS                       R10 R11 K31 ["ensureSurfaceAppearances"]
      164 MOVE                             R11 R8
      165 CALL                             R10 1 0
      166 GETUPVAL                         R10 5
      167 CALL                             R10 0 1
      168 JUMPIFNOT                        R10 ; [+5]
      169 GETUPVAL                         R11 3
      170 GETTABLEKS                       R10 R11 K32 ["ensureBodyColors"]
      172 MOVE                             R11 R8
      173 CALL                             R10 1 0
      174 GETUPVAL                         R10 6
      175 SETTABLEKS                       R10 R8 K33 ["Parent"]
      177 GETUPVAL                         R11 3
      178 GETTABLEKS                       R10 R11 K34 ["setPivotOffset"]
      180 MOVE                             R11 R8
      181 CALL                             R10 1 0
      182 GETUPVAL                         R11 3
      183 GETTABLEKS                       R10 R11 K35 ["positionInWorkspace"]
      185 MOVE                             R11 R8
      186 MOVE                             R12 R3
      187 CALL                             R10 2 0
      188 GETUPVAL                         R11 6
      189 GETTABLEKS                       R10 R11 K36 ["CurrentCamera"]
      191 JUMPIFEQKNIL                     R10 ; [+24]
      193 GETUPVAL                         R12 7
      194 GETTABLEKS                       R11 R12 K37 ["zoomIsRequired"]
      196 MOVE                             R12 R10
      197 MOVE                             R13 R8
      198 CALL                             R11 2 1
      199 JUMPIFNOT                        R11 ; [+16]
      200 GETTABLEKS                       R13 R10 K38 ["ViewportSize"]
      202 GETTABLEKS                       R12 R13 K39 ["X"]
      204 GETTABLEKS                       R14 R10 K38 ["ViewportSize"]
      206 GETTABLEKS                       R13 R14 K40 ["Y"]
      208 DIV                              R11 R12 R13
      209 GETUPVAL                         R13 7
      210 GETTABLEKS                       R12 R13 K41 ["zoomToExtents"]
      212 MOVE                             R13 R10
      213 MOVE                             R14 R8
      214 MOVE                             R15 R11
      215 CALL                             R12 3 0
      216 GETUPVAL                         R11 8
      217 CALL                             R11 0 1
      218 JUMPIFNOT                        R11 ; [+32]
      219 JUMPIFNOT                        R6 ; [+31]
      220 GETTABLEKS                       R12 R6 K42 ["settings"]
      222 GETTABLEKS                       R11 R12 K43 ["SetupType"]
      224 JUMPIFNOTEQKS                    R11 K44 ["Development"] ; [+26]
      226 GETTABLEKS                       R12 R6 K42 ["settings"]
      228 GETTABLEKS                       R11 R12 K45 ["R15Plus"]
      230 JUMPIFNOT                        R11 ; [+20]
      231 GETUPVAL                         R11 9
      232 CALL                             R11 0 1
      233 JUMPIF                           R11 ; [+5]
      234 GETIMPORT                        R11 K47 [warn]
      236 LOADK                            R12 K48 ["getDFFlagHumanoidRigDescriptionEnabled must be enabled to use CustomHumanoid option"]
      237 CALL                             R11 1 0
      238 RETURN                           R0 0
      239 GETIMPORT                        R11 K51 [Instance.new]
      241 LOADK                            R12 K52 ["HumanoidRigDescription"]
      242 CALL                             R11 1 1
      243 GETUPVAL                         R13 10
      244 GETTABLEKS                       R12 R13 K53 ["autoAll"]
      246 MOVE                             R13 R11
      247 MOVE                             R14 R8
      248 CALL                             R12 2 0
      249 SETTABLEKS                       R8 R11 K33 ["Parent"]
      251 NEWTABLE                         R13 0 1
      253 MOVE                             R14 R8
      254 SETLIST                          R13 R14 1 [1]
      256 NAMECALL                         R11 R1 K54 ["Set"]
      258 CALL                             R11 2 0
      259 JUMPIFNOT                        R7 ; [+7]
      260 GETUPVAL                         R11 1
      261 MOVE                             R13 R7
      262 GETIMPORT                        R14 K58 [Enum.FinishRecordingOperation.Commit]
      264 NAMECALL                         R11 R11 K59 ["FinishRecording"]
      266 CALL                             R11 3 0
      267 RETURN                           R0 0

PROTO_33:
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
       74 JUMPIFNOTEQKNIL                  R6 ; [+31]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R7 R8 K12 ["createTemplateBodyFromOutfitId"]
       79 GETUPVAL                         R9 4
       80 GETTABLEKS                       R8 R9 K13 ["TEMPLATE_BODY_OUTFIT_ID"]
       82 CALL                             R7 1 1
       83 MOVE                             R6 R7
       84 JUMPIFNOTEQKNIL                  R6 ; [+2]
       86 LOADB                            R8 0 +1
       87 LOADB                            R8 1
       88 FASTCALL2K                       ASSERT R8 K14 ; [+4]
       90 LOADK                            R9 K14 ["Luau"]
       91 GETIMPORT                        R7 K2 [assert]
       93 CALL                             R7 2 0
       94 GETTABLEKS                       R7 R2 K4 ["model"]
       96 NAMECALL                         R7 R7 K15 ["GetBoundingBox"]
       98 CALL                             R7 1 1
       99 MOVE                             R10 R7
      100 NAMECALL                         R8 R6 K16 ["PivotTo"]
      102 CALL                             R8 2 0
      103 GETUPVAL                         R8 5
      104 SETTABLEKS                       R8 R6 K17 ["Parent"]
      106 JUMPIFNOTEQKNIL                  R6 ; [+2]
      108 LOADB                            R8 0 +1
      109 LOADB                            R8 1
      110 FASTCALL2K                       ASSERT R8 K18 ; [+4]
      112 LOADK                            R9 K18 ["Could not produce output avatar"]
      113 GETIMPORT                        R7 K2 [assert]
      115 CALL                             R7 2 0
      116 NAMECALL                         R7 R1 K19 ["Clone"]
      118 CALL                             R7 1 1
      119 GETUPVAL                         R11 4
      120 GETTABLEKS                       R10 R11 K20 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
      122 LOADB                            R11 1
      123 NAMECALL                         R8 R7 K21 ["SetAttribute"]
      125 CALL                             R8 3 0
      126 GETUPVAL                         R11 4
      127 GETTABLEKS                       R10 R11 K22 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      129 MOVE                             R11 R3
      130 NAMECALL                         R8 R7 K21 ["SetAttribute"]
      132 CALL                             R8 3 0
      133 GETUPVAL                         R11 4
      134 GETTABLEKS                       R10 R11 K23 ["ATTRIBUTE_ORIGINAL_MODEL_HASH"]
      136 MOVE                             R11 R4
      137 NAMECALL                         R8 R7 K21 ["SetAttribute"]
      139 CALL                             R8 3 0
      140 GETUPVAL                         R11 4
      141 GETTABLEKS                       R10 R11 K24 ["ATTRIBUTE_IMPORT_METHOD"]
      143 LOADN                            R11 0
      144 NAMECALL                         R8 R7 K21 ["SetAttribute"]
      146 CALL                             R8 3 0
      147 GETUPVAL                         R9 3
      148 GETTABLEKS                       R8 R9 K25 ["findProportionsFromHumanoid"]
      150 LOADK                            R11 K26 ["Humanoid"]
      151 NAMECALL                         R9 R6 K27 ["FindFirstChildOfClass"]
      153 CALL                             R9 2 -1
      154 CALL                             R8 -1 1
      155 GETUPVAL                         R9 6
      156 CALL                             R9 0 1
      157 JUMPIFNOT                        R9 ; [+18]
      158 JUMPIFEQKNIL                     R8 ; [+7]
      160 GETUPVAL                         R10 3
      161 GETTABLEKS                       R9 R10 K28 ["applyLayeredClothingProportions"]
      163 MOVE                             R10 R7
      164 MOVE                             R11 R8
      165 CALL                             R9 2 0
      166 GETUPVAL                         R10 3
      167 GETTABLEKS                       R9 R10 K29 ["assignLayeredClothing"]
      169 MOVE                             R10 R7
      170 CALL                             R9 1 0
      171 GETUPVAL                         R10 3
      172 GETTABLEKS                       R9 R10 K30 ["removeExtraAttachmentParts"]
      174 MOVE                             R10 R7
      175 CALL                             R9 1 0
      176 GETUPVAL                         R10 5
      177 GETTABLEKS                       R9 R10 K31 ["CurrentCamera"]
      179 JUMPIFEQKNIL                     R9 ; [+24]
      181 GETUPVAL                         R11 7
      182 GETTABLEKS                       R10 R11 K32 ["zoomIsRequired"]
      184 MOVE                             R11 R9
      185 MOVE                             R12 R6
      186 CALL                             R10 2 1
      187 JUMPIFNOT                        R10 ; [+16]
      188 GETTABLEKS                       R12 R9 K33 ["ViewportSize"]
      190 GETTABLEKS                       R11 R12 K34 ["X"]
      192 GETTABLEKS                       R13 R9 K33 ["ViewportSize"]
      194 GETTABLEKS                       R12 R13 K35 ["Y"]
      196 DIV                              R10 R11 R12
      197 GETUPVAL                         R12 7
      198 GETTABLEKS                       R11 R12 K36 ["zoomToExtents"]
      200 MOVE                             R12 R9
      201 MOVE                             R13 R6
      202 MOVE                             R14 R10
      203 CALL                             R11 3 0
      204 NEWTABLE                         R12 0 1
      206 MOVE                             R13 R6
      207 SETLIST                          R12 R13 1 [1]
      209 NAMECALL                         R10 R0 K37 ["Set"]
      211 CALL                             R10 2 0
      212 NAMECALL                         R10 R7 K38 ["GetDescendants"]
      214 CALL                             R10 1 3
      215 FORGPREP                         R10
      216 LOADK                            R17 K39 ["BasePart"]
      217 NAMECALL                         R15 R14 K40 ["IsA"]
      219 CALL                             R15 2 1
      220 JUMPIFNOT                        R15 ; [+51]
      221 GETUPVAL                         R15 8
      222 JUMPIFNOT                        R15 ; [+9]
      223 GETTABLEKS                       R15 R14 K41 ["Name"]
      225 JUMPIFNOTEQKS                    R15 K42 ["RootPart"] ; [+6]
      227 LOADK                            R17 K43 ["Part"]
      228 NAMECALL                         R15 R14 K40 ["IsA"]
      230 CALL                             R15 2 1
      231 JUMPIF                           R15 ; [+40]
      232 GETTABLEKS                       R15 R2 K9 ["lastFilteredSelection"]
      234 LOADNIL                          R16
      235 LOADNIL                          R17
      236 FORGPREP                         R15
      237 GETUPVAL                         R21 9
      238 GETTABLEKS                       R20 R21 K44 ["getInstanceNameWithoutClassification"]
      240 GETTABLEKS                       R21 R14 K41 ["Name"]
      242 CALL                             R20 1 1
      243 GETTABLEKS                       R21 R19 K41 ["Name"]
      245 JUMPIFNOTEQ                      R20 R21 ; [+22]
      247 LOADK                            R22 K45 ["Model"]
      248 NAMECALL                         R20 R19 K40 ["IsA"]
      250 CALL                             R20 2 1
      251 JUMPIFNOT                        R20 ; [+6]
      252 NAMECALL                         R20 R19 K15 ["GetBoundingBox"]
      254 CALL                             R20 1 1
      255 SETTABLEKS                       R20 R14 K46 ["CFrame"]
      257 JUMP                             ; [+12]
      258 LOADK                            R22 K39 ["BasePart"]
      259 NAMECALL                         R20 R19 K40 ["IsA"]
      261 CALL                             R20 2 1
      262 JUMPIFNOT                        R20 ; [+7]
      263 GETTABLEKS                       R20 R19 K46 ["CFrame"]
      265 SETTABLEKS                       R20 R14 K46 ["CFrame"]
      267 JUMP                             ; [+2]
      268 FORGLOOP                         R15 2 ; [-32]
      270 SETTABLEKS                       R6 R14 K17 ["Parent"]
      272 FORGLOOP                         R10 2 ; [-57]
      274 GETUPVAL                         R13 4
      275 GETTABLEKS                       R12 R13 K47 ["ATTRIBUTE_SHOULD_REIMPORT"]
      277 LOADB                            R13 1
      278 NAMECALL                         R10 R6 K21 ["SetAttribute"]
      280 CALL                             R10 3 0
      281 JUMPIFNOT                        R5 ; [+7]
      282 GETUPVAL                         R10 1
      283 MOVE                             R12 R5
      284 GETIMPORT                        R13 K51 [Enum.FinishRecordingOperation.Commit]
      286 NAMECALL                         R10 R10 K52 ["FinishRecording"]
      288 CALL                             R10 3 0
      289 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 DUPCLOSURE                       R1 K0 [PROTO_35]
        1 DUPCLOSURE                       R2 K1 [PROTO_36]
        2 GETIMPORT                        R4 K3 [game]
        4 LOADK                            R6 K4 ["AsyncRenamesUsedInLuaApps"]
        5 NAMECALL                         R4 R4 K5 ["GetEngineFeature"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+6]
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K6 ["GetHumanoidDescriptionFromOutfitIdAsync"]
       13 CALL                             R3 2 1
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R3 0
       16 MOVE                             R5 R0
       17 NAMECALL                         R3 R3 K7 ["GetHumanoidDescriptionFromOutfitId"]
       19 CALL                             R3 2 1
       20 GETIMPORT                        R4 K10 [Color3.new]
       22 LOADK                            R5 K11 [0.5]
       23 LOADK                            R6 K11 [0.5]
       24 LOADK                            R7 K11 [0.5]
       25 CALL                             R4 3 1
       26 SETTABLEKS                       R4 R3 K12 ["HeadColor"]
       28 SETTABLEKS                       R4 R3 K13 ["LeftArmColor"]
       30 SETTABLEKS                       R4 R3 K14 ["LeftLegColor"]
       32 SETTABLEKS                       R4 R3 K15 ["RightArmColor"]
       34 SETTABLEKS                       R4 R3 K16 ["RightLegColor"]
       36 SETTABLEKS                       R4 R3 K17 ["TorsoColor"]
       38 LOADN                            R5 0
       39 SETTABLEKS                       R5 R3 K18 ["ClimbAnimation"]
       41 LOADN                            R5 0
       42 SETTABLEKS                       R5 R3 K19 ["FallAnimation"]
       44 LOADN                            R5 0
       45 SETTABLEKS                       R5 R3 K20 ["IdleAnimation"]
       47 LOADN                            R5 0
       48 SETTABLEKS                       R5 R3 K21 ["JumpAnimation"]
       50 LOADN                            R5 0
       51 SETTABLEKS                       R5 R3 K22 ["MoodAnimation"]
       53 LOADN                            R5 0
       54 SETTABLEKS                       R5 R3 K23 ["RunAnimation"]
       56 LOADN                            R5 0
       57 SETTABLEKS                       R5 R3 K24 ["SwimAnimation"]
       59 LOADN                            R5 0
       60 SETTABLEKS                       R5 R3 K25 ["WalkAnimation"]
       62 GETIMPORT                        R5 K3 [game]
       64 LOADK                            R7 K4 ["AsyncRenamesUsedInLuaApps"]
       65 NAMECALL                         R5 R5 K5 ["GetEngineFeature"]
       67 CALL                             R5 2 1
       68 JUMPIFNOT                        R5 ; [+8]
       69 GETUPVAL                         R4 0
       70 MOVE                             R6 R3
       71 GETIMPORT                        R7 K29 [Enum.HumanoidRigType.R15]
       73 NAMECALL                         R4 R4 K30 ["CreateHumanoidModelFromDescriptionAsync"]
       75 CALL                             R4 3 1
       76 JUMP                             ; [+7]
       77 GETUPVAL                         R4 0
       78 MOVE                             R6 R3
       79 GETIMPORT                        R7 K29 [Enum.HumanoidRigType.R15]
       81 NAMECALL                         R4 R4 K31 ["CreateHumanoidModelFromDescription"]
       83 CALL                             R4 3 1
       84 MOVE                             R5 R2
       85 MOVE                             R6 R4
       86 CALL                             R5 1 0
       87 GETIMPORT                        R7 K33 [CFrame.new]
       89 CALL                             R7 0 -1
       90 NAMECALL                         R5 R4 K34 ["PivotTo"]
       92 CALL                             R5 -1 0
       93 LOADK                            R7 K35 ["Accessory"]
       94 NAMECALL                         R5 R4 K36 ["FindFirstChildWhichIsA"]
       96 CALL                             R5 2 1
       97 JUMPIF                           R5 ; [+9]
       98 LOADK                            R7 K37 ["Shirt"]
       99 NAMECALL                         R5 R4 K36 ["FindFirstChildWhichIsA"]
      101 CALL                             R5 2 1
      102 JUMPIF                           R5 ; [+4]
      103 LOADK                            R7 K38 ["Pants"]
      104 NAMECALL                         R5 R4 K36 ["FindFirstChildWhichIsA"]
      106 CALL                             R5 2 1
      107 JUMPIFEQKNIL                     R5 ; [+5]
      109 NAMECALL                         R6 R5 K39 ["Destroy"]
      111 CALL                             R6 1 0
      112 JUMPBACK                         ; [-20]
      113 RETURN                           R4 1

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
      204 GETTABLEKS                       R25 R26 K39 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K12 [require]
      209 GETTABLEKS                       R28 R4 K15 ["Src"]
      211 GETTABLEKS                       R27 R28 K33 ["Flags"]
      213 GETTABLEKS                       R26 R27 K40 ["getFFlagFixLayeredClothingAssignment"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K12 [require]
      218 GETTABLEKS                       R29 R4 K15 ["Src"]
      220 GETTABLEKS                       R28 R29 K33 ["Flags"]
      222 GETTABLEKS                       R27 R28 K41 ["getFFlagIncludeBodyColorsInAutoSetup"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K12 [require]
      227 GETTABLEKS                       R30 R4 K15 ["Src"]
      229 GETTABLEKS                       R29 R30 K16 ["Util"]
      231 GETTABLEKS                       R28 R29 K42 ["getRotationInXZPlane"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K1 [game]
      236 LOADK                            R30 K43 ["AvatarPreviewerAvoidExtraRootPart"]
      237 LOADB                            R31 0
      238 NAMECALL                         R28 R28 K44 ["DefineFastFlag"]
      240 CALL                             R28 3 1
      241 GETIMPORT                        R29 K12 [require]
      243 GETTABLEKS                       R33 R4 K15 ["Src"]
      245 GETTABLEKS                       R32 R33 K19 ["Components"]
      247 GETTABLEKS                       R31 R32 K45 ["DisambiguationMenuContext"]
      249 GETTABLEKS                       R30 R31 K46 ["inferLoneMeshPartAssignment"]
      251 CALL                             R29 1 1
      252 GETIMPORT                        R30 K12 [require]
      254 GETTABLEKS                       R33 R4 K15 ["Src"]
      256 GETTABLEKS                       R32 R33 K16 ["Util"]
      258 GETTABLEKS                       R31 R32 K47 ["isAvatar"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K12 [require]
      263 GETTABLEKS                       R35 R4 K15 ["Src"]
      265 GETTABLEKS                       R34 R35 K19 ["Components"]
      267 GETTABLEKS                       R33 R34 K45 ["DisambiguationMenuContext"]
      269 GETTABLEKS                       R32 R33 K48 ["assignLoneMeshParts"]
      271 CALL                             R31 1 1
      272 NEWTABLE                         R32 32 0
      274 DUPCLOSURE                       R33 K49 [PROTO_0]
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R12
      277 CAPTURE                          VAL R11
      278 SETTABLEKS                       R33 R32 K50 ["computeValidScaleAsync"]
      280 DUPCLOSURE                       R33 K51 [PROTO_1]
      281 CAPTURE                          VAL R13
      282 CAPTURE                          VAL R11
      283 CAPTURE                          VAL R1
      284 CAPTURE                          VAL R25
      285 CAPTURE                          VAL R20
      286 SETTABLEKS                       R33 R32 K52 ["applyScale"]
      288 DUPCLOSURE                       R33 K53 [PROTO_4]
      289 CAPTURE                          VAL R14
      290 CAPTURE                          VAL R24
      291 SETTABLEKS                       R33 R32 K54 ["applyAnimationsScript"]
      293 DUPCLOSURE                       R33 K55 [PROTO_5]
      294 SETTABLEKS                       R33 R32 K56 ["collapseTopLevelFolders"]
      296 DUPCLOSURE                       R33 K57 [PROTO_6]
      297 CAPTURE                          VAL R6
      298 SETTABLEKS                       R33 R32 K58 ["setModelIntendedName"]
      300 DUPCLOSURE                       R33 K59 [PROTO_7]
      301 CAPTURE                          VAL R11
      302 SETTABLEKS                       R33 R32 K60 ["renameModel"]
      304 DUPCLOSURE                       R33 K61 [PROTO_8]
      305 SETTABLEKS                       R33 R32 K62 ["setPivotOffset"]
      307 DUPCLOSURE                       R33 K63 [PROTO_10]
      308 CAPTURE                          VAL R9
      309 SETTABLEKS                       R33 R32 K64 ["getTargetBoundingBox"]
      311 DUPCLOSURE                       R33 K65 [PROTO_15]
      312 CAPTURE                          VAL R32
      313 CAPTURE                          VAL R27
      314 CAPTURE                          VAL R9
      315 CAPTURE                          VAL R3
      316 SETTABLEKS                       R33 R32 K66 ["positionInWorkspace"]
      318 DUPCLOSURE                       R33 K67 [PROTO_16]
      319 CAPTURE                          VAL R22
      320 SETTABLEKS                       R33 R32 K68 ["wearAccessories"]
      322 DUPCLOSURE                       R33 K69 [PROTO_17]
      323 SETTABLEKS                       R33 R32 K70 ["ensureSurfaceAppearances"]
      325 DUPCLOSURE                       R33 K71 [PROTO_18]
      326 CAPTURE                          VAL R15
      327 SETTABLEKS                       R33 R32 K72 ["isPreSetupAutoSetupClothes"]
      329 DUPCLOSURE                       R33 K73 [PROTO_19]
      330 CAPTURE                          VAL R15
      331 CAPTURE                          VAL R21
      332 SETTABLEKS                       R33 R32 K74 ["removePreSetupAutoSetupClothesPrefix"]
      334 DUPCLOSURE                       R33 K75 [PROTO_20]
      335 CAPTURE                          VAL R32
      336 CAPTURE                          VAL R13
      337 SETTABLEKS                       R33 R32 K76 ["applyLayeredClothingProportions"]
      339 DUPCLOSURE                       R33 K77 [PROTO_21]
      340 CAPTURE                          VAL R7
      341 CAPTURE                          VAL R22
      342 CAPTURE                          VAL R13
      343 SETTABLEKS                       R33 R32 K78 ["applyProportions"]
      345 DUPCLOSURE                       R33 K79 [PROTO_23]
      346 CAPTURE                          VAL R25
      347 SETTABLEKS                       R33 R32 K80 ["assignWrapLayerOrder"]
      349 DUPCLOSURE                       R33 K81 [PROTO_25]
      350 CAPTURE                          VAL R26
      351 SETTABLEKS                       R33 R32 K82 ["ensureBodyColors"]
      353 DUPCLOSURE                       R33 K83 [PROTO_26]
      354 CAPTURE                          VAL R25
      355 SETTABLEKS                       R33 R32 K84 ["removeExtraAttachmentParts"]
      357 DUPCLOSURE                       R33 K85 [PROTO_27]
      358 CAPTURE                          VAL R25
      359 CAPTURE                          VAL R18
      360 CAPTURE                          VAL R32
      361 CAPTURE                          VAL R11
      362 CAPTURE                          VAL R29
      363 CAPTURE                          VAL R31
      364 SETTABLEKS                       R33 R32 K86 ["assignLayeredClothing"]
      366 DUPCLOSURE                       R33 K87 [PROTO_28]
      367 SETTABLEKS                       R33 R32 K88 ["computeTranslationUponParent"]
      369 DUPCLOSURE                       R33 K89 [PROTO_29]
      370 CAPTURE                          VAL R32
      371 CAPTURE                          VAL R11
      372 SETTABLEKS                       R33 R32 K90 ["translateBodyPartsToFinalCFrame"]
      374 DUPCLOSURE                       R33 K91 [PROTO_30]
      375 SETTABLEKS                       R33 R32 K92 ["findProportionsFromHumanoid"]
      377 DUPCLOSURE                       R33 K93 [PROTO_31]
      378 CAPTURE                          VAL R23
      379 CAPTURE                          VAL R0
      380 CAPTURE                          VAL R11
      381 CAPTURE                          VAL R32
      382 CAPTURE                          VAL R25
      383 CAPTURE                          VAL R26
      384 CAPTURE                          VAL R3
      385 CAPTURE                          VAL R10
      386 SETTABLEKS                       R33 R32 K94 ["DEPRECATED_insertBodyAsync"]
      388 DUPCLOSURE                       R33 K95 [PROTO_32]
      389 CAPTURE                          VAL R21
      390 CAPTURE                          VAL R0
      391 CAPTURE                          VAL R11
      392 CAPTURE                          VAL R32
      393 CAPTURE                          VAL R25
      394 CAPTURE                          VAL R26
      395 CAPTURE                          VAL R3
      396 CAPTURE                          VAL R10
      397 CAPTURE                          VAL R23
      398 CAPTURE                          VAL R19
      399 CAPTURE                          VAL R5
      400 SETTABLEKS                       R33 R32 K96 ["insertBodyAsync"]
      402 DUPCLOSURE                       R33 K97 [PROTO_33]
      403 CAPTURE                          VAL R21
      404 CAPTURE                          VAL R0
      405 CAPTURE                          VAL R30
      406 CAPTURE                          VAL R32
      407 CAPTURE                          VAL R11
      408 CAPTURE                          VAL R3
      409 CAPTURE                          VAL R25
      410 CAPTURE                          VAL R10
      411 CAPTURE                          VAL R28
      412 CAPTURE                          VAL R6
      413 SETTABLEKS                       R33 R32 K98 ["insertClothingAsync"]
      415 DUPCLOSURE                       R33 K99 [PROTO_34]
      416 CAPTURE                          VAL R6
      417 SETTABLEKS                       R33 R32 K100 ["getClothingCategoryCounts"]
      419 DUPCLOSURE                       R33 K101 [PROTO_37]
      420 CAPTURE                          VAL R2
      421 SETTABLEKS                       R33 R32 K102 ["createTemplateBodyFromOutfitId"]
      423 RETURN                           R32 1
