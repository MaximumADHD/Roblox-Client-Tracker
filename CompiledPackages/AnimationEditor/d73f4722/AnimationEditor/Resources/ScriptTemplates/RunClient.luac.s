MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETIMPORT                        R4 K6 [script]
       23 GETTABLEKS                       R4 R4 K7 ["Parent"]
       25 CALL                             R3 1 1
       26 NAMECALL                         R4 R1 K10 ["IsStudio"]
       28 CALL                             R4 1 1
       29 JUMPIFNOT                        R4 ; [+14]
       30 GETIMPORT                        R4 K6 [script]
       32 GETTABLEKS                       R4 R4 K7 ["Parent"]
       34 LOADK                            R6 K11 ["PreviewInStudio"]
       35 NAMECALL                         R4 R4 K12 ["GetAttribute"]
       37 CALL                             R4 2 1
       38 JUMPIFNOT                        R4 ; [+5]
       39 GETTABLEKS                       R4 R3 K13 ["setupPreview"]
       41 MOVE                             R5 R2
       42 CALL                             R4 1 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R4 K6 [script]
       46 GETTABLEKS                       R4 R4 K7 ["Parent"]
       48 LOADK                            R6 K14 ["IsServerAuthority"]
       49 NAMECALL                         R4 R4 K12 ["GetAttribute"]
       51 CALL                             R4 2 1
       52 JUMPIFNOT                        R4 ; [+28]
       53 GETTABLEKS                       R5 R0 K15 ["LocalPlayer"]
       55 JUMPIFNOT                        R5 ; [+25]
       56 GETTABLEKS                       R6 R5 K16 ["Character"]
       58 JUMPIFNOTEQ                      R6 R2 ; [+22]
       60 LOADK                            R8 K17 ["Humanoid"]
       61 NAMECALL                         R6 R2 K18 ["WaitForChild"]
       63 CALL                             R6 2 1
       64 LOADK                            R9 K19 ["Animator"]
       65 NAMECALL                         R7 R6 K20 ["FindFirstChildOfClass"]
       67 CALL                             R7 2 1
       68 JUMPIFNOT                        R7 ; [+12]
       69 MOVE                             R10 R7
       70 GETIMPORT                        R11 K24 [Enum.PredictionMode.On]
       72 NAMECALL                         R8 R1 K25 ["SetPredictionMode"]
       74 CALL                             R8 3 0
       75 MOVE                             R10 R6
       76 GETIMPORT                        R11 K24 [Enum.PredictionMode.On]
       78 NAMECALL                         R8 R1 K25 ["SetPredictionMode"]
       80 CALL                             R8 3 0
       81 GETTABLEKS                       R5 R3 K26 ["setup"]
       83 MOVE                             R6 R2
       84 CALL                             R5 1 0
       85 RETURN                           R0 0
