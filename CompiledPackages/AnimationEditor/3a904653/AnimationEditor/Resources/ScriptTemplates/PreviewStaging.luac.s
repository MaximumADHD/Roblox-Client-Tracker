MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R1 R0 K4 ["IsStudio"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K1 [game]
       14 LOADK                            R3 K5 ["CollectionService"]
       15 NAMECALL                         R1 R1 K3 ["GetService"]
       17 CALL                             R1 2 1
       18 GETIMPORT                        R2 K1 [game]
       20 LOADK                            R4 K6 ["ReplicatedStorage"]
       21 NAMECALL                         R2 R2 K3 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K1 [game]
       26 LOADK                            R5 K7 ["ServerStorage"]
       27 NAMECALL                         R3 R3 K3 ["GetService"]
       29 CALL                             R3 2 1
       30 LOADK                            R6 K8 ["RBX_ANIMSAVES"]
       31 NAMECALL                         R4 R3 K9 ["FindFirstChild"]
       33 CALL                             R4 2 1
       34 JUMPIF                           R4 ; [+1]
       35 RETURN                           R0 0
       36 LOADK                            R7 K10 ["AnimationGraphEditor"]
       37 NAMECALL                         R5 R2 K9 ["FindFirstChild"]
       39 CALL                             R5 2 1
       40 JUMPIF                           R5 ; [+10]
       41 GETIMPORT                        R6 K13 [Instance.new]
       43 LOADK                            R7 K14 ["Folder"]
       44 CALL                             R6 1 1
       45 LOADK                            R7 K10 ["AnimationGraphEditor"]
       46 SETTABLEKS                       R7 R6 K15 ["Name"]
       48 SETTABLEKS                       R2 R6 K16 ["Parent"]
       50 MOVE                             R5 R6
       51 NEWTABLE                         R6 0 0
       53 LOADK                            R9 K17 ["AnimationEditor_AnimateScript"]
       54 NAMECALL                         R7 R1 K18 ["GetTagged"]
       56 CALL                             R7 2 3
       57 FORGPREP                         R7
       58 LOADK                            R14 K19 ["GraphName"]
       59 NAMECALL                         R12 R11 K20 ["GetAttribute"]
       61 CALL                             R12 2 1
       62 LOADK                            R15 K21 ["CharacterName"]
       63 NAMECALL                         R13 R11 K20 ["GetAttribute"]
       65 CALL                             R13 2 1
       66 JUMPIFNOT                        R12 ; [+31]
       67 JUMPIFEQKS                       R12 K22 [""] ; [+30]
       69 JUMPIFNOT                        R13 ; [+28]
       70 JUMPIFEQKS                       R13 K22 [""] ; [+27]
       72 MOVE                             R15 R13
       73 LOADK                            R16 K23 ["_"]
       74 MOVE                             R17 R12
       75 CONCAT                           R14 R15 R17
       76 GETTABLE                         R15 R6 R14
       77 JUMPIF                           R15 ; [+20]
       78 MOVE                             R17 R13
       79 NAMECALL                         R15 R4 K9 ["FindFirstChild"]
       81 CALL                             R15 2 1
       82 MOVE                             R16 R15
       83 JUMPIFNOT                        R16 ; [+4]
       84 MOVE                             R18 R12
       85 NAMECALL                         R16 R15 K9 ["FindFirstChild"]
       87 CALL                             R16 2 1
       88 JUMPIFNOT                        R16 ; [+9]
       89 NAMECALL                         R17 R16 K24 ["Clone"]
       91 CALL                             R17 1 1
       92 SETTABLEKS                       R14 R17 K15 ["Name"]
       94 SETTABLEKS                       R5 R17 K16 ["Parent"]
       96 LOADB                            R18 1
       97 SETTABLE                         R18 R6 R14
       98 FORGLOOP                         R7 2 ; [-41]
      100 RETURN                           R0 0
